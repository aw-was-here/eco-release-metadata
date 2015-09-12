
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

* [SPARK-10480](https://issues.apache.org/jira/browse/SPARK-10480) | *Minor* | **ML.LinearRegressionModel.copy() can not use argument "extra"**

ML.LinearRegressionModel.copy() ignored argument extra, it will not take effect when users setting this parameter.


---

* [SPARK-10479](https://issues.apache.org/jira/browse/SPARK-10479) | *Minor* | **LogisticRegression copy should copy model summary if available**

SPARK-9112 adds LogisticRegressionSummary but [does not copy the model summary if available\|https://github.com/apache/spark/blob/master/mllib/src/main/scala/org/apache/spark/ml/classification/LogisticRegression.scala#L471]

We should add behavior similar to that in [LinearRegression.copy\|https://github.com/apache/spark/blob/master/mllib/src/main/scala/org/apache/spark/ml/regression/LinearRegression.scala#L314]


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

* [SPARK-7736](https://issues.apache.org/jira/browse/SPARK-7736) | *Major* | **Exception not failing Python applications (in yarn cluster mode)**

It seems that exceptions thrown in Python spark apps after the SparkContext is instantiated don't cause the application to fail, at least in Yarn: the application is marked as SUCCEEDED.

Note that any exception right before the SparkContext correctly places the application in FAILED state.



