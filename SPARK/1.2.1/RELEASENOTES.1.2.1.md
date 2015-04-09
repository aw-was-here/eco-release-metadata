
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
#  1.2.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [SPARK-6456](https://issues.apache.org/jira/browse/SPARK-6456) | *Major* | **Spark Sql throwing exception on large partitioned data**

Spark connects with Hive Metastore. I am able to run simple queries like show table and select. but throws below exception while running query on the hive Table having large number of partitions.
{noformat}
Exception in thread "main" java.lang.reflect.InvocationTargetException
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:606)
        at org.apache.spark.deploy.worker.DriverWrapper$.main(DriverWrapper.scala:40)
        at`enter code here` org.apache.spark.deploy.worker.DriverWrapper.main(DriverWrapper.scala)
Caused by: org.apache.hadoop.hive.ql.metadata.HiveException: org.apache.thrift.transport.TTransportException: java.net.SocketTimeoutException: Read timed out
        at org.apache.hadoop.hive.ql.metadata.Hive.getAllPartitionsOf(Hive.java:1785)
        at org.apache.spark.sql.hive.HiveShim$.getAllPartitionsOf(Shim13.scala:316)
        at org.apache.spark.sql.hive.HiveMetastoreCatalog.lookupRelation(HiveMetastoreCatalog.scala:86)
        at org.apache.spark.sql.hive.HiveContext$$anon$1.org$apache$spark$sql$catalyst$analysis$OverrideCatalog$$super$lookupRelation(HiveContext.scala:253)
        at org.apache.spark.sql.catalyst.analysis.OverrideCatalog$$anonfun$lookupRelation$3.apply(Catalog.scala:137)
        at org.apache.spark.sql.catalyst.analysis.OverrideCatalog$$anonfun$lookupRelation$3.apply(Catalog.scala:137)
        at scala.Option.getOrElse(Option.scala:120)
        at org.apache.spark.sql.catalyst.analysis.OverrideCatalog$class.lookupRelation(Catalog.scala:137)
        at org.apache.spark.sql.hive.HiveContext$$anon$1.lookupRelation(HiveContext.scala:253)
        at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveRelations$$anonfun$apply$5.applyOrElse(Analyzer.scala:143)
        at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveRelations$$anonfun$apply$5.applyOrElse(Analyzer.scala:138)
        at org.apache.spark.sql.catalyst.trees.TreeNode.transformDown(TreeNode.scala:144)
        at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$4.apply(TreeNode.scala:162)
        at scala.collection.Iterator$$anon$11.next(Iterator.scala:328)
        at scala.collection.Iterator$class.foreach(Iterator.scala:727)
        at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
        at scala.collection.generic.Growable$class.$plus$plus$eq(Growable.scala:48)
        at scala.collection.mutable.ArrayBuffer.$plus$plus$eq(ArrayBuffer.scala:103)
{noformat}


---

* [SPARK-5402](https://issues.apache.org/jira/browse/SPARK-5402) | *Minor* | **Log executor ID at executor-construction time**

One stumbling block I've hit while debugging Spark-on-YARN jobs is that {{yarn logs}} presents each executor's stderr/stdout by container name, but I often need to find the logs for a specific executor ID; the executor ID isn't printed anywhere convenient in each executor's logs, afaict.

I added a simple {{logInfo}} to {{Executor.scala}} locally and it's been useful, so I'd like to merge it upstream.

PR forthcoming.


---

* [SPARK-5401](https://issues.apache.org/jira/browse/SPARK-5401) | *Major* | **Executor ID should be set before MetricsSystem is created**

MetricsSystem construction [attempts to namespace metrics from each executor using that executor's ID|https://github.com/apache/spark/blob/0d1e67ee9b29b51bccfc8a319afe9f9b4581afc8/core/src/main/scala/org/apache/spark/metrics/MetricsSystem.scala#L131].

The ID is [currently set at Executor construction time|https://github.com/apache/spark/blob/0d1e67ee9b29b51bccfc8a319afe9f9b4581afc8/core/src/main/scala/org/apache/spark/executor/Executor.scala#L76-L79] (uncoincidentally, just before the {{ExecutorSource}} is registered), but this is after the {{MetricsSystem}} has been initialized (which [happens during {{SparkEnv}} construction|https://github.com/apache/spark/blob/0d1e67ee9b29b51bccfc8a319afe9f9b4581afc8/core/src/main/scala/org/apache/spark/SparkEnv.scala#L323-L332], which itself happens during {{ExecutorBackend}} construction, *before* {{Executor}} construction).

I noticed this problem because I wasn't seeing any JVM metrics from my executors in a Graphite dashboard I've set up; turns out all the executors (and the driver) were namespacing their metrics under "<driver>", and Graphite responds to such a situation by only taking the last value it receives for each "metric" within a configurable time window (e.g. 10s). I was seeing per-executor metrics, properly namespaced with each executor's ID, from {{ExecutorSource}}, which as I mentioned above is registered after the executor ID is set.

I have a one-line fix for this that I will submit shortly.


---

* [SPARK-5382](https://issues.apache.org/jira/browse/SPARK-5382) | *Minor* | **Scripts do not use SPARK\_CONF\_DIR where they should**

h5.spark-class:
{code}
# Load extra JAVA\_OPTS from conf/java-opts, if it exists
if [ -e "$FWDIR/conf/java-opts" ] ; then
  JAVA\_OPTS="$JAVA\_OPTS `cat "$FWDIR"/conf/java-opts`"
fi
{code}

h5.spark-submit:
{code}
DEFAULT\_PROPERTIES\_FILE="$SPARK\_HOME/conf/spark-defaults.conf"
{code}


---

* [SPARK-5355](https://issues.apache.org/jira/browse/SPARK-5355) | *Blocker* | **SparkConf is not thread-safe**

The SparkConf is not thread-safe, but is accessed by many threads. The getAll() could return parts of the configs if another thread is access it.


---

* [SPARK-5351](https://issues.apache.org/jira/browse/SPARK-5351) | *Major* | **Can't zip RDDs with unequal numbers of partitions in ReplicatedVertexView.upgrade()**

If the value of 'spark.default.parallelism' does not match the number of partitoins in EdgePartition(EdgeRDDImpl), 
the following error occurs in ReplicatedVertexView.scala:72;

object GraphTest extends Logging {
def run[VD: ClassTag, ED: ClassTag](graph: Graph[VD, ED]): VertexRDD[Int] = {
graph.aggregateMessages[Int](
ctx => {
ctx.sendToSrc(1)
ctx.sendToDst(2)
},
\_ + \_)
}
}

val g = GraphLoader.edgeListFile(sc, "graph.txt")
val rdd = GraphTest.run(g)

java.lang.IllegalArgumentException: Can't zip RDDs with unequal numbers of partitions
	at org.apache.spark.rdd.ZippedPartitionsBaseRDD.getPartitions(ZippedPartitionsRDD.scala:57)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:206)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:204)
	at scala.Option.getOrElse(Option.scala:120)
	at org.apache.spark.rdd.RDD.partitions(RDD.scala:204)
	at org.apache.spark.rdd.MapPartitionsRDD.getPartitions(MapPartitionsRDD.scala:32)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:206)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:204)
	at scala.Option.getOrElse(Option.scala:120)
	at org.apache.spark.rdd.RDD.partitions(RDD.scala:204)
	at org.apache.spark.ShuffleDependency.<init>(Dependency.scala:82)
	at org.apache.spark.rdd.ShuffledRDD.getDependencies(ShuffledRDD.scala:80)
	at org.apache.spark.rdd.RDD$$anonfun$dependencies$2.apply(RDD.scala:193)
	at org.apache.spark.rdd.RDD$$anonfun$dependencies$2.apply(RDD.scala:191)
    ...


---

* [SPARK-5308](https://issues.apache.org/jira/browse/SPARK-5308) | *Minor* | **MD5 / SHA1 hash format doesn't match standard Maven output**

https://repo1.maven.org/maven2/org/apache/spark/spark-core\_2.10/1.2.0/spark-core\_2.10-1.2.0.pom.md5

The above does not look like a proper md5 which is causing failure in some build tools like leiningen.
https://github.com/technomancy/leiningen/issues/1802

Compare this with 1.1.0 release
https://repo1.maven.org/maven2/org/apache/spark/spark-core\_2.10/1.1.0/spark-core\_2.10-1.1.0.pom.md5


---

* [SPARK-5289](https://issues.apache.org/jira/browse/SPARK-5289) | *Blocker* | **Backport publishing of repl, yarn into branch-1.2**

In SPARK-3452 we did some clean-up of published artifacts that turned out to adversely affect some users. This has been mostly patched up in master via SPARK-4925 (hive-thritserver) which was backported. For the repl and yarn modules, they were fixed in SPARK-4048 as part of a larger change that only went into master.

Those pieces should be backported to Spark 1.2 to allow publishing in a 1.2.1 release.


---

* [SPARK-5282](https://issues.apache.org/jira/browse/SPARK-5282) | *Trivial* | **RowMatrix easily gets int overflow in the memory size warning**

The warning in the RowMatrix will easily get int overflow when the cols is larger than 16385.

minor issue.


---

* [SPARK-5275](https://issues.apache.org/jira/browse/SPARK-5275) | *Blocker* | **pyspark.streaming is not included in assembly jar**

The pyspark.streaming is not included in assembly jar of spark.


---

* [SPARK-5254](https://issues.apache.org/jira/browse/SPARK-5254) | *Major* | **Update the user guide to make clear that spark.mllib is not being deprecated**

The current statement in the user guide may deliver confusing messages to users. spark.ml contains high-level APIs for building ML pipelines. But it doesn't mean that spark.mllib is being deprecated.

First of all, the pipeline API is in its alpha stage and we need to see more use cases from the community to stabilizes it, which may take several releases. Secondly, the components in spark.ml are simple wrappers over spark.mllib implementations. Neither the APIs or the implementations from spark.mllib are being deprecated. We expect users use spark.ml pipeline APIs to build their ML pipelines, but we will keep supporting and adding features to spark.mllib. For example, there are many features in review at https://spark-prs.appspot.com/#mllib. So users should be comfortable with using spark.mllib features and expect more coming. The user guide needs to be updated to make the message clear.


---

* [SPARK-5234](https://issues.apache.org/jira/browse/SPARK-5234) | *Trivial* | **examples for ml don't have sparkContext.stop**

Not sure why sc.stop() is not in the 
org.apache.spark.examples.ml {CrossValidatorExample, SimpleParamsExample, SimpleTextClassificationPipeline}. 

I can prepare a PR if it's not intentional to omit the call to stop.


---

* [SPARK-5233](https://issues.apache.org/jira/browse/SPARK-5233) | *Major* | **Error replay of WAL when recovered from driver failue**

Spark Streaming will write all the event into WAL for driver recovery, the sequence in the WAL may be like this:

{code}

BlockAdditionEvent ---> BlockAdditionEvent ---> BlockAdditionEvent ---> BatchAllocationEvent ---> BatchCleanupEvent ---> BlockAdditionEvent ---> BlockAdditionEvent ---> 'Driver Down Time' ---> BlockAdditionEvent ---> BlockAdditionEvent ---> BatchAllocationEvent

{code}

When driver recovered from failure, it will replay all the existed metadata WAL to get the right status, in this situation, two BatchAdditionEvent before down will put into received block queue. After driver started, new incoming blocking will also put into this queue and a follow-up BlockAllocationEvent will allocate an allocatedBlocks with queue draining out. So old, not this batch's data will also mix into this batch, here is the partial log:

{code}
15/01/13 17:19:10 INFO KafkaInputDStream: >>>>>>>>>block store result for batch 1421140750000 ms
....
15/01/13 17:19:10 INFO KafkaInputDStream: >>>>>>>>>>>>>log segment: WriteAheadLogFileSegment(file:       /home/jerryshao/project/apache-spark/checkpoint-wal-test/receivedData/0/log-1421140593201-14211406       53201,46704,480)
197757 15/01/13 17:19:10 INFO KafkaInputDStream: >>>>>>>>>>>>>log segment: WriteAheadLogFileSegment(file:       /home/jerryshao/project/apache-spark/checkpoint-wal-test/receivedData/0/log-1421140593201-14211406       53201,47188,480)
197758 15/01/13 17:19:10 INFO KafkaInputDStream: >>>>>>>>>>>>>log segment: WriteAheadLogFileSegment(file:       /home/jerryshao/project/apache-spark/checkpoint-wal-test/receivedData/0/log-1421140593201-14211406       53201,47672,480)
197759 15/01/13 17:19:10 INFO KafkaInputDStream: >>>>>>>>>>>>>log segment: WriteAheadLogFileSegment(file:       /home/jerryshao/project/apache-spark/checkpoint-wal-test/receivedData/0/log-1421140593201-14211406       53201,48156,480)                                                                                  
197760 15/01/13 17:19:10 INFO KafkaInputDStream: >>>>>>>>>>>>>log segment: WriteAheadLogFileSegment(file:       /home/jerryshao/project/apache-spark/checkpoint-wal-test/receivedData/0/log-1421140593201-14211406       53201,48640,480)
197761 15/01/13 17:19:10 INFO KafkaInputDStream: >>>>>>>>>>>>>log segment: WriteAheadLogFileSegment(file:       /home/jerryshao/project/apache-spark/checkpoint-wal-test/receivedData/0/log-1421140593201-14211406       53201,49124,480)
197762 15/01/13 17:19:10 INFO KafkaInputDStream: >>>>>>>>>>>>>log segment: WriteAheadLogFileSegment(file:       /home/jerryshao/project/apache-spark/checkpoint-wal-test/receivedData/0/log-1421140747074-14211408       07074,0,44184)
197763 15/01/13 17:19:10 INFO KafkaInputDStream: >>>>>>>>>>>>>log segment: WriteAheadLogFileSegment(file:       /home/jerryshao/project/apache-spark/checkpoint-wal-test/receivedData/0/log-1421140747074-14211408       07074,44188,58536)
197764 15/01/13 17:19:10 INFO KafkaInputDStream: >>>>>>>>>>>>>log segment: WriteAheadLogFileSegment(file:       /home/jerryshao/project/apache-spark/checkpoint-wal-test/receivedData/0/log-1421140747074-14211408       07074,102728,60168)
197765 15/01/13 17:19:10 INFO KafkaInputDStream: >>>>>>>>>>>>>log segment: WriteAheadLogFileSegment(file:       /home/jerryshao/project/apache-spark/checkpoint-wal-test/receivedData/0/log-1421140747074-14211408       07074,162900,64584)
197766 15/01/13 17:19:10 INFO KafkaInputDStream: >>>>>>>>>>>>>log segment: WriteAheadLogFileSegment(file:       /home/jerryshao/project/apache-spark/checkpoint-wal-test/receivedData/0/log-1421140747074-14211408       07074,227488,51240)
{code}

The old log "/home/jerryshao/project/apache-spark/checkpoint-wal-test/receivedData/0/log-1421140593201-14211406" is obviously far older than current batch interval, and will fetch again to add to process.

This issue is subtle, because in the previous code we never delete the old received data WAL. This will lead to unwanted result as I know.

Basically because we miss some BlockAllocationEvent when recovered from failure. I think we need to correctly replay and insert all the events correctly.


---

* [SPARK-5224](https://issues.apache.org/jira/browse/SPARK-5224) | *Blocker* | **parallelize list/ndarray is really slow**

After the default batchSize changed to 0 (batched based on the size of object), but parallelize() still use BatchedSerializer with batchSize=1.

Also, BatchedSerializer did not work well with list and numpy.ndarray


---

* [SPARK-5223](https://issues.apache.org/jira/browse/SPARK-5223) | *Critical* | **Use pickle instead of MapConvert and ListConvert in MLlib Python API**

It will introduce problems if the object in dict/list/tuple can not support by py4j, such as Vector.

Also, pickle may have better performance for larger object (less RPC).

In some cases that the object in dict/list can not be pickled (such as JavaObject), we should still use MapConvert/ListConvert.

discussion: http://apache-spark-developers-list.1001551.n3.nabble.com/Python-to-Java-object-conversion-of-numpy-array-td10065.html


---

* [SPARK-5201](https://issues.apache.org/jira/browse/SPARK-5201) | *Major* | **ParallelCollectionRDD.slice(seq, numSlices) has int overflow when dealing with inclusive range**

{code}
 sc.makeRDD(1 to (Int.MaxValue)).count       // result = 0
 sc.makeRDD(1 to (Int.MaxValue - 1)).count   // result = 2147483646 = Int.MaxValue - 1
 sc.makeRDD(1 until (Int.MaxValue)).count    // result = 2147483646 = Int.MaxValue - 1
{code}
More details on the discussion https://github.com/apache/spark/pull/2874


---

* [SPARK-5200](https://issues.apache.org/jira/browse/SPARK-5200) | *Major* | **Disable web UI in Hive Thriftserver tests**

In our unit tests, we should disable the Spark Web UI when starting the Hive Thriftserver, since port contention during this test has been a cause of test failures on Jenkins.


---

* [SPARK-5187](https://issues.apache.org/jira/browse/SPARK-5187) | *Blocker* | **CACHE TABLE AS SELECT fails with Hive UDFs**

{code}
  test("CACHE TABLE with Hive UDF") {
    sql("CACHE TABLE udfTest AS SELECT * FROM src WHERE floor(key) = 1")
    assertCached(table("udfTest"))
    uncacheTable("udfTest")
  }
{code}


---

* [SPARK-5181](https://issues.apache.org/jira/browse/SPARK-5181) | *Major* | **inaccurate log when WAL is disabled**

Currently, even the logManager is not created, we still see the log entry 

s"Writing to log $record"

because of the following lines

{code:title=ReceivedBlockTracker.scala|borderStyle=solid}
/** Write an update to the tracker to the write ahead log */
  private def writeToLog(record: ReceivedBlockTrackerLogEvent) {
    logDebug(s"Writing to log $record")
    logManagerOption.foreach { logManager =>
        logManager.writeToLog(ByteBuffer.wrap(Utils.serialize(record)))
    }
  }
{code}


---

* [SPARK-5147](https://issues.apache.org/jira/browse/SPARK-5147) | *Blocker* | **write ahead logs from streaming receiver are not purged because cleanupOldBlocks in WriteAheadLogBasedBlockHandler is never called**

Hi all,

We are running a Spark streaming application with ReliableKafkaReceiver. We have "spark.streaming.receiver.writeAheadLog.enable" set to true so write ahead logs (WALs) for received data are created under receivedData/streamId folder in the checkpoint directory. 

However, old WALs are never purged by time. receivedBlockMetadata and checkpoint files are purged correctly though. I went through the code, WriteAheadLogBasedBlockHandler class in ReceivedBlockHandler.scala is responsible for cleaning up the old blocks. It has method cleanupOldBlocks, which is never called by any class. ReceiverSupervisorImpl class holds a WriteAheadLogBasedBlockHandler  instance. However, it only calls storeBlock method to create WALs but never calls cleanupOldBlocks method to purge old WALs.

The size of the WAL folder increases constantly on HDFS. This is preventing us from running the ReliableKafkaReceiver 24x7. Can somebody please take a look.

Thanks,
Max


---

* [SPARK-5136](https://issues.apache.org/jira/browse/SPARK-5136) | *Minor* | **Improve documentation around setting up Spark IntelliJ project**

[The documentation about setting up a Spark project in Intellij|http://spark.apache.org/docs/latest/building-spark.html#using-with-intellij-idea] is somewhat short/cryptic and targets [an IntelliJ version released in 2012|https://www.jetbrains.com/company/history.jsp]. A refresh / upgrade is probably warranted.


---

* [SPARK-5132](https://issues.apache.org/jira/browse/SPARK-5132) | *Minor* | **The name for get stage info atempt ID from Json was wrong**

stageInfoToJson: Stage Attempt Id
stageInfoFromJson: Attempt Id


---

* [SPARK-5130](https://issues.apache.org/jira/browse/SPARK-5130) | *Major* | **yarn-cluster mode should not be considered as client mode in spark-submit**

spark-submit will choose SparkSubmitDriverBootstrapper or SparkSubmit to launch according to --deploy-mode.
When submitting application using yarn-cluster we do not need to specify --deploy-mode so spark-submit will launch SparkSubmitDriverBootstrapper, and it is not proper to do this.


---

* [SPARK-5102](https://issues.apache.org/jira/browse/SPARK-5102) | *Minor* | **CompressedMapStatus needs to be registered with Kryo**

After upgrading from Spark 1.1.0 to 1.2.0 I got this exception:

{code}
Caused by: org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 0.0 failed 1 times, most recent failure: Lost task 0.0 in stage 0.0 (TID 0, localhost): java.lang.IllegalArgumentException: Class is not registered: org.apache.spark.scheduler.CompressedMapStatus
Note: To register this class use: kryo.register(org.apache.spark.scheduler.CompressedMapStatus.class);
	at com.esotericsoftware.kryo.Kryo.getRegistration(Kryo.java:442)
	at com.esotericsoftware.kryo.util.DefaultClassResolver.writeClass(DefaultClassResolver.java:79)
	at com.esotericsoftware.kryo.Kryo.writeClass(Kryo.java:472)
	at com.esotericsoftware.kryo.Kryo.writeClassAndObject(Kryo.java:565)
	at org.apache.spark.serializer.KryoSerializerInstance.serialize(KryoSerializer.scala:165)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:206)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
{code}

I had to register {{org.apache.spark.scheduler.CompressedMapStatus}} with Kryo. I think this should be done in {{spark/serializer/KryoSerializer.scala}}, unless instances of this class are not expected to be sent over the wire. (Maybe I'm doing something wrong?)


---

* [SPARK-5089](https://issues.apache.org/jira/browse/SPARK-5089) | *Major* | **Vector conversion broken for non-float64 arrays**

Prior to performing many MLlib operations in PySpark (e.g. KMeans), data are automatically converted to {{DenseVectors}}. If the data are numpy arrays with dtype {{float64}} this works. If data are numpy arrays with lower precision (e.g. {{float16}} or {{float32}}), they should be upcast to {{float64}}, but due to a small bug in this line this currently doesn't happen (casting is not inplace). 

{code:none}
if ar.dtype != np.float64:
    ar.astype(np.float64)
{code}
 
Non-float64 values are in turn mangled during SerDe. This can have significant consequences. For example, the following yields confusing and erroneous results:

{code:none}
from numpy import random
from pyspark.mllib.clustering import KMeans
data = sc.parallelize(random.randn(100,10).astype('float32'))
model = KMeans.train(data, k=3)
len(model.centers[0])
>> 5 # should be 10!
{code}

But this works fine:

{code:none}
data = sc.parallelize(random.randn(100,10).astype('float64'))
model = KMeans.train(data, k=3)
len(model.centers[0])
>> 10 # this is correct
{code}

The fix is trivial, I'll submit a PR shortly.


---

* [SPARK-5078](https://issues.apache.org/jira/browse/SPARK-5078) | *Critical* | **Allow setting Akka host name from env vars**

Current spark lets you set the ip address using SPARK\_LOCAL\_IP, but then this is given to akka after doing a reverse DNS lookup.  This makes it difficult to run spark in Docker.  You can already change the hostname that is used programmatically, but it would be nice to be able to do this with an environment variable.


---

* [SPARK-5064](https://issues.apache.org/jira/browse/SPARK-5064) | *Major* | **GraphX rmatGraph hangs**

org.apache.spark.graphx.util.GraphGenerators.rmatGraph(sc, 4, 8)

It just outputs "0 edges" and then locks up.

A spark-user message reports similar behavior:
http://mail-archives.apache.org/mod\_mbox/spark-user/201408.mbox/%3C1408617621830-12570.post@n3.nabble.com%3E


---

* [SPARK-5063](https://issues.apache.org/jira/browse/SPARK-5063) | *Major* | **Display more helpful error messages for several invalid operations**

Spark does not support nested RDDs or performing Spark actions inside of transformations; this usually leads to NullPointerExceptions (see SPARK-718 as one example).  The confusing NPE is one of the most common sources of Spark questions on StackOverflow:

- https://stackoverflow.com/questions/13770218/call-of-distinct-and-map-together-throws-npe-in-spark-library/14130534#14130534
- https://stackoverflow.com/questions/23793117/nullpointerexception-in-scala-spark-appears-to-be-caused-be-collection-type/23793399#23793399
- https://stackoverflow.com/questions/25997558/graphx-ive-got-nullpointerexception-inside-mapvertices/26003674#26003674

(those are just a sample of the ones that I've answered personally; there are many others).

I think we can detect these errors by adding logic to {{RDD}} to check whether {{sc}} is null (e.g. turn {{sc}} into a getter function); we can use this to add a better error message.

In PySpark, these errors manifest themselves slightly differently.  Attempting to nest RDDs or perform actions inside of transformations results in pickle-time errors:

{code}
rdd1 = sc.parallelize(range(100))
rdd2 = sc.parallelize(range(100))
rdd1.mapPartitions(lambda x: [rdd2.map(lambda x: x)])
{code}

produces

{code}
[...]
  File "/Users/joshrosen/anaconda/lib/python2.7/pickle.py", line 306, in save
    rv = reduce(self.proto)
  File "/Users/joshrosen/Documents/Spark/python/lib/py4j-0.8.2.1-src.zip/py4j/java\_gateway.py", line 538, in \_\_call\_\_
  File "/Users/joshrosen/Documents/Spark/python/lib/py4j-0.8.2.1-src.zip/py4j/protocol.py", line 304, in get\_return\_value
py4j.protocol.Py4JError: An error occurred while calling o21.\_\_getnewargs\_\_. Trace:
py4j.Py4JException: Method \_\_getnewargs\_\_([]) does not exist
	at py4j.reflection.ReflectionEngine.getMethod(ReflectionEngine.java:333)
	at py4j.reflection.ReflectionEngine.getMethod(ReflectionEngine.java:342)
	at py4j.Gateway.invoke(Gateway.java:252)
	at py4j.commands.AbstractCommand.invokeMethod(AbstractCommand.java:133)
	at py4j.commands.CallCommand.execute(CallCommand.java:79)
	at py4j.GatewayConnection.run(GatewayConnection.java:207)
	at java.lang.Thread.run(Thread.java:745)
{code}

We get the same error when attempting to broadcast an RDD in PySpark.  For Python, improved error reporting could be as simple as overriding the {{getnewargs}} method to throw a more useful UnsupportedOperation exception with a more helpful error message.

Users may also see confusing NPEs when calling methods on stopped SparkContexts, so I've added checks for that as well.


---

* [SPARK-5058](https://issues.apache.org/jira/browse/SPARK-5058) | *Minor* | **Typos and broken URL**

Spark Streaming + Kafka Integration Guide has a broken Examples link. Also project is spelled as projrect.


---

* [SPARK-5049](https://issues.apache.org/jira/browse/SPARK-5049) | *Major* | **ParquetTableScan always prepends the values of partition columns in output rows irrespective of the order of the partition columns in the original SELECT query**

This happens when ParquetTableScan is being used by turning on spark.sql.hive.convertMetastoreParquet

For example:

spark-sql> set spark.sql.hive.convertMetastoreParquet=true;

spark-sql> create table table1(a int , b int) partitioned by (p1 string, p2 int) ROW FORMAT SERDE 'parquet.hive.serde.ParquetHiveSerDe' STORED AS  INPUTFORMAT 'parquet.hive.DeprecatedParquetInputFormat' OUTPUTFORMAT 'parquet.hive.DeprecatedParquetOutputFormat';

spark-sql> insert into table table1 partition(p1='January',p2=1) select key, 10  from src;    

spark-sql> select a, b, p1, p2 from table1 limit 10;

January	1	484	10
January	1	484	10
January	1	484	10
January	1	484	10
January	1	484	10
January	1	484	10
January	1	484	10
January	1	484	10
January	1	484	10
January	1	484	10

The correct output should be 

484	10	January	1
484	10	January	1
484	10	January	1
484	10	January	1
484	10	January	1
484	10	January	1
484	10	January	1
484	10	January	1
484	10	January	1
484	10	January	1


This also leads to schema mismatch if the query is run using HiveContext and the result is a SchemaRDD.
For example :

scala> import org.apache.spark.sql.hive.\_
scala> val hc = new HiveContext(sc)
scala> hc.setConf("spark.sql.hive.convertMetastoreParquet", "true")
scala> val res = hc.sql("select a, b, p1, p2 from table1 limit 10")
scala> res.collect
res2: Array[org.apache.spark.sql.Row] = Array([January,1,238,10], [January,1,86,10], [January,1,311,10], [January,1,27,10], [January,1,165,10], [January,1,409,10], [January,1,255,10], [January,1,278,10], [January,1,98,10], [January,1,484,10])

scala> res.schema
res5: org.apache.spark.sql.StructType = StructType(ArrayBuffer(StructField(a,IntegerType,true), StructField(b,IntegerType,true), StructField(p1,StringType,true), StructField(p2,IntegerType,true)))


---

* [SPARK-5035](https://issues.apache.org/jira/browse/SPARK-5035) | *Critical* | **Streaming ReceiverMessage trait should extend Serializable**

Spark Streaming's {{ReceiverMessage}} trait should extend Serializable in order to fix a subtle bug that only occurs when running on a real cluster:

If you attempt to send a fire-and-forget message to a remote Akka actor and that message cannot be serialized, then this seems to lead to more-or-less silent failures.  As an optimization, Akka skips message serialization for messages sent within the same JVM.  As a result, Spark's unit tests will never fail due to non-serializable Akka messages, but these will cause mostly-silent failures when running on a real cluster.

Here's the current code for ReceiverMessage:

{code}
/** Messages sent to the NetworkReceiver. */
private[streaming] sealed trait ReceiverMessage
private[streaming] object StopReceiver extends ReceiverMessage
{code}

Since {{ReceiverMessage}} does not extend Serializable and {{StopReceiver}} is a regular {{object}}, not a {{case object}}, {{StopReceiver}} will throw serialization errors.  As a result, graceful receiver shutdown is broken on real clusters but works in {{local}} and {{local-cluster}} modes.  If you want to reproduce this, try running the word count example from the Streaming Programming Guide in the Spark shell:

{code}
import org.apache.spark.\_
import org.apache.spark.streaming.\_
import org.apache.spark.streaming.StreamingContext.\_
val ssc = new StreamingContext(sc, Seconds(10))
// Create a DStream that will connect to hostname:port, like localhost:9999
val lines = ssc.socketTextStream("localhost", 9999)
// Split each line into words
val words = lines.flatMap(\_.split(" "))
import org.apache.spark.streaming.StreamingContext.\_
// Count each word in each batch
val pairs = words.map(word => (word, 1))
val wordCounts = pairs.reduceByKey(\_ + \_)

// Print the first ten elements of each RDD generated in this DStream to the console
wordCounts.print()
ssc.start()
Thread.sleep(10000)
ssc.stop(true, true)
{code}

This will work correctly in local mode but fail when running against a real cluster (try sbin/start-all.sh to test this locally).


---

* [SPARK-5026](https://issues.apache.org/jira/browse/SPARK-5026) | *Minor* | **PySpark rdd.randomSpit() is not documented**

In the current latest version of Spark (1.2.0) If you go to the Python API, in the RDD section, there is no documentation for rdd.randomSplit(): http://spark.apache.org/docs/latest/api/python/pyspark.html#pyspark.RDD

Nevertheless, it is used as an example in the 1.2.0 documentation for mllib: http://spark.apache.org/docs/latest/mllib-ensembles.html#regression

(It's in the Python code tab, you can *Ctrl+F* and search for "randomSplit").

But looking in the code, it seems implemented: https://github.com/apache/spark/blob/branch-1.2/python/pyspark/rdd.py#L322


---

* [SPARK-5006](https://issues.apache.org/jira/browse/SPARK-5006) | *Major* | **spark.port.maxRetries doesn't work**

We normally config spark.port.maxRetries in properties file or SparkConf. But in Utils.scala it read from SparkEnv's conf. As SparkEnv is an object whose env need to be set after JVM is launched and Utils.scala is also an object. So in most cases portMaxRetries will get the default value 16.


---

* [SPARK-4999](https://issues.apache.org/jira/browse/SPARK-4999) | *Major* | **No need to put WAL-backed block into block manager by default**

Currently WAL-backed block is read out from HDFS and put into BlockManger with storage level MEMORY\_ONLY\_SER by default, since WAL-backed block is already fault-tolerant, no need to put into BlockManger again by default.


---

* [SPARK-4973](https://issues.apache.org/jira/browse/SPARK-4973) | *Major* | **Local directory in the driver of client-mode continues remaining even if application finished when external shuffle is enabled**

When we enables external shuffle service, local directories in the driver of client-mode continue remaining even if application has finished.
I think local directories for drivers should be deleted.


---

* [SPARK-4968](https://issues.apache.org/jira/browse/SPARK-4968) | *Major* | **[SparkSQL] java.lang.UnsupportedOperationException when hive partition doesn't exist and order by and limit are used**

Create table with partitions
run query for partition which doesn't exist and contains order by and limit

I am running queries in hiveContext

1. Create hive table
{code}
create table if not exists testTable (ID1 BIGINT, ID2 BIGINT,Start\_Time STRING, End\_Time STRING) PARTITIONED BY (Region STRING,Market STRING)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;
{code}

2. Create data
{code}
1,2,"2014-11-01","2014-11-02"
2,3,"2014-11-01","2014-11-02"
3,4,"2014-11-01","2014-11-02"
{code}

3. Load data in hive
{code}
LOAD DATA LOCAL INPATH '/tmp/input.txt' OVERWRITE INTO TABLE testTable PARTITION (Region="North", market='market1');
{code}

4. run query
{code}
SELECT * FROM testTable WHERE market = 'market2' ORDER BY End\_Time DESC LIMIT 100;


Error trace
java.lang.UnsupportedOperationException: empty collection
	at org.apache.spark.rdd.RDD$$anonfun$reduce$1.apply(RDD.scala:863)
	at org.apache.spark.rdd.RDD$$anonfun$reduce$1.apply(RDD.scala:863)
	at scala.Option.getOrElse(Option.scala:120)
	at org.apache.spark.rdd.RDD.reduce(RDD.scala:863)
	at org.apache.spark.rdd.RDD.takeOrdered(RDD.scala:1136)
	at org.apache.spark.sql.execution.TakeOrdered.executeCollect(basicOperators.scala:171)
	at org.apache.spark.sql.SchemaRDD.collect(SchemaRDD.scala:438)
{code}


---

* [SPARK-4966](https://issues.apache.org/jira/browse/SPARK-4966) | *Major* | **The MemoryOverhead value is not correct**

The value of amMemory and executorMemory is changed in parseArgs method. But the amMemoryOverhead and executorMemoryOverhead are setted before i. So the MemoryOverhead will not changed if amMemory changed, also “math.max” has no meaning.


---

* [SPARK-4959](https://issues.apache.org/jira/browse/SPARK-4959) | *Blocker* | **Attributes are case sensitive when using a select query from a projection**

Per [~marmbrus], see this line of code, where we should be using an attribute map
 https://github.com/apache/spark/blob/master/sql/catalyst/src/main/scala/org/apache/spark/sql/catalyst/optimizer/Optimizer.scala#L147

To reproduce, i ran the following in the Spark shell:

{code}
import sqlContext.\_
sql("drop table if exists test")
sql("create table test (col1 string)")
sql("""insert into table test select "hi" from prejoined limit 1""")
val projection = "col1".attr.as(Symbol("CaseSensitiveColName")) :: "col1".attr.as(Symbol("CaseSensitiveColName2")) :: Nil
sqlContext.table("test").select(projection:\_*).registerTempTable("test2")

# This succeeds.
sql("select CaseSensitiveColName from test2").first()

# This fails with java.util.NoSuchElementException: key not found: casesensitivecolname#23046
sql("select casesensitivecolname from test2").first()
{code}

The full stack trace printed for the final command that is failing: 
{code}
java.util.NoSuchElementException: key not found: casesensitivecolname#23046
	at scala.collection.MapLike$class.default(MapLike.scala:228)
	at org.apache.spark.sql.catalyst.expressions.AttributeMap.default(AttributeMap.scala:29)
	at scala.collection.MapLike$class.apply(MapLike.scala:141)
	at org.apache.spark.sql.catalyst.expressions.AttributeMap.apply(AttributeMap.scala:29)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
	at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
	at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
	at scala.collection.AbstractTraversable.map(Traversable.scala:105)
	at org.apache.spark.sql.hive.execution.HiveTableScan.<init>(HiveTableScan.scala:57)
	at org.apache.spark.sql.hive.HiveStrategies$HiveTableScans$$anonfun$14.apply(HiveStrategies.scala:221)
	at org.apache.spark.sql.hive.HiveStrategies$HiveTableScans$$anonfun$14.apply(HiveStrategies.scala:221)
	at org.apache.spark.sql.SQLContext$SparkPlanner.pruneFilterProject(SQLContext.scala:378)
	at org.apache.spark.sql.hive.HiveStrategies$HiveTableScans$.apply(HiveStrategies.scala:217)
	at org.apache.spark.sql.catalyst.planning.QueryPlanner$$anonfun$1.apply(QueryPlanner.scala:58)
	at org.apache.spark.sql.catalyst.planning.QueryPlanner$$anonfun$1.apply(QueryPlanner.scala:58)
	at scala.collection.Iterator$$anon$13.hasNext(Iterator.scala:371)
	at org.apache.spark.sql.catalyst.planning.QueryPlanner.apply(QueryPlanner.scala:59)
	at org.apache.spark.sql.catalyst.planning.QueryPlanner.planLater(QueryPlanner.scala:54)
	at org.apache.spark.sql.execution.SparkStrategies$BasicOperators$.apply(SparkStrategies.scala:285)
	at org.apache.spark.sql.catalyst.planning.QueryPlanner$$anonfun$1.apply(QueryPlanner.scala:58)
	at org.apache.spark.sql.catalyst.planning.QueryPlanner$$anonfun$1.apply(QueryPlanner.scala:58)
	at scala.collection.Iterator$$anon$13.hasNext(Iterator.scala:371)
	at org.apache.spark.sql.catalyst.planning.QueryPlanner.apply(QueryPlanner.scala:59)
	at org.apache.spark.sql.SQLContext$QueryExecution.sparkPlan$lzycompute(SQLContext.scala:418)
	at org.apache.spark.sql.SQLContext$QueryExecution.sparkPlan(SQLContext.scala:416)
	at org.apache.spark.sql.SQLContext$QueryExecution.executedPlan$lzycompute(SQLContext.scala:422)
	at org.apache.spark.sql.SQLContext$QueryExecution.executedPlan(SQLContext.scala:422)
	at org.apache.spark.sql.SchemaRDD.collect(SchemaRDD.scala:444)
	at org.apache.spark.sql.SchemaRDD.take(SchemaRDD.scala:446)
	at org.apache.spark.sql.SchemaRDD.take(SchemaRDD.scala:108)
	at org.apache.spark.rdd.RDD.first(RDD.scala:1093)
{code}


---

* [SPARK-4952](https://issues.apache.org/jira/browse/SPARK-4952) | *Major* | **Handle ConcurrentModificationExceptions in SparkEnv.environmentDetails**

the log:
{noformat}
Exception in thread "main" 14/12/24 12:00:25 INFO cluster.YarnClientSchedulerBackend: Add WebUI Filter. org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter, Map(PROXY\_HOSTS -> tuan200, PROXY\_URI\_BASES -> http://host:9082/proxy/application\_1414231702825\_488625), /proxy/application\_1414231702825\_488625
java.util.ConcurrentModificationException
        at java.util.Hashtable$Enumerator.next(Hashtable.java:1167)
        at scala.collection.convert.Wrappers$JPropertiesWrapper$$anon$3.next(Wrappers.scala:458)
        at scala.collection.convert.Wrappers$JPropertiesWrapper$$anon$3.next(Wrappers.scala:454)
        at scala.collection.Iterator$class.toStream(Iterator.scala:1143)
        at scala.collection.AbstractIterator.toStream(Iterator.scala:1157)
        at scala.collection.Iterator$$anonfun$toStream$1.apply(Iterator.scala:1143)
        at scala.collection.Iterator$$anonfun$toStream$1.apply(Iterator.scala:1143)
        at scala.collection.immutable.Stream$Cons.tail(Stream.scala:1085)
        at scala.collection.immutable.Stream$Cons.tail(Stream.scala:1077)
        at scala.collection.immutable.Stream$$anonfun$filteredTail$1.apply(Stream.scala:1149)
        at scala.collection.immutable.Stream$$anonfun$filteredTail$1.apply(Stream.scala:1149)
        at scala.collection.immutable.Stream$Cons.tail(Stream.scala:1085)
        at scala.collection.immutable.Stream$Cons.tail(Stream.scala:1077)
        at scala.collection.immutable.Stream.length(Stream.scala:284)
        at scala.collection.SeqLike$class.sorted(SeqLike.scala:608)
        at scala.collection.AbstractSeq.sorted(Seq.scala:40)
        at org.apache.spark.SparkEnv$.environmentDetails(SparkEnv.scala:324)
        at org.apache.spark.SparkContext.postEnvironmentUpdate(SparkContext.scala:1319)
        at org.apache.spark.SparkContext.<init>(SparkContext.scala:344)
        at com.zhe800.toona.als.computation.DealCF$.main(DealCF.scala:497)
        at com.zhe800.toona.als.computation.DealCF.main(DealCF.scala)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:606)
        at org.apache.spark.deploy.SparkSubmit$.launch(SparkSubmit.scala:329)
        at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:75)
        at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)
14/12/24 12:00:25 INFO ui.JettyUtils: Adding filter: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
{noformat}


---

* [SPARK-4951](https://issues.apache.org/jira/browse/SPARK-4951) | *Major* | **A busy executor may be killed when dynamicAllocation is enabled**

If a task runs more than `spark.dynamicAllocation.executorIdleTimeout`, the executor which runs this task will be killed.

The following steps (yarn-client mode) can reproduce this bug:
1. Start `spark-shell` using
{code}
./bin/spark-shell --conf "spark.shuffle.service.enabled=true" \
    --conf "spark.dynamicAllocation.minExecutors=1" \
    --conf "spark.dynamicAllocation.maxExecutors=4" \
    --conf "spark.dynamicAllocation.enabled=true" \
    --conf "spark.dynamicAllocation.executorIdleTimeout=30" \
    --master yarn-client \
    --driver-memory 512m \
    --executor-memory 512m \
    --executor-cores 1
{code}

2. Wait more than 30 seconds until there is only one executor.
3. Run the following code (a task needs at least 50 seconds to finish)
{code}
val r = sc.parallelize(1 to 1000, 20).map{t => Thread.sleep(1000); t}.groupBy(\_ % 2).collect()
{code}
4. Executors will be killed and allocated all the time, which makes the Job fail.


---

* [SPARK-4943](https://issues.apache.org/jira/browse/SPARK-4943) | *Major* | **Parsing error for query with table name having dot**

When integrating Spark 1.2.0 with Cassandra SQL, the following query is broken. It was working for Spark 1.1.0 version. Basically we use the table name having dot to include database name 

{code}
[info]   java.lang.RuntimeException: [1.29] failure: ``UNION'' expected but `.' found
[info] 

[info] SELECT test1.a FROM sql\_test.test1 AS test1 UNION DISTINCT SELECT test2.a FROM sql\_test.test2 AS test2
[info]                             ^
[info]   at scala.sys.package$.error(package.scala:27)
[info]   at org.apache.spark.sql.catalyst.AbstractSparkSQLParser.apply(SparkSQLParser.scala:33)
[info]   at org.apache.spark.sql.SQLContext$$anonfun$1.apply(SQLContext.scala:79)
[info]   at org.apache.spark.sql.SQLContext$$anonfun$1.apply(SQLContext.scala:79)
[info]   at org.apache.spark.sql.catalyst.SparkSQLParser$$anonfun$org$apache$spark$sql$catalyst$SparkSQLParser$$others$1.apply(SparkSQLParser.scala:174)
[info]   at org.apache.spark.sql.catalyst.SparkSQLParser$$anonfun$org$apache$spark$sql$catalyst$SparkSQLParser$$others$1.apply(SparkSQLParser.scala:173)
[info]   at scala.util.parsing.combinator.Parsers$Success.map(Parsers.scala:136)
[info]   at scala.util.parsing.combinator.Parsers$Success.map(Parsers.scala:135)
[info]   at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:242)
[info]   at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:242)
[info]   at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:222)
[info]   at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1$$anonfun$apply$2.apply(Parsers.scala:254)
[info]   at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1$$anonfun$apply$2.apply(Parsers.scala:254)
[info]   at scala.util.parsing.combinator.Parsers$Failure.append(Parsers.scala:202)
[info]   at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:254)
[info]   at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:254)
[info]   at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:222)
[info]   at scala.util.parsing.combinator.Parsers$$anon$2$$anonfun$apply$14.apply(Parsers.scala:891)
[info]   at scala.util.parsing.combinator.Parsers$$anon$2$$anonfun$apply$14.apply(Parsers.scala:891)
[info]   at scala.util.DynamicVariable.withValue(DynamicVariable.scala:57)
[info]   at scala.util.parsing.combinator.Parsers$$anon$2.apply(Parsers.scala:890)
[info]   at scala.util.parsing.combinator.PackratParsers$$anon$1.apply(PackratParsers.scala:110)
[info]   at org.apache.spark.sql.catalyst.AbstractSparkSQLParser.apply(SparkSQLParser.scala:31)
[info]   at org.apache.spark.sql.SQLContext$$anonfun$parseSql$1.apply(SQLContext.scala:83)
[info]   at org.apache.spark.sql.SQLContext$$anonfun$parseSql$1.apply(SQLContext.scala:83)
[info]   at scala.Option.getOrElse(Option.scala:120)
[info]   at org.apache.spark.sql.SQLContext.parseSql(SQLContext.scala:83)
[info]   at org.apache.spark.sql.cassandra.CassandraSQLContext.cassandraSql(CassandraSQLContext.scala:53)
[info]   at org.apache.spark.sql.cassandra.CassandraSQLContext.sql(CassandraSQLContext.scala:56)
[info]   at com.datastax.spark.connector.sql.CassandraSQLSpec$$anonfun$20.apply$mcV$sp(CassandraSQLSpec.scala:169)
[info]   at com.datastax.spark.connector.sql.CassandraSQLSpec$$anonfun$20.apply(CassandraSQLSpec.scala:168)
[info]   at com.datastax.spark.connector.sql.CassandraSQLSpec$$anonfun$20.apply(CassandraSQLSpec.scala:168)
[info]   at org.scalatest.Transformer$$anonfun$apply$1.apply$mcV$sp(Transformer.scala:22)
[info]   at org.scalatest.OutcomeOf$class.outcomeOf(OutcomeOf.scala:85)
[info]   at org.scalatest.OutcomeOf$.outcomeOf(OutcomeOf.scala:104)
[info]   at org.scalatest.Transformer.apply(Transformer.scala:22)
[info]   at org.scalatest.Transformer.apply(Transformer.scala:20)
[info]   at org.scalatest.FlatSpecLike$$anon$1.apply(FlatSpecLike.scala:1647)
[info]   at org.scalatest.Suite$class.withFixture(Suite.scala:1122)
[info]   at org.scalatest.FlatSpec.withFixture(FlatSpec.scala:1683)
[info]   at org.scalatest.FlatSpecLike$class.invokeWithFixture$1(FlatSpecLike.scala:1644)
[info]   at org.scalatest.FlatSpecLike$$anonfun$runTest$1.apply(FlatSpecLike.scala:1656)
[info]   at org.scalatest.FlatSpecLike$$anonfun$runTest$1.apply(FlatSpecLike.scala:1656)
[info]   at org.scalatest.SuperEngine.runTestImpl(Engine.scala:306)
[info]   at org.scalatest.FlatSpecLike$class.runTest(FlatSpecLike.scala:1656)
[info]   at org.scalatest.FlatSpec.runTest(FlatSpec.scala:1683)
[info]   at org.scalatest.FlatSpecLike$$anonfun$runTests$1.apply(FlatSpecLike.scala:1714)
[info]   at org.scalatest.FlatSpecLike$$anonfun$runTests$1.apply(FlatSpecLike.scala:1714)
[info]   at org.scalatest.SuperEngine$$anonfun$traverseSubNodes$1$1.apply(Engine.scala:413)
[info]   at org.scalatest.SuperEngine$$anonfun$traverseSubNodes$1$1.apply(Engine.scala:401)
[info]   at scala.collection.immutable.List.foreach(List.scala:318)
[info]   at org.scalatest.SuperEngine.traverseSubNodes$1(Engine.scala:401)
[info]   at org.scalatest.SuperEngine.org$scalatest$SuperEngine$$runTestsInBranch(Engine.scala:396)
[info]   at org.scalatest.SuperEngine.runTestsImpl(Engine.scala:483)
[info]   at org.scalatest.FlatSpecLike$class.runTests(FlatSpecLike.scala:1714)
[info]   at org.scalatest.FlatSpec.runTests(FlatSpec.scala:1683)
[info]   at org.scalatest.Suite$class.run(Suite.scala:1424)
[info]   at org.scalatest.FlatSpec.org$scalatest$FlatSpecLike$$super$run(FlatSpec.scala:1683)
[info]   at org.scalatest.FlatSpecLike$$anonfun$run$1.apply(FlatSpecLike.scala:1760)
[info]   at org.scalatest.FlatSpecLike$$anonfun$run$1.apply(FlatSpecLike.scala:1760)
[info]   at org.scalatest.SuperEngine.runImpl(Engine.scala:545)
[info]   at org.scalatest.FlatSpecLike$class.run(FlatSpecLike.scala:1760)
[info]   at org.scalatest.FlatSpec.run(FlatSpec.scala:1683)
[info]   at org.scalatest.tools.Framework.org$scalatest$tools$Framework$$runSuite(Framework.scala:466)
[info]   at org.scalatest.tools.Framework$ScalaTestTask.execute(Framework.scala:677)
[info]   at sbt.ForkMain$Run$2.call(ForkMain.java:294)
[info]   at sbt.ForkMain$Run$2.call(ForkMain.java:284)
[info]   at java.util.concurrent.FutureTask.run(FutureTask.java:262)
[info]   at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
[info]   at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
[info]   at java.lang.Thread.run(Thread.java:745)
[info] - should allow to select rows with union distinct clause *** FAILED *** (46 milliseconds)
[info]   java.lang.RuntimeException: [1.29] failure: ``UNION'' expected but `.' found
{code}


---

* [SPARK-4932](https://issues.apache.org/jira/browse/SPARK-4932) | *Trivial* | **Add help comments in Analytics**

Add help comments for taskType in Analytics.


---

* [SPARK-4931](https://issues.apache.org/jira/browse/SPARK-4931) | *Trivial* | **Fix the messy format about log4j in running-on-yarn.md**

The format about log4j in running-on-yarn.md is a bit messy.


---

* [SPARK-4929](https://issues.apache.org/jira/browse/SPARK-4929) | *Major* | **Yarn Client mode can not support the HA after the exitcode change**

Nowadays, yarn-client will exit directly when the HA change happens no matter how many times the am should retry.


---

* [SPARK-4920](https://issues.apache.org/jira/browse/SPARK-4920) | *Minor* | **current spark version in UI is not striking**

It is not convenient to see the Spark version. We can keep the same style with Spark website.

!https://raw.githubusercontent.com/uncleGen/Tech-Notes/master/spark\_version.jpg!


---

* [SPARK-4915](https://issues.apache.org/jira/browse/SPARK-4915) | *Major* | **Wrong classname of external shuffle service in the doc for dynamic allocation**

docs/job-scheduling.md says as follows:
{quote}
To enable this service, set `spark.shuffle.service.enabled` to `true`. In YARN, this external shuffle service is implemented in `org.apache.spark.yarn.network.YarnShuffleService` that runs in each `NodeManager` in your cluster. 
{quote}

The class name org.apache.spark.yarn.network.YarnShuffleService is wrong. org.apache.spark.network.yarn.YarnShuffleService is correct class name to be specified.


---

* [SPARK-4914](https://issues.apache.org/jira/browse/SPARK-4914) | *Minor* | **Two sets of datanucleus versions left in lib\_managed after running dev/run-tests**

The {{dev/run-tests}} script first does a clean compile with Hive 0.12.0, and then builds assembly jar for unit testing with Hive 0.13.1 *without* cleaning. This left two sets of datanucleus jars under the {{lib\_managed}} folder, one set depended by Hive 0.12.0, another by Hive 0.13.1.

This behavior sometimes messes up class paths and makes {{CliSuite}} and {{HiveThriftServer2Suite}} fail, because these two suites spawn external processes that depends on those datanucleus jars.


---

* [SPARK-4908](https://issues.apache.org/jira/browse/SPARK-4908) | *Blocker* | **Spark SQL built for Hive 13 fails under concurrent metadata queries**

We are trunk: {{1.3.0-SNAPSHOT}}, as of this commit: 
https://github.com/apache/spark/commit/3d0c37b8118f6057a663f959321a79b8061132b6

We are using Spark built for Hive 13, using this option:
{{-Phive-0.13.1}}

In single-threaded mode, normal operations look fine. However, under concurrency, with at least 2 concurrent connections, metadata queries fail.

For example, {{USE some\_db}}, {{SHOW TABLES}}, and the implicit {{USE}} statement when you pass a default schema in the JDBC URL, all fail.

{{SELECT}} queries like {{SELECT * FROM some\_table}} do not have this issue.

Here is some example code:

{code}
object main extends App {
  import java.sql.\_
  import scala.concurrent.\_
  import scala.concurrent.duration.\_
  import scala.concurrent.ExecutionContext.Implicits.global

  Class.forName("org.apache.hive.jdbc.HiveDriver")

  val host = "localhost" // update this
  val url = s"jdbc:hive2://${host}:10511/some\_db" // update this

  val future = Future.traverse(1 to 3) { i =>
    Future {
      println("Starting: " + i)
      try {
        val conn = DriverManager.getConnection(url)
      } catch {
        case e: Throwable => e.printStackTrace()
        println("Failed: " + i)
      }
      println("Finishing: " + i)
    }
  }

  Await.result(future, 2.minutes)

  println("done!")
}
{code}

Here is the output:

{code}
Starting: 1
Starting: 3
Starting: 2
java.sql.SQLException: org.apache.spark.sql.execution.QueryExecutionException: FAILED: Operation cancelled
	at org.apache.hive.jdbc.Utils.verifySuccess(Utils.java:121)
	at org.apache.hive.jdbc.Utils.verifySuccessWithInfo(Utils.java:109)
	at org.apache.hive.jdbc.HiveStatement.execute(HiveStatement.java:231)
	at org.apache.hive.jdbc.HiveConnection.configureConnection(HiveConnection.java:451)
	at org.apache.hive.jdbc.HiveConnection.<init>(HiveConnection.java:195)
	at org.apache.hive.jdbc.HiveDriver.connect(HiveDriver.java:105)
	at java.sql.DriverManager.getConnection(DriverManager.java:664)
	at java.sql.DriverManager.getConnection(DriverManager.java:270)
	at com.atscale.engine.connection.pool.main$$anonfun$30$$anonfun$apply$2.apply$mcV$sp(ConnectionManager.scala:896)
	at com.atscale.engine.connection.pool.main$$anonfun$30$$anonfun$apply$2.apply(ConnectionManager.scala:893)
	at com.atscale.engine.connection.pool.main$$anonfun$30$$anonfun$apply$2.apply(ConnectionManager.scala:893)
	at scala.concurrent.impl.Future$PromiseCompletingRunnable.liftedTree1$1(Future.scala:24)
	at scala.concurrent.impl.Future$PromiseCompletingRunnable.run(Future.scala:24)
	at scala.concurrent.impl.ExecutionContextImpl$AdaptedForkJoinTask.exec(ExecutionContextImpl.scala:121)
	at scala.concurrent.forkjoin.ForkJoinTask.doExec(ForkJoinTask.java:260)
	at scala.concurrent.forkjoin.ForkJoinPool$WorkQueue.runTask(ForkJoinPool.java:1339)
	at scala.concurrent.forkjoin.ForkJoinPool.runWorker(ForkJoinPool.java:1979)
	at scala.concurrent.forkjoin.ForkJoinWorkerThread.run(ForkJoinWorkerThread.java:107)
Failed: 3
Finishing: 3
java.sql.SQLException: org.apache.spark.sql.execution.QueryExecutionException: FAILED: Operation cancelled
	at org.apache.hive.jdbc.Utils.verifySuccess(Utils.java:121)
	at org.apache.hive.jdbc.Utils.verifySuccessWithInfo(Utils.java:109)
	at org.apache.hive.jdbc.HiveStatement.execute(HiveStatement.java:231)
	at org.apache.hive.jdbc.HiveConnection.configureConnection(HiveConnection.java:451)
	at org.apache.hive.jdbc.HiveConnection.<init>(HiveConnection.java:195)
	at org.apache.hive.jdbc.HiveDriver.connect(HiveDriver.java:105)
	at java.sql.DriverManager.getConnection(DriverManager.java:664)
	at java.sql.DriverManager.getConnection(DriverManager.java:270)
	at com.atscale.engine.connection.pool.main$$anonfun$30$$anonfun$apply$2.apply$mcV$sp(ConnectionManager.scala:896)
	at com.atscale.engine.connection.pool.main$$anonfun$30$$anonfun$apply$2.apply(ConnectionManager.scala:893)
	at com.atscale.engine.connection.pool.main$$anonfun$30$$anonfun$apply$2.apply(ConnectionManager.scala:893)
	at scala.concurrent.impl.Future$PromiseCompletingRunnable.liftedTree1$1(Future.scala:24)
	at scala.concurrent.impl.Future$PromiseCompletingRunnable.run(Future.scala:24)
	at scala.concurrent.impl.ExecutionContextImpl$AdaptedForkJoinTask.exec(ExecutionContextImpl.scala:121)
	at scala.concurrent.forkjoin.ForkJoinTask.doExec(ForkJoinTask.java:260)
	at scala.concurrent.forkjoin.ForkJoinPool$WorkQueue.runTask(ForkJoinPool.java:1339)
	at scala.concurrent.forkjoin.ForkJoinPool.runWorker(ForkJoinPool.java:1979)
	at scala.concurrent.forkjoin.ForkJoinWorkerThread.run(ForkJoinWorkerThread.java:107)
Failed: 2
Finishing: 2
Finishing: 1
done!
{code}

Here are the errors from Spark Logs:
{code}
14/12/19 21:44:55 INFO thrift.ThriftCLIService: Client protocol version: HIVE\_CLI\_SERVICE\_PROTOCOL\_V6
14/12/19 21:44:55 INFO session.SessionState: No Tez session required at this point. hive.execution.engine=mr.
14/12/19 21:44:55 INFO session.SessionState: No Tez session required at this point. hive.execution.engine=mr.
14/12/19 21:44:55 INFO thriftserver.SparkExecuteStatementOperation: Running query 'use as\_adventure'
14/12/19 21:44:55 INFO parse.ParseDriver: Parsing command: use as\_adventure
14/12/19 21:44:55 INFO parse.ParseDriver: Parse Completed
14/12/19 21:44:55 INFO session.SessionState: No Tez session required at this point. hive.execution.engine=mr.
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=Driver.run from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=TimeToSubmit from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO ql.Driver: Concurrency mode is disabled, not creating a lock manager
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=compile from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=parse from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO parse.ParseDriver: Parsing command: use as\_adventure
14/12/19 21:44:55 INFO parse.ParseDriver: Parse Completed
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=parse start=1419025495084 end=1419025495084 duration=0 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=semanticAnalyze from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO ql.Driver: Semantic Analysis Completed
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=semanticAnalyze start=1419025495084 end=1419025495084 duration=0 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO ql.Driver: Returning Hive schema: Schema(fieldSchemas:null, properties:null)
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=compile start=1419025495084 end=1419025495085 duration=1 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=Driver.execute from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO ql.Driver: Starting command: use as\_adventure
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=TimeToSubmit start=1419025495084 end=1419025495085 duration=1 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=runTasks from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=task.DDL.Stage-0 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=runTasks start=1419025495085 end=1419025495098 duration=13 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=Driver.execute start=1419025495085 end=1419025495098 duration=13 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO ql.Driver: OK
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=releaseLocks from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=releaseLocks start=1419025495098 end=1419025495098 duration=0 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=Driver.run start=1419025495084 end=1419025495098 duration=14 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO thrift.ThriftCLIService: Client protocol version: HIVE\_CLI\_SERVICE\_PROTOCOL\_V6
14/12/19 21:44:55 INFO thrift.ThriftCLIService: Client protocol version: HIVE\_CLI\_SERVICE\_PROTOCOL\_V6
14/12/19 21:44:55 INFO session.SessionState: No Tez session required at this point. hive.execution.engine=mr.
14/12/19 21:44:55 INFO session.SessionState: No Tez session required at this point. hive.execution.engine=mr.
14/12/19 21:44:55 INFO session.SessionState: No Tez session required at this point. hive.execution.engine=mr.
14/12/19 21:44:55 INFO session.SessionState: No Tez session required at this point. hive.execution.engine=mr.
14/12/19 21:44:55 INFO thriftserver.SparkExecuteStatementOperation: Running query 'use as\_adventure'
14/12/19 21:44:55 INFO thriftserver.SparkExecuteStatementOperation: Running query 'use as\_adventure'
14/12/19 21:44:55 INFO thriftserver.SparkExecuteStatementOperation: Result Schema: List(result#274)
14/12/19 21:44:55 INFO parse.ParseDriver: Parsing command: use as\_adventure
14/12/19 21:44:55 INFO parse.ParseDriver: Parse Completed
14/12/19 21:44:55 INFO session.SessionState: No Tez session required at this point. hive.execution.engine=mr.
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=Driver.run from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=TimeToSubmit from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO ql.Driver: Concurrency mode is disabled, not creating a lock manager
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=compile from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=parse from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO parse.ParseDriver: Parsing command: use as\_adventure
14/12/19 21:44:55 INFO parse.ParseDriver: Parse Completed
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=parse start=1419025495165 end=1419025495165 duration=0 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=semanticAnalyze from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO ql.Driver: Semantic Analysis Completed
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=semanticAnalyze start=1419025495165 end=1419025495166 duration=1 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO ql.Driver: Returning Hive schema: Schema(fieldSchemas:null, properties:null)
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=compile start=1419025495165 end=1419025495166 duration=1 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=Driver.execute from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO ql.Driver: Starting command: use as\_adventure
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=TimeToSubmit start=1419025495165 end=1419025495166 duration=1 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=runTasks from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=task.DDL.Stage-0 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO parse.ParseDriver: Parsing command: use as\_adventure
14/12/19 21:44:55 INFO parse.ParseDriver: Parse Completed
14/12/19 21:44:55 INFO session.SessionState: No Tez session required at this point. hive.execution.engine=mr.
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=Driver.run from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=TimeToSubmit from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO ql.Driver: Concurrency mode is disabled, not creating a lock manager
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=compile from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 WARN ql.Driver: Shutting down task : Stage-0:DDL
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=parse from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO parse.ParseDriver: Parsing command: use as\_adventure
14/12/19 21:44:55 INFO parse.ParseDriver: Parse Completed
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=parse start=1419025495173 end=1419025495174 duration=1 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=semanticAnalyze from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO ql.Driver: Semantic Analysis Completed
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=semanticAnalyze start=1419025495174 end=1419025495174 duration=0 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO ql.Driver: Returning Hive schema: Schema(fieldSchemas:null, properties:null)
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=compile start=1419025495172 end=1419025495177 duration=5 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=Driver.execute from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO ql.Driver: Starting command: use as\_adventure
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=TimeToSubmit start=1419025495172 end=1419025495177 duration=5 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=runTasks from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=task.DDL.Stage-0 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=runTasks start=1419025495167 end=1419025495188 duration=21 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 ERROR ql.Driver: FAILED: Operation cancelled
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=Driver.execute start=1419025495166 end=1419025495189 duration=23 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=releaseLocks from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=releaseLocks start=1419025495189 end=1419025495189 duration=0 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 WARN ql.Driver: Shutting down task : Stage-0:DDL
14/12/19 21:44:55 ERROR hive.HiveContext:
======================
HIVE FAILURE OUTPUT
======================
RDDLike.scala:58)
	at org.apache.spark.sql.SchemaRDD.<init>(SchemaRDD.scala:108)
	at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:94)
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.run(Shim13.scala:161)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:231)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementAsync(HiveSessionImpl.java:218)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:483)
	at org.apache.hive.service.cli.session.HiveSessionProxy.invoke(HiveSessionProxy.java:79)
	at org.apache.hive.service.cli.session.HiveSessionProxy.access$000(HiveSessionProxy.java:37)
	at org.apache.hive.service.cli.session.HiveSessionProxy$1.run(HiveSessionProxy.java:64)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:422)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
	at org.apache.hadoop.hive.shims.HadoopShimsSecure.doAs(HadoopShimsSecure.java:493)
	at org.apache.hive.service.cli.session.HiveSessionProxy.invoke(HiveSessionProxy.java:60)
	at com.sun.proxy.$Proxy18.executeStatementAsync(Unknown Source)
	at org.apache.hive.service.cli.CLIService.executeStatementAsync(CLIService.java:233)
	at org.apache.hive.service.cli.thrift.ThriftCLIService.ExecuteStatement(ThriftCLIService.java:344)
	at org.apache.hive.service.cli.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1313)
	at org.apache.hive.service.cli.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1298)
	at org.apache.thrift.ProcessFunction.process(ProcessFunction.java:39)
	at org.apache.thrift.TBaseProcessor.process(TBaseProcessor.java:39)
	at org.apache.hive.service.auth.TSetIpAddressProcessor.process(TSetIpAddressProcessor.java:55)
	at org.apache.thrift.server.TThreadPoolServer$WorkerProcess.run(TThreadPoolServer.java:206)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)

FAILED: Hive Internal Error: org.apache.hadoop.hive.ql.metadata.HiveException(FAILED: Operation cancelled)
org.apache.hadoop.hive.ql.metadata.HiveException: FAILED: Operation cancelled
	at org.apache.hadoop.hive.ql.DriverContext.checkShutdown(DriverContext.java:125)
	at org.apache.hadoop.hive.ql.DriverContext.launching(DriverContext.java:91)
	at org.apache.hadoop.hive.ql.Driver.launchTask(Driver.java:1497)
	at org.apache.hadoop.hive.ql.Driver.execute(Driver.java:1270)
	at org.apache.hadoop.hive.ql.Driver.runInternal(Driver.java:1088)
	at org.apache.hadoop.hive.ql.Driver.run(Driver.java:911)
	at org.apache.hadoop.hive.ql.Driver.run(Driver.java:901)
	at org.apache.spark.sql.hive.HiveContext.runHive(HiveContext.scala:305)
	at org.apache.spark.sql.hive.HiveContext.runSqlHive(HiveContext.scala:276)
	at org.apache.spark.sql.hive.execution.NativeCommand.sideEffectResult$lzycompute(NativeCommand.scala:35)
	at org.apache.spark.sql.hive.execution.NativeCommand.sideEffectResult(NativeCommand.scala:35)
	at org.apache.spark.sql.execution.Command$class.execute(commands.scala:46)
	at org.apache.spark.sql.hive.execution.NativeCommand.execute(NativeCommand.scala:30)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:425)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:425)
	at org.apache.spark.sql.SchemaRDDLike$class.$init$(SchemaRDDLike.scala:58)
	at org.apache.spark.sql.SchemaRDD.<init>(SchemaRDD.scala:108)
	at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:94)
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.run(Shim13.scala:161)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:231)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementAsync(HiveSessionImpl.java:218)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:483)
	at org.apache.hive.service.cli.session.HiveSessionProxy.invoke(HiveSessionProxy.java:79)
	at org.apache.hive.service.cli.session.HiveSessionProxy.access$000(HiveSessionProxy.java:37)
	at org.apache.hive.service.cli.session.HiveSessionProxy$1.run(HiveSessionProxy.java:64)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:422)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
	at org.apache.hadoop.hive.shims.HadoopShimsSecure.doAs(HadoopShimsSecure.java:493)
	at org.apache.hive.service.cli.session.HiveSessionProxy.invoke(HiveSessionProxy.java:60)
	at com.sun.proxy.$Proxy18.executeStatementAsync(Unknown Source)
	at org.apache.hive.service.cli.CLIService.executeStatementAsync(CLIService.java:233)
	at org.apache.hive.service.cli.thrift.ThriftCLIService.ExecuteStatement(ThriftCLIService.java:344)
	at org.apache.hive.service.cli.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1313)
	at org.apache.hive.service.cli.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1298)
	at org.apache.thrift.ProcessFunction.process(ProcessFunction.java:39)
	at org.apache.thrift.TBaseProcessor.process(TBaseProcessor.java:39)
	at org.apache.hive.service.auth.TSetIpAddressProcessor.process(TSetIpAddressProcessor.java:55)
	at org.apache.thrift.server.TThreadPoolServer$WorkerProcess.run(TThreadPoolServer.java:206)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)

OK
OK
OK
OK
FAILED: Operation cancelled
FAILED: Operation cancelled
OK
OK
FAILED: Operation cancelled
FAILED: Hive Internal Error: java.lang.NullPointerException(null)
java.lang.NullPointerException
	at org.apache.hadoop.hive.ql.Driver.execute(Driver.java:1194)
	at org.apache.hadoop.hive.ql.Driver.runInternal(Driver.java:1088)
	at org.apache.hadoop.hive.ql.Driver.run(Driver.java:911)
	at org.apache.hadoop.hive.ql.Driver.run(Driver.java:901)
	at org.apache.spark.sql.hive.HiveContext.runHive(HiveContext.scala:305)
	at org.apache.spark.sql.hive.HiveContext.runSqlHive(HiveContext.scala:276)
	at org.apache.spark.sql.hive.execution.NativeCommand.sideEffectResult$lzycompute(NativeCommand.scala:35)
	at org.apache.spark.sql.hive.execution.NativeCommand.sideEffectResult(NativeCommand.scala:35)
	at org.apache.spark.sql.execution.Command$class.execute(commands.scala:46)
	at org.apache.spark.sql.hive.execution.NativeCommand.execute(NativeCommand.scala:30)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:425)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:425)
	at org.apache.spark.sql.SchemaRDDLike$class.$init$(SchemaRDDLike.scala:58)
	at org.apache.spark.sql.SchemaRDD.<init>(SchemaRDD.scala:108)
	at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:94)
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.run(Shim13.scala:161)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:231)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementAsync(HiveSessionImpl.java:218)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:483)
	at org.apache.hive.service.cli.session.HiveSessionProxy.invoke(HiveSessionProxy.java:79)
	at org.apache.hive.service.cli.session.HiveSessionProxy.access$000(HiveSessionProxy.java:37)
	at org.apache.hive.service.cli.session.HiveSessionProxy$1.run(HiveSessionProxy.java:64)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:422)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
	at org.apache.hadoop.hive.shims.HadoopShimsSecure.doAs(HadoopShimsSecure.java:493)
	at org.apache.hive.service.cli.session.HiveSessionProxy.invoke(HiveSessionProxy.java:60)
	at com.sun.proxy.$Proxy18.executeStatementAsync(Unknown Source)
	at org.apache.hive.service.cli.CLIService.executeStatementAsync(CLIService.java:233)
	at org.apache.hive.service.cli.thrift.ThriftCLIService.ExecuteStatement(ThriftCLIService.java:344)
	at org.apache.hive.service.cli.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1313)
	at org.apache.hive.service.cli.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1298)
	at org.apache.thrift.ProcessFunction.process(ProcessFunction.java:39)
	at org.apache.thrift.TBaseProcessor.process(TBaseProcessor.java:39)
	at org.apache.hive.service.auth.TSetIpAddressProcessor.process(TSetIpAddressProcessor.java:55)
	at org.apache.thrift.server.TThreadPoolServer$WorkerProcess.run(TThreadPoolServer.java:206)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)

FAILED: Operation cancelled
OK
FAILED: Operation cancelled
FAILED: Operation cancelled
OK
FAILED: Operation cancelled
OK
OK
FAILED: Operation cancelled
OK
OK
FAILED: Operation cancelled
OK
OK
FAILED: Operation cancelled
FAILED: Operation cancelled
OK
FAILED: Operation cancelled
FAILED: Operation cancelled
FAILED: Operation cancelled
OK
FAILED: Operation cancelled
FAILED: Operation cancelled
OK
FAILED: Operation cancelled

======================
END HIVE FAILURE OUTPUT
======================

14/12/19 21:44:55 ERROR thriftserver.SparkExecuteStatementOperation: Error executing query:
org.apache.spark.sql.execution.QueryExecutionException: FAILED: Operation cancelled
	at org.apache.spark.sql.hive.HiveContext.runHive(HiveContext.scala:309)
	at org.apache.spark.sql.hive.HiveContext.runSqlHive(HiveContext.scala:276)
	at org.apache.spark.sql.hive.execution.NativeCommand.sideEffectResult$lzycompute(NativeCommand.scala:35)
	at org.apache.spark.sql.hive.execution.NativeCommand.sideEffectResult(NativeCommand.scala:35)
	at org.apache.spark.sql.execution.Command$class.execute(commands.scala:46)
	at org.apache.spark.sql.hive.execution.NativeCommand.execute(NativeCommand.scala:30)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:425)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:425)
	at org.apache.spark.sql.SchemaRDDLike$class.$init$(SchemaRDDLike.scala:58)
	at org.apache.spark.sql.SchemaRDD.<init>(SchemaRDD.scala:108)
	at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:94)
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.run(Shim13.scala:161)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:231)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementAsync(HiveSessionImpl.java:218)
	at sun.reflect.GeneratedMethodAccessor9.invoke(Unknown Source)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:483)
	at org.apache.hive.service.cli.session.HiveSessionProxy.invoke(HiveSessionProxy.java:79)
	at org.apache.hive.service.cli.session.HiveSessionProxy.access$000(HiveSessionProxy.java:37)
	at org.apache.hive.service.cli.session.HiveSessionProxy$1.run(HiveSessionProxy.java:64)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:422)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
	at org.apache.hadoop.hive.shims.HadoopShimsSecure.doAs(HadoopShimsSecure.java:493)
	at org.apache.hive.service.cli.session.HiveSessionProxy.invoke(HiveSessionProxy.java:60)
	at com.sun.proxy.$Proxy18.executeStatementAsync(Unknown Source)
	at org.apache.hive.service.cli.CLIService.executeStatementAsync(CLIService.java:233)
	at org.apache.hive.service.cli.thrift.ThriftCLIService.ExecuteStatement(ThriftCLIService.java:344)
	at org.apache.hive.service.cli.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1313)
	at org.apache.hive.service.cli.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1298)
	at org.apache.thrift.ProcessFunction.process(ProcessFunction.java:39)
	at org.apache.thrift.TBaseProcessor.process(TBaseProcessor.java:39)
	at org.apache.hive.service.auth.TSetIpAddressProcessor.process(TSetIpAddressProcessor.java:55)
	at org.apache.thrift.server.TThreadPoolServer$WorkerProcess.run(TThreadPoolServer.java:206)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)
14/12/19 21:44:55 WARN thrift.ThriftCLIService: Error executing statement:
org.apache.hive.service.cli.HiveSQLException: org.apache.spark.sql.execution.QueryExecutionException: FAILED: Operation cancelled
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.run(Shim13.scala:192)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:231)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementAsync(HiveSessionImpl.java:218)
	at sun.reflect.GeneratedMethodAccessor9.invoke(Unknown Source)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:483)
	at org.apache.hive.service.cli.session.HiveSessionProxy.invoke(HiveSessionProxy.java:79)
	at org.apache.hive.service.cli.session.HiveSessionProxy.access$000(HiveSessionProxy.java:37)
	at org.apache.hive.service.cli.session.HiveSessionProxy$1.run(HiveSessionProxy.java:64)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:422)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
	at org.apache.hadoop.hive.shims.HadoopShimsSecure.doAs(HadoopShimsSecure.java:493)
	at org.apache.hive.service.cli.session.HiveSessionProxy.invoke(HiveSessionProxy.java:60)
	at com.sun.proxy.$Proxy18.executeStatementAsync(Unknown Source)
	at org.apache.hive.service.cli.CLIService.executeStatementAsync(CLIService.java:233)
	at org.apache.hive.service.cli.thrift.ThriftCLIService.ExecuteStatement(ThriftCLIService.java:344)
	at org.apache.hive.service.cli.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1313)
	at org.apache.hive.service.cli.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1298)
	at org.apache.thrift.ProcessFunction.process(ProcessFunction.java:39)
	at org.apache.thrift.TBaseProcessor.process(TBaseProcessor.java:39)
	at org.apache.hive.service.auth.TSetIpAddressProcessor.process(TSetIpAddressProcessor.java:55)
	at org.apache.thrift.server.TThreadPoolServer$WorkerProcess.run(TThreadPoolServer.java:206)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=runTasks start=1419025495177 end=1419025495197 duration=20 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 ERROR ql.Driver: FAILED: Operation cancelled
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=Driver.execute start=1419025495177 end=1419025495200 duration=23 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=releaseLocks from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=releaseLocks start=1419025495200 end=1419025495200 duration=0 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 ERROR hive.HiveContext:
======================
HIVE FAILURE OUTPUT
======================
ache.spark.sql.SchemaRDD.<init>(SchemaRDD.scala:108)
	at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:94)
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.run(Shim13.scala:161)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:231)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementAsync(HiveSessionImpl.java:218)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:483)
	at org.apache.hive.service.cli.session.HiveSessionProxy.invoke(HiveSessionProxy.java:79)
	at org.apache.hive.service.cli.session.HiveSessionProxy.access$000(HiveSessionProxy.java:37)
	at org.apache.hive.service.cli.session.HiveSessionProxy$1.run(HiveSessionProxy.java:64)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:422)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
	at org.apache.hadoop.hive.shims.HadoopShimsSecure.doAs(HadoopShimsSecure.java:493)
	at org.apache.hive.service.cli.session.HiveSessionProxy.invoke(HiveSessionProxy.java:60)
	at com.sun.proxy.$Proxy18.executeStatementAsync(Unknown Source)
	at org.apache.hive.service.cli.CLIService.executeStatementAsync(CLIService.java:233)
	at org.apache.hive.service.cli.thrift.ThriftCLIService.ExecuteStatement(ThriftCLIService.java:344)
	at org.apache.hive.service.cli.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1313)
	at org.apache.hive.service.cli.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1298)
	at org.apache.thrift.ProcessFunction.process(ProcessFunction.java:39)
	at org.apache.thrift.TBaseProcessor.process(TBaseProcessor.java:39)
	at org.apache.hive.service.auth.TSetIpAddressProcessor.process(TSetIpAddressProcessor.java:55)
	at org.apache.thrift.server.TThreadPoolServer$WorkerProcess.run(TThreadPoolServer.java:206)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)

FAILED: Hive Internal Error: org.apache.hadoop.hive.ql.metadata.HiveException(FAILED: Operation cancelled)
org.apache.hadoop.hive.ql.metadata.HiveException: FAILED: Operation cancelled
	at org.apache.hadoop.hive.ql.DriverContext.checkShutdown(DriverContext.java:125)
	at org.apache.hadoop.hive.ql.DriverContext.launching(DriverContext.java:91)
	at org.apache.hadoop.hive.ql.Driver.launchTask(Driver.java:1497)
	at org.apache.hadoop.hive.ql.Driver.execute(Driver.java:1270)
	at org.apache.hadoop.hive.ql.Driver.runInternal(Driver.java:1088)
	at org.apache.hadoop.hive.ql.Driver.run(Driver.java:911)
	at org.apache.hadoop.hive.ql.Driver.run(Driver.java:901)
	at org.apache.spark.sql.hive.HiveContext.runHive(HiveContext.scala:305)
	at org.apache.spark.sql.hive.HiveContext.runSqlHive(HiveContext.scala:276)
	at org.apache.spark.sql.hive.execution.NativeCommand.sideEffectResult$lzycompute(NativeCommand.scala:35)
	at org.apache.spark.sql.hive.execution.NativeCommand.sideEffectResult(NativeCommand.scala:35)
	at org.apache.spark.sql.execution.Command$class.execute(commands.scala:46)
	at org.apache.spark.sql.hive.execution.NativeCommand.execute(NativeCommand.scala:30)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:425)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:425)
	at org.apache.spark.sql.SchemaRDDLike$class.$init$(SchemaRDDLike.scala:58)
	at org.apache.spark.sql.SchemaRDD.<init>(SchemaRDD.scala:108)
	at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:94)
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.run(Shim13.scala:161)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:231)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementAsync(HiveSessionImpl.java:218)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:483)
	at org.apache.hive.service.cli.session.HiveSessionProxy.invoke(HiveSessionProxy.java:79)
	at org.apache.hive.service.cli.session.HiveSessionProxy.access$000(HiveSessionProxy.java:37)
	at org.apache.hive.service.cli.session.HiveSessionProxy$1.run(HiveSessionProxy.java:64)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:422)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
	at org.apache.hadoop.hive.shims.HadoopShimsSecure.doAs(HadoopShimsSecure.java:493)
	at org.apache.hive.service.cli.session.HiveSessionProxy.invoke(HiveSessionProxy.java:60)
	at com.sun.proxy.$Proxy18.executeStatementAsync(Unknown Source)
	at org.apache.hive.service.cli.CLIService.executeStatementAsync(CLIService.java:233)
	at org.apache.hive.service.cli.thrift.ThriftCLIService.ExecuteStatement(ThriftCLIService.java:344)
	at org.apache.hive.service.cli.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1313)
	at org.apache.hive.service.cli.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1298)
	at org.apache.thrift.ProcessFunction.process(ProcessFunction.java:39)
	at org.apache.thrift.TBaseProcessor.process(TBaseProcessor.java:39)
	at org.apache.hive.service.auth.TSetIpAddressProcessor.process(TSetIpAddressProcessor.java:55)
	at org.apache.thrift.server.TThreadPoolServer$WorkerProcess.run(TThreadPoolServer.java:206)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)

OK
OK
OK
OK
FAILED: Operation cancelled
FAILED: Operation cancelled
OK
OK
FAILED: Operation cancelled
FAILED: Hive Internal Error: java.lang.NullPointerException(null)
java.lang.NullPointerException
	at org.apache.hadoop.hive.ql.Driver.execute(Driver.java:1194)
	at org.apache.hadoop.hive.ql.Driver.runInternal(Driver.java:1088)
	at org.apache.hadoop.hive.ql.Driver.run(Driver.java:911)
	at org.apache.hadoop.hive.ql.Driver.run(Driver.java:901)
	at org.apache.spark.sql.hive.HiveContext.runHive(HiveContext.scala:305)
	at org.apache.spark.sql.hive.HiveContext.runSqlHive(HiveContext.scala:276)
	at org.apache.spark.sql.hive.execution.NativeCommand.sideEffectResult$lzycompute(NativeCommand.scala:35)
	at org.apache.spark.sql.hive.execution.NativeCommand.sideEffectResult(NativeCommand.scala:35)
	at org.apache.spark.sql.execution.Command$class.execute(commands.scala:46)
	at org.apache.spark.sql.hive.execution.NativeCommand.execute(NativeCommand.scala:30)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:425)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:425)
	at org.apache.spark.sql.SchemaRDDLike$class.$init$(SchemaRDDLike.scala:58)
	at org.apache.spark.sql.SchemaRDD.<init>(SchemaRDD.scala:108)
	at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:94)
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.run(Shim13.scala:161)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:231)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementAsync(HiveSessionImpl.java:218)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:483)
	at org.apache.hive.service.cli.session.HiveSessionProxy.invoke(HiveSessionProxy.java:79)
	at org.apache.hive.service.cli.session.HiveSessionProxy.access$000(HiveSessionProxy.java:37)
	at org.apache.hive.service.cli.session.HiveSessionProxy$1.run(HiveSessionProxy.java:64)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:422)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
	at org.apache.hadoop.hive.shims.HadoopShimsSecure.doAs(HadoopShimsSecure.java:493)
	at org.apache.hive.service.cli.session.HiveSessionProxy.invoke(HiveSessionProxy.java:60)
	at com.sun.proxy.$Proxy18.executeStatementAsync(Unknown Source)
	at org.apache.hive.service.cli.CLIService.executeStatementAsync(CLIService.java:233)
	at org.apache.hive.service.cli.thrift.ThriftCLIService.ExecuteStatement(ThriftCLIService.java:344)
	at org.apache.hive.service.cli.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1313)
	at org.apache.hive.service.cli.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1298)
	at org.apache.thrift.ProcessFunction.process(ProcessFunction.java:39)
	at org.apache.thrift.TBaseProcessor.process(TBaseProcessor.java:39)
	at org.apache.hive.service.auth.TSetIpAddressProcessor.process(TSetIpAddressProcessor.java:55)
	at org.apache.thrift.server.TThreadPoolServer$WorkerProcess.run(TThreadPoolServer.java:206)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)

FAILED: Operation cancelled
OK
FAILED: Operation cancelled
FAILED: Operation cancelled
OK
FAILED: Operation cancelled
OK
OK
FAILED: Operation cancelled
OK
OK
FAILED: Operation cancelled
OK
OK
FAILED: Operation cancelled
FAILED: Operation cancelled
OK
FAILED: Operation cancelled
FAILED: Operation cancelled
FAILED: Operation cancelled
OK
FAILED: Operation cancelled
FAILED: Operation cancelled
OK
FAILED: Operation cancelled
FAILED: Operation cancelled

======================
END HIVE FAILURE OUTPUT
======================

14/12/19 21:44:55 ERROR thriftserver.SparkExecuteStatementOperation: Error executing query:
org.apache.spark.sql.execution.QueryExecutionException: FAILED: Operation cancelled
	at org.apache.spark.sql.hive.HiveContext.runHive(HiveContext.scala:309)
	at org.apache.spark.sql.hive.HiveContext.runSqlHive(HiveContext.scala:276)
	at org.apache.spark.sql.hive.execution.NativeCommand.sideEffectResult$lzycompute(NativeCommand.scala:35)
	at org.apache.spark.sql.hive.execution.NativeCommand.sideEffectResult(NativeCommand.scala:35)
	at org.apache.spark.sql.execution.Command$class.execute(commands.scala:46)
	at org.apache.spark.sql.hive.execution.NativeCommand.execute(NativeCommand.scala:30)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:425)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:425)
	at org.apache.spark.sql.SchemaRDDLike$class.$init$(SchemaRDDLike.scala:58)
	at org.apache.spark.sql.SchemaRDD.<init>(SchemaRDD.scala:108)
	at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:94)
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.run(Shim13.scala:161)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:231)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementAsync(HiveSessionImpl.java:218)
	at sun.reflect.GeneratedMethodAccessor9.invoke(Unknown Source)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:483)
	at org.apache.hive.service.cli.session.HiveSessionProxy.invoke(HiveSessionProxy.java:79)
	at org.apache.hive.service.cli.session.HiveSessionProxy.access$000(HiveSessionProxy.java:37)
	at org.apache.hive.service.cli.session.HiveSessionProxy$1.run(HiveSessionProxy.java:64)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:422)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
	at org.apache.hadoop.hive.shims.HadoopShimsSecure.doAs(HadoopShimsSecure.java:493)
	at org.apache.hive.service.cli.session.HiveSessionProxy.invoke(HiveSessionProxy.java:60)
	at com.sun.proxy.$Proxy18.executeStatementAsync(Unknown Source)
	at org.apache.hive.service.cli.CLIService.executeStatementAsync(CLIService.java:233)
	at org.apache.hive.service.cli.thrift.ThriftCLIService.ExecuteStatement(ThriftCLIService.java:344)
	at org.apache.hive.service.cli.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1313)
	at org.apache.hive.service.cli.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1298)
	at org.apache.thrift.ProcessFunction.process(ProcessFunction.java:39)
	at org.apache.thrift.TBaseProcessor.process(TBaseProcessor.java:39)
	at org.apache.hive.service.auth.TSetIpAddressProcessor.process(TSetIpAddressProcessor.java:55)
	at org.apache.thrift.server.TThreadPoolServer$WorkerProcess.run(TThreadPoolServer.java:206)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)
14/12/19 21:44:55 WARN thrift.ThriftCLIService: Error executing statement:
org.apache.hive.service.cli.HiveSQLException: org.apache.spark.sql.execution.QueryExecutionException: FAILED: Operation cancelled
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.run(Shim13.scala:192)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:231)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementAsync(HiveSessionImpl.java:218)
	at sun.reflect.GeneratedMethodAccessor9.invoke(Unknown Source)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:483)
	at org.apache.hive.service.cli.session.HiveSessionProxy.invoke(HiveSessionProxy.java:79)
	at org.apache.hive.service.cli.session.HiveSessionProxy.access$000(HiveSessionProxy.java:37)
	at org.apache.hive.service.cli.session.HiveSessionProxy$1.run(HiveSessionProxy.java:64)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:422)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
	at org.apache.hadoop.hive.shims.HadoopShimsSecure.doAs(HadoopShimsSecure.java:493)
	at org.apache.hive.service.cli.session.HiveSessionProxy.invoke(HiveSessionProxy.java:60)
	at com.sun.proxy.$Proxy18.executeStatementAsync(Unknown Source)
	at org.apache.hive.service.cli.CLIService.executeStatementAsync(CLIService.java:233)
	at org.apache.hive.service.cli.thrift.ThriftCLIService.ExecuteStatement(ThriftCLIService.java:344)
	at org.apache.hive.service.cli.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1313)
	at org.apache.hive.service.cli.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1298)
	at org.apache.thrift.ProcessFunction.process(ProcessFunction.java:39)
	at org.apache.thrift.TBaseProcessor.process(TBaseProcessor.java:39)
	at org.apache.hive.service.auth.TSetIpAddressProcessor.process(TSetIpAddressProcessor.java:55)
	at org.apache.thrift.server.TThreadPoolServer$WorkerProcess.run(TThreadPoolServer.java:206)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)
{code}


---

* [SPARK-4896](https://issues.apache.org/jira/browse/SPARK-4896) | *Major* | **Don't redundantly copy executor dependencies in Utils.fetchFile**

This JIRA is spun off from a comment by [~rdub] on SPARK-3967, quoted here:

{quote}
I've been debugging this issue as well and I think I've found an issue in {{org.apache.spark.util.Utils}} that is contributing to / causing the problem:

{{Files.move}} on [line 390|https://github.com/apache/spark/blob/v1.1.0/core/src/main/scala/org/apache/spark/util/Utils.scala#L390] is called even if {{targetFile}} exists and {{tempFile}} and {{targetFile}} are equal.

The check on [line 379|https://github.com/apache/spark/blob/v1.1.0/core/src/main/scala/org/apache/spark/util/Utils.scala#L379] seems to imply the desire to skip a redundant overwrite if the file is already there and has the contents that it should have.

Gating the {{Files.move}} call on a further {{if (!targetFile.exists)}} fixes the issue for me; attached is a patch of the change.

In practice all of my executors that hit this code path are finding every dependency JAR to already exist and be exactly equal to what they need it to be, meaning they were all needlessly overwriting all of their dependency JARs, and now are all basically no-op-ing in {{Utils.fetchFile}}; I've not determined who/what is putting the JARs there, why the issue only crops up in {{yarn-cluster}} mode (or {{--master yarn --deploy-mode cluster}}), etc., but it seems like either way this patch is probably desirable.
{quote}

I'm spinning this off into its own JIRA so that we can track the merging of https://github.com/apache/spark/pull/2848 separately (since we have multiple PRs that contribute to fixing the original issue).


---

* [SPARK-4889](https://issues.apache.org/jira/browse/SPARK-4889) | *Minor* | **HistoryServer documentation refers to non-existent spark-history-server.sh script**

The [examples for how to start a history server|https://github.com/apache/spark/blob/253b72b56fe908bbab5d621eae8a5f359c639dfd/core/src/main/scala/org/apache/spark/deploy/history/HistoryServer.scala#L164] refer to a {{spark-history-server.sh}} script that doesn't exist; afaict it never did.

I believe the examples mean to refer to {{./sbin/start-history-server.sh}}, and should be updated to reflect that the log directory should be specified via {{-Dspark.history.fs.logDirectory}} in {{$SPARK\_HISTORY\_OPTS}}, not via a command-line argument.


---

* [SPARK-4884](https://issues.apache.org/jira/browse/SPARK-4884) | *Trivial* | **Improve documentation for Partition.scala**

ScalaDoc for org/apache/spark/Partition.scala is a bit vague. This discussion explains it better: http://apache-spark-developers-list.1001551.n3.nabble.com/RDD-data-flow-td9804.html


---

* [SPARK-4882](https://issues.apache.org/jira/browse/SPARK-4882) | *Major* | **PySpark broadcast breaks when using KryoSerializer**

When KryoSerializer is used, PySpark will throw NullPointerException when trying to send broadcast variables to workers.  This issue does not occur when the master is {{local}}, or when using the default JavaSerializer.

*Reproduction*:

Run

{code}
SPARK\_LOCAL\_IP=127.0.0.1 ./bin/pyspark --master local-cluster[2,2,512] --conf spark.serializer=org.apache.spark.serializer.KryoSerializer
{code}

then run

{code}
b = sc.broadcast("hello")
sc.parallelize([0]).flatMap(lambda x: b.value).collect()
{code}

This job fails because all tasks throw the following exception:

{code}
14/12/28 14:26:08 WARN TaskSetManager: Lost task 1.0 in stage 1.0 (TID 8, localhost): java.lang.NullPointerException
	at org.apache.spark.api.python.PythonRDD$.writeUTF(PythonRDD.scala:589)
	at org.apache.spark.api.python.PythonRDD$WriterThread$$anonfun$run$1$$anonfun$apply$mcV$sp$3.apply(PythonRDD.scala:232)
	at org.apache.spark.api.python.PythonRDD$WriterThread$$anonfun$run$1$$anonfun$apply$mcV$sp$3.apply(PythonRDD.scala:228)
	at scala.collection.Iterator$class.foreach(Iterator.scala:727)
	at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
	at scala.collection.IterableLike$class.foreach(IterableLike.scala:72)
	at scala.collection.AbstractIterable.foreach(Iterable.scala:54)
	at org.apache.spark.api.python.PythonRDD$WriterThread$$anonfun$run$1.apply$mcV$sp(PythonRDD.scala:228)
	at org.apache.spark.api.python.PythonRDD$WriterThread$$anonfun$run$1.apply(PythonRDD.scala:203)
	at org.apache.spark.api.python.PythonRDD$WriterThread$$anonfun$run$1.apply(PythonRDD.scala:203)
	at org.apache.spark.util.Utils$.logUncaughtExceptions(Utils.scala:1515)
	at org.apache.spark.api.python.PythonRDD$WriterThread.run(PythonRDD.scala:202)
{code}

KryoSerializer may be enabled in the {{spark-defaults.conf}} file, so users may hit this error and be confused.

*Workaround*:

Override the {{spark.serializer}} setting to use the default Java serializer.


---

* [SPARK-4880](https://issues.apache.org/jira/browse/SPARK-4880) | *Minor* | **remove spark.locality.wait setting in examples/graphx/Analytics.scala**

spark.locality.wait set to 100000 in examples/graphx/Analytics.scala.
Should be left to the user.


---

* [SPARK-4873](https://issues.apache.org/jira/browse/SPARK-4873) | *Minor* | **Use `Future.zip` instead of `Future.flatMap`(for-loop) in WriteAheadLogBasedBlockHandler**

Use Future.zip instead of Future.flatMap(for-loop). zip implies these two Futures will run concurrently, while flatMap usually means one Future depends on the other one.


---

* [SPARK-4864](https://issues.apache.org/jira/browse/SPARK-4864) | *Major* | **Add documentation to Netty-based configs**

Currently there is no public documentation for the NettyBlockTransferService or various configuration options of the network package. We should add some.


---

* [SPARK-4847](https://issues.apache.org/jira/browse/SPARK-4847) | *Major* | **extraStrategies cannot take effect in SQLContext**

Because strategies is initialized when SparkPlanner is created, so later added extraStrategies cannot be added into strategies.


---

* [SPARK-4841](https://issues.apache.org/jira/browse/SPARK-4841) | *Blocker* | **Batch serializer bug in PySpark's RDD.zip**

{code}
t = sc.textFile("README.md")
t.zip(t).count()
{code}

{code}
Py4JJavaError                             Traceback (most recent call last)
<ipython-input-6-60fdeb8339fd> in <module>()
----> 1 readme.zip(readme).count()

/Users/meng/src/spark/python/pyspark/rdd.pyc in count(self)
    817         3
    818         """
--> 819         return self.mapPartitions(lambda i: [sum(1 for \_ in i)]).sum()
    820
    821     def stats(self):

/Users/meng/src/spark/python/pyspark/rdd.pyc in sum(self)
    808         6.0
    809         """
--> 810         return self.mapPartitions(lambda x: [sum(x)]).reduce(operator.add)
    811
    812     def count(self):

/Users/meng/src/spark/python/pyspark/rdd.pyc in reduce(self, f)
    713             yield reduce(f, iterator, initial)
    714
--> 715         vals = self.mapPartitions(func).collect()
    716         if vals:
    717             return reduce(f, vals)

/Users/meng/src/spark/python/pyspark/rdd.pyc in collect(self)
    674         """
    675         with SCCallSiteSync(self.context) as css:
--> 676             bytesInJava = self.\_jrdd.collect().iterator()
    677         return list(self.\_collect\_iterator\_through\_file(bytesInJava))
    678

/Users/meng/src/spark/python/lib/py4j-0.8.2.1-src.zip/py4j/java\_gateway.py in \_\_call\_\_(self, *args)
    536         answer = self.gateway\_client.send\_command(command)
    537         return\_value = get\_return\_value(answer, self.gateway\_client,
--> 538                 self.target\_id, self.name)
    539
    540         for temp\_arg in temp\_args:

/Users/meng/src/spark/python/lib/py4j-0.8.2.1-src.zip/py4j/protocol.py in get\_return\_value(answer, gateway\_client, target\_id, name)
    298                 raise Py4JJavaError(
    299                     'An error occurred while calling {0}{1}{2}.\n'.
--> 300                     format(target\_id, '.', name), value)
    301             else:
    302                 raise Py4JError(

Py4JJavaError: An error occurred while calling o69.collect.
: org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 1.0 failed 1 times, most recent failure: Lost task 0.0 in stage 1.0 (TID 2, localhost): org.apache.spark.api.python.PythonException: Traceback (most recent call last):
  File "/Users/meng/src/spark/python/pyspark/worker.py", line 107, in main
    process()
  File "/Users/meng/src/spark/python/pyspark/worker.py", line 98, in process
    serializer.dump\_stream(func(split\_index, iterator), outfile)
  File "/Users/meng/src/spark/python/pyspark/serializers.py", line 198, in dump\_stream
    self.serializer.dump\_stream(self.\_batched(iterator), stream)
  File "/Users/meng/src/spark/python/pyspark/serializers.py", line 81, in dump\_stream
    raise NotImplementedError
NotImplementedError

	at org.apache.spark.api.python.PythonRDD$$anon$1.read(PythonRDD.scala:137)
	at org.apache.spark.api.python.PythonRDD$$anon$1.<init>(PythonRDD.scala:174)
	at org.apache.spark.api.python.PythonRDD.compute(PythonRDD.scala:96)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:263)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:230)
	at org.apache.spark.rdd.ZippedPartitionsRDD2.compute(ZippedPartitionsRDD.scala:88)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:263)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:230)
	at org.apache.spark.api.python.PythonRDD$WriterThread$$anonfun$run$1.apply$mcV$sp(PythonRDD.scala:242)
	at org.apache.spark.api.python.PythonRDD$WriterThread$$anonfun$run$1.apply(PythonRDD.scala:204)
	at org.apache.spark.api.python.PythonRDD$WriterThread$$anonfun$run$1.apply(PythonRDD.scala:204)
	at org.apache.spark.util.Utils$.logUncaughtExceptions(Utils.scala:1460)
	at org.apache.spark.api.python.PythonRDD$WriterThread.run(PythonRDD.scala:203)

Driver stacktrace:
	at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$failJobAndIndependentStages(DAGScheduler.scala:1214)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1203)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1202)
	at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
	at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
	at org.apache.spark.scheduler.DAGScheduler.abortStage(DAGScheduler.scala:1202)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:696)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:696)
	at scala.Option.foreach(Option.scala:236)
	at org.apache.spark.scheduler.DAGScheduler.handleTaskSetFailed(DAGScheduler.scala:696)
	at org.apache.spark.scheduler.DAGSchedulerEventProcessActor$$anonfun$receive$2.applyOrElse(DAGScheduler.scala:1420)
	at akka.actor.Actor$class.aroundReceive(Actor.scala:465)
	at org.apache.spark.scheduler.DAGSchedulerEventProcessActor.aroundReceive(DAGScheduler.scala:1375)
	at akka.actor.ActorCell.receiveMessage(ActorCell.scala:516)
	at akka.actor.ActorCell.invoke(ActorCell.scala:487)
	at akka.dispatch.Mailbox.processMailbox(Mailbox.scala:238)
	at akka.dispatch.Mailbox.run(Mailbox.scala:220)
	at akka.dispatch.ForkJoinExecutorConfigurator$AkkaForkJoinTask.exec(AbstractDispatcher.scala:393)
	at scala.concurrent.forkjoin.ForkJoinTask.doExec(ForkJoinTask.java:260)
	at scala.concurrent.forkjoin.ForkJoinPool$WorkQueue.runTask(ForkJoinPool.java:1339)
	at scala.concurrent.forkjoin.ForkJoinPool.runWorker(ForkJoinPool.java:1979)
	at scala.concurrent.forkjoin.ForkJoinWorkerThread.run(ForkJoinWorkerThread.java:107)
{code}


---

* [SPARK-4837](https://issues.apache.org/jira/browse/SPARK-4837) | *Blocker* | **NettyBlockTransferService does not abide by spark.blockManager.port config option**

The NettyBlockTransferService always binds to a random port, and does not use the spark.blockManager.port config as specified.


---

* [SPARK-4835](https://issues.apache.org/jira/browse/SPARK-4835) | *Critical* | **Streaming saveAs*HadoopFiles() methods may throw FileAlreadyExistsException during checkpoint recovery**

While running (a slightly modified version of) the "recovery with saveAsHadoopFiles operation" test in the streaming CheckpointSuite, I noticed the following error message in the streaming driver log:

{code}
14/12/12 17:42:50.687 pool-1-thread-1-ScalaTest-running-CheckpointSuite INFO JobScheduler: Added jobs for time 1500 ms
14/12/12 17:42:50.687 pool-1-thread-1-ScalaTest-running-CheckpointSuite INFO RecurringTimer: Started timer for JobGenerator at time 2000
14/12/12 17:42:50.688 sparkDriver-akka.actor.default-dispatcher-3 INFO JobScheduler: Starting job streaming job 1500 ms.0 from job set of time 1500 ms
14/12/12 17:42:50.688 pool-1-thread-1-ScalaTest-running-CheckpointSuite INFO JobGenerator: Restarted JobGenerator at 2000 ms
14/12/12 17:42:50.688 pool-1-thread-1-ScalaTest-running-CheckpointSuite INFO JobScheduler: Started JobScheduler
14/12/12 17:42:50.689 sparkDriver-akka.actor.default-dispatcher-3 INFO JobScheduler: Starting job streaming job 1500 ms.1 from job set of time 1500 ms
14/12/12 17:42:50.689 sparkDriver-akka.actor.default-dispatcher-3 ERROR JobScheduler: Error running job streaming job 1500 ms.0
org.apache.hadoop.mapred.FileAlreadyExistsException: Output directory file:/var/folders/0k/2qp2p2vs7bv033vljnb8nk1c0000gn/T/1418434967213-0/-1500.result already exists
	at org.apache.hadoop.mapred.FileOutputFormat.checkOutputSpecs(FileOutputFormat.java:121)
	at org.apache.spark.rdd.PairRDDFunctions.saveAsHadoopDataset(PairRDDFunctions.scala:1045)
	at org.apache.spark.rdd.PairRDDFunctions.saveAsHadoopFile(PairRDDFunctions.scala:944)
	at org.apache.spark.streaming.dstream.PairDStreamFunctions$$anonfun$9.apply(PairDStreamFunctions.scala:677)
	at org.apache.spark.streaming.dstream.PairDStreamFunctions$$anonfun$9.apply(PairDStreamFunctions.scala:675)
	at org.apache.spark.streaming.dstream.ForEachDStream$$anonfun$1.apply$mcV$sp(ForEachDStream.scala:42)
	at org.apache.spark.streaming.dstream.ForEachDStream$$anonfun$1.apply(ForEachDStream.scala:40)
	at org.apache.spark.streaming.dstream.ForEachDStream$$anonfun$1.apply(ForEachDStream.scala:40)
	at scala.util.Try$.apply(Try.scala:161)
	at org.apache.spark.streaming.scheduler.Job.run(Job.scala:32)
	at org.apache.spark.streaming.scheduler.JobScheduler$JobHandler.run(JobScheduler.scala:171)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
14/12/12 17:42:50.691 pool-12-thread-1 INFO SparkContext: Starting job: apply at Transformer.scala:22
{code}

Spark Streaming's {{saveAsHadoopFiles}} method calls Spark's {{rdd.saveAsHadoopFile}} method.  The Spark method, in turn, called {{PairRDDFunctions.saveAsHadoopDataset()}}, which has error-checking to ensure that the output directory does not already exist:

{code}
    if (self.conf.getBoolean("spark.hadoop.validateOutputSpecs", true)) {
      // FileOutputFormat ignores the filesystem parameter
      val ignoredFs = FileSystem.get(hadoopConf)
      hadoopConf.getOutputFormat.checkOutputSpecs(ignoredFs, hadoopConf)
    }
{code}

If Spark Streaming recovers from a checkpoint and re-runs the last batch in the checkpoint, then {{saveAsHadoopDataset}} will have been called twice with the same output path.  If the output path exists from the first, pre-recovery run, then the recovery will fail.

This seems like it could be a pretty serious issue: imagine that a streaming job fails partway through a save() operation, then recovers: in this case, the existing directory will prevent us from ever recovering and finishing the save().

Fortunately, this should be simple to fix: we should disable the existing directory checks for output operations called by streaming jobs.


---

* [SPARK-4834](https://issues.apache.org/jira/browse/SPARK-4834) | *Major* | **Spark fails to clean up cache / lock files in local dirs**

This issue was caused by https://github.com/apache/spark/commit/7aacb7bfa.

That change shares downloaded jar / files among multiple executors running on the same host by using a lock file and a cache file for each file the executor needs to download. The problem is that these lock and cache files are never deleted.

On Yarn, the app's dir is automatically deleted when the app ends, so no files are left behind. But on standalone, there's no such thing as "the app's dir"; files will end up in "/tmp" or in whatever place the user configure in "SPARK\_LOCAL\_DIRS", and will eventually start to fill that volume.

We should add a way to clean up these files. It's not as simple as "hey, just call File.deleteOnExit()!" because we're talking about multiple processes accessing these files, so to maintain the efficiency gains of the original change, the files should only be deleted when the application is finished.


---

* [SPARK-4826](https://issues.apache.org/jira/browse/SPARK-4826) | *Major* | **Possible flaky tests in WriteAheadLogBackedBlockRDDSuite: "java.lang.IllegalStateException: File exists and there is no append support!"**

I saw a recent master Maven build failure in WriteHeadLogBackedBlockRDDSuite where four tests failed with the same exception.

[Link to test result (this will eventually break)|https://amplab.cs.berkeley.edu/jenkins/job/Spark-Master-Maven-pre-YARN/1156/].  In case that link breaks:

The failed tests:

{code}
org.apache.spark.streaming.rdd.WriteAheadLogBackedBlockRDDSuite.Read data available only in block manager, not in write ahead log
org.apache.spark.streaming.rdd.WriteAheadLogBackedBlockRDDSuite.Read data available only in write ahead log, not in block manager
org.apache.spark.streaming.rdd.WriteAheadLogBackedBlockRDDSuite.Read data available only in write ahead log, and test storing in block manager
org.apache.spark.streaming.rdd.WriteAheadLogBackedBlockRDDSuite.Read data with partially available in block manager, and rest in write ahead log
{code}

The error messages are all (essentially) the same:

{code}
     java.lang.IllegalStateException: File exists and there is no append support!
      at org.apache.spark.streaming.util.HdfsUtils$.getOutputStream(HdfsUtils.scala:33)
      at org.apache.spark.streaming.util.WriteAheadLogWriter.org$apache$spark$streaming$util$WriteAheadLogWriter$$stream$lzycompute(WriteAheadLogWriter.scala:34)
      at org.apache.spark.streaming.util.WriteAheadLogWriter.org$apache$spark$streaming$util$WriteAheadLogWriter$$stream(WriteAheadLogWriter.scala:34)
      at org.apache.spark.streaming.util.WriteAheadLogWriter.<init>(WriteAheadLogWriter.scala:42)
      at org.apache.spark.streaming.rdd.WriteAheadLogBackedBlockRDDSuite.writeLogSegments(WriteAheadLogBackedBlockRDDSuite.scala:140)
      at org.apache.spark.streaming.rdd.WriteAheadLogBackedBlockRDDSuite.org$apache$spark$streaming$rdd$WriteAheadLogBackedBlockRDDSuite$$testRDD(WriteAheadLogBackedBlockRDDSuite.scala:95)
      at org.apache.spark.streaming.rdd.WriteAheadLogBackedBlockRDDSuite$$anonfun$4.apply$mcV$sp(WriteAheadLogBackedBlockRDDSuite.scala:67)
      at org.apache.spark.streaming.rdd.WriteAheadLogBackedBlockRDDSuite$$anonfun$4.apply(WriteAheadLogBackedBlockRDDSuite.scala:67)
      at org.apache.spark.streaming.rdd.WriteAheadLogBackedBlockRDDSuite$$anonfun$4.apply(WriteAheadLogBackedBlockRDDSuite.scala:67)
      at org.scalatest.Transformer$$anonfun$apply$1.apply$mcV$sp(Transformer.scala:22)
      at org.scalatest.OutcomeOf$class.outcomeOf(OutcomeOf.scala:85)
      at org.scalatest.OutcomeOf$.outcomeOf(OutcomeOf.scala:104)
      at org.scalatest.Transformer.apply(Transformer.scala:22)
      at org.scalatest.Transformer.apply(Transformer.scala:20)
      at org.scalatest.FunSuiteLike$$anon$1.apply(FunSuiteLike.scala:166)
      at org.scalatest.Suite$class.withFixture(Suite.scala:1122)
      at org.scalatest.FunSuite.withFixture(FunSuite.scala:1555)
      at org.scalatest.FunSuiteLike$class.invokeWithFixture$1(FunSuiteLike.scala:163)
      at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:175)
      at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:175)
      at org.scalatest.SuperEngine.runTestImpl(Engine.scala:306)
      at org.scalatest.FunSuiteLike$class.runTest(FunSuiteLike.scala:175)
      at org.scalatest.FunSuite.runTest(FunSuite.scala:1555)
      at org.scalatest.FunSuiteLike$$anonfun$runTests$1.apply(FunSuiteLike.scala:208)
      at org.scalatest.FunSuiteLike$$anonfun$runTests$1.apply(FunSuiteLike.scala:208)
      at org.scalatest.SuperEngine$$anonfun$traverseSubNodes$1$1.apply(Engine.scala:413)
      at org.scalatest.SuperEngine$$anonfun$traverseSubNodes$1$1.apply(Engine.scala:401)
      at scala.collection.immutable.List.foreach(List.scala:318)
      at org.scalatest.SuperEngine.traverseSubNodes$1(Engine.scala:401)
      at org.scalatest.SuperEngine.org$scalatest$SuperEngine$$runTestsInBranch(Engine.scala:396)
      at org.scalatest.SuperEngine.runTestsImpl(Engine.scala:483)
      at org.scalatest.FunSuiteLike$class.runTests(FunSuiteLike.scala:208)
      at org.scalatest.FunSuite.runTests(FunSuite.scala:1555)
      at org.scalatest.Suite$class.run(Suite.scala:1424)
      at org.scalatest.FunSuite.org$scalatest$FunSuiteLike$$super$run(FunSuite.scala:1555)
      at org.scalatest.FunSuiteLike$$anonfun$run$1.apply(FunSuiteLike.scala:212)
      at org.scalatest.FunSuiteLike$$anonfun$run$1.apply(FunSuiteLike.scala:212)
      at org.scalatest.SuperEngine.runImpl(Engine.scala:545)
      at org.scalatest.FunSuiteLike$class.run(FunSuiteLike.scala:212)
      at org.apache.spark.streaming.rdd.WriteAheadLogBackedBlockRDDSuite.org$scalatest$BeforeAndAfterAll$$super$run(WriteAheadLogBackedBlockRDDSuite.scala:31)
      at org.scalatest.BeforeAndAfterAll$class.liftedTree1$1(BeforeAndAfterAll.scala:257)
      at org.scalatest.BeforeAndAfterAll$class.run(BeforeAndAfterAll.scala:256)
      at org.apache.spark.streaming.rdd.WriteAheadLogBackedBlockRDDSuite.run(WriteAheadLogBackedBlockRDDSuite.scala:31)
      at org.scalatest.Suite$class.callExecuteOnSuite$1(Suite.scala:1492)
      at org.scalatest.Suite$$anonfun$runNestedSuites$1.apply(Suite.scala:1528)
      at org.scalatest.Suite$$anonfun$runNestedSuites$1.apply(Suite.scala:1526)
      at scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:33)
      at scala.collection.mutable.ArrayOps$ofRef.foreach(ArrayOps.scala:108)
      at org.scalatest.Suite$class.runNestedSuites(Suite.scala:1526)
      at org.scalatest.tools.DiscoverySuite.runNestedSuites(DiscoverySuite.scala:29)
      at org.scalatest.Suite$class.run(Suite.scala:1421)
      at org.scalatest.tools.DiscoverySuite.run(DiscoverySuite.scala:29)
      at org.scalatest.tools.SuiteRunner.run(SuiteRunner.scala:55)
      at org.scalatest.tools.Runner$$anonfun$doRunRunRunDaDoRunRun$3.apply(Runner.scala:2563)
      at org.scalatest.tools.Runner$$anonfun$doRunRunRunDaDoRunRun$3.apply(Runner.scala:2557)
      at scala.collection.immutable.List.foreach(List.scala:318)
      at org.scalatest.tools.Runner$.doRunRunRunDaDoRunRun(Runner.scala:2557)
      at org.scalatest.tools.Runner$$anonfun$runOptionallyWithPassFailReporter$2.apply(Runner.scala:1044)
      at org.scalatest.tools.Runner$$anonfun$runOptionallyWithPassFailReporter$2.apply(Runner.scala:1043)
      at org.scalatest.tools.Runner$.withClassLoaderAndDispatchReporter(Runner.scala:2722)
      at org.scalatest.tools.Runner$.runOptionallyWithPassFailReporter(Runner.scala:1043)
      at org.scalatest.tools.Runner$.main(Runner.scala:860)
      at org.scalatest.tools.Runner.main(Runner.scala)
{code}


---

* [SPARK-4825](https://issues.apache.org/jira/browse/SPARK-4825) | *Critical* | **CTAS fails to resolve when created using saveAsTable**

While writing a test for a different issue, I found that saveAsTable seems to be broken:

{code}
  test("save join to table") {
    val testData = sparkContext.parallelize(1 to 10).map(i => TestData(i, i.toString))
    sql("CREATE TABLE test1 (key INT, value STRING)")
    testData.insertInto("test1")
    sql("CREATE TABLE test2 (key INT, value STRING)")
    testData.insertInto("test2")
    testData.insertInto("test2")
    sql("SELECT COUNT(a.value) FROM test1 a JOIN test2 b ON a.key = b.key").saveAsTable("test")
    checkAnswer(
      table("test"),
      sql("SELECT COUNT(a.value) FROM test1 a JOIN test2 b ON a.key = b.key").collect().toSeq)
  }
​
    sql("SELECT COUNT(a.value) FROM test1 a JOIN test2 b ON a.key = b.key").saveAsTable("test")
org.apache.spark.sql.catalyst.errors.package$TreeNodeException: Unresolved plan found, tree:
'CreateTableAsSelect None, test, false, None
 Aggregate [], [COUNT(value#336) AS \_c0#334L]
  Join Inner, Some((key#335 = key#339))
   MetastoreRelation default, test1, Some(a)
   MetastoreRelation default, test2, Some(b)
{code}


---

* [SPARK-4821](https://issues.apache.org/jira/browse/SPARK-4821) | *Major* | **pyspark.mllib.rand docs not generated correctly**

spark/python/docs/pyspark.mllib.rst needs to be updated to reflect the change in package names from pyspark.mllib.random to .rand

Otherwise, the Python API docs are empty.


---

* [SPARK-4818](https://issues.apache.org/jira/browse/SPARK-4818) | *Major* | **Join operation should use iterator/lazy evaluation**

The current implementation of the join operation does not use an iterator (i.e. lazy evaluation), causing it to explicitly evaluate the co-grouped values. In big data applications, these value collections can be very large. This causes the *cartesian product of all co-grouped values* for a specific key of both RDDs to be kept in memory during the flatMapValues operation, resulting in an *O(size(pair.\_1)*size(pair.\_2))* memory consumption instead of *O(1)*. Very large value collections will therefore cause "GC overhead limit exceeded" exceptions and fail the task, or at least slow down execution dramatically.

{code:title=PairRDDFunctions.scala|borderStyle=solid}
//...
def join[W](other: RDD[(K, W)], partitioner: Partitioner): RDD[(K, (V, W))] = {
  this.cogroup(other, partitioner).flatMapValues( pair =>
    for (v <- pair.\_1; w <- pair.\_2) yield (v, w)
  )
}
//...
{code}

Since cogroup returns an Iterable instance of an Array, the join implementation could be changed to the following, which uses lazy evaluation instead, and has almost no memory overhead:
{code:title=PairRDDFunctions.scala|borderStyle=solid}
//...
def join[W](other: RDD[(K, W)], partitioner: Partitioner): RDD[(K, (V, W))] = {
  this.cogroup(other, partitioner).flatMapValues( pair =>
    for (v <- pair.\_1.iterator; w <- pair.\_2.iterator) yield (v, w)
  )
}
//...
{code}

Alternatively, if the current implementation is intentionally not using lazy evaluation for some reason, there could be a *lazyJoin()* method next to the original join implementation that utilizes lazy evaluation. This of course applies to other join operations as well.

Thanks! :)


---

* [SPARK-4813](https://issues.apache.org/jira/browse/SPARK-4813) | *Major* | **ContextWaiter didn't handle 'spurious wakeup'**

According to [javadocs|https://docs.oracle.com/javase/7/docs/api/java/lang/Object.html#wait(long)],
{quote}
A thread can also wake up without being notified, interrupted, or timing out, a so-called spurious wakeup. While this will rarely occur in practice, applications must guard against it by testing for the condition that should have caused the thread to be awakened, and continuing to wait if the condition is not satisfied. In other words, waits should always occur in loops, like this one:

     synchronized (obj) {
         while (<condition does not hold>)
             obj.wait(timeout);
         ... // Perform action appropriate to condition
     }
{quote}
`wait` should always occur in loops.

But now ContextWaiter.waitForStopOrError doesn't.
{code}
  def waitForStopOrError(timeout: Long = -1) = synchronized {
    // If already had error, then throw it
    if (error != null) {
      throw error
    }

    // If not already stopped, then wait
    if (!stopped) {
      if (timeout < 0) wait() else wait(timeout)
      if (error != null) throw error
    }
  }
{code}


---

* [SPARK-4803](https://issues.apache.org/jira/browse/SPARK-4803) | *Trivial* | **Duplicate RegisterReceiver messages sent from ReceiverSupervisor**

The ReceiverTracker receivers `RegisterReceiver` messages two times
     1) When the actor at `ReceiverSupervisorImpl`'s preStart is invoked
     2) After the receiver is started at the executor `onReceiverStart()` at `ReceiverSupervisorImpl`

Though the 'RegisterReceiver' message uses the same streamId and the receiverInfo gets updated every time the message is processed at the `ReceiverTracker`, it makes sense to call register receiver only after the
receiver is started.

or, am I missing something here?


---

* [SPARK-4802](https://issues.apache.org/jira/browse/SPARK-4802) | *Minor* | **ReceiverInfo removal at ReceiverTracker upon deregistering receiver**

When the streaming receiver is deregistered, the ReceiverTracker doesn't remove the corresponding receiverInfo entry for the receiver.

When the receiver is stopped at the executor and the ReceiverTrackerActor that processes the 'DeregisterReceiver' message. Shouldn't it remove the receiverInfo entry for that receiver as the receiver is actually deregistered?

Not sure if there is any specific reason for not removing it.
Currently, I see this warning if we don't remove it:

WARN main-EventThread scheduler.ReceiverTracker - All of the receivers have not deregistered, Map(0 -> ReceiverInfo(0,MyReceiver-0,null,false,localhost,Stopped by driver,))


---

* [SPARK-4790](https://issues.apache.org/jira/browse/SPARK-4790) | *Major* | **Flaky test in ReceivedBlockTrackerSuite: "block addition, block to batch allocation, and cleanup with write ahead log"**

Found another flaky streaming test, "org.apache.spark.streaming.ReceivedBlockTrackerSuite.block addition, block to batch allocation and cleanup with write ahead log":

{code}
Error Message

File /tmp/1418069118106-0/receivedBlockMetadata/log-0-1000 does not exist.

Stacktrace

sbt.ForkMain$ForkError: File /tmp/1418069118106-0/receivedBlockMetadata/log-0-1000 does not exist.
	at org.apache.hadoop.fs.RawLocalFileSystem.getFileStatus(RawLocalFileSystem.java:397)
	at org.apache.hadoop.fs.RawLocalFileSystem.listStatus(RawLocalFileSystem.java:324)
	at org.apache.spark.streaming.util.WriteAheadLogSuite$.getLogFilesInDirectory(WriteAheadLogSuite.scala:344)
	at org.apache.spark.streaming.ReceivedBlockTrackerSuite.getWriteAheadLogFiles(ReceivedBlockTrackerSuite.scala:248)
	at org.apache.spark.streaming.ReceivedBlockTrackerSuite$$anonfun$4.apply$mcV$sp(ReceivedBlockTrackerSuite.scala:173)
	at org.apache.spark.streaming.ReceivedBlockTrackerSuite$$anonfun$4.apply(ReceivedBlockTrackerSuite.scala:96)
	at org.apache.spark.streaming.ReceivedBlockTrackerSuite$$anonfun$4.apply(ReceivedBlockTrackerSuite.scala:96)
	at org.scalatest.Transformer$$anonfun$apply$1.apply$mcV$sp(Transformer.scala:22)
	at org.scalatest.OutcomeOf$class.outcomeOf(OutcomeOf.scala:85)
	at org.scalatest.OutcomeOf$.outcomeOf(OutcomeOf.scala:104)
	at org.scalatest.Transformer.apply(Transformer.scala:22)
	at org.scalatest.Transformer.apply(Transformer.scala:20)
	at org.scalatest.FunSuiteLike$$anon$1.apply(FunSuiteLike.scala:166)
	at org.scalatest.Suite$class.withFixture(Suite.scala:1122)
	at org.scalatest.FunSuite.withFixture(FunSuite.scala:1555)
	at org.scalatest.FunSuiteLike$class.invokeWithFixture$1(FunSuiteLike.scala:163)
	at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:175)
	at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:175)
	at org.scalatest.SuperEngine.runTestImpl(Engine.scala:306)
	at org.scalatest.FunSuiteLike$class.runTest(FunSuiteLike.scala:175)
	at org.apache.spark.streaming.ReceivedBlockTrackerSuite.org$scalatest$BeforeAndAfter$$super$runTest(ReceivedBlockTrackerSuite.scala:41)
	at org.scalatest.BeforeAndAfter$class.runTest(BeforeAndAfter.scala:200)
	at org.apache.spark.streaming.ReceivedBlockTrackerSuite.runTest(ReceivedBlockTrackerSuite.scala:41)
	at org.scalatest.FunSuiteLike$$anonfun$runTests$1.apply(FunSuiteLike.scala:208)
	at org.scalatest.FunSuiteLike$$anonfun$runTests$1.apply(FunSuiteLike.scala:208)
	at org.scalatest.SuperEngine$$anonfun$traverseSubNodes$1$1.apply(Engine.scala:413)
	at org.scalatest.SuperEngine$$anonfun$traverseSubNodes$1$1.apply(Engine.scala:401)
	at scala.collection.immutable.List.foreach(List.scala:318)
	at org.scalatest.SuperEngine.traverseSubNodes$1(Engine.scala:401)
	at org.scalatest.SuperEngine.org$scalatest$SuperEngine$$runTestsInBranch(Engine.scala:396)
	at org.scalatest.SuperEngine.runTestsImpl(Engine.scala:483)
	at org.scalatest.FunSuiteLike$class.runTests(FunSuiteLike.scala:208)
	at org.scalatest.FunSuite.runTests(FunSuite.scala:1555)
	at org.scalatest.Suite$class.run(Suite.scala:1424)
	at org.scalatest.FunSuite.org$scalatest$FunSuiteLike$$super$run(FunSuite.scala:1555)
	at org.scalatest.FunSuiteLike$$anonfun$run$1.apply(FunSuiteLike.scala:212)
	at org.scalatest.FunSuiteLike$$anonfun$run$1.apply(FunSuiteLike.scala:212)
	at org.scalatest.SuperEngine.runImpl(Engine.scala:545)
	at org.scalatest.FunSuiteLike$class.run(FunSuiteLike.scala:212)
	at org.apache.spark.streaming.ReceivedBlockTrackerSuite.org$scalatest$BeforeAndAfter$$super$run(ReceivedBlockTrackerSuite.scala:41)
	at org.scalatest.BeforeAndAfter$class.run(BeforeAndAfter.scala:241)
	at org.apache.spark.streaming.ReceivedBlockTrackerSuite.run(ReceivedBlockTrackerSuite.scala:41)
	at org.scalatest.tools.Framework.org$scalatest$tools$Framework$$runSuite(Framework.scala:462)
	at org.scalatest.tools.Framework$ScalaTestTask.execute(Framework.scala:671)
	at sbt.ForkMain$Run$2.call(ForkMain.java:294)
	at sbt.ForkMain$Run$2.call(ForkMain.java:284)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
{code}


---

* [SPARK-4787](https://issues.apache.org/jira/browse/SPARK-4787) | *Major* | **Clean up SparkContext after DAGScheduler initialization errors**

If an exception occurs when creating the DAGScheduler, then other resources in SparkContext may be leaked / not cleaned up.

*Edit (joshrosen):* this issue originally was a duplicate of SPARK-4194, but I've converted it into a subtask and revised it to relfect the scope of the PR opened against it.  The original PR description is reproduced below:

When client creates a SparkContext, currently there are many val to initialize during object initialization. But when there is failure initializing these val, like throwing an exception, the resources in this SparkContext is not released properly. 
For example, SparkUI object is created and bind to the HTTP server during initialization using
{{ui.foreach(\_.bind())}}
but if anything goes wrong after this code (say throwing an exception when creating DAGScheduler), the SparkUI server is not stopped, thus the port bind will fail again in the client when creating another SparkContext. So basically this leads to a situation that the client can not create another SparkContext in the same process, which I think it is not reasonable.

So, I suggest to refactor the SparkContext code to release resource when there is failure during in initialization.


---

* [SPARK-4772](https://issues.apache.org/jira/browse/SPARK-4772) | *Major* | **Accumulators leak memory, both temporarily and permanently**

Accumulators.localAccums is cleared at the beginning of a task, and not at the end.

This means that any locally accumulated values hang around until another task is run on that thread.

If for some reason, the thread dies, said values hang around indefinitely.

This is really only a big issue with very large accumulators.


---

* [SPARK-4771](https://issues.apache.org/jira/browse/SPARK-4771) | *Major* | **Document standalone --supervise feature**

We need this especially for streaming.


---

* [SPARK-4764](https://issues.apache.org/jira/browse/SPARK-4764) | *Minor* | **Ensure that files are fetched atomically**

It does not seem necessary in the {{doFetchFile}} method to first download the file into a local directory then move it (it may cause a copy instead of a rename).

{{tempFile}} (where the file is downloaded) should be created in the same directory than {{targetFile}}, so that the move from {{tempFile}} to {{targetFile}} is always atomic


---

* [SPARK-4759](https://issues.apache.org/jira/browse/SPARK-4759) | *Critical* | **Deadlock in complex spark job in local mode**

The attached test class runs two identical jobs that perform some iterative computation on an RDD[(Int, Int)]. This computation involves 
  # taking new data merging it with the previous result
  # caching and checkpointing the new result
  # rinse and repeat

The first time the job is run, it runs successfully, and the spark context is shut down. The second time the job is run with a new spark context in the same process, the job hangs indefinitely, only having scheduled a subset of the necessary tasks for the final stage.

Ive been able to produce a test case that reproduces the issue, and I've added some comments where some knockout experimentation has left some breadcrumbs as to where the issue might be.


---

* [SPARK-4754](https://issues.apache.org/jira/browse/SPARK-4754) | *Major* | **ExecutorAllocationManager should not take in SparkContext**

We should refactor ExecutorAllocationManager to not take in a SparkContext. Otherwise, new developers may try to add a lot of unnecessary pointers.


---

* [SPARK-4750](https://issues.apache.org/jira/browse/SPARK-4750) | *Major* | **Dynamic allocation - we need to synchronize kills**

https://github.com/apache/spark/blob/ab8177da2defab1ecd8bc0cd5a21f07be5b8d2c5/core/src/main/scala/org/apache/spark/scheduler/cluster/CoarseGrainedSchedulerBackend.scala#L337

Simple omission on my part.


---

* [SPARK-4745](https://issues.apache.org/jira/browse/SPARK-4745) | *Major* | **get\_existing\_cluster() doesn't work with additional security groups**

The spark-ec2 script has a flag that allows you to add additional security groups to clusters when you launch. However, the get\_existing\_cluster() function cycles through active instances and only returns instances whose group\_names == cluster\_name + "-master" (or + "-slaves"), which is the group created by default.  The get\_existing\_cluster() function is used to login to, stop, and destroy existing clusters, among other actions.

This is a pretty simple fix for which I've already submitted a [pull request|https://github.com/apache/spark/pull/3596]. It checks if cluster\_name + "-master" is in the list of groups for each active instance. This means the cluster group can be one among many groups, rather than the sole group for an instance.


---

* [SPARK-4730](https://issues.apache.org/jira/browse/SPARK-4730) | *Major* | **Warn against deprecated YARN settings**

Yarn currently reads from SPARK\_MASTER\_MEMORY and SPARK\_WORKER\_MEMORY. If you have these settings leftover from a standalone cluster setup and you try to run Spark on Yarn on the same cluster, then your executors suddenly get the amount of memory specified through SPARK\_WORKER\_MEMORY.

This behavior is due in large part to backward compatibility. However, we should log a warning against the use of these variables at the very least.


---

* [SPARK-4714](https://issues.apache.org/jira/browse/SPARK-4714) | *Minor* | **BlockManager should check whether blocks have already been removed Checking block is null or not after having gotten info.lock in remove block method**

in removeBlock()/ dropOldBlock()/ dropFromMemory()
all have the same logic:
1. info = blockInfo.get(id)
2. if (info != null)
3. info.synchronized

there may be a possibility that while one thread got info.lock while the previous thread already removed from blockinfo in info.lock. 

but one thing in current code,  That not check info is null or not, while get info.lock to remove block, will not cause any errors.


---

* [SPARK-4691](https://issues.apache.org/jira/browse/SPARK-4691) | *Minor* | **Restructure a few lines in shuffle code**

aggregator and mapSideCombine judgement in 
HashShuffleWriter.scala 
SortShuffleWriter.scala
HashShuffleReader.scala


---

* [SPARK-4671](https://issues.apache.org/jira/browse/SPARK-4671) | *Major* | **Streaming block need not to replicate 2 copies when WAL is enabled**

Generated streaming blocks should not be replicated to another node when WAL is enabled, since WAL is already fault tolerant, this will hurt the throughput of streaming application.


---

* [SPARK-4660](https://issues.apache.org/jira/browse/SPARK-4660) | *Critical* | **JavaSerializer uses wrong classloader**

During testing we found failures when trying to load some classes of the user application:

{noformat}
ERROR 2014-11-29 20:01:56 org.apache.spark.storage.BlockManagerWorker: Exception handling buffer message
java.lang.ClassNotFoundException: org.apache.spark.demo.HttpReceiverCases$HttpRequest
	at java.net.URLClassLoader$1.run(URLClassLoader.java:366)
	at java.net.URLClassLoader$1.run(URLClassLoader.java:355)
	at java.security.AccessController.doPrivileged(Native Method)
	at java.net.URLClassLoader.findClass(URLClassLoader.java:354)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:425)
	at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:308)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:358)
	at java.lang.Class.forName0(Native Method)
	at java.lang.Class.forName(Class.java:270)
	at org.apache.spark.serializer.JavaDeseriali
zationStream$$anon$1.resolveClass(JavaSerializer.scala:59)
	at java.io.ObjectInputStream.readNonProxyDesc(ObjectInputStream.java:1612)
	at java.io.ObjectInputStream.readClassDesc(ObjectInputStream.java:1517)
	at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1771)
	at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1350)
	at java.io.ObjectInputStream.readObject(ObjectInputStream.java:370)
	at org.apache.spark.serializer.JavaDeserializationStream.readObject(JavaSerializer.scala:62)
	at org.apache.spark.serializer.DeserializationStream$$anon$1.getNext(Serializer.scala:133)
	at org.apache.spark.util.NextIterator.hasNext(NextIterator.scala:71)
	at org.apache.spark.storage.MemoryStore.unrollSafely(MemoryStore.scala:235)
	at org.apache.spark.storage.MemoryStore.putIterator(MemoryStore.scala:126)
	at org.apache.spark.storage.MemoryStore.putIterator(MemoryStore.scala:104)
	at org.apache.spark.storage.MemoryStore.putBytes(MemoryStore.scala:76)
	at org.apache.spark.storage.BlockManager.doPut(BlockManager.scala:748)
	at org.apache.spark.storage.BlockManager.putBytes(BlockManager.scala:639)
	at org.apache.spark.storage.BlockManagerWorker.putBlock(BlockManagerWorker.scala:92)
	at org.apache.spark.storage.BlockManagerWorker.processBlockMessage(BlockManagerWorker.scala:73)
	at org.apache.spark.storage.BlockManagerWorker$$anonfun$2.apply(BlockManagerWorker.scala:48)
	at org.apache.spark.storage.BlockManagerWorker$$anonfun$2.apply(BlockManagerWorker.scala:48)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.Iterator$class.foreach(Iterator.scala:727)
	at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
	at scala.collection.IterableLike$class.foreach(IterableLike.scala:72)
	at org.apache.spark.storage.BlockMessageArray.foreach(BlockMessageArray.scala:28)
	at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
	at org.apache.spark.storage.BlockMessageArray.map(BlockMessageArray.scala:28)
	at org.apache.spark.storage.BlockManagerWorker.onBlockMessageReceive(BlockManagerWorker.scala:48)
	at org.apache.spark.storage.BlockManagerWorker$$anonfun$1.apply(BlockManagerWorker.scala:38)
	at org.apache.spark.storage.BlockManagerWorker$$anonfun$1.apply(BlockManagerWorker.scala:38)
	at org.apache.spark.network.ConnectionManager.org$apache$spark$network$ConnectionManager$$handleMessage(ConnectionManager.scala:682)
	at org.apache.spark.network.ConnectionManager$$anon$10.run(ConnectionManager.scala:520)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:744)
{noformat}


---

* [SPARK-4656](https://issues.apache.org/jira/browse/SPARK-4656) | *Trivial* | **Typo in Programming Guide markdown**

Grammatical error in Programming Guide document


---

* [SPARK-4652](https://issues.apache.org/jira/browse/SPARK-4652) | *Minor* | **Add docs about spark-git-repo option**

It was a little hard to understand how to use --spark-git-repo option on spark-ec2 script. Some additional documentation might be needed to use it.


---

* [SPARK-4642](https://issues.apache.org/jira/browse/SPARK-4642) | *Minor* | **Documents about running-on-YARN needs update**

Documents about running-on-YARN needs update

There are some parameters missing in the document about running-on-YARN page.
We need to add the descriptions about the following parameters:
  - spark.yarn.report.interval
  - spark.yarn.queue
  - spark.yarn.user.classpath.first
  - spark.yarn.scheduler.reporterThread.maxFailures

And the description about this default parameter is not strictly accurate:
  - spark.yarn.submit.file.replication


---

* [SPARK-4606](https://issues.apache.org/jira/browse/SPARK-4606) | *Major* | **SparkSubmitDriverBootstrapper does not propagate EOF to child JVM**

Run this with "spark.driver.extraJavaOptions" set in your spark-defaults.conf:

{code}
  echo "" | spark-shell --master local -Xnojline
{code}

You'll end up with a child process that cannot read from stdin (you can CTRL-C out of it though). That's because when the bootstrapper's stdin reaches EOF, that is not propagated to the child JVM that's actually doing the reading.


---

* [SPARK-4597](https://issues.apache.org/jira/browse/SPARK-4597) | *Minor* | **Use proper exception and reset variable in Utils.createTempDir() method**

In Utils.scala, File.exists() and File.mkdirs() only throw SecurityException instead of IOException. Then, when an exception is thrown, the variable "dir" should be reset too.


---

* [SPARK-4595](https://issues.apache.org/jira/browse/SPARK-4595) | *Blocker* | **Spark MetricsServlet is not worked because of initialization ordering**

Web UI is initialized before MetricsSystem is started, at that time MetricsSerlvet is not yet created, which will make MetricsServlet fail to register  into web UI. 

Instead MetricsServlet handler should be added to the web UI after MetricsSystem is started.


---

* [SPARK-4569](https://issues.apache.org/jira/browse/SPARK-4569) | *Trivial* | **Rename "externalSorting" in Aggregator**

While technically all spilling in Spark does result in sorting, calling this variable externalSorting makes it seem like ExternalSorter will be used, when in fact it just means whether spilling is enabled.


---

* [SPARK-4537](https://issues.apache.org/jira/browse/SPARK-4537) | *Major* | **Add 'processing delay' and 'totalDelay' to the metrics reported by the Spark Streaming subsystem**

As the Spark Streaming tuning guide indicates, the key indicators of a healthy streaming job are:
- Processing Time
- Total Delay

The Spark UI page for the Streaming job [1] shows these two indicators but the metrics source for Spark Streaming (StreamingSource.scala)  [2] does not.

Adding these metrics will allow external monitoring systems that consume the Spark metrics interface to track these two critical pieces of information on a streaming job performance.


[1] https://github.com/apache/spark/blob/master/streaming/src/main/scala/org/apache/spark/streaming/ui/StreamingPage.scala#L127

[2] https://github.com/apache/spark/blob/master/streaming/src/main/scala/org/apache/spark/streaming/StreamingSource.scala


---

* [SPARK-4504](https://issues.apache.org/jira/browse/SPARK-4504) | *Minor* | **run-example fails if multiple example jars present in target folder**

Giving following error:

bin/run-example: line 39: [: /mnt/d/spark/spark/examples/target/scala-2.10/spark-examples-1.1.0-SNAPSHOT-hadoop1.0.4.jar: binary operator expected
Failed to find Spark examples assembly in /mnt/d/spark/spark/lib or /mnt/d/spark/spark/examples/target
You need to build Spark before running this program


---

* [SPARK-4465](https://issues.apache.org/jira/browse/SPARK-4465) | *Critical* | **runAsSparkUser doesn't affect TaskRunner in Mesos environment at all.**

runAsSparkUser enable classes using hadoop library to change an active user to spark User, however in Mesos environment, because the function calls before running within JNI, runAsSparkUser doesn't affect anything, and meaningless code. fix the Appropriate scope of function and remove meaningless code. That's a bug because of running program incorrectly. That's related to SPARK-3223 but setting framework user is not perfect solution in my tests.


---

* [SPARK-4464](https://issues.apache.org/jira/browse/SPARK-4464) | *Minor* | **Description about configuration options need to be modified in docs.**

There are 2 points need to be modified in Spark Standalone Mode page of docs.

1.
Configuration options {{--ip}}, {{-i}} are now deprecated,
and {{--host}} and {{-h}} are recommended instead.
But in Spark Standalone Mode page of docs, there are only former options.

2.
Option {{--properties-file}} is added by [SPARK-2098].
We need to add a description about this option in the docs.


---

* [SPARK-4459](https://issues.apache.org/jira/browse/SPARK-4459) | *Major* | **JavaRDDLike.groupBy[K](f: JFunction[T, K]) may fail with typechecking errors**

I believe this issue is essentially the same as SPARK-668.
Original error: 
{code}
[ERROR] /Users/saldaal1/workspace/JavaSparkSimpleApp/src/main/java/SimpleApp.java:[29,105] no suitable method found for groupBy(org.apache.spark.api.java.function.Function<scala.Tuple2<java.lang.String,java.lang.Long>,java.lang.Long>)
[ERROR] method org.apache.spark.api.java.JavaPairRDD.<K>groupBy(org.apache.spark.api.java.function.Function<scala.Tuple2<K,java.lang.Long>,K>) is not applicable
[ERROR] (inferred type does not conform to equality constraint(s)
{code}
from core/src/main/scala/org/apache/spark/api/java/JavaRDDLike.scala 
{code}
211  /**
212    * Return an RDD of grouped elements. Each group consists of a key and a sequence of elements
213    * mapping to that key.
214    */
215   def groupBy[K](f: JFunction[T, K]): JavaPairRDD[K, JIterable[T]] = {
216     implicit val ctagK: ClassTag[K] = fakeClassTag
217     implicit val ctagV: ClassTag[JList[T]] = fakeClassTag
218     JavaPairRDD.fromRDD(groupByResultToJava(rdd.groupBy(f)(fakeClassTag)))
219   }
{code}
Then in core/src/main/scala/org/apache/spark/api/java/JavaPairRDD.scala:
{code}
  45 class JavaPairRDD[K, V](val rdd: RDD[(K, V)])
  46                        (implicit val kClassTag: ClassTag[K], implicit val vClassTag: ClassTag[V])
  47   extends JavaRDDLike[(K, V), JavaPairRDD[K, V]] {
{code}
The problem is that the type parameter T in JavaRDDLike is Tuple2[K,V], which means the combined signature for groupBy in the JavaPairRDD is 

{code}
groupBy[K](f: JFunction[Tuple2[K,V], K])
{code}
which imposes an unfortunate correlation between the Tuple2 and the return type of the grouping function, namely that the return type of the grouping function must be the same as the first type of the JavaPairRDD.


If we compare the method signature to flatMap:

{code}
105   /**
106    *  Return a new RDD by first applying a function to all elements of this
107    *  RDD, and then flattening the results.
108    */
109   def flatMap[U](f: FlatMapFunction[T, U]): JavaRDD[U] = {
110     import scala.collection.JavaConverters.\_
111     def fn = (x: T) => f.call(x).asScala
112     JavaRDD.fromRDD(rdd.flatMap(fn)(fakeClassTag[U]))(fakeClassTag[U])
113   }
{code}

we see there should be an easy fix by changing the type parameter of the groupBy function from K to U.


---

* [SPARK-4421](https://issues.apache.org/jira/browse/SPARK-4421) | *Trivial* | **Wrong link in spark-standalone.html**

The link about building spark in the document page "Spark Standalone Mode" (spark-standalone.html) is wrong.
That link is pointed at {{index.html#building}}, but it is only available until 0.9. The building guide was moved to another page ({{building-with-maven.html}} in 1.0 and 1.1, or {{building-spark.html}} in 1.2).


---

* [SPARK-4298](https://issues.apache.org/jira/browse/SPARK-4298) | *Major* | **The spark-submit cannot read Main-Class from Manifest.**

Consider trivial {{test.scala}}:
{code:title=test.scala|borderStyle=solid}
import org.apache.spark.SparkContext
import org.apache.spark.SparkContext.\_

object Main {
  def main(args: Array[String]) {
    val sc = new SparkContext()
    sc.stop()
  }
}
{code}

When built with {{sbt}} and executed using {{spark-submit target/scala-2.10/test\_2.10-1.0.jar}}, I get the following error:
{code}
Spark assembly has been built with Hive, including Datanucleus jars on classpath
Error: Cannot load main class from JAR: file:/ha/home/straka/s/target/scala-2.10/test\_2.10-1.0.jar
Run with --help for usage help or --verbose for debug output
{code}

When executed using {{spark-submit --class Main target/scala-2.10/test\_2.10-1.0.jar}}, it works.

The jar file has correct MANIFEST.MF:
{code:title=MANIFEST.MF|borderStyle=solid}
Manifest-Version: 1.0
Implementation-Vendor: test
Implementation-Title: test
Implementation-Version: 1.0
Implementation-Vendor-Id: test
Specification-Vendor: test
Specification-Title: test
Specification-Version: 1.0
Main-Class: Main
{code}

The problem is that in {{org.apache.spark.deploy.SparkSubmitArguments}}, line 127:
{code}
  val jar = new JarFile(primaryResource)
{code}
the primaryResource has String value {{"file:/ha/home/straka/s/target/scala-2.10/test\_2.10-1.0.jar"}}, which is URI, but JarFile can use only Path. One way to fix this would be using
{code}
  val uri = new URI(primaryResource)
  val jar = new JarFile(uri.getPath)
{code}


---

* [SPARK-4296](https://issues.apache.org/jira/browse/SPARK-4296) | *Blocker* | **Throw "Expression not in GROUP BY" when using same expression in group by clause and  select clause**

When the input data has a complex structure, using same expression in group by clause and  select clause will throw "Expression not in GROUP BY".

{code:java}
val sqlContext = new org.apache.spark.sql.SQLContext(sc)
import sqlContext.createSchemaRDD
case class Birthday(date: String)
case class Person(name: String, birthday: Birthday)
val people = sc.parallelize(List(Person("John", Birthday("1990-01-22")), Person("Jim", Birthday("1980-02-28"))))
people.registerTempTable("people")
val year = sqlContext.sql("select count(*), upper(birthday.date) from people group by upper(birthday.date)")
year.collect
{code}

Here is the plan of year:
{code:java}
SchemaRDD[3] at RDD at SchemaRDD.scala:105
== Query Plan ==
== Physical Plan ==
org.apache.spark.sql.catalyst.errors.package$TreeNodeException: Expression not in GROUP BY: Upper(birthday#1.date AS date#9) AS c1#3, tree:
Aggregate [Upper(birthday#1.date)], [COUNT(1) AS c0#2L,Upper(birthday#1.date AS date#9) AS c1#3]
 Subquery people
  LogicalRDD [name#0,birthday#1], MapPartitionsRDD[1] at mapPartitions at ExistingRDD.scala:36
{code}

The bug is the equality test for `Upper(birthday#1.date)` and `Upper(birthday#1.date AS date#9)`.

Maybe Spark SQL needs a mechanism to compare Alias expression and non-Alias expression.


---

* [SPARK-4161](https://issues.apache.org/jira/browse/SPARK-4161) | *Major* | **Spark shell class path is not correctly set if "spark.driver.extraClassPath" is set in defaults.conf**

(1) I want to launch a spark-shell + with jars that are only required by the driver (ie. not shipped to slaves)
 
(2) I added "spark.driver.extraClassPath  /mypath/to.jar" to my spark-defaults.conf
I launched spark-shell with:  ./spark-shell

Here I see on the WebUI that spark.driver.extraClassPath has been set, but I am NOT able to access any methods in the jar.

(3) I removed "spark.driver.extraClassPath" from my spark-default.conf
I launched spark-shell with  ./spark-shell --driver.class.path /mypath/to.jar

Again I see that the WebUI spark.driver.extraClassPath has been set. 
But this time I am able to access the methods in the jar. 


Looks like when the driver class path is loaded from spark-default.conf, the REPL's classpath is not correctly appended.


---

* [SPARK-4147](https://issues.apache.org/jira/browse/SPARK-4147) | *Major* | **Reduce log4j dependency**

spark-core has a hard dependency on log4j, which shouldn't be necessary since slf4j is used. I tried to exclude slf4j-log4j12 and log4j dependencies in my sbt file.

Excluding org.slf4j.slf4j-log4j12 works fine if logback is on the classpath. However, removing the log4j dependency fails because in https://github.com/apache/spark/blob/v1.1.0/core/src/main/scala/org/apache/spark/Logging.scala#L121 a static method of org.apache.log4j.LogManager is accessed *even if* log4j is not in use.

I guess removing all dependencies on log4j may be a bigger task, but it would be a great help if the access to LogManager would be done only if log4j use was detected before. (This is a 2-line change.)


---

* [SPARK-4140](https://issues.apache.org/jira/browse/SPARK-4140) | *Major* | **Document the dynamic allocation feature**

This blocks on SPARK-3795 and SPARK-3822.


---

* [SPARK-3926](https://issues.apache.org/jira/browse/SPARK-3926) | *Major* | **result of JavaRDD collectAsMap() is not serializable**

Using the Java API, I want to collect the result of a RDD<String, String> as a HashMap using collectAsMap function:
Map<String, String> map = myJavaRDD.collectAsMap();
This works fine, but when passing this map to another function, such as...
myOtherJavaRDD.mapToPair(new CustomFunction(map))
...this leads to the following error:

Exception in thread "main" org.apache.spark.SparkException: Task not serializable

	at org.apache.spark.util.ClosureCleaner$.ensureSerializable(ClosureCleaner.scala:166)

	at org.apache.spark.util.ClosureCleaner$.clean(ClosureCleaner.scala:158)

	at org.apache.spark.SparkContext.clean(SparkContext.scala:1242)

	at org.apache.spark.rdd.RDD.map(RDD.scala:270)

	at org.apache.spark.api.java.JavaRDDLike$class.mapToPair(JavaRDDLike.scala:99)

	at org.apache.spark.api.java.JavaPairRDD.mapToPair(JavaPairRDD.scala:44)

	../.. MY CLASS ../..

	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)

	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)

	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)

	at java.lang.reflect.Method.invoke(Method.java:606)

	at org.apache.spark.deploy.SparkSubmit$.launch(SparkSubmit.scala:328)

	at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:75)

	at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)

Caused by: java.io.NotSerializableException: scala.collection.convert.Wrappers$MapWrapper

	at java.io.ObjectOutputStream.writeObject0(ObjectOutputStream.java:1183)

	at java.io.ObjectOutputStream.defaultWriteFields(ObjectOutputStream.java:1547)

	at java.io.ObjectOutputStream.writeSerialData(ObjectOutputStream.java:1508)

	at java.io.ObjectOutputStream.writeOrdinaryObject(ObjectOutputStream.java:1431)

	at java.io.ObjectOutputStream.writeObject0(ObjectOutputStream.java:1177)

	at java.io.ObjectOutputStream.defaultWriteFields(ObjectOutputStream.java:1547)

	at java.io.ObjectOutputStream.writeSerialData(ObjectOutputStream.java:1508)

	at java.io.ObjectOutputStream.writeOrdinaryObject(ObjectOutputStream.java:1431)

	at java.io.ObjectOutputStream.writeObject0(ObjectOutputStream.java:1177)

	at java.io.ObjectOutputStream.writeObject(ObjectOutputStream.java:347)

	at org.apache.spark.serializer.JavaSerializationStream.writeObject(JavaSerializer.scala:42)

	at org.apache.spark.serializer.JavaSerializerInstance.serialize(JavaSerializer.scala:73)

at org.apache.spark.util.ClosureCleaner$.ensureSerializable(ClosureCleaner.scala:164)

This seems to be due to WrapAsJava.scala being non serializable
../..
  implicit def mapAsJavaMap[A, B](m: Map[A, B]): ju.Map[A, B] = m match {
    //case JConcurrentMapWrapper(wrapped) => wrapped
    case JMapWrapper(wrapped) => wrapped.asInstanceOf[ju.Map[A, B]]
    case \_ => new MapWrapper(m)
  }
../..

The workaround is to manually wrapper this map into another one (serialized)
Map<String, String> map = myJavaRDD.collectAsMap();
Map<String, String> tmp = new HashMap<String, String>(map);
myOtherJavaRDD.mapToPair(new CustomFunction(tmp))


---

* [SPARK-3787](https://issues.apache.org/jira/browse/SPARK-3787) | *Major* | **Assembly jar name is wrong when we build with sbt omitting -Dhadoop.version**

When we build with sbt with profile for hadoop and without property for hadoop version like:

{code}
sbt/sbt -Phadoop-2.2 assembly
{code}

jar name is always used default version (1.0.4).

When we build with maven with same condition for sbt, default version for each profile is used.
For instance, if we  build like:

{code}
mvn -Phadoop-2.2 package
{code}

jar name is used hadoop2.2.0 as a default version of hadoop-2.2.


---

* [SPARK-3428](https://issues.apache.org/jira/browse/SPARK-3428) | *Major* | **TaskMetrics for running tasks is missing GC time metrics**

SPARK-2099 added the ability to update helpful metrics like shuffle bytes read/written on the webui via a periodic heartbeat from executors.  It omitted GC time metrics though.

This ticket is for including GC times in the heartbeats.

See the updateAggregateMetrics method here:
https://github.com/apache/spark/pull/1056/files#diff-1f32bcb61f51133bd0959a4177a066a5R175


---

* [SPARK-2892](https://issues.apache.org/jira/browse/SPARK-2892) | *Critical* | **Socket Receiver does not stop when streaming context is stopped**

Running NetworkWordCount with
{quote}      
ssc.start(); Thread.sleep(10000); ssc.stop(stopSparkContext = false); Thread.sleep(60000)
{quote}

gives the following error

{quote}
14/08/06 18:37:13 INFO TaskSetManager: Finished task 0.0 in stage 0.0 (TID 0) in 10047 ms on localhost (1/1)
14/08/06 18:37:13 INFO DAGScheduler: Stage 0 (runJob at ReceiverTracker.scala:275) finished in 10.056 s
14/08/06 18:37:13 INFO TaskSchedulerImpl: Removed TaskSet 0.0, whose tasks have all completed, from pool
14/08/06 18:37:13 INFO SparkContext: Job finished: runJob at ReceiverTracker.scala:275, took 10.179263 s
14/08/06 18:37:13 INFO ReceiverTracker: All of the receivers have been terminated
14/08/06 18:37:13 WARN ReceiverTracker: All of the receivers have not deregistered, Map(0 -> ReceiverInfo(0,SocketReceiver-0,null,false,localhost,Stopped by driver,))
14/08/06 18:37:13 INFO ReceiverTracker: ReceiverTracker stopped
14/08/06 18:37:13 INFO JobGenerator: Stopping JobGenerator immediately
14/08/06 18:37:13 INFO RecurringTimer: Stopped timer for JobGenerator after time 1407375433000
14/08/06 18:37:13 INFO JobGenerator: Stopped JobGenerator
14/08/06 18:37:13 INFO JobScheduler: Stopped JobScheduler
14/08/06 18:37:13 INFO StreamingContext: StreamingContext stopped successfully
14/08/06 18:37:43 INFO SocketReceiver: Stopped receiving
14/08/06 18:37:43 INFO SocketReceiver: Closed socket to localhost:9999
{quote}


---

* [SPARK-2823](https://issues.apache.org/jira/browse/SPARK-2823) | *Major* | **GraphX jobs throw IllegalArgumentException**

If the users set “spark.default.parallelism” and the value is different with the EdgeRDD partition number, GraphX jobs will throw IllegalArgumentException:

14/07/26 21:06:51 WARN DAGScheduler: Creating new stage failed due to exception - job: 1
java.lang.IllegalArgumentException: Can't zip RDDs with unequal numbers of partitions
        at org.apache.spark.rdd.ZippedPartitionsBaseRDD.getPartitions(ZippedPartitionsRDD.scala:60)
        at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:204)
        at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:202)
        at scala.Option.getOrElse(Option.scala:120)
        at org.apache.spark.rdd.RDD.partitions(RDD.scala:202)
        at org.apache.spark.rdd.ZippedPartitionsBaseRDD.getPartitions(ZippedPartitionsRDD.scala:54)
        at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:204)
        at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:202)
        at scala.Option.getOrElse(Option.scala:120)
        at org.apache.spark.rdd.RDD.partitions(RDD.scala:202)
        at org.apache.spark.rdd.MapPartitionsRDD.getPartitions(MapPartitionsRDD.scala:32)
        at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:204)
        at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:202)
        at scala.Option.getOrElse(Option.scala:120)
        at org.apache.spark.rdd.RDD.partitions(RDD.scala:202)
        at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$getShuffleMapStage(DAGScheduler.scala:1
97)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$visit$1$1.apply(DAGScheduler.s
cala:272)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$visit$1$1.apply(DAGScheduler.s
cala:269)
        at scala.collection.immutable.List.foreach(List.scala:318)
        at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$visit$1(DAGScheduler.scala:269)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$visit$1$1.apply(DAGScheduler.s
cala:274)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$visit$1$1.apply(DAGScheduler.s
cala:269)
        at scala.collection.immutable.List.foreach(List.scala:318)
        at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$visit$1(DAGScheduler.scala:269)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$visit$1$1.apply(DAGScheduler.s
cala:274)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$visit$1$1.apply(DAGScheduler.s
cala:269)
        at scala.collection.immutable.List.foreach(List.scala:318)
        at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$visit$1(DAGScheduler.scala:269)
        at org.apache.spark.scheduler.DAGScheduler.getParentStages(DAGScheduler.scala:279)
        at org.apache.spark.scheduler.DAGScheduler.newStage(DAGScheduler.scala:219)
        at org.apache.spark.scheduler.DAGScheduler.handleJobSubmitted(DAGScheduler.scala:672)
        at org.apache.spark.scheduler.DAGSchedulerEventProcessActor$$anonfun$receive$2.applyOrElse(DAGScheduler.scala:1184)
        at akka.actor.ActorCell.receiveMessage(ActorCell.scala:498)
        at akka.actor.ActorCell.invoke(ActorCell.scala:456)
        at akka.dispatch.Mailbox.processMailbox(Mailbox.scala:237)
        at akka.dispatch.Mailbox.run(Mailbox.scala:219)
        at akka.dispatch.ForkJoinExecutorConfigurator$AkkaForkJoinTask.exec(AbstractDispatcher.scala:386)
        at scala.concurrent.forkjoin.ForkJoinTask.doExec(ForkJoinTask.java:260)
        at scala.concurrent.forkjoin.ForkJoinPool$WorkQueue.runTask(ForkJoinPool.java:1339)
        at scala.concurrent.forkjoin.ForkJoinPool.runWorker(ForkJoinPool.java:1979)
        at scala.concurrent.forkjoin.ForkJoinWorkerThread.run(ForkJoinWorkerThread.java:107)


---

* [SPARK-2075](https://issues.apache.org/jira/browse/SPARK-2075) | *Critical* | **Anonymous classes are missing from Spark distribution**

Running a job built against the Maven dep for 1.0.0 and the hadoop1 distribution produces:

{code}
java.lang.ClassNotFoundException:
org.apache.spark.rdd.RDD$$anonfun$saveAsTextFile$1
{code}

Here's what's in the Maven dep as of 1.0.0:

{code}
jar tvf ~/.m2/repository/org/apache/spark/spark-core\_2.10/1.0.0/spark-core\_2.10-1.0.0.jar | grep 'rdd/RDD' | grep 'saveAs'
  1519 Mon May 26 13:57:58 PDT 2014 org/apache/spark/rdd/RDD$anonfun$saveAsTextFile$1.class
  1560 Mon May 26 13:57:58 PDT 2014 org/apache/spark/rdd/RDD$anonfun$saveAsTextFile$2.class
{code}

And here's what's in the hadoop1 distribution:

{code}
jar tvf spark-assembly-1.0.0-hadoop1.0.4.jar| grep 'rdd/RDD' | grep 'saveAs'
{code}

I.e., it's not there.  It is in the hadoop2 distribution:

{code}
jar tvf spark-assembly-1.0.0-hadoop2.2.0.jar| grep 'rdd/RDD' | grep 'saveAs'
  1519 Mon May 26 07:29:54 PDT 2014 org/apache/spark/rdd/RDD$anonfun$saveAsTextFile$1.class
  1560 Mon May 26 07:29:54 PDT 2014 org/apache/spark/rdd/RDD$anonfun$saveAsTextFile$2.class
{code}


---

* [SPARK-785](https://issues.apache.org/jira/browse/SPARK-785) | *Major* | **ClosureCleaner not invoked on most PairRDDFunctions**

It's pretty weird that we've missed this so far, but it seems to be the case. Unfortunately it may not be good to fix this in 0.7.3 because it could change behavior in unexpected ways; I haven't decided yet. But we should definitely do it for 0.8, and add tests.


---

* [SPARK-733](https://issues.apache.org/jira/browse/SPARK-733) | *Major* | **Add documentation on use of accumulators in lazy transformation**

Accumulators updates are side-effects of RDD computations.  Unlike RDDs, accumulators do not carry lineage that would allow them to be computed when their values are accessed on the master.

This can lead to confusion when accumulators are used in lazy transformations like `map`:

{code}
    val acc = sc.accumulator(0)
    data.map(x => acc += x; f(x))
    // Here, acc is 0 because no actions have cause the `map` to be computed.
{code}

As far as I can tell, our  documentation only includes examples of using accumulators in `foreach`, for which this problem does not occur.

This pattern of using accumulators in map() occurs in Bagel and other Spark code found in the wild.

It might be nice to document this behavior in the accumulators section of the Spark programming guide.



