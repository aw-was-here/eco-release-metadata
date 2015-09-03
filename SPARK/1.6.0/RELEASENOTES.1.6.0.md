
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
# Apache Spark  1.6.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [SPARK-10435](https://issues.apache.org/jira/browse/SPARK-10435) | *Major* | **SparkSubmit should fail fast for Mesos cluster mode with R**

Pretty sure Mesos cluster mode with R is not supported yet. The current behavior is undefined. Instead we should just fail fast with a clear error message.


---

* [SPARK-10432](https://issues.apache.org/jira/browse/SPARK-10432) | *Minor* | **spark.port.maxRetries documentation is unclear**

The documentation for spark.port.maxRetries says:

spark.port.maxRetries	16	Default maximum number of retries when binding to a port before giving up.

But what really happens when the port for that service is not 0 is:

   * Each subsequent attempt uses 1 + the port used in the previous attempt (unless the port is 0).


---

* [SPARK-10431](https://issues.apache.org/jira/browse/SPARK-10431) | *Critical* | **Flaky test: o.a.s.metrics.InputOutputMetricsSuite - input metrics with cache and coalesce**

I sometimes get test failures such as:

- input metrics with cache and coalesce *** FAILED ***
  5994472 did not equal 6044472 (InputOutputMetricsSuite.scala:101)

Tracking this down by adding some debug it seems this is a timing issue in the test.

test("input metrics with cache and coalesce") {
    // prime the cache manager
    val rdd = sc.textFile(tmpFilePath, 4).cache()
    rdd.collect()     // <== #1

    val bytesRead = runAndReturnBytesRead {      // <== #2
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

* [SPARK-10430](https://issues.apache.org/jira/browse/SPARK-10430) | *Minor* | **AccumulableInfo and RDDOperationScope violates hashCode + equals contract**

hashCode implementation is missing in classes AccumulableInfo and RDDOperationScope which are overriding equals methods


---

* [SPARK-10417](https://issues.apache.org/jira/browse/SPARK-10417) | *Minor* | **Iterating through Column results in infinite loop**

Iterating through a \_Column\_ object results in an infinite loop.

{code}
df = sqlContext.jsonRDD(sc.parallelize(['{"name": "El Magnifico"}']))
for i in df["name"]: print i
{code}

Result:
{code}
Column<name[0]>
Column<name[1]>
Column<name[2]>
Column<name[3]>
...
{code}


---

* [SPARK-10411](https://issues.apache.org/jira/browse/SPARK-10411) | *Minor* | **In SQL tab move visualization above explain output**

Request from [~pwendell]:

(1) The visualization is much more interesting than the DF explain output. That should be at the top of the page.

(2) The DF explain output is for advanced users and should be collapsed by default

These are just minor UX optimizations.


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
<ipython-input-36-ebc1d94e0d8c> in <module>()
      1 df = sqlCtx.read.jdbc("jdbc:mysql://a2.adpilot.co/sandbox?user=mbrynski&password=CebO3ax4", 'spark\_test')
      2 print(df.collect())
----> 3 df = sqlCtx.createDataFrame(df.rdd, df.schema)

/mnt/spark/spark/python/pyspark/sql/context.py in createDataFrame(self, data, schema, samplingRatio)
    402 
    403         if isinstance(data, RDD):
--> 404             rdd, schema = self.\_createFromRDD(data, schema, samplingRatio)
    405         else:
    406             rdd, schema = self.\_createFromLocal(data, schema)

/mnt/spark/spark/python/pyspark/sql/context.py in \_createFromRDD(self, rdd, schema, samplingRatio)
    296             rows = rdd.take(10)
    297             for row in rows:
--> 298                 \_verify\_type(row, schema)
    299 
    300         else:

/mnt/spark/spark/python/pyspark/sql/types.py in \_verify\_type(obj, dataType)
   1152                              "length of fields (%d)" % (len(obj), len(dataType.fields)))
   1153         for v, f in zip(obj, dataType.fields):
-> 1154             \_verify\_type(v, f.dataType)
   1155 
   1156 

/mnt/spark/spark/python/pyspark/sql/types.py in \_verify\_type(obj, dataType)
   1136         # subclass of them can not be fromInternald in JVM
   1137         if type(obj) not in \_acceptable\_types[\_type]:
-> 1138             raise TypeError("%s can not accept object in type %s" % (dataType, type(obj)))
   1139 
   1140     if isinstance(dataType, ArrayType):

TypeError: DateType can not accept object in type <class 'int'>

{code}


---

* [SPARK-10389](https://issues.apache.org/jira/browse/SPARK-10389) | *Major* | **support order by non-attribute grouping expression on Aggregate**

For example, we should support "SELECT MAX(value) FROM src GROUP BY key + 1 ORDER BY key + 1".


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

* [SPARK-10378](https://issues.apache.org/jira/browse/SPARK-10378) | *Major* | **Remove HashJoinCompatibilitySuite**

They don't bring much value since we now have better unit test coverage for hash joins. This will also help reduce the test time.


---

* [SPARK-10355](https://issues.apache.org/jira/browse/SPARK-10355) | *Minor* | **Add Python API for SQLTransformer**

Add Python API for SQLTransformer


---

* [SPARK-10351](https://issues.apache.org/jira/browse/SPARK-10351) | *Critical* | **UnsafeRow.getUTF8String should handle off-heap backed UnsafeRow**

{{UnsafeRow.getUTF8String}} delegates to {{UTF8String.fromAddress}} which returns {{null}} when passed a {{null}} base object, failing to handle off-heap backed {{UnsafeRow}}s correctly.

This will also cause a {{NullPointerException}} when {{getString}} is called with off-heap storage.


---

* [SPARK-10349](https://issues.apache.org/jira/browse/SPARK-10349) | *Minor* | **OneVsRest use "when ... otherwise" not UDF to generate new label at binary reduction**

Currently OneVsRest use UDF to generate new binary label during training.
Considering that SPARK-7321 has been merged, we can use "when ... otherwise" which will be more efficiency.


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
    optional int64 f01;
    optional int64 f01;
    optional int64 f02;
  }

  optional double f1;
}
{noformat}
Users should be allowed to read the dataset with the following schema:
{noformat}
message m1 {
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
|      f0|
+--------+
|[0,null]|
|[1,null]|
|[2,null]|
|   [0,0]|
|   [1,1]|
|   [2,2]|
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
        at org.apache.parquet.io.RecordReaderImplementation.<init>(RecordReaderImplementation.java:269)
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
        at org.apache.parquet.io.RecordReaderImplementation.<init>(RecordReaderImplementation.java:269)
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
        at $iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC.<init>(<console>:41)
        at $iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC.<init>(<console>:53)
        at $iwC$$iwC$$iwC$$iwC$$iwC$$iwC.<init>(<console>:55)
        at $iwC$$iwC$$iwC$$iwC$$iwC.<init>(<console>:57)
        at $iwC$$iwC$$iwC$$iwC.<init>(<console>:59)
        at $iwC$$iwC$$iwC.<init>(<console>:61)
        at $iwC$$iwC.<init>(<console>:63)
        at $iwC.<init>(<console>:65)
        at <init>(<console>:67)
        at .<init>(<console>:71)
        at .<clinit>(<console>)
        at .<init>(<console>:7)
        at .<clinit>(<console>)
        at $print(<console>)
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
        at org.apache.parquet.io.RecordReaderImplementation.<init>(RecordReaderImplementation.java:269)
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

* [SPARK-10289](https://issues.apache.org/jira/browse/SPARK-10289) | *Major* | **A direct write API for testing Parquet compatibility**

Due to a set of unfortunate historical issues, it's relatively hard to achieve full interoperability among various Parquet data models. Spark 1.5 implemented all backwards-compatibility rules defined in parquet-format spec on the read path (SPARK-6774) to improve this.  However, testing all those corner cases can be really challenging.  Currently, we are testing Parquet compatibility/interoperability by two means:
# Generate Parquet files by other systems, bundle them into Spark source tree as testing resources, and write test cases against them to ensure that we can interpret them correctly. Currently, we are testing parquet-thrift and parquet-protobuf compatibility in this way.
#- Pros: Easy to write test cases, easy to test against multiple versions of a given external system/libraries (by generating Parquet files with these versions)
#- Cons: Hard to track how testing Parquet files are generated
# Make external libraries as testing dependencies, and call their APIs directly to write Parquet files and verify them. Currently, parquet-avro compatibility is tested using this approach.
#- Pros: Easy to track how testing Parquet files are generated
#- Cons:
##- Often requires code generation (Avro/Thrift/ProtoBuf/...), either complicates build system by using build time code generation, or bloats the code base by checking in generated Java files.  The former one is especially annoying because Spark has two build systems, and require two sets of plugins to do code generation (e.g., for Avro, we need both sbt-avro and avro-maven-plugin).
##- Can only test a single version of a given target library

Inspired by the [{{writeDirect}}|https://github.com/apache/parquet-mr/blob/apache-parquet-1.8.1/parquet-avro/src/test/java/org/apache/parquet/avro/TestArrayCompatibility.java#L945-L972] method in parquet-avro testing code, a direct write API can be a good complement for testing Parquet compatibilities.  Ideally, this API should

# be easy to construct arbitrary complex Parquet records
# have a DSL that reflects the nested nature of Parquet records

In this way, it would be both easy to track Parquet file generation and easy to cover various versions of external libraries.  However, test case authors must be really careful when constructing the test cases and ensure constructed Parquet structures are identical to those generated by the target systems/libraries.  We're probably not going to replace the above two approaches with this API, but just add it as a complement.


---

* [SPARK-10253](https://issues.apache.org/jira/browse/SPARK-10253) | *Minor* | **Remove Guava dependencies in MLlib java tests**

Many tests depend on Google Guava's {{Lists.newArrayList}} when {{java.util.Arrays.asList}} could be used instead.


---

* [SPARK-10251](https://issues.apache.org/jira/browse/SPARK-10251) | *Major* | **Some internal spark classes are not registered with kryo**

When running a job using kryo serialization and setting `spark.kryo.registrationRequired=true` some internal classes are not registered, causing the job to die. This is still a problem when this setting is false (which is the default) because it makes the space required to store serialized objects in memory or disk much much more expensive in terms of runtime and storage space.

{code}
15/08/25 20:28:21 WARN spark.scheduler.TaskSetManager: Lost task 0.0 in stage 0.0 (TID 0, a.b.c.d): java.lang.IllegalArgumentException: Class is not registered: scala.Tuple2[]
Note: To register this class use: kryo.register(scala.Tuple2[].class);
        at com.esotericsoftware.kryo.Kryo.getRegistration(Kryo.java:442)
        at com.esotericsoftware.kryo.util.DefaultClassResolver.writeClass(DefaultClassResolver.java:79)
        at com.esotericsoftware.kryo.Kryo.writeClass(Kryo.java:472)
        at com.esotericsoftware.kryo.Kryo.writeClassAndObject(Kryo.java:565)
        at org.apache.spark.serializer.KryoSerializerInstance.serialize(KryoSerializer.scala:250)
        at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:236)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
        at java.lang.Thread.run(Thread.java:745)
{code}


---

* [SPARK-10247](https://issues.apache.org/jira/browse/SPARK-10247) | *Trivial* | **Cleanup DAGSchedulerSuite "ignore late map task completion"**

the "ignore late map task completion" test in {{DAGSchedulerSuite}} is a bit confusing, we can add a few asserts & comments to clarify a little


---

* [SPARK-10184](https://issues.apache.org/jira/browse/SPARK-10184) | *Minor* | **Optimization for bounds determination in RangePartitioner**

Change {{cumWeight > target}} to {{cumWeight >= target}} in {{RangePartitioner.determineBounds}} method to make the output partitions more balanced.


---

* [SPARK-10182](https://issues.apache.org/jira/browse/SPARK-10182) | *Minor* | **GeneralizedLinearModel doesn't unpersist cached data**

The problem might be reproduced in spark-shell with following code snippet:

{code}
import org.apache.spark.SparkContext
import org.apache.spark.mllib.classification.LogisticRegressionWithLBFGS
import org.apache.spark.mllib.linalg.Vectors
import org.apache.spark.mllib.regression.LabeledPoint

val samples = Seq[LabeledPoint](
  LabeledPoint(1.0, Vectors.dense(1.0, 0.0)),
  LabeledPoint(1.0, Vectors.dense(0.0, 1.0)),
  LabeledPoint(0.0, Vectors.dense(1.0, 1.0)),
  LabeledPoint(0.0, Vectors.dense(0.0, 0.0))
)

val rdd = sc.parallelize(samples)

for (i <- 0 until 10) {
  val model = {
    new LogisticRegressionWithLBFGS()
      .setNumClasses(2)
      .run(rdd)
      .clearThreshold()
  }
}
{code}

After code execution there are 10 {{MapPartitionsRDD}} objects on "Storage" tab in Spark application UI.


---

* [SPARK-10170](https://issues.apache.org/jira/browse/SPARK-10170) | *Major* | **Add DB2 JDBC dialect support**

Repro :
-- start spark shell with classpath set to the db2 jdbc driver. 
SPARK\_CLASSPATH=~/myjars/db2jcc.jar ./spark-shell

 
// set connetion properties 
val properties = new java.util.Properties()
properties.setProperty("user" , "user")
properties.setProperty("password" , "password")

// load the driver.
Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance

// create data frame with a String type
val empdf = sc.parallelize( Array((1,"John"), (2,"Mike"))).toDF("id", "name" )
// write the data frame.  this will fail with error.  
empdf.write.jdbc("jdbc:db2://bdvs150.svl.ibm.com:60000/SAMPLE:retrieveMessagesFromServerOnGetMessage=true;", "emp\_data", properties)

Error :
com.ibm.db2.jcc.am.SqlSyntaxErrorException: TEXT
	at com.ibm.db2.jcc.am.fd.a(fd.java:679)
	at com.ibm.db2.jcc.am.fd.a(fd.java:60)
..


// create data frame with String , and Boolean types 
val empdf = sc.parallelize( Array((1,"true".toBoolean ), (2, "false".toBoolean ))).toDF("id", "isManager")
// write the data frame.  this will fail with error.  
empdf.write.jdbc("jdbc:db2://<server>:<port> /SAMPLE:retrieveMessagesFromServerOnGetMessage=true;", "emp\_data", properties)

Error :
com.ibm.db2.jcc.am.SqlSyntaxErrorException: TEXT
	at com.ibm.db2.jcc.am.fd.a(fd.java:679)
	at com.ibm.db2.jcc.am.fd.a(fd.java:60)

Write is failing because by default JDBC data source implementation generating table schema with unsupported data types TEXT  for String, and BIT1(1)  for Boolean. I think String type should get mapped to CLOB/VARCHAR, and boolean type should be mapped to CHAR(1) for DB2 database.


---

* [SPARK-10162](https://issues.apache.org/jira/browse/SPARK-10162) | *Major* | **PySpark filters with datetimes mess up when datetimes have timezones.**

PySpark appears to ignore timezone information when filtering on (and working in general with) datetimes.

Please see the example below. The generated filter in the query plan is 5 hours off (my computer is EST).

{code}
In [1]: df = sc.sql.createDataFrame([], StructType([StructField("dt", TimestampType())]))

In [2]: df.filter(df.dt > datetime(2000, 01, 01, tzinfo=UTC)).explain()
Filter (dt#9 > 946702800000000)
 Scan PhysicalRDD[dt#9]
{code}

Note that 946702800000000 == Sat  1 Jan 2000 05:00:00 UTC


---

* [SPARK-10040](https://issues.apache.org/jira/browse/SPARK-10040) | *Major* | **JDBC writer change to use batch insert for performance**

Currently JDBC write is using single row insert using executeUpdate() command instead change to executeBatch() which will handle multiple inserts by most databases in more efficient manner.


---

* [SPARK-10035](https://issues.apache.org/jira/browse/SPARK-10035) | *Minor* | **Parquet filters does not process EqualNullSafe filter.**

it is an issue followed by SPARK-9814.

Datasources (after {{selectFilters()}} in {{org.apache.spark.sql.execution.datasources.DataSourceStrategy}}) pass {{EqualNotNull}} to {{ParquetRelation}} but  {{ParquetFilters}} for {{ParquetRelation}} does not take and process this.


---

* [SPARK-10034](https://issues.apache.org/jira/browse/SPARK-10034) | *Major* | **add regression test for Sort on Aggregate**

Before #8371, there was a bug for `Sort` on `Aggregate` that we can't use aggregate expressions named `\_aggOrdering` and can't use more than one ordering expressions which contains aggregate functions. The reason of this bug is that: The aggregate expression in `SortOrder` never get resolved, we alias it with `\_aggOrdering` and call `toAttribute` which gives us an `UnresolvedAttribute`. So actually we are referencing aggregate expression by name, not by exprId like we thought. And if there is already an aggregate expression named `\_aggOrdering` or there are more than one ordering expressions having aggregate functions, we will have conflict names and can't search by name.

However, after #8371 got merged, the `SortOrder`s are guaranteed to be resolved and we are always referencing aggregate expression by exprId. The Bug doesn't exist anymore and this PR add regression tests for it.


---

* [SPARK-10004](https://issues.apache.org/jira/browse/SPARK-10004) | *Critical* | **Shuffle service should make sure applications are allowed to read shuffle data**

The shuffle service currently performs authentication of clients; but once a client is authenticated, it blindly trusts the client to send proper requests.

A malicious client could send a {{OpenBlocks}} message to open another application's shuffle data, and the shuffle service will just do it. This can be used to work around the fact that the app cannot go directly to the other app's files in the local filesystem (due to permissions), while the shuffle service can.


---

* [SPARK-9986](https://issues.apache.org/jira/browse/SPARK-9986) | *Major* | **Create a simple test framework for local operators**

It'd be great if we can just create local query plans and test the correctness of their implementation directly.


---

* [SPARK-9984](https://issues.apache.org/jira/browse/SPARK-9984) | *Major* | **Create local physical operator interface**

The local operator interface should be similar to traditional database iterators, with open/close.


---

* [SPARK-9969](https://issues.apache.org/jira/browse/SPARK-9969) | *Minor* | **Remove old Yarn MR classpath api support for Spark Yarn client**

Since now we only support Yarn stable API, so here propose to remove old MRConfig.DEFAULT\_MAPREDUCE\_APPLICATION\_CLASSPATH api support in 2.0.


---

* [SPARK-9964](https://issues.apache.org/jira/browse/SPARK-9964) | *Minor* | **PySpark DataFrameReader accept RDD of String for JSON**

It would be nice (but not necessary) for the PySpark DataFrameReader to accept an RDD of Strings (like the Scala version does) for JSON, rather than only taking a path.

If this JIRA is accepted, it should probably be duplicated to cover the other input types (not just JSON).


---

* [SPARK-9954](https://issues.apache.org/jira/browse/SPARK-9954) | *Major* | **Vector.hashCode should use nonzeros**

Using only zeros is likely to cause hash collision.


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

* [SPARK-9923](https://issues.apache.org/jira/browse/SPARK-9923) | *Trivial* | **ShuffleMapStage.numAvailableOutputs should be an Int instead of Long**

Not sure why it was made a Long, but every usage assumes it's an Int.


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

* [SPARK-9833](https://issues.apache.org/jira/browse/SPARK-9833) | *Minor* | **Add options to explicitly disable delegation token retrieval for non-HDFS**

In 1.4, code was added to fetch delegation tokens for Hive metastores and HBase masters. That code is run regardless of whether the user app actually needs those tokens, since there's no way for Spark to know otherwise.

In the best case, that's just unnecessary overhead. In some cases, the Hadoop / Hive / HBase configuration being loaded may contain references to things that Spark doesn't have access to (e.g. Sentry classes), and the Spark application might fail to start.

Adding explicit configuration options to disable those would help, since currently the only way is to set some specific Hive / HBase configuration values, which is kinda brittle.


---

* [SPARK-9810](https://issues.apache.org/jira/browse/SPARK-9810) | *Major* | **Remove individual commit messages from the squash commit message**

I took a look at the commit messages in git log -- it looks like the individual commit messages are not that useful to include, but do make the commit messages more verbose. They are usually just a bunch of extremely concise descriptions of "bug fixes", "merges", etc:

{code}
    cb3f12d [xxx] add whitespace
    6d874a6 [xxx] support pyspark for yarn-client

    89b01f5 [yyy] Update the unit test to add more cases
    275d252 [yyy] Address the comments
    7cc146d [yyy] Address the comments
    2624723 [yyy] Fix rebase conflict
    45befaa [yyy] Update the unit test
    bbc1c9c [yyy] Fix checkpointing doesn't retain driver port issue
{code}

See mailing list discussions: http://apache-spark-developers-list.1001551.n3.nabble.com/discuss-Removing-individual-commit-messages-from-the-squash-commit-message-td13295.html


---

* [SPARK-9782](https://issues.apache.org/jira/browse/SPARK-9782) | *Major* | **Add support for YARN application tags running Spark on YARN**

https://issues.apache.org/jira/browse/YARN-1390 originally added the new “Application Tags” feature to YARN to help track the sources of applications among many possible YARN clients. https://issues.apache.org/jira/browse/YARN-1399 improved on this to allow a set of tags to be applied, and for comparison, https://issues.apache.org/jira/browse/MAPREDUCE-5699 added support for MapReduce to easily propagate tags through to YARN via Configuration settings.

Since the ApplicationSubmissionContext.setApplicationTags method was only added in Hadoop 2.4+, Spark support will invoke the method via reflection the same way other such version-specific methods are called in elsewhere in the YARN client. Since the usage of tags is generally not critical to the functionality of older YARN setups, it should be safe to handle NoSuchMethodException with just a logWarning.


---

* [SPARK-9748](https://issues.apache.org/jira/browse/SPARK-9748) | *Trivial* | **Centriod typo in KMeansModel**

A minor typo (centriod -> centroid). Readable variable names help every users.


---

* [SPARK-9723](https://issues.apache.org/jira/browse/SPARK-9723) | *Minor* | **Params.getOrDefault should throw more meaningful exception**

Params.getOrDefault should throw a more meaningful exception than what you get from a bad key lookup.


---

* [SPARK-9672](https://issues.apache.org/jira/browse/SPARK-9672) | *Minor* | **Drivers run in cluster mode on mesos may not have spark-env variables available**

This issue definitely affects Mesos mode, but may effect complex standalone topologies as well.

When running spark-submit with {noformat}--deploy-mode cluster{noformat} environment variables set in {{spark-env.sh}} that are not prefixed with {{SPARK\_}} are not available in the driver process. The behavior I expect is that any variables set in {{spark-env.sh}} are available on the driver and all executors.

{{spark-env.sh}} is executed by {{load-spark-env.sh}} which uses an environment variable {{SPARK\_ENV\_LOADED}} [[code|https://github.com/apache/spark/blob/master/bin/load-spark-env.sh#L25]] to ensure that it is only run once. When using the {{RestSubmissionClient}}, spark submit propagates all environment variables that are prefixed with {{SPARK\_}} [[code|https://github.com/apache/spark/blob/3c0156899dc1ec1f7dfe6d7c8af47fa6dc7d00bf/core/src/main/scala/org/apache/spark/deploy/rest/RestSubmissionClient.scala#L400]] to the {{MesosRestServer}} where they are used to initialize the driver [[code|https://github.com/apache/spark/blob/3c0156899dc1ec1f7dfe6d7c8af47fa6dc7d00bf/core/src/main/scala/org/apache/spark/deploy/rest/StandaloneRestServer.scala#L155]]. During this process, {{SPARK\_ENV\_LOADED}} is propagated to the new driver process (since running spark submit has caused {{load-spark-env.sh}} to be run on the submitter's machine) [[code|https://github.com/apache/spark/blob/d86bbb4e286f16f77ba125452b07827684eafeed/core/src/main/scala/org/apache/spark/scheduler/cluster/mesos/MesosClusterScheduler.scala#L371]]. Now when {{load-spark-env.sh}} is called by {{MesosClusterScheduler}} {{SPARK\_ENV\_LOADED}} is set and {{spark-env.sh}} is never sourced.

[This gist|https://gist.github.com/pashields/9fe662d6ec5c079bdf70] shows the testing setup I used while investigating this issue. An example invocation looked like {noformat}spark-1.5.0-SNAPSHOT-bin-custom-spark/bin/spark-submit --deploy-mode cluster --master mesos://172.31.34.154:7077 --class Test spark-env-var-test\_2.10-0.1-SNAPSHOT.jar{noformat}


---

* [SPARK-9613](https://issues.apache.org/jira/browse/SPARK-9613) | *Major* | **Ban use of JavaConversions and migrate all existing uses to JavaConverters**

Spark's style checker should ban the use of Scala's JavaConversions, which provides implicit conversions between Java and Scala collections types.  Instead, we should be performing these conversions explicitly using JavaConverters (or forgoing the conversions altogether if they're occurring inside of performance-critical code).


---

* [SPARK-9596](https://issues.apache.org/jira/browse/SPARK-9596) | *Major* | **Avoid reloading Hadoop classes like UserGroupInformation**

Some hadoop classes contains global information such as authentication in UserGroupInformation. If we load them again in `IsolatedClientLoader`, the message they carry will be dropped.

So we should treat hadoop classes as "shared" too.


---

* [SPARK-9591](https://issues.apache.org/jira/browse/SPARK-9591) | *Major* | **Job failed for exception during getting Broadcast variable**

Job might failed for exception throw when  we  getting the broadcast variable especially using dynamic resource allocate.
driver log
{noformat}
2015-07-21 05:36:31 INFO 15/07/21 05:36:31 WARN TaskSetManager: Lost task 496.1 in stage 19.0 (TID 1715, XXXXXX): java.io.IOException: Failed to connect to XXXXX:27072
at org.apache.spark.network.client.TransportClientFactory.createClient(TransportClientFactory.java:191)
at org.apache.spark.network.client.TransportClientFactory.createClient(TransportClientFactory.java:156)
at org.apache.spark.network.netty.NettyBlockTransferService$$anon$1.createAndStart(NettyBlockTransferService.scala:78)
at org.apache.spark.network.shuffle.RetryingBlockFetcher.fetchAllOutstanding(RetryingBlockFetcher.java:140)
at org.apache.spark.network.shuffle.RetryingBlockFetcher.access$200(RetryingBlockFetcher.java:43)
at org.apache.spark.network.shuffle.RetryingBlockFetcher$1.run(RetryingBlockFetcher.java:170)
at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:441)
at java.util.concurrent.FutureTask$Sync.innerRun(FutureTask.java:303)
at java.util.concurrent.FutureTask.run(FutureTask.java:138)
at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:886)
at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:908)
at java.lang.Thread.run(Thread.java:662)
Caused by: java.net.ConnectException: Connection refused: xxxxxx:27072
at sun.nio.ch.SocketChannelImpl.checkConnect(Native Method)
at sun.nio.ch.SocketChannelImpl.finishConnect(SocketChannelImpl.java:567)
at io.netty.channel.socket.nio.NioSocketChannel.doFinishConnect(NioSocketChannel.java:208)
at io.netty.channel.nio.AbstractNioChannel$AbstractNioUnsafe.finishConnect(AbstractNioChannel.java:287)
at io.netty.channel.nio.NioEventLoop.processSelectedKey(NioEventLoop.java:528)
at io.netty.channel.nio.NioEventLoop.processSelectedKeysOptimized(NioEventLoop.java:468)
at io.netty.channel.nio.NioEventLoop.processSelectedKeys(NioEventLoop.java:382)
at io.netty.channel.nio.NioEventLoop.run(NioEventLoop.java:354)
at io.netty.util.concurrent.SingleThreadEventExecutor$2.run(SingleThreadEventExecutor.java:116)
... 1 more
15/07/21 05:36:32 WARN TaskSetManager: Lost task 496.2 in stage 19.0 (TID 1744, xxxxx): java.io.IOException: Failed to connect to XXXX/XXXXXXXX:34070
at org.apache.spark.network.client.TransportClientFactory.createClient(TransportClientFactory.java:191)
at org.apache.spark.network.client.TransportClientFactory.createClient(TransportClientFactory.java:156)
at org.apache.spark.network.netty.NettyBlockTransferService$$anon$1.createAndStart(NettyBlockTransferService.scala:78)
at org.apache.spark.network.shuffle.RetryingBlockFetcher.fetchAllOutstanding(RetryingBlockFetcher.java:140)
at org.apache.spark.network.shuffle.RetryingBlockFetcher.access$200(RetryingBlockFetcher.java:43)
at org.apache.spark.network.shuffle.RetryingBlockFetcher$1.run(RetryingBlockFetcher.java:170)
at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:441)
at java.util.concurrent.FutureTask$Sync.innerRun(FutureTask.java:303)
at java.util.concurrent.FutureTask.run(FutureTask.java:138)
at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:886)
at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:908)
at java.lang.Thread.run(Thread.java:662)
Caused by: java.net.ConnectException: Connection refused: xxx:34070
at sun.nio.ch.SocketChannelImpl.checkConnect(Native Method)
at sun.nio.ch.SocketChannelImpl.finishConnect(SocketChannelImpl.java:567)
at io.netty.channel.socket.nio.NioSocketChannel.doFinishConnect(NioSocketChannel.java:208)
at io.netty.channel.nio.AbstractNioChannel$AbstractNioUnsafe.finishConnect(AbstractNioChannel.java:287)
at io.netty.channel.nio.NioEventLoop.processSelectedKey(NioEventLoop.java:528)
at io.netty.channel.nio.NioEventLoop.processSelectedKeysOptimized(NioEventLoop.java:468)
at io.netty.channel.nio.NioEventLoop.processSelectedKeys(NioEventLoop.java:382)
at io.netty.channel.nio.NioEventLoop.run(NioEventLoop.java:354)
at io.netty.util.concurrent.SingleThreadEventExecutor$2.run(SingleThreadEventExecutor.java:116)
... 1 more

org.apache.spark.SparkException: Job aborted due to stage failure: Task 496 in stage 19.0 failed 4 times
{noformat}

executor log
{noformat}
15/07/21 05:36:17 ERROR shuffle.RetryingBlockFetcher: Exception while beginning fetch of 1 outstanding blocks
java.io.IOException: Failed to connect to xxx
        at org.apache.spark.network.client.TransportClientFactory.createClient(TransportClientFactory.java:191)
        at org.apache.spark.network.client.TransportClientFactory.createClient(TransportClientFactory.java:156)
        at org.apache.spark.network.netty.NettyBlockTransferService$$anon$1.createAndStart(NettyBlockTransferService.scala:78)
        at org.apache.spark.network.shuffle.RetryingBlockFetcher.fetchAllOutstanding(RetryingBlockFetcher.java:140)
        at org.apache.spark.network.shuffle.RetryingBlockFetcher.start(RetryingBlockFetcher.java:120)
        at org.apache.spark.network.netty.NettyBlockTransferService.fetchBlocks(NettyBlockTransferService.scala:87)
        at org.apache.spark.network.BlockTransferService.fetchBlockSync(BlockTransferService.scala:89)
        at org.apache.spark.storage.BlockManager$$anonfun$doGetRemote$2.apply(BlockManager.scala:592)
        at org.apache.spark.storage.BlockManager$$anonfun$doGetRemote$2.apply(BlockManager.scala:590)
        at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
        at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
        at org.apache.spark.storage.BlockManager.doGetRemote(BlockManager.scala:590)
        at org.apache.spark.storage.BlockManager.getRemoteBytes(BlockManager.scala:584)
        at org.apache.spark.broadcast.TorrentBroadcast$$anonfun$org$apache$spark$broadcast$TorrentBroadcast$$readBlocks$1.org$apache$spark$broadcast$TorrentBroadcast$$anonfun$$getRemote$1(TorrentBroadcast.scala:127)
        at org.apache.spark.broadcast.TorrentBroadcast$$anonfun$org$apache$spark$broadcast$TorrentBroadcast$$readBlocks$1$$anonfun$1.apply(TorrentBroadcast.scala:137)
        at org.apache.spark.broadcast.TorrentBroadcast$$anonfun$org$apache$spark$broadcast$TorrentBroadcast$$readBlocks$1$$anonfun$1.apply(TorrentBroadcast.scala:137)
        at scala.Option.orElse(Option.scala:257)
        at org.apache.spark.broadcast.TorrentBroadcast$$anonfun$org$apache$spark$broadcast$TorrentBroadcast$$readBlocks$1.apply$mcVI$sp(TorrentBroadcast.scala:137)
        at org.apache.spark.broadcast.TorrentBroadcast$$anonfun$org$apache$spark$broadcast$TorrentBroadcast$$readBlocks$1.apply(TorrentBroadcast.scala:120)
        at org.apache.spark.broadcast.TorrentBroadcast$$anonfun$org$apache$spark$broadcast$TorrentBroadcast$$readBlocks$1.apply(TorrentBroadcast.scala:120)
        at scala.collection.immutable.List.foreach(List.scala:318)
        at org.apache.spark.broadcast.TorrentBroadcast.org$apache$spark$broadcast$TorrentBroadcast$$readBlocks(TorrentBroadcast.scala:120)
        at org.apache.spark.broadcast.TorrentBroadcast$$anonfun$readBroadcastBlock$1.apply(TorrentBroadcast.scala:175)
        at org.apache.spark.util.Utils$.tryOrIOException(Utils.scala:1246)
        at org.apache.spark.broadcast.TorrentBroadcast.readBroadcastBlock(TorrentBroadcast.scala:165)
        at org.apache.spark.broadcast.TorrentBroadcast.\_value$lzycompute(TorrentBroadcast.scala:64)
        at org.apache.spark.broadcast.TorrentBroadcast.\_value(TorrentBroadcast.scala:64)
        at org.apache.spark.broadcast.TorrentBroadcast.getValue(TorrentBroadcast.scala:88)
        at org.apache.spark.broadcast.Broadcast.value(Broadcast.scala:70)
        at org.apache.spark.rdd.HadoopRDD.getJobConf(HadoopRDD.scala:132)
        at org.apache.spark.rdd.HadoopRDD$$anon$1.<init>(HadoopRDD.scala:216)
        at org.apache.spark.rdd.HadoopRDD.compute(HadoopRDD.scala:212)
        at org.apache.spark.rdd.HadoopRDD.compute(HadoopRDD.scala:93)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
        at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
        at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
        at org.apache.spark.rdd.UnionRDD.compute(UnionRDD.scala:87)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
        at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
        at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
        at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:70)
        at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:41)
        at org.apache.spark.scheduler.Task.run(Task.scala:64)
        at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:209)
        at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:886)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:908)
        at java.lang.Thread.run(Thread.java:662)
{noformat}
When we getting the broadcast variable, we can fetch the block form several location,but now when connecting the *lost blockmanager*(idle for enough time removed by driver when using dynamic resource allocate and so on)  will cause task fail,and the worse case will caused the job fail.


---

* [SPARK-9547](https://issues.apache.org/jira/browse/SPARK-9547) | *Major* | **Allow testing pull requests with different Hadoop versions**

Similar to SPARK-9545 we should allow testing different Hadoop profiles in the PRB.


---

* [SPARK-9545](https://issues.apache.org/jira/browse/SPARK-9545) | *Major* | **Run Maven tests in pull request builder if title has "[test-maven]" in it**

We have infrastructure now in the build tooling for running maven tests, but it's not actually used anywhere. With a very minor change we can support running maven tests if the pull request title has "maven-test" in it.


---

* [SPARK-9439](https://issues.apache.org/jira/browse/SPARK-9439) | *Critical* | **ExternalShuffleService should be robust to NodeManager restarts in yarn**

Yarn applications should be robust to NodeManager restarts in general.   However, if you run with the external shuffle service enabled, after a NM restart, you will observe failures like:

{noformat}
2015-07-22 18:30:18,212 ERROR org.apache.spark.network.server.TransportRequestHandler: Error while invoking RpcHandler#receive() on RPC id 5405054848584757735
java.lang.RuntimeException: Executor is not registered (appId=application\_1437612356649\_0008, execId=73)
        at org.apache.spark.network.shuffle.ExternalShuffleBlockManager.getBlockData(ExternalShuffleBlockManager.java:105)
...
{noformat}

This is because when the NM restarts (and restarts the ExternalShuffleService), it doesn't call {{ExternalShuffleBlockResolver#registerExecutor}}


---

* [SPARK-9401](https://issues.apache.org/jira/browse/SPARK-9401) | *Major* | **Fully implement code generation for ConcatWs**

In ConcatWs, we fall back to interpreted mode if the input is a mix of string and array of strings. We should have code gen for those as well.


---

* [SPARK-8951](https://issues.apache.org/jira/browse/SPARK-8951) | *Minor* | **support CJK characters in collect()**

Spark gives an error message and does not show the output when a field of the result DataFrame contains characters in CJK.
I found out that SerDe in R API only supports ASCII format for strings right now as commented in source code.  
So, I fixed SerDe.scala a little to support CJK as the file attached. 
I did not care efficiency, but just wanted to see if it works.

{noformat}
people.json
{"name":"가나"}
{"name":"테스트123", "age":30}
{"name":"Justin", "age":19}

df <- read.df(sqlContext, "./people.json", "json")
head(df)

Error in rawtochar(string) : embedded nul in string : '\0 \x98'
{noformat}

{code:title=core/src/main/scala/org/apache/spark/api/r/SerDe.scala}
  // NOTE: Only works for ASCII right now
  def writeString(out: DataOutputStream, value: String): Unit = {
    val len = value.length
    out.writeInt(len + 1) // For the \0
    out.writeBytes(value)
    out.writeByte(0)
{code}


---

* [SPARK-8889](https://issues.apache.org/jira/browse/SPARK-8889) | *Minor* | **showDagViz will cause java.lang.OutOfMemoryError: Java heap space**

HTTP ERROR 500

Problem accessing /history/app-20150708101140-0018/jobs/job/. Reason:

    Server Error
Caused by:

java.lang.OutOfMemoryError: Java heap space
	at java.util.Arrays.copyOf(Arrays.java:2367)
	at java.lang.AbstractStringBuilder.expandCapacity(AbstractStringBuilder.java:130)
	at java.lang.AbstractStringBuilder.ensureCapacityInternal(AbstractStringBuilder.java:114)
	at java.lang.AbstractStringBuilder.append(AbstractStringBuilder.java:415)
	at java.lang.StringBuilder.append(StringBuilder.java:132)
	at scala.collection.mutable.StringBuilder.append(StringBuilder.scala:207)
	at org.apache.spark.ui.scope.RDDOperationGraph$$anonfun$org$apache$spark$ui$scope$RDDOperationGraph$$makeDotSubgraph$2.apply(RDDOperationGraph.scala:192)
	at org.apache.spark.ui.scope.RDDOperationGraph$$anonfun$org$apache$spark$ui$scope$RDDOperationGraph$$makeDotSubgraph$2.apply(RDDOperationGraph.scala:191)
	at scala.collection.immutable.Stream.foreach(Stream.scala:547)
	at org.apache.spark.ui.scope.RDDOperationGraph$.org$apache$spark$ui$scope$RDDOperationGraph$$makeDotSubgraph(RDDOperationGraph.scala:191)
	at org.apache.spark.ui.scope.RDDOperationGraph$.makeDotFile(RDDOperationGraph.scala:170)
	at org.apache.spark.ui.UIUtils$$anonfun$showDagViz$1.apply(UIUtils.scala:361)
	at org.apache.spark.ui.UIUtils$$anonfun$showDagViz$1.apply(UIUtils.scala:357)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.immutable.List.foreach(List.scala:318)
	at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
	at scala.collection.AbstractTraversable.map(Traversable.scala:105)
	at org.apache.spark.ui.UIUtils$.showDagViz(UIUtils.scala:357)
	at org.apache.spark.ui.UIUtils$.showDagVizForJob(UIUtils.scala:335)
	at org.apache.spark.ui.jobs.JobPage.render(JobPage.scala:317)
	at org.apache.spark.ui.WebUI$$anonfun$2.apply(WebUI.scala:79)
	at org.apache.spark.ui.WebUI$$anonfun$2.apply(WebUI.scala:79)
	at org.apache.spark.ui.JettyUtils$$anon$1.doGet(JettyUtils.scala:69)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:735)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:848)
	at org.spark-project.jetty.servlet.ServletHolder.handle(ServletHolder.java:684)
	at org.spark-project.jetty.servlet.ServletHandler.doHandle(ServletHandler.java:501)
	at org.spark-project.jetty.server.handler.ContextHandler.doHandle(ContextHandler.java:1086)
	at org.spark-project.jetty.servlet.ServletHandler.doScope(ServletHandler.java:428)
	at org.spark-project.jetty.server.handler.ContextHandler.doScope(ContextHandler.java:1020)
	at org.spark-project.jetty.server.handler.ScopedHandler.handle(ScopedHandler.java:135)


---

* [SPARK-8887](https://issues.apache.org/jira/browse/SPARK-8887) | *Major* | **Explicitly define which data types can be used as dynamic partition columns**

{{InsertIntoHadoopFsRelation}} implements Hive compatible dynamic partitioning insertion, which uses {{String.valueOf}} to write encode partition column values into dynamic partition directories. This actually limits the data types that can be used in partition column. For example, string representation of {{StructType}} values is not well defined. However, this limitation is not explicitly enforced.

There are several things we can improve:

# Enforce dynamic column data type requirements by adding analysis rules and throws {{AnalysisException}} when violation occurs.
# Abstract away string representation of various data types, so that we don't need to convert internal representation types (e.g. {{UTF8String}}) to external types (e.g. {{String}}). A set of Hive compatible implementations should be provided to ensure compatibility with Hive.


---

* [SPARK-8764](https://issues.apache.org/jira/browse/SPARK-8764) | *Minor* | **StringIndexer should take option to handle unseen values**

The option should be a Param, probably set to false by default (throwing exception when encountering unseen values).


---

* [SPARK-8730](https://issues.apache.org/jira/browse/SPARK-8730) | *Critical* | **Deser primitive class with Java serialization**

Objects that contain as property a primitive Class, can not be deserialized using java serde. Class.forName does not work for primitives.

Exemple of object:

class Foo extends Serializable {
  val intClass = classOf[Int]
}


---

* [SPARK-8707](https://issues.apache.org/jira/browse/SPARK-8707) | *Major* | **RDD#toDebugString fails if any cached RDD has invalid partitions**

Repro:

{code}
sc.textFile("/ThisFileDoesNotExist").cache()
sc.parallelize(0 until 100).toDebugString
{code}

Output:

{code}
java.io.IOException: Not a file: /ThisFileDoesNotExist
	at org.apache.hadoop.mapred.FileInputFormat.getSplits(FileInputFormat.java:215)
	at org.apache.spark.rdd.HadoopRDD.getPartitions(HadoopRDD.scala:207)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:219)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:217)
	at scala.Option.getOrElse(Option.scala:120)
	at org.apache.spark.rdd.RDD.partitions(RDD.scala:217)
	at org.apache.spark.rdd.MapPartitionsRDD.getPartitions(MapPartitionsRDD.scala:32)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:219)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:217)
	at scala.Option.getOrElse(Option.scala:120)
	at org.apache.spark.rdd.RDD.partitions(RDD.scala:217)
	at org.apache.spark.storage.RDDInfo$.fromRdd(RDDInfo.scala:59)
	at org.apache.spark.SparkContext$$anonfun$34.apply(SparkContext.scala:1455)
	at org.apache.spark.SparkContext$$anonfun$34.apply(SparkContext.scala:1455)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.Iterator$class.foreach(Iterator.scala:727)
	at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
	at scala.collection.MapLike$DefaultValuesIterable.foreach(MapLike.scala:206)
	at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
	at scala.collection.AbstractTraversable.map(Traversable.scala:105)
	at org.apache.spark.SparkContext.getRDDStorageInfo(SparkContext.scala:1455)
	at org.apache.spark.rdd.RDD.debugSelf$1(RDD.scala:1573)
	at org.apache.spark.rdd.RDD.firstDebugString$1(RDD.scala:1607)
	at org.apache.spark.rdd.RDD.toDebugString(RDD.scala:1637
{code}

This is because toDebugString gets all the partitions from all RDDs, which fails (via SparkContext#getRDDStorageInfo). This pathway should definitely be resilient to other RDDs being invalid (and getRDDStorageInfo should probably also be).


---

* [SPARK-8505](https://issues.apache.org/jira/browse/SPARK-8505) | *Major* | **Add settings to kick `lint-r` from `./dev/run-test.py`**

Add some settings to kick `lint-r` script from `./dev/run-test.py`


---

* [SPARK-8472](https://issues.apache.org/jira/browse/SPARK-8472) | *Minor* | **Python API for DCT**

We need to implement a wrapper for enabling the DCT feature transformer to be used from the Python API


---

* [SPARK-8345](https://issues.apache.org/jira/browse/SPARK-8345) | *Major* | **Add an SQL node as a feature transformer**

Some simple feature transformations can take leverage on SQL operators. Users do not need to create an ML transformer for each of them. We can have an SQL transformer that executes an SQL command which operates on the input dataframe.

{code}
val sql = new SQL()
  .setStatement("SELECT *, length(text) AS text\_length FROM \_\_THIS\_\_")
{code}

where "\_\_THIS\_\_" will be replaced by a temp table that represents the DataFrame.


---

* [SPARK-7336](https://issues.apache.org/jira/browse/SPARK-7336) | *Minor* | **Sometimes the status of finished job show on JobHistory UI will be active, and never update.**

When I run a SparkPi job, the status of the job on JobHistory UI was 'active'. After the job finished for a long time, the status on JobHistory UI never update again, and the job keep in the 'Incomplete applications' list. 
This problem appears occasionally. And the configuration of JobHistory is default value.


---

* [SPARK-5945](https://issues.apache.org/jira/browse/SPARK-5945) | *Critical* | **Spark should not retry a stage infinitely on a FetchFailedException**

While investigating SPARK-5928, I noticed some very strange behavior in the way spark retries stages after a FetchFailedException.  It seems that on a FetchFailedException, instead of simply killing the task and retrying, Spark aborts the stage and retries.  If it just retried the task, the task might fail 4 times and then trigger the usual job killing mechanism.  But by killing the stage instead, the max retry logic is skipped (it looks to me like there is no limit for retries on a stage).

After a bit of discussion with Kay Ousterhout, it seems the idea is that if a fetch fails, we assume that the block manager we are fetching from has failed, and that it will succeed if we retry the stage w/out that block manager.  In that case, it wouldn't make any sense to retry the task, since its doomed to fail every time, so we might as well kill the whole stage.  But this raises two questions:


1) Is it really safe to assume that a FetchFailedException means that the BlockManager has failed, and ti will work if we just try another one?  SPARK-5928 shows that there are at least some cases where that assumption is wrong.  Even if we fix that case, this logic seems brittle to the next case we find.  I guess the idea is that this behavior is what gives us the "R" in RDD ... but it seems like its not really that robust and maybe should be reconsidered.

2) Should stages only be retried a limited number of times?  It would be pretty easy to put in a limited number of retries per stage.  Though again, we encounter issues with keeping things resilient.  Theoretically one stage could have many retries, but due to failures in different stages further downstream, so we might need to track the cause of each retry as well to still have the desired behavior.

In general it just seems there is some flakiness in the retry logic.  This is the only reproducible example I have at the moment, but I vaguely recall hitting other cases of strange behavior w/ retries when trying to run long pipelines.  Eg., if one executor is stuck in a GC during a fetch, the fetch fails, but the executor eventually comes back and the stage gets retried again, but the same GC issues happen the second time around, etc.

Copied from SPARK-5928, here's the example program that can regularly produce a loop of stage failures.  Note that it will only fail from a remote fetch, so it can't be run locally -- I ran with {{MASTER=yarn-client spark-shell --num-executors 2 --executor-memory 4000m}}

{code}
    val rdd = sc.parallelize(1 to 1e6.toInt, 1).map{ ignore =>
      val n = 3e3.toInt
      val arr = new Array[Byte](n)
      //need to make sure the array doesn't compress to something small
      scala.util.Random.nextBytes(arr)
      arr
    }
    rdd.map { x => (1, x)}.groupByKey().count()
{code}


---

* [SPARK-5754](https://issues.apache.org/jira/browse/SPARK-5754) | *Major* | **Spark AM not launching on Windows**

I'm trying to run Spark Pi on a YARN cluster running on Windows and the AM container fails to start. The problem seems to be in the generation of the YARN command which adds single quotes (') surrounding some of the java options. In particular, the part of the code that is adding those is the escapeForShell function in YarnSparkHadoopUtil. Apparently, Windows does not like the quotes for these options. Here is an example of the command that the container tries to execute:

@call %JAVA\_HOME%/bin/java -server -Xmx512m -Djava.io.tmpdir=%PWD%/tmp '-Dspark.yarn.secondary.jars=' '-Dspark.app.name=org.apache.spark.examples.SparkPi' '-Dspark.master=yarn-cluster' org.apache.spark.deploy.yarn.ApplicationMaster --class 'org.apache.spark.examples.SparkPi' --jar  'file:/D:/data/spark-1.1.1-bin-hadoop2.4/bin/../lib/spark-examples-1.1.1-hadoop2.4.0.jar'  --executor-memory 1024 --executor-cores 1 --num-executors 2

Once I transform it into:

@call %JAVA\_HOME%/bin/java -server -Xmx512m -Djava.io.tmpdir=%PWD%/tmp -Dspark.yarn.secondary.jars= -Dspark.app.name=org.apache.spark.examples.SparkPi -Dspark.master=yarn-cluster org.apache.spark.deploy.yarn.ApplicationMaster --class 'org.apache.spark.examples.SparkPi' --jar  'file:/D:/data/spark-1.1.1-bin-hadoop2.4/bin/../lib/spark-examples-1.1.1-hadoop2.4.0.jar'  --executor-memory 1024 --executor-cores 1 --num-executors 2

Everything seems to start.

How should I deal with this? Creating a separate function like escapeForShell for Windows and call it whenever I detect this is for Windows? Or should I add some sanity check on YARN?

I checked a little and there seems to be people that is able to run Spark on YARN on Windows, so it might be something else. I didn't find anything related on Jira either.


---

* [SPARK-4223](https://issues.apache.org/jira/browse/SPARK-4223) | *Major* | **Support \* (meaning all users) as part of the acls**

Currently we support setting view and modify acls but you have to specify a list of users.  It would be nice to support * meaning all users have access.



