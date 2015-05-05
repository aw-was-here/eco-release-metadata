
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
#  1.3.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [SPARK-7323](https://issues.apache.org/jira/browse/SPARK-7323) | *Minor* | **Use insertAll instead of individual insert while merging combiners**

Currently we invoke combiners.insert() for each tuple in Aggregator - which results in creation of an Iterator per tuple, and iterating over this iterator : instead, we can directly call insertAll to avoid the object creation, method invocation and iteration overhead - for each tuple when combiners are used.


---

* [SPARK-7234](https://issues.apache.org/jira/browse/SPARK-7234) | *Major* | **When codegen on DateType defaultPrimitive will throw type mismatch exception**

When codegen on, the defaultPrimitive of DateType is null. This will rise below error.

select COUNT(a) from table
a -> DateType

type mismatch;
 found   : Null(null)
 required: DateType.this.InternalType


---

* [SPARK-7229](https://issues.apache.org/jira/browse/SPARK-7229) | *Major* | **SpecificMutableRow should take integer type as internal representation for DateType**

{code}
  test("test DATE types in cache") {
    val rows = TestSQLContext.jdbc(urlWithUserAndPass, "TEST.TIMETYPES").collect()
    TestSQLContext.jdbc(urlWithUserAndPass, "TEST.TIMETYPES").cache().registerTempTable("mycached\_date")
    val cachedRows = sql("select * from mycached\_date").collect()
    assert(rows(0).getAs[java.sql.Date](1) === java.sql.Date.valueOf("1996-01-01"))
    assert(cachedRows(0).getAs[java.sql.Date](1) === java.sql.Date.valueOf("1996-01-01"))
  }
{code}
java.lang.ClassCastException: org.apache.spark.sql.catalyst.expressions.MutableAny cannot be cast to org.apache.spark.sql.catalyst.expressions.MutableInt
	at org.apache.spark.sql.catalyst.expressions.SpecificMutableRow.getInt(SpecificMutableRow.scala:252)
	at org.apache.spark.sql.columnar.IntColumnStats.gatherStats(ColumnStats.scala:208)
	at org.apache.spark.sql.columnar.NullableColumnBuilder$class.appendFrom(NullableColumnBuilder.scala:56)
	at org.apache.spark.sql.columnar.NativeColumnBuilder.org$apache$spark$sql$columnar$compression$CompressibleColumnBuilder$$super$appendFrom(ColumnBuilder.scala:87)
	at org.apache.spark.sql.columnar.compression.CompressibleColumnBuilder$class.appendFrom(CompressibleColumnBuilder.scala:78)
	at org.apache.spark.sql.columnar.NativeColumnBuilder.appendFrom(ColumnBuilder.scala:87)
	at org.apache.spark.sql.columnar.InMemoryRelation$$anonfun$3$$anon$1.next(InMemoryColumnarTableScan.scala:148)
	at org.apache.spark.sql.columnar.InMemoryRelation$$anonfun$3$$anon$1.next(InMemoryColumnarTableScan.scala:124)
	at org.apache.spark.storage.MemoryStore.unrollSafely(MemoryStore.scala:277)
	at org.apache.spark.CacheManager.putInBlockManager(CacheManager.scala:171)
	at org.apache.spark.CacheManager.getOrCompute(CacheManager.scala:78)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:242)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:63)
	at org.apache.spark.scheduler.Task.run(Task.scala:64)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:209)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1110)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:603)
	at java.lang.Thread.run(Thread.java:722)
{panel}

{panel}


---

* [SPARK-7204](https://issues.apache.org/jira/browse/SPARK-7204) | *Critical* | **Call sites in UI are not accurate for DataFrame operations**

Spark core computes callsites by climbing up the stack until we reach the stack frame at the boundary of user code and spark code. The way we compute whether a given frame is internal (Spark) or user code does not work correctly with the new dataframe API.

Once the scope work goes in, we'll have a nicer way to express units of operator scope, but until then there is a simple fix where we just make sure the SQL internal classes are also skipped as we climb up the stack.


---

* [SPARK-7196](https://issues.apache.org/jira/browse/SPARK-7196) | *Major* | **decimal precision lost when loading DataFrame from JDBC**

I have a decimal database field that is defined as 10.2 (i.e. ##########.##). When I load it into Spark via sqlContext.jdbc(..), the type of the corresponding field in the DataFrame is DecimalType, with precisionInfo None. Because of that loss of precision information, SPARK-4176 is triggered when I try to .saveAsTable(..).


---

* [SPARK-7187](https://issues.apache.org/jira/browse/SPARK-7187) | *Major* | **Exceptions in SerializationDebugger should not crash user code**

When issues like SPARK-7180 occurs, it ends up crashing user code through the ClosureCleaner in mysterious ways.


---

* [SPARK-7181](https://issues.apache.org/jira/browse/SPARK-7181) | *Critical* | **External Sorter merge with aggregation go to an infinite loop when we have a total ordering**

In the function {{mergeWithAggregation}} of {{ExternalSorter.scala}}, when there is a total ordering for keys K, values of the same key in the sorted iterator should be combined. Currently this is done by this:

{code}
  val elem = sorted.next()
  val k = elem.\_1
  var c = elem.\_2
  while (sorted.hasNext && sorted.head.\_1 == k) {
    c = mergeCombiners(c, sorted.head.\_2)
  }
{code}

This will go to an infinite loop when there are more than 1 values with the same key. `sorted.next()` should be called to fix this.


---

* [SPARK-7155](https://issues.apache.org/jira/browse/SPARK-7155) | *Major* | **SparkContext's newAPIHadoopFile does not support comma-separated list of files, but the other API hadoopFile does.**

SparkContext's newAPIHadoopFile() does not support comma-separated list of files. For example, the following:

sc.newAPIHadoopFile("/root/file1.txt,/root/file2.txt", classOf[TextInputFormat], classOf[LongWritable], classOf[Text])

will throw

org.apache.hadoop.mapreduce.lib.input.InvalidInputException: Input path does not exist: file:/root/file1.txt,/root/file2.txt

However, the other API hadoopFile() is able to process comma-separated list of files correctly.

In addition, since sc.textFile() uses hadoopFile(), it is also able to process comma-separated list of files correctly.

The problem is that newAPIHadoopFile() use addInputPath() to add the file path into NewHadoopRDD. See Ln 928-931, master branch:
    val job = new NewHadoopJob(conf)
    NewFileInputFormat.addInputPath(job, new Path(path))
    val updatedConf = job.getConfiguration
    new NewHadoopRDD(this, fClass, kClass, vClass, updatedConf).setName(path)

Change addInputPath(job, new Path(path)) to addInputPaths(job, path) will resolve this issue.


---

* [SPARK-7140](https://issues.apache.org/jira/browse/SPARK-7140) | *Major* | **Do not scan all values in Vector.hashCode**

It makes hashCode really expensive. The Pyrolite version we are using in Spark calls it in serialization. Scanning the first few nonzeros should be sufficient.


---

* [SPARK-7103](https://issues.apache.org/jira/browse/SPARK-7103) | *Critical* | **SparkContext.union crashed when some RDDs have no partitioner**

I encountered a bug where Spark crashes with the following stack trace:

{noformat}
java.util.NoSuchElementException: None.get
	at scala.None$.get(Option.scala:313)
	at scala.None$.get(Option.scala:311)
	at org.apache.spark.rdd.PartitionerAwareUnionRDD.getPartitions(PartitionerAwareUnionRDD.scala:69)
{noformat}

Here's a minimal example that reproduces it on the Spark shell:

{noformat}
val x = sc.parallelize(Seq(1->true,2->true,3->false)).partitionBy(new HashPartitioner(1))
val y = sc.parallelize(Seq(1->true))
sc.union(y, x).count() // crashes
sc.union(x, y).count() // This works since the first RDD has a partitioner
{noformat}

We had to resort to instantiating the UnionRDD directly to avoid the PartitionerAwareUnionRDD.


---

* [SPARK-7070](https://issues.apache.org/jira/browse/SPARK-7070) | *Critical* | **LDA.setBeta calls itself**

Should call setTopicConcentration.

Reported by buring: http://apache-spark-user-list.1001560.n3.nabble.com/LDA-code-little-error-Xiangrui-Meng-td22621.html


---

* [SPARK-7039](https://issues.apache.org/jira/browse/SPARK-7039) | *Minor* | **JdbcRdd doesn't support java.sql.Types.NVARCHAR**

When create a DataFrame from jdbc method through SqlContext:
{code}
DataFrame df = sql.jdbc(url, fullTableName);
{code}

If there is column type NVARCHAR, below exception will be thrown:

{code}
Caused by: java.sql.SQLException: Unsupported type -9
	at org.apache.spark.sql.jdbc.JDBCRDD$.getCatalystType(JDBCRDD.scala:78)
	at org.apache.spark.sql.jdbc.JDBCRDD$.resolveTable(JDBCRDD.scala:112)
	at org.apache.spark.sql.jdbc.JDBCRelation.<init>(JDBCRelation.scala:133)
	at org.apache.spark.sql.SQLContext.jdbc(SQLContext.scala:900)
	at org.apache.spark.sql.SQLContext.jdbc(SQLContext.scala:852)
{code}

When comparing the code between JDBCRDD.scala and java.sql.Types.java, the only type is not supported in JDBCRDD.scala is NVARCHAR. Because NCHAR is supported, so I think this is just a small mistake that people skip this type instead of ignore it intentionally.


---

* [SPARK-7036](https://issues.apache.org/jira/browse/SPARK-7036) | *Minor* | **ALS.train should support DataFrames in PySpark**

ALS.train works with SchemaRDDs in 1.2. We should support DataFrames for compatibility.


---

* [SPARK-6998](https://issues.apache.org/jira/browse/SPARK-6998) | *Major* | **Make StreamingKMeans `Serializable`**

If `StreamingKMeans` is not `Serializable`, we cannot do checkpoint for applications that using `StreamingKMeans`. So we should make it `Serializable`.


---

* [SPARK-6992](https://issues.apache.org/jira/browse/SPARK-6992) | *Minor* | **Spark SQL documentation for programmatically adding a Schema is broken for Java API**

The Java example for the documentation is not compiling mainly because Row.create and DataType is used instead of RowFactory and DataTypes.

I'll create the corresponding pull request on branch-1.3

Regards, 

Olivier.


---

* [SPARK-6988](https://issues.apache.org/jira/browse/SPARK-6988) | *Minor* | **Fix Spark SQL documentation for 1.3.x**

There are a few glitches regarding the DataFrame API usage in Java.
The most important one being how to map a DataFrame result, using the javaRDD method.


---

* [SPARK-6985](https://issues.apache.org/jira/browse/SPARK-6985) | *Critical* | **Receiver maxRate over 1000 causes a StackOverflowError**

Attempting to set the streaming receiver max rate (streaming.receiverMaxRate) for the RateLimiter to anything over 1000 causes a fatal error in the receiver with the following stacktrace:

15/04/16 10:41:50 ERROR KafkaReceiver: Error handling message; exiting
java.lang.StackOverflowError
	at org.apache.spark.streaming.receiver.RateLimiter.waitToPush(RateLimiter.scala:66)
	at org.apache.spark.streaming.receiver.RateLimiter.waitToPush(RateLimiter.scala:66)
	at org.apache.spark.streaming.receiver.RateLimiter.waitToPush(RateLimiter.scala:66)
	at org.apache.spark.streaming.receiver.RateLimiter.waitToPush(RateLimiter.scala:66)
	at org.apache.spark.streaming.receiver.RateLimiter.waitToPush(RateLimiter.scala:66)
	at org.apache.spark.streaming.receiver.RateLimiter.waitToPush(RateLimiter.scala:66)
	at org.apache.spark.streaming.receiver.RateLimiter.waitToPush(RateLimiter.scala:66)
	at org.apache.spark.streaming.receiver.RateLimiter.waitToPush(RateLimiter.scala:66)
	at org.apache.spark.streaming.receiver.RateLimiter.waitToPush(RateLimiter.scala:66)


---

* [SPARK-6975](https://issues.apache.org/jira/browse/SPARK-6975) | *Minor* | **Argument checking conflict in Yarn when dynamic allocation is enabled**

When dynamic allocation is enabled in yarn with default parameter, {{numExecutors}} will be set to 0, but this will be failed in the following {{valideArgs()}}, here {{numExecutors}} must > 0, but for dynamic allocation, this executor number can be 0 (with default setting). The exception is shown as below:

Exception in thread "main" java.lang.IllegalArgumentException: You must specify at least 1 executor!


---

* [SPARK-6967](https://issues.apache.org/jira/browse/SPARK-6967) | *Blocker* | **Internal DateType not handled correctly in caching**

From the user list.  It looks like data is not implemented correctly in in-memory caching.  We should also check the JDBC datasource support for date.

{code}
Stack trace of an exception being reported since upgrade to 1.3.0:
java.lang.ClassCastException: java.sql.Date cannot be cast to
java.lang.Integer
        at scala.runtime.BoxesRunTime.unboxToInt(BoxesRunTime.java:105)
~[scala-library-2.11.6.jar:na]
        at
org.apache.spark.sql.catalyst.expressions.GenericRow.getInt(rows.scala:83)
~[spark-catalyst\_2.11-1.3.0.jar:1.3.0]
        at
org.apache.spark.sql.columnar.IntColumnStats.gatherStats(ColumnStats.scala:191)
~[spark-sql\_2.11-1.3.0.jar:1.3.0]
        at
org.apache.spark.sql.columnar.NullableColumnBuilder$class.appendFrom(NullableColumnBuilder.scala:56)
~[spark-sql\_2.11-1.3.0.jar:1.3.0]
        at
org.apache.spark.sql.columnar.NativeColumnBuilder.org$apache$spark$sql$columnar$compression$CompressibleColumnBuilder$$super$appendFrom(ColumnBuilder.scala:87)
~[spark-sql\_2.11-1.3.0.jar:1.3.0]
        at
org.apache.spark.sql.columnar.compression.CompressibleColumnBuilder$class.appendFrom(CompressibleColumnBuilder.scala:78)
~[spark-sql\_2.11-1.3.0.jar:1.3.0]
        at
org.apache.spark.sql.columnar.NativeColumnBuilder.appendFrom(ColumnBuilder.scala:87)
~[spark-sql\_2.11-1.3.0.jar:1.3.0]
        at
org.apache.spark.sql.columnar.InMemoryRelation$$anonfun$3$$anon$1.next(InMemoryColumnarTableScan.scala:135)
~[spark-sql\_2.11-1.3.0.jar:1.3.0]
        at
{code}


---

* [SPARK-6954](https://issues.apache.org/jira/browse/SPARK-6954) | *Major* | **ExecutorAllocationManager can end up requesting a negative number of executors**

I have a simple test case for dynamic allocation on YARN that fails with the following stack trace-
{code}
15/04/16 00:52:14 ERROR Utils: Uncaught exception in thread spark-dynamic-executor-allocation-0
java.lang.IllegalArgumentException: Attempted to request a negative number of executor(s) -21 from the cluster manager. Please specify a positive number!
	at org.apache.spark.scheduler.cluster.CoarseGrainedSchedulerBackend.requestTotalExecutors(CoarseGrainedSchedulerBackend.scala:338)
	at org.apache.spark.SparkContext.requestTotalExecutors(SparkContext.scala:1137)
	at org.apache.spark.ExecutorAllocationManager.addExecutors(ExecutorAllocationManager.scala:294)
	at org.apache.spark.ExecutorAllocationManager.addOrCancelExecutorRequests(ExecutorAllocationManager.scala:263)
	at org.apache.spark.ExecutorAllocationManager.org$apache$spark$ExecutorAllocationManager$$schedule(ExecutorAllocationManager.scala:230)
	at org.apache.spark.ExecutorAllocationManager$$anon$1$$anonfun$run$1.apply$mcV$sp(ExecutorAllocationManager.scala:189)
	at org.apache.spark.ExecutorAllocationManager$$anon$1$$anonfun$run$1.apply(ExecutorAllocationManager.scala:189)
	at org.apache.spark.ExecutorAllocationManager$$anon$1$$anonfun$run$1.apply(ExecutorAllocationManager.scala:189)
	at org.apache.spark.util.Utils$.logUncaughtExceptions(Utils.scala:1618)
	at org.apache.spark.ExecutorAllocationManager$$anon$1.run(ExecutorAllocationManager.scala:189)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:471)
	at java.util.concurrent.FutureTask.runAndReset(FutureTask.java:304)
	at java.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.access$301(ScheduledThreadPoolExecutor.java:178)
	at java.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.run(ScheduledThreadPoolExecutor.java:293)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
{code}
My test is as follows-
# Start spark-shell with a single executor.
# Run a {{select count(\*)}} query. The number of executors rises as input size is non-trivial.
# After the job finishes, the number of  executors falls as most of them become idle.
# Rerun the same query again, and the request to add executors fails with the above error. In fact, the job itself continues to run with whatever executors it already has, but it never gets more executors unless the shell is closed and restarted. 

In fact, this error only happens when I configure {{executorIdleTimeout}} very small. For eg, I can reproduce it with the following configs-
{code}
spark.dynamicAllocation.executorIdleTimeout     5
spark.dynamicAllocation.schedulerBacklogTimeout 5
{code}
Although I can simply increase {{executorIdleTimeout}} to something like 60 secs to avoid the error, I think this is still a bug to be fixed.

The root cause seems that {{numExecutorsPending}} accidentally becomes negative if executors are killed too aggressively (i.e. {{executorIdleTimeout}} is too small) because under that circumstance, the new target # of executors can be smaller than the current # of executors. When that happens, {{ExecutorAllocationManager}} ends up trying to add a negative number of executors, which throws an exception.


---

* [SPARK-6952](https://issues.apache.org/jira/browse/SPARK-6952) | *Minor* | **spark-daemon.sh PID reuse check fails on long classpath**

{{sbin/spark-daemon.sh}} uses {{ps -p "$TARGET\_PID" -o args=}} to figure out whether the process running with the expected PID is actually a Spark daemon. When running with a large classpath, the output of {{ps}} gets truncated and the check fails spuriously.

I think we should weaken the check to see if it's a java command (which is something we do in other parts of the script) rather than looking for the specific main class name. This means that SPARK-4832 might happen under a slightly broader range of circumstances (a *java* program happened to reuse the same PID), but it seems worthwhile compared to failing consistently with a large classpath.


---

* [SPARK-6905](https://issues.apache.org/jira/browse/SPARK-6905) | *Major* | **Upgrade Snappy Java to 1.1.1.7 to fix bug that resulted in worse compression**

We should upgrade our {{snappy-java}} dependency to 1.1.1.7 in order to include a fix for a bug that resulted in worse compression (see https://github.com/xerial/snappy-java/issues/100).  I believe that this may partially fix SPARK-5081, an issue where the size of shuffle data increased from Spark 1.1.x to 1.2.0.


---

* [SPARK-6886](https://issues.apache.org/jira/browse/SPARK-6886) | *Blocker* | **Big closure in PySpark will fail during shuffle**

Reported by  beifei.zhou <beifei.zhou at ximalaya.com>: 

I am using spark to process bid datasets. However, there is always problem when executing reduceByKey on a large dataset, whereas with a smaller dataset.  May I asked you how could I solve this issue?

The error is always like this:
{code}
15/04/09 11:27:46 ERROR Executor: Exception in task 3.0 in stage 1.0 (TID 5)
org.apache.spark.api.python.PythonException: Traceback (most recent call last):
  File "/Users/nali/Softwares/spark/python/pyspark/worker.py", line 90, in main
    command = pickleSer.loads(command.value)
  File "/Users/nali/Softwares/spark/python/pyspark/broadcast.py", line 106, in value
    self.\_value = self.load(self.\_path)
  File "/Users/nali/Softwares/spark/python/pyspark/broadcast.py", line 87, in load
    with open(path, 'rb', 1 << 20) as f:
IOError: [Errno 2] No such file or directory: '/private/var/folders/\_x/n59vb1b54pl96lvldz2lr\_v40000gn/T/spark-37d8ecbc-9ac9-4aa2-be23-12823f4cd1ed/pyspark-1e3d5904-a5b6-4222-a146-91bfdb4a33a7/tmp8XMhgG'
{code}

Here I attach my code:
{code}
import codecs
from pyspark import SparkContext, SparkConf
from operator import add 
import operator
from pyspark.storagelevel import StorageLevel

def combine\_dict(a,b):
    a.update(b)
    return a
conf = SparkConf()
sc = SparkContext(appName = "tag")
al\_tag\_dict = sc.textFile('albumtag.txt').map(lambda x: x.split(',')).map(lambda x: {x[0]: x[1:]}).reduce(lambda a, b: combine\_dict(a,b))

result = sc.textFile('uidAlbumscore.txt')\
        .map(lambda x: x.split(','))\
        .filter(lambda x: x[1] in al\_tag\_dict.keys())\
        .map(lambda x: (x[0], al\_tag\_dict[x[1]], float(x[2])))\
        .map(lambda x: map(lambda a: ((x[0], a), x[2]), x[1]))\
        .flatMap(lambda x: x)\ 
        .map(lambda x: (str(x[0][0]), x[1]))\
        .reduceByKey(add)\
#        .map(lambda x: x[0][0]+','+x[0][1]+','+str(x[1])+'\n')\
#        .reduce(add)
#codecs.open('tag\_score.txt','w','utf-8').write(result)
print result.first()
{code}


---

* [SPARK-6878](https://issues.apache.org/jira/browse/SPARK-6878) | *Minor* | **Sum on empty RDD fails with exception**

{{Sum}} on an empty RDD throws an exception. Expected result is {{0}}.

A simple fix is the replace

{noformat}
class DoubleRDDFunctions {
  def sum(): Double = self.reduce(\_ + \_)
{noformat} 

with:

{noformat}
class DoubleRDDFunctions {
  def sum(): Double = self.aggregate(0.0)(\_ + \_, \_ + \_)
{noformat}


---

* [SPARK-6868](https://issues.apache.org/jira/browse/SPARK-6868) | *Minor* | **Container link broken on Spark UI Executors page when YARN is set to HTTPS\_ONLY**

The stdout and stderr log links on the executor page will use the http:// prefix even if the node manager does not support http and only https via setting yarn.http.policy=HTTPS\_ONLY.

Unfortunately the unencrypted http link in that case does not return a 404 but a binary file containing random binary chars. This causes a lot of confusion for the end user since it seems like the log file exists and is just filled with garbage. (see attached screenshot)

The fix is to prefix container log links with https:// instead of http:// if yarn.http.policy=HTTPS\_ONLY. YARN's job page has this exact logic as seen here: https://github.com/apache/hadoop/blob/e1109fb65608a668cd53dc324dadc6f63a74eeb9/hadoop-mapreduce-project/hadoop-mapreduce-client/hadoop-mapreduce-client-app/src/main/java/org/apache/hadoop/mapreduce/v2/app/webapp/JobBlock.java#L108


---

* [SPARK-6860](https://issues.apache.org/jira/browse/SPARK-6860) | *Minor* | **Fix the possible inconsistency of StreamingPage**

Because "StreamingPage.render" doesn't hold the "listener" lock when generating the content, the different parts of content may have some inconsistent values if "listener" updates its status at the same time. And it will confuse people.

We should add "listener.synchronized" to make sure we have a consistent view of StreamingJobProgressListener when creating the content.


---

* [SPARK-6781](https://issues.apache.org/jira/browse/SPARK-6781) | *Critical* | **sqlCtx -\> sqlContext in pyspark shell**

We should be consistent across languages in the default names of things we add to the shells.


---

* [SPARK-6767](https://issues.apache.org/jira/browse/SPARK-6767) | *Trivial* | **Documentation error in Spark SQL Readme file**

Error in Spark SQL Documentation file . The sample script for SQL DSL   throwing below error

scala> query.where('key > 30).select(avg('key)).collect()
<console>:43: error: value > is not a member of Symbol
              query.where('key > 30).select(avg('key)).collect()


---

* [SPARK-6766](https://issues.apache.org/jira/browse/SPARK-6766) | *Major* | **StreamingListenerBatchSubmitted isn't sent and StreamingListenerBatchStarted.batchInfo.processingStartTime is a wrong value**

1. Now there is no place posting StreamingListenerBatchSubmitted. It should be post when JobSet is submitted.
2. Call JobSet.handleJobStart before posting StreamingListenerBatchStarted will set StreamingListenerBatchStarted.batchInfo.processingStartTime to None, which should have been set to a correct value.


---

* [SPARK-6753](https://issues.apache.org/jira/browse/SPARK-6753) | *Minor* | **Unit test for SPARK-3426 (in ShuffleSuite) doesn't correctly clone the SparkConf**

As a result, that test always uses the default shuffle settings, rather than using the shuffle manager / other settings set by tests that extend ShuffleSuite.


---

* [SPARK-6636](https://issues.apache.org/jira/browse/SPARK-6636) | *Minor* | **Use public DNS hostname everywhere in spark\_ec2.py**

The spark\_ec2.py script uses public\_dns\_name everywhere in the script except for testing ssh availability, which is done using the public ip address of the instances. This breaks the script for users who are deploying the cluster with a private-network-only security group. The fix is to use public\_dns\_name in the remaining place.

I am submitting a pull-request alongside this bug report.


---

* [SPARK-6506](https://issues.apache.org/jira/browse/SPARK-6506) | *Major* | **python support yarn cluster mode requires SPARK\_HOME to be set**

We added support for python running in yarn cluster mode in https://issues.apache.org/jira/browse/SPARK-5173, but it requires that SPARK\_HOME be set in the environment variables for application master and executor.  It doesn't have to be set to anything real but it fails if its not set.  See the command at the end of: https://github.com/apache/spark/pull/3976


---

* [SPARK-6343](https://issues.apache.org/jira/browse/SPARK-6343) | *Minor* | **Make doc more explicit regarding network connectivity requirements**

As a new user of Spark, I read through the official documentation before attempting to stand-up my own cluster and write my own driver application. But only after attempting to run my app remotely against my cluster did I realize that full network connectivity (layer 3) is necessary between my driver program and worker nodes (i.e., my driver was *listening* for connections from my workers).

I returned to the documentation to see how I had missed this requirement. On a second read-through, I saw that the doc hints at it in a few places (e.g., [driver config|http://spark.apache.org/docs/1.2.0/configuration.html#networking], [submitting applications suggestion|http://spark.apache.org/docs/1.2.0/submitting-applications.html], [cluster overview|http://spark.apache.org/docs/1.2.0/cluster-overview.html])  but never outright says it.

I think it would help would-be users better understand how Spark works to state the network connectivity requirements right up-front in the overview section of the doc. I suggest revising the diagram and accompanying text found on the [overview page|http://spark.apache.org/docs/1.2.0/cluster-overview.html]:

!http://spark.apache.org/docs/1.2.0/img/cluster-overview.png!

so that it depicts at least the directionality of the network connections initiated (perhaps like so):

!http://i.imgur.com/2dqGbCr.png!

and states that the driver must listen for and accept connections from other Spark components on a variety of ports.

Please treat my diagram and text as strawmen: I expect more experienced Spark users and developers will have better ideas on how to convey these requirements.


---

* [SPARK-6205](https://issues.apache.org/jira/browse/SPARK-6205) | *Minor* | **UISeleniumSuite fails for Hadoop 2.x test with NoClassDefFoundError**

{code}
mvn -DskipTests -Pyarn -Phive -Phadoop-2.4 -Dhadoop.version=2.6.0 clean install
mvn -Pyarn -Phive -Phadoop-2.4 -Dhadoop.version=2.6.0 test -DwildcardSuites=org.apache.spark.ui.UISeleniumSuite -Dtest=none -pl core/ 
{code}

will produce:

{code}
UISeleniumSuite:
*** RUN ABORTED ***
  java.lang.NoClassDefFoundError: org/w3c/dom/ElementTraversal
  ...
{code}

It doesn't seem to happen without the various profiles set above.

The fix is simple, although sounds weird; Selenium's dependency on {{xml-apis:xml-apis}} must be manually included in core's test dependencies. This probably has something to do with Hadoop 2 vs 1 dependency changes and the fact that Maven test deps aren't transitive, AFAIK.

PR coming...


---

* [SPARK-5969](https://issues.apache.org/jira/browse/SPARK-5969) | *Major* | **The pyspark.rdd.sortByKey always fills only two partitions when ascending=False.**

The pyspark.rdd.sortByKey always fills only two partitions when ascending=False -- the first one and the last one.

Simple example sorting numbers 0..999 into 10 partitions in descending order:
{code}
sc.parallelize(range(1000)).keyBy(lambda x:x).sortByKey(ascending=False, numPartitions=10).glom().map(len).collect()
{code}
returns the following partition sizes:
{code}
[469, 0, 0, 0, 0, 0, 0, 0, 0, 531]
{code}

When ascending=True, all works as expected:
{code}
sc.parallelize(range(1000)).keyBy(lambda x:x).sortByKey(ascending=True, numPartitions=10).glom().map(len).collect()
Out: [116, 96, 100, 87, 132, 101, 101, 95, 87, 85]
{code}

The problem is caused by the following line 565 in rdd.py:
{code}
        samples = sorted(samples, reverse=(not ascending), key=keyfunc)
{code}
That sorts the samples descending if ascending=False. Nevertheless samples should always be in ascending order, because it is (after subsampling to variable bounds) used in a bisect\_left call:
{code}
        def rangePartitioner(k):
            p = bisect.bisect\_left(bounds, keyfunc(k))
            if ascending:
                return p
            else:
                return numPartitions - 1 - p
{code}

As you can see, rangePartitioner already handles the ascending=False by itself, so the fix for the whole problem is really trivial: just change line rdd.py:565 to
{{samples = sorted(samples, -reverse=(not ascending),- key=keyfunc)}}


---

* [SPARK-5634](https://issues.apache.org/jira/browse/SPARK-5634) | *Minor* | **History server shows misleading message when there are no incomplete apps**

If you go to the history server, and click on "Show incomplete applications", but there are no incomplete applications, you get a misleading message:

{noformat}
No completed applications found!

Did you specify the correct logging directory? (etc etc)
{noformat}

That's the same message used when no complete applications are found; it should probably be tweaked for the incomplete apps case.


---

* [SPARK-5529](https://issues.apache.org/jira/browse/SPARK-5529) | *Major* | **BlockManager heartbeat expiration does not kill executor**

When I run a spark job, one executor is hold, after 120s, blockManager is removed by driver, but after half an hour before the executor is remove by  driver. Here is the log:
{code}
15/02/02 14:58:43 WARN BlockManagerMasterActor: Removing BlockManager BlockManagerId(1, 10.215.143.14, 47234) with no recent heart beats: 147198ms exceeds 120000ms
....
15/02/02 15:26:55 ERROR YarnClientClusterScheduler: Lost executor 1 on 10.215.143.14: remote Akka client disassociated
15/02/02 15:26:55 WARN ReliableDeliverySupervisor: Association with remote system [akka.tcp://sparkExecutor@10.215.143.14:46182] has failed, address is now gated for [5000] ms. Reason is: [Disassociated].
15/02/02 15:26:55 INFO TaskSetManager: Re-queueing tasks for 1 from TaskSet 0.0
15/02/02 15:26:55 WARN TaskSetManager: Lost task 3.0 in stage 0.0 (TID 3, 10.215.143.14): ExecutorLostFailure (executor 1 lost)
15/02/02 15:26:55 ERROR YarnClientSchedulerBackend: Asked to remove non-existent executor 1
15/02/02 15:26:55 INFO DAGScheduler: Executor lost: 1 (epoch 0)
15/02/02 15:26:55 INFO BlockManagerMasterActor: Trying to remove executor 1 from BlockManagerMaster.
15/02/02 15:26:55 INFO BlockManagerMaster: Removed 1 successfully in removeExecutor
{code}



