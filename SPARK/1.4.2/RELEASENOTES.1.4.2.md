
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

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [SPARK-10980](https://issues.apache.org/jira/browse/SPARK-10980) | *Major* | **Create wrong decimal if unscaled \> 1e18 and scale \> 0**

Decimal(1000000000000000000L, 20, 2) will become 1000000000000000000 instead of 10000000000000000.00


---

* [SPARK-10973](https://issues.apache.org/jira/browse/SPARK-10973) | *Major* | **\_\_gettitem\_\_ method throws IndexError exception when we try to access index after the last non-zero entry.**

\\_\\_gettitem\\_\\_ method throws IndexError exception when we try to access  index  after the last non-zero entry.

{code}
from pyspark.mllib.linalg import Vectors
sv = Vectors.sparse(5, {1: 3})
sv[0]
## 0.0
sv[1]
## 3.0
sv[2]
## Traceback (most recent call last):
##   File "\<stdin\>", line 1, in \<module\>
##   File "/python/pyspark/mllib/linalg/\_\_init\_\_.py", line 734, in \_\_getitem\_\_
##     row\_ind = inds[insert\_index]
## IndexError: index out of bounds
{code}


---

* [SPARK-10960](https://issues.apache.org/jira/browse/SPARK-10960) | *Major* | **SQL with windowing function cannot reference column in inner select block**

There seems to be a bug in the Spark SQL parser when I use windowing functions. Specifically, when the SELECT refers to a column from an inner select block, the parser throws an error.

Here is an example:
--------------------------
When I use a windowing function and add a '1' constant to the result, 
{code}
   select Rank() OVER ( ORDER BY D1.c3 ) + 1 as c1
{code}

The Spark SQL parser works. The whole SQL is:
{code}
select Rank() OVER ( ORDER BY D1.c3 ) + 1 as c1,
                         D1.c3 as c3,
                         D1.c4 as c4,
                         D1.c5 as c5
                    from 
                         (select T3671.ROW\_WID as c3,
                                   T3671.CAL\_MONTH as c4,
                                   T3671.CAL\_YEAR as c5,
                                   1 as c6
                              from 
                                   W\_DAY\_D T3671
                         ) D1
{code}

However, if I change the projection so that it refers to a column in an inner select block, D1.C6, whose value is itself a '1' literal, so it is functionally equivalent to the SQL above, Spark SQL will throw an error:
{code}
select Rank() OVER ( ORDER BY D1.c3 ) + D1.C6 as c1,
                         D1.c3 as c3,
                         D1.c4 as c4,
                         D1.c5 as c5
                    from 
                         (select T3671.ROW\_WID as c3,
                                   T3671.CAL\_MONTH as c4,
                                   T3671.CAL\_YEAR as c5,
                                   1 as c6
                              from 
                                   W\_DAY\_D T3671
                         ) D1
{code}

The error message is:
{code}
. . . . . . . . . . . . . . . .\> java.lang.NullPointerException
Error: org.apache.spark.sql.AnalysisException: resolved attribute(s) c6#3386 missing from c5#3390
,c3#3383,c4#3389,\_we0#3461,c3#3388 in operator !Project [c3#3388,c4#3389,c5#3390,c3#3383,\_we0#346
1,(\_we0#3461 + c6#3386) AS c1#3387]; (state=,code=0)
{code}

The above example is a simplified version of the SQL I was testing. The full SQL I was using, which fails with a similar error, is as follows:

{code}
select Case when case D1.c6 when 1 then D1.c3 else NULL end  is not null then Rank() OVER ( ORDER BY case when ( case D1.c6 when 1 then D1.c3 else NULL end  ) is null then 1 else 0 end, case D1.c6 when 1 then D1.c3 else NULL end ) end as c1,
                         Case when case D1.c7 when 1 then D1.c3 else NULL end  is not null then Rank() OVER ( PARTITION BY D1.c4, D1.c5 ORDER BY case when ( case D1.c7 when 1 then D1.c3 else NULL end  ) is null then 1 else 0 end, case D1.c7 when 1 then D1.c3 else NULL end ) end as c2,
                         D1.c3 as c3,
                         D1.c4 as c4,
                         D1.c5 as c5
                    from 
                         (select T3671.ROW\_WID as c3,
                                   T3671.CAL\_MONTH as c4,
                                   T3671.CAL\_YEAR as c5,
                                   ROW\_NUMBER() OVER (PARTITION BY T3671.CAL\_MONTH, T3671.CAL\_YEAR ORDER BY T3671.CAL\_MONTH DESC, T3671.CAL\_YEAR DESC) as c6,
                                   ROW\_NUMBER() OVER (PARTITION BY T3671.CAL\_MONTH, T3671.CAL\_YEAR, T3671.ROW\_WID ORDER BY T3671.CAL\_MONTH DESC, T3671.CAL\_YEAR DESC, T3671.ROW\_WID DESC) as c7
                              from 
                                   W\_DAY\_D T3671
                         ) D1
{code}

Hopefully when fixed, both these sample SQLs should work!


---

* [SPARK-10660](https://issues.apache.org/jira/browse/SPARK-10660) | *Trivial* | **Doc describe error in the "Running Spark on YARN" page**

In the \*Configuration\* section, the \*spark.yarn.driver.memoryOverhead\* and \*spark.yarn.am.memoryOverhead\*‘s  default value should be "driverMemory \* 0.10, with minimum of 384" and "AM memory \* 0.10, with minimum of 384" respectively. Because from Spark 1.4.0, the \*MEMORY\_OVERHEAD\_FACTOR\* is set to 0.1.0, not 0.07.


---

* [SPARK-10657](https://issues.apache.org/jira/browse/SPARK-10657) | *Major* | **Remove legacy SCP-based Jenkins log archiving code**

As of https://issues.apache.org/jira/browse/SPARK-7561, we no longer need to use our custom SCP-based mechanism for archiving Jenkins logs on the master machine; this has been superseded by the use of a Jenkins plugin which archives the logs and provides public viewing of them.

We should remove the legacy log syncing code, since this is a blocker to disabling Worker -\> Master SSH on Jenkins.


---

* [SPARK-10642](https://issues.apache.org/jira/browse/SPARK-10642) | *Major* | **Crash in rdd.lookup() with "java.lang.Long cannot be cast to java.lang.Integer"**

Running this command:

{code}
sc.parallelize([(('a', 'b'), 'c')]).groupByKey().partitionBy(20).cache().lookup(('a', 'b'))
{code}

gives the following error:
{noformat}
15/09/16 14:22:23 INFO SparkContext: Starting job: runJob at PythonRDD.scala:361
Traceback (most recent call last):
  File "\<stdin\>", line 1, in \<module\>
  File "/usr/local/Cellar/apache-spark/1.5.0/libexec/python/pyspark/rdd.py", line 2199, in lookup
    return self.ctx.runJob(values, lambda x: x, [self.partitioner(key)])
  File "/usr/local/Cellar/apache-spark/1.5.0/libexec/python/pyspark/context.py", line 916, in runJob
    port = self.\_jvm.PythonRDD.runJob(self.\_jsc.sc(), mappedRDD.\_jrdd, partitions)
  File "/usr/local/Cellar/apache-spark/1.5.0/libexec/python/lib/py4j-0.8.2.1-src.zip/py4j/java\_gateway.py", line 538, in \_\_call\_\_
  File "/usr/local/Cellar/apache-spark/1.5.0/libexec/python/pyspark/sql/utils.py", line 36, in deco
    return f(\*a, \*\*kw)
  File "/usr/local/Cellar/apache-spark/1.5.0/libexec/python/lib/py4j-0.8.2.1-src.zip/py4j/protocol.py", line 300, in get\_return\_value
py4j.protocol.Py4JJavaError: An error occurred while calling z:org.apache.spark.api.python.PythonRDD.runJob.
: java.lang.ClassCastException: java.lang.Long cannot be cast to java.lang.Integer
	at scala.runtime.BoxesRunTime.unboxToInt(BoxesRunTime.java:106)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$submitJob$1.apply(DAGScheduler.scala:530)
	at scala.collection.Iterator$class.find(Iterator.scala:780)
	at scala.collection.AbstractIterator.find(Iterator.scala:1157)
	at scala.collection.IterableLike$class.find(IterableLike.scala:79)
	at scala.collection.AbstractIterable.find(Iterable.scala:54)
	at org.apache.spark.scheduler.DAGScheduler.submitJob(DAGScheduler.scala:530)
	at org.apache.spark.scheduler.DAGScheduler.runJob(DAGScheduler.scala:558)
	at org.apache.spark.SparkContext.runJob(SparkContext.scala:1813)
	at org.apache.spark.SparkContext.runJob(SparkContext.scala:1826)
	at org.apache.spark.SparkContext.runJob(SparkContext.scala:1839)
	at org.apache.spark.api.python.PythonRDD$.runJob(PythonRDD.scala:361)
	at org.apache.spark.api.python.PythonRDD.runJob(PythonRDD.scala)
	at sun.reflect.GeneratedMethodAccessor49.invoke(Unknown Source)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at py4j.reflection.MethodInvoker.invoke(MethodInvoker.java:231)
	at py4j.reflection.ReflectionEngine.invoke(ReflectionEngine.java:379)
	at py4j.Gateway.invoke(Gateway.java:259)
	at py4j.commands.AbstractCommand.invokeMethod(AbstractCommand.java:133)
	at py4j.commands.CallCommand.execute(CallCommand.java:79)
	at py4j.GatewayConnection.run(GatewayConnection.java:207)
	at java.lang.Thread.run(Thread.java:745)
{noformat}


---

* [SPARK-10556](https://issues.apache.org/jira/browse/SPARK-10556) | *Minor* | **SBT build explicitly sets Scala version, which can conflict with SBT's own scala version**

project/plugins.sbt explicitly sets scalaVersion to 2.10.4. This can cause issues when using a version of sbt that is compiled against a different version of Scala (for example sbt 0.13.9 uses 2.10.5). Removing this explicit setting will cause build files to be compiled and run against the same version of Scala that sbt is compiled against.

Note that this only applies to the project build files (items in project/), it is distinct from the version of Scala we target for the actual spark compilation.


---

* [SPARK-10381](https://issues.apache.org/jira/browse/SPARK-10381) | *Critical* | **Infinite loop when OutputCommitCoordination is enabled and OutputCommitter.commitTask throws exception**

When speculative execution is enabled, consider a scenario where the authorized committer of a particular output partition fails during the OutputCommitter.commitTask() call. In this case, the OutputCommitCoordinator is supposed to release that committer's exclusive lock on committing once that task fails. However, due to a unit mismatch the lock will not be released, causing Spark to go into an infinite retry loop.

This bug was masked by the fact that the OutputCommitCoordinator does not have enough end-to-end tests (the current tests use many mocks). Other factors contributing to this bug are the fact that we have many similarly-named identifiers that have different semantics but the same data types (e.g. attemptNumber and taskAttemptId, with inconsistent variable naming which makes them difficult to distinguish).


---

* [SPARK-10377](https://issues.apache.org/jira/browse/SPARK-10377) | *Major* | **Cassandra connector affected by backport change**

The backport in SPARK-7289 and SPARK-9949 includes the refactor of TakeOrdered to TakeOrderedAndProject, which breaks code that refers to TakeOrdered. In a minor version update that is perhaps not expected - specifically, the Cassandra connector refers to this by name and no longer works.

Example use case it to use the Cassandra connector in Scala and creating a CassandraSQLContext:
import com.datastax.spark.connector.\_
import sqlContext.implicits.\_
import org.apache.spark.sql.cassandra.CassandraSQLContext

val cassandraSQLContext = new CassandraSQLContext(sc);

java.lang.NoSuchMethodError: org.apache.spark.sql.cassandra.CassandraSQLContext$$anon$1.TakeOrdered()Lorg/apache/spark/sql/execution/SparkStrategies$TakeOrdered$;
	at org.apache.spark.sql.cassandra.CassandraSQLContext$$anon$1.\<init\>(CassandraSQLContext.scala:90)
	at org.apache.spark.sql.cassandra.CassandraSQLContext.\<init\>(CassandraSQLContext.scala:85)

(Source code link: https://github.com/datastax/spark-cassandra-connector/blob/v1.4.0-M3/spark-cassandra-connector/src/main/scala/org/apache/spark/sql/cassandra/CassandraSQLContext.scala) 
This is with version 1.4.0M3 of the Datastax Cassandra connector, but affects other 1.4 versions as well.

Issue has also been reported to Datastax, here: 
https://datastax-oss.atlassian.net/browse/SPARKC-238


---

* [SPARK-10354](https://issues.apache.org/jira/browse/SPARK-10354) | *Minor* | **First cost RDD shouldn't be cached in k-means\|\| and the following cost RDD should use MEMORY\_AND\_DISK**

The first RDD doesn't need to be cached, other cost RDDs should use MEMORY\_AND\_DISK to avoid recomputing.


---

* [SPARK-10353](https://issues.apache.org/jira/browse/SPARK-10353) | *Major* | **MLlib BLAS gemm outputs wrong result when beta = 0.0 for transpose transpose matrix multiplication**

Basically 
{code}
if (beta != 0.0) {
  f2jBLAS.dscal(C.values.length, beta, C.values, 1)
}
{code}
should be
{code}
if (beta != 1.0) {
  f2jBLAS.dscal(C.values.length, beta, C.values, 1)
}
{code}


---

* [SPARK-10321](https://issues.apache.org/jira/browse/SPARK-10321) | *Critical* | **OrcRelation doesn't override sizeInBytes**

This hurts performance badly because broadcast join can never be enabled.


---

* [SPARK-10169](https://issues.apache.org/jira/browse/SPARK-10169) | *Critical* | **Evaluating AggregateFunction1 (old code path) may return wrong answers when grouping expressions are used as arguments of aggregate functions**

Before Spark 1.5, if an aggregate function use an grouping expression as input argument, the result of the query can be wrong. The reason is we are using transformUp when we do aggregate results rewriting (see https://github.com/apache/spark/blob/branch-1.4/sql/catalyst/src/main/scala/org/apache/spark/sql/catalyst/planning/patterns.scala#L154). 

To reproduce the problem, you can use
{code}
import org.apache.spark.sql.functions.\_
sc.parallelize((1 to 1000), 50).map(i =\> Tuple1(i)).toDF("i").registerTempTable("t")
sqlContext.sql(""" 
select i % 10, sum(if(i % 10 = 5, 1, 0)), count(i)
from t
where i % 10 = 5
group by i % 10""").explain()

== Physical Plan ==
Aggregate false, [PartialGroup#234], [PartialGroup#234 AS \_c0#225,SUM(CAST(HiveGenericUdf#org.apache.hadoop.hive.ql.udf.generic.GenericUDFIf((PartialGroup#234 = 5),1,0), LongType)) AS \_c1#226L,Coalesce(SUM(PartialCount#233L),0) AS \_c2#227L]
 Exchange (HashPartitioning [PartialGroup#234], 200)
  Aggregate true, [(i#191 % 10)], [(i#191 % 10) AS PartialGroup#234,SUM(CAST(HiveGenericUdf#org.apache.hadoop.hive.ql.udf.generic.GenericUDFIf(((i#191 % 10) = 5),1,0), LongType)) AS PartialSum#232L,COUNT(1) AS PartialCount#233L]
   Project [\_1#190 AS i#191]
    Filter ((\_1#190 % 10) = 5)
     PhysicalRDD [\_1#190], MapPartitionsRDD[93] at mapPartitions at ExistingRDD.scala:37

sqlContext.sql(""" 
select i % 10, sum(if(i % 10 = 5, 1, 0)), count(i)
from t
where i % 10 = 5
group by i % 10""").show

\_c0 \_c1 \_c2
5   50  100
{code}

In Spark 1.5, new aggregation code path does not have the problem. The old code path is fixed by https://github.com/apache/spark/commit/dd9ae7945ab65d353ed2b113e0c1a00a0533ffd6.


---

* [SPARK-10071](https://issues.apache.org/jira/browse/SPARK-10071) | *Major* | **QueueInputDStream Should Allow Checkpointing**

I would like for https://issues.apache.org/jira/browse/SPARK-8630 to be reverted and that issue resolved as won’t fix, and for QueueInputDStream to revert to its old behavior of not throwing an exception if checkpointing is
enabled.

Why? The reason is that this fix which throws an exception if the DStream is being checkpointed breaks the primary use case for QueueInputDStream, which is testing. For example, the Spark Streaming documentation recommends using QueueInputDStream for testing.

Why does throwing an exception if checkpointing is used break this class? The reason is that if I use windowing operations or updateStateByKey then the StreamingContext requires that I enable checkpointing. It throws an exception if I don’t enable checkpointing. But then if I enable checkpointing this class throws an exception saying that I cannot use checkpointing with the queue stream. The end result of this is that I cannot use QueueInputDStream to test windowing operations and updateStateByKey. It can only be used for trivial stateless DStreams.

But would removing the exception-throwing logic make this code fragile? It should not. In the testing scenario the RDD that is passed into the QueueInputDStream is created through parallelize and it is checkpointable.

But what about people who are using QueueInputDStream in non-testing scenarios with non-recoverable RDDs? Perhaps a warning suffices here that checkpointing will not be able to recover state if their RDDs are non-recoverable. Then it is up to them how they resolve this situation.

Since right now we have no good way of determining if a QueueInputDStream contains RDDs that are recoverable or not, why not err on the side of leaving it to the user of the class to not expect recoverability, rather than forcing checkpointing.

In conclusion: my recommendation would be to revert to the old behavior and to resolve this bug as won’t fix.


---

* [SPARK-9978](https://issues.apache.org/jira/browse/SPARK-9978) | *Major* | **Window functions require partitionBy to work as expected**

I am trying to reproduce following SQL query:

{code}
df.registerTempTable("df")
sqlContext.sql("SELECT x, row\_number() OVER (ORDER BY x) as rn FROM df").show()

+----+--+
\|   x\|rn\|
+----+--+
\|0.25\| 1\|
\| 0.5\| 2\|
\|0.75\| 3\|
+----+--+
{code}

using PySpark API. Unfortunately it doesn't work as expected:

{code}
from pyspark.sql.window import Window
from pyspark.sql.functions import rowNumber

df = sqlContext.createDataFrame([{"x": 0.25}, {"x": 0.5}, {"x": 0.75}])
df.select(df["x"], rowNumber().over(Window.orderBy("x")).alias("rn")).show()

+----+--+
\|   x\|rn\|
+----+--+
\| 0.5\| 1\|
\|0.25\| 1\|
\|0.75\| 1\|
+----+--+
{code}

As a workaround It is possible to call partitionBy without additional arguments:

{code}
df.select(
    df["x"],
    rowNumber().over(Window.partitionBy().orderBy("x")).alias("rn")
).show()

+----+--+
\|   x\|rn\|
+----+--+
\|0.25\| 1\|
\| 0.5\| 2\|
\|0.75\| 3\|
+----+--+
{code}

but as far as I can tell it is not documented and is rather counterintuitive considering SQL syntax. Moreover this problem doesn't affect Scala API:

{code}
import org.apache.spark.sql.expressions.Window
import org.apache.spark.sql.functions.rowNumber

case class Record(x: Double)
val df = sqlContext.createDataFrame(Record(0.25) :: Record(0.5) :: Record(0.75))
df.select($"x", rowNumber().over(Window.orderBy($"x")).alias("rn")).show

+----+--+
\|   x\|rn\|
+----+--+
\|0.25\| 1\|
\| 0.5\| 2\|
\|0.75\| 3\|
+----+--+
{code}


---

* [SPARK-9949](https://issues.apache.org/jira/browse/SPARK-9949) | *Blocker* | **TakeOrderedAndProject returns wrong output attributes when project is pushed in to it**

In {{TakeOrderedAndProject}}, we have
{code}
case class TakeOrderedAndProject(
    limit: Int,
    sortOrder: Seq[SortOrder],
    projectList: Option[Seq[NamedExpression]],
    child: SparkPlan) extends UnaryNode {

  override def output: Seq[Attribute] = child.output
{code}

When projectList is set, we should use its attributes as the output.


---

* [SPARK-9828](https://issues.apache.org/jira/browse/SPARK-9828) | *Critical* | **Should not share `{}` among instances**

We use `{}` as the initial value in some places, e.g., https://github.com/apache/spark/blob/master/python/pyspark/ml/param/\_\_init\_\_.py#L64. This makes instances sharing the same param map.


---

* [SPARK-9826](https://issues.apache.org/jira/browse/SPARK-9826) | *Minor* | **Cannot use custom classes in log4j.properties**

log4j is initialized before spark class loader is set on the thread context.
Therefore it cannot use classes embedded in fat-jars submitted to spark.

While parsing arguments, spark calls methods on Utils class and triggers ShutdownHookManager static initialization.  This then leads to log4j being initialized before spark gets the chance to specify custom class MutableURLClassLoader on the thread context.

See detailed explanation here:
http://apache-spark-user-list.1001560.n3.nabble.com/log4j-custom-appender-ClassNotFoundException-with-spark-1-4-1-tt24159.html


---

* [SPARK-9806](https://issues.apache.org/jira/browse/SPARK-9806) | *Minor* | **Don't share ReplayListenerBus between multiple applications**

Currently, we are sharing {{ReplayListenerBus}} for replaying the event logs of various apps.
https://github.com/apache/spark/blob/v1.4.0/core/src/main/scala/org/apache/spark/deploy/history/FsHistoryProvider.scala#L226

While replaying the event log for a particular app, we add an {{ApplicationEventListener}} to the bus.
https://github.com/apache/spark/blob/v1.4.0/core/src/main/scala/org/apache/spark/deploy/history/FsHistoryProvider.scala#L391
But we never remove it.

This results in one {{ReplayListenerBus}} being associated with multiple {{ApplicationEventListener}}:
{code}
15/08/11 00:04:00 log-replay-executor INFO FsHistoryProvider: Replaying log path: hdfs://localhost:9000/spark-history/application\_1438993108319\_0146\_1.snappy
15/08/11 00:04:01 log-replay-executor INFO ApplicationEventListener: onEnvUpdate
15/08/11 00:04:01 log-replay-executor INFO ApplicationEventListener: onApplicationStart
15/08/11 00:04:40 log-replay-executor INFO ApplicationEventListener: onApplicationEnd
15/08/11 00:04:40 log-replay-executor INFO FsHistoryProvider: Elapsed time: 39.730114407s
15/08/11 00:04:40 log-replay-executor INFO FsHistoryProvider: Application log application\_1438993108319\_0146\_1.snappy loaded successfully.
15/08/11 00:04:40 log-replay-executor INFO FsHistoryProvider: Replaying log path: hdfs://localhost:9000/spark-history/application\_1438993108319\_0126\_1.snappy
15/08/11 00:04:40 log-replay-executor INFO ApplicationEventListener: onEnvUpdate
15/08/11 00:04:40 log-replay-executor INFO ApplicationEventListener: onEnvUpdate
15/08/11 00:04:40 log-replay-executor INFO ApplicationEventListener: onApplicationStart
15/08/11 00:04:40 log-replay-executor INFO ApplicationEventListener: onApplicationStart
15/08/11 00:05:00 log-replay-executor INFO ApplicationEventListener: onApplicationEnd
15/08/11 00:05:00 log-replay-executor INFO ApplicationEventListener: onApplicationEnd
15/08/11 00:05:00 log-replay-executor INFO FsHistoryProvider: Elapsed time: 20.483128154s
15/08/11 00:05:00 log-replay-executor INFO FsHistoryProvider: Application log application\_1438993108319\_0126\_1.snappy loaded successfully.
15/08/11 00:05:00 log-replay-executor INFO FsHistoryProvider: Replaying log path: hdfs://localhost:9000/spark-history/application\_1438993108319\_0116\_1.snappy
15/08/11 00:05:00 log-replay-executor INFO ApplicationEventListener: onEnvUpdate
15/08/11 00:05:00 log-replay-executor INFO ApplicationEventListener: onEnvUpdate
15/08/11 00:05:00 log-replay-executor INFO ApplicationEventListener: onEnvUpdate
15/08/11 00:05:00 log-replay-executor INFO ApplicationEventListener: onApplicationStart
15/08/11 00:05:00 log-replay-executor INFO ApplicationEventListener: onApplicationStart
15/08/11 00:05:00 log-replay-executor INFO ApplicationEventListener: onApplicationStart
15/08/11 00:05:29 log-replay-executor INFO ApplicationEventListener: onApplicationEnd
15/08/11 00:05:29 log-replay-executor INFO ApplicationEventListener: onApplicationEnd
15/08/11 00:05:29 log-replay-executor INFO ApplicationEventListener: onApplicationEnd
15/08/11 00:05:29 log-replay-executor INFO FsHistoryProvider: Elapsed time: 29.110070845s
15/08/11 00:05:29 log-replay-executor INFO FsHistoryProvider: Application log application\_1438993108319\_0116\_1.snappy loaded successfully.
{code}

We should either remove the listener from the bus or create a new bus for each app.


---

* [SPARK-9801](https://issues.apache.org/jira/browse/SPARK-9801) | *Minor* | **Spark streaming deletes the temp file and backup files without checking if they exist or not**

For spark streaming, when checkpoint is happening, it is getting below error message from spark driver log: 

{code}
15/07/29 11:04:50 INFO CheckpointWriter: Saving checkpoint for time 1438135490000 ms to file 'maprfs:/user/mapr/spark-checkpoint2/checkpoint-1438135490000' 
15/07/29 11:04:50 ERROR MapRFileSystem: Failed to delete path maprfs:/user/mapr/spark-checkpoint2/temp, error: No such file or directory (2) 
15/07/29 11:04:50 ERROR MapRFileSystem: Failed to delete path maprfs:/user/mapr/spark-checkpoint2/checkpoint-1438135490000.bk, error: No such file or directory (2) 
15/07/29 11:04:50 INFO CheckpointWriter: Deleting maprfs:///user/mapr/spark-checkpoint2/checkpoint-1438135480000 
15/07/29 11:04:50 INFO CheckpointWriter: Checkpoint for time 1438135490000 ms saved to file 'maprfs:/user/mapr/spark-checkpoint2/checkpoint-1438135490000', took 8729 bytes and 14 ms 
15/07/29 11:04:50 INFO DStreamGraph: Clearing checkpoint data for time 1438135490000 ms 
15/07/29 11:04:50 INFO DStreamGraph: Cleared checkpoint data for time 1438135490000 ms
{code}

From the source code : 
https://github.com/apache/spark/blob/master/streaming/src/main/scala/org/apache/spark/streaming/Checkpoint.scala

When Spark tries to delete the 2 files, it did not check if the 2 files exist or not. 
fs.delete(tempFile, true) // just in case it exists 
fs.delete(backupFile, true) // just in case it exists

We should add the logic to check if the files exist or not before deleting.


---

* [SPARK-9691](https://issues.apache.org/jira/browse/SPARK-9691) | *Major* | **PySpark SQL rand function treats seed 0 as no seed**

In PySpark SQL's rand() function, it tests for a seed in a way such that seed 0 is treated as no seed, leading to non-deterministic results when a user would expect deterministic results.

See: [https://github.com/apache/spark/blob/98e69467d4fda2c26a951409b5b7c6f1e9345ce4/python/pyspark/sql/functions.py#L271]


---

* [SPARK-9633](https://issues.apache.org/jira/browse/SPARK-9633) | *Minor* | **SBT download locations outdated; need an update**

The SBT download script tries to download from two locations, typesafe.artifactoryonline.com and repo.typesafe.com. The former is offline; the latter redirects to dl.bintray.com now. In fact, bintray seems like the only place to download SBT at this point. We should update to reference bintray directly.

PS: we should download SBT over HTTPS too, not HTTP


---

* [SPARK-9608](https://issues.apache.org/jira/browse/SPARK-9608) | *Minor* | **Incorrect zinc -status check in build/mvn**

{{build/mvn}} [uses a {{-z `zinc -status`}} test\|https://github.com/apache/spark/blob/5a23213c148bfe362514f9c71f5273ebda0a848a/build/mvn#L138] to determine whether a {{zinc}} process is running.

However, {{zinc -status}} checks port {{3030}} by default.

This means that if a {{$ZINC\_PORT}} env var is set to some value besides {{3030}}, and an existing {{zinc}} process is running on port {{3030}}, {{build/mvn}} will skip starting a {{zinc}} process, thinking that a suitable one is running.

Subsequent compilations will look for a {{zinc}} at port {{$ZINC\_PORT}} and not find one.

The {{zinc -status}} call should get the flag {{-port "$ZINC\_PORT"}} added to it.


---

* [SPARK-9607](https://issues.apache.org/jira/browse/SPARK-9607) | *Minor* | **Incorrect zinc check in build/mvn**

[This check\|https://github.com/apache/spark/blob/5a23213c148bfe362514f9c71f5273ebda0a848a/build/mvn#L84-L85] in {{build/mvn}} attempts to determine whether {{zinc}} has been installed, but it fails to add the prefix {{build/}} to the path, so it always thinks that {{zinc}} is not installed, sets {{ZINC\_INSTALL\_FLAG}} to {{1}}, and attempts to install {{zinc}}.

This error manifests later because [the {{zinc -shutdown}} and {{zinc -start}} commands\|https://github.com/apache/spark/blob/5a23213c148bfe362514f9c71f5273ebda0a848a/build/mvn#L140-L143] are always run, even if zinc was not installed and is running.


---

* [SPARK-9507](https://issues.apache.org/jira/browse/SPARK-9507) | *Minor* | **Remove dependency reduced POM hack now that shade plugin is updated**

See https://issues.apache.org/jira/browse/SPARK-8819 for the original problem. The shade plugin is fixed, and so I believe this workaround can be removed.


---

* [SPARK-9496](https://issues.apache.org/jira/browse/SPARK-9496) | *Minor* | **Do not print password in Hive Config**

We better do not print the password in log.


---

* [SPARK-9491](https://issues.apache.org/jira/browse/SPARK-9491) | *Blocker* | **App running on secure YARN with no HBase config will hang**

Because HBase may not be available, or the default config may be pointing at the wrong information for HBase, the YARN backend may end up waiting forever at this point:

{noformat}
"main" prio=10 tid=0x00007f96c8016000 nid=0x1aa6 waiting on condition [0x00007f96cda96000]
   java.lang.Thread.State: TIMED\_WAITING (sleeping)
        at java.lang.Thread.sleep(Native Method)
        at org.apache.hadoop.hbase.zookeeper.MetaTableLocator.blockUntilAvailable(MetaTableLocator.java:443)
        at org.apache.hadoop.hbase.client.ZooKeeperRegistry.getMetaRegionLocation(ZooKeeperRegistry.java:60)
        at org.apache.hadoop.hbase.client.ConnectionManager$HConnectionImplementation.locateRegion(ConnectionManager.java:1123)
        at org.apache.hadoop.hbase.client.ConnectionManager$HConnectionImplementation.locateRegion(ConnectionManager.java:1110)
        at org.apache.hadoop.hbase.client.ConnectionManager$HConnectionImplementation.locateRegion(ConnectionManager.java:1067)
        at org.apache.hadoop.hbase.client.ConnectionManager$HConnectionImplementation.getRegionLocation(ConnectionManager.java:902)
        at org.apache.hadoop.hbase.client.RegionServerCallable.prepare(RegionServerCallable.java:78)
        at org.apache.hadoop.hbase.client.RpcRetryingCaller.callWithRetries(RpcRetryingCaller.java:124)
        at org.apache.hadoop.hbase.ipc.RegionCoprocessorRpcChannel.callExecService(RegionCoprocessorRpcChannel.java:95)
        at org.apache.hadoop.hbase.ipc.CoprocessorRpcChannel.callBlockingMethod(CoprocessorRpcChannel.java:73)
        at org.apache.hadoop.hbase.protobuf.generated.AuthenticationProtos$AuthenticationService$BlockingStub.getAuthenticationToken(AuthenticationProtos.java:4512)
        at org.apache.hadoop.hbase.security.token.TokenUtil.obtainToken(TokenUtil.java:86)
        at org.apache.hadoop.hbase.security.token.TokenUtil.obtainToken(TokenUtil.java:69)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:606)
        at org.apache.spark.deploy.yarn.Client$.obtainTokenForHBase(Client.scala:1299)
        at org.apache.spark.deploy.yarn.Client.prepareLocalResources(Client.scala:270)
{noformat}

The code shouldn't try to fetch HBase delegation tokens when HBase is not configured.


---

* [SPARK-9446](https://issues.apache.org/jira/browse/SPARK-9446) | *Minor* | **Clear Active SparkContext in stop() method**

In thread 'stopped SparkContext remaining active' on mailing list, Andres observed the following in driver log:
{code}
15/07/29 15:17:09 WARN YarnSchedulerBackend$YarnSchedulerEndpoint: ApplicationMaster has disassociated: \<address removed\>
15/07/29 15:17:09 INFO YarnClientSchedulerBackend: Shutting down all executors
Exception in thread "Yarn application state monitor" org.apache.spark.SparkException: Error asking standalone scheduler to shut down executors
        at org.apache.spark.scheduler.cluster.CoarseGrainedSchedulerBackend.stopExecutors(CoarseGrainedSchedulerBackend.scala:261)
        at org.apache.spark.scheduler.cluster.CoarseGrainedSchedulerBackend.stop(CoarseGrainedSchedulerBackend.scala:266)
        at org.apache.spark.scheduler.cluster.YarnClientSchedulerBackend.stop(YarnClientSchedulerBackend.scala:158)
        at org.apache.spark.scheduler.TaskSchedulerImpl.stop(TaskSchedulerImpl.scala:416)
        at org.apache.spark.scheduler.DAGScheduler.stop(DAGScheduler.scala:1411)
        at org.apache.spark.SparkContext.stop(SparkContext.scala:1644)
        at org.apache.spark.scheduler.cluster.YarnClientSchedulerBackend$$anon$1.run(YarnClientSchedulerBackend.scala:139)
Caused by: java.lang.InterruptedException
        at java.util.concurrent.locks.AbstractQueuedSynchronizer.tryAcquireSharedNanos(AbstractQueuedSynchronizer.java:1325)
        at scala.concurrent.impl.Promise$DefaultPromise.tryAwait(Promise.scala:208)
        at scala.concurrent.impl.Promise$DefaultPromise.ready(Promise.scala:218)
        at scala.concurrent.impl.Promise$DefaultPromise.result(Promise.scala:223)
        at scala.concurrent.Await$$anonfun$result$1.apply(package.scala:190)
        at scala.concurrent.BlockContext$DefaultBlockContext$.blockOn(BlockContext.scala:53)
        at scala.concurrent.Await$.result(package.scala:190)15/07/29 15:17:09 INFO YarnClientSchedulerBackend: Asking each executor to shut down

        at org.apache.spark.rpc.RpcEndpointRef.askWithRetry(RpcEndpointRef.scala:102)
        at org.apache.spark.rpc.RpcEndpointRef.askWithRetry(RpcEndpointRef.scala:78)
        at org.apache.spark.scheduler.cluster.CoarseGrainedSchedulerBackend.stopExecutors(CoarseGrainedSchedulerBackend.scala:257)
        ... 6 more
{code}
Effect of the above exception is that a stopped SparkContext is returned to user since SparkContext.clearActiveContext() is not called.


---

* [SPARK-9353](https://issues.apache.org/jira/browse/SPARK-9353) | *Major* | **Standalone scheduling memory requirement incorrect if cores per executor is not set**

I tried to come up with a more succinct title.

The issue only happens if `spark.executor.cores` is not set. Right now if we have a worker with 8G, and we set `spark.executor.memory` to 1G, then the executor launched on the worker can have at most 8 cores, even if the worker has more cores available.

This is caused by the fix in SPARK-8881.


---

* [SPARK-9352](https://issues.apache.org/jira/browse/SPARK-9352) | *Critical* | **Add tests for standalone scheduling code**

There are no tests for the standalone Master scheduling code! This has caused issues like SPARK-8881 and SPARK-9260 in the past. It is crucial that we have some level of confidence that this code actually works...


---

* [SPARK-9326](https://issues.apache.org/jira/browse/SPARK-9326) | *Minor* | **Spark never closes the lock file used to prevent concurrent downloads**

A lock file is used to ensure multiple executors running on the same machine don't download the same file concurrently. Spark never closes these lock files (we release the lock, but releasing the lock does not close the  underlying file). In theory, if an executor fetched a large number of files, this could eventually lead to an issue with too many open files.


---

* [SPARK-9260](https://issues.apache.org/jira/browse/SPARK-9260) | *Major* | **Standalone scheduling can overflow a worker with cores**

If the cluster is started with `spark.deploy.spreadOut = false`, then we may allocate more cores than is available on a worker. E.g. a worker has 8 cores, and an application sets `spark.cores.max = 10`, then we end up with the following screenshot:


---

* [SPARK-9254](https://issues.apache.org/jira/browse/SPARK-9254) | *Major* | **sbt-launch-lib.bash should use `curl --location` to support HTTP/HTTPS redirection**

The {{curl}} call in the script should use {{--location}} to support HTTP/HTTPS redirection, since target file(s) can be hosted on CDN nodes.


---

* [SPARK-9238](https://issues.apache.org/jira/browse/SPARK-9238) | *Trivial* | **two extra useless entries for bytesOfCodePointInUTF8**

Only a trial thing, not sure if I understand correctly or not but I guess only 2 entries in bytesOfCodePointInUTF8 for the case of 6 bytes codepoint(1111110x) is enough.
Details can be found from https://en.wikipedia.org/wiki/UTF-8 in "Description" section.


---

* [SPARK-9236](https://issues.apache.org/jira/browse/SPARK-9236) | *Major* | **Left Outer Join with empty JavaPairRDD returns empty RDD**

When the \*left outer join\* is performed on a non-empty {{JavaPairRDD}} with a {{JavaPairRDD}} which was created with the {{emptyRDD()}} method the resulting RDD is empty. In the following unit test the latest assert fails.

{code}
import static org.assertj.core.api.Assertions.assertThat;

import java.util.Collections;

import lombok.val;

import org.apache.spark.SparkConf;
import org.apache.spark.api.java.JavaSparkContext;
import org.junit.Test;

import scala.Tuple2;

public class SparkTest {

  @Test
  public void joinEmptyRDDTest() {
    val sparkConf = new SparkConf().setAppName("test").setMaster("local");

    try (val sparkContext = new JavaSparkContext(sparkConf)) {
      val oneRdd = sparkContext.parallelize(Collections.singletonList("one"));
      val twoRdd = sparkContext.parallelize(Collections.singletonList("two"));
      val threeRdd = sparkContext.emptyRDD();

      val onePair = oneRdd.mapToPair(t -\> new Tuple2\<Integer, String\>(1, t));
      val twoPair = twoRdd.groupBy(t -\> 1);
      val threePair = threeRdd.groupBy(t -\> 1);

      assertThat(onePair.leftOuterJoin(twoPair).collect()).isNotEmpty();
      assertThat(onePair.leftOuterJoin(threePair).collect()).isNotEmpty();
    }
  }

}
{code}


---

* [SPARK-9198](https://issues.apache.org/jira/browse/SPARK-9198) | *Minor* | **Typo in PySpark SparseVector docs (bad index)**

Several places in the PySpark SparseVector docs have one defined as:
{code}
SparseVector(4, [2, 4], [1.0, 2.0])
{code}
The index 4 goes out of bounds (but this is not checked).


---

* [SPARK-9193](https://issues.apache.org/jira/browse/SPARK-9193) | *Major* | **Avoid assigning tasks to executors under killing**

Now, when some executors are killed by dynamic-allocation, it leads to some mis-assignment onto lost executors sometimes. Such kind of mis-assignment causes task failure(s) or even job failure if it repeats that errors for 4 times.

The root cause is that killExecutors doesn't remove those executors under killing ASAP. It depends on the OnDisassociated event to refresh the active working list later. The delay time really depends on your cluster status (from several milliseconds to sub-minute). When new tasks to be scheduled during that period of time, it will be assigned to those "active" but "under killing" executors. Then the tasks will be failed due to "executor lost". The better way is to exclude those executors under killing in the makeOffers(). Then all those tasks won't be allocated onto those executors "to be lost" any more.


---

* [SPARK-9175](https://issues.apache.org/jira/browse/SPARK-9175) | *Critical* | **BLAS.gemm fails to update matrix C when alpha==0 and beta!=1**

In the BLAS wrapper, gemm is supposed to update matrix C to be alpha \* A \* B + beta \* C. However, the current implementation will not update C as long as alpha == 0. This is incorrect when beta is not equal to 1. 

Example:
val p = 3 
val a = DenseMatrix.zeros(p,p)
val b = DenseMatrix.zeros(p,p)
var c = DenseMatrix.eye(p)
BLAS.gemm(0, a, b, 5, c)

c is unchanged in the Spark 1.4 even though it should be multiplied by 5 element-wise.

The bug is caused by the following in BLAS.gemm:
if (alpha == 0.0) {
  logDebug("gemm: alpha is equal to 0. Returning C.")
}

Will submit PR to fix this.


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
  GraphGenerators.logNormalGraph(sc, numVertices = 100).mapVertices( (id, \_) =\> id.toLong ).mapEdges( e =\> e.attr.toLong)
  
graph.cache().numEdges
graph.unpersist()
{code}

There should not be any cached RDDs in storage (http://localhost:4040/storage/).


---

* [SPARK-9101](https://issues.apache.org/jira/browse/SPARK-9101) | *Major* | **Can't use null in selectExpr**

In 1.3.1 this worked:

{code:python}
df = sqlContext.createDataFrame([[1]], schema=['col'])
df.selectExpr('null as newCol').collect()
{code}

In 1.4.0 it fails with the following stacktrace:

{code}
Traceback (most recent call last):
  File "\<input\>", line 1, in \<module\>
  File "/opt/boxen/homebrew/opt/apache-spark/libexec/python/pyspark/sql/dataframe.py", line 316, in collect
    cls = \_create\_cls(self.schema)
  File "/opt/boxen/homebrew/opt/apache-spark/libexec/python/pyspark/sql/dataframe.py", line 229, in schema
    self.\_schema = \_parse\_datatype\_json\_string(self.\_jdf.schema().json())
  File "/opt/boxen/homebrew/opt/apache-spark/libexec/python/pyspark/sql/types.py", line 519, in \_parse\_datatype\_json\_string
    return \_parse\_datatype\_json\_value(json.loads(json\_string))
  File "/opt/boxen/homebrew/opt/apache-spark/libexec/python/pyspark/sql/types.py", line 539, in \_parse\_datatype\_json\_value
    return \_all\_complex\_types[tpe].fromJson(json\_value)
  File "/opt/boxen/homebrew/opt/apache-spark/libexec/python/pyspark/sql/types.py", line 386, in fromJson
    return StructType([StructField.fromJson(f) for f in json["fields"]])
  File "/opt/boxen/homebrew/opt/apache-spark/libexec/python/pyspark/sql/types.py", line 347, in fromJson
    \_parse\_datatype\_json\_value(json["type"]),
  File "/opt/boxen/homebrew/opt/apache-spark/libexec/python/pyspark/sql/types.py", line 535, in \_parse\_datatype\_json\_value
    raise ValueError("Could not parse datatype: %s" % json\_value)
ValueError: Could not parse datatype: null
{code}

https://github.com/apache/spark/blob/v1.4.0/python/pyspark/sql/types.py#L461

The cause:\_atomic\_types doesn't contain NullType


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
val a = sc.accumulator(1, "\<table\>")
sc.parallelize(1 to 10).foreach(i =\> a += i)
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

* [SPARK-8976](https://issues.apache.org/jira/browse/SPARK-8976) | *Major* | **Python 3 crash: ValueError: invalid mode 'a+' (only r, w, b allowed)**

See Github report: https://github.com/apache/spark/pull/5173#issuecomment-113410652


---

* [SPARK-8974](https://issues.apache.org/jira/browse/SPARK-8974) | *Minor* | **There is a bug in dynamicAllocation. When there is no running tasks, the number of executor a long time without running tasks, the number of executor does not reduce to the value of "spark.dynamicAllocation.minExecutors".**

In yarn-client mode and config option "spark.dynamicAllocation.enabled " is true, when the state of ApplicationMaster is dead or disconnected, if the tasks are submitted  before new ApplicationMaster start. The thread of spark-dynamic-executor-allocation will throw exception, When ApplicationMaster is running and not tasks are running, the number of executor is not zero. So feture of dynamicAllocation are not  supported.


---

* [SPARK-8937](https://issues.apache.org/jira/browse/SPARK-8937) | *Minor* | **A setting `spark.unsafe.exceptionOnMemoryLeak ` is missing in ScalaTest config.**

`spark.unsafe.exceptionOnMemoryLeak` is present in the config of surefire.

{code}
        \<!-- Surefire runs all Java tests --\>
        \<plugin\>
          \<groupId\>org.apache.maven.plugins\</groupId\>
          \<artifactId\>maven-surefire-plugin\</artifactId\>
          \<version\>2.18.1\</version\>
          \<!-- Note config is repeated in scalatest config --\>
...
           
\<spark.unsafe.exceptionOnMemoryLeak\>true\</spark.unsafe.exceptionOnMemoryLeak\>
            \</systemProperties\>
...
{code}

 but is absent in the config ScalaTest.


---

* [SPARK-8927](https://issues.apache.org/jira/browse/SPARK-8927) | *Trivial* | **Doc format wrong for some config descriptions**

In the docs, a couple descriptions of configuration (under Network) are not inside \<td\>\</td\> and are being displayed immediately under the section title instead of in their row.


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

* [SPARK-8881](https://issues.apache.org/jira/browse/SPARK-8881) | *Critical* | **Standalone mode scheduling fails because cores assignment is not atomic**

Current scheduling algorithm (in Master.scala) has two issues:

1. cores are allocated one at a time instead of spark.executor.cores at a time
2. when spark.cores.max/spark.executor.cores \< num\_workers, executors are not launched and the app hangs (due to 1)

=== Edit by Andrew ===

Here's an example from the PR. Let's say we have 4 workers with 16 cores each. We set `spark.cores.max` to 48 and `spark.executor.cores` to 16. Because in spread out mode, the existing code allocates 1 core at a time, we end up allocating 12 cores on each worker, and no executors can be launched because each one wants at least 16 cores. Instead, we should allocate 16 cores at a time.


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

* [SPARK-8405](https://issues.apache.org/jira/browse/SPARK-8405) | *Major* | **Show executor logs on Web UI when Yarn log aggregation is enabled**

When running Spark application in Yarn mode and Yarn log aggregation is enabled, customer is not able to view executor logs on the history server Web UI. The only way for customer to view the logs is through the Yarn command "yarn logs -applicationId \<appId\>".

An screenshot of the error is attached. When you click an executor’s log link on the Spark history server, you’ll see the error if Yarn log aggregation is enabled. The log URL redirects user to the node manager’s UI. This works if the logs are located on that node. But since log aggregation is enabled, the local logs are deleted once log aggregation is completed. 

The logs should be available through the web UIs just like other Hadoop components like MapReduce. For security reasons, end users may not be able to log into the nodes and run the yarn logs -applicationId command. The web UIs can be viewable and exposed through the firewall if necessary.


---

* [SPARK-8386](https://issues.apache.org/jira/browse/SPARK-8386) | *Critical* | **DataFrame and JDBC regression**

I have an ETL app that appends to a JDBC table new results found at each run.  In 1.3.1 I did this:

testResultsDF.insertIntoJDBC(CONNECTION\_URL, TABLE\_NAME, false);

When I do this now in 1.4 it complains that the "object" 'TABLE\_NAME' already exists. I get this even if I switch the overwrite to true.  I also tried this now:

testResultsDF.write().mode(SaveMode.Append).jdbc(CONNECTION\_URL, TABLE\_NAME, connectionProperties);

getting the same error. It works running the first time creating the new table and adding data successfully. But, running it a second time it (the jdbc driver) will tell me that the table already exists. Even SaveMode.Overwrite will give me the same error.


---

* [SPARK-8057](https://issues.apache.org/jira/browse/SPARK-8057) | *Major* | **Call TaskAttemptContext.getTaskAttemptID using Reflection**

Someone may use the Spark core jar in the maven repo with hadoop 1. SPARK-2075 has already resolved the compatibility issue to support it. But "SparkHadoopMapRedUtil.commitTask" broke it recently.


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
\* The spark.ml user guide can provide: (a) code examples and (b) info on algorithms which do not exist in spark.mllib.
\* We should not duplicate info in the spark.ml guides. Since spark.mllib is still the primary API, we should provide links to the corresponding algorithms in the spark.mllib user guide for more info.
{quote}


---

* [SPARK-7527](https://issues.apache.org/jira/browse/SPARK-7527) | *Minor* | **Wrong detection of REPL mode in ClosureCleaner**

If REPL class is not present on the classpath, the {{inIntetpreter}} boolean switch shall be {{false}}, not {{true}} at: https://github.com/apache/spark/blob/master/core/src/main/scala/org/apache/spark/util/ClosureCleaner.scala#L247


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

* [SPARK-7289](https://issues.apache.org/jira/browse/SPARK-7289) | *Major* | **Combine Limit and Sort to avoid total ordering**

Optimize following sql

select key from (select \* from testData order by key) t limit 5

from 

== Parsed Logical Plan ==
'Limit 5
 'Project ['key]
  'Subquery t
   'Sort ['key ASC], true
    'Project [\*]
     'UnresolvedRelation [testData], None

== Analyzed Logical Plan ==
Limit 5
 Project [key#0]
  Subquery t
   Sort [key#0 ASC], true
    Project [key#0,value#1]
     Subquery testData
      LogicalRDD [key#0,value#1], MapPartitionsRDD[1] 

== Optimized Logical Plan ==
Limit 5
 Project [key#0]
  Sort [key#0 ASC], true
   LogicalRDD [key#0,value#1], MapPartitionsRDD[1] 
== Physical Plan ==
Limit 5
 Project [key#0]
  Sort [key#0 ASC], true
   Exchange (RangePartitioning [key#0 ASC], 5), []
    PhysicalRDD [key#0,value#1], MapPartitionsRDD[1] 

to

== Parsed Logical Plan ==
'Limit 5
 'Project ['key]
  'Subquery t
   'Sort ['key ASC], true
    'Project [\*]
     'UnresolvedRelation [testData], None

== Analyzed Logical Plan ==
Limit 5
 Project [key#0]
  Subquery t
   Sort [key#0 ASC], true
    Project [key#0,value#1]
     Subquery testData
      LogicalRDD [key#0,value#1], MapPartitionsRDD[1]

== Optimized Logical Plan ==
Project [key#0]
 Limit 5
  Sort [key#0 ASC], true
   LogicalRDD [key#0,value#1], MapPartitionsRDD[1] 

== Physical Plan ==
Project [key#0]
 TakeOrdered 5, [key#0 ASC]
  PhysicalRDD [key#0,value#1], MapPartitionsRDD[1]


---

* [SPARK-7246](https://issues.apache.org/jira/browse/SPARK-7246) | *Major* | **Rank for DataFrames**

`rank` maps a numeric column to a long column with rankings. `rank` should be an expression. Where it lives is TBD. One suggestion is `funcs.stat`.

{code}
df.select("name", rank("time"))
{code}


---

* [SPARK-6591](https://issues.apache.org/jira/browse/SPARK-6591) | *Major* | **Python data source load options should auto convert common types into strings**

See the discussion at : https://github.com/databricks/spark-csv/pull/39

If the caller invokes
{code}
sqlContext.load("com.databricks.spark.csv", path = "cars.csv", header = True)
{code}

We should automatically turn header into "true" in string form.

We should do this for booleans and numeric values.

cc [~yhuai]


---

* [SPARK-3190](https://issues.apache.org/jira/browse/SPARK-3190) | *Critical* | **Creation of large graph(\> 2.15 B nodes) seems to be broken:possible overflow somewhere**

While creating a graph with 6B nodes and 12B edges, I noticed that 'numVertices' api returns incorrect result; 'numEdges' reports correct number. For few times(with different dataset \> 2.5B nodes) I have also notices that numVertices is returned as -ive number; so I suspect that there is some overflow (may be we are using Int for some field?).

Here is some details of experiments  I have done so far: 
1. Input: numNodes=6101995593 ; noEdges=12163784626
   Graph returns: numVertices=1807028297 ;  numEdges=12163784626

2. Input : numNodes=2157586441 ; noEdges=2747322705
   Graph Returns: numVertices=-2137380855 ;  numEdges=2747322705

3. Input: numNodes=1725060105 ; noEdges=204176821
   Graph: numVertices=1725060105 ;  numEdges=2041768213

You can find the code to generate this bug here: 

https://gist.github.com/npanj/92e949d86d08715bf4bf

Note: Nodes are labeled are 1...6B .


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



