
<!---
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
-->
# Apache Spark  3.0.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [SPARK-27061](https://issues.apache.org/jira/browse/SPARK-27061) | *Minor* | **Expose Driver UI port on driver service to access UI using service**

Currently, we can access the driver logs using 

{{kubectl port-forward \<driver-pod-name\> 4040:4040}}

mentioned in [https://spark.apache.org/docs/latest/running-on-kubernetes.html#accessing-driver-ui]

We have users who submit spark jobs to Kubernetes, but they don't have access to the cluster. so, they can't user kubectl port-forward command.

If we can expose 4040 port on driver service, we can easily relay these logs to UI using driver service and Nginx reverse proxy.


---

* [SPARK-28652](https://issues.apache.org/jira/browse/SPARK-28652) | *Minor* | **spark.kubernetes.pyspark.pythonVersion is never passed to executors**

I suppose this may not be a priority with Python2 on its way out, but given that this setting is only ever sent to the driver and not the executors, no actual work can be performed when the versions don't match, which will tend to be \*always\* with the default setting for the driver being changed from 2 to 3, and the executors using \`python\`, which defaults to v2, by default.


---

* [SPARK-29055](https://issues.apache.org/jira/browse/SPARK-29055) | *Major* | **Spark UI storage memory increasing overtime**

I used Spark 2.1.1 and I upgraded into new versions. After Spark version 2.3.3,  I observed from Spark UI that the driver memory is{color:#ff0000} increasing continuously.{color}

In more detail, the driver memory and executors memory have the same used memory storage and after each iteration the storage memory is increasing. You can reproduce this behavior by running the following snippet code. The following example, is very simple, without any dataframe persistence, but the memory consumption is not stable as it was in former Spark versions (Specifically until Spark 2.3.2).

Also, I tested with Spark streaming and structured streaming API and I had the same behavior. I tested with an existing application which reads from Kafka source and do some aggregations, persist dataframes and then unpersist them. The persist and unpersist it works correct, I see the dataframes in the storage tab in Spark UI and after the unpersist, all dataframe have removed. But, after the unpersist the executors memory is not zero, BUT has the same value with the driver memory. This behavior also affects the application performance because the memory of the executors is increasing as the driver increasing and after a while the persisted dataframes are not fit in the executors memory and  I have spill to disk.

Another error which I had after a long running, was {color:#ff0000}java.lang.OutOfMemoryError: GC overhead limit exceeded, but I don't know if its relevant with the above behavior or not.{color}

 

\*HOW TO REPRODUCE THIS BEHAVIOR:\*

Create a very simple application(streaming count\_file.py) in order to reproduce this behavior. This application reads CSV files from a directory, count the rows and then remove the processed files.
{code:java}
import time
import os

from pyspark.sql import SparkSession
from pyspark.sql import functions as F
from pyspark.sql import types as T

target\_dir = "..."

spark=SparkSession.builder.appName("DataframeCount").getOrCreate()

while True:
    for f in os.listdir(target\_dir):
        df = spark.read.load(target\_dir + f, format="csv")
        print("Number of records: {0}".format(df.count()))
        time.sleep(15){code}
Submit code:
{code:java}
spark-submit 
--master spark://xxx.xxx.xx.xxx
--deploy-mode client
--executor-memory 4g
--executor-cores 3
streaming count\_file.py
{code}
 

\*TESTED CASES WITH THE SAME BEHAVIOUR:\*
 \* I tested with default settings (spark-defaults.conf)
 \* Add spark.cleaner.periodicGC.interval 1min (or less)
 \* {{Turn spark.cleaner.referenceTracking.blocking}}=false
 \* Run the application in cluster mode
 \* Increase/decrease the resources of the executors and driver
 \* I tested with extraJavaOptions in driver and executor -XX:+UseG1GC -XX:InitiatingHeapOccupancyPercent=35 -XX:ConcGCThreads=12
  

\*DEPENDENCIES\*
 \* Operation system: Ubuntu 16.04.3 LTS
 \* Java: jdk1.8.0\_131 (tested also with jdk1.8.0\_221)
 \* Python: Python 2.7.12

 

\*NOTE:\* In Spark 2.1.1 the driver memory consumption (Storage Memory tab) was extremely low and after the run of ContextCleaner and BlockManager the memory was decreasing.


---

* [SPARK-27296](https://issues.apache.org/jira/browse/SPARK-27296) | *Major* | **Efficient User Defined Aggregators**

Spark's UDAFs appear to be serializing and de-serializing to/from the MutableAggregationBuffer for each row.  This gist shows a small reproducing UDAF and a spark shell session:

[https://gist.github.com/erikerlandson/3c4d8c6345d1521d89e0d894a423046f]

The UDAF and its compantion UDT are designed to count the number of times that ser/de is invoked for the aggregator.  The spark shell session demonstrates that it is executing ser/de on every row of the data frame.

Note, Spark's pre-defined aggregators do not have this problem, as they are based on an internal aggregating trait that does the correct thing and only calls ser/de at points such as partition boundaries, presenting final results, etc.

This is a major problem for UDAFs, as it means that every UDAF is doing a massive amount of unnecessary work per row, including but not limited to Row object allocations. For a more realistic UDAF having its own non trivial internal structure it is obviously that much worse.


---

* [SPARK-30590](https://issues.apache.org/jira/browse/SPARK-30590) | *Major* | **can't use more than five type-safe user-defined aggregation in select statement**

 How to reproduce:
{code:scala}
val df = Seq((1,2,3,4,5,6)).toDF("a","b","c","d","e","f")

import org.apache.spark.sql.expressions.Aggregator
import org.apache.spark.sql.Encoder
import org.apache.spark.sql.Encoders
import org.apache.spark.sql.Row

case class FooAgg(s:Int) extends Aggregator[Row, Int, Int] {
  def zero:Int = s
  def reduce(b: Int, r: Row): Int = b + r.getAs[Int](0)
  def merge(b1: Int, b2: Int): Int = b1 + b2
  def finish(b: Int): Int = b
  def bufferEncoder: Encoder[Int] = Encoders.scalaInt
  def outputEncoder: Encoder[Int] = Encoders.scalaInt
}

val fooAgg = (i:Int) =\> FooAgg(i).toColumn.name(s"foo\_agg\_$i")

scala\> df.select(fooAgg(1),fooAgg(2),fooAgg(3),fooAgg(4),fooAgg(5)).show
+---------+---------+---------+---------+---------+
\|foo\_agg\_1\|foo\_agg\_2\|foo\_agg\_3\|foo\_agg\_4\|foo\_agg\_5\|
+---------+---------+---------+---------+---------+
\|        3\|        5\|        7\|        9\|       11\|
+---------+---------+---------+---------+---------+

{code}
With 6 arguments we have error:
{code:scala}
scala\> df.select(fooAgg(1),fooAgg(2),fooAgg(3),fooAgg(4),fooAgg(5),fooAgg(6)).show

org.apache.spark.sql.AnalysisException: unresolved operator 'Aggregate [fooagg(FooAgg(1), None, None, None, input[0, int, false] AS value#114, assertnotnull(cast(value#114 as int)), input[0, int, false] AS value#113, IntegerType, IntegerType, false) AS foo\_agg\_1#116, fooagg(FooAgg(2), None, None, None, input[0, int, false] AS value#119, assertnotnull(cast(value#119 as int)), input[0, int, false] AS value#118, IntegerType, IntegerType, false) AS foo\_agg\_2#121, fooagg(FooAgg(3), None, None, None, input[0, int, false] AS value#124, assertnotnull(cast(value#124 as int)), input[0, int, false] AS value#123, IntegerType, IntegerType, false) AS foo\_agg\_3#126, fooagg(FooAgg(4), None, None, None, input[0, int, false] AS value#129, assertnotnull(cast(value#129 as int)), input[0, int, false] AS value#128, IntegerType, IntegerType, false) AS foo\_agg\_4#131, fooagg(FooAgg(5), None, None, None, input[0, int, false] AS value#134, assertnotnull(cast(value#134 as int)), input[0, int, false] AS value#133, IntegerType, IntegerType, false) AS foo\_agg\_5#136, fooagg(FooAgg(6), None, None, None, input[0, int, false] AS value#139, assertnotnull(cast(value#139 as int)), input[0, int, false] AS value#138, IntegerType, IntegerType, false) AS foo\_agg\_6#141];;
'Aggregate [fooagg(FooAgg(1), None, None, None, input[0, int, false] AS value#114, assertnotnull(cast(value#114 as int)), input[0, int, false] AS value#113, IntegerType, IntegerType, false) AS foo\_agg\_1#116, fooagg(FooAgg(2), None, None, None, input[0, int, false] AS value#119, assertnotnull(cast(value#119 as int)), input[0, int, false] AS value#118, IntegerType, IntegerType, false) AS foo\_agg\_2#121, fooagg(FooAgg(3), None, None, None, input[0, int, false] AS value#124, assertnotnull(cast(value#124 as int)), input[0, int, false] AS value#123, IntegerType, IntegerType, false) AS foo\_agg\_3#126, fooagg(FooAgg(4), None, None, None, input[0, int, false] AS value#129, assertnotnull(cast(value#129 as int)), input[0, int, false] AS value#128, IntegerType, IntegerType, false) AS foo\_agg\_4#131, fooagg(FooAgg(5), None, None, None, input[0, int, false] AS value#134, assertnotnull(cast(value#134 as int)), input[0, int, false] AS value#133, IntegerType, IntegerType, false) AS foo\_agg\_5#136, fooagg(FooAgg(6), None, None, None, input[0, int, false] AS value#139, assertnotnull(cast(value#139 as int)), input[0, int, false] AS value#138, IntegerType, IntegerType, false) AS foo\_agg\_6#141]
+- Project [\_1#6 AS a#13, \_2#7 AS b#14, \_3#8 AS c#15, \_4#9 AS d#16, \_5#10 AS e#17, \_6#11 AS F#18]
 +- LocalRelation [\_1#6, \_2#7, \_3#8, \_4#9, \_5#10, \_6#11]

at org.apache.spark.sql.catalyst.analysis.CheckAnalysis$class.failAnalysis(CheckAnalysis.scala:43)
 at org.apache.spark.sql.catalyst.analysis.Analyzer.failAnalysis(Analyzer.scala:95)
 at org.apache.spark.sql.catalyst.analysis.CheckAnalysis$$anonfun$checkAnalysis$3.apply(CheckAnalysis.scala:431)
 at org.apache.spark.sql.catalyst.analysis.CheckAnalysis$$anonfun$checkAnalysis$3.apply(CheckAnalysis.scala:430)
 at org.apache.spark.sql.catalyst.trees.TreeNode.foreachUp(TreeNode.scala:127)
 at org.apache.spark.sql.catalyst.analysis.CheckAnalysis$class.checkAnalysis(CheckAnalysis.scala:430)
 at org.apache.spark.sql.catalyst.analysis.Analyzer.checkAnalysis(Analyzer.scala:95)
 at org.apache.spark.sql.catalyst.analysis.Analyzer$$anonfun$executeAndCheck$1.apply(Analyzer.scala:108)
 at org.apache.spark.sql.catalyst.analysis.Analyzer$$anonfun$executeAndCheck$1.apply(Analyzer.scala:105)
 at org.apache.spark.sql.catalyst.plans.logical.AnalysisHelper$.markInAnalyzer(AnalysisHelper.scala:201)
 at org.apache.spark.sql.catalyst.analysis.Analyzer.executeAndCheck(Analyzer.scala:105)
 at org.apache.spark.sql.execution.QueryExecution.analyzed$lzycompute(QueryExecution.scala:57)

 at org.apache.spark.sql.execution.QueryExecution.analyzed(QueryExecution.scala:55)
 at org.apache.spark.sql.execution.QueryExecution.assertAnalyzed(QueryExecution.scala:47)
 at org.apache.spark.sql.Dataset$.ofRows(Dataset.scala:78)
 at org.apache.spark.sql.Dataset.org$apache$spark$sql$Dataset$$withPlan(Dataset.scala:3412)
 at org.apache.spark.sql.Dataset.select(Dataset.scala:1340)
 ... 50 elided
{code}



