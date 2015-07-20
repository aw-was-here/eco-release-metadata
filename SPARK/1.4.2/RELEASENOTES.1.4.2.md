
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
# Apache Spark  1.4.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [SPARK-9109](https://issues.apache.org/jira/browse/SPARK-9109) | *Minor* | **Unpersist a graph object does not work properly**

Unpersist a graph object does not work properly.

Here is the code to produce 

{code}
import org.apache.spark.graphx.\_
import org.apache.spark.rdd.RDD
import org.slf4j.LoggerFactory
import org.apache.spark.graphx.util.GraphGenerators

val graph: Graph[Long, Long] =
  GraphGenerators.logNormalGraph(sc, numVertices = 100).mapVertices( (id, \_) => id.toLong ).mapEdges( e => e.attr.toLong)
  
graph.cache().numEdges
graph.unpersist()
{code}

There should not be any cached RDDs in storage (http://localhost:4040/storage/).


---

* [SPARK-9094](https://issues.apache.org/jira/browse/SPARK-9094) | *Minor* | **Increase io.dropwizard.metrics dependency to 3.1.2**

This change is described in pull request:
https://github.com/apache/spark/pull/7493


---

* [SPARK-9021](https://issues.apache.org/jira/browse/SPARK-9021) | *Major* | ** Change RDD.aggregate() to do reduce(mapPartitions()) instead of mapPartitions.fold()**

Please see pull request for more information.

Currently, PySpark will run an unnecessary comboOp on each partition, combining zeroValue and the results of mapPartitions. Since the zeroValue used in this comboOp is the same reference as the zeroValue used for mapPartitions in each partition, unexpected behavior can happen if zeroValue is a mutable object.

Instead, RDD.aggregate() should do a reduction on the results of each mapPartitions task. This way, we remove the unnecessary initial comboOp on each partition and also correct the unexpected behavior for mutable zeroValues.


---

* [SPARK-9012](https://issues.apache.org/jira/browse/SPARK-9012) | *Major* | **Accumulators in the task table should be escaped**

If running the following codes, the task table will be broken because accumulators aren't escaped.
{code}
val a = sc.accumulator(1, "<table>")
sc.parallelize(1 to 10).foreach(i => a += i)
{code}


---

* [SPARK-9010](https://issues.apache.org/jira/browse/SPARK-9010) | *Trivial* | **Improve the Spark Configuration document about `spark.kryoserializer.buffer`**

The meaning of spark.kryoserializer.buffer should be "Initial size of Kryo's serialization buffer. Note that there will be one buffer per core on each worker. This buffer will grow up to spark.kryoserializer.buffer.max if needed.".

The spark.kryoserializer.buffer.max.mb is out-of-date in spark 1.4.


---

* [SPARK-8990](https://issues.apache.org/jira/browse/SPARK-8990) | *Major* | **DataFrameReader.parquet() ignores user specified data source options**

A bad consequence of this is that {{sqlContext.read.parquet(path)}} always do schema merging. For example:
{code}
import sqlContext.\_
import sqlContext.implicits.\_

val path = "s3n://my-bucket/parquet/tiny"
range(0, 10).coalesce(1).write.mode("overwrite").parquet(path)

// Explicitly disables schema merging
read.option("mergeSchema", "false").format("parquet").load(path)
{code}
However, we still see all files are opened for schema discovery:
{noformat}
15/07/10 14:46:52 INFO s3native.NativeS3FileSystem: Opening 's3n://databricks-lian/parquet/tiny/\_metadata' for reading
15/07/10 14:46:52 INFO s3native.NativeS3FileSystem: Opening key 'parquet/tiny/\_metadata' for reading at position '314'
15/07/10 14:46:52 INFO s3native.NativeS3FileSystem: Opening 's3n://databricks-lian/parquet/tiny/part-r-00000-da490c43-15e2-46b5-95ff-4863e6ab1cc4.gz.parquet' for reading
15/07/10 14:46:52 INFO s3native.NativeS3FileSystem: Opening 's3n://databricks-lian/parquet/tiny/\_common\_metadata' for reading
15/07/10 14:46:52 INFO s3native.NativeS3FileSystem: Opening key 'parquet/tiny/part-r-00000-da490c43-15e2-46b5-95ff-4863e6ab1cc4.gz.parquet' for reading at position '345'
15/07/10 14:46:52 INFO s3native.NativeS3FileSystem: Opening key 'parquet/tiny/\_common\_metadata' for reading at position '191'
15/07/10 14:46:52 INFO s3native.NativeS3FileSystem: Opening key 'parquet/tiny/\_metadata' for reading at position '4'
15/07/10 14:46:52 INFO s3native.NativeS3FileSystem: Opening key 'parquet/tiny/part-r-00000-da490c43-15e2-46b5-95ff-4863e6ab1cc4.gz.parquet' for reading at position '97'
15/07/10 14:46:52 INFO s3native.NativeS3FileSystem: Opening key 'parquet/tiny/\_common\_metadata' for reading at position '4'
{noformat}
To workaround this issue, use the following instead:
{noformat}
sqlContext.read.option("mergeSchema", "false").format("parquet").load(path)
{noformat}


---

* [SPARK-8974](https://issues.apache.org/jira/browse/SPARK-8974) | *Minor* | **There is a bug in dynamicAllocation. When there is no running tasks, the number of executor a long time without running tasks, the number of executor does not reduce to the value of "spark.dynamicAllocation.minExecutors".**

In yarn-client mode and config option "spark.dynamicAllocation.enabled " is true, when the state of ApplicationMaster is dead or disconnected, if the tasks are submitted  before new ApplicationMaster start. The thread of spark-dynamic-executor-allocation will throw exception, When ApplicationMaster is running and not tasks are running, the number of executor is not zero. So feture of dynamicAllocation are not  supported.


---

* [SPARK-8937](https://issues.apache.org/jira/browse/SPARK-8937) | *Minor* | **A setting `spark.unsafe.exceptionOnMemoryLeak ` is missing in ScalaTest config.**

`spark.unsafe.exceptionOnMemoryLeak` is present in the config of surefire.

{code}
        <!-- Surefire runs all Java tests -->
        <plugin>
          <groupId>org.apache.maven.plugins</groupId>
          <artifactId>maven-surefire-plugin</artifactId>
          <version>2.18.1</version>
          <!-- Note config is repeated in scalatest config -->
...
           
<spark.unsafe.exceptionOnMemoryLeak>true</spark.unsafe.exceptionOnMemoryLeak>
            </systemProperties>
...
{code}

 but is absent in the config ScalaTest.


---

* [SPARK-8927](https://issues.apache.org/jira/browse/SPARK-8927) | *Trivial* | **Doc format wrong for some config descriptions**

In the docs, a couple descriptions of configuration (under Network) are not inside <td></td> and are being displayed immediately under the section title instead of in their row.


---

* [SPARK-8910](https://issues.apache.org/jira/browse/SPARK-8910) | *Critical* | **MiMa test is flaky because it starts a SQLContext**

I've seen this many times on GitHub. At the very least we should disable the SparkUI to prevent port contention, which is one of the most common sources of flakiness.
{code}
15/07/08 12:46:08 WARN AbstractLifeCycle: FAILED SelectChannelConnector@0.0.0.0:4040: java.net.BindException: Address already in use
java.net.BindException: Address already in use
	at sun.nio.ch.Net.bind0(Native Method)
	at sun.nio.ch.Net.bind(Net.java:444)
	at sun.nio.ch.Net.bind(Net.java:436)
{code}
https://amplab.cs.berkeley.edu/jenkins/job/SparkPullRequestBuilder/36826/consoleFull


---

* [SPARK-8865](https://issues.apache.org/jira/browse/SPARK-8865) | *Minor* | **Fix bug:  init SimpleConsumerConfig with kafka params**

"zookeeper.connect" and "group.id" aren't necessary for anything in the kafka direct stream.

But they're expected to be present in a kafka consumer config, and overriding that behavior wasn't possible. So as a workaround, we set them to a blank string. That way users don't have to define unnecessary settings in the kafka param map passed to the KafkaUtils constructor. We talked through that during the original development of the direct stream.

The code as it is released today is almost always going to set a blank string, regardless of what users pass in, because contains on a java property object is not the equivalent of containsKey, it is containsValue. The intention was that if the user sets those properties (whatever personal reasons they have), the values should not get overwritten with a blank string.


---

* [SPARK-8743](https://issues.apache.org/jira/browse/SPARK-8743) | *Major* | **Deregister Codahale metrics for streaming when StreamingContext is closed**

Currently, when the StreamingContext is closed, the registered metrics are not deregistered. If another streaming context is started, it throws a warning saying that the metrics are already registered. 

The solution is to deregister the metrics when streamingcontext is stopped.


---

* [SPARK-8593](https://issues.apache.org/jira/browse/SPARK-8593) | *Major* | **History Server doesn't show complete application when one attempt inprogress**

The Spark history server doesn't show an application if the first attempt of the application is still inprogress.  

Here are the files in hdfs:
-rwxrwx---   3 tgraves hdfs        234 2015-06-24 15:49 sparkhistory/application\_1433751980223\_18926\_1.inprogress
-rwxrwx---   3 tgraves hdfs    9609450 2015-06-24 15:51 sparkhistory/application\_1433751980223\_18926\_2


The UI shows them if I set the showIncomplete=true.

Removing the inprogress file allows it to show up when showIncomplete is false.

It should be smart enough to atleast show the second successful attempt.


---

* [SPARK-8052](https://issues.apache.org/jira/browse/SPARK-8052) | *Major* | **Hive on Spark: CAST string AS BIGINT produces wrong value**

Example hive query:
SELECT CAST("775983671874188101" as BIGINT)
produces:           775983671874188160L
Look at: last 2 digits.


---

* [SPARK-7555](https://issues.apache.org/jira/browse/SPARK-7555) | *Major* | **User guide update for ElasticNet**

Copied from [SPARK-7443]:
{quote}
Now that we have algorithms in spark.ml which are not in spark.mllib, we should start making subsections for the spark.ml API as needed. We can follow the structure of the spark.mllib user guide.
* The spark.ml user guide can provide: (a) code examples and (b) info on algorithms which do not exist in spark.mllib.
* We should not duplicate info in the spark.ml guides. Since spark.mllib is still the primary API, we should provide links to the corresponding algorithms in the spark.mllib user guide for more info.
{quote}


---

* [SPARK-7419](https://issues.apache.org/jira/browse/SPARK-7419) | *Critical* | **Flaky test: o.a.s.streaming.CheckpointSuite**

Failing with error messages like
{code}
5 did not equal 7 Number of outputs do not match
{code}

Various tests in the suite seem to be failing with similar error messages:
https://amplab.cs.berkeley.edu/jenkins/job/Spark-Master-SBT/AMPLAB\_JENKINS\_BUILD\_PROFILE=hadoop2.3,label=centos/2228/
https://amplab.cs.berkeley.edu/jenkins/job/Spark-Master-SBT/AMPLAB\_JENKINS\_BUILD\_PROFILE=hadoop2.0,label=centos/2230/


---

* [SPARK-7246](https://issues.apache.org/jira/browse/SPARK-7246) | *Major* | **Rank for DataFrames**

`rank` maps a numeric column to a long column with rankings. `rank` should be an expression. Where it lives is TBD. One suggestion is `funcs.stat`.

{code}
df.select("name", rank("time"))
{code}


---

* [SPARK-2017](https://issues.apache.org/jira/browse/SPARK-2017) | *Major* | **web ui stage page becomes unresponsive when the number of tasks is large**

{code}
sc.parallelize(1 to 1000000, 1000000).count()
{code}

The above code creates one million tasks to be executed. The stage detail web ui page takes forever to load (if it ever completes).

There are again a few different alternatives:

0. Limit the number of tasks we show.
1. Pagination
2. By default only show the aggregate metrics and failed tasks, and hide the successful ones.



