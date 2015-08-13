
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

{{build/mvn}} [uses a {{-z `zinc -status`}} test|https://github.com/apache/spark/blob/5a23213c148bfe362514f9c71f5273ebda0a848a/build/mvn#L138] to determine whether a {{zinc}} process is running.

However, {{zinc -status}} checks port {{3030}} by default.

This means that if a {{$ZINC\_PORT}} env var is set to some value besides {{3030}}, and an existing {{zinc}} process is running on port {{3030}}, {{build/mvn}} will skip starting a {{zinc}} process, thinking that a suitable one is running.

Subsequent compilations will look for a {{zinc}} at port {{$ZINC\_PORT}} and not find one.

The {{zinc -status}} call should get the flag {{-port "$ZINC\_PORT"}} added to it.


---

* [SPARK-9607](https://issues.apache.org/jira/browse/SPARK-9607) | *Minor* | **Incorrect zinc check in build/mvn**

[This check|https://github.com/apache/spark/blob/5a23213c148bfe362514f9c71f5273ebda0a848a/build/mvn#L84-L85] in {{build/mvn}} attempts to determine whether {{zinc}} has been installed, but it fails to add the prefix {{build/}} to the path, so it always thinks that {{zinc}} is not installed, sets {{ZINC\_INSTALL\_FLAG}} to {{1}}, and attempts to install {{zinc}}.

This error manifests later because [the {{zinc -shutdown}} and {{zinc -start}} commands|https://github.com/apache/spark/blob/5a23213c148bfe362514f9c71f5273ebda0a848a/build/mvn#L140-L143] are always run, even if zinc was not installed and is running.


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
15/07/29 15:17:09 WARN YarnSchedulerBackend$YarnSchedulerEndpoint: ApplicationMaster has disassociated: <address removed>
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

When the *left outer join* is performed on a non-empty {{JavaPairRDD}} with a {{JavaPairRDD}} which was created with the {{emptyRDD()}} method the resulting RDD is empty. In the following unit test the latest assert fails.

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

      val onePair = oneRdd.mapToPair(t -> new Tuple2<Integer, String>(1, t));
      val twoPair = twoRdd.groupBy(t -> 1);
      val threePair = threeRdd.groupBy(t -> 1);

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

In the BLAS wrapper, gemm is supposed to update matrix C to be alpha * A * B + beta * C. However, the current implementation will not update C as long as alpha == 0. This is incorrect when beta is not equal to 1. 

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
  GraphGenerators.logNormalGraph(sc, numVertices = 100).mapVertices( (id, \_) => id.toLong ).mapEdges( e => e.attr.toLong)
  
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
  File "<input>", line 1, in <module>
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

* [SPARK-8881](https://issues.apache.org/jira/browse/SPARK-8881) | *Critical* | **Standalone mode scheduling fails because cores assignment is not atomic**

Current scheduling algorithm (in Master.scala) has two issues:

1. cores are allocated one at a time instead of spark.executor.cores at a time
2. when spark.cores.max/spark.executor.cores < num\_workers, executors are not launched and the app hangs (due to 1)

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

When running Spark application in Yarn mode and Yarn log aggregation is enabled, customer is not able to view executor logs on the history server Web UI. The only way for customer to view the logs is through the Yarn command "yarn logs -applicationId <appId>".

An screenshot of the error is attached. When you click an executor’s log link on the Spark history server, you’ll see the error if Yarn log aggregation is enabled. The log URL redirects user to the node manager’s UI. This works if the logs are located on that node. But since log aggregation is enabled, the local logs are deleted once log aggregation is completed. 

The logs should be available through the web UIs just like other Hadoop components like MapReduce. For security reasons, end users may not be able to log into the nodes and run the yarn logs -applicationId command. The web UIs can be viewable and exposed through the firewall if necessary.


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

While creating a graph with 6B nodes and 12B edges, I noticed that 'numVertices' api returns incorrect result; 'numEdges' reports correct number. For few times(with different dataset > 2.5B nodes) I have also notices that numVertices is returned as -ive number; so I suspect that there is some overflow (may be we are using Int for some field?).

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



