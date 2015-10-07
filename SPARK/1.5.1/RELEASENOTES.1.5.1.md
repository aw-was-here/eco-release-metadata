
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
# Apache Spark  1.5.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [SPARK-10769](https://issues.apache.org/jira/browse/SPARK-10769) | *Major* | **Fix o.a.s.streaming.CheckpointSuite.maintains rate controller**

Fixed the following failure in https://amplab.cs.berkeley.edu/jenkins/job/NewSparkPullRequestBuilder/1787/testReport/junit/org.apache.spark.streaming/CheckpointSuite/recovery\_maintains\_rate\_controller/

{code}
sbt.ForkMain$ForkError: The code passed to eventually never returned normally. Attempted 660 times over 10.000044392000001 seconds. Last failure message: 9223372036854775807 did not equal 200.
	at org.scalatest.concurrent.Eventually$class.tryTryAgain$1(Eventually.scala:420)
	at org.scalatest.concurrent.Eventually$class.eventually(Eventually.scala:438)
	at org.scalatest.concurrent.Eventually$.eventually(Eventually.scala:478)
	at org.scalatest.concurrent.Eventually$class.eventually(Eventually.scala:336)
	at org.scalatest.concurrent.Eventually$.eventually(Eventually.scala:478)
	at org.apache.spark.streaming.CheckpointSuite$$anonfun$15.apply$mcV$sp(CheckpointSuite.scala:413)
	at org.apache.spark.streaming.CheckpointSuite$$anonfun$15.apply(CheckpointSuite.scala:396)
	at org.apache.spark.streaming.CheckpointSuite$$anonfun$15.apply(CheckpointSuite.scala:396)
	at org.scalatest.Transformer$$anonfun$apply$1.apply$mcV$sp(Transformer.scala:22)
	at org.scalatest.OutcomeOf$class.outcomeOf(OutcomeOf.scala:85)
	at org.scalatest.OutcomeOf$.outcomeOf(OutcomeOf.scala:104)
	at org.scalatest.Transformer.apply(Transformer.scala:22)
{code}


---

* [SPARK-10742](https://issues.apache.org/jira/browse/SPARK-10742) | *Minor* | **Add the ability to embed HTML relative links in job descriptions**

This is to allow embedding links to other Spark UI tabs within the job description. For example, streaming jobs could set descriptions with links pointing to the corresponding details page of the batch that the job belongs to.


---

* [SPARK-10740](https://issues.apache.org/jira/browse/SPARK-10740) | *Blocker* | **handle nondeterministic expressions correctly for set operations**

We should only push down deterministic filter condition to set operator.
For Union, let's say we do a non-deterministic filter on 1...5 union 1...5, and we may get 1,3 for the left side and 2,4 for the right side, then the result should be 1,3,2,4. If we push down this filter, we get 1,3 for both side(we create a new random object with same seed in each side) and the result would be 1,3,1,3.
For Intersect, let's say there is a non-deterministic condition with a 0.5 possibility to accept a row and we have a row that presents in both sides of an Intersect. Once we push down this condition, the possibility to accept this row will be 0.25.
For Except, let's say there is a row that presents in both sides of an Except. This row should not be in the final output. However, if we pushdown a non-deterministic condition, it is possible that this row is rejected from one side and then we output a row that should not be a part of the result.

 We should only push down deterministic projection to Union.


---

* [SPARK-10737](https://issues.apache.org/jira/browse/SPARK-10737) | *Blocker* | **When using UnsafeRows, SortMergeJoin may return wrong results**

{code}
val df1 = (1 to 10).map(i =\> (s"str\_$i", i)).toDF("i", "j")
val df2 =
  df1
  .join(df1.select(df1("i")), "i")
  .select(df1("i"), df1("j"))

val df3 = df2.withColumnRenamed("i", "i1").withColumnRenamed("j", "j1")
val df4 =
  df2
  .join(df3, df2("i") === df3("i1"))
  .withColumn("diff", $"j" - $"j1")

df4.show(100, false)

+------+---+------+---+----+
\|i     \|j  \|i1    \|j1 \|diff\|
+------+---+------+---+----+
\|str\_2 \|2  \|str\_2 \|2  \|0   \|
\|str\_7 \|7  \|str\_2 \|2  \|5   \|
\|str\_10\|10 \|str\_10\|10 \|0   \|
\|str\_3 \|3  \|str\_3 \|3  \|0   \|
\|str\_8 \|8  \|str\_3 \|3  \|5   \|
\|str\_4 \|4  \|str\_4 \|4  \|0   \|
\|str\_9 \|9  \|str\_4 \|4  \|5   \|
\|str\_5 \|5  \|str\_5 \|5  \|0   \|
\|str\_1 \|1  \|str\_1 \|1  \|0   \|
\|str\_6 \|6  \|str\_1 \|1  \|5   \|
+------+---+------+---+----+

{code}


---

* [SPARK-10731](https://issues.apache.org/jira/browse/SPARK-10731) | *Major* | **The head() implementation of dataframe is very slow**

{code}
df=sqlContext.read.parquet("someparquetfiles")
df.head()
{code}

The above lines take over 15 minutes. It seems the dataframe requires 3 stages to return the first row. It reads all data (which is about 1 billion rows) and run Limit twice. The take(1) implementation in the RDD performs much better.


---

* [SPARK-10716](https://issues.apache.org/jira/browse/SPARK-10716) | *Minor* | **spark-1.5.0-bin-hadoop2.6.tgz file doesn't uncompress on OS X due to hidden file**

Directly downloaded prebuilt binaries of http://d3kbcqa49mib13.cloudfront.net/spark-1.5.0-bin-hadoop2.6.tgz 
got error when tar xvzf it.  Tried download twice and extract twice.

error log:
......
x spark-1.5.0-bin-hadoop2.6/lib/
x spark-1.5.0-bin-hadoop2.6/lib/datanucleus-core-3.2.10.jar
x spark-1.5.0-bin-hadoop2.6/lib/datanucleus-api-jdo-3.2.6.jar
x spark-1.5.0-bin-hadoop2.6/lib/datanucleus-rdbms-3.2.9.jar
x spark-1.5.0-bin-hadoop2.6/lib/spark-examples-1.5.0-hadoop2.6.0.jar
x spark-1.5.0-bin-hadoop2.6/lib/spark-assembly-1.5.0-hadoop2.6.0.jar
x spark-1.5.0-bin-hadoop2.6/lib/spark-1.5.0-yarn-shuffle.jar
x spark-1.5.0-bin-hadoop2.6/README.md
tar: copyfile unpack (spark-1.5.0-bin-hadoop2.6/python/test\_support/sql/orc\_partitioned/SUCCESS.crc) failed: No such file or directory
~ :\>


---

* [SPARK-10714](https://issues.apache.org/jira/browse/SPARK-10714) | *Major* | **Refactor PythonRDD to decouple iterator computation from PythonRDD**

The idea is that most of the logic of calling Python actually has nothing to do with RDD (it is really just communicating with a socket -- there is nothing distributed about it), and it is only currently depending on RDD because it was written this way.

If we extract that functionality out, we can apply it to area of the code that doesn't depend on RDDs, and also make it easier to test.


---

* [SPARK-10711](https://issues.apache.org/jira/browse/SPARK-10711) | *Critical* | **Do not assume spark.submit.deployMode is always set**

in RRDD.createRProcess() we call RUtils.sparkRPackagePath(), which assumes "... that Spark properties `spark.master` and `spark.submit.deployMode` are set."

It is better to assume safe defaults if they are not set.


---

* [SPARK-10695](https://issues.apache.org/jira/browse/SPARK-10695) | *Critical* | **spark.mesos.constraints documentation uses "=" to separate value instead ":" as parser and mesos expects.**

Incorrect documentation which leads to exception when using constraints value as specified in documentation.


---

* [SPARK-10692](https://issues.apache.org/jira/browse/SPARK-10692) | *Critical* | **Failed batches are never reported through the StreamingListener interface**

If an output operation fails, then corresponding batch is never marked as completed, as the data structure are not updated properly.

https://github.com/apache/spark/blob/master/streaming/src/main/scala/org/apache/spark/streaming/scheduler/JobScheduler.scala#L183


---

* [SPARK-10685](https://issues.apache.org/jira/browse/SPARK-10685) | *Blocker* | **Misaligned data with RDD.zip and DataFrame.withColumn after repartition**

Here's a weird behavior where {{RDD.zip}} or {{DataFrame.withColumn}} after a {{repartition}} produces "misaligned" data, meaning different column values in the same row aren't matched, as if a zip shuffled the collections before zipping them. It's difficult to reproduce because it's nondeterministic, doesn't occur in local mode, and requires ≥2 workers (≥3 in one case). I was able to repro it using pyspark 1.3.0 (cdh5.4.5), 1.4.1 (bin-without-hadoop), and 1.5.0 (bin-without-hadoop).

Here's the most similar issue I was able to find. It appears to not have been repro'd and then closed optimistically, and it smells like it could have been the same underlying cause that was never fixed:

- https://issues.apache.org/jira/browse/SPARK-9131

Also, this {{DataFrame.zip}} issue is related in spirit, since we were trying to build it ourselves when we ran into this problem. Let me put in my vote for reopening the issue and supporting {{DataFrame.zip}} in the standard lib.

- https://issues.apache.org/jira/browse/SPARK-7460

h3. Brief repro

Fail: withColumn(udf) after DataFrame.repartition
{code}
df = sqlCtx.createDataFrame(Row(a=a) for a in xrange(10000))
df = df.repartition(100)
df = df.withColumn('b', udf(lambda r: r, IntegerType())(df.a))
[r for r in df.collect() if r.a != r.b][:3] # Should be []
{code}

Sample outputs (nondeterministic):
{code}
[Row(a=39, b=639), Row(a=139, b=739), Row(a=239, b=839)]
[Row(a=639, b=39), Row(a=739, b=139), Row(a=839, b=239)]
[]
[Row(a=641, b=41), Row(a=741, b=141), Row(a=841, b=241)]
[Row(a=641, b=1343), Row(a=741, b=1443), Row(a=841, b=1543)]
[Row(a=639, b=39), Row(a=739, b=139), Row(a=839, b=239)]
{code}

Fail: RDD.zip after DataFrame.repartition
{code}
df  = sqlCtx.createDataFrame(Row(a=a) for a in xrange(10000))
df  = df.repartition(100)
rdd = df.rdd.zip(df.map(lambda r: Row(b=r.a))).map(lambda (x,y): Row(a=x.a, b=y.b))
[r for r in rdd.collect() if r.a != r.b][:3] # Should be []
{code}

Sample outputs (nondeterministic):
{code}
[]
[Row(a=50, b=6947), Row(a=150, b=7047), Row(a=250, b=7147)]
[]
[]
[Row(a=44, b=644), Row(a=144, b=744), Row(a=244, b=844)]
[]
{code}

Test setup:

- local\[8]: {{MASTER=local\[8]}}
- dist\[N]: 1 driver + 1 master + N workers

{code}
"Fail" tests pass?  cluster mode  spark version
----------------------------------------------------
yes                 local[8]      1.3.0-cdh5.4.5
no                  dist[4]       1.3.0-cdh5.4.5
yes                 local[8]      1.4.1
yes                 dist[1]       1.4.1
no                  dist[2]       1.4.1
no                  dist[4]       1.4.1
yes                 local[8]      1.5.0
yes                 dist[1]       1.5.0
no                  dist[2]       1.5.0
no                  dist[4]       1.5.0
{code}

h3. Detailed repro

Start `pyspark` and run these imports:
{code}
from pyspark.sql import Row
from pyspark.sql.functions import udf
from pyspark.sql.types import IntegerType, StructType, StructField
{code}

Fail: withColumn(udf) after DataFrame.repartition
{code}
df = sqlCtx.createDataFrame(Row(a=a) for a in xrange(10000))
df = df.repartition(100)
df = df.withColumn('b', udf(lambda r: r, IntegerType())(df.a))
len([r for r in df.collect() if r.a != r.b]) # Should be 0
{code}

Ok: withColumn(udf) after DataFrame.repartition(100) after 1 starting partition
{code}
df = sqlCtx.createDataFrame(sc.parallelize((Row(a=a) for a in xrange(10000)), numSlices=1))
df = df.repartition(100)
df = df.withColumn('b', udf(lambda r: r, IntegerType())(df.a))
len([r for r in df.collect() if r.a != r.b]) # Should be 0
{code}

Fail: withColumn(udf) after DataFrame.repartition(100) after 100 starting partitions
{code}
df = sqlCtx.createDataFrame(sc.parallelize((Row(a=a) for a in xrange(10000)), numSlices=100))
df = df.repartition(100)
df = df.withColumn('b', udf(lambda r: r, IntegerType())(df.a))
len([r for r in df.collect() if r.a != r.b]) # Should be 0
{code}

Fail: withColumn(udf) after DataFrame.repartition(1) after 100 starting partitions
{code}
df = sqlCtx.createDataFrame(sc.parallelize((Row(a=a) for a in xrange(10000)), numSlices=100))
df = df.repartition(1)
df = df.withColumn('b', udf(lambda r: r, IntegerType())(df.a))
len([r for r in df.collect() if r.a != r.b]) # Should be 0
{code}

Ok: withColumn(udf) after DataFrame.coalesce(10) after 100 starting partitions
{code}
df = sqlCtx.createDataFrame(sc.parallelize((Row(a=a) for a in xrange(10000)), numSlices=100))
df = df.coalesce(10)
df = df.withColumn('b', udf(lambda r: r, IntegerType())(df.a))
len([r for r in df.collect() if r.a != r.b]) # Should be 0
{code}

Ok: withColumn without udf
{code}
df = sqlCtx.createDataFrame(Row(a=a) for a in xrange(10000))
df = df.repartition(100)
df = df.withColumn('b', df.a)
len([r for r in df.collect() if r.a != r.b]) # Should be 0
{code}

Ok: createDataFrame(RDD.map) instead of withColumn(udf)
{code}
df  = sqlCtx.createDataFrame(Row(a=a) for a in xrange(10000))
df  = df.repartition(100)
rdd = df.map(lambda r: Row(a=r.a, b=r.a))
df  = sqlCtx.createDataFrame(rdd, StructType(df.schema.fields + [StructField('b', IntegerType())]))
len([r for r in df.collect() if r.a != r.b]) # Should be 0
{code}

Fail: createDataFrame(RDD.zip) instead of withColumn(udf)
{code}
df  = sqlCtx.createDataFrame(Row(a=a) for a in xrange(10000))
df  = df.repartition(100)
rdd = df.rdd.zip(df.map(lambda r: Row(b=r.a))).map(lambda (x,y): Row(a=x.a, b=y.b))
df  = sqlCtx.createDataFrame(rdd, StructType(df.schema.fields + [StructField('b', IntegerType())]))
len([r for r in df.collect() if r.a != r.b]) # Should be 0
{code}

Fail: RDD.zip after DataFrame.repartition
{code}
df  = sqlCtx.createDataFrame(Row(a=a) for a in xrange(10000))
df  = df.repartition(100)
rdd = df.rdd.zip(df.map(lambda r: Row(b=r.a))).map(lambda (x,y): Row(a=x.a, b=y.b))
len([d for d in rdd.collect() if d.a != d.b]) # Should be 0
{code}

Fail: RDD.zip after RDD.repartition after 100 starting partitions

- Failure requires ≥3 workers (whether dist or pseudo-dist)

{code}
rdd = sc.parallelize((Row(a=a) for a in xrange(10000)), numSlices=100)
rdd = rdd.repartition(100)
rdd = rdd.zip(rdd.map(lambda a: a)).map(lambda (a,b): Row(a=a,b=b))
len([d for d in rdd.collect() if d.a != d.b]) # Should be 0
{code}

Ok: RDD.zip after RDD.repartition after 1 starting partition
{code}
rdd = sc.parallelize((Row(a=a) for a in xrange(10000)), numSlices=1)
rdd = rdd.repartition(100)
rdd = rdd.zip(rdd.map(lambda a: a)).map(lambda (a,b): Row(a=a,b=b))
len([d for d in rdd.collect() if d.a != d.b]) # Should be 0
{code}

Test setup:

- local\[8]: {{MASTER=local\[8]}}
- pseudo-dist\[N]: 1 driver + 1 master + N workers; master and workers all on same OS
- dist\[N]: 1 driver + 1 master + N workers; master and workers all on separate OS's
- Spark 1.3.0-cdh5.4.5 with dist\[4] didn't trip any of the {{withColumn}} failures, but did trip the {{zip}} failures
- {{-}} indicates a configuration I didn't try

{code}
"Ok" tests pass?  "Fail" tests pass?        platform  cluster mode    spark version
----------------------------------------------------------------
yes               yes                       ubuntu    local[8]        1.3.0-cdh5.4.5
-                 -                         ubuntu    pseudo-dist[1]  1.3.0-cdh5.4.5
-                 -                         ubuntu    pseudo-dist[2]  1.3.0-cdh5.4.5
yes               no[zip], yes[withColumn]  ubuntu    dist[4]         1.3.0-cdh5.4.5
yes               yes                       osx       local[8]        1.4.1
yes               yes                       ubuntu    local[8]        1.4.1
yes               yes                       osx       pseudo-dist[1]  1.4.1
-                 -                         ubuntu    pseudo-dist[1]  1.4.1
yes               no                        osx       pseudo-dist[2]  1.4.1
-                 -                         ubuntu    pseudo-dist[2]  1.4.1
-                 -                         osx       dist[4]         1.4.1
yes               no                        ubuntu    dist[4]         1.4.1
yes               yes                       osx       local[8]        1.5.0
yes               yes                       ubuntu    local[8]        1.5.0
yes               yes                       osx       pseudo-dist[1]  1.5.0
yes               yes                       ubuntu    pseudo-dist[1]  1.5.0
yes               no                        osx       pseudo-dist[2]  1.5.0
yes               no                        ubuntu    pseudo-dist[2]  1.5.0
-                 -                         osx       dist[4]         1.5.0
yes               no                        ubuntu    dist[4]         1.5.0
{code}


---

* [SPARK-10684](https://issues.apache.org/jira/browse/SPARK-10684) | *Minor* | **StructType.interpretedOrdering need not to be serialized**

Kryo fails with buffer overflow even with max value (2G).

{noformat}
org.apache.spark.SparkException: Kryo serialization failed: Buffer overflow. Available: 0, required: 1
Serialization trace:
containsChild (org.apache.spark.sql.catalyst.expressions.BoundReference)
child (org.apache.spark.sql.catalyst.expressions.SortOrder)
array (scala.collection.mutable.ArraySeq)
ordering (org.apache.spark.sql.catalyst.expressions.InterpretedOrdering)
interpretedOrdering (org.apache.spark.sql.types.StructType)
schema (org.apache.spark.sql.catalyst.expressions.GenericRowWithSchema). To avoid this, increase spark.kryoserializer.buffer.max value.
        at org.apache.spark.serializer.KryoSerializerInstance.serialize(KryoSerializer.scala:263)
        at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:240)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:745)
{noformat}


---

* [SPARK-10676](https://issues.apache.org/jira/browse/SPARK-10676) | *Major* | **Update documentation with instructions to enable block manager wire encryption**

See SPARK-6229. The code was added but the docs were never updated.


---

* [SPARK-10672](https://issues.apache.org/jira/browse/SPARK-10672) | *Blocker* | **We should not fail to create a table If we cannot persist metadata of a data source table to metastore in a Hive compatible way**

It is possible that Hive has some internal restrictions on what kinds of metadata of a table it accepts (e.g. Hive 0.13 does not support decimal stored in parquet). If it is the case, we should not fail when we try to store the metadata in a Hive compatible way. We should just save it in the Spark SQL specific format.


---

* [SPARK-10663](https://issues.apache.org/jira/browse/SPARK-10663) | *Trivial* | **Change test.toDF to test in Spark ML Programming Guide**

Spark 1.5.0 \> Spark ML Programming Guide \> Example: Pipeline

I believe model.transform(test.toDF) should be model.transform(test).

Note that "test" is already a DataFrame.


---

* [SPARK-10660](https://issues.apache.org/jira/browse/SPARK-10660) | *Trivial* | **Doc describe error in the "Running Spark on YARN" page**

In the \*Configuration\* section, the \*spark.yarn.driver.memoryOverhead\* and \*spark.yarn.am.memoryOverhead\*‘s  default value should be "driverMemory \* 0.10, with minimum of 384" and "AM memory \* 0.10, with minimum of 384" respectively. Because from Spark 1.4.0, the \*MEMORY\_OVERHEAD\_FACTOR\* is set to 0.1.0, not 0.07.


---

* [SPARK-10657](https://issues.apache.org/jira/browse/SPARK-10657) | *Major* | **Remove legacy SCP-based Jenkins log archiving code**

As of https://issues.apache.org/jira/browse/SPARK-7561, we no longer need to use our custom SCP-based mechanism for archiving Jenkins logs on the master machine; this has been superseded by the use of a Jenkins plugin which archives the logs and provides public viewing of them.

We should remove the legacy log syncing code, since this is a blocker to disabling Worker -\> Master SSH on Jenkins.


---

* [SPARK-10652](https://issues.apache.org/jira/browse/SPARK-10652) | *Major* | **Set meaningful job descriptions for streaming related jobs**

Job descriptions will help distinguish jobs of one batch from the other in the Jobs and Stages pages in the Spark UI


---

* [SPARK-10650](https://issues.apache.org/jira/browse/SPARK-10650) | *Critical* | **Spark docs include test and other extra classes**

In 1.5.0 there are some extra classes in the Spark docs - including a bunch of test classes. We need to figure out what commit introduced those and fix it. The obvious things like genJavadoc version have not changed.

http://spark.apache.org/docs/1.4.1/api/java/org/apache/spark/streaming/ [before]
http://spark.apache.org/docs/1.5.0/api/java/org/apache/spark/streaming/ [after]


---

* [SPARK-10649](https://issues.apache.org/jira/browse/SPARK-10649) | *Major* | **Streaming jobs unexpectedly inherits job group, job descriptions from context starting thread**

The job group, and job descriptions information is passed through thread local properties, and get inherited by child threads. In case of spark streaming, the streaming jobs inherit these properties from the thread that called streamingContext.start(). This may not make sense. 

1. Job group: This is mainly used for cancelling a group of jobs together. It does not make sense to cancel streaming jobs like this, as the effect will be unpredictable. And its not a valid usecase any way, to cancel a streaming context, call streamingContext.stop()

2. Job description: This is used to pass on nice text descriptions for jobs to show up in the UI. The job description of the thread that calls streamingContext.start() is not useful for all the streaming jobs, as it does not make sense for all of the streaming jobs to have the same description, and the description may or may not be related to streaming.


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

* [SPARK-10640](https://issues.apache.org/jira/browse/SPARK-10640) | *Blocker* | **Spark history server fails to parse taskEndReasonFromJson TaskCommitDenied**

I'm seeing an exception from the spark history server trying to read a history file:

{code}
scala.MatchError: TaskCommitDenied (of class java.lang.String)
        at org.apache.spark.util.JsonProtocol$.taskEndReasonFromJson(JsonProtocol.scala:775)
        at org.apache.spark.util.JsonProtocol$.taskEndFromJson(JsonProtocol.scala:531)
        at org.apache.spark.util.JsonProtocol$.sparkEventFromJson(JsonProtocol.scala:488)
        at org.apache.spark.scheduler.ReplayListenerBus.replay(ReplayListenerBus.scala:58)
        at org.apache.spark.deploy.history.FsHistoryProvider.org$apache$spark$deploy$history$FsHistoryProvider$$replay(FsHistoryProvider.scala:457)
        at org.apache.spark.deploy.history.FsHistoryProvider$$anonfun$10.apply(FsHistoryProvider.scala:292)
        at org.apache.spark.deploy.history.FsHistoryProvider$$anonfun$10.apply(FsHistoryProvider.scala:289)
        at scala.collection.TraversableLike$$anonfun$flatMap$1.apply(TraversableLike.scala:251)
        at scala.collection.TraversableLike$$anonfun$flatMap$1.apply(TraversableLike.scala:251)
        at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
        at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
        at scala.collection.TraversableLike$class.flatMap(TraversableLike.scala:251)
        at scala.collection.AbstractTraversable.flatMap(Traversable.scala:105)
        at org.apache.spark.deploy.history.FsHistoryProvider.org$apache$spark$deploy$history$FsHistoryProvider$$mergeApplicationListing(FsHistoryProvider.scala:289)
        at org.apache.spark.deploy.history.FsHistoryProvider$$anonfun$checkForLogs$1$$anon$2.run(FsHistoryProvider.scala:210)
        at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:471)
        at java.util.concurrent.FutureTask.run(FutureTask.java:262)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:745)
{code}


---

* [SPARK-10639](https://issues.apache.org/jira/browse/SPARK-10639) | *Blocker* | **Need to convert UDAF's result from scala to sql type**

We are missing a conversion at https://github.com/apache/spark/blob/branch-1.5/sql/core/src/main/scala/org/apache/spark/sql/execution/aggregate/udaf.scala#L427.


---

* [SPARK-10632](https://issues.apache.org/jira/browse/SPARK-10632) | *Major* | **Cannot save DataFrame with User Defined Types**

Cannot save DataFrames that contain user-defined types.
I tried to save a dataframe with instances of the Vector class from mlib and got the error.

The code below should reproduce the error.
{noformat}
val df = sc.parallelize(Seq((1,Vectors.dense(1,1,1)), (2,Vectors.dense(2,2,2)))).toDF()
df.write.format("json").mode(SaveMode.Overwrite).save(path)
{noformat}

The error log is below

{noformat}
15/09/16 09:58:27 ERROR DefaultWriterContainer: Aborting task.
scala.MatchError: [1,null,null,[1.0,1.0,1.0]] (of class org.apache.spark.sql.catalyst.expressions.GenericMutableRow)
	at org.apache.spark.mllib.linalg.VectorUDT.serialize(Vectors.scala:194)
	at org.apache.spark.mllib.linalg.VectorUDT.serialize(Vectors.scala:179)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$$anonfun$org$apache$spark$sql$execution$datasources$json$JacksonGenerator$$valWriter$2$1.apply(JacksonGenerator.scala:103)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$$anonfun$org$apache$spark$sql$execution$datasources$json$JacksonGenerator$$valWriter$2$1.apply(JacksonGenerator.scala:89)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$$anonfun$org$apache$spark$sql$execution$datasources$json$JacksonGenerator$$valWriter$2$1.apply(JacksonGenerator.scala:126)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$$anonfun$org$apache$spark$sql$execution$datasources$json$JacksonGenerator$$valWriter$2$1.apply(JacksonGenerator.scala:89)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$.apply(JacksonGenerator.scala:133)
	at org.apache.spark.sql.execution.datasources.json.JsonOutputWriter.writeInternal(JSONRelation.scala:185)
	at org.apache.spark.sql.execution.datasources.DefaultWriterContainer.writeRows(WriterContainer.scala:243)
	at org.apache.spark.sql.execution.datasources.InsertIntoHadoopFsRelation$$anonfun$run$1$$anonfun$apply$mcV$sp$3.apply(InsertIntoHadoopFsRelation.scala:150)
	at org.apache.spark.sql.execution.datasources.InsertIntoHadoopFsRelation$$anonfun$run$1$$anonfun$apply$mcV$sp$3.apply(InsertIntoHadoopFsRelation.scala:150)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:66)
	at org.apache.spark.scheduler.Task.run(Task.scala:88)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:214)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
15/09/16 09:58:27 INFO NativeS3FileSystem: OutputStream for key 'adad/\_temporary/0/\_temporary/attempt\_201509160958\_0000\_m\_000000\_0/part-r-00000-2a262ed4-be5a-4190-92a1-a5326cc76ed6' closed. Now beginning upload
15/09/16 09:58:27 INFO NativeS3FileSystem: OutputStream for key 'adad/\_temporary/0/\_temporary/attempt\_201509160958\_0000\_m\_000000\_0/part-r-00000-2a262ed4-be5a-4190-92a1-a5326cc76ed6' upload complete
15/09/16 09:58:28 ERROR DefaultWriterContainer: Task attempt attempt\_201509160958\_0000\_m\_000000\_0 aborted.
15/09/16 09:58:28 ERROR Executor: Exception in task 0.0 in stage 0.0 (TID 0)
org.apache.spark.SparkException: Task failed while writing rows.
	at org.apache.spark.sql.execution.datasources.DefaultWriterContainer.writeRows(WriterContainer.scala:251)
	at org.apache.spark.sql.execution.datasources.InsertIntoHadoopFsRelation$$anonfun$run$1$$anonfun$apply$mcV$sp$3.apply(InsertIntoHadoopFsRelation.scala:150)
	at org.apache.spark.sql.execution.datasources.InsertIntoHadoopFsRelation$$anonfun$run$1$$anonfun$apply$mcV$sp$3.apply(InsertIntoHadoopFsRelation.scala:150)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:66)
	at org.apache.spark.scheduler.Task.run(Task.scala:88)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:214)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
Caused by: scala.MatchError: [1,null,null,[1.0,1.0,1.0]] (of class org.apache.spark.sql.catalyst.expressions.GenericMutableRow)
	at org.apache.spark.mllib.linalg.VectorUDT.serialize(Vectors.scala:194)
	at org.apache.spark.mllib.linalg.VectorUDT.serialize(Vectors.scala:179)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$$anonfun$org$apache$spark$sql$execution$datasources$json$JacksonGenerator$$valWriter$2$1.apply(JacksonGenerator.scala:103)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$$anonfun$org$apache$spark$sql$execution$datasources$json$JacksonGenerator$$valWriter$2$1.apply(JacksonGenerator.scala:89)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$$anonfun$org$apache$spark$sql$execution$datasources$json$JacksonGenerator$$valWriter$2$1.apply(JacksonGenerator.scala:126)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$$anonfun$org$apache$spark$sql$execution$datasources$json$JacksonGenerator$$valWriter$2$1.apply(JacksonGenerator.scala:89)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$.apply(JacksonGenerator.scala:133)
	at org.apache.spark.sql.execution.datasources.json.JsonOutputWriter.writeInternal(JSONRelation.scala:185)
	at org.apache.spark.sql.execution.datasources.DefaultWriterContainer.writeRows(WriterContainer.scala:243)
	... 8 more
15/09/16 09:58:28 WARN TaskSetManager: Lost task 0.0 in stage 0.0 (TID 0, localhost): org.apache.spark.SparkException: Task failed while writing rows.
	at org.apache.spark.sql.execution.datasources.DefaultWriterContainer.writeRows(WriterContainer.scala:251)
	at org.apache.spark.sql.execution.datasources.InsertIntoHadoopFsRelation$$anonfun$run$1$$anonfun$apply$mcV$sp$3.apply(InsertIntoHadoopFsRelation.scala:150)
	at org.apache.spark.sql.execution.datasources.InsertIntoHadoopFsRelation$$anonfun$run$1$$anonfun$apply$mcV$sp$3.apply(InsertIntoHadoopFsRelation.scala:150)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:66)
	at org.apache.spark.scheduler.Task.run(Task.scala:88)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:214)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
Caused by: scala.MatchError: [1,null,null,[1.0,1.0,1.0]] (of class org.apache.spark.sql.catalyst.expressions.GenericMutableRow)
	at org.apache.spark.mllib.linalg.VectorUDT.serialize(Vectors.scala:194)
	at org.apache.spark.mllib.linalg.VectorUDT.serialize(Vectors.scala:179)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$$anonfun$org$apache$spark$sql$execution$datasources$json$JacksonGenerator$$valWriter$2$1.apply(JacksonGenerator.scala:103)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$$anonfun$org$apache$spark$sql$execution$datasources$json$JacksonGenerator$$valWriter$2$1.apply(JacksonGenerator.scala:89)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$$anonfun$org$apache$spark$sql$execution$datasources$json$JacksonGenerator$$valWriter$2$1.apply(JacksonGenerator.scala:126)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$$anonfun$org$apache$spark$sql$execution$datasources$json$JacksonGenerator$$valWriter$2$1.apply(JacksonGenerator.scala:89)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$.apply(JacksonGenerator.scala:133)
	at org.apache.spark.sql.execution.datasources.json.JsonOutputWriter.writeInternal(JSONRelation.scala:185)
	at org.apache.spark.sql.execution.datasources.DefaultWriterContainer.writeRows(WriterContainer.scala:243)
	... 8 more

15/09/16 09:58:28 ERROR TaskSetManager: Task 0 in stage 0.0 failed 1 times; aborting job
15/09/16 09:58:28 INFO TaskSchedulerImpl: Removed TaskSet 0.0, whose tasks have all completed, from pool 
15/09/16 09:58:28 INFO TaskSchedulerImpl: Cancelling stage 0
15/09/16 09:58:28 INFO DAGScheduler: ResultStage 0 (save at DataFrameSave.scala:32) failed in 1.409 s
15/09/16 09:58:28 INFO DAGScheduler: Job 0 failed: save at DataFrameSave.scala:32, took 1.618305 s
15/09/16 09:58:28 ERROR InsertIntoHadoopFsRelation: Aborting job.
org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 0.0 failed 1 times, most recent failure: Lost task 0.0 in stage 0.0 (TID 0, localhost): org.apache.spark.SparkException: Task failed while writing rows.
	at org.apache.spark.sql.execution.datasources.DefaultWriterContainer.writeRows(WriterContainer.scala:251)
	at org.apache.spark.sql.execution.datasources.InsertIntoHadoopFsRelation$$anonfun$run$1$$anonfun$apply$mcV$sp$3.apply(InsertIntoHadoopFsRelation.scala:150)
	at org.apache.spark.sql.execution.datasources.InsertIntoHadoopFsRelation$$anonfun$run$1$$anonfun$apply$mcV$sp$3.apply(InsertIntoHadoopFsRelation.scala:150)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:66)
	at org.apache.spark.scheduler.Task.run(Task.scala:88)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:214)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
Caused by: scala.MatchError: [1,null,null,[1.0,1.0,1.0]] (of class org.apache.spark.sql.catalyst.expressions.GenericMutableRow)
	at org.apache.spark.mllib.linalg.VectorUDT.serialize(Vectors.scala:194)
	at org.apache.spark.mllib.linalg.VectorUDT.serialize(Vectors.scala:179)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$$anonfun$org$apache$spark$sql$execution$datasources$json$JacksonGenerator$$valWriter$2$1.apply(JacksonGenerator.scala:103)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$$anonfun$org$apache$spark$sql$execution$datasources$json$JacksonGenerator$$valWriter$2$1.apply(JacksonGenerator.scala:89)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$$anonfun$org$apache$spark$sql$execution$datasources$json$JacksonGenerator$$valWriter$2$1.apply(JacksonGenerator.scala:126)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$$anonfun$org$apache$spark$sql$execution$datasources$json$JacksonGenerator$$valWriter$2$1.apply(JacksonGenerator.scala:89)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$.apply(JacksonGenerator.scala:133)
	at org.apache.spark.sql.execution.datasources.json.JsonOutputWriter.writeInternal(JSONRelation.scala:185)
	at org.apache.spark.sql.execution.datasources.DefaultWriterContainer.writeRows(WriterContainer.scala:243)
	... 8 more

Driver stacktrace:
	at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$failJobAndIndependentStages(DAGScheduler.scala:1280)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1268)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1267)
	at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
	at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
	at org.apache.spark.scheduler.DAGScheduler.abortStage(DAGScheduler.scala:1267)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:697)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:697)
	at scala.Option.foreach(Option.scala:236)
	at org.apache.spark.scheduler.DAGScheduler.handleTaskSetFailed(DAGScheduler.scala:697)
	at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.doOnReceive(DAGScheduler.scala:1493)
	at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1455)
	at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1444)
	at org.apache.spark.util.EventLoop$$anon$1.run(EventLoop.scala:48)
	at org.apache.spark.scheduler.DAGScheduler.runJob(DAGScheduler.scala:567)
	at org.apache.spark.SparkContext.runJob(SparkContext.scala:1813)
	at org.apache.spark.SparkContext.runJob(SparkContext.scala:1826)
	at org.apache.spark.SparkContext.runJob(SparkContext.scala:1903)
	at org.apache.spark.sql.execution.datasources.InsertIntoHadoopFsRelation$$anonfun$run$1.apply$mcV$sp(InsertIntoHadoopFsRelation.scala:150)
	at org.apache.spark.sql.execution.datasources.InsertIntoHadoopFsRelation$$anonfun$run$1.apply(InsertIntoHadoopFsRelation.scala:108)
	at org.apache.spark.sql.execution.datasources.InsertIntoHadoopFsRelation$$anonfun$run$1.apply(InsertIntoHadoopFsRelation.scala:108)
	at org.apache.spark.sql.execution.SQLExecution$.withNewExecutionId(SQLExecution.scala:56)
	at org.apache.spark.sql.execution.datasources.InsertIntoHadoopFsRelation.run(InsertIntoHadoopFsRelation.scala:108)
	at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult$lzycompute(commands.scala:57)
	at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult(commands.scala:57)
	at org.apache.spark.sql.execution.ExecutedCommand.doExecute(commands.scala:69)
	at org.apache.spark.sql.execution.SparkPlan$$anonfun$execute$5.apply(SparkPlan.scala:140)
	at org.apache.spark.sql.execution.SparkPlan$$anonfun$execute$5.apply(SparkPlan.scala:138)
	at org.apache.spark.rdd.RDDOperationScope$.withScope(RDDOperationScope.scala:147)
	at org.apache.spark.sql.execution.SparkPlan.execute(SparkPlan.scala:138)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:927)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:927)
	at org.apache.spark.sql.execution.datasources.ResolvedDataSource$.apply(ResolvedDataSource.scala:197)
	at org.apache.spark.sql.DataFrameWriter.save(DataFrameWriter.scala:146)
	at org.apache.spark.sql.DataFrameWriter.save(DataFrameWriter.scala:137)
	at app.DataFrameSave$.main(DataFrameSave.scala:32)
	at app.DataFrameSave.main(DataFrameSave.scala)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at com.intellij.rt.execution.application.AppMain.main(AppMain.java:140)
Caused by: org.apache.spark.SparkException: Task failed while writing rows.
	at org.apache.spark.sql.execution.datasources.DefaultWriterContainer.writeRows(WriterContainer.scala:251)
	at org.apache.spark.sql.execution.datasources.InsertIntoHadoopFsRelation$$anonfun$run$1$$anonfun$apply$mcV$sp$3.apply(InsertIntoHadoopFsRelation.scala:150)
	at org.apache.spark.sql.execution.datasources.InsertIntoHadoopFsRelation$$anonfun$run$1$$anonfun$apply$mcV$sp$3.apply(InsertIntoHadoopFsRelation.scala:150)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:66)
	at org.apache.spark.scheduler.Task.run(Task.scala:88)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:214)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
Caused by: scala.MatchError: [1,null,null,[1.0,1.0,1.0]] (of class org.apache.spark.sql.catalyst.expressions.GenericMutableRow)
	at org.apache.spark.mllib.linalg.VectorUDT.serialize(Vectors.scala:194)
	at org.apache.spark.mllib.linalg.VectorUDT.serialize(Vectors.scala:179)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$$anonfun$org$apache$spark$sql$execution$datasources$json$JacksonGenerator$$valWriter$2$1.apply(JacksonGenerator.scala:103)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$$anonfun$org$apache$spark$sql$execution$datasources$json$JacksonGenerator$$valWriter$2$1.apply(JacksonGenerator.scala:89)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$$anonfun$org$apache$spark$sql$execution$datasources$json$JacksonGenerator$$valWriter$2$1.apply(JacksonGenerator.scala:126)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$$anonfun$org$apache$spark$sql$execution$datasources$json$JacksonGenerator$$valWriter$2$1.apply(JacksonGenerator.scala:89)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$.apply(JacksonGenerator.scala:133)
	at org.apache.spark.sql.execution.datasources.json.JsonOutputWriter.writeInternal(JSONRelation.scala:185)
	at org.apache.spark.sql.execution.datasources.DefaultWriterContainer.writeRows(WriterContainer.scala:243)
	... 8 more
15/09/16 09:58:29 ERROR DefaultWriterContainer: Job job\_201509160958\_0000 aborted.
Exception in thread "main" org.apache.spark.SparkException: Job aborted.
	at org.apache.spark.sql.execution.datasources.InsertIntoHadoopFsRelation$$anonfun$run$1.apply$mcV$sp(InsertIntoHadoopFsRelation.scala:156)
	at org.apache.spark.sql.execution.datasources.InsertIntoHadoopFsRelation$$anonfun$run$1.apply(InsertIntoHadoopFsRelation.scala:108)
	at org.apache.spark.sql.execution.datasources.InsertIntoHadoopFsRelation$$anonfun$run$1.apply(InsertIntoHadoopFsRelation.scala:108)
	at org.apache.spark.sql.execution.SQLExecution$.withNewExecutionId(SQLExecution.scala:56)
	at org.apache.spark.sql.execution.datasources.InsertIntoHadoopFsRelation.run(InsertIntoHadoopFsRelation.scala:108)
	at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult$lzycompute(commands.scala:57)
	at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult(commands.scala:57)
	at org.apache.spark.sql.execution.ExecutedCommand.doExecute(commands.scala:69)
	at org.apache.spark.sql.execution.SparkPlan$$anonfun$execute$5.apply(SparkPlan.scala:140)
	at org.apache.spark.sql.execution.SparkPlan$$anonfun$execute$5.apply(SparkPlan.scala:138)
	at org.apache.spark.rdd.RDDOperationScope$.withScope(RDDOperationScope.scala:147)
	at org.apache.spark.sql.execution.SparkPlan.execute(SparkPlan.scala:138)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:927)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:927)
	at org.apache.spark.sql.execution.datasources.ResolvedDataSource$.apply(ResolvedDataSource.scala:197)
	at org.apache.spark.sql.DataFrameWriter.save(DataFrameWriter.scala:146)
	at org.apache.spark.sql.DataFrameWriter.save(DataFrameWriter.scala:137)
	at app.DataFrameSave$.main(DataFrameSave.scala:32)
	at app.DataFrameSave.main(DataFrameSave.scala)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at com.intellij.rt.execution.application.AppMain.main(AppMain.java:140)
Caused by: org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 0.0 failed 1 times, most recent failure: Lost task 0.0 in stage 0.0 (TID 0, localhost): org.apache.spark.SparkException: Task failed while writing rows.
	at org.apache.spark.sql.execution.datasources.DefaultWriterContainer.writeRows(WriterContainer.scala:251)
	at org.apache.spark.sql.execution.datasources.InsertIntoHadoopFsRelation$$anonfun$run$1$$anonfun$apply$mcV$sp$3.apply(InsertIntoHadoopFsRelation.scala:150)
	at org.apache.spark.sql.execution.datasources.InsertIntoHadoopFsRelation$$anonfun$run$1$$anonfun$apply$mcV$sp$3.apply(InsertIntoHadoopFsRelation.scala:150)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:66)
	at org.apache.spark.scheduler.Task.run(Task.scala:88)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:214)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
Caused by: scala.MatchError: [1,null,null,[1.0,1.0,1.0]] (of class org.apache.spark.sql.catalyst.expressions.GenericMutableRow)
	at org.apache.spark.mllib.linalg.VectorUDT.serialize(Vectors.scala:194)
	at org.apache.spark.mllib.linalg.VectorUDT.serialize(Vectors.scala:179)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$$anonfun$org$apache$spark$sql$execution$datasources$json$JacksonGenerator$$valWriter$2$1.apply(JacksonGenerator.scala:103)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$$anonfun$org$apache$spark$sql$execution$datasources$json$JacksonGenerator$$valWriter$2$1.apply(JacksonGenerator.scala:89)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$$anonfun$org$apache$spark$sql$execution$datasources$json$JacksonGenerator$$valWriter$2$1.apply(JacksonGenerator.scala:126)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$$anonfun$org$apache$spark$sql$execution$datasources$json$JacksonGenerator$$valWriter$2$1.apply(JacksonGenerator.scala:89)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$.apply(JacksonGenerator.scala:133)
	at org.apache.spark.sql.execution.datasources.json.JsonOutputWriter.writeInternal(JSONRelation.scala:185)
	at org.apache.spark.sql.execution.datasources.DefaultWriterContainer.writeRows(WriterContainer.scala:243)
	... 8 more

Driver stacktrace:
	at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$failJobAndIndependentStages(DAGScheduler.scala:1280)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1268)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1267)
	at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
	at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
	at org.apache.spark.scheduler.DAGScheduler.abortStage(DAGScheduler.scala:1267)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:697)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:697)
	at scala.Option.foreach(Option.scala:236)
	at org.apache.spark.scheduler.DAGScheduler.handleTaskSetFailed(DAGScheduler.scala:697)
	at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.doOnReceive(DAGScheduler.scala:1493)
	at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1455)
	at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1444)
	at org.apache.spark.util.EventLoop$$anon$1.run(EventLoop.scala:48)
	at org.apache.spark.scheduler.DAGScheduler.runJob(DAGScheduler.scala:567)
	at org.apache.spark.SparkContext.runJob(SparkContext.scala:1813)
	at org.apache.spark.SparkContext.runJob(SparkContext.scala:1826)
	at org.apache.spark.SparkContext.runJob(SparkContext.scala:1903)
	at org.apache.spark.sql.execution.datasources.InsertIntoHadoopFsRelation$$anonfun$run$1.apply$mcV$sp(InsertIntoHadoopFsRelation.scala:150)
	... 23 more
Caused by: org.apache.spark.SparkException: Task failed while writing rows.
	at org.apache.spark.sql.execution.datasources.DefaultWriterContainer.writeRows(WriterContainer.scala:251)
	at org.apache.spark.sql.execution.datasources.InsertIntoHadoopFsRelation$$anonfun$run$1$$anonfun$apply$mcV$sp$3.apply(InsertIntoHadoopFsRelation.scala:150)
	at org.apache.spark.sql.execution.datasources.InsertIntoHadoopFsRelation$$anonfun$run$1$$anonfun$apply$mcV$sp$3.apply(InsertIntoHadoopFsRelation.scala:150)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:66)
	at org.apache.spark.scheduler.Task.run(Task.scala:88)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:214)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
Caused by: scala.MatchError: [1,null,null,[1.0,1.0,1.0]] (of class org.apache.spark.sql.catalyst.expressions.GenericMutableRow)
	at org.apache.spark.mllib.linalg.VectorUDT.serialize(Vectors.scala:194)
	at org.apache.spark.mllib.linalg.VectorUDT.serialize(Vectors.scala:179)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$$anonfun$org$apache$spark$sql$execution$datasources$json$JacksonGenerator$$valWriter$2$1.apply(JacksonGenerator.scala:103)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$$anonfun$org$apache$spark$sql$execution$datasources$json$JacksonGenerator$$valWriter$2$1.apply(JacksonGenerator.scala:89)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$$anonfun$org$apache$spark$sql$execution$datasources$json$JacksonGenerator$$valWriter$2$1.apply(JacksonGenerator.scala:126)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$$anonfun$org$apache$spark$sql$execution$datasources$json$JacksonGenerator$$valWriter$2$1.apply(JacksonGenerator.scala:89)
	at org.apache.spark.sql.execution.datasources.json.JacksonGenerator$.apply(JacksonGenerator.scala:133)
	at org.apache.spark.sql.execution.datasources.json.JsonOutputWriter.writeInternal(JSONRelation.scala:185)
	at org.apache.spark.sql.execution.datasources.DefaultWriterContainer.writeRows(WriterContainer.scala:243)
	... 8 more
{noformat}


---

* [SPARK-10623](https://issues.apache.org/jira/browse/SPARK-10623) | *Blocker* | **NoSuchElementException thrown when ORC predicate push-down is turned on**

Turning on predicate pushdown for ORC datasources results in a {{NoSuchElementException}}:
{noformat}
scala\> val df = sqlContext.sql("SELECT name FROM people WHERE age \< 15")
df: org.apache.spark.sql.DataFrame = [name: string]

scala\> sqlContext.setConf("spark.sql.orc.filterPushdown", "true")

scala\> df.explain
== Physical Plan ==
java.util.NoSuchElementException
{noformat}
Disabling the pushdown makes things work again:
{noformat}
scala\> sqlContext.setConf("spark.sql.orc.filterPushdown", "false")

scala\> df.explain
== Physical Plan ==
Project [name#6]
 Filter (age#7 \< 15)
  Scan OrcRelation[file:/home/mydir/spark-1.5.0-SNAPSHOT/test/people][name#6,age#7]
{noformat}


---

* [SPARK-10611](https://issues.apache.org/jira/browse/SPARK-10611) | *Critical* | **Configuration object thread safety issue in NewHadoopRDD**

SPARK-2546 fixed the issue for HadoopRDD, but the fix is not ported over to NewHadoopRDD. The screenshot of the stacktrace is attached, and it's very similar to what's reported in SPARK-2546.


---

* [SPARK-10593](https://issues.apache.org/jira/browse/SPARK-10593) | *Blocker* | **sql lateral view same name gives wrong value**

This query will return wrong result:
{code}
select 
insideLayer1.json as json\_insideLayer1, 
insideLayer2.json as json\_insideLayer2 
from (select '1' id) creatives 
lateral view json\_tuple('{"layer1": {"layer2": "text inside layer 2"}}', 'layer1') insideLayer1 as json 
lateral view json\_tuple(insideLayer1.json, 'layer2') insideLayer2 as json 
{code}

It got 
{code}
( {"layer2": "text inside layer 2"},  {"layer2": "text inside layer 2"})
{code}

instead of
{code}
( {"layer2": "text inside layer 2"},  text inside layer 2)
{code}


---

* [SPARK-10584](https://issues.apache.org/jira/browse/SPARK-10584) | *Minor* | **Documentation about the compatible Hive version is wrong.**

In Spark 1.5.0, Spark SQL is compatible with Hive 0.12.0 through 1.2.1 but the documentation is wrong.

Also, we cannot get the default value by `sqlContext.getConf("spark.sql.hive.metastore.version")`.


---

* [SPARK-10573](https://issues.apache.org/jira/browse/SPARK-10573) | *Major* | **IndexToString transformSchema adds output field as DoubleType**

Reproducible example:
{code}
val stage = new IndexToString().setInputCol("input").setOutputCol("output")
val inSchema = StructType(Seq(StructField("input", DoubleType)))
val outSchema = stage.transformSchema(inSchema)
assert(outSchema("output").dataType == StringType)
{code}

The root cause seems to be that it uses {{NominalAttribute.toStructField}} which assumes {{DoubleType}}. It would probably be better to just use {{SchemaUtils.appendColumn}} and explicitly set the data type.


---

* [SPARK-10566](https://issues.apache.org/jira/browse/SPARK-10566) | *Minor* | **SnappyCompressionCodec init exception handling masks important error information**



The change to always throw an IllegalArgumentException when failing to load in SnappyCompressionCodec (CompressionCodec.scala:151) throws away the description from the exception thrown, which makes it really difficult to actually figure out what the problem is:

: java.lang.IllegalArgumentException
	at org.apache.spark.io.SnappyCompressionCodec.\<init\>(CompressionCodec.scala:151)
	at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)

Removing this try...catch I get the following error, which actually gives some information about how to fix the problem:

: java.lang.UnsatisfiedLinkError: no snappyjava in java.library.path
	at java.lang.ClassLoader.loadLibrary(ClassLoader.java:1864)
	at java.lang.Runtime.loadLibrary0(Runtime.java:870)
	at java.lang.System.loadLibrary(System.java:1122)
	at org.xerial.snappy.SnappyLoader.loadNativeLibrary(SnappyLoader.java:178)
	at org.xerial.snappy.SnappyLoader.load(SnappyLoader.java:152)


A change to initialize the IllegalArgumentException with the value of e.getMessage() would be great, as the current error without any description just leads to a lot of frustrating guesswork.


---

* [SPARK-10564](https://issues.apache.org/jira/browse/SPARK-10564) | *Critical* | **ThreadingSuite: assertions in threads don't fail the test**

In ThreadingSuite we have things like:
{code}
  test(...) {
    ...
    val threads = (1 to 5).map { i =\>
      new Thread() {
        override def run() {
          assert(sc.getLocalProperty("test") === "parent")
          sc.setLocalProperty("test", i.toString)
          assert(sc.getLocalProperty("test") === i.toString)
          sem.release()
        }
      }
    }
    ...
  }
{code}

If the asserts in the run block fail, they don't actually fail the test! This could mask real bugs.


---

* [SPARK-10563](https://issues.apache.org/jira/browse/SPARK-10563) | *Major* | **SparkContext's local properties should be cloned when inherited**

Currently, when a child thread inherits local properties from the parent thread, it gets a reference of the parent's local properties and uses them as default values.

The problem, however, is that when the parent changes the value of an existing property, the changes are reflected in the child thread! This has very confusing semantics, especially in streaming.

{code}
private val localProperties = new InheritableThreadLocal[Properties] {
  override protected def childValue(parent: Properties): Properties = new Properties(parent)
  override protected def initialValue(): Properties = new Properties()
}
{code}

Instead, we should make a clone of the parent properties rather than passing in a mutable reference.


---

* [SPARK-10556](https://issues.apache.org/jira/browse/SPARK-10556) | *Minor* | **SBT build explicitly sets Scala version, which can conflict with SBT's own scala version**

project/plugins.sbt explicitly sets scalaVersion to 2.10.4. This can cause issues when using a version of sbt that is compiled against a different version of Scala (for example sbt 0.13.9 uses 2.10.5). Removing this explicit setting will cause build files to be compiled and run against the same version of Scala that sbt is compiled against.

Note that this only applies to the project build files (items in project/), it is distinct from the version of Scala we target for the actual spark compilation.


---

* [SPARK-10554](https://issues.apache.org/jira/browse/SPARK-10554) | *Minor* | **Potential NPE with ShutdownHook**

Originally posted in user mailing list [here\|http://apache-spark-user-list.1001560.n3.nabble.com/Potential-NPE-while-exiting-spark-shell-tt24523.html]

I'm currently using Spark 1.3.0 on yarn cluster deployed through CDH5.4. My cluster does not have a 'default' queue, and launching 'spark-shell' submits an yarn application that gets killed immediately because queue does not exist. However, the spark-shell session is still in progress after throwing a bunch of errors while creating sql context. Upon submitting an 'exit' command, there appears to be a NPE from DiskBlockManager with the following stack trace 

{code}
ERROR Utils: Uncaught exception in thread delete Spark local dirs 
java.lang.NullPointerException 
        at org.apache.spark.storage.DiskBlockManager.org$apache$spark$storage$DiskBlockManager$$doStop(DiskBlockManager.scala:161) 
        at org.apache.spark.storage.DiskBlockManager$$anon$1$$anonfun$run$1.apply$mcV$sp(DiskBlockManager.scala:141) 
        at org.apache.spark.storage.DiskBlockManager$$anon$1$$anonfun$run$1.apply(DiskBlockManager.scala:139) 
        at org.apache.spark.storage.DiskBlockManager$$anon$1$$anonfun$run$1.apply(DiskBlockManager.scala:139) 
        at org.apache.spark.util.Utils$.logUncaughtExceptions(Utils.scala:1617) 
        at org.apache.spark.storage.DiskBlockManager$$anon$1.run(DiskBlockManager.scala:139) 
Exception in thread "delete Spark local dirs" java.lang.NullPointerException 
        at org.apache.spark.storage.DiskBlockManager.org$apache$spark$storage$DiskBlockManager$$doStop(DiskBlockManager.scala:161) 
        at org.apache.spark.storage.DiskBlockManager$$anon$1$$anonfun$run$1.apply$mcV$sp(DiskBlockManager.scala:141) 
        at org.apache.spark.storage.DiskBlockManager$$anon$1$$anonfun$run$1.apply(DiskBlockManager.scala:139) 
        at org.apache.spark.storage.DiskBlockManager$$anon$1$$anonfun$run$1.apply(DiskBlockManager.scala:139) 
        at org.apache.spark.util.Utils$.logUncaughtExceptions(Utils.scala:1617) 
        at org.apache.spark.storage.DiskBlockManager$$anon$1.run(DiskBlockManager.scala:139) 
{code}

I believe the problem appears to be surfacing from a shutdown hook that's tries to cleanup local directories. In this specific case because the yarn application was not submitted successfully, the block manager was not registered; as a result it does not have a valid blockManagerId as seen here 

https://github.com/apache/spark/blob/v1.3.0/core/src/main/scala/org/apache/spark/storage/DiskBlockManager.scala#L161

Has anyone faced this issue before? Could this be a problem with the way shutdown hook behaves currently? 

Note: I referenced source from apache spark repo than cloudera.


---

* [SPARK-10549](https://issues.apache.org/jira/browse/SPARK-10549) | *Major* | **scala 2.11 spark on yarn with security - Repl doesn't work**

Trying to run spark on secure yarn built with scala 2.11 results in failure when trying to launch the spark shell.

 ./bin/spark-shell --master yarn-client 

Exception in thread "main" java.lang.ExceptionInInitializerError
        at org.apache.spark.repl.Main.main(Main.scala)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:483)
        at org.apache.spark.deploy.SparkSubmit$.org$apache$spark$deploy$SparkSubmit$$runMain(SparkSubmit.scala:672)
        at org.apache.spark.deploy.SparkSubmit$.doRunMain$1(SparkSubmit.scala:180)
        at org.apache.spark.deploy.SparkSubmit$.submit(SparkSubmit.scala:205)
        at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:120)
        at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)
Caused by: java.lang.Exception: Error: a secret key must be specified via the spark.authenticate.secret config
        at org.apache.spark.SecurityManager.generateSecretKey(SecurityManager.scala:395)
        at org.apache.spark.SecurityManager.\<init\>(SecurityManager.scala:218)
        at org.apache.spark.repl.Main$.\<init\>(Main.scala:38)
        at org.apache.spark.repl.Main$.\<clinit\>(Main.scala)


The reason is because it create the SecurityManager before is sets the SPARK\_YARN\_MODE to true.


---

* [SPARK-10548](https://issues.apache.org/jira/browse/SPARK-10548) | *Blocker* | **Concurrent execution in SQL does not work**

From the mailing list:
{code}
future { df1.count() } 
future { df2.count() } 

java.lang.IllegalArgumentException: spark.sql.execution.id is already set 
        at org.apache.spark.sql.execution.SQLExecution$.withNewExecutionId(SQLExecution.scala:87) 
        at org.apache.spark.sql.DataFrame.withNewExecutionId(DataFrame.scala:1904) 
        at org.apache.spark.sql.DataFrame.collect(DataFrame.scala:1385) 
{code}

=== edit ===

Simple reproduction:
{code}
(1 to 100).par.foreach { \_ =\>
  sc.parallelize(1 to 5).map { i =\> (i, i) }.toDF("a", "b").count()
}
{code}


---

* [SPARK-10543](https://issues.apache.org/jira/browse/SPARK-10543) | *Minor* | **Peak Execution Memory Quantile should be Per-task Basis**

Currently the Peak Execution Memory quantiles seem to be cumulative rather than per task basis. For example, I have seen a value of 2TB in one of my jobs on the quantile metric but each individual task shows less than 1GB on the bottom table.

[~andrewor14] In your PR https://github.com/apache/spark/pull/7770, the screenshot shows the Max Peak Execution Memory of 792.5KB while in the bottom it's about 50KB per task (unless your workload is skewed)

The fix seems straightforward that we use the `update` rather than `value` from the accumulable. I'm happy to provide a PR if people agree this is the right behavior.


---

* [SPARK-10542](https://issues.apache.org/jira/browse/SPARK-10542) | *Critical* | **The  PySpark 1.5 closure serializer can't serialize a namedtuple instance.**

Code to Reproduce Bug:
{code}
from collections import namedtuple
PowerPlantRow=namedtuple("PowerPlantRow", ["AT", "V", "AP", "RH", "PE"])
rdd=sc.parallelize([1]).map(lambda x: PowerPlantRow(1.0, 2.0, 3.0, 4.0, 5.0))
rdd.count()
{code}

Error message on Spark 1.5:
{code}
AttributeError: 'builtin\_function\_or\_method' object has no attribute '\_\_code\_\_'
---------------------------------------------------------------------------
AttributeError                            Traceback (most recent call last)
\<ipython-input-5-59448e31019f\> in \<module\>()
      2 PowerPlantRow=namedtuple("PowerPlantRow", ["AT", "V", "AP", "RH", "PE"])
      3 rdd=sc.parallelize([1]).map(lambda x: PowerPlantRow(1.0, 2.0, 3.0, 4.0, 5.0))
----\> 4 rdd.count()

/home/ubuntu/databricks/spark/python/pyspark/rdd.pyc in count(self)
   1004         3
   1005         """
-\> 1006         return self.mapPartitions(lambda i: [sum(1 for \_ in i)]).sum()
   1007 
   1008     def stats(self):

/home/ubuntu/databricks/spark/python/pyspark/rdd.pyc in sum(self)
    995         6.0
    996         """
--\> 997         return self.mapPartitions(lambda x: [sum(x)]).fold(0, operator.add)
    998 
    999     def count(self):

/home/ubuntu/databricks/spark/python/pyspark/rdd.pyc in fold(self, zeroValue, op)
    869         # zeroValue provided to each partition is unique from the one provided
    870         # to the final reduce call
--\> 871         vals = self.mapPartitions(func).collect()
    872         return reduce(op, vals, zeroValue)
    873 

/home/ubuntu/databricks/spark/python/pyspark/rdd.pyc in collect(self)
    771         """
    772         with SCCallSiteSync(self.context) as css:
--\> 773             port = self.ctx.\_jvm.PythonRDD.collectAndServe(self.\_jrdd.rdd())
    774         return list(\_load\_from\_socket(port, self.\_jrdd\_deserializer))
    775 

/home/ubuntu/databricks/spark/python/pyspark/rdd.pyc in \_jrdd(self)
   2383         command = (self.func, profiler, self.\_prev\_jrdd\_deserializer,
   2384                    self.\_jrdd\_deserializer)
-\> 2385         pickled\_cmd, bvars, env, includes = \_prepare\_for\_python\_RDD(self.ctx, command, self)
   2386         python\_rdd = self.ctx.\_jvm.PythonRDD(self.\_prev\_jrdd.rdd(),
   2387                                              bytearray(pickled\_cmd),

/home/ubuntu/databricks/spark/python/pyspark/rdd.pyc in \_prepare\_for\_python\_RDD(sc, command, obj)
   2303     # the serialized command will be compressed by broadcast
   2304     ser = CloudPickleSerializer()
-\> 2305     pickled\_command = ser.dumps(command)
   2306     if len(pickled\_command) \> (1 \<\< 20):  # 1M
   2307         # The broadcast will have same life cycle as created PythonRDD

/home/ubuntu/databricks/spark/python/pyspark/serializers.pyc in dumps(self, obj)
    425 
    426     def dumps(self, obj):
--\> 427         return cloudpickle.dumps(obj, 2)
    428 
    429 

/home/ubuntu/databricks/spark/python/pyspark/cloudpickle.pyc in dumps(obj, protocol)
    639 
    640     cp = CloudPickler(file,protocol)
--\> 641     cp.dump(obj)
    642 
    643     return file.getvalue()

/home/ubuntu/databricks/spark/python/pyspark/cloudpickle.pyc in dump(self, obj)
    105         self.inject\_addons()
    106         try:
--\> 107             return Pickler.dump(self, obj)
    108         except RuntimeError as e:
    109             if 'recursion' in e.args[0]:

/usr/lib/python2.7/pickle.pyc in dump(self, obj)
    222         if self.proto \>= 2:
    223             self.write(PROTO + chr(self.proto))
--\> 224         self.save(obj)
    225         self.write(STOP)
    226 

/usr/lib/python2.7/pickle.pyc in save(self, obj)
    284         f = self.dispatch.get(t)
    285         if f:
--\> 286             f(self, obj) # Call unbound method with explicit self
    287             return
    288 

/usr/lib/python2.7/pickle.pyc in save\_tuple(self, obj)
    560         write(MARK)
    561         for element in obj:
--\> 562             save(element)
    563 
    564         if id(obj) in memo:

/usr/lib/python2.7/pickle.pyc in save(self, obj)
    284         f = self.dispatch.get(t)
    285         if f:
--\> 286             f(self, obj) # Call unbound method with explicit self
    287             return
    288 
... skipped 23125 bytes ...
    650 
    651     dispatch[DictionaryType] = save\_dict

/usr/lib/python2.7/pickle.pyc in \_batch\_setitems(self, items)
    684                 k, v = tmp[0]
    685                 save(k)
--\> 686                 save(v)
    687                 write(SETITEM)
    688             # else tmp is empty, and we're done

/usr/lib/python2.7/pickle.pyc in save(self, obj)
    284         f = self.dispatch.get(t)
    285         if f:
--\> 286             f(self, obj) # Call unbound method with explicit self
    287             return
    288 

/home/ubuntu/databricks/spark/python/pyspark/cloudpickle.pyc in save\_global(self, obj, name, pack)
    367                     v = v.\_\_func\_\_
    368                 dd[k] = v
--\> 369             self.save(dd)
    370             self.write(pickle.TUPLE2)
    371             self.write(pickle.REDUCE)

/usr/lib/python2.7/pickle.pyc in save(self, obj)
    284         f = self.dispatch.get(t)
    285         if f:
--\> 286             f(self, obj) # Call unbound method with explicit self
    287             return
    288 

/usr/lib/python2.7/pickle.pyc in save\_dict(self, obj)
    647 
    648         self.memoize(obj)
--\> 649         self.\_batch\_setitems(obj.iteritems())
    650 
    651     dispatch[DictionaryType] = save\_dict

/usr/lib/python2.7/pickle.pyc in \_batch\_setitems(self, items)
    679                 for k, v in tmp:
    680                     save(k)
--\> 681                     save(v)
    682                 write(SETITEMS)
    683             elif n:

/usr/lib/python2.7/pickle.pyc in save(self, obj)
    284         f = self.dispatch.get(t)
    285         if f:
--\> 286             f(self, obj) # Call unbound method with explicit self
    287             return
    288 

/home/ubuntu/databricks/spark/python/pyspark/cloudpickle.pyc in save\_function(self, obj, name)
    191         if islambda(obj) or obj.\_\_code\_\_.co\_filename == '\<stdin\>' or themodule is None:
    192             #print("save global", islambda(obj), obj.\_\_code\_\_.co\_filename, modname, themodule)
--\> 193             self.save\_function\_tuple(obj)
    194             return
    195         else:

/home/ubuntu/databricks/spark/python/pyspark/cloudpickle.pyc in save\_function\_tuple(self, func)
    240         # save the rest of the func data needed by \_fill\_function
    241         save(f\_globals)
--\> 242         save(defaults)
    243         save(dct)
    244         write(pickle.TUPLE)

/usr/lib/python2.7/pickle.pyc in save(self, obj)
    284         f = self.dispatch.get(t)
    285         if f:
--\> 286             f(self, obj) # Call unbound method with explicit self
    287             return
    288 

/usr/lib/python2.7/pickle.pyc in save\_tuple(self, obj)
    546         if n \<= 3 and proto \>= 2:
    547             for element in obj:
--\> 548                 save(element)
    549             # Subtle.  Same as in the big comment below.
    550             if id(obj) in memo:

/usr/lib/python2.7/pickle.pyc in save(self, obj)
    284         f = self.dispatch.get(t)
    285         if f:
--\> 286             f(self, obj) # Call unbound method with explicit self
    287             return
    288 

/home/ubuntu/databricks/spark/python/pyspark/cloudpickle.pyc in save\_builtin\_function(self, obj)
    313         if obj.\_\_module\_\_ is "\_\_builtin\_\_":
    314             return self.save\_global(obj)
--\> 315         return self.save\_function(obj)
    316     dispatch[types.BuiltinFunctionType] = save\_builtin\_function
    317 

/home/ubuntu/databricks/spark/python/pyspark/cloudpickle.pyc in save\_function(self, obj, name)
    189         # we'll pickle the actual function object rather than simply saving a
    190         # reference (as is done in default pickler), via save\_function\_tuple.
--\> 191         if islambda(obj) or obj.\_\_code\_\_.co\_filename == '\<stdin\>' or themodule is None:
    192             #print("save global", islambda(obj), obj.\_\_code\_\_.co\_filename, modname, themodule)
    193             self.save\_function\_tuple(obj)

AttributeError: 'builtin\_function\_or\_method' object has no attribute '\_\_code\_\_'
{code}


---

* [SPARK-10540](https://issues.apache.org/jira/browse/SPARK-10540) | *Major* | **HadoopFsRelationTest's "test all data types" is flaky**

https://amplab.cs.berkeley.edu/jenkins/job/Spark-1.5-SBT/297/AMPLAB\_JENKINS\_BUILD\_PROFILE=hadoop1.0,label=spark-test/testReport/junit/org.apache.spark.sql.sources/ParquetHadoopFsRelationSuite/test\_all\_data\_types/

Probably it is caused by we sort results based on the strings of rows (https://github.com/apache/spark/blob/master/sql/core/src/test/scala/org/apache/spark/sql/QueryTest.scala#L118-L131) and the toString function of the user class used by the UDT is not overridden.


---

* [SPARK-10539](https://issues.apache.org/jira/browse/SPARK-10539) | *Blocker* | **Intersection Optimization is Wrong**

https://gist.github.com/nitay/d08cb294ccf00b80c49a


---

* [SPARK-10522](https://issues.apache.org/jira/browse/SPARK-10522) | *Major* | **Nanoseconds part of Timestamp should be positive in parquet**

If Timestamp is before unix epoch, the nanosecond part will be negative, Hive can't read that back correctly.


---

* [SPARK-10511](https://issues.apache.org/jira/browse/SPARK-10511) | *Blocker* | **Source releases should not include maven jars**

I noticed our source jars seemed really big for 1.5.0. At least one contributing factor is that, likely due to some change in the release script, the maven jars are being bundled in with the source code in our build directory. This runs afoul of the ASF policy on binaries in source releases - we should fix it in 1.5.1.

The issue (I think) is that we might invoke maven to compute the version between when we checkout Spark from github and when we package the source file. I think it could be fixed by simply clearing out the build/ directory after that statement runs.


---

* [SPARK-10495](https://issues.apache.org/jira/browse/SPARK-10495) | *Blocker* | **For json data source, date values are saved as int strings**

{code}
val df = Seq((1, java.sql.Date.valueOf("1900-01-01"))).toDF("i", "j")
df.write.format("json").save("/tmp/testJson")

sc.textFile("/tmp/testJson").collect.foreach(println)

{"i":1,"j":"-25567"}
{code}


---

* [SPARK-10494](https://issues.apache.org/jira/browse/SPARK-10494) | *Critical* | **Multiple Python UDFs together with aggregation or sort merge join may cause OOM (failed to acquire memory)**

The RDD cache for Python UDF is removed in 1.4, then N Python UDFs in one query stage could end up evaluate upstream (SparkPlan) 2^N times.

In 1.5, If there is aggregation or sort merge join in upstream SparkPlan, they will cause OOM (failed to acquire memory).


---

* [SPARK-10480](https://issues.apache.org/jira/browse/SPARK-10480) | *Minor* | **ML.LinearRegressionModel.copy() can not use argument "extra"**

ML.LinearRegressionModel.copy() ignored argument extra, it will not take effect when users setting this parameter.


---

* [SPARK-10479](https://issues.apache.org/jira/browse/SPARK-10479) | *Minor* | **LogisticRegression copy should copy model summary if available**

SPARK-9112 adds LogisticRegressionSummary but [does not copy the model summary if available\|https://github.com/apache/spark/blob/master/mllib/src/main/scala/org/apache/spark/ml/classification/LogisticRegression.scala#L471]

We should add behavior similar to that in [LinearRegression.copy\|https://github.com/apache/spark/blob/master/mllib/src/main/scala/org/apache/spark/ml/regression/LinearRegression.scala#L314]


---

* [SPARK-10474](https://issues.apache.org/jira/browse/SPARK-10474) | *Blocker* | **TungstenAggregation cannot acquire memory for pointer array after switching to sort-based**

In aggregation case, a  Lost task happened with below error.

{code}
 java.io.IOException: Could not acquire 65536 bytes of memory
        at org.apache.spark.util.collection.unsafe.sort.UnsafeExternalSorter.initializeForWriting(UnsafeExternalSorter.java:169)
        at org.apache.spark.util.collection.unsafe.sort.UnsafeExternalSorter.spill(UnsafeExternalSorter.java:220)
        at org.apache.spark.sql.execution.UnsafeKVExternalSorter.\<init\>(UnsafeKVExternalSorter.java:126)
        at org.apache.spark.sql.execution.UnsafeFixedWidthAggregationMap.destructAndCreateExternalSorter(UnsafeFixedWidthAggregationMap.java:257)
        at org.apache.spark.sql.execution.aggregate.TungstenAggregationIterator.switchToSortBasedAggregation(TungstenAggregationIterator.scala:435)
        at org.apache.spark.sql.execution.aggregate.TungstenAggregationIterator.processInputs(TungstenAggregationIterator.scala:379)
        at org.apache.spark.sql.execution.aggregate.TungstenAggregationIterator.start(TungstenAggregationIterator.scala:622)
        at org.apache.spark.sql.execution.aggregate.TungstenAggregate$$anonfun$doExecute$1.org$apache$spark$sql$execution$aggregate$TungstenAggregate$$anonfun$$executePartition$1(TungstenAggregate.scala:110)
        at org.apache.spark.sql.execution.aggregate.TungstenAggregate$$anonfun$doExecute$1$$anonfun$2.apply(TungstenAggregate.scala:119)
        at org.apache.spark.sql.execution.aggregate.TungstenAggregate$$anonfun$doExecute$1$$anonfun$2.apply(TungstenAggregate.scala:119)
        at org.apache.spark.rdd.MapPartitionsWithPreparationRDD.compute(MapPartitionsWithPreparationRDD.scala:64)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:297)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:264)
        at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:38)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:297)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:264)
        at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:73)
        at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:41)
        at org.apache.spark.scheduler.Task.run(Task.scala:88)
        at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:214)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:745)
{code}

Key SQL Query
{code:sql}
INSERT INTO TABLE test\_table
SELECT
  ss.ss\_customer\_sk AS cid,
  count(CASE WHEN i.i\_class\_id=1  THEN 1 ELSE NULL END) AS id1,
  count(CASE WHEN i.i\_class\_id=3  THEN 1 ELSE NULL END) AS id3,
  count(CASE WHEN i.i\_class\_id=5  THEN 1 ELSE NULL END) AS id5,
  count(CASE WHEN i.i\_class\_id=7  THEN 1 ELSE NULL END) AS id7,
  count(CASE WHEN i.i\_class\_id=9  THEN 1 ELSE NULL END) AS id9,
  count(CASE WHEN i.i\_class\_id=11 THEN 1 ELSE NULL END) AS id11,
  count(CASE WHEN i.i\_class\_id=13 THEN 1 ELSE NULL END) AS id13,
  count(CASE WHEN i.i\_class\_id=15 THEN 1 ELSE NULL END) AS id15,
  count(CASE WHEN i.i\_class\_id=2  THEN 1 ELSE NULL END) AS id2,
  count(CASE WHEN i.i\_class\_id=4  THEN 1 ELSE NULL END) AS id4,
  count(CASE WHEN i.i\_class\_id=6  THEN 1 ELSE NULL END) AS id6,
  count(CASE WHEN i.i\_class\_id=8  THEN 1 ELSE NULL END) AS id8,
  count(CASE WHEN i.i\_class\_id=10 THEN 1 ELSE NULL END) AS id10,
  count(CASE WHEN i.i\_class\_id=14 THEN 1 ELSE NULL END) AS id14,
  count(CASE WHEN i.i\_class\_id=16 THEN 1 ELSE NULL END) AS id16
FROM store\_sales ss
INNER JOIN item i ON ss.ss\_item\_sk = i.i\_item\_sk
WHERE i.i\_category IN ('Books')
AND ss.ss\_customer\_sk IS NOT NULL
GROUP BY ss.ss\_customer\_sk
HAVING count(ss.ss\_item\_sk) \> 5
{code}

Note:
the store\_sales is a big fact table and item is a small dimension table.


---

* [SPARK-10470](https://issues.apache.org/jira/browse/SPARK-10470) | *Major* | **ml.IsotonicRegressionModel.copy did not set parent**

ml.IsotonicRegressionModel.copy did not set parent


---

* [SPARK-10469](https://issues.apache.org/jira/browse/SPARK-10469) | *Minor* | **Document tungsten-sort**

Add documentation for tungsten-sort.
From the mailing list "I saw a new "spark.shuffle.manager=tungsten-sort" implemented in
https://issues.apache.org/jira/browse/SPARK-7081, but it can't be found its
corresponding description in
http://people.apache.org/~pwendell/spark-releases/spark-1.5.0-rc3-docs/configuration.html(Currenlty
there are only 'sort' and 'hash' two options)."


---

* [SPARK-10466](https://issues.apache.org/jira/browse/SPARK-10466) | *Blocker* | **UnsafeRow exception in Sort-Based Shuffle with data spill**

In sort-based shuffle, if we have data spill, it will cause assert exception, the follow code can reproduce that
{code}
withSparkConf(("spark.shuffle.sort.bypassMergeThreshold", "2")) {
      withSQLConf(("spark.sql.autoBroadcastJoinThreshold", "0")) {
        withTempTable("mytemp") {
          sparkContext.parallelize(1 to 10000000, 3).map(i =\> (i, i)).toDF("key", "value").registerTempTable("mytemp")
          sql("select key, value as v1 from mytemp where key \> 1").registerTempTable("l")
          sql("select key, value as v2 from mytemp where key \> 3").registerTempTable("r")

          val df3 = sql("select v1, v2 from l left join r on l.key=r.key")
          df3.count()
        }
      }
    }
{code}
{code}
java.lang.AssertionError: assertion failed
	at scala.Predef$.assert(Predef.scala:165)
	at org.apache.spark.sql.execution.UnsafeRowSerializerInstance$$anon$2.writeKey(UnsafeRowSerializer.scala:75)
	at org.apache.spark.storage.DiskBlockObjectWriter.write(DiskBlockObjectWriter.scala:180)
	at org.apache.spark.util.collection.ExternalSorter$$anonfun$writePartitionedFile$2$$anonfun$apply$1.apply(ExternalSorter.scala:688)
	at org.apache.spark.util.collection.ExternalSorter$$anonfun$writePartitionedFile$2$$anonfun$apply$1.apply(ExternalSorter.scala:687)
	at scala.collection.Iterator$class.foreach(Iterator.scala:727)
	at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
	at org.apache.spark.util.collection.ExternalSorter$$anonfun$writePartitionedFile$2.apply(ExternalSorter.scala:687)
	at org.apache.spark.util.collection.ExternalSorter$$anonfun$writePartitionedFile$2.apply(ExternalSorter.scala:683)
	at scala.collection.Iterator$class.foreach(Iterator.scala:727)
	at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
	at org.apache.spark.util.collection.ExternalSorter.writePartitionedFile(ExternalSorter.scala:683)
	at org.apache.spark.shuffle.sort.SortShuffleWriter.write(SortShuffleWriter.scala:80)
	at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:73)
	at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:41)
	at org.apache.spark.scheduler.Task.run(Task.scala:88)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:214)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1110)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:603)
	at java.lang.Thread.run(Thread.java:722)
17:32:06.172 WARN org.apache.spark.scheduler.TaskSetManager: Lost task 1.0 in stage 1.0 (TID 4, localhost): java.lang.AssertionError: assertion failed
	at scala.Predef$.assert(Predef.scala:165)
	at org.apache.spark.sql.execution.UnsafeRowSerializerInstance$$anon$2.writeKey(UnsafeRowSerializer.scala:75)
	at org.apache.spark.storage.DiskBlockObjectWriter.write(DiskBlockObjectWriter.scala:180)
	at org.apache.spark.util.collection.ExternalSorter$$anonfun$writePartitionedFile$2$$anonfun$apply$1.apply(ExternalSorter.scala:688)
	at org.apache.spark.util.collection.ExternalSorter$$anonfun$writePartitionedFile$2$$anonfun$apply$1.apply(ExternalSorter.scala:687)
	at scala.collection.Iterator$class.foreach(Iterator.scala:727)
	at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
	at org.apache.spark.util.collection.ExternalSorter$$anonfun$writePartitionedFile$2.apply(ExternalSorter.scala:687)
	at org.apache.spark.util.collection.ExternalSorter$$anonfun$writePartitionedFile$2.apply(ExternalSorter.scala:683)
	at scala.collection.Iterator$class.foreach(Iterator.scala:727)
	at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
	at org.apache.spark.util.collection.ExternalSorter.writePartitionedFile(ExternalSorter.scala:683)
	at org.apache.spark.shuffle.sort.SortShuffleWriter.write(SortShuffleWriter.scala:80)
	at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:73)
	at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:41)
	at org.apache.spark.scheduler.Task.run(Task.scala:88)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:214)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1110)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:603)
	at java.lang.Thread.run(Thread.java:722)
{code}


---

* [SPARK-10454](https://issues.apache.org/jira/browse/SPARK-10454) | *Critical* | **Flaky test: o.a.s.scheduler.DAGSchedulerSuite.late fetch failures don't cause multiple concurrent attempts for the same map stage**

test case fails intermittently in Jenkins.

For eg, see the following builds-
https://amplab.cs.berkeley.edu/jenkins/job/SparkPullRequestBuilder/41991/
https://amplab.cs.berkeley.edu/jenkins/job/SparkPullRequestBuilder/41999/


---

* [SPARK-10449](https://issues.apache.org/jira/browse/SPARK-10449) | *Major* | **StructType.merge shouldn't merge DecimalTypes with different precisions and/or scales**

Schema merging should only handle struct fields. But currently we also reconcile decimal precision and scale information.


---

* [SPARK-10434](https://issues.apache.org/jira/browse/SPARK-10434) | *Minor* | **Parquet compatibility with 1.4 is broken when writing arrays that may contain nulls**

When writing arrays that may contain nulls, for example:
{noformat}
StructType(
  StructField(
    "f",
    ArrayType(IntegerType, containsNull = true),
    nullable = false))
{noformat}
Spark 1.4 uses the following schema:
{noformat}
message m {
  required group f (LIST) {
    repeated group bag {
      optional int32 array;
    }
  }
}
{noformat}
This behavior is a hybrid of parquet-avro and parquet-hive: the 3-level structure and repeated group name "bag" are borrowed from parquet-hive, while the innermost element field name "array" is borrowed from parquet-avro.

However, in Spark 1.5, I failed to notice the latter fact and used a schema in purely parquet-hive flavor, namely:
{noformat}
message m {
  required group f (LIST) {
    repeated group bag {
      optional int32 array\_element;
    }
  }
}
{noformat}
One of the direct consequence is that, Parquet files containing such array fields written by Spark 1.5 can't be read by Spark 1.4 (all array elements become null).

To fix this issue, the name of the innermost field should be changed back to "array".  Notice that this fix doesn't affect interoperability with Hive (saving Parquet files using {{saveAsTable()}} and then read them using Hive).


---

* [SPARK-10431](https://issues.apache.org/jira/browse/SPARK-10431) | *Critical* | **Flaky test: o.a.s.metrics.InputOutputMetricsSuite - input metrics with cache and coalesce**

I sometimes get test failures such as:

- input metrics with cache and coalesce \*\*\* FAILED \*\*\*
  5994472 did not equal 6044472 (InputOutputMetricsSuite.scala:101)

Tracking this down by adding some debug it seems this is a timing issue in the test.

test("input metrics with cache and coalesce") {
    // prime the cache manager
    val rdd = sc.textFile(tmpFilePath, 4).cache()
    rdd.collect()     // \<== #1

    val bytesRead = runAndReturnBytesRead {      // \<== #2
      rdd.count()
    }
    val bytesRead2 = runAndReturnBytesRead {
      rdd.coalesce(4).count()
    }

    // for count and coelesce, the same bytes should be read.
    assert(bytesRead != 0)
    assert(bytesRead2 == bytesRead) // fails
  }

What is happening is that the runAndReturnBytesRead (#2) function adds a SparkListener to monitor TaskEnd events to total the bytes read from eg the rdd.count()

In the case where this fails the listener receives a TaskEnd event from earlier tasks (eg #1) and this mucks up the totalling. This happens because the asynchronous thread processing the event queue and notifying the listeners has not processed one of the taskEnd events before the new listener is added so it also receives that event.

There is a simple fix to the test to wait for the event queue to be empty before adding the new listener and I will submit a pull request for that.

I also notice that a lot of the tests add a listener and as there is no removeSparkListener api the number of listeners on the context builds up during the running of the suite. This is probably why I see this issue running on slow machines.

A wider question may be: should a listener receive events that occurred before it was added?


---

* [SPARK-10422](https://issues.apache.org/jira/browse/SPARK-10422) | *Major* | **String column in InMemoryColumnarCache needs to override clone method**

We have a clone method in {{ColumnType}} (https://github.com/apache/spark/blob/v1.5.0-rc3/sql/core/src/main/scala/org/apache/spark/sql/columnar/ColumnType.scala#L103). Seems we need to override it for String (https://github.com/apache/spark/blob/v1.5.0-rc3/sql/core/src/main/scala/org/apache/spark/sql/columnar/ColumnType.scala#L314) because we are dealing with UTF8String.

{code}
val df =
  ctx.range(1, 30000).selectExpr("id % 500 as id").rdd.map(id =\> Tuple1(s"str\_$id")).toDF("i")
val cached = df.cache()
cached.count()

[info] - SPARK-10422: String column in InMemoryColumnarCache needs to override clone method \*\*\* FAILED \*\*\* (9 seconds, 152 milliseconds)
[info]   org.apache.spark.SparkException: Job aborted due to stage failure: Task 1 in stage 0.0 failed 1 times, most recent failure: Lost task 1.0 in stage 0.0 (TID 1, localhost): java.util.NoSuchElementException: key not found: str\_[0]
[info] 	at scala.collection.MapLike$class.default(MapLike.scala:228)
[info] 	at scala.collection.AbstractMap.default(Map.scala:58)
[info] 	at scala.collection.mutable.HashMap.apply(HashMap.scala:64)
[info] 	at org.apache.spark.sql.columnar.compression.DictionaryEncoding$Encoder.compress(compressionSchemes.scala:258)
[info] 	at org.apache.spark.sql.columnar.compression.CompressibleColumnBuilder$class.build(CompressibleColumnBuilder.scala:110)
[info] 	at org.apache.spark.sql.columnar.NativeColumnBuilder.build(ColumnBuilder.scala:87)
[info] 	at org.apache.spark.sql.columnar.InMemoryRelation$$anonfun$3$$anon$1$$anonfun$next$2.apply(InMemoryColumnarTableScan.scala:152)
[info] 	at org.apache.spark.sql.columnar.InMemoryRelation$$anonfun$3$$anon$1$$anonfun$next$2.apply(InMemoryColumnarTableScan.scala:152)
[info] 	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
[info] 	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
[info] 	at scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:33)
[info] 	at scala.collection.mutable.ArrayOps$ofRef.foreach(ArrayOps.scala:108)
[info] 	at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
[info] 	at scala.collection.mutable.ArrayOps$ofRef.map(ArrayOps.scala:108)
[info] 	at org.apache.spark.sql.columnar.InMemoryRelation$$anonfun$3$$anon$1.next(InMemoryColumnarTableScan.scala:152)
[info] 	at org.apache.spark.sql.columnar.InMemoryRelation$$anonfun$3$$anon$1.next(InMemoryColumnarTableScan.scala:120)

{code}


---

* [SPARK-10411](https://issues.apache.org/jira/browse/SPARK-10411) | *Minor* | **In SQL tab move visualization above explain output**

Request from [~pwendell]:

(1) The visualization is much more interesting than the DF explain output. That should be at the top of the page.

(2) The DF explain output is for advanced users and should be collapsed by default

These are just minor UX optimizations.


---

* [SPARK-10403](https://issues.apache.org/jira/browse/SPARK-10403) | *Major* | **UnsafeRowSerializer can't work with UnsafeShuffleManager (tungsten-sort)**

UnsafeRowSerializer reply on EOF in the stream, but UnsafeRowWriter will not write EOF between partitions.

{code}
java.io.EOFException
	at java.io.DataInputStream.readInt(DataInputStream.java:392)
	at org.apache.spark.sql.execution.UnsafeRowSerializerInstance$$anon$3$$anon$1.next(UnsafeRowSerializer.scala:122)
	at org.apache.spark.sql.execution.UnsafeRowSerializerInstance$$anon$3$$anon$1.next(UnsafeRowSerializer.scala:110)
	at scala.collection.Iterator$$anon$13.next(Iterator.scala:372)
	at scala.collection.Iterator$$anon$11.next(Iterator.scala:328)
	at org.apache.spark.util.CompletionIterator.next(CompletionIterator.scala:30)
	at org.apache.spark.InterruptibleIterator.next(InterruptibleIterator.scala:43)
	at scala.collection.Iterator$$anon$11.next(Iterator.scala:328)
	at org.apache.spark.sql.execution.UnsafeExternalRowSorter.sort(UnsafeExternalRowSorter.java:174)
	at org.apache.spark.sql.execution.TungstenSort.org$apache$spark$sql$execution$TungstenSort$$executePartition$1(sort.scala:160)
	at org.apache.spark.sql.execution.TungstenSort$$anonfun$doExecute$4.apply(sort.scala:169)
	at org.apache.spark.sql.execution.TungstenSort$$anonfun$doExecute$4.apply(sort.scala:169)
	at org.apache.spark.rdd.MapPartitionsWithPreparationRDD.compute(MapPartitionsWithPreparationRDD.scala:64)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:297)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:264)
	at org.apache.spark.rdd.ZippedPartitionsRDD2.compute(ZippedPartitionsRDD.scala:99)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:297)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:264)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:38)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:297)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:264)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:38)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:297)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:264)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:38)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:297)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:264)
	at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:73)
	at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:41)
	at org.apache.spark.scheduler.Task.run(Task.scala:88)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:214)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
{code}


---

* [SPARK-10402](https://issues.apache.org/jira/browse/SPARK-10402) | *Minor* | **Add scaladoc for default values of params in ML**

We should make sure the scaladoc for params includes their default values through the models in ml/


---

* [SPARK-10398](https://issues.apache.org/jira/browse/SPARK-10398) | *Minor* | **Migrate Spark download page to use new lua mirroring scripts**

From infra team :

If you refer to www.apache.org/dyn/closer.cgi, please refer to
www.apache.org/dyn/closer.lua instead from now on.

Any non-conforming CGI scripts are no longer enabled, and are all
rewritten to go to our new mirror system.


---

* [SPARK-10392](https://issues.apache.org/jira/browse/SPARK-10392) | *Major* | **Pyspark - Wrong DateType support on JDBC connection**

I have following problem.
I created table.

{code}
CREATE TABLE `spark\_test` (
	`id` INT(11) NULL,
	`date` DATE NULL
)
COLLATE='utf8\_general\_ci'
ENGINE=InnoDB
;
INSERT INTO `spark\_test` (`id`, `date`) VALUES (1, '1970-01-01');
{code}

Then I'm trying to read data - date '1970-01-01' is converted to int. This makes data frame incompatible with its own schema.

{code}
df = sqlCtx.read.jdbc("jdbc:mysql://host/sandbox?user=user&password=password", 'spark\_test')
print(df.collect())
df = sqlCtx.createDataFrame(df.rdd, df.schema)

[Row(id=1, date=0)]
---------------------------------------------------------------------------
TypeError                                 Traceback (most recent call last)
\<ipython-input-36-ebc1d94e0d8c\> in \<module\>()
      1 df = sqlCtx.read.jdbc("jdbc:mysql://host/sandbox?user=user&password=password", 'spark\_test')
      2 print(df.collect())
----\> 3 df = sqlCtx.createDataFrame(df.rdd, df.schema)

/mnt/spark/spark/python/pyspark/sql/context.py in createDataFrame(self, data, schema, samplingRatio)
    402 
    403         if isinstance(data, RDD):
--\> 404             rdd, schema = self.\_createFromRDD(data, schema, samplingRatio)
    405         else:
    406             rdd, schema = self.\_createFromLocal(data, schema)

/mnt/spark/spark/python/pyspark/sql/context.py in \_createFromRDD(self, rdd, schema, samplingRatio)
    296             rows = rdd.take(10)
    297             for row in rows:
--\> 298                 \_verify\_type(row, schema)
    299 
    300         else:

/mnt/spark/spark/python/pyspark/sql/types.py in \_verify\_type(obj, dataType)
   1152                              "length of fields (%d)" % (len(obj), len(dataType.fields)))
   1153         for v, f in zip(obj, dataType.fields):
-\> 1154             \_verify\_type(v, f.dataType)
   1155 
   1156 

/mnt/spark/spark/python/pyspark/sql/types.py in \_verify\_type(obj, dataType)
   1136         # subclass of them can not be fromInternald in JVM
   1137         if type(obj) not in \_acceptable\_types[\_type]:
-\> 1138             raise TypeError("%s can not accept object in type %s" % (dataType, type(obj)))
   1139 
   1140     if isinstance(dataType, ArrayType):

TypeError: DateType can not accept object in type \<class 'int'\>

{code}


---

* [SPARK-10381](https://issues.apache.org/jira/browse/SPARK-10381) | *Critical* | **Infinite loop when OutputCommitCoordination is enabled and OutputCommitter.commitTask throws exception**

When speculative execution is enabled, consider a scenario where the authorized committer of a particular output partition fails during the OutputCommitter.commitTask() call. In this case, the OutputCommitCoordinator is supposed to release that committer's exclusive lock on committing once that task fails. However, due to a unit mismatch the lock will not be released, causing Spark to go into an infinite retry loop.

This bug was masked by the fact that the OutputCommitCoordinator does not have enough end-to-end tests (the current tests use many mocks). Other factors contributing to this bug are the fact that we have many similarly-named identifiers that have different semantics but the same data types (e.g. attemptNumber and taskAttemptId, with inconsistent variable naming which makes them difficult to distinguish).


---

* [SPARK-10379](https://issues.apache.org/jira/browse/SPARK-10379) | *Critical* | **UnsafeShuffleExternalSorter should preserve first page**


{code}

5/08/31 18:41:25 WARN TaskSetManager: Lost task 16.1 in stage 316.0 (TID 32686, lon4-hadoopslave-b925.lon4.spotify.net): java.io.IOException: Unable to acquire 67108864 bytes of memory
        at org.apache.spark.shuffle.unsafe.UnsafeShuffleExternalSorter.acquireNewPageIfNecessary(UnsafeShuffleExternalSorter.java:385)
        at org.apache.spark.shuffle.unsafe.UnsafeShuffleExternalSorter.insertRecord(UnsafeShuffleExternalSorter.java:435)
        at org.apache.spark.shuffle.unsafe.UnsafeShuffleWriter.insertRecordIntoSorter(UnsafeShuffleWriter.java:246)
        at org.apache.spark.shuffle.unsafe.UnsafeShuffleWriter.write(UnsafeShuffleWriter.java:174)
        at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:73)
        at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:41)
        at org.apache.spark.scheduler.Task.run(Task.scala:88)
        at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:214)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:745)

{code}


---

* [SPARK-10332](https://issues.apache.org/jira/browse/SPARK-10332) | *Minor* | **spark-submit to yarn doesn't fail if executors is 0**

Running spark-submit with yarn with number-executors equal to 0 when not using dynamic allocation should error out.  

In spark 1.5.0 it continues and ends up hanging.

yarn.ClientArguments still has the check so something else must have changed.

spark-submit   --master yarn --deploy-mode cluster --class org.apache.spark.examples.SparkPi --num-executors 0 ....

spark 1.4.1 errors with:
java.lang.IllegalArgumentException:
Number of executors was 0, but must be at least 1
(or 0 if dynamic executor allocation is enabled).


---

* [SPARK-10311](https://issues.apache.org/jira/browse/SPARK-10311) | *Major* | **In cluster mode, AppId and AttemptId should be update when ApplicationMaster is new**

When I start a streaming app with checkpoint data in yarn-cluster mode, the appId and attempId are old(which app first create the checkpoint data), and the event log writes into the old file name.


---

* [SPARK-10310](https://issues.apache.org/jira/browse/SPARK-10310) | *Critical* | **[Spark SQL] All result records will be popluated into ONE line during the script transform due to missing the correct line/filed delimiter**

There is real case using python stream script in Spark SQL query. We found that all result records were wroten in ONE line as input from "select" pipeline for python script and so it caused script will not identify each record.Other, filed separator in spark sql will be '^A' or '\001' which is inconsistent/incompatible the '\t' in Hive implementation.

Key query:
{code:sql}
CREATE VIEW temp1 AS
SELECT \*
FROM
(
  FROM
  (
    SELECT
      c.wcs\_user\_sk,
      w.wp\_type,
      (wcs\_click\_date\_sk \* 24 \* 60 \* 60 + wcs\_click\_time\_sk) AS tstamp\_inSec
    FROM web\_clickstreams c, web\_page w
    WHERE c.wcs\_web\_page\_sk = w.wp\_web\_page\_sk
    AND   c.wcs\_web\_page\_sk IS NOT NULL
    AND   c.wcs\_user\_sk     IS NOT NULL
    AND   c.wcs\_sales\_sk    IS NULL --abandoned implies: no sale
    DISTRIBUTE BY wcs\_user\_sk SORT BY wcs\_user\_sk, tstamp\_inSec
  ) clicksAnWebPageType
  REDUCE
    wcs\_user\_sk,
    tstamp\_inSec,
    wp\_type
  USING 'python sessionize.py 3600'
  AS (
    wp\_type STRING,
    tstamp BIGINT, 
    sessionid STRING)
) sessionized
{code}
Key Python script:
{noformat}
for line in sys.stdin:
     user\_sk,  tstamp\_str, value  = line.strip().split("\t")
{noformat}
Sample SELECT result:
{noformat}
^V31^A3237764860^Afeedback^U31^A3237769106^Adynamic^T31^A3237779027^Areview
{noformat}
Expected result:
{noformat}
31   3237764860   feedback
31   3237769106   dynamic
31   3237779027   review
{noformat}


---

* [SPARK-10301](https://issues.apache.org/jira/browse/SPARK-10301) | *Critical* | **For struct type, if parquet's global schema has less fields than a file's schema, data reading will fail**

We hit this issue when reading a complex Parquet dateset without turning on schema merging.  The data set consists of Parquet files with different but compatible schemas.  In this way, the schema of the dataset is defined by either a summary file or a random physical Parquet file if no summary files are available.  Apparently, this schema may not containing all fields appeared in all physicla files.

Parquet was designed with schema evolution and column pruning in mind, so it should be legal for a user to use a tailored schema to read the dataset to save disk IO.  For example, say we have a Parquet dataset consisting of two physical Parquet files with the following two schemas:
{noformat}
message m0 {
  optional group f0 {
    optional int64 f00;
    optional int64 f01;
  }
}

message m1 {
  optional group f0 {
    optional int64 f00;
    optional int64 f01;
    optional int64 f02;
  }

  optional double f1;
}
{noformat}
Users should be allowed to read the dataset with the following schema:
{noformat}
message m2 {
  optional group f0 {
    optional int64 f01;
    optional int64 f02;
  }
}
{noformat}
so that {{f0.f00}} and {{f1}} are never touched.  The above case can be expressed by the following {{spark-shell}} snippet:
{noformat}
import sqlContext.\_
import sqlContext.implicits.\_
import org.apache.spark.sql.types.{LongType, StructType}

val path = "/tmp/spark/parquet"
range(3).selectExpr("NAMED\_STRUCT('f00', id, 'f01', id) AS f0").coalesce(1)
        .write.mode("overwrite").parquet(path)

range(3).selectExpr("NAMED\_STRUCT('f00', id, 'f01', id, 'f02', id) AS f0", "CAST(id AS DOUBLE) AS f1").coalesce(1)
        .write.mode("append").parquet(path)

val tailoredSchema =
  new StructType()
    .add(
      "f0",
      new StructType()
        .add("f01", LongType, nullable = true)
        .add("f02", LongType, nullable = true),
      nullable = true)

read.schema(tailoredSchema).parquet(path).show()
{noformat}
Expected output should be:
{noformat}
+--------+
\|      f0\|
+--------+
\|[0,null]\|
\|[1,null]\|
\|[2,null]\|
\|   [0,0]\|
\|   [1,1]\|
\|   [2,2]\|
+--------+
{noformat}
However, current 1.5-SNAPSHOT version throws the following exception:
{noformat}
org.apache.parquet.io.ParquetDecodingException: Can not read value at 0 in block -1 in file hdfs://localhost:9000/tmp/spark/parquet/part-r-00000-56c4604e-c546-4f97-a316-05da8ab1a0bf.gz.parquet
        at org.apache.parquet.hadoop.InternalParquetRecordReader.nextKeyValue(InternalParquetRecordReader.java:228)
        at org.apache.parquet.hadoop.ParquetRecordReader.nextKeyValue(ParquetRecordReader.java:201)
        at org.apache.spark.rdd.SqlNewHadoopRDD$$anon$1.hasNext(SqlNewHadoopRDD.scala:168)
        at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
        at scala.collection.Iterator$$anon$10.hasNext(Iterator.scala:308)
        at scala.collection.Iterator$class.foreach(Iterator.scala:727)
        at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
        at scala.collection.generic.Growable$class.$plus$plus$eq(Growable.scala:48)
        at scala.collection.mutable.ArrayBuffer.$plus$plus$eq(ArrayBuffer.scala:103)
        at scala.collection.mutable.ArrayBuffer.$plus$plus$eq(ArrayBuffer.scala:47)
        at scala.collection.TraversableOnce$class.to(TraversableOnce.scala:273)
        at scala.collection.AbstractIterator.to(Iterator.scala:1157)
        at scala.collection.TraversableOnce$class.toBuffer(TraversableOnce.scala:265)
        at scala.collection.AbstractIterator.toBuffer(Iterator.scala:1157)
        at scala.collection.TraversableOnce$class.toArray(TraversableOnce.scala:252)
        at scala.collection.AbstractIterator.toArray(Iterator.scala:1157)
        at org.apache.spark.sql.execution.SparkPlan$$anonfun$5.apply(SparkPlan.scala:215)
        at org.apache.spark.sql.execution.SparkPlan$$anonfun$5.apply(SparkPlan.scala:215)
        at org.apache.spark.SparkContext$$anonfun$runJob$5.apply(SparkContext.scala:1844)
        at org.apache.spark.SparkContext$$anonfun$runJob$5.apply(SparkContext.scala:1844)
        at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:66)
        at org.apache.spark.scheduler.Task.run(Task.scala:88)
        at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:214)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:745)
Caused by: java.lang.ArrayIndexOutOfBoundsException: 2
        at org.apache.spark.sql.execution.datasources.parquet.CatalystRowConverter.getConverter(CatalystRowConverter.scala:206)
        at org.apache.parquet.io.RecordReaderImplementation.\<init\>(RecordReaderImplementation.java:269)
        at org.apache.parquet.io.MessageColumnIO$1.visit(MessageColumnIO.java:134)
        at org.apache.parquet.io.MessageColumnIO$1.visit(MessageColumnIO.java:99)
        at org.apache.parquet.filter2.compat.FilterCompat$NoOpFilter.accept(FilterCompat.java:154)
        at org.apache.parquet.io.MessageColumnIO.getRecordReader(MessageColumnIO.java:99)
        at org.apache.parquet.hadoop.InternalParquetRecordReader.checkRead(InternalParquetRecordReader.java:137)
        at org.apache.parquet.hadoop.InternalParquetRecordReader.nextKeyValue(InternalParquetRecordReader.java:208)
        ... 25 more
15/08/30 16:42:59 ERROR TaskSetManager: Task 0 in stage 2.0 failed 1 times; aborting job
org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 2.0 failed 1 times, most recent failure: Lost task 0.0 in stage 2.0 (TID 2, localhost): org.apache.parquet.io.ParquetDecodingException: Can not read value at 0 in block -1 in file hdfs://localhost:9000/tmp/spark/parquet/part-r-00000-56c4604e-c546-4f97-a316-05da8ab1a0bf.gz.parquet
        at org.apache.parquet.hadoop.InternalParquetRecordReader.nextKeyValue(InternalParquetRecordReader.java:228)
        at org.apache.parquet.hadoop.ParquetRecordReader.nextKeyValue(ParquetRecordReader.java:201)
        at org.apache.spark.rdd.SqlNewHadoopRDD$$anon$1.hasNext(SqlNewHadoopRDD.scala:168)
        at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
        at scala.collection.Iterator$$anon$10.hasNext(Iterator.scala:308)
        at scala.collection.Iterator$class.foreach(Iterator.scala:727)
        at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
        at scala.collection.generic.Growable$class.$plus$plus$eq(Growable.scala:48)
        at scala.collection.mutable.ArrayBuffer.$plus$plus$eq(ArrayBuffer.scala:103)
        at scala.collection.mutable.ArrayBuffer.$plus$plus$eq(ArrayBuffer.scala:47)
        at scala.collection.TraversableOnce$class.to(TraversableOnce.scala:273)
        at scala.collection.AbstractIterator.to(Iterator.scala:1157)
        at scala.collection.TraversableOnce$class.toBuffer(TraversableOnce.scala:265)
        at scala.collection.AbstractIterator.toBuffer(Iterator.scala:1157)
        at scala.collection.TraversableOnce$class.toArray(TraversableOnce.scala:252)
        at scala.collection.AbstractIterator.toArray(Iterator.scala:1157)
        at org.apache.spark.sql.execution.SparkPlan$$anonfun$5.apply(SparkPlan.scala:215)
        at org.apache.spark.sql.execution.SparkPlan$$anonfun$5.apply(SparkPlan.scala:215)
        at org.apache.spark.SparkContext$$anonfun$runJob$5.apply(SparkContext.scala:1844)
        at org.apache.spark.SparkContext$$anonfun$runJob$5.apply(SparkContext.scala:1844)
        at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:66)
        at org.apache.spark.scheduler.Task.run(Task.scala:88)
        at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:214)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:745)
Caused by: java.lang.ArrayIndexOutOfBoundsException: 2
        at org.apache.spark.sql.execution.datasources.parquet.CatalystRowConverter.getConverter(CatalystRowConverter.scala:206)
        at org.apache.parquet.io.RecordReaderImplementation.\<init\>(RecordReaderImplementation.java:269)
        at org.apache.parquet.io.MessageColumnIO$1.visit(MessageColumnIO.java:134)
        at org.apache.parquet.io.MessageColumnIO$1.visit(MessageColumnIO.java:99)
        at org.apache.parquet.filter2.compat.FilterCompat$NoOpFilter.accept(FilterCompat.java:154)
        at org.apache.parquet.io.MessageColumnIO.getRecordReader(MessageColumnIO.java:99)
        at org.apache.parquet.hadoop.InternalParquetRecordReader.checkRead(InternalParquetRecordReader.java:137)
        at org.apache.parquet.hadoop.InternalParquetRecordReader.nextKeyValue(InternalParquetRecordReader.java:208)
        ... 25 more

Driver stacktrace:
        at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$failJobAndIndependentStages(DAGScheduler.scala:1280)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1268)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1267)
        at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
        at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
        at org.apache.spark.scheduler.DAGScheduler.abortStage(DAGScheduler.scala:1267)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:697)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:697)
        at scala.Option.foreach(Option.scala:236)
        at org.apache.spark.scheduler.DAGScheduler.handleTaskSetFailed(DAGScheduler.scala:697)
        at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.doOnReceive(DAGScheduler.scala:1493)
        at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1455)
        at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1444)
        at org.apache.spark.util.EventLoop$$anon$1.run(EventLoop.scala:48)
        at org.apache.spark.scheduler.DAGScheduler.runJob(DAGScheduler.scala:567)
        at org.apache.spark.SparkContext.runJob(SparkContext.scala:1818)
        at org.apache.spark.SparkContext.runJob(SparkContext.scala:1831)
        at org.apache.spark.SparkContext.runJob(SparkContext.scala:1844)
        at org.apache.spark.sql.execution.SparkPlan.executeTake(SparkPlan.scala:215)
        at org.apache.spark.sql.execution.Limit.executeCollect(basicOperators.scala:207)
        at org.apache.spark.sql.DataFrame$$anonfun$collect$1.apply(DataFrame.scala:1403)
        at org.apache.spark.sql.DataFrame$$anonfun$collect$1.apply(DataFrame.scala:1403)
        at org.apache.spark.sql.execution.SQLExecution$.withNewExecutionId(SQLExecution.scala:56)
        at org.apache.spark.sql.DataFrame.withNewExecutionId(DataFrame.scala:1921)
        at org.apache.spark.sql.DataFrame.collect(DataFrame.scala:1402)
        at org.apache.spark.sql.DataFrame.head(DataFrame.scala:1332)
        at org.apache.spark.sql.DataFrame.take(DataFrame.scala:1395)
        at org.apache.spark.sql.DataFrame.showString(DataFrame.scala:178)
        at org.apache.spark.sql.DataFrame.show(DataFrame.scala:402)
        at org.apache.spark.sql.DataFrame.show(DataFrame.scala:363)
        at org.apache.spark.sql.DataFrame.show(DataFrame.scala:371)
        at $iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC.\<init\>(\<console\>:41)
        at $iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC.\<init\>(\<console\>:53)
        at $iwC$$iwC$$iwC$$iwC$$iwC$$iwC.\<init\>(\<console\>:55)
        at $iwC$$iwC$$iwC$$iwC$$iwC.\<init\>(\<console\>:57)
        at $iwC$$iwC$$iwC$$iwC.\<init\>(\<console\>:59)
        at $iwC$$iwC$$iwC.\<init\>(\<console\>:61)
        at $iwC$$iwC.\<init\>(\<console\>:63)
        at $iwC.\<init\>(\<console\>:65)
        at \<init\>(\<console\>:67)
        at .\<init\>(\<console\>:71)
        at .\<clinit\>(\<console\>)
        at .\<init\>(\<console\>:7)
        at .\<clinit\>(\<console\>)
        at $print(\<console\>)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:606)
        at org.apache.spark.repl.SparkIMain$ReadEvalPrint.call(SparkIMain.scala:1065)
        at org.apache.spark.repl.SparkIMain$Request.loadAndRun(SparkIMain.scala:1340)
        at org.apache.spark.repl.SparkIMain.loadAndRunReq$1(SparkIMain.scala:840)
        at org.apache.spark.repl.SparkIMain.interpret(SparkIMain.scala:871)
        at org.apache.spark.repl.SparkIMain.interpret(SparkIMain.scala:819)
        at org.apache.spark.repl.SparkILoop.org$apache$spark$repl$SparkILoop$$pasteCommand(SparkILoop.scala:825)
        at org.apache.spark.repl.SparkILoop$$anonfun$standardCommands$8.apply(SparkILoop.scala:345)
        at org.apache.spark.repl.SparkILoop$$anonfun$standardCommands$8.apply(SparkILoop.scala:345)
        at scala.tools.nsc.interpreter.LoopCommands$LoopCommand$$anonfun$nullary$1.apply(LoopCommands.scala:65)
        at scala.tools.nsc.interpreter.LoopCommands$LoopCommand$$anonfun$nullary$1.apply(LoopCommands.scala:65)
        at scala.tools.nsc.interpreter.LoopCommands$NullaryCmd.apply(LoopCommands.scala:76)
        at org.apache.spark.repl.SparkILoop.command(SparkILoop.scala:809)
        at org.apache.spark.repl.SparkILoop.processLine$1(SparkILoop.scala:657)
        at org.apache.spark.repl.SparkILoop.innerLoop$1(SparkILoop.scala:665)
        at org.apache.spark.repl.SparkILoop.org$apache$spark$repl$SparkILoop$$loop(SparkILoop.scala:670)
        at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply$mcZ$sp(SparkILoop.scala:997)
        at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply(SparkILoop.scala:945)
        at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply(SparkILoop.scala:945)
        at scala.tools.nsc.util.ScalaClassLoader$.savingContextLoader(ScalaClassLoader.scala:135)
        at org.apache.spark.repl.SparkILoop.org$apache$spark$repl$SparkILoop$$process(SparkILoop.scala:945)
        at org.apache.spark.repl.SparkILoop.process(SparkILoop.scala:1059)
        at org.apache.spark.repl.Main$.main(Main.scala:31)
        at org.apache.spark.repl.Main.main(Main.scala)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:606)
        at org.apache.spark.deploy.SparkSubmit$.org$apache$spark$deploy$SparkSubmit$$runMain(SparkSubmit.scala:672)
        at org.apache.spark.deploy.SparkSubmit$.doRunMain$1(SparkSubmit.scala:180)
        at org.apache.spark.deploy.SparkSubmit$.submit(SparkSubmit.scala:205)
        at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:120)
        at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)
Caused by: org.apache.parquet.io.ParquetDecodingException: Can not read value at 0 in block -1 in file hdfs://localhost:9000/tmp/spark/parquet/part-r-00000-56c4604e-c546-4f97-a316-05da8ab1a0bf.gz.parquet
        at org.apache.parquet.hadoop.InternalParquetRecordReader.nextKeyValue(InternalParquetRecordReader.java:228)
        at org.apache.parquet.hadoop.ParquetRecordReader.nextKeyValue(ParquetRecordReader.java:201)
        at org.apache.spark.rdd.SqlNewHadoopRDD$$anon$1.hasNext(SqlNewHadoopRDD.scala:168)
        at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
        at scala.collection.Iterator$$anon$10.hasNext(Iterator.scala:308)
        at scala.collection.Iterator$class.foreach(Iterator.scala:727)
        at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
        at scala.collection.generic.Growable$class.$plus$plus$eq(Growable.scala:48)
        at scala.collection.mutable.ArrayBuffer.$plus$plus$eq(ArrayBuffer.scala:103)
        at scala.collection.mutable.ArrayBuffer.$plus$plus$eq(ArrayBuffer.scala:47)
        at scala.collection.TraversableOnce$class.to(TraversableOnce.scala:273)
        at scala.collection.AbstractIterator.to(Iterator.scala:1157)
        at scala.collection.TraversableOnce$class.toBuffer(TraversableOnce.scala:265)
        at scala.collection.AbstractIterator.toBuffer(Iterator.scala:1157)
        at scala.collection.TraversableOnce$class.toArray(TraversableOnce.scala:252)
        at scala.collection.AbstractIterator.toArray(Iterator.scala:1157)
        at org.apache.spark.sql.execution.SparkPlan$$anonfun$5.apply(SparkPlan.scala:215)
        at org.apache.spark.sql.execution.SparkPlan$$anonfun$5.apply(SparkPlan.scala:215)
        at org.apache.spark.SparkContext$$anonfun$runJob$5.apply(SparkContext.scala:1844)
        at org.apache.spark.SparkContext$$anonfun$runJob$5.apply(SparkContext.scala:1844)
        at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:66)
        at org.apache.spark.scheduler.Task.run(Task.scala:88)
        at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:214)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:745)
Caused by: java.lang.ArrayIndexOutOfBoundsException: 2
        at org.apache.spark.sql.execution.datasources.parquet.CatalystRowConverter.getConverter(CatalystRowConverter.scala:206)
        at org.apache.parquet.io.RecordReaderImplementation.\<init\>(RecordReaderImplementation.java:269)
        at org.apache.parquet.io.MessageColumnIO$1.visit(MessageColumnIO.java:134)
        at org.apache.parquet.io.MessageColumnIO$1.visit(MessageColumnIO.java:99)
        at org.apache.parquet.filter2.compat.FilterCompat$NoOpFilter.accept(FilterCompat.java:154)
        at org.apache.parquet.io.MessageColumnIO.getRecordReader(MessageColumnIO.java:99)
        at org.apache.parquet.hadoop.InternalParquetRecordReader.checkRead(InternalParquetRecordReader.java:137)
        at org.apache.parquet.hadoop.InternalParquetRecordReader.nextKeyValue(InternalParquetRecordReader.java:208)
        ... 25 more
{noformat}
This issue can be generalized a step further.  Taking interoperability into consideration, we may have a Parquet dataset consisting of physical Parquet files sharing compatible logical schema, but created by different Parquet libraries.  Because of the historical nested type compatibility issue, physical Parquet schemas generated by those libraries may be different.  It would be nice to be able to operate on such datasets.


---

* [SPARK-10224](https://issues.apache.org/jira/browse/SPARK-10224) | *Critical* | **BlockGenerator may lost data in the last block**

There is a race condition in BlockGenerator that will lost data in the last block. See my PR for details.


---

* [SPARK-10172](https://issues.apache.org/jira/browse/SPARK-10172) | *Minor* | **History Server web UI gets messed up when sorting on any column**

If the history web UI displays the "Attempt ID" column, when clicking the table header to sort on any column, the entire page gets messed up.

This seems to be a problem with the sorttable.js not able to correctly handle tables with rowspan.


---

* [SPARK-10155](https://issues.apache.org/jira/browse/SPARK-10155) | *Critical* | **Memory leak in SQL parsers**

I saw a lot of `ThreadLocal` objects in the following app:
{code}
import org.apache.spark.\_
import org.apache.spark.sql.\_

object SparkApp {

  def foo(sqlContext: SQLContext): Unit = {
    import sqlContext.implicits.\_
    sqlContext.sparkContext.parallelize(Seq("aaa", "bbb", "ccc")).toDF().filter("length(\_1) \> 0").count()
  }

  def main(args: Array[String]): Unit = {
    val conf = new SparkConf().setAppName("sql-memory-leak")
    val sc = new SparkContext(conf)
    val sqlContext = new SQLContext(sc)
    while (true) {
      foo(sqlContext)
    }
  }
}
{code}
Running the above codes in a long time and finally it will OOM.

These "ThreadLocal"s are from "scala.util.parsing.combinator.Parsers.lastNoSuccessVar", which stores `Failure("end of input", ...)`.

There is an issue in Scala here: https://issues.scala-lang.org/browse/SI-9010
and some discussions here: https://issues.scala-lang.org/browse/SI-4929


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

* [SPARK-9935](https://issues.apache.org/jira/browse/SPARK-9935) | *Minor* | **EqualNullSafe not processed in OrcRelation**

it is an issue followed by SPARK-9814.

Now datasources (after {{selectFilters()}} in {{org.apache.spark.sql.execution.datasources.DataSourceStrategy}}) can pass {{EqualNotNull}} to relations but {{OrcRelation}} does not take and process this.

(ParquetRelation has also the same issue but it seems Parquet does not support the null-safe equal filter. It is confusing whether Parquet should support this or treat this as EqualFilter with additional codes in Spark code. Therefore, I made a separate issue only for ORC)


---

* [SPARK-9924](https://issues.apache.org/jira/browse/SPARK-9924) | *Major* | **checkForLogs and cleanLogs are scheduled at fixed rate and can get piled up**

{{checkForLogs}} and {{cleanLogs}} are scheduled using {{ScheduledThreadPoolExecutor.scheduleAtFixedRate}}. When their execution takes more time than the interval at which they are scheduled, they get piled up.

This is a problem on its own but the existence of SPARK-7189 makes it even worse. Let's say there is an eventLog which takes 15s to parse and which happens to be the last modified file (that gets reloaded again and again due to SPARK-7189.) If this file stays the last modified file for, let's say, an hour, then a lot of executions of that file would have piled up as the default {{spark.history.fs.update.interval}} is 10s. If there is a new eventLog file now, it won't show up in the history server ui for a long time.


---

* [SPARK-9869](https://issues.apache.org/jira/browse/SPARK-9869) | *Critical* | **Flaky test: o.a.s.streaming.InputStreamSuite - socket input stream**

https://amplab.cs.berkeley.edu/jenkins/view/Spark-QA-Test/job/Spark-1.5-SBT/68/AMPLAB\_JENKINS\_BUILD\_PROFILE=hadoop2.3,label=centos/testReport/junit/org.apache.spark.streaming/InputStreamsSuite/socket\_input\_stream/

{code}
org.apache.spark.streaming.InputStreamsSuite.socket input stream


sbt.ForkMain$ForkError: 4 did not equal 5
	at org.scalatest.Assertions$class.newAssertionFailedException(Assertions.scala:500)
	at org.scalatest.FunSuite.newAssertionFailedException(FunSuite.scala:1555)
	at org.scalatest.Assertions$AssertionsHelper.macroAssert(Assertions.scala:466)
	at org.apache.spark.streaming.InputStreamsSuite$$anonfun$1$$anonfun$apply$mcV$sp$4$$anonfun$apply$5.apply(InputStreamsSuite.scala:80)
	at org.apache.spark.streaming.InputStreamsSuite$$anonfun$1$$anonfun$apply$mcV$sp$4$$anonfun$apply$5.apply(InputStreamsSuite.scala:53)
	at org.apache.spark.streaming.TestSuiteBase$class.withStreamingContext(TestSuiteBase.scala:272)
	at org.apache.spark.streaming.InputStreamsSuite.withStreamingContext(InputStreamsSuite.scala:45)
	at org.apache.spark.streaming.InputStreamsSuite$$anonfun$1$$anonfun$apply$mcV$sp$4.apply(InputStreamsSuite.scala:53)
	at org.apache.spark.streaming.InputStreamsSuite$$anonfun$1$$anonfun$apply$mcV$sp$4.apply(InputStreamsSuite.scala:48)
	at org.apache.spark.streaming.TestSuiteBase$class.withTestServer(TestSuiteBase.scala:289)
	at org.apache.spark.streaming.InputStreamsSuite.withTestServer(InputStreamsSuite.scala:45)
	at org.apache.spark.streaming.InputStreamsSuite$$anonfun$1.apply$mcV$sp(InputStreamsSuite.scala:48)
	at org.apache.spark.streaming.InputStreamsSuite$$anonfun$1.apply(InputStreamsSuite.scala:48)
	at org.apache.spark.streaming.InputStreamsSuite$$anonfun$1.apply(InputStreamsSuite.scala:48)

{code}


---

* [SPARK-9803](https://issues.apache.org/jira/browse/SPARK-9803) | *Major* | **Add transform and subset  to DataFrame**

These three base functions are heavily used with R dataframes. It would be great to have them work with Spark DataFrames:
\* transform
\* subset


---

* [SPARK-9710](https://issues.apache.org/jira/browse/SPARK-9710) | *Major* | **RPackageUtilsSuite fails if R is not installed**

That's because there's a bug in RUtils.scala. PR soon.


---

* [SPARK-9522](https://issues.apache.org/jira/browse/SPARK-9522) | *Minor* | **SparkSubmit process can not exit if kill application when HiveThriftServer was starting**

When we start HiveThriftServer, we will start SparkContext first, then start HiveServer2, if we kill application while HiveServer2 is starting then SparkContext will stop successfully, but SparkSubmit process can not exit.


---

* [SPARK-8632](https://issues.apache.org/jira/browse/SPARK-8632) | *Blocker* | **Poor Python UDF performance because of RDD caching**

{quote}
We have been running into performance problems using Python UDFs with DataFrames at large scale.

From the implementation of BatchPythonEvaluation, it looks like the goal was to reuse the PythonRDD code. It caches the entire child RDD so that it can do two passes over the data. One to give to the PythonRDD, then one to join the python lambda results with the original row (which may have java objects that should be passed through).

In addition, it caches all the columns, even the ones that don't need to be processed by the Python UDF. In the cases I was working with, I had a 500 column table, and i wanted to use a python UDF for one column, and it ended up caching all 500 columns. 
{quote}

http://apache-spark-developers-list.1001551.n3.nabble.com/Python-UDF-performance-at-large-scale-td12843.html


---

* [SPARK-8567](https://issues.apache.org/jira/browse/SPARK-8567) | *Blocker* | **Flaky test: o.a.s.sql.hive.HiveSparkSubmitSuite --jars**

Seems tests in HiveSparkSubmitSuite fail with timeout pretty frequently.


---

* [SPARK-7736](https://issues.apache.org/jira/browse/SPARK-7736) | *Major* | **Exception not failing Python applications (in yarn cluster mode)**

It seems that exceptions thrown in Python spark apps after the SparkContext is instantiated don't cause the application to fail, at least in Yarn: the application is marked as SUCCEEDED.

Note that any exception right before the SparkContext correctly places the application in FAILED state.


---

* [SPARK-6882](https://issues.apache.org/jira/browse/SPARK-6882) | *Major* | **Spark ThriftServer2 Kerberos failed encountering java.lang.IllegalArgumentException: Unknown auth type: null Allowed values are: [auth-int, auth-conf, auth]**

When Kerberos is enabled, I get the following exceptions. 
{code}
2015-03-13 18:26:05,363 ERROR org.apache.hive.service.cli.thrift.ThriftCLIService (ThriftBinaryCLIService.java:run(93)) - Error: 
java.lang.IllegalArgumentException: Unknown auth type: null Allowed values are: [auth-int, auth-conf, auth]
{code}

I tried it in
\* Spark 1.2.1 git commit b6eaf77d4332bfb0a698849b1f5f917d20d70e97
\* Spark 1.3.0 rc1 commit label 0dcb5d9f31b713ed90bcec63ebc4e530cbb69851

with
\* Apache Hive 0.13.1
\* Apache Hadoop 2.4.1

Build command
{code}
mvn -U -X -Phadoop-2.4 -Pyarn -Phive -Phive-0.13.1 -Phive-thriftserver -Dhadoop.version=2.4.1 -Dyarn.version=2.4.1 -Dhive.version=0.13.1 -DskipTests install
{code}

When starting Spark ThriftServer in {{yarn-client}} mode, the command to start thriftserver looks like this

{code}
./start-thriftserver.sh --hiveconf hive.server2.thrift.port=20000 --hiveconf hive.server2.thrift.bind.host=$(hostname) --master yarn-client
{code}

{{hostname}} points to the current hostname of the machine I'm using.

Error message in {{spark.log}} from Spark 1.2.1 (1.2 rc1)
{code}
2015-03-13 18:26:05,363 ERROR org.apache.hive.service.cli.thrift.ThriftCLIService (ThriftBinaryCLIService.java:run(93)) - Error: 
java.lang.IllegalArgumentException: Unknown auth type: null Allowed values are: [auth-int, auth-conf, auth]
        at org.apache.hive.service.auth.SaslQOP.fromString(SaslQOP.java:56)
        at org.apache.hive.service.auth.HiveAuthFactory.getSaslProperties(HiveAuthFactory.java:118)
        at org.apache.hive.service.auth.HiveAuthFactory.getAuthTransFactory(HiveAuthFactory.java:133)
        at org.apache.hive.service.cli.thrift.ThriftBinaryCLIService.run(ThriftBinaryCLIService.java:43)
        at java.lang.Thread.run(Thread.java:744)
{code}

I'm wondering if this is due to the same problem described in HIVE-8154 HIVE-7620 due to an older code based for the Spark ThriftServer?

Any insights are appreciated. Currently, I can't get Spark ThriftServer2 to run against a Kerberos cluster (Apache 2.4.1).

My hive-site.xml looks like the following for spark/conf.
The kerberos keytab and tgt are configured correctly, I'm able to connect to metastore, but the subsequent steps failed due to the exception.
{code}
\<property\>
  \<name\>hive.semantic.analyzer.factory.impl\</name\>
  \<value\>org.apache.hcatalog.cli.HCatSemanticAnalyzerFactory\</value\>
\</property\>
\<property\>
  \<name\>hive.metastore.execute.setugi\</name\>
  \<value\>true\</value\>
\</property\>
\<property\>
  \<name\>hive.stats.autogather\</name\>
  \<value\>false\</value\>
\</property\>
\<property\>
  \<name\>hive.session.history.enabled\</name\>
  \<value\>true\</value\>
\</property\>
\<property\>
  \<name\>hive.querylog.location\</name\>
  \<value\>/tmp/home/hive/log/${user.name}\</value\>
\</property\>
\<property\>
  \<name\>hive.exec.local.scratchdir\</name\>
  \<value\>/tmp/hive/scratch/${user.name}\</value\>
\</property\>
\<property\>
  \<name\>hive.metastore.uris\</name\>
  \<value\>thrift://somehostname:9083\</value\>
\</property\>
\<!-- HIVE SERVER 2 --\>
\<property\>
  \<name\>hive.server2.authentication\</name\>
  \<value\>KERBEROS\</value\>
\</property\>
\<property\>
  \<name\>hive.server2.authentication.kerberos.principal\</name\>
  \<value\>\*\*\*\</value\>
\</property\>
\<property\>
  \<name\>hive.server2.authentication.kerberos.keytab\</name\>
  \<value\>\*\*\*\</value\>
\</property\>
\<property\>
  \<name\>hive.server2.thrift.sasl.qop\</name\>
  \<value\>auth\</value\>
  \<description\>Sasl QOP value; one of 'auth', 'auth-int' and 'auth-conf'\</description\>
\</property\>
\<property\>
  \<name\>hive.server2.enable.impersonation\</name\>
  \<description\>Enable user impersonation for HiveServer2\</description\>
  \<value\>true\</value\>
\</property\>
\<!-- HIVE METASTORE --\>
\<property\>
  \<name\>hive.metastore.sasl.enabled\</name\>
  \<value\>true\</value\>
\</property\>
\<property\>
  \<name\>hive.metastore.kerberos.keytab.file\</name\>
  \<value\>\*\*\*\</value\>
\</property\>
\<property\>
  \<name\>hive.metastore.kerberos.principal\</name\>
  \<value\>\*\*\*\</value\>
\</property\>
\<property\>
  \<name\>hive.metastore.cache.pinobjtypes\</name\>
  \<value\>Table,Database,Type,FieldSchema,Order\</value\>
\</property\>
\<property\>
  \<name\>hdfs\_sentinel\_file\</name\>
  \<value\>\*\*\*\</value\>
\</property\>
\<property\>
  \<name\>hive.metastore.warehouse.dir\</name\>
  \<value\>/hive\</value\>
\</property\>
\<property\>
  \<name\>hive.metastore.client.socket.timeout\</name\>
  \<value\>600\</value\>
\</property\>
\<property\>
  \<name\>hive.warehouse.subdir.inherit.perms\</name\>
  \<value\>true\</value\>
\</property\>
{code}

Here, I'm attaching a more detail logs from Spark 1.3 rc1.
{code}
2015-04-13 16:37:20,688 INFO  org.apache.hadoop.security.UserGroupInformation (UserGroupInformation.java:loginUserFromKeytab(893)) - Login successful for user hiveserver/alee-vpc2-dt.test.testhost.com@TEST.TESTHOST.COM using keytab file /etc/testhost/secrets/hiveserver.keytab
2015-04-13 16:37:20,689 INFO  org.apache.hive.service.AbstractService (SparkSQLSessionManager.scala:init(43)) - HiveServer2: Async execution pool size 100
2015-04-13 16:37:20,691 INFO  org.apache.hive.service.AbstractService (AbstractService.java:init(89)) - Service:OperationManager is inited.
2015-04-13 16:37:20,691 INFO  org.apache.hive.service.AbstractService (SparkSQLCLIService.scala:initCompositeService(85)) - Service: SessionManager is inited.
2015-04-13 16:37:20,692 INFO  org.apache.hive.service.AbstractService (SparkSQLCLIService.scala:initCompositeService(85)) - Service: CLIService is inited.
2015-04-13 16:37:20,692 INFO  org.apache.hive.service.AbstractService (AbstractService.java:init(89)) - Service:ThriftBinaryCLIService is inited.
2015-04-13 16:37:20,692 INFO  org.apache.hive.service.AbstractService (SparkSQLCLIService.scala:initCompositeService(85)) - Service: HiveServer2 is inited.
2015-04-13 16:37:20,692 INFO  org.apache.hive.service.AbstractService (AbstractService.java:start(104)) - Service:OperationManager is started.
2015-04-13 16:37:20,693 INFO  org.apache.hive.service.AbstractService (AbstractService.java:start(104)) - Service:SessionManager is started.
2015-04-13 16:37:20,693 INFO  org.apache.hive.service.AbstractService (AbstractService.java:start(104)) - Service:CLIService is started.
2015-04-13 16:37:20,758 INFO  hive.metastore (HiveMetaStoreClient.java:open(297)) - Trying to connect to metastore with URI thrift://alee-vpc2-gw.test.testhost.com:9083
2015-04-13 16:37:20,784 INFO  hive.metastore (HiveMetaStoreClient.java:open(385)) - Connected to metastore.
2015-04-13 16:37:20,801 INFO  org.apache.hive.service.AbstractService (AbstractService.java:start(104)) - Service:ThriftBinaryCLIService is started.
2015-04-13 16:37:20,801 INFO  org.apache.hive.service.AbstractService (AbstractService.java:start(104)) - Service:HiveServer2 is started.
2015-04-13 16:37:20,802 INFO  org.apache.spark.sql.hive.thriftserver.HiveThriftServer2 (Logging.scala:logInfo(59)) - HiveThriftServer2 started
2015-04-13 16:37:20,923 INFO  org.apache.hadoop.security.UserGroupInformation (UserGroupInformation.java:loginUserFromKeytab(893)) - Login successful for user hiveserver/alee-vpc2-dt.test.testhost.com@TEST.TESTHOST.COM using keytab file /etc/testhost/secrets/hiveserver.keytab
2015-04-13 16:37:20,930 INFO  org.apache.hadoop.security.token.delegation.AbstractDelegationTokenSecretManager (AbstractDelegationTokenSecretManager.java:updateCurrentKey(222)) - Updating the current master key for generating delegation tokens
2015-04-13 16:37:20,936 INFO  org.apache.hadoop.hive.thrift.TokenStoreDelegationTokenSecretManager (TokenStoreDelegationTokenSecretManager.java:logUpdateMasterKey(209)) - New master key with key id=0
2015-04-13 16:37:20,944 ERROR org.apache.hive.service.cli.thrift.ThriftCLIService (ThriftBinaryCLIService.java:run(93)) - Error: 
java.lang.IllegalArgumentException: Unknown auth type: null Allowed values are: [auth-int, auth-conf, auth]
  at org.apache.hive.service.auth.SaslQOP.fromString(SaslQOP.java:56)
  at org.apache.hive.service.auth.HiveAuthFactory.getSaslProperties(HiveAuthFactory.java:118)
  at org.apache.hive.service.auth.HiveAuthFactory.getAuthTransFactory(HiveAuthFactory.java:133)
  at org.apache.hive.service.cli.thrift.ThriftBinaryCLIService.run(ThriftBinaryCLIService.java:43)
  at java.lang.Thread.run(Thread.java:744)
2015-04-13 16:37:20,947 INFO  org.apache.hadoop.hive.thrift.TokenStoreDelegationTokenSecretManager (TokenStoreDelegationTokenSecretManager.java:run(299)) - Starting expired delegation token remover thread, tokenRemoverScanInterval=60 min(s)
2015-04-13 16:37:20,964 INFO  org.apache.hadoop.security.token.delegation.AbstractDelegationTokenSecretManager (AbstractDelegationTokenSecretManager.java:updateCurrentKey(222)) - Updating the current master key for generating delegation tokens
2015-04-13 16:37:20,965 INFO  org.apache.hive.service.AbstractService (AbstractService.java:stop(125)) - Service:ThriftBinaryCLIService is stopped.
2015-04-13 16:37:20,966 INFO  org.apache.hadoop.hive.thrift.TokenStoreDelegationTokenSecretManager (TokenStoreDelegationTokenSecretManager.java:logUpdateMasterKey(209)) - New master key with key id=1
{code}


---

* [SPARK-6350](https://issues.apache.org/jira/browse/SPARK-6350) | *Minor* | **Make mesosExecutorCores configurable in mesos "fine-grained" mode**

When spark runs in mesos fine-grained mode, mesos slave launches executor with # of cpus and memories. By the way, # of executor's cores is always CPU\_PER\_TASKS as same as spark.task.cpus. If I set that values as 5 for running intensive task, mesos executor always consume 5 cores without any running task. This waste resources. We should set executor core as a configuration variable.



