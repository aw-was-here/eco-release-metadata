
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
# Apache Spark  1.2.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [SPARK-5121](https://issues.apache.org/jira/browse/SPARK-5121) | *Major* | **Stored as parquet doens't support the CTAS**

In the CTAS, stored as parquet  is an unsupported Hive feature


---

* [SPARK-4785](https://issues.apache.org/jira/browse/SPARK-4785) | *Blocker* | **When called with arguments referring column fields, PMOD throws NPE**

Reproducible when compiled with {{-Phive-0.13.1}}, {{-Phive0.12.0}} is OK.

Reproduction steps with {{hive/console}}:
{code}
scala> loadTestTable("src")
scala> sql("SELECT PMOD(key, 10) FROM src LIMIT 1").collect()
...
14/12/08 15:11:31 INFO DAGScheduler: Job 0 failed: runJob at basicOperators.scala:141, took 0.235788 s
org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 0.0 failed 1 times, most recent failure: Lost task 0.0 in stage 0.0 (TID 0, localhost): java.lang.NullPointerException
        at org.apache.hadoop.hive.ql.udf.generic.GenericUDFBaseNumeric.initialize(GenericUDFBaseNumeric.java:109)
        at org.apache.hadoop.hive.ql.udf.generic.GenericUDF.initializeAndFoldConstants(GenericUDF.java:116)
        at org.apache.spark.sql.hive.HiveGenericUdf.returnInspector$lzycompute(hiveUdfs.scala:156)
        at org.apache.spark.sql.hive.HiveGenericUdf.returnInspector(hiveUdfs.scala:155)
        at org.apache.spark.sql.hive.HiveGenericUdf.eval(hiveUdfs.scala:174)
        at org.apache.spark.sql.catalyst.expressions.Alias.eval(namedExpressions.scala:92)
        at org.apache.spark.sql.catalyst.expressions.InterpretedMutableProjection.apply(Projection.scala:68)
        at org.apache.spark.sql.catalyst.expressions.InterpretedMutableProjection.apply(Projection.scala:52)
        at scala.collection.Iterator$$anon$11.next(Iterator.scala:328)
        at scala.collection.Iterator$$anon$11.next(Iterator.scala:328)
        at scala.collection.Iterator$$anon$10.next(Iterator.scala:312)
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
        at org.apache.spark.sql.execution.Limit$$anonfun$4.apply(basicOperators.scala:141)
        at org.apache.spark.sql.execution.Limit$$anonfun$4.apply(basicOperators.scala:141)
        at org.apache.spark.SparkContext$$anonfun$runJob$4.apply(SparkContext.scala:1314)
        at org.apache.spark.SparkContext$$anonfun$runJob$4.apply(SparkContext.scala:1314)
        at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:61)
        at org.apache.spark.scheduler.Task.run(Task.scala:56)
        at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:196)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:745)

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

This issue is introduced in [PR #3109|https://github.com/apache/spark/pull/3109/files#diff-010a66b2d9b5e8a991c7b23f666a2036R156], where {{GenericUDF.initialize}} was replaced by {{GenericUDF.initializeAndFoldConstants}}, which then calls {{GenericUDFBaseNumeric.initialize}} in case of {{PMOD}}. However, {{GenericUDFBaseNumeric.initialize}} needs to access the current {{SessionState}} [\[1\]|https://github.com/apache/hive/blob/release-0.13.1/ql/src/java/org/apache/hadoop/hive/ql/udf/generic/GenericUDFBaseNumeric.java#L109], which only exists on the driver side. Thus, when executed on executor side, an NPE is thrown.


---

* [SPARK-4774](https://issues.apache.org/jira/browse/SPARK-4774) | *Major* | **Make HiveFromSpark example more portable**

The HiveFromSpark example needs the kv1.txt file to run in a specific location: SPARK\_HOME/examples/src/main/resources/kv1.txt which assumes you have the source tree checked out. 

A more portable way is to copy the kv1.txt to a temporary file that gets cleaned up when the jvm shutsdown. This would allow us to run this example outside of a source tree.


---

* [SPARK-4769](https://issues.apache.org/jira/browse/SPARK-4769) | *Critical* | **CTAS does not work when reading from temporary tables**

{code}
test("double nested data") {
    sparkContext.parallelize(Nested1(Nested2(Nested3(1))) ::
Nil).registerTempTable("nested")
    checkAnswer(
      sql("SELECT f1.f2.f3 FROM nested"),
      1)
    checkAnswer(sql("CREATE TABLE test\_ctas\_1234 AS SELECT * from nested"),
Seq.empty[Row])
    checkAnswer(
      sql("SELECT * FROM test\_ctas\_1234"),
      sql("SELECT * FROM nested").collect().toSeq)
  }
{code}

{code}
11:57:15.974 ERROR org.apache.hadoop.hive.ql.parse.SemanticAnalyzer:
org.apache.hadoop.hive.ql.parse.SemanticException: Line 1:45 Table not found
'nested'
        at
org.apache.hadoop.hive.ql.parse.SemanticAnalyzer.getMetaData(SemanticAnalyzer.java:1243)
        at
org.apache.hadoop.hive.ql.parse.SemanticAnalyzer.getMetaData(SemanticAnalyzer.java:1192)
        at
org.apache.hadoop.hive.ql.parse.SemanticAnalyzer.analyzeInternal(SemanticAnalyzer.java:9209)
        at
org.apache.hadoop.hive.ql.parse.BaseSemanticAnalyzer.analyze(BaseSemanticAnalyzer.java:327)
        at
org.apache.spark.sql.hive.execution.CreateTableAsSelect.metastoreRelation$lzycompute(CreateTableAsSelect.scala:59)
        at
org.apache.spark.sql.hive.execution.CreateTableAsSelect.metastoreRelation(CreateTableAsSelect.scala:55)
        at
org.apache.spark.sql.hive.execution.CreateTableAsSelect.sideEffectResult$lzycompute(CreateTableAsSelect.scala:82)
        at
org.apache.spark.sql.hive.execution.CreateTableAsSelect.sideEffectResult(CreateTableAsSelect.scala:70)
        at
org.apache.spark.sql.hive.execution.CreateTableAsSelect.execute(CreateTableAsSelect.scala:89)
        at
org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:425)
        at
org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:425)
        at org.apache.spark.sql.SchemaRDDLike$class.$init$(SchemaRDDLike.scala:58)
        at org.apache.spark.sql.SchemaRDD.<init>(SchemaRDD.scala:105)
        at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:103)
{code}


---

* [SPARK-4765](https://issues.apache.org/jira/browse/SPARK-4765) | *Critical* | **Add GC back to default metrics**

It would be nice to add GC time back to the default list of metrics, since this is commonly a cause of user issues.


---

* [SPARK-4761](https://issues.apache.org/jira/browse/SPARK-4761) | *Blocker* | **With JDBC server, set Kryo as default serializer and disable reference tracking**

I saw some regression in 1.2 Spark SQL due to our broadcast change which requires significantly more serialization. It would be good if when the JDBC server is running it automatically sets the serializer to Kryo and disables Kryo reference tracking.

Doing this while still honoring a user-provided serializer is tricky. I think the best way is to expose an internal (private) constructor to SparkConf that takes a set of lowest-precedence defaults. Those could get merged in with the lowest precedence before the config file is read.


---

* [SPARK-4757](https://issues.apache.org/jira/browse/SPARK-4757) | *Major* | **Yarn-client failed to start due to Wrong FS error in distCacheMgr.addResource**

I got the following error during Spark startup (Yarn-client mode):

14/12/04 19:33:58 INFO Client: Uploading resource file:/x/home/jianshuang/spark/spark-latest/lib/datanucleus-api-jdo-3.2.6.jar -> hdfs://stampy/user/jianshuang/.sparkStaging/application\_1404410683830\_531767/datanucleus-api-jdo-3.2.6.jar
java.lang.IllegalArgumentException: Wrong FS: hdfs://stampy/user/jianshuang/.sparkStaging/application\_1404410683830\_531767/datanucleus-api-jdo-3.2.6.jar, expected: file:///
        at org.apache.hadoop.fs.FileSystem.checkPath(FileSystem.java:643)
        at org.apache.hadoop.fs.RawLocalFileSystem.pathToFile(RawLocalFileSystem.java:79)
        at org.apache.hadoop.fs.RawLocalFileSystem.deprecatedGetFileStatus(RawLocalFileSystem.java:506)
        at org.apache.hadoop.fs.RawLocalFileSystem.getFileLinkStatusInternal(RawLocalFileSystem.java:724)
        at org.apache.hadoop.fs.RawLocalFileSystem.getFileStatus(RawLocalFileSystem.java:501)
        at org.apache.hadoop.fs.FilterFileSystem.getFileStatus(FilterFileSystem.java:397)
        at org.apache.spark.deploy.yarn.ClientDistributedCacheManager.addResource(ClientDistributedCacheManager.scala:67)
        at org.apache.spark.deploy.yarn.ClientBase$$anonfun$prepareLocalResources$5.apply(ClientBase.scala:257)
        at org.apache.spark.deploy.yarn.ClientBase$$anonfun$prepareLocalResources$5.apply(ClientBase.scala:242)
        at scala.Option.foreach(Option.scala:236)
        at org.apache.spark.deploy.yarn.ClientBase$class.prepareLocalResources(ClientBase.scala:242)
        at org.apache.spark.deploy.yarn.Client.prepareLocalResources(Client.scala:35)
        at org.apache.spark.deploy.yarn.ClientBase$class.createContainerLaunchContext(ClientBase.scala:350)
        at org.apache.spark.deploy.yarn.Client.createContainerLaunchContext(Client.scala:35)
        at org.apache.spark.deploy.yarn.Client.submitApplication(Client.scala:80)
        at org.apache.spark.scheduler.cluster.YarnClientSchedulerBackend.start(YarnClientSchedulerBackend.scala:57)
        at org.apache.spark.scheduler.TaskSchedulerImpl.start(TaskSchedulerImpl.scala:140)
        at org.apache.spark.SparkContext.<init>(SparkContext.scala:335)
        at org.apache.spark.repl.SparkILoop.createSparkContext(SparkILoop.scala:986)
        at $iwC$$iwC.<init>(<console>:9)
        at $iwC.<init>(<console>:18)
        at <init>(<console>:20)
        at .<init>(<console>:24)


According to Liancheng and Andrew, this hotfix might be the root cause:

 https://github.com/apache/spark/commit/38cb2c3a36a5c9ead4494cbc3dde008c2f0698ce


Jianshi


---

* [SPARK-4740](https://issues.apache.org/jira/browse/SPARK-4740) | *Major* | **Netty's network throughput is about 1/2 of NIO's in spark-perf sortByKey**

When testing current spark master (1.3.0-snapshot) with spark-perf (sort-by-key, aggregate-by-key, etc), Netty based shuffle transferService takes much longer time than NIO based shuffle transferService. The network throughput of Netty is only about half of that of NIO. 

We tested with standalone mode, and the data set we used for test is 20 billion records, and the total size is about 400GB. Spark-perf test is Running on a 4 node cluster with 10G NIC, 48 cpu cores per node and each executor memory is 64GB. The reduce tasks number is set to 1000. 

---
Reynold update on Dec 15, 2014: The problem is that in NIO we have multiple connections between two nodes, but in Netty we only had one. We introduced a new config option spark.shuffle.io.numConnectionsPerPeer to allow users to explicitly increase the number of connections between two nodes. SPARK-4853 is a follow-up ticket to investigate setting this automatically by Spark.


---

* [SPARK-4717](https://issues.apache.org/jira/browse/SPARK-4717) | *Major* | **Optimize BLAS library to avoid de-reference multiple times in loop**

Have a local reference to `values` and `indices` array in the `Vector` object so JVM can locate the value with one operation call. See `SPARK-4581` for similar optimization, and the bytecode analysis.


---

* [SPARK-4715](https://issues.apache.org/jira/browse/SPARK-4715) | *Major* | **ShuffleMemoryManager.tryToAcquire may return a negative value**

Here is a unit test to demonstrate it:

{code}
  test("threads should not be granted a negative size") {
    val manager = new ShuffleMemoryManager(1000L)
    manager.tryToAcquire(700L)

    val latch = new CountDownLatch(1)
    startThread("t1") {
       manager.tryToAcquire(300L)
      latch.countDown()
    }
    latch.await() // Wait until `t1` calls `tryToAcquire`

    val granted = manager.tryToAcquire(300L)
    assert(0 === granted, "granted is negative")
  }
{code}

It outputs "0 did not equal -200 granted is negative"


---

* [SPARK-4711](https://issues.apache.org/jira/browse/SPARK-4711) | *Trivial* | **MLlib optimization: docs should suggest how to choose optimizer**

I have heard requests for the docs to include advice about choosing an optimization method.  The programming guide could include a brief statement about this (so the user does not have to read the whole optimization section).


---

* [SPARK-4710](https://issues.apache.org/jira/browse/SPARK-4710) | *Trivial* | **Fix MLlib compilation warnings**

MLlib has 2 compilation warnings from DecisionTreeRunner and StreamingKMeans.


---

* [SPARK-4701](https://issues.apache.org/jira/browse/SPARK-4701) | *Trivial* | **Typo in sbt/sbt**

in sbt/sbt
{noformat}
  -S-X               add -X to sbt's scalacOptions (-J is stripped)
{noformat}
but {{(-S is stripped)}} is correct.


---

* [SPARK-4695](https://issues.apache.org/jira/browse/SPARK-4695) | *Major* | ** Get result using executeCollect in spark sql**

We should use executeCollect to collect the result, because executeCollect is a custom implementation of collect in spark sql which better than rdd's collect


---

* [SPARK-4686](https://issues.apache.org/jira/browse/SPARK-4686) | *Minor* | **Link to "allowed master URLs" is broken in configuration documentation**

The link points to the old scala programming guide; it should point to the submitting applications page.


---

* [SPARK-4685](https://issues.apache.org/jira/browse/SPARK-4685) | *Trivial* | **Update JavaDoc settings to include spark.ml and all spark.mllib subpackages in the right sections**

Right now they're listed under "other packages" on the homepage of the JavaDoc docs.


---

* [SPARK-4676](https://issues.apache.org/jira/browse/SPARK-4676) | *Major* | **JavaSchemaRDD.schema may throw NullType MatchError if sql has null**

val jsc = new org.apache.spark.api.java.JavaSparkContext(sc)
val jhc = new org.apache.spark.sql.hive.api.java.JavaHiveContext(jsc)
val nrdd = jhc.hql("select null from spark\_test.for\_test")
println(nrdd.schema)
Then the error is thrown as follows:
scala.MatchError: NullType (of class org.apache.spark.sql.catalyst.types.NullType$)
at org.apache.spark.sql.types.util.DataTypeConversions$.asJavaDataType(DataTypeConversions.scala:43)


---

* [SPARK-4672](https://issues.apache.org/jira/browse/SPARK-4672) | *Critical* | **Cut off the super long serialization chain in GraphX to avoid the StackOverflow error**

While running iterative algorithms in GraphX, a StackOverflow error will stably occur in the serialization phase at about 300th iteration. In general, these kinds of algorithms have two things in common:

# They have a long computing chain.
{code:borderStyle=solid}
(e.g., “degreeGraph=>subGraph=>degreeGraph=>subGraph=>…=>”)
{code}
# They will iterate many times to converge. An example:
{code:borderStyle=solid}
//K-Core Algorithm
val kNum = 5

var degreeGraph = graph.outerJoinVertices(graph.degrees) {
		(vid, vd, degree) => degree.getOrElse(0)
}.cache()
	
do {
	val subGraph = degreeGraph.subgraph(
		vpred = (vid, degree) => degree >= KNum
	).cache()

	val newDegreeGraph = subGraph.degrees

	degreeGraph = subGraph.outerJoinVertices(newDegreeGraph) {
		(vid, vd, degree) => degree.getOrElse(0)
	}.cache()

	isConverged = check(degreeGraph)
} while(isConverged == false)
{code}

After about 300 iterations, StackOverflow will definitely occur with the following stack trace:

{code:borderStyle=solid}
Exception in thread "main" org.apache.spark.SparkException: Job aborted due to stage failure: Task serialization failed: java.lang.StackOverflowError
java.io.ObjectOutputStream.writeNonProxyDesc(ObjectOutputStream.java:1275)
java.io.ObjectOutputStream.writeClassDesc(ObjectOutputStream.java:1230)
java.io.ObjectOutputStream.writeOrdinaryObject(ObjectOutputStream.java:1426)
java.io.ObjectOutputStream.writeObject0(ObjectOutputStream.java:1177)
{code}

It is a very tricky bug, which only occurs with enough iterations. Since it took us a long time to find out its causes, we will detail the causes in the following 3 paragraphs. 
 
h3. Phase 1: Try using checkpoint() to shorten the lineage

It's easy to come to the thought that the long lineage may be the cause. For some RDDs, their lineages may grow with the iterations. Also, for some magical references,  their lineage lengths never decrease and finally become very long. As a result, the call stack of task's serialization()/deserialization() method will be very long too, which finally exhausts the whole JVM stack.

In deed, the lineage of some RDDs (e.g., EdgeRDD.partitionsRDD) increases 3 OneToOne dependencies in each iteration in the above example. Lineage length refers to the  maximum length of OneToOne dependencies (e.g., from the finalRDD to the ShuffledRDD) in each stage.

To shorten the lineage, a checkpoint() is performed every N (e.g., 10) iterations. Then, the lineage will drop down when it reaches a certain length (e.g., 33). 

However, StackOverflow error still occurs after 300+ iterations!

h3. Phase 2:  Abnormal f closure function leads to a unbreakable serialization chain

After a long-time debug, we found that an abnormal \_*f*\_ function closure and a potential bug in GraphX (will be detailed in Phase 3) are the "Suspect Zero". They together build another serialization chain that can bypass the broken lineage cut by checkpoint() (as shown in Figure 1). In other words, the serialization chain can be as long as the original lineage before checkpoint().

Figure 1 shows how the unbreakable serialization chain is generated. Yes, the OneToOneDep can be cut off by checkpoint(). However, the serialization chain can still access the previous RDDs through the (1)->(2) reference chain. As a result, the checkpoint() action is meaningless and the lineage is as long as that before. 

!https://raw.githubusercontent.com/JerryLead/Misc/master/SparkPRFigures/g1.png|width=100%!

The (1)->(2) chain can be observed in the debug view (in Figure 2).

{code:borderStyle=solid}
\_rdd (i.e., A in Figure 1, checkpointed) -> f -> $outer (VertexRDD) -> partitionsRDD:MapPartitionsRDD -> RDDs in  the previous iterations
{code}

!https://raw.githubusercontent.com/JerryLead/Misc/master/SparkPRFigures/g2.png|width=100%!


More description: While a RDD is being serialized, its f function 
{code:borderStyle=solid}
e.g., f: (Iterator[A], Iterator[B]) => Iterator[V]) in ZippedPartitionsRDD2
{code}

will be serialized too. This action will be very dangerous if the f closure has a member “$outer” that references its outer class (as shown in Figure 1). This reference will be another way (except the OneToOneDependency) that a RDD (e.g., PartitionsRDD) can reference the other RDDs (e.g., VertexRDD). Note that checkpoint() only cuts off the direct lineage, while the function reference is still kept. So, serialization() can still access the other RDDs along the f references. 

h3. Phase 3: Non-transient member variable of VertexRDD makes things worse

"Reference (1)" in Figure 1 is caused by the abnormal f clousre, while "Reference (2)" is caused by the potential bug in GraphX: *PartitionsRDD is a non-transient member variable of VertexRDD*. 

With this \_small\_ bug, the f closure itself (without OneToOne dependency) can cause StackOverflow error, as shown in the red box in Figure 3:

# While \_vertices:VertexRDD\_ is being serialized, its member \_PartitionsRDD\_ will be serialized too.
# Next, while serializing this \_partitionsRDD\_, serialization() will simultaneously serialize its f’s referenced $outer. Here, it is another \_partitionsRDD\_.
# Finally, the chain 
{code:borderStyle=solid}
"f => f$3 => f$3 => $outer => vertices: VertexRDD => partitionsRDD => … => ShuffledRDD"
{code}

comes into shape. As a result, the serialization chain can be as long as the original lineage and finally triggers StackOverflow error.
  
!https://raw.githubusercontent.com/JerryLead/Misc/master/SparkPRFigures/g3.png|width=100%!


h2. Conclusions

In conclusion, the root cause of StackOverflow error is the long serialization chain, which cannot be cut off by \_checkpoint()\_. This long chain is caused by the multiple factors, including:

# long lineage
# $outer reference in the f closure
# non-transient member variable

h2. How to fix this error

We propose three pull requests as follows to solve this problem thoroughly.

# PR-3544
In this pr, we change the "val PartitionsRDD" to be transient in EdgeRDDImpl and VertexRDDImpl. As a result, while \_vertices:VertexRDD\_ is being serialized, its member \_PartitionsRDD\_ will not be serialized. In other words, the "Reference (2)" in Figure 1 will be cut off.
# PR-3545
In this pr, we set "f = null" if ZippedPartitionsRDD is checkpointed. As a result, when PartitionsRDD is checkpointed, its f closure will be cleared and the "Reference (1)" (i.e., f => $outer) in Figure 1 will no exist.
# PR-3549
To cut off the long lineage, we need to perform checkpoint()  on PartitionsRDD. However, current checkpoint() is performed on VertexRDD and EdgeRDD themselves. As a result, we need to override the checkpoint() methods in VertexRDDImpl and EdgeRDDImpl to perform checkpoint() on PartitionsRDD.


---

* [SPARK-4668](https://issues.apache.org/jira/browse/SPARK-4668) | *Major* | **Fix documentation typos**

There are a few typos in tuning.md and configuration.md that should be fixed.


---

* [SPARK-4661](https://issues.apache.org/jira/browse/SPARK-4661) | *Trivial* | **Minor code and docs cleanup**

Just found several tiny issues in the codes and docs.


---

* [SPARK-4658](https://issues.apache.org/jira/browse/SPARK-4658) | *Minor* | **Code documentation issue in DDL of datasource**

The syntax mentioned to create table for datasource in ddl.scala file is documented with wrong syntax like
{code}
  /**
   * CREATE FOREIGN TEMPORARY TABLE avroTable
   * USING org.apache.spark.sql.avro
   * OPTIONS (path "../hive/src/test/resources/data/files/episodes.avro")
   */
{code}

but the correct syntax is 
{code}
 /**
   * CREATE TEMPORARY TABLE avroTable
   * USING org.apache.spark.sql.avro
   * OPTIONS (path "../hive/src/test/resources/data/files/episodes.avro")
   */
{code}

Wrong syntax is documented in newParquet.scala like
{code}
`CREATE TABLE ... USING org.apache.spark.sql.parquet`.  
{code} 
 but the correct syntax is 
{code}
`CREATE TEMPORARY TABLE ... USING org.apache.spark.sql.parquet`.
{code}


---

* [SPARK-4650](https://issues.apache.org/jira/browse/SPARK-4650) | *Major* | **Supporting multi column support in countDistinct function like count(distinct c1,c2..) in Spark SQL**

Support  multi column support inside count(distinct c1,c2..) which is not working in Spark SQL.


---

* [SPARK-4646](https://issues.apache.org/jira/browse/SPARK-4646) | *Minor* | **Replace Scala.util.Sorting.quickSort with Sorter(TimSort) in Spark**

This patch just replaces a native quick sorter with Sorter(TimSort) in Spark.
It could get performance gains by ~8% in my quick experiments.


---

* [SPARK-4645](https://issues.apache.org/jira/browse/SPARK-4645) | *Blocker* | **Asynchronous execution in HiveThriftServer2 with Hive 0.13.1 doesn't play well with Simba ODBC driver**

Hive 0.13.1 enables asynchronous execution for {{SQLOperation}} by default. So does Spark SQL HiveThriftServer2 when built with Hive 0.13.1. This works well for normal JDBC clients like BeeLine, but throws exception when using Simba ODBC driver v1.0.0.1000.

Simba ODBC driver tries to execute two statement while connecting to Spark SQL HiveThriftServer2:

- {{use `default`}}
- {{set -v}}

However, HiveThriftServer2 throws exception when executing them:
{code}
14/11/28 15:18:37 ERROR SparkExecuteStatementOperation: Error executing query:
org.apache.spark.sql.execution.QueryExecutionException: FAILED: Execution Error, return code 1 from org.apache.hadoop.hive.ql.exec.DDLTask. Java heap space
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
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.org$apache$spark$sql$hive$thriftserver$SparkExecuteStatementOperation$$runInternal(Shim13.scala:84)
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation$$anon$1$$anon$2.run(Shim13.scala:224)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:415)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1556)
	at org.apache.hadoop.hive.shims.HadoopShimsSecure.doAs(HadoopShimsSecure.java:493)
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation$$anon$1.run(Shim13.scala:234)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:471)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
14/11/28 15:18:37 ERROR SparkExecuteStatementOperation: Error running hive query: 
org.apache.hive.service.cli.HiveSQLException: org.apache.spark.sql.execution.QueryExecutionException: FAILED: Execution Error, return code 1 from org.apache.hadoop.hive.ql.exec.DDLTask. Java heap space
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.org$apache$spark$sql$hive$thriftserver$SparkExecuteStatementOperation$$runInternal(Shim13.scala:104)
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation$$anon$1$$anon$2.run(Shim13.scala:224)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:415)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1556)
	at org.apache.hadoop.hive.shims.HadoopShimsSecure.doAs(HadoopShimsSecure.java:493)
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation$$anon$1.run(Shim13.scala:234)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:471)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
{code}


---

* [SPARK-4627](https://issues.apache.org/jira/browse/SPARK-4627) | *Trivial* | **Too many TripletFields**

The `TripletFields` class defines a set of constants for all possible configurations of the triplet fields.  However, many are not useful and as result the API is slightly confusing.


---

* [SPARK-4626](https://issues.apache.org/jira/browse/SPARK-4626) | *Major* | **NoSuchElementException in CoarseGrainedSchedulerBackend**

{code}
26 Nov 2014 06:38:21,330 ERROR [spark-akka.actor.default-dispatcher-22] OneForOneStrategy - key not found: 0
java.util.NoSuchElementException: key not found: 0
        at scala.collection.MapLike$class.default(MapLike.scala:228)
        at scala.collection.AbstractMap.default(Map.scala:58)
        at scala.collection.mutable.HashMap.apply(HashMap.scala:64)
        at org.apache.spark.scheduler.cluster.CoarseGrainedSchedulerBackend$DriverActor$$anonfun$receive$1.applyOrElse(CoarseGrainedSchedulerBackend.scala:106)
        at akka.actor.ActorCell.receiveMessage(ActorCell.scala:498)
        at akka.actor.ActorCell.invoke(ActorCell.scala:456)
        at akka.dispatch.Mailbox.processMailbox(Mailbox.scala:237)
        at akka.dispatch.Mailbox.run(Mailbox.scala:219)
        at akka.dispatch.ForkJoinExecutorConfigurator$AkkaForkJoinTask.exec(AbstractDispatcher.scala:386)
        at scala.concurrent.forkjoin.ForkJoinTask.doExec(ForkJoinTask.java:260)
        at scala.concurrent.forkjoin.ForkJoinPool$WorkQueue.runTask(ForkJoinPool.java:1339)
        at scala.concurrent.forkjoin.ForkJoinPool.runWorker(ForkJoinPool.java:1979)
        at scala.concurrent.forkjoin.ForkJoinWorkerThread.run(ForkJoinWorkerThread.java:107)
{code}

This came on the heels of a lot of lost executors with error messages like:
{code}
26 Nov 2014 06:38:20,330 ERROR [spark-akka.actor.default-dispatcher-15] TaskSchedulerImpl - Lost executor 31 on xxx: remote Akka client disassociated
{code}


---

* [SPARK-4620](https://issues.apache.org/jira/browse/SPARK-4620) | *Trivial* | **Add unpersist in Graph/GraphImpl**

Add an IF to uncache both vertices and edges of Graph/GraphImpl.
This IF is useful when iterative graph operations build a new graph in each iteration, and the vertices and edges of previous iterations are no longer needed for following iterations.


---

* [SPARK-4619](https://issues.apache.org/jira/browse/SPARK-4619) | *Minor* | **Double "ms" in ShuffleBlockFetcherIterator log**

log as followings: 
ShuffleBlockFetcherIterator: Got local blocks in  8 ms ms

reason:
logInfo("Got local blocks in " + Utils.getUsedTimeMs(startTime) + " ms")


---

* [SPARK-4615](https://issues.apache.org/jira/browse/SPARK-4615) | *Minor* | **Cannot disconnect from spark-shell**

When running spark-shell using the `v1.2.0-snapshot1` tag, using the instructions at: http://spark.apache.org/docs/latest/building-with-maven.html

When attemping to disconnect from a spark shell (C-c) the terminal locks and does not interrupt the process.

The spark-shell was built with:

./make-distribution.sh --tgz -Pyarn -Phive -Phadoop-2.3 -Dhadoop.version=2.3.0-cdh5.1.0 -DskipTests

Using oracle jdk6 & maven 3.2


---

* [SPARK-4614](https://issues.apache.org/jira/browse/SPARK-4614) | *Major* | **Slight API changes in Matrix and Matrices**

Before we have a full picture of the operators we want to add, it might be safer to hide `Matrix.transposeMultiply` in 1.2.0. Another update we want to change is `Matrix.randn` and `Matrix.rand`, both of which should take a Random implementation. Otherwise, it is very likely to produce inconsistent RDDs.


---

* [SPARK-4613](https://issues.apache.org/jira/browse/SPARK-4613) | *Major* | **Make JdbcRDD easier to use from Java**

We might eventually deprecate it, but for now it would be nice to expose a Java wrapper that allows users to create this using the java function interface.


---

* [SPARK-4612](https://issues.apache.org/jira/browse/SPARK-4612) | *Critical* | **Configuration object gets created for every task even if not new file/jar is added**

https://github.com/apache/spark/blob/master/core/src/main/scala/org/apache/spark/executor/Executor.scala#L337 creates a configuration object for every task that is launched, even if there is no new dependent file/JAR to update. This is a heavy-weight creation that should be avoided if there is not new file/JAR to update.


---

* [SPARK-4611](https://issues.apache.org/jira/browse/SPARK-4611) | *Major* | **Implement the efficient vector norm**

The vector norm in breeze is implemented by `activeIterator` which is known to be very slow. In this PR, an efficient vector norm is implemented, and with this API, `Normalizer` has huge performance gain.

Here is the benchmark against mnist8m dataset.

Before

DenseVector: 68.25secs
SparseVector: 17.01secs

With this PR

DenseVector: 12.71secs
SparseVector: 2.73secs


---

* [SPARK-4610](https://issues.apache.org/jira/browse/SPARK-4610) | *Minor* | **Standardize API for DecisionTree: numClasses vs numClassesForClassification**

In Spark 1.1, DecisionTree takes parameter numClasses in Python, but numClassesForClassification in Scala.  This should be standardized.

Proposal: Use numClasses everywhere.


---

* [SPARK-4604](https://issues.apache.org/jira/browse/SPARK-4604) | *Major* | **Make MatrixFactorizationModel constructor public**

Make MatrixFactorizationModel public and add note about partitioning.


---

* [SPARK-4601](https://issues.apache.org/jira/browse/SPARK-4601) | *Major* | **Call site of jobs generated by streaming incorrect in Spark UI**

When running the NetworkWordCount, the description of the word count jobs are set as "getCallsite at DStream:xxx" . This should be set to the line number of the streaming application that has the output operation that led to the job being created. This is because the callsite is incorrectly set in the thread launching the jobs.


---

* [SPARK-4596](https://issues.apache.org/jira/browse/SPARK-4596) | *Major* | **Refactorize Normalizer to make code cleaner**

In this refactoring, the performance is slightly increased by removing the overhead from breeze vector. The bottleneck is still in breeze norm which is implemented by activeIterator. This inefficiency of breeze norm will be addressed in next PR. At least, this PR makes the code more consistent in the codebase.


---

* [SPARK-4593](https://issues.apache.org/jira/browse/SPARK-4593) | *Minor* | **sum(1/0) would produce a very large number**

SELECT max(1/0) FROM src would get a very large number.


---

* [SPARK-4592](https://issues.apache.org/jira/browse/SPARK-4592) | *Blocker* | **"Worker registration failed: Duplicate worker ID" error during Master failover**

When running Spark Standalone in high-availability mode, we sometimes see "Worker registration failed: Duplicate worker ID" errors which prevent workers from reconnecting to the new active master.  I've attached full logs from a reproduction in my integration tests suite (which runs something similar to Spark's FaultToleranceTest).  Here's the relevant excerpt from a worker log during a failed run of the "rolling outage" test, which creates a multi-master cluster then repeatedly kills the active master, waits for workers to reconnect to a new active master, then kills that master, and so on.

{code}
14/11/23 02:23:02 INFO WorkerWebUI: Started WorkerWebUI at http://172.17.0.90:8081
14/11/23 02:23:02 INFO Worker: Connecting to master spark://172.17.0.86:7077...
14/11/23 02:23:02 INFO Worker: Connecting to master spark://172.17.0.87:7077...
14/11/23 02:23:02 INFO Worker: Connecting to master spark://172.17.0.88:7077...
14/11/23 02:23:02 INFO Worker: Successfully registered with master spark://172.17.0.86:7077
14/11/23 02:23:03 INFO Worker: Asked to launch executor app-20141123022303-0000/1 for spark-integration-tests
14/11/23 02:23:03 INFO ExecutorRunner: Launch command: "java" "-cp" "::/opt/sparkconf:/opt/spark/assembly/target/scala-2.10/spark-assembly-1.2.1-SNAPSHOT-hadoop1.0.4.jar" "-XX:MaxPermSize=128m" "-Dspark.driver.port=51271" "-Xms512M" "-Xmx512M" "org.apache.spark.executor.CoarseGrainedExecutorBackend" "akka.tcp://sparkDriver@joshs-mbp.att.net:51271/user/CoarseGrainedScheduler" "1" "172.17.0.90" "8" "app-20141123022303-0000" "akka.tcp://sparkWorker@172.17.0.90:8888/user/Worker"
14/11/23 02:23:14 INFO Worker: Disassociated [akka.tcp://sparkWorker@172.17.0.90:8888] -> [akka.tcp://sparkMaster@172.17.0.86:7077] Disassociated !
14/11/23 02:23:14 ERROR Worker: Connection to master failed! Waiting for master to reconnect...
14/11/23 02:23:14 INFO Worker: Connecting to master spark://172.17.0.86:7077...
14/11/23 02:23:14 INFO Worker: Connecting to master spark://172.17.0.87:7077...
14/11/23 02:23:14 INFO Worker: Connecting to master spark://172.17.0.88:7077...
14/11/23 02:23:14 WARN ReliableDeliverySupervisor: Association with remote system [akka.tcp://sparkMaster@172.17.0.86:7077] has failed, address is now gated for [5000] ms. Reason is: [Disassociated].
14/11/23 02:23:14 INFO Worker: Disassociated [akka.tcp://sparkWorker@172.17.0.90:8888] -> [akka.tcp://sparkMaster@172.17.0.86:7077] Disassociated !
14/11/23 02:23:14 ERROR Worker: Connection to master failed! Waiting for master to reconnect...
14/11/23 02:23:14 INFO RemoteActorRefProvider$RemoteDeadLetterActorRef: Message [org.apache.spark.deploy.DeployMessages$RegisterWorker] from Actor[akka://sparkWorker/user/Worker#-1246122173] to Actor[akka://sparkWorker/deadLetters] was not delivered. [1] dead letters encountered. This logging can be turned off or adjusted with configuration settings 'akka.log-dead-letters' and 'akka.log-dead-letters-during-shutdown'.
14/11/23 02:23:14 INFO Worker: Not spawning another attempt to register with the master, since there is an attempt scheduled already.
14/11/23 02:23:14 INFO LocalActorRef: Message [akka.remote.transport.ActorTransportAdapter$DisassociateUnderlying] from Actor[akka://sparkWorker/deadLetters] to Actor[akka://sparkWorker/system/transports/akkaprotocolmanager.tcp0/akkaProtocol-tcp%3A%2F%2FsparkMaster%40172.17.0.86%3A7077-2#343365613] was not delivered. [2] dead letters encountered. This logging can be turned off or adjusted with configuration settings 'akka.log-dead-letters' and 'akka.log-dead-letters-during-shutdown'.
14/11/23 02:23:25 INFO Worker: Retrying connection to master (attempt # 1)
14/11/23 02:23:25 INFO Worker: Connecting to master spark://172.17.0.86:7077...
14/11/23 02:23:25 INFO Worker: Connecting to master spark://172.17.0.87:7077...
14/11/23 02:23:25 INFO Worker: Connecting to master spark://172.17.0.88:7077...
14/11/23 02:23:36 INFO Worker: Retrying connection to master (attempt # 2)
14/11/23 02:23:36 INFO Worker: Connecting to master spark://172.17.0.86:7077...
14/11/23 02:23:36 INFO Worker: Connecting to master spark://172.17.0.87:7077...
14/11/23 02:23:36 INFO Worker: Connecting to master spark://172.17.0.88:7077...
14/11/23 02:23:42 INFO Worker: Master has changed, new master is at spark://172.17.0.87:7077
14/11/23 02:23:47 INFO Worker: Retrying connection to master (attempt # 3)
14/11/23 02:23:47 INFO Worker: Connecting to master spark://172.17.0.86:7077...
14/11/23 02:23:47 INFO Worker: Connecting to master spark://172.17.0.87:7077...
14/11/23 02:23:47 INFO Worker: Connecting to master spark://172.17.0.88:7077...
14/11/23 02:23:47 ERROR Worker: Worker registration failed: Duplicate worker ID
14/11/23 02:23:47 INFO ExecutorRunner: Killing process!
{code}


---

* [SPARK-4584](https://issues.apache.org/jira/browse/SPARK-4584) | *Blocker* | **2x Performance regression for Spark-on-YARN**

Significant performance regression observed for Spark-on-YARN (upto 2x) after 1.2 rebase. The offending commit is: 70e824f750aa8ed446eec104ba158b0503ba58a9  from Oct 7th. Problem can be reproduced with JavaWordCount against a large enough input dataset in YARN cluster mode.


---

* [SPARK-4583](https://issues.apache.org/jira/browse/SPARK-4583) | *Minor* | **GradientBoostedTrees error logging should use loss being minimized**

Currently, the LogLoss used by GradientBoostedTrees has 2 issues:
* the gradient (and therefore loss) does not match that used by Friedman (1999)
* the error computation uses 0/1 accuracy, not log loss


---

* [SPARK-4582](https://issues.apache.org/jira/browse/SPARK-4582) | *Minor* | **Add getVectors to Word2VecModel**

Add getVectors to Word2VecModel for further processing. PR for branch-1.2:

https://github.com/apache/spark/pull/3309


---

* [SPARK-4581](https://issues.apache.org/jira/browse/SPARK-4581) | *Major* | **Refactorize StandardScaler to improve the transformation performance**

The following optimizations are done to improve the StandardScaler model transformation performance.

1) Covert Breeze dense vector to primitive vector to reduce the overhead.
2) Since mean can be potentially a sparse vector, we explicitly convert it to dense primitive vector.
3) Have a local reference to `shift` and `factor` array so JVM can locate the value with one operation call.
4) In pattern matching part, we use the mllib SparseVector/DenseVector instead of breeze's vector to make the codebase cleaner. 

Benchmark with mnist8m dataset:

Before,
DenseVector withMean and withStd: 50.97secs
DenseVector withMean and withoutStd: 42.11secs
DenseVector withoutMean and withStd: 8.75secs
SparseVector withoutMean and withStd: 5.437

With this PR,
DenseVector withMean and withStd: 5.76secs
DenseVector withMean and withoutStd: 5.28secs
DenseVector withoutMean and withStd: 5.30secs
SparseVector withoutMean and withStd: 1.27


---

* [SPARK-4580](https://issues.apache.org/jira/browse/SPARK-4580) | *Critical* | **Document random forests and boosting in programming guide**

New items in Spark 1.2 require documentation updates, especially in the programming guide:
* RandomForest
* GradientBoostedTrees


---

* [SPARK-4578](https://issues.apache.org/jira/browse/SPARK-4578) | *Blocker* | **Row.asDict() should keep the type of values**

Current, the nested Row will be returned as tuple, it should be Row.


---

* [SPARK-4575](https://issues.apache.org/jira/browse/SPARK-4575) | *Major* | **Documentation for the pipeline features**

Add user guide for the newly added ML pipeline feature.


---

* [SPARK-4567](https://issues.apache.org/jira/browse/SPARK-4567) | *Major* | **Make SparkJobInfo and SparkStageInfo serializable**

SPARK-2321 introduced the two classes, which unforutnately were not made serailizable. From the class definition, there seems no obstacle to make it serializable for client to use as these classes are just wrappers of numbers and strings.


---

* [SPARK-4562](https://issues.apache.org/jira/browse/SPARK-4562) | *Blocker* | **GLM testing time regressions from Spark 1.1**

There is a performance regression in  test of GLM, it's introduced by serialization change.


---

* [SPARK-4552](https://issues.apache.org/jira/browse/SPARK-4552) | *Blocker* | **query for empty parquet table in spark sql hive get IllegalArgumentException**

run
create table test\_parquet(key int, value string) stored as parquet;
select * from test\_parquet;
get error as follow

java.lang.IllegalArgumentException: Could not find Parquet metadata at path file:/user/hive/warehouse/test\_parquet
at org.apache.spark.sql.parquet.ParquetTypesConverter$$anonfun$readMetaData$4.apply(ParquetTypes.scala:459)
at org.apache.spark.sql.parquet.ParquetTypesConverter$$anonfun$readMetaData$4.apply(ParquetTypes.scala:459)
at scala.Option.getOrElse(Option.scala:120)
at org.apache.spark.sql.parquet.ParquetTypesConverter$.readMetaData(ParquetTypes.sc


---

* [SPARK-4548](https://issues.apache.org/jira/browse/SPARK-4548) | *Blocker* | **Python broadcast perf regression from Spark 1.1**

Python broadcast in 1.2 is much slower than 1.1: 

In spark-perf tests:
      name                        1.1     1.2          speedup
python-broadcast-w-set	3.63	16.68	-78.23%


---

* [SPARK-4546](https://issues.apache.org/jira/browse/SPARK-4546) | *Critical* | **Improve HistoryServer first time user experience**

The first thing a user would try to do is run the command as documented:
{code}
sbin/start-history-server.sh
{code}
This will throw an exception, however, complaining that the logging directory is not set. We need two things: (1) a default logging directory that corresponds to what EventLoggingListener uses, and (2) a better landing page when there are no event logs found.


---

* [SPARK-4536](https://issues.apache.org/jira/browse/SPARK-4536) | *Major* | **Add sqrt and abs to Spark SQL DSL**

Spark SQL havs embeded sqrt and abs but DSL doesn't support those functions.


---

* [SPARK-4535](https://issues.apache.org/jira/browse/SPARK-4535) | *Minor* | **Fix the error in comments**

change "NetworkInputDStream" to "ReceiverInputDStream"
change "ReceiverInputTracker" to "ReceiverTracker"


---

* [SPARK-4532](https://issues.apache.org/jira/browse/SPARK-4532) | *Blocker* | **make-distribution in Spark 1.2 does not correctly detect whether Hive is enabled**

I noticed that Hive support isn't working in the recent release artifacts. Because the hive profile is no longer defined in the root pom, the following doesn't work:

{code}
SPARK\_HIVE=$(mvn help:evaluate -Dexpression=project.activeProfiles $@ 2>/dev/null\
    | grep -v "INFO"\
    | fgrep --count "<id>hive</id>";\
    # Reset exit status to 0, otherwise the script stops here if the last grep finds nothing\
    # because we use "set -o pipefail"
    echo -n)
{code}

We need to simply change it to this

{code}
SPARK\_HIVE=$(mvn help:evaluate -Dexpression=project.activeProfiles -pl sql/hive $@ 2>/dev/null\
    | grep -v "INFO"\
    | fgrep --count "<id>hive</id>";\
    # Reset exit status to 0, otherwise the script stops here if the last grep finds nothing\
    # because we use "set -o pipefail"
    echo -n)
{code}


---

* [SPARK-4531](https://issues.apache.org/jira/browse/SPARK-4531) | *Blocker* | **Cache serialized java objects instead of serialized python objects in MLlib**

The Pyrolite is pretty slow (comparing to the adhoc serializer in 1.1), it cause much performance regression in 1.2, because we cache the serialized Python object in JVM, deserialize them into Java object in each step.

We should change to cache the deserialized JavaRDD instead of PythonRDD to avoid the deserialization of Pyrolite.


---

* [SPARK-4530](https://issues.apache.org/jira/browse/SPARK-4530) | *Minor* | **GradientDescent get a wrong gradient value according to the gradient formula, which is caused by the miniBatchSize parameter.**

This bug is caused by {{RDD.sample}}
The number of  {{RDD.sample}}  returns is not fixed.


---

* [SPARK-4529](https://issues.apache.org/jira/browse/SPARK-4529) | *Major* | **support view with column alias specified**

support view definition like
CREATE VIEW view3(valoo) 
TBLPROPERTIES ("fear" = "factor")
AS SELECT upper(value) FROM src WHERE key=86;

[valoo as alias of upper(value)].


---

* [SPARK-4525](https://issues.apache.org/jira/browse/SPARK-4525) | *Blocker* | **MesosSchedulerBackend.resourceOffers cannot decline unused offers from acceptedOffers**

After resourceOffers function is refactored - SPARK-2269 -, that function doesn't decline unused offers from accepted offers. That's because when driver.launchTasks is called, if that's tasks is empty, driver.launchTask calls the declineOffer(offer.id). 
{quote}
Invoking this function with an empty collection of tasks declines offers in their entirety (see SchedulerDriver.declineOffer(OfferID, Filters)).
- http://mesos.apache.org/api/latest/java/org/apache/mesos/MesosSchedulerDriver.html#launchTasks(OfferID,%20java.util.Collection,%20Filters)
{quote}

In branch-1.1, resourcesOffers calls a launchTask function for all offered offers, so driver declines unused resources, however, in current master, at first offers are divided accepted and declined offers by their resources, and delinedOffers are declined explicitly, and offers with task from acceptedOffers are launched by driver.launchTasks, but, offers without from acceptedOfers are not launched with empty task or declined explicitly. Thus, mesos master judges thats offers used by TaskScheduler and there are no resources remaing.


---

* [SPARK-4517](https://issues.apache.org/jira/browse/SPARK-4517) | *Major* | **Improve memory efficiency for python broadcast**

Currently, the Python broadcast (TorrentBroadcast) will have multiple copies in :
1) 1 copy in python driver
2) 1 copy in disks of driver (serialized and compressed)
3) 2 copies in JVM driver (one is unserialized, one is serialized and compressed)
4) 2 copies in executor (one is unserialized, one is serialized and compressed)
5) one copy in each python worker.

Some of them are different in HTTPBroadcast:
3)  one copy in memory of driver, one copy in disk (serialized and compressed)
4) one copy in memory of executor

If the python broadcast is 4G, then it need 12G in driver, and 8+4x G in executor (x is the number of python worker, it's the number of CPUs usually).

The Python broadcast is already serialized and compressed in Python, it should not be serialized and compressed again in JVM. Also, JVM does not need to know the content of it, so it could be out of JVM.

So, we should have specified broadcast implementation for Python, it stores the serialized and compressed data in disks, transferred to executors in p2p way (similar to TorrentBroadcast), sent to python workers.


---

* [SPARK-4516](https://issues.apache.org/jira/browse/SPARK-4516) | *Critical* | **Netty off-heap memory use causes executors to be killed by OS**

The netty block transfer manager has a race condition where it closes an active connection resulting in the error below. Switching to nio seems to alleviate the problem.

{code}
14/11/20 18:53:43 INFO TransportClientFactory: Found inactive connection to i-974cd879.inst.aws.airbnb.com/10.154.228.43:57773, closing it.
14/11/20 18:53:43 ERROR RetryingBlockFetcher: Exception while beginning fetch of 1 outstanding blocks 
java.io.IOException: Failed to connect to i-974cd879.inst.aws.airbnb.com/10.154.228.43:57773
at org.apache.spark.network.client.TransportClientFactory.createClient(TransportClientFactory.java:141)
at org.apache.spark.network.netty.NettyBlockTransferService$$anon$1.createAndStart(NettyBlockTransferService.scala:78)
at org.apache.spark.network.shuffle.RetryingBlockFetcher.fetchAllOutstanding(RetryingBlockFetcher.java:140)
at org.apache.spark.network.shuffle.RetryingBlockFetcher.start(RetryingBlockFetcher.java:120)
at org.apache.spark.network.netty.NettyBlockTransferService.fetchBlocks(NettyBlockTransferService.scala:87)
at org.apache.spark.storage.ShuffleBlockFetcherIterator.sendRequest(ShuffleBlockFetcherIterator.scala:148)
at org.apache.spark.storage.ShuffleBlockFetcherIterator.next(ShuffleBlockFetcherIterator.scala:288)
at org.apache.spark.storage.ShuffleBlockFetcherIterator.next(ShuffleBlockFetcherIterator.scala:52)
at scala.collection.Iterator$$anon$13.hasNext(Iterator.scala:371)
at org.apache.spark.util.CompletionIterator.hasNext(CompletionIterator.scala:32)
at org.apache.spark.InterruptibleIterator.hasNext(InterruptibleIterator.scala:39)
at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
at scala.collection.Iterator$$anon$13.hasNext(Iterator.scala:371)
at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
at scala.collection.Iterator$class.foreach(Iterator.scala:727)
at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
at com.airbnb.common.ml.training.LinearRankerTrainer$$anonfun$7.apply(LinearRankerTrainer.scala:246)
at com.airbnb.common.ml.training.LinearRankerTrainer$$anonfun$7.apply(LinearRankerTrainer.scala:235)
at org.apache.spark.rdd.RDD$$anonfun$13.apply(RDD.scala:601)
at org.apache.spark.rdd.RDD$$anonfun$13.apply(RDD.scala:601)
at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:263)
at org.apache.spark.rdd.RDD.iterator(RDD.scala:230)
at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:68)
at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:41)
at org.apache.spark.scheduler.Task.run(Task.scala:56)
at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:196)
at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
at java.lang.Thread.run(Thread.java:745)
Caused by: java.net.ConnectException: Connection refused: i-974cd879.inst.aws.airbnb.com/10.154.228.43:57773
at sun.nio.ch.SocketChannelImpl.checkConnect(Native Method)
at sun.nio.ch.SocketChannelImpl.finishConnect(SocketChannelImpl.java:739)
at io.netty.channel.socket.nio.NioSocketChannel.doFinishConnect(NioSocketChannel.java:208)
at io.netty.channel.nio.AbstractNioChannel$AbstractNioUnsafe.finishConnect(AbstractNioChannel.java:287)
at io.netty.channel.nio.NioEventLoop.processSelectedKey(NioEventLoop.java:528)
at io.netty.channel.nio.NioEventLoop.processSelectedKeysOptimized(NioEventLoop.java:468)
at io.netty.channel.nio.NioEventLoop.processSelectedKeys(NioEventLoop.java:382)
at io.netty.channel.nio.NioEventLoop.run(NioEventLoop.java:354)
at io.netty.util.concurrent.SingleThreadEventExecutor$2.run(SingleThreadEventExecutor.java:116)
{code}


---

* [SPARK-4513](https://issues.apache.org/jira/browse/SPARK-4513) | *Major* | **Support relational operator '\<=\>' in Spark SQL**

The relational operator '<=>'  is not working in Spark SQL. Same works in Spark HiveQL


---

* [SPARK-4509](https://issues.apache.org/jira/browse/SPARK-4509) | *Blocker* | **Revert EC2 tag-based cluster membership patch in branch-1.2**

Since we haven't fixed SPARK-3332 (the issue where tags aren't a safe strategy for determining spark-ec2 cluster membership), let's revert SPARK-2333 in {{branch-1.2}}.

I'm filing a blocker JIRA for this so that we don't forget to do this before cutting a 1.2.0 release candidate.  Unfortunately, the patch doesn't cleanly revert, so this may take a bit of work to do correctly.


---

* [SPARK-4506](https://issues.apache.org/jira/browse/SPARK-4506) | *Major* | **Update documentation to clarify whether standalone-cluster mode is now officially supported**

The "Launching Compiled Spark Applications" section of the Spark Standalone docs claims that standalone mode only supports {{client}} deploy mode:

{quote}
The spark-submit script provides the most straightforward way to submit a compiled Spark application to the cluster. For standalone clusters, Spark currently only supports deploying the driver inside the client process that is submitting the application (client deploy mode).
{quote}

It looks like {{standalone-cluster}} mode actually works (I've used it and have heard from users that are successfully using it, too).

The current line was added in SPARK-2259 when {{standalone-cluster}} mode wasn't officially supported.  It looks like SPARK-2260 fixed a number of bugs in {{standalone-cluster}} mode, so we should update the documentation if we're now ready to officially support it.


---

* [SPARK-4498](https://issues.apache.org/jira/browse/SPARK-4498) | *Blocker* | **Standalone Master can fail to recognize completed/failed applications**

We observe the spark standalone master not detecting that a driver application has completed after the driver process has shut down indefinitely, leaving that driver's resources consumed indefinitely. The master reports applications as Running, but the driver process has long since terminated. The master continually spawns one executor for the application. It boots, times out trying to connect to the driver application, and then dies with the exception below. The master then spawns another executor on a different worker, which does the same thing. The application lives until the master (and workers) are restarted. 

This happens to many jobs at once, all right around the same time, two or three times a day, where they all get suck. Before and after this "blip" applications start, get resources, finish, and are marked as finished properly. The "blip" is mostly conjecture on my part, I have no hard evidence that it exists other than my identification of the pattern in the Running Applications table. See http://cl.ly/image/2L383s0e2b3t/Screen%20Shot%202014-11-19%20at%203.43.09%20PM.png : the applications started before the blip at 1.9 hours ago still have active drivers. All the applications started 1.9 hours ago do not, and the applications started less than 1.9 hours ago (at the top of the table) do in fact have active drivers.


Deploy mode:
 - PySpark drivers running on one node outside the cluster, scheduled by a cron-like application, not master supervised
 

Other factoids:
 - In most places, we call sc.stop() explicitly before shutting down our driver process
 - Here's the sum total of spark configuration options we don't set to the default:
{code}
    "spark.cores.max": 30
    "spark.eventLog.dir": "hdfs://nn.shopify.com:8020/var/spark/event-logs"
    "spark.eventLog.enabled": true
    "spark.executor.memory": "7g"
    "spark.hadoop.fs.defaultFS": "hdfs://nn.shopify.com:8020/"
    "spark.io.compression.codec": "lzf"
    "spark.ui.killEnabled": true
{code}
 - The exception the executors die with is this:
{code}
14/11/19 19:42:37 INFO CoarseGrainedExecutorBackend: Registered signal handlers for [TERM, HUP, INT]
14/11/19 19:42:37 WARN NativeCodeLoader: Unable to load native-hadoop library for your platform... using builtin-java classes where applicable
14/11/19 19:42:37 INFO SecurityManager: Changing view acls to: spark,azkaban
14/11/19 19:42:37 INFO SecurityManager: Changing modify acls to: spark,azkaban
14/11/19 19:42:37 INFO SecurityManager: SecurityManager: authentication disabled; ui acls disabled; users with view permissions: Set(spark, azkaban); users with modify permissions: Set(spark, azkaban)
14/11/19 19:42:37 INFO Slf4jLogger: Slf4jLogger started
14/11/19 19:42:37 INFO Remoting: Starting remoting
14/11/19 19:42:38 INFO Remoting: Remoting started; listening on addresses :[akka.tcp://driverPropsFetcher@dn13.chi.shopify.com:37682]
14/11/19 19:42:38 INFO Utils: Successfully started service 'driverPropsFetcher' on port 37682.
14/11/19 19:42:38 WARN Remoting: Tried to associate with unreachable remote address [akka.tcp://sparkDriver@spark-etl1.chi.shopify.com:58849]. Address is now gated for 5000 ms, all messages to this address will be delivered to dead letters. Reason: Connection refused: spark-etl1.chi.shopify.com/172.16.126.88:58849
14/11/19 19:43:08 ERROR UserGroupInformation: PriviledgedActionException as:azkaban (auth:SIMPLE) cause:java.util.concurrent.TimeoutException: Futures timed out after [30 seconds]
Exception in thread "main" java.lang.reflect.UndeclaredThrowableException: Unknown exception in doAs
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1421)
	at org.apache.spark.deploy.SparkHadoopUtil.runAsSparkUser(SparkHadoopUtil.scala:59)
	at org.apache.spark.executor.CoarseGrainedExecutorBackend$.run(CoarseGrainedExecutorBackend.scala:115)
	at org.apache.spark.executor.CoarseGrainedExecutorBackend$.main(CoarseGrainedExecutorBackend.scala:163)
	at org.apache.spark.executor.CoarseGrainedExecutorBackend.main(CoarseGrainedExecutorBackend.scala)
Caused by: java.security.PrivilegedActionException: java.util.concurrent.TimeoutException: Futures timed out after [30 seconds]
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:415)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1408)
	... 4 more
Caused by: java.util.concurrent.TimeoutException: Futures timed out after [30 seconds]
	at scala.concurrent.impl.Promise$DefaultPromise.ready(Promise.scala:219)
	at scala.concurrent.impl.Promise$DefaultPromise.result(Promise.scala:223)
	at scala.concurrent.Await$$anonfun$result$1.apply(package.scala:107)
	at scala.concurrent.BlockContext$DefaultBlockContext$.blockOn(BlockContext.scala:53)
	at scala.concurrent.Await$.result(package.scala:107)
	at org.apache.spark.executor.CoarseGrainedExecutorBackend$$anonfun$run$1.apply$mcV$sp(CoarseGrainedExecutorBackend.scala:127)
	at org.apache.spark.deploy.SparkHadoopUtil$$anon$1.run(SparkHadoopUtil.scala:60)
	at org.apache.spark.deploy.SparkHadoopUtil$$anon$1.run(SparkHadoopUtil.scala:59)
	... 7 more
{code}


Cluster history:
 - We run spark versions built from apache/spark#master snapshots. We did not observe this behaviour on {{7eb9cbc273d758522e787fcb2ef68ef65911475f}} (sorry its so old), but now observe it on {{c6e0c2ab1c29c184a9302d23ad75e4ccd8060242}}. We can try new versions to assist debugging.


---

* [SPARK-4495](https://issues.apache.org/jira/browse/SPARK-4495) | *Blocker* | **Memory leak in JobProgressListener due to `spark.ui.retainedJobs` not being used**

In the JobProgressListener, we never actually remove jobs from the jobIdToData map. In fact, there's a somewhat embarrassing typo: \_retailed\_ jobs:

{code}
  val retailedJobs = conf.getInt("spark.ui.retainedJobs", DEFAULT\_RETAINED\_JOBS)
{code}

This was introduced by my patch for [SPARK-2321]: I should have added a test that set {{spark.ui.retainedJobs}} to some low threshold and checked that we only reported information for that many jobs; there was already a corresponding "test LRU eviction of stages" test that I should have just copied and modified.

This only affects the unreleased 1.2.0 version.


---

* [SPARK-4487](https://issues.apache.org/jira/browse/SPARK-4487) | *Critical* | **Fix attribute reference resolution error when using ORDER BY.**

When we use ORDER BY clause, at first, attributes referenced by projection are resolved (1).
And then, attributes referenced at ORDER BY clause are resolved (2).
 But when resolving attributes referenced at ORDER BY clause, the resolution result generated in (1) is discarded so for example, following query fails.

{code}
SELECT c1 + c2 FROM mytable ORDER BY c1;
{code}
The query above fails because when resolving the attribute reference 'c1', the resolution result of 'c2' is discarded.


---

* [SPARK-4486](https://issues.apache.org/jira/browse/SPARK-4486) | *Major* | **Improve GradientBoosting APIs and doc**

There are some inconsistencies in the gradient boosting APIs. The target is a general boosting meta-algorithm, but the implementation is attached to trees. This was partially due to the delay of SPARK-1856. But for the 1.2 release, we should make the APIs consistent.


---

* [SPARK-4484](https://issues.apache.org/jira/browse/SPARK-4484) | *Critical* | **[CORE] Treat maxResultSize as unlimited when set to 0; improve error message**

The check for maxResultSize > 0 is missing, results in failures when set to 0. Also, error message needs to be improved so the developers know that there is a new parameter to be configured


---

* [SPARK-4481](https://issues.apache.org/jira/browse/SPARK-4481) | *Major* | **Some comments for `updateStateByKey` are wrong**

The following `updateStateByKey` overloads have wrong description for `updateFunc`

{code:java}
  /**
   * @param updateFunc State update function. If `this` function returns None, then
   *                   corresponding state key-value pair will be eliminated. Note, that
   *                   this function may generate a different a tuple with a different key
   *                   than the input key. It is up to the developer to decide whether to
   *                   remember the partitioner despite the key being changed.
   */
  def updateStateByKey[S: ClassTag](
      updateFunc: (Iterator[(K, Seq[V], Option[S])]) => Iterator[(K, S)],
      partitioner: Partitioner,
      rememberPartitioner: Boolean
    ): DStream[(K, S)]

  /**
   * @param updateFunc State update function. If `this` function returns None, then
   *                   corresponding state key-value pair will be eliminated. Note, that
   *                   this function may generate a different a tuple with a different key
   *                   than the input key. It is up to the developer to decide whether to
   *                   remember the partitioner despite the key being changed.
   */
  def updateStateByKey[S: ClassTag](
      updateFunc: (Iterator[(K, Seq[V], Option[S])]) => Iterator[(K, S)],
      partitioner: Partitioner,
      rememberPartitioner: Boolean,
      initialRDD: RDD[(K, S)]
    ): DStream[(K, S)]
{code}

` If `this` function returns None, then corresponding state key-value pair will be eliminated.` should be removed.


---

* [SPARK-4480](https://issues.apache.org/jira/browse/SPARK-4480) | *Blocker* | **Avoid many small spills in external data structures**

The following output is provided by [~shenhong] in SPARK-4380.

{code}
14/11/13 19:20:43 INFO collection.ExternalSorter: Thread 60 spilling in-memory batch of 4792 B to disk (292769 spills so far)
14/11/13 19:20:43 INFO collection.ExternalSorter: Thread 60 spilling in-memory batch of 4760 B to disk (292770 spills so far)
14/11/13 19:20:43 INFO collection.ExternalSorter: Thread 60 spilling in-memory batch of 4520 B to disk (292771 spills so far)
14/11/13 19:20:43 INFO collection.ExternalSorter: Thread 60 spilling in-memory batch of 4560 B to disk (292772 spills so far)
14/11/13 19:20:43 INFO collection.ExternalSorter: Thread 60 spilling in-memory batch of 4792 B to disk (292773 spills so far)
14/11/13 19:20:43 INFO collection.ExternalSorter: Thread 60 spilling in-memory batch of 4784 B to disk (292774 spills so far)
{code}

Spilling many small files has two implications. First, it can cause "too many open files" exceptions, as we observed in SPARK-3633. Second, it causes degradation in performance. We have seen slight performance regressions from 1.0.2 to 1.1.0, and this is likely the cause.

Note that this is spun-off from SPARK-4452, the fixing of which involves a bigger change in the way we track shuffle memory. This issue is smaller in scope in that it only makes sure we don't constantly spill, regardless of the policy we use for tracking shuffle memory.


---

* [SPARK-4478](https://issues.apache.org/jira/browse/SPARK-4478) | *Major* | **totalRegisteredExecutors not updated properly**

I'm trying to write a new scheduler backend that relies on org.apache.spark.scheduler.cluster.CoarseGrainedSchedulerBackend.  Specifically, I want to use the field totalRegisteredExecutors, but this field is only incremented; not reduced when an executor is lost.


---

* [SPARK-4477](https://issues.apache.org/jira/browse/SPARK-4477) | *Major* | **remove numpy from RDDSampler of PySpark**

In RDDSampler, it try use numpy to gain better performance for possion(), but the number of call of random() is only (1+faction) * N in the pure python implementation of possion(), so there is no much performance gain from numpy. 

numpy is not a dependent of pyspark, so it maybe introduce some problem, such as there is no numpy installed in slaves, but only installed master, as reported in xxxx. 

It also complicate the code a lot, so we may should remove numpy from RDDSampler.


---

* [SPARK-4472](https://issues.apache.org/jira/browse/SPARK-4472) | *Minor* | **Print "Spark context available as sc." only when SparkContext is created successfully**

It's weird that printing "Spark context available as sc" when creating SparkContext unsuccessfully.


---

* [SPARK-4471](https://issues.apache.org/jira/browse/SPARK-4471) | *Minor* | ** blockManagerIdFromJson function throws exception while BlockManagerId be null in MetadataFetchFailedException**

1. when throws MetadataFetchFailedException, it will create a FetchFailedException, which BlockManagerId is null.
  FetchFailedException(null, shuffleId, -1, reduceId) 

2. JsonProtocol.TaskEndReasonToJson, mark BlockManagerId as JNothing

3. while use JsonProtocol.TaskEndReasonFromJson, it didn't take  JNothing into account, so BlockManagerIdFromJson will throw exception

error log belows:

org.json4s.package$MappingException: Did not find value which can be converted into java.lang.String
        at org.json4s.reflect.package$.fail(package.scala:96)
        at org.json4s.Extraction$.convert(Extraction.scala:554)
        at org.json4s.Extraction$.extract(Extraction.scala:331)
        at org.json4s.Extraction$.extract(Extraction.scala:42)
        at org.json4s.ExtractableJsonAstNode.extract(ExtractableJsonAstNode.scala:21)
        at org.apache.spark.util.JsonProtocol$.blockManagerIdFromJson(JsonProtocol.scala:662)
        at org.apache.spark.util.JsonProtocol$.taskEndReasonFromJson(JsonProtocol.scala:643)
        at org.apache.spark.util.JsonProtocol$.taskEndFromJson(JsonProtocol.scala:450)
        at org.apache.spark.util.JsonProtocol$.sparkEventFromJson(JsonProtocol.scala:410)
        at org.apache.spark.scheduler.ReplayListenerBus$$anonfun$replay$2$$anonfun$apply$1.apply(ReplayListenerBus.scala:71)
        at org.apache.spark.scheduler.ReplayListenerBus$$anonfun$replay$2$$anonfun$apply$1.apply(ReplayListenerBus.scala:69)


---

* [SPARK-4470](https://issues.apache.org/jira/browse/SPARK-4470) | *Trivial* | **SparkContext accepts local[0] as a master URL**

When running Spark locally, if number of threads is specified as 0 (e.g., {{spark-submit --master local\[0\] ...}}), the job got stuck and does not run at all.
I think it's better to validate the parameter.


---

* [SPARK-4468](https://issues.apache.org/jira/browse/SPARK-4468) | *Blocker* | **Wrong Parquet filters are created for all inequality predicates with literals on the left hand side**

For expressions like {{10 < someVar}}, we should create a {{Operators.Gt}} filter, but right now a {{Operators.Lt}} is created. This issue affects all inequality predicates with literals on the left hand side.


---

* [SPARK-4467](https://issues.apache.org/jira/browse/SPARK-4467) | *Blocker* | **Number of elements read is never reset in ExternalSorter**

This is originally reported by [~tianshuo]. This is a spin-off of the original JIRA SPARK-4452, which described a bigger problem.


---

* [SPARK-4466](https://issues.apache.org/jira/browse/SPARK-4466) | *Blocker* | **Provide support for publishing Scala 2.11 artifacts to Maven**

The maven release plug-in does not have support for publishing two separate sets of artifacts for a single release. Because of the way that Scala 2.11 support in Spark works, we'll have to write some customized code to do this. The good news is that the Maven release API is just a thin wrapper on doing git commits and pushing artifacts to the HTTP API of Apache's Sonatype server and this might overall make our deployment easier to understand.


---

* [SPARK-4463](https://issues.apache.org/jira/browse/SPARK-4463) | *Minor* | **Add (de)select all button for additional metrics in webUI**

The current behavior of the "Show Additional Metrics" button is a little confusing and has been noted by some ([~andrewor14]) to be annoying. Instead, we should have an option at the top labeled "(De)select all" that selects or deselects all of the options. Clicking "Show additional metrics" should not change whether any of the metrics are shown/hidden.


---

* [SPARK-4455](https://issues.apache.org/jira/browse/SPARK-4455) | *Major* | **Exclude dependency on hbase-annotations module**

As Patrick mentioned in the thread 'Has anyone else observed this build break?' :

The error I've seen is this when building the examples project:
{code}
spark-examples\_2.10: Could not resolve dependencies for project
org.apache.spark:spark-examples\_2.10:jar:1.2.0-SNAPSHOT: Could not
find artifact jdk.tools:jdk.tools:jar:1.7 at specified path
/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home/../lib/tools.jar
{code}
The reason for this error is that hbase-annotations is using a
"system" scoped dependency in their hbase-annotations pom, and this
doesn't work with certain JDK layouts such as that provided on Mac OS:

http://central.maven.org/maven2/org/apache/hbase/hbase-annotations/0.98.7-hadoop2/hbase-annotations-0.98.7-hadoop2.pom

hbase-annotations module is transitively brought in through other HBase modules, we should exclude it from related modules.


---

* [SPARK-4453](https://issues.apache.org/jira/browse/SPARK-4453) | *Critical* | **Simplify Parquet record filter generation**

Current Parquet record filter code uses {{CatalystFilter}} and its sub-classes to represent all Spark SQL Parquet filter. Essentially, these classes combines the original Catalyst predicate expression together with the generated Parquet filter. {{ParquetFilters.findExpression}} then uses these classes to filter out all expressions that can be pushed down.

However, this {{findExpression}} function is not necessary at the first place, since we already know whether a predicate can be pushed down or not while trying to generate its corresponding filter.

With this in mind, the code size of Parquet record filter generation can be reduced significantly.


---

* [SPARK-4448](https://issues.apache.org/jira/browse/SPARK-4448) | *Minor* | **Support ConstantObjectInspector for unwrapping data**

ClassCastException when retrieving primitive object from a ConstantObjectInspector by specifying parameters. This is probably a bug for Hive, we just provide a work around in "HiveInspectors".


---

* [SPARK-4446](https://issues.apache.org/jira/browse/SPARK-4446) | *Major* | **MetadataCleaner schedule task with a wrong param for delay time .**

MetadataCleaner schedule task with a wrong param for delay time .


---

* [SPARK-4445](https://issues.apache.org/jira/browse/SPARK-4445) | *Blocker* | **Don't display storage level in toDebugString unless RDD is persisted**

The current approach lists the storage level all the time, even if the RDD is not persisted. The storage level should only be listed if the RDD is persisted. We just need to guard it with a check.


---

* [SPARK-4444](https://issues.apache.org/jira/browse/SPARK-4444) | *Blocker* | **Drop VD type parameter from EdgeRDD**

Due to vertex attribute caching, EdgeRDD previously took two type parameters: ED and VD. However, this is an implementation detail that should not be exposed in the interface, so this PR drops the VD type parameter.

This requires removing the filter method from the EdgeRDD interface, because it depends on vertex attribute caching.


---

* [SPARK-4443](https://issues.apache.org/jira/browse/SPARK-4443) | *Critical* | **Statistics bug for external table in spark sql hive**

When table is external, the `totalSize` is always zero, which will influence join strategy(always use broadcast join for external table)


---

* [SPARK-4441](https://issues.apache.org/jira/browse/SPARK-4441) | *Major* | **Close Tachyon client when TachyonBlockManager is shut down**

Currently Tachyon client is not shut down when TachyonBlockManager is shut down. which causes some resources in Tachyon not reclaimed.


---

* [SPARK-4434](https://issues.apache.org/jira/browse/SPARK-4434) | *Blocker* | **spark-submit cluster deploy mode JAR URLs are broken in 1.1.1**

When submitting a driver using {{spark-submit}} in cluster mode, Spark 1.1.0 allowed you to omit the {{file://}} or {{hdfs://}} prefix from the application JAR URL, e.g.

{code}
./bin/spark-submit --deploy-mode cluster --master spark://joshs-mbp.att.net:7077 --class org.apache.spark.examples.SparkPi /Users/joshrosen/Documents/old-spark-releases/spark-1.1.0-bin-hadoop1/lib/spark-examples-1.1.0-hadoop1.0.4.jar
{code}

In Spark 1.1.1 and 1.2.0, this same command now fails with an error:

{code}
./bin/spark-submit --deploy-mode cluster --master spark://joshs-mbp.att.net:7077 --class org.apache.spark.examples.SparkPi /Users/joshrosen/Documents/Spark/examples/target/scala-2.10/spark-examples\_2.10-1.1.2-SNAPSHOT.jar
Jar url 'file:/Users/joshrosen/Documents/Spark/examples/target/scala-2.10/spark-examples\_2.10-1.1.2-SNAPSHOT.jar' is not in valid format.
Must be a jar file path in URL format (e.g. hdfs://XX.jar, file://XX.jar)

Usage: DriverClient [options] launch <active-master> <jar-url> <main-class> [driver options]
Usage: DriverClient kill <active-master> <driver-id>
{code}

I tried changing my URL to conform to the new format, but this either resulted in an error or a job that failed:

{code}
./bin/spark-submit --deploy-mode cluster --master spark://joshs-mbp.att.net:7077 --class org.apache.spark.examples.SparkPi file:///Users/joshrosen/Documents/Spark/examples/target/scala-2.10/spark-examples\_2.10-1.1.2-SNAPSHOT.jar
Jar url 'file:///Users/joshrosen/Documents/Spark/examples/target/scala-2.10/spark-examples\_2.10-1.1.2-SNAPSHOT.jar' is not in valid format.
Must be a jar file path in URL format (e.g. hdfs://XX.jar, file://XX.jar)
{code}

If I omit the extra slash:

{code}
./bin/spark-submit --deploy-mode cluster --master spark://joshs-mbp.att.net:7077 --class org.apache.spark.examples.SparkPi file://Users/joshrosen/Documents/Spark/examples/target/scala-2.10/spark-examples\_2.10-1.1.2-SNAPSHOT.jar
Sending launch command to spark://joshs-mbp.att.net:7077
Driver successfully submitted as driver-20141116143235-0002
... waiting before polling master for driver state
... polling master for driver state
State of driver-20141116143235-0002 is ERROR
Exception from cluster was: java.lang.IllegalArgumentException: Wrong FS: file://Users/joshrosen/Documents/Spark/examples/target/scala-2.10/spark-examples\_2.10-1.1.2-SNAPSHOT.jar, expected: file:///
java.lang.IllegalArgumentException: Wrong FS: file://Users/joshrosen/Documents/Spark/examples/target/scala-2.10/spark-examples\_2.10-1.1.2-SNAPSHOT.jar, expected: file:///
	at org.apache.hadoop.fs.FileSystem.checkPath(FileSystem.java:381)
	at org.apache.hadoop.fs.RawLocalFileSystem.pathToFile(RawLocalFileSystem.java:55)
	at org.apache.hadoop.fs.RawLocalFileSystem.getFileStatus(RawLocalFileSystem.java:393)
	at org.apache.hadoop.fs.FilterFileSystem.getFileStatus(FilterFileSystem.java:251)
	at org.apache.hadoop.fs.FileUtil.copy(FileUtil.java:329)
	at org.apache.spark.deploy.worker.DriverRunner.org$apache$spark$deploy$worker$DriverRunner$$downloadUserJar(DriverRunner.scala:157)
	at org.apache.spark.deploy.worker.DriverRunner$$anon$1.run(DriverRunner.scala:74)
{code}

This bug effectively prevents users from using {{spark-submit}} in cluster mode to run drivers whose JARs are stored on shared cluster filesystems.


---

* [SPARK-4433](https://issues.apache.org/jira/browse/SPARK-4433) | *Major* | **Racing condition in zipWithIndex**

Spark hangs with the following code:

{code}
sc.parallelize(1 to 10).zipWithIndex.repartition(10).count()
{code}

This is because ZippedWithIndexRDD triggers a job in getPartitions and it cause a deadlock in DAGScheduler.getPreferredLocs.


---

* [SPARK-4432](https://issues.apache.org/jira/browse/SPARK-4432) | *Major* | **Resource(InStream) is not closed in TachyonStore**

In TachyonStore, InStream is not closed after data is read  from Tachyon. which makes the blocks in Tachyon locked after accessed.


---

* [SPARK-4431](https://issues.apache.org/jira/browse/SPARK-4431) | *Major* | **Implement efficient activeIterator for dense and sparse vector**

Previously, we were using Breeze's activeIterator to access the non-zero elements 
in dense/sparse vector. Due to the overhead, we switched back to native while loop 
in #SPARK-4129.

However, #SPARK-4129 requires de-reference the dv.values/sv.values in 
each access to the value, which is very expensive. Also, in MultivariateOnlineSummarizer,
we're using Breeze's dense vector to store the partial stats, and this is very expensive compared
with using primitive scala array.

In this PR, efficient foreachActive is implemented to unify the code path for dense and sparse
vector operation which makes codebase easier to maintain. Breeze dense vector is replaced 
by primitive array to reduce the overhead further.

Benchmarking with mnist8m dataset on single JVM 
with first 200 samples loaded in memory, and repeating 5000 times.

Before change: 
Sparse Vector - 30.02
Dense Vector - 38.27

With this PR:
Sparse Vector - 6.29
Dense Vector - 11.72


---

* [SPARK-4429](https://issues.apache.org/jira/browse/SPARK-4429) | *Major* | **Build for Scala 2.11 using sbt fails.**

I tried to build for Scala 2.11 using sbt with the following command:

{quote}
$ sbt/sbt -Dscala-2.11 assembly
{quote}

but it ends with the following error messages:

{quote}
\[error\] (streaming-kafka/*:update) sbt.ResolveException: unresolved dependency: org.apache.kafka#kafka\_2.11;0.8.0: not found
\[error\] (catalyst/*:update) sbt.ResolveException: unresolved dependency: org.scalamacros#quasiquotes\_2.11;2.0.1: not found
{quote}


---

* [SPARK-4426](https://issues.apache.org/jira/browse/SPARK-4426) | *Minor* | **The symbol of BitwiseOr is wrong, should not be '&'**

The symbol of BitwiseOr is defined as '&' but I think it's wrong. It should be '|'.


---

* [SPARK-4425](https://issues.apache.org/jira/browse/SPARK-4425) | *Major* | **Handle NaN or Infinity cast to Timestamp correctly**

{{Cast}} from {{NaN}} or {{Infinity}} of {{Double}} or {{Float}} to {{TimestampType}} throws {{NumberFormatException}}.


---

* [SPARK-4422](https://issues.apache.org/jira/browse/SPARK-4422) | *Minor* | **In some cases, Vectors.fromBreeze get wrong results.**

{noformat}
import breeze.linalg.{DenseVector => BDV, DenseMatrix => BDM, sum => brzSum} 
var x = BDM.zeros[Double](10, 10)
val v = Vectors.fromBreeze(x(::, 0))
assert(v.size == x.rows)
{noformat}


---

* [SPARK-4420](https://issues.apache.org/jira/browse/SPARK-4420) | *Major* | **Change nullability of Cast from DoubleType/FloatType to DecimalType.**

This is follow-up of SPARK-4390.


---

* [SPARK-4419](https://issues.apache.org/jira/browse/SPARK-4419) | *Minor* | **Upgrade Snappy Java to 1.1.1.6**

We should upgrade the Snappy Java library to get better error reporting improvements.  I had tried this previously in SPARK-4056 but had to revert that PR due to a memory leak / regression in Snappy Java.


---

* [SPARK-4415](https://issues.apache.org/jira/browse/SPARK-4415) | *Critical* | **Driver did not exit after python driver had exited.**

If we have spark\_driver\_memory in spark-default.cfg, and start the spark job by 
{code}
$ python xxx.py
{code}

Then the spark driver will not exit after the python process had exited.


---

* [SPARK-4413](https://issues.apache.org/jira/browse/SPARK-4413) | *Critical* | **Parquet support through datasource API**

Right now there are several issues with out parquet support.  Specifically, the only way to access parquet files though pure SQL is by including Hive, which has the following issues
 - fairly verbose syntax
 - requires you to explicitly add partitions
 - does not support decimal types.
 - querying tables with many partitions results in metadata operations dominating the query time (even worse when reading from S3).

It would be great to have better native support here though the new datasources API.  Ideally once that is in place we can deprecate the existing ParquetRelation.


---

* [SPARK-4410](https://issues.apache.org/jira/browse/SPARK-4410) | *Critical* | **Support for external sort**

When any given key is of too high cardinality the current sorting code can tip over (since it loads a whole partition into memory).  I propose we add optional support for using sparks built in external sorting mechanism.  It can be off by default, but if we determine this code path does not regress performance we can turn it on by default in the future.


---

* [SPARK-4407](https://issues.apache.org/jira/browse/SPARK-4407) | *Blocker* | **Thrift server for 0.13.1 doesn't deserialize complex types properly**

The following snippet can reproduce this issue:
{code}
CREATE TABLE t0(m MAP<INT, STRING>);
INSERT OVERWRITE TABLE t0 SELECT MAP(key, value) FROM src LIMIT 10;
SELECT * FROM t0;
{code}
Exception throw:
{code}
java.lang.RuntimeException: java.lang.ClassCastException: scala.collection.immutable.Map$Map1 cannot be cast to java.lang.String
        at org.apache.hive.service.cli.session.HiveSessionProxy.invoke(HiveSessionProxy.java:84)
        at org.apache.hive.service.cli.session.HiveSessionProxy.access$000(HiveSessionProxy.java:37)
        at org.apache.hive.service.cli.session.HiveSessionProxy$1.run(HiveSessionProxy.java:64)
        at java.security.AccessController.doPrivileged(Native Method)
        at javax.security.auth.Subject.doAs(Subject.java:415)
        at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
        at org.apache.hadoop.hive.shims.HadoopShimsSecure.doAs(HadoopShimsSecure.java:493)
        at org.apache.hive.service.cli.session.HiveSessionProxy.invoke(HiveSessionProxy.java:60)
        at com.sun.proxy.$Proxy21.fetchResults(Unknown Source)
        at org.apache.hive.service.cli.CLIService.fetchResults(CLIService.java:405)
        at org.apache.hive.service.cli.thrift.ThriftCLIService.FetchResults(ThriftCLIService.java:530)
        at org.apache.hive.service.cli.thrift.TCLIService$Processor$FetchResults.getResult(TCLIService.java:1553)
        at org.apache.hive.service.cli.thrift.TCLIService$Processor$FetchResults.getResult(TCLIService.java:1538)
        at org.apache.thrift.ProcessFunction.process(ProcessFunction.java:39)
        at org.apache.thrift.TBaseProcessor.process(TBaseProcessor.java:39)
        at org.apache.hive.service.auth.TSetIpAddressProcessor.process(TSetIpAddressProcessor.java:55)
        at org.apache.thrift.server.TThreadPoolServer$WorkerProcess.run(TThreadPoolServer.java:206)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:745)
Caused by: java.lang.ClassCastException: scala.collection.immutable.Map$Map1 cannot be cast to java.lang.String
        at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.addNonNullColumnValue(Shim13.scala:142)
        at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.getNextRowSet(Shim13.scala:165)
        at org.apache.hive.service.cli.operation.OperationManager.getOperationNextRowSet(OperationManager.java:192)
        at org.apache.hive.service.cli.session.HiveSessionImpl.fetchResults(HiveSessionImpl.java:471)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:606)
        at org.apache.hive.service.cli.session.HiveSessionProxy.invoke(HiveSessionProxy.java:79)
        ... 19 more
{code}


---

* [SPARK-4404](https://issues.apache.org/jira/browse/SPARK-4404) | *Blocker* | **SparkSubmitDriverBootstrapper should stop after its SparkSubmit sub-process ends**

When we have spark.driver.extra* or spark.driver.memory in SPARK\_SUBMIT\_PROPERTIES\_FILE, spark-class will use SparkSubmitDriverBootstrapper to launch driver.
If we get process id of SparkSubmitDriverBootstrapper and wanna kill it during its running, we expect its SparkSubmit sub-process stop also.


---

* [SPARK-4398](https://issues.apache.org/jira/browse/SPARK-4398) | *Major* | **Specialize rdd.parallelize for xrange**

sc.parallelize(range) is slow, which writes to disk. We should specialize xrange for performance.


---

* [SPARK-4396](https://issues.apache.org/jira/browse/SPARK-4396) | *Major* | **Support lookup by index in Rating**

In PySpark, ALS can take an RDD of (user, product, rating) tuples as input. However, model.predict outputs an RDD of Rating. So on the input side, users can use r[0], r[1], r[2], while on the output side, users have to use r.user, r.product, r.rating. We should allow lookup by index in Rating.


---

* [SPARK-4394](https://issues.apache.org/jira/browse/SPARK-4394) | *Blocker* | **Allow datasources to support IN and sizeInBytes**

These are both pretty critical for running benchmarks against externally defined datasources.


---

* [SPARK-4393](https://issues.apache.org/jira/browse/SPARK-4393) | *Blocker* | **Memory leak in connection manager timeout thread**

This JIRA tracks a fix for a memory leak in ConnectionManager's TimerTasks, originally reported in [a comment|https://issues.apache.org/jira/browse/SPARK-3633?focusedCommentId=14208318&page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel#comment-14208318] on SPARK-3633.


---

* [SPARK-4386](https://issues.apache.org/jira/browse/SPARK-4386) | *Major* | **Parquet file write performance improvement**

If you profile the writing of a Parquet file, the single worst time consuming call inside of org.apache.spark.sql.parquet.MutableRowWriteSupport.write is actually in the scala.collection.AbstractSequence.size call. This is because the size call actually ends up COUNTING the elements in a scala.collection.LinearSeqOptimized ("optimized?").

This doesn't need to be done. "size" is called repeatedly where needed rather than called once at the top of the method and stored in a 'val'. I have a PR for this.


---

* [SPARK-4384](https://issues.apache.org/jira/browse/SPARK-4384) | *Blocker* | **Too many open files during sort in pyspark**

Reported in maillist:

On Thu, Nov 13, 2014 at 11:28 AM, santon <steven.m.anton@gmail.com> wrote:
> Thanks for the thoughts. I've been testing on Spark 1.1 and haven't seen the
> IndexError yet. I've run into some other errors ("too many open files"), but
> these issues seem to have been discussed already. The dataset, by the way,
> was about 40 Gb and 188 million lines; I'm running a sort on 3 worker nodes
> with a total of about 80 cores.


---

* [SPARK-4381](https://issues.apache.org/jira/browse/SPARK-4381) | *Major* | **User should get warned when set spark.master with local in Spark Streaming**

User should get warned when spark.master is set to local, and no job is started in Spark Streaming.


---

* [SPARK-4380](https://issues.apache.org/jira/browse/SPARK-4380) | *Major* | **Executor full of log "spilling in-memory map of 0 MB to disk"**

When I set spark.shuffle.manager = sort, Executor full of log, It confuse me a lot:
14/11/13 17:35:18 INFO collection.ExternalSorter: Thread 111 spilling in-memory batch of 0 MB to disk (277 spills so far)
14/11/13 17:35:18 INFO collection.ExternalSorter: Thread 111 spilling in-memory batch of 0 MB to disk (278 spills so far)
14/11/13 17:35:18 INFO collection.ExternalSorter: Thread 111 spilling in-memory batch of 0 MB to disk (279 spills so far)
14/11/13 17:35:18 INFO collection.ExternalSorter: Thread 111 spilling in-memory batch of 0 MB to disk (280 spills so far)
14/11/13 17:35:18 INFO collection.ExternalSorter: Thread 111 spilling in-memory batch of 0 MB to disk (281 spills so far)
14/11/13 17:35:18 INFO collection.ExternalSorter: Thread 111 spilling in-memory batch of 0 MB to disk (282 spills so far)
14/11/13 17:35:18 INFO collection.ExternalSorter: Thread 111 spilling in-memory batch of 0 MB to disk (283 spills so far)


---

* [SPARK-4379](https://issues.apache.org/jira/browse/SPARK-4379) | *Trivial* | **RDD.checkpoint throws a general Exception (should be SparkException)**

It's better to change to SparkException. However, it's a breaking change since it will change the exception type.


---

* [SPARK-4378](https://issues.apache.org/jira/browse/SPARK-4378) | *Major* | **Make ALS more Java-friendly**

Support ALS run and predict on JavaRDD<Rating> and JavaPairRDD<Integer, Integer>, respectively.


---

* [SPARK-4375](https://issues.apache.org/jira/browse/SPARK-4375) | *Blocker* | **Assembly built with Maven is missing most of repl classes**

In particular, the ones in the split scala-2.10/scala-2.11 directories aren't being added


---

* [SPARK-4373](https://issues.apache.org/jira/browse/SPARK-4373) | *Critical* | **MLlib unit tests failed maven test**

We should make sure there is at most one SparkContext running at any time inside the same JVM. Maven initializes all test classes first and then runs tests. So we cannot initialize sc as a member.


---

* [SPARK-4372](https://issues.apache.org/jira/browse/SPARK-4372) | *Major* | **Make LR and SVM's default parameters consistent in Scala and Python**

The current default regParam is 1.0 and regType is claimed to be none in Python (but actually it is l2), while regParam = 0.0 and regType is L2 in Scala. We should make the default values consistent.


---

* [SPARK-4370](https://issues.apache.org/jira/browse/SPARK-4370) | *Critical* | **Limit cores used by Netty transfer service based on executor size**

Right now, the NettyBlockTransferService uses the total number of cores on the system as the number of threads and buffer arenas to create. The latter is more troubling -- this can lead to significant allocation of extra heap and direct memory in situations where executors are relatively small compared to the whole machine. For instance, on a machine with 32 cores, we will allocate (32 cores * 16MB per arena = 512MB) * 2 for client and server = 1GB direct and heap memory. This can be a huge overhead if you're only using, say, 8 of those cores.


---

* [SPARK-4369](https://issues.apache.org/jira/browse/SPARK-4369) | *Blocker* | **TreeModel.predict does not work with RDD**

{code}
Stack Trace
-------------
Traceback (most recent call last):
  File "/home/rprabhu/Coding/github/SDNDDoS/classification/DecisionTree.py",
line 49, in <module>
    predictions = model.predict(parsedData.map(lambda x: x.features))
  File "/home/rprabhu/Software/spark/python/pyspark/mllib/tree.py", line 42,
in predict
    return self.call("predict", x.map(\_convert\_to\_vector))
  File "/home/rprabhu/Software/spark/python/pyspark/mllib/common.py", line
140, in call
    return callJavaFunc(self.\_sc, getattr(self.\_java\_model, name), *a)
  File "/home/rprabhu/Software/spark/python/pyspark/mllib/common.py", line
117, in callJavaFunc
    return \_java2py(sc, func(*args))
  File
"/home/rprabhu/Software/spark/python/lib/py4j-0.8.2.1-src.zip/py4j/java\_gateway.py",
line 538, in \_\_call\_\_
  File
"/home/rprabhu/Software/spark/python/lib/py4j-0.8.2.1-src.zip/py4j/protocol.py",
line 304, in get\_return\_value
py4j.protocol.Py4JError: An error occurred while calling o39.predict. Trace:
py4j.Py4JException: Method predict([class
org.apache.spark.api.java.JavaRDD]) does not exist
        at py4j.reflection.ReflectionEngine.getMethod(ReflectionEngine.java:333)
        at py4j.reflection.ReflectionEngine.getMethod(ReflectionEngine.java:342)
        at py4j.Gateway.invoke(Gateway.java:252)
        at py4j.commands.AbstractCommand.invokeMethod(AbstractCommand.java:133)
        at py4j.commands.CallCommand.execute(CallCommand.java:79)
        at py4j.GatewayConnection.run(GatewayConnection.java:207)
        at java.lang.Thread.run(Thread.java:745)
{code}


---

* [SPARK-4365](https://issues.apache.org/jira/browse/SPARK-4365) | *Minor* | **Remove unnecessary filter call on records returned from parquet library**

Since parquet library has been updated , we no longer need to filter the records returned from parquet library for null records , as now the library skips those :

from parquet-hadoop/src/main/java/parquet/hadoop/InternalParquetRecordReader.java


  public boolean nextKeyValue() throws IOException, InterruptedException {
    boolean recordFound = false;

    while (!recordFound) {
      // no more records left
      if (current >= total) { return false; }

      try {
        checkRead();
        currentValue = recordReader.read();
        current ++; 
        if (recordReader.shouldSkipCurrentRecord()) {
          // this record is being filtered via the filter2 package
          if (DEBUG) LOG.debug("skipping record");
          continue;
        }   

        if (currentValue == null) {
          // only happens with FilteredRecordReader at end of block
          current = totalCountLoadedSoFar;
          if (DEBUG) LOG.debug("filtered record reader reached end of block");
          continue;
        }   
          recordFound = true;

        if (DEBUG) LOG.debug("read value: " + currentValue);
      } catch (RuntimeException e) {
        throw new ParquetDecodingException(format("Can not read value at %d in block %d in file %s", current, currentBlock, file), e); 
      }   
    }   
    return true;
  }


---

* [SPARK-4363](https://issues.apache.org/jira/browse/SPARK-4363) | *Trivial* | **The Broadcast example is out of date**

The Broadcast example is out of date.


---

* [SPARK-4358](https://issues.apache.org/jira/browse/SPARK-4358) | *Minor* | **Parsing NumericLit with more specified types**

1. Let BigDecimal do checking type compatibility.

2. When parsing NumericLiteral, using more specified numeric types including Byte, Short that may improve memory efficiency slightly.


---

* [SPARK-4355](https://issues.apache.org/jira/browse/SPARK-4355) | *Major* | **OnlineSummarizer doesn't merge mean correctly**

It happens when the mean on one side is zero. I will send an PR with some code clean-up.


---

* [SPARK-4348](https://issues.apache.org/jira/browse/SPARK-4348) | *Blocker* | **pyspark.mllib.random conflicts with random module**

There are conflict in two cases:

1. random module is used by pyspark.mllib.feature, if the first part of sys.path is not '', then the hack in pyspark/\_\_init\_\_.py will fail to fix the conflict.

2. Run tests in mllib/xxx.py, the '' should be popped out before import anything, or it will fail.

The first one is not fully fixed for user, it will introduce problems in some cases, such as:

{code}
>>> import sys
>>> import sys.insert(0, PATH\_OF\_MODULE)
>>> import pyspark
>>> # use Word2Vec will fail
{code}

I'd like to rename mllib/random.py as random/\_random.py, then in mllib/\_\_init.py

{code}
import pyspark.mllib.\_random as random
{code}


cc [~mengxr] [~dorx]


---

* [SPARK-4347](https://issues.apache.org/jira/browse/SPARK-4347) | *Major* | **GradientBoostingSuite takes more than 1 minute to finish**

On a MacBook Pro:

{code}
[info] GradientBoostingSuite:
[info] - Regression with continuous features: SquaredError (22 seconds, 875 milliseconds)
[info] - Regression with continuous features: Absolute Error (25 seconds, 652 milliseconds)
[info] - Binary classification with continuous features: Log Loss (26 seconds, 604 milliseconds)
{code}

Maybe we can reduce the size of test data and make it faster.


---

* [SPARK-4344](https://issues.apache.org/jira/browse/SPARK-4344) | *Trivial* | **spark.yarn.user.classpath.first is undocumented**

spark.yarn.user.classpath.first is not documented while spark.files.userClassPathFirst and does not point the corresponding yarn parameter


---

* [SPARK-4333](https://issues.apache.org/jira/browse/SPARK-4333) | *Minor* | **Correctly log number of iterations in RuleExecutor**

RuleExecutor breaks, num of iteration should be $(iteration -1) not $(iteration) .
Log looks like "Fixed point reached for batch $(batch.name) after 3 iterations.", but it did 2 iterations really!


---

* [SPARK-4330](https://issues.apache.org/jira/browse/SPARK-4330) | *Minor* | **Link to proper URL for YARN overview**

In running-on-yarn.md, a link to YARN overview is here.
But the URL is to YARN alpha's.
It should be stable's.


---

* [SPARK-4327](https://issues.apache.org/jira/browse/SPARK-4327) | *Critical* | **Python API for RDD.randomSplit()**

randomSplit() is used in MLlib to split the dataset into training and testing set.


---

* [SPARK-4326](https://issues.apache.org/jira/browse/SPARK-4326) | *Critical* | **unidoc is broken on master**

On master, `jekyll build` throws the following error:

{code}
[error] /Users/meng/src/spark/core/src/main/scala/org/apache/spark/util/collection/AppendOnlyMap.scala:205: value hashInt is not a member of com.google.common.hash.HashFunction
[error]   private def rehash(h: Int): Int = Hashing.murmur3\_32().hashInt(h).asInt()
[error]                                                          ^
[error] /Users/meng/src/spark/core/src/main/scala/org/apache/spark/util/collection/ExternalAppendOnlyMap.scala:426: value limit is not a member of object com.google.common.io.ByteStreams
[error]         val bufferedStream = new BufferedInputStream(ByteStreams.limit(fileStream, end - start))
[error]                                                                  ^
[error] /Users/meng/src/spark/core/src/main/scala/org/apache/spark/util/collection/ExternalSorter.scala:558: value limit is not a member of object com.google.common.io.ByteStreams
[error]         val bufferedStream = new BufferedInputStream(ByteStreams.limit(fileStream, end - start))
[error]                                                                  ^
[error] /Users/meng/src/spark/core/src/main/scala/org/apache/spark/util/collection/OpenHashSet.scala:261: value hashInt is not a member of com.google.common.hash.HashFunction
[error]   private def hashcode(h: Int): Int = Hashing.murmur3\_32().hashInt(h).asInt()
[error]                                                            ^
[error] /Users/meng/src/spark/core/src/main/scala/org/apache/spark/util/collection/Utils.scala:37: type mismatch;
[error]  found   : java.util.Iterator[T]
[error]  required: Iterable[?]
[error]     collectionAsScalaIterable(ordering.leastOf(asJavaIterator(input), num)).iterator
[error]                                                              ^
[error] /Users/meng/src/spark/sql/core/src/main/scala/org/apache/spark/sql/parquet/ParquetTableOperations.scala:421: value putAll is not a member of com.google.common.cache.Cache[org.apache.hadoop.fs.FileStatus,parquet.hadoop.Footer]
[error]           footerCache.putAll(newFooters)
[error]                       ^
[warn] /Users/meng/src/spark/sql/hive/src/main/scala/org/apache/spark/sql/hive/parquet/FakeParquetSerDe.scala:34: @deprecated now takes two arguments; see the scaladoc.
[warn] @deprecated("No code should depend on FakeParquetHiveSerDe as it is only intended as a " +
[warn]  ^
[info] No documentation generated with unsucessful compiler run
[warn] two warnings found
[error] 6 errors found
[error] (spark/scalaunidoc:doc) Scaladoc generation failed
[error] Total time: 48 s, completed Nov 10, 2014 1:31:01 PM
{code}

It doesn't happen on branch-1.2.


---

* [SPARK-4324](https://issues.apache.org/jira/browse/SPARK-4324) | *Critical* | **Support numpy/scipy in all Python API of MLlib**

Before 1.2, we accept numpy/scipy array as Vector in MLlib Python API. We should continue to support this semantics in 1.2.


---

* [SPARK-4322](https://issues.apache.org/jira/browse/SPARK-4322) | *Blocker* | **Struct fields can't be used as sub-expression of grouping fields**

Some examples:
{code}
sqlContext.jsonRDD(sc.parallelize("""{"a": {"b": [{"c": 1}]}}""" :: Nil)).registerTempTable("data1")
sqlContext.sql("SELECT a.b[0].c FROM data1 GROUP BY a.b[0].c").collect()

sqlContext.jsonRDD(sc.parallelize("""{"a": {"b": 1}}""" :: Nil)).registerTempTable("data2")
sqlContext.sql("SELECT a.b + 1 FROM data2 GROUP BY a.b + 1").collect()
{code}


---

* [SPARK-4318](https://issues.apache.org/jira/browse/SPARK-4318) | *Major* | **Fix empty sum distinct.**

Executing sum distinct for empty table throws {{java.lang.UnsupportedOperationException: empty.reduceLeft}}.


---

* [SPARK-4313](https://issues.apache.org/jira/browse/SPARK-4313) | *Minor* | **"Thread Dump" link is broken in yarn-cluster mode**

In yarn-cluster mode, the Web UI is running behind a yarn proxy server. Some features(or bugs?) of yarn proxy server will break the links for thread dump.

1. Yarn proxy server will do http redirect internally, so if opening "http://example.com:8088/cluster/app/application\_1415344371838\_0012/executors", it will fetch "http://example.com:8088/cluster/app/application\_1415344371838\_0012/executors/" and return the content but won't change the link in the browser. Then when a user clicks "Thread Dump", it will jump to "http://example.com:8088/proxy/application\_1415344371838\_0012/threadDump/?executorId=2". This is a wrong link. The correct link should be "http://example.com:8088/proxy/application\_1415344371838\_0012/executors/threadDump/?executorId=2".

2. Yarn proxy server has a bug about the URL encode/decode. When a user accesses "http://example.com:8088/proxy/application\_1415344371838\_0006/executors/threadDump/?executorId=%3Cdriver%3E", the yarn proxy server will require "http://example.com:36429/executors/threadDump/?executorId=%25253Cdriver%25253E". But Spark web server expects "http://example.com:36429/executors/threadDump/?executorId=%3Cdriver%3E". I will report this issue to Hadoop community later.


---

* [SPARK-4312](https://issues.apache.org/jira/browse/SPARK-4312) | *Major* | **bash can't `die`**

sbt-launch-lib.bash includes 'die' command but it's not valid command for Linux, MacOS X or Windows.


---

* [SPARK-4310](https://issues.apache.org/jira/browse/SPARK-4310) | *Minor* | **"Submitted" column in Stage page doesn't sort by time**

It's sorted in alphabetical order now.


---

* [SPARK-4309](https://issues.apache.org/jira/browse/SPARK-4309) | *Major* | **Date type support missing in HiveThriftServer2**

Date type is not supported while retrieving result set in HiveThriftServer2.


---

* [SPARK-4308](https://issues.apache.org/jira/browse/SPARK-4308) | *Minor* | **SQL operation state is not properly set when exception is thrown**

In {{HiveThriftServer2}}, when an exception is thrown during a SQL execution, the SQL operation state should be set to {{ERROR}}, but now it remains {{RUNNING}}. This affects the result of the GetOperationStatus Thrift API.


---

* [SPARK-4307](https://issues.apache.org/jira/browse/SPARK-4307) | *Major* | **Initialize FileDescriptor lazily in FileRegion**

We use Netty's DefaultFileRegion to do zero copy send. However, DefaultFileRegion requires a FileDescriptor, which results in a large number of opened files in larger workloads.


---

* [SPARK-4306](https://issues.apache.org/jira/browse/SPARK-4306) | *Major* | **LogisticRegressionWithLBFGS support for PySpark MLlib**

Currently we are supporting LogisticRegressionWithSGD in the PySpark MLlib interfact. This task is to add support for LogisticRegressionWithLBFGS algorithm.


---

* [SPARK-4305](https://issues.apache.org/jira/browse/SPARK-4305) | *Minor* | **yarn-alpha profile won't build due to network/yarn module**

SPARK-3797 introduced the {{network/yarn}} module, but its YARN code depends on YARN APIs not present in older versions covered by the {{yarn-alpha}}. As a result builds like {{mvn -Pyarn-alpha -Phadoop-0.23 -Dhadoop.version=0.23.7 -DskipTests clean package}} fail.

The solution is just to not build {{network/yarn}} with profile {{yarn-alpha}}


---

* [SPARK-4304](https://issues.apache.org/jira/browse/SPARK-4304) | *Blocker* | **sortByKey() will fail on empty RDD**

{code}
>>> sc.parallelize(zip(range(4), range(0)), 5).sortByKey().count()
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  File "/Users/davies/work/spark/python/pyspark/rdd.py", line 532, in sortByKey
    for i in range(0, numPartitions - 1)]
IndexError: list index out of range
>>>
{code}


---

* [SPARK-4301](https://issues.apache.org/jira/browse/SPARK-4301) | *Major* | **StreamingContext should not allow start() to be called after calling stop()**

In Spark 1.0.0+, calling {{stop()}} on a StreamingContext that has not been started is a no-op which has no side-effects.  This allows users to call {{stop()}} on a fresh StreamingContext followed by {{start()}}.  I believe that this almost always indicates an error and is not behavior that we should support.  Since we don't allow {{start() stop() start()}} then I don't think it makes sense to allow {{stop() start()}}.

The current behavior can lead to resource leaks when StreamingContext constructs its own SparkContext: if I call {{stop(stopSparkContext=True)}}, then I expect StreamingContext's underlying SparkContext to be stopped irrespective of whether the StreamingContext has been started.  This is useful when writing unit test fixtures.

Prior discussions:

- https://github.com/apache/spark/pull/3053#discussion-diff-19710333R490
- https://github.com/apache/spark/pull/3121#issuecomment-61927353


---

* [SPARK-4295](https://issues.apache.org/jira/browse/SPARK-4295) | *Minor* | **[External]Exception throws in SparkSinkSuite although all test cases pass**

[reproduce]
Run test suite normally, after the first test case, all other test cases throw "javax.management.InstanceAlreadyExistsException: org.apache.flume.channel:type=null" 

[exception stack]
exception as followings:

14/11/07 00:24:51 ERROR MonitoredCounterGroup: Failed to register monitored counter group for type: CHANNEL, name: null
javax.management.InstanceAlreadyExistsException: org.apache.flume.channel:type=null
	at com.sun.jmx.mbeanserver.Repository.addMBean(Repository.java:437)
	at com.sun.jmx.interceptor.DefaultMBeanServerInterceptor.registerWithRepository(DefaultMBeanServerInterceptor.java:1898)
	at com.sun.jmx.interceptor.DefaultMBeanServerInterceptor.registerDynamicMBean(DefaultMBeanServerInterceptor.java:966)
	at com.sun.jmx.interceptor.DefaultMBeanServerInterceptor.registerObject(DefaultMBeanServerInterceptor.java:900)
	at com.sun.jmx.interceptor.DefaultMBeanServerInterceptor.registerMBean(DefaultMBeanServerInterceptor.java:324)
	at com.sun.jmx.mbeanserver.JmxMBeanServer.registerMBean(JmxMBeanServer.java:522)
	at org.apache.flume.instrumentation.MonitoredCounterGroup.register(MonitoredCounterGroup.java:108)
	at org.apache.flume.instrumentation.MonitoredCounterGroup.start(MonitoredCounterGroup.java:88)
	at org.apache.flume.channel.MemoryChannel.start(MemoryChannel.java:345)
	at org.apache.spark.streaming.flume.sink.SparkSinkSuite$$anonfun$2.apply$mcV$sp(SparkSinkSuite.scala:63)
	at org.apache.spark.streaming.flume.sink.SparkSinkSuite$$anonfun$2.apply(SparkSinkSuite.scala:61)
	at org.apache.spark.streaming.flume.sink.SparkSinkSuite$$anonfun$2.apply(SparkSinkSuite.scala:61)
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
	at org.scalatest.FunSuite.run(FunSuite.scala:1555)
	at org.scalatest.tools.SuiteRunner.run(SuiteRunner.scala:55)
	at org.scalatest.tools.Runner$$anonfun$doRunRunRunDaDoRunRun$3.apply(Runner.scala:2563)
	at org.scalatest.tools.Runner$$anonfun$doRunRunRunDaDoRunRun$3.apply(Runner.scala:2557)
	at scala.collection.immutable.List.foreach(List.scala:318)
	at org.scalatest.tools.Runner$.doRunRunRunDaDoRunRun(Runner.scala:2557)
	at org.scalatest.tools.Runner$$anonfun$runOptionallyWithPassFailReporter$2.apply(Runner.scala:1044)
	at org.scalatest.tools.Runner$$anonfun$runOptionallyWithPassFailReporter$2.apply(Runner.scala:1043)
	at org.scalatest.tools.Runner$.withClassLoaderAndDispatchReporter(Runner.scala:2722)
	at org.scalatest.tools.Runner$.runOptionallyWithPassFailReporter(Runner.scala:1043)
	at org.scalatest.tools.Runner$.run(Runner.scala:883)
	at org.scalatest.tools.Runner.run(Runner.scala)
	at org.jetbrains.plugins.scala.testingSupport.scalaTest.ScalaTestRunner.runScalaTest2(ScalaTestRunner.java:144)
	at org.jetbrains.plugins.scala.testingSupport.scalaTest.ScalaTestRunner.main(ScalaTestRunner.java:35)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at com.intellij.rt.execution.application.AppMain.main(AppMain.java:120)

[reason]
InstanceAlreadyExistsException, all channel name is null

[solution]
Set different channel name in each test case and then no exception throws


---

* [SPARK-4294](https://issues.apache.org/jira/browse/SPARK-4294) | *Minor* | **UnionDStream stream should express the requirements in the same way as TransformedDStream**

In class TransformedDStream:
require(parents.length > 0, "List of DStreams to transform is empty")
require(parents.map(\_.ssc).distinct.size == 1, "Some of the DStreams have different contexts")
require(parents.map(\_.slideDuration).distinct.size == 1,
    "Some of the DStreams have different slide durations")

In class UnionDStream:
  if (parents.length == 0) {
    throw new IllegalArgumentException("Empty array of parents")
  }

  if (parents.map(\_.ssc).distinct.size > 1) {
    throw new IllegalArgumentException("Array of parents have different StreamingContexts")
  }

  if (parents.map(\_.slideDuration).distinct.size > 1) {
    throw new IllegalArgumentException("Array of parents have different slide times")
  }

The function is the same, but the realization is not. I think they shoule be the same.


---

* [SPARK-4292](https://issues.apache.org/jira/browse/SPARK-4292) | *Major* | **incorrect result set in JDBC/ODBC**

select * from src, get result as follows:
| 97   | val\_97   |
| 97   | val\_97   |
| 97   | val\_97   |
| 97   | val\_97   |
| 97   | val\_97   |
| 97   | val\_97   |
| 97   | val\_97   |
| 97   | val\_97   |
| 97   | val\_97   |
| 97   | val\_97   |
| 97   | val\_97   |
| 97   | val\_97   |
| 97   | val\_97   |
| 97   | val\_97   |
| 97   | val\_97   |
| 97   | val\_97   |
| 97   | val\_97   |
| 97   | val\_97   |


---

* [SPARK-4291](https://issues.apache.org/jira/browse/SPARK-4291) | *Major* | **Drop "Code" from network module names**

In maven, the network modules have the suffix "Code", which is inconsistent with other modules.
{code}
[INFO] Reactor Build Order:
[INFO] 
[INFO] Spark Project Parent POM
[INFO] Spark Project Common Network Code
[INFO] Spark Project Shuffle Streaming Service Code
[INFO] Spark Project Core
[INFO] Spark Project Bagel
[INFO] Spark Project GraphX
[INFO] Spark Project Streaming
[INFO] Spark Project Catalyst
[INFO] Spark Project SQL
[INFO] Spark Project ML Library
[INFO] Spark Project Tools
[INFO] Spark Project Hive
[INFO] Spark Project REPL
[INFO] Spark Project YARN Parent POM
[INFO] Spark Project YARN Stable API
[INFO] Spark Project Assembly
[INFO] Spark Project External Twitter
[INFO] Spark Project External Kafka
[INFO] Spark Project External Flume Sink
[INFO] Spark Project External Flume
[INFO] Spark Project External ZeroMQ
[INFO] Spark Project External MQTT
[INFO] Spark Project Examples
[INFO] Spark Project Yarn Shuffle Service Code
{code}

My proposal is to drop it especially before they make it into an official release.


---

* [SPARK-4282](https://issues.apache.org/jira/browse/SPARK-4282) | *Major* | **Stopping flag in YarnClientSchedulerBackend should be volatile**

In YarnClientSchedulerBackend, a variable "stopping" is used as a flag and it's accessed by some threads so it should be volatile.


---

* [SPARK-4281](https://issues.apache.org/jira/browse/SPARK-4281) | *Blocker* | **Yarn shuffle service jars need to include dependencies**

When we package we only get the jars with the classes. We need to make an assembly jar for the "network-yarn" module that includes all of its dependencies.


---

* [SPARK-4277](https://issues.apache.org/jira/browse/SPARK-4277) | *Major* | **Support external shuffle service on Worker**

It's less useful to have an external shuffle service on the Spark Standalone Worker than on YARN or Mesos (as executor allocations tend to be more static), but it would be good to help test the code path. It would also make Spark more resilient to particular executor failures.

Cool side-feature: When SPARK-4236 is fixed and integrated, the Worker will take care of cleaning up executor directories, which will mean executors terminate more quickly and that we don't leak data if the executor dies forcefully.


---

* [SPARK-4274](https://issues.apache.org/jira/browse/SPARK-4274) | *Minor* | **NPE in printing the details of query plan**

NPE in printing the details of query plan, if the query is not valid. This will be great helpful in Hive comparison test, which could provide more information.


---

* [SPARK-4272](https://issues.apache.org/jira/browse/SPARK-4272) | *Minor* | **Add more unwrap functions for primitive type in TableReader**

Currently, the data "unwrap" only support couple of primitive types, not all, it will not cause exception, but may get some performance in table scanning for the type like binary, date, timestamp, decimal etc.


---

* [SPARK-4270](https://issues.apache.org/jira/browse/SPARK-4270) | *Major* | **Fix Cast from DateType to DecimalType.**

{{Cast}} from {{DateType}} to {{DecimalType}} throws {{NullPointerException}}.


---

* [SPARK-4266](https://issues.apache.org/jira/browse/SPARK-4266) | *Blocker* | **Avoid expensive JavaScript for StagePages with huge numbers of tasks**

Some of the new javascript added to handle hiding metrics significantly slows the page load for stages with a lot of tasks (e.g., for a job with 10K tasks, it took over a minute for the page to finish loading in Chrome on my laptop).  There are at least two issues here:

(1) The new table striping java script is much slower than the old CSS.  The fancier javascript is only needed for the stage summary table, so we should change the task table back to using CSS so that it doesn't slow the page load for jobs with lots of tasks.

(2) The javascript associated with hiding metrics is expensive when jobs have lots of tasks, I think because the jQuery selectors have to traverse a much larger DOM.   The ID selectors are much more efficient, so we should consider switching to these, and/or avoiding this code in additional-metrics.js:

    $("input:checkbox:not(:checked)").each(function() {
        var column = "table ." + $(this).attr("name");
        $(column).hide();
    });

by initially hiding the data when we generate the page in the render function instead, which should be easy to do.


---

* [SPARK-4264](https://issues.apache.org/jira/browse/SPARK-4264) | *Blocker* | **SQL HashJoin induces "refCnt = 0" error in ShuffleBlockFetcherIterator**

This is because it calls hasNext twice, which invokes the completion iterator twice, unintuitively.


---

* [SPARK-4262](https://issues.apache.org/jira/browse/SPARK-4262) | *Trivial* | **Add .schemaRDD to JavaSchemaRDD**

It is possible to get the underlying SchemaRDD from JavaSchemaRDD in Java, because Java ignores private[sql]. But this is hard to do in Scala. Similar to .rdd in JavaRDD, we can add .schemaRDD to JavaSchemaRDD.


---

* [SPARK-4260](https://issues.apache.org/jira/browse/SPARK-4260) | *Major* | **Httpbroadcast should set connection timeout.**

Httpbroadcast sets read timeout but doesn't set connection timeout.


---

* [SPARK-4256](https://issues.apache.org/jira/browse/SPARK-4256) | *Major* | **MLLib BinaryClassificationMetricComputers try to divide by zero**

MLLib BinaryClassificationMetricComputers try to divide by zero in cases where there are no positive or negative examples. Resulting in NaNs in metrics.


---

* [SPARK-4255](https://issues.apache.org/jira/browse/SPARK-4255) | *Minor* | **Table striping is incorrect on page load**

Currently, table striping (where every other row is grey, to aid readability) happens before table rows get hidden (because some metrics are hidden by default).  If an odd number of contiguous table rows are hidden on page load, this means adjacent rows can both end up the same color. We should fix the table striping to happen after row hiding.


---

* [SPARK-4254](https://issues.apache.org/jira/browse/SPARK-4254) | *Trivial* | **MovieLensALS example fails from including Params in closure**

MovieLensALS example fails when run.
The problem is that the parameter are included in the closure, but they are not Serializable.


---

* [SPARK-4253](https://issues.apache.org/jira/browse/SPARK-4253) | *Minor* | **Ignore spark.driver.host in yarn-cluster and standalone-cluster mode**

We actually don't know where driver will be before it is launched in yarn-cluster mode. If we set spark.driver.host property, Spark will create Actor on the hostname or ip as setted, which will leads an error.
So we should ignore this config item in yarn-cluster mode.

As [~joshrosen]] pointed, we also ignore it in standalone cluster mode.


---

* [SPARK-4250](https://issues.apache.org/jira/browse/SPARK-4250) | *Major* | **Create constant null value for Hive Inspectors**

Constant null value is not accepted while creating the Hive Inspectors.


---

* [SPARK-4249](https://issues.apache.org/jira/browse/SPARK-4249) | *Minor* | **A problem of EdgePartitionBuilder in Graphx**

https://github.com/apache/spark/blob/master/graphx/src/main/scala/org/apache/spark/graphx/impl/EdgePartitionBuilder.scala#L48
in function toEdgePartition, code snippet     " index.update(srcIds(0), 0)"
the elements in array srcIds are all not initialized and are all 0. The effect is that if vertex ids don't contain 0, indexSize is equal to (realIndexSize + 1) and 0 is added to the `index`
It seems that all versions have the problem


---

* [SPARK-4248](https://issues.apache.org/jira/browse/SPARK-4248) | *Major* | **[SQL] spark sql not support add jar**

add jar not support

the udf jar need use --jars upload


---

* [SPARK-4245](https://issues.apache.org/jira/browse/SPARK-4245) | *Major* | **Fix containsNull of the result ArrayType of CreateArray expression.**

The {{containsNull}} of the result {{ArrayType}} of {{CreateArray}} should be true only if the children is empty or there exists nullable child.


---

* [SPARK-4244](https://issues.apache.org/jira/browse/SPARK-4244) | *Minor* | **ConstantFolding has to be done before initialize the Generic UDF**

The query is 
"SELECT named\_struct(lower("AA"), "12", lower("Bb"), "13") FROM src LIMIT 1:

It throws exception
{panel}
Even arguments to NAMED\_STRUCT must be a constant STRING.org.apache.hadoop.hive.serde2.objectinspector.primitive.JavaStringObjectInspector@798a6e99
org.apache.hadoop.hive.ql.exec.UDFArgumentTypeException: Even arguments to NAMED\_STRUCT must be a constant STRING.org.apache.hadoop.hive.serde2.objectinspector.primitive.JavaStringObjectInspector@798a6e99
	at org.apache.hadoop.hive.ql.udf.generic.GenericUDFNamedStruct.initialize(GenericUDFNamedStruct.java:55)
	at org.apache.spark.sql.hive.HiveGenericUdf.returnInspector$lzycompute(hiveUdfs.scala:157)
	at org.apache.spark.sql.hive.HiveGenericUdf.returnInspector(hiveUdfs.scala:157)
	at org.apache.spark.sql.hive.HiveGenericUdf.dataType$lzycompute(hiveUdfs.scala:173)
	at org.apache.spark.sql.hive.HiveGenericUdf.dataType(hiveUdfs.scala:173)
	at org.apache.spark.sql.catalyst.expressions.Alias.toAttribute(namedExpressions.scala:104)
	at org.apache.spark.sql.catalyst.plans.logical.Project$$anonfun$output$1.apply(basicOperators.scala:25)
	at org.apache.spark.sql.catalyst.plans.logical.Project$$anonfun$output$1.apply(basicOperators.scala:25)
{panel}


---

* [SPARK-4242](https://issues.apache.org/jira/browse/SPARK-4242) | *Major* | **Add SASL to external shuffle service**

It's already added to NettyBlockTransferService, let's just add it to ExternalShuffleClient as well.


---

* [SPARK-4236](https://issues.apache.org/jira/browse/SPARK-4236) | *Critical* | **External shuffle service must cleanup its shuffle files**

When external shuffle service is enabled, executors no longer cleanup their own shuffle files, as the external server can continue to serve them. The external serer must clean these files up once it knows that they will never be used again (i.e., when the application terminates or when Spark's ContextCleaner requests that they be deleted).


---

* [SPARK-4230](https://issues.apache.org/jira/browse/SPARK-4230) | *Major* | **Doc for spark.default.parallelism is incorrect**

The default default parallelism for shuffle transformations is actually the maximum number of partitions in dependent RDDs.

Should also probably be clear about what SparkContext.defaultParallelism is used for


---

* [SPARK-4225](https://issues.apache.org/jira/browse/SPARK-4225) | *Blocker* | **jdbc/odbc error when using maven build spark**

use command as follows to build spark
mvn -Pyarn -Phadoop-2.4 -Dhadoop.version=2.4.1 -Phive -DskipTests clean package

then use beeline to connect to thrift server ,get this error:
 
14/11/04 11:30:31 INFO ObjectStore: Initialized ObjectStore
14/11/04 11:30:31 INFO AbstractService: Service:ThriftBinaryCLIService is started.
14/11/04 11:30:31 INFO AbstractService: Service:HiveServer2 is started.
14/11/04 11:30:31 INFO HiveThriftServer2: HiveThriftServer2 started
14/11/04 11:30:31 INFO ThriftCLIService: ThriftBinaryCLIService listening on 0.0.0.0/0.0.0.0:10000
14/11/04 11:33:26 INFO ThriftCLIService: Client protocol version: HIVE\_CLI\_SERVICE\_PROTOCOL\_V6
14/11/04 11:33:26 INFO HiveMetaStore: No user is added in admin role, since config is empty
14/11/04 11:33:26 INFO SessionState: No Tez session required at this point. hive.execution.engine=mr.
14/11/04 11:33:26 INFO SessionState: No Tez session required at this point. hive.execution.engine=mr.
14/11/04 11:33:26 ERROR TThreadPoolServer: Thrift error occurred during processing of message.
org.apache.thrift.protocol.TProtocolException: Cannot write a TUnion with no set value!
	at org.apache.thrift.TUnion$TUnionStandardScheme.write(TUnion.java:240)
	at org.apache.thrift.TUnion$TUnionStandardScheme.write(TUnion.java:213)
	at org.apache.thrift.TUnion.write(TUnion.java:152)
	at org.apache.hive.service.cli.thrift.TGetInfoResp$TGetInfoRespStandardScheme.write(TGetInfoResp.java:456)
	at org.apache.hive.service.cli.thrift.TGetInfoResp$TGetInfoRespStandardScheme.write(TGetInfoResp.java:406)
	at org.apache.hive.service.cli.thrift.TGetInfoResp.write(TGetInfoResp.java:341)
	at org.apache.hive.service.cli.thrift.TCLIService$GetInfo\_result$GetInfo\_resultStandardScheme.write(TCLIService.java:3754)
	at org.apache.hive.service.cli.thrift.TCLIService$GetInfo\_result$GetInfo\_resultStandardScheme.write(TCLIService.java:3718)
	at org.apache.hive.service.cli.thrift.TCLIService$GetInfo\_result.write(TCLIService.java:3669)
	at org.apache.thrift.ProcessFunction.process(ProcessFunction.java:53)
	at org.apache.thrift.TBaseProcessor.process(TBaseProcessor.java:39)
	at org.apache.hive.service.auth.TSetIpAddressProcessor.process(TSetIpAddressProcessor.java:55)
	at org.apache.thrift.server.TThreadPoolServer$WorkerProcess.run(TThreadPoolServer.java:206)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:744)


---

* [SPARK-4222](https://issues.apache.org/jira/browse/SPARK-4222) | *Minor* | **FixedLengthBinaryRecordReader should readFully**

The new FixedLengthBinaryRecordReader currently uses a read() call to read from the FSDataInputStream, without checking the number of bytes actually returned. The currentPosition variable is updated assuming that the full number of requested bytes are returned, which could lead to data corruption or other problems if fewer bytes come back than requested.


---

* [SPARK-4221](https://issues.apache.org/jira/browse/SPARK-4221) | *Major* | **Allow access to nonnegative ALS from python**

SPARK-1553 added alternating nonnegative least squares to MLLib, however it's not possible to access it via the python API.


---

* [SPARK-4214](https://issues.apache.org/jira/browse/SPARK-4214) | *Major* | **With dynamic allocation, avoid outstanding requests for more executors than pending tasks need**

Dynamic allocation tries to allocate more executors while we have pending tasks remaining.  Our current policy can end up with more outstanding executor requests than needed to fulfill all the pending tasks.  Capping the executor requests to the number of cores needed to fulfill all pending tasks would make dynamic allocation behavior less sensitive to settings for maxExecutors.


---

* [SPARK-4213](https://issues.apache.org/jira/browse/SPARK-4213) | *Blocker* | **SparkSQL - ParquetFilters - No support for LT, LTE, GT, GTE operators**

When I issue a hql query against a HiveContext where my predicate uses a column of string type with one of LT, LTE, GT, or GTE operator, I get the following error:

scala.MatchError: StringType (of class org.apache.spark.sql.catalyst.types.StringType$)

Looking at the code in org.apache.spark.sql.parquet.ParquetFilters, StringType is absent from the corresponding functions for creating these filters.

To reproduce, in a Hive 0.13.1 shell, I created the following table (at a specified DB):

create table sparkbug (
  id int,
  event string
) stored as parquet;

Insert some sample data:

insert into table sparkbug select 1, '2011-06-18' from <some table> limit 1;
insert into table sparkbug select 2, '2012-01-01' from <some table> limit 1;

Launch a spark shell and create a HiveContext to the metastore where the table above is located.

import org.apache.spark.sql.\_
import org.apache.spark.sql.SQLContext
import org.apache.spark.sql.hive.HiveContext
val hc = new HiveContext(sc)
hc.setConf("spark.sql.shuffle.partitions", "10")
hc.setConf("spark.sql.hive.convertMetastoreParquet", "true")
hc.setConf("spark.sql.parquet.compression.codec", "snappy")
import hc.\_
hc.hql("select * from <db>.sparkbug where event >= '2011-12-01'")

A scala.MatchError will appear in the output.


---

* [SPARK-4211](https://issues.apache.org/jira/browse/SPARK-4211) | *Major* | **Spark POM hive-0.13.1 profile sets incorrect hive version property**

The fix in SPARK-3826 added a new maven profile 'hive-0.13.1'.
By default, it sets the maven property to `hive.version=0.13.1a`.
This special hive version resolves dependency issues with Hive 0.13+

However, when explicitly specifying the hive-0.13.1 maven profile, the 'hive.version=0.13.1' property would be set instead of 'hive.version=0.13.1a'

e.g. mvn -Phive -Phive=0.13.1

Also see: https://github.com/apache/spark/pull/2685


---

* [SPARK-4209](https://issues.apache.org/jira/browse/SPARK-4209) | *Major* | **Support UDT in UDF**

UDF doesn't recognize functions defined with UDTs. Before execution, an SQL internal datum should be converted to Scala types, and after execution, the result should be converted back to internal format (maybe this part is already done).


---

* [SPARK-4207](https://issues.apache.org/jira/browse/SPARK-4207) | *Major* | **Query which has syntax like 'not like' is not working in Spark SQL**

Queries which has 'not like' is not working in Spark SQL. Same works in Spark HiveQL.

{code}
sql("SELECT * FROM records where value not like 'val%'")
{code}

The above query fails with below exception

{code}
Exception in thread "main" java.lang.RuntimeException: [1.39] failure: ``IN'' expected but `like' found

SELECT * FROM records where value not like 'val%'
                                      ^
	at scala.sys.package$.error(package.scala:27)
	at org.apache.spark.sql.catalyst.AbstractSparkSQLParser.apply(SparkSQLParser.scala:33)
	at org.apache.spark.sql.SQLContext$$anonfun$1.apply(SQLContext.scala:75)
	at org.apache.spark.sql.SQLContext$$anonfun$1.apply(SQLContext.scala:75)
	at org.apache.spark.sql.catalyst.SparkSQLParser$$anonfun$org$apache$spark$sql$catalyst$SparkSQLParser$$others$1.apply(SparkSQLParser.scala:186)

{code}


---

* [SPARK-4204](https://issues.apache.org/jira/browse/SPARK-4204) | *Minor* | **Utils.exceptionString only return the information for the outermost exception**

An exception may contain some inner exceptions, but Utils.exceptionString only return the information for the outermost exception.


---

* [SPARK-4203](https://issues.apache.org/jira/browse/SPARK-4203) | *Major* | **Partition directories in random order when inserting into hive table**

When doing an insert into hive table with partitions the folders written to the file system are in a random order instead of the order defined in table creation. Seems that the loadPartition method in Hive.java has a Map<String,String> parameter but expects to be called with a map that has a defined ordering such as  LinkedHashMap. Have a patch which I will do a PR for.


---

* [SPARK-4202](https://issues.apache.org/jira/browse/SPARK-4202) | *Major* | **DSL support for Scala UDF**

Using Scala UDF with current DSL API is quite verbose, e.g.:
{code}
case class KeyValue(key: Int, value: String)

val schemaRDD = sc.parallelize(1 to 10).map(i => KeyValue(i, i.toString)).toSchemaRDD

def foo = (a: Int, b: String) => a.toString + b

schemaRDD.select(                     // SELECT
  Star(None),                         // *,
  ScalaUdf(                           //
    foo,                              // foo(
    StringType,                       //
    'key.attr :: 'value.attr :: Nil)  //   key, value
).collect()                           // ) FROM ...
{code}
It would be good to add a DSL syntax to simplify UDF invocation.


---

* [SPARK-4201](https://issues.apache.org/jira/browse/SPARK-4201) | *Minor* | **Can't use concat() on partition column in where condition (Hive compatibility problem)**

The team used hive to query,we try to  move it to spark-sql.
when I search sentences like that. 
select count(1) from  gulfstream\_day\_driver\_base\_2 where  concat(year,month,day) = '20140929';
It can't work ,but it work well in hive.
I have to rewrite the sql to  "select count(1) from  gulfstream\_day\_driver\_base\_2 where  year = 2014 and  month = 09 day= 29.
There are some error log.
14/11/03 15:05:03 ERROR SparkSQLDriver: Failed in [select count(1) from  gulfstream\_day\_driver\_base\_2 where  concat(year,month,day) = '20140929']
org.apache.spark.sql.catalyst.errors.package$TreeNodeException: execute, tree:
Aggregate false, [], [SUM(PartialCount#1390L) AS c\_0#1337L]
 Exchange SinglePartition
  Aggregate true, [], [COUNT(1) AS PartialCount#1390L]
   HiveTableScan [], (MetastoreRelation default, gulfstream\_day\_driver\_base\_2, None), Some((HiveGenericUdf#org.apache.hadoop.hive.ql.udf.generic.GenericUDFConcat(year#1339,month#1340,day#1341) = 20140929))

	at org.apache.spark.sql.catalyst.errors.package$.attachTree(package.scala:47)
	at org.apache.spark.sql.execution.Aggregate.execute(Aggregate.scala:126)
	at org.apache.spark.sql.hive.HiveContext$QueryExecution.toRdd$lzycompute(HiveContext.scala:360)
	at org.apache.spark.sql.hive.HiveContext$QueryExecution.toRdd(HiveContext.scala:360)
	at org.apache.spark.sql.hive.HiveContext$QueryExecution.stringResult(HiveContext.scala:415)
	at org.apache.spark.sql.hive.thriftserver.SparkSQLDriver.run(SparkSQLDriver.scala:59)
	at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver.processCmd(SparkSQLCLIDriver.scala:291)
	at org.apache.hadoop.hive.cli.CliDriver.processLine(CliDriver.java:413)
	at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver$.main(SparkSQLCLIDriver.scala:226)
	at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver.main(SparkSQLCLIDriver.scala)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)
	at java.lang.reflect.Method.invoke(Method.java:597)
	at org.apache.spark.deploy.SparkSubmit$.launch(SparkSubmit.scala:328)
	at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:75)
	at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)
Caused by: org.apache.spark.sql.catalyst.errors.package$TreeNodeException: execute, tree:
Exchange SinglePartition
 Aggregate true, [], [COUNT(1) AS PartialCount#1390L]
  HiveTableScan [], (MetastoreRelation default, gulfstream\_day\_driver\_base\_2, None), Some((HiveGenericUdf#org.apache.hadoop.hive.ql.udf.generic.GenericUDFConcat(year#1339,month#1340,day#1341) = 20140929))

	at org.apache.spark.sql.catalyst.errors.package$.attachTree(package.scala:47)
	at org.apache.spark.sql.execution.Exchange.execute(Exchange.scala:44)
	at org.apache.spark.sql.execution.Aggregate$$anonfun$execute$1.apply(Aggregate.scala:128)
	at org.apache.spark.sql.execution.Aggregate$$anonfun$execute$1.apply(Aggregate.scala:127)
	at org.apache.spark.sql.catalyst.errors.package$.attachTree(package.scala:46)
	... 16 more
Caused by: org.apache.spark.sql.catalyst.errors.package$TreeNodeException: execute, tree:
Aggregate true, [], [COUNT(1) AS PartialCount#1390L]
 HiveTableScan [], (MetastoreRelation default, gulfstream\_day\_driver\_base\_2, None), Some((HiveGenericUdf#org.apache.hadoop.hive.ql.udf.generic.GenericUDFConcat(year#1339,month#1340,day#1341) = 20140929))

	at org.apache.spark.sql.catalyst.errors.package$.attachTree(package.scala:47)
	at org.apache.spark.sql.execution.Aggregate.execute(Aggregate.scala:126)
	at org.apache.spark.sql.execution.Exchange$$anonfun$execute$1.apply(Exchange.scala:86)
	at org.apache.spark.sql.execution.Exchange$$anonfun$execute$1.apply(Exchange.scala:45)
	at org.apache.spark.sql.catalyst.errors.package$.attachTree(package.scala:46)
	... 20 more
Caused by: org.apache.spark.SparkException: Task not serializable
	at org.apache.spark.util.ClosureCleaner$.ensureSerializable(ClosureCleaner.scala:166)
	at org.apache.spark.util.ClosureCleaner$.clean(ClosureCleaner.scala:158)
	at org.apache.spark.SparkContext.clean(SparkContext.scala:1242)
	at org.apache.spark.rdd.RDD.mapPartitions(RDD.scala:597)
	at org.apache.spark.sql.execution.Aggregate$$anonfun$execute$1.apply(Aggregate.scala:128)
	at org.apache.spark.sql.execution.Aggregate$$anonfun$execute$1.apply(Aggregate.scala:127)
	at org.apache.spark.sql.catalyst.errors.package$.attachTree(package.scala:46)
	... 24 more
Caused by: java.io.NotSerializableException: org.apache.spark.sql.hive.HiveGenericUdf$DeferredObjectAdapter
	at java.io.ObjectOutputStream.writeObject0(ObjectOutputStream.java:1164)
	at java.io.ObjectOutputStream.writeArray(ObjectOutputStream.java:1346)
	at java.io.ObjectOutputStream.writeObject0(ObjectOutputStream.java:1154)
	at java.io.ObjectOutputStream.defaultWriteFields(ObjectOutputStream.java:1518)
	at java.io.ObjectOutputStream.writeSerialData(ObjectOutputStream.java:1483)
	at java.io.ObjectOutputStream.writeOrdinaryObject(ObjectOutputStream.java:1400)
	at java.io.ObjectOutputStream.writeObject0(ObjectOutputStream.java:1158)
	at java.io.ObjectOutputStream.defaultWriteFields(ObjectOutputStream.java:1518)
	at java.io.ObjectOutputStream.writeSerialData(ObjectOutputStream.java:1483)
	at java.io.ObjectOutputStream.writeOrdinaryObject(ObjectOutputStream.java:1400)
	at java.io.ObjectOutputStream.writeObject0(ObjectOutputStream.java:1158)
	at java.io.ObjectOutputStream.defaultWriteFields(ObjectOutputStream.java:1518)
	at java.io.ObjectOutputStream.writeSerialData(ObjectOutputStream.java:1483)
	at java.io.ObjectOutputStream.writeOrdinaryObject(ObjectOutputStream.java:1400)
	at java.io.ObjectOutputStream.writeObject0(ObjectOutputStream.java:1158)
	at java.io.ObjectOutputStream.defaultWriteFields(ObjectOutputStream.java:1518)
	at java.io.ObjectOutputStream.writeSerialData(ObjectOutputStream.java:1483)
	at java.io.ObjectOutputStream.writeOrdinaryObject(ObjectOutputStream.java:1400)
	at java.io.ObjectOutputStream.writeObject0(ObjectOutputStream.java:1158)
	at java.io.ObjectOutputStream.defaultWriteFields(ObjectOutputStream.java:1518)
	at java.io.ObjectOutputStream.writeSerialData(ObjectOutputStream.java:1483)
	at java.io.ObjectOutputStream.writeOrdinaryObject(ObjectOutputStream.java:1400)
	at java.io.ObjectOutputStream.writeObject0(ObjectOutputStream.java:1158)
	at java.io.ObjectOutputStream.defaultWriteFields(ObjectOutputStream.java:1518)
	at java.io.ObjectOutputStream.writeSerialData(ObjectOutputStream.java:1483)
	at java.io.ObjectOutputStream.writeOrdinaryObject(ObjectOutputStream.java:1400)
	at java.io.ObjectOutputStream.writeObject0(ObjectOutputStream.java:1158)
	at java.io.ObjectOutputStream.defaultWriteFields(ObjectOutputStream.java:1518)
	at java.io.ObjectOutputStream.writeSerialData(ObjectOutputStream.java:1483)
	at java.io.ObjectOutputStream.writeOrdinaryObject(ObjectOutputStream.java:1400)
	at java.io.ObjectOutputStream.writeObject0(ObjectOutputStream.java:1158)
	at java.io.ObjectOutputStream.defaultWriteFields(ObjectOutputStream.java:1518)
	at java.io.ObjectOutputStream.writeSerialData(ObjectOutputStream.java:1483)
	at java.io.ObjectOutputStream.writeOrdinaryObject(ObjectOutputStream.java:1400)
	at java.io.ObjectOutputStream.writeObject0(ObjectOutputStream.java:1158)
	at java.io.ObjectOutputStream.writeObject(ObjectOutputStream.java:330)
	at org.apache.spark.serializer.JavaSerializationStream.writeObject(JavaSerializer.scala:42)
	at org.apache.spark.serializer.JavaSerializerInstance.serialize(JavaSerializer.scala:73)
	at org.apache.spark.util.ClosureCleaner$.ensureSerializable(ClosureCleaner.scala:164)
	... 30 more


---

* [SPARK-4197](https://issues.apache.org/jira/browse/SPARK-4197) | *Major* | **Gradient Boosting API cleanups**

Issues:
* GradientBoosting.train methods take a very large number of parameters.
* No examples for GradientBoosting

Plan:
* Use Builder constructs taking simple types to make it easier to specify BoostingStrategy parameters
* Create examples in Scala and Java to make sure it is easy to construct BoostingStrategy


---

* [SPARK-4196](https://issues.apache.org/jira/browse/SPARK-4196) | *Major* | **Streaming + checkpointing + saveAsNewAPIHadoopFiles = NotSerializableException for Hadoop Configuration**

I am reasonably sure there is some issue here in Streaming and that I'm not missing something basic, but not 100%. I went ahead and posted it as a JIRA to track, since it's come up a few times before without resolution, and right now I can't get checkpointing to work at all.

When Spark Streaming checkpointing is enabled, I see a NotSerializableException thrown for a Hadoop Configuration object, and it seems like it is not one from my user code.

Before I post my particular instance see http://mail-archives.apache.org/mod\_mbox/spark-user/201408.mbox/%3C1408135046777-12202.post@n3.nabble.com%3E for another occurrence.

I was also on customer site last week debugging an identical issue with checkpointing in a Scala-based program and they also could not enable checkpointing without hitting exactly this error.

The essence of my code is:

{code}
    final JavaSparkContext sparkContext = new JavaSparkContext(sparkConf);

    JavaStreamingContextFactory streamingContextFactory = new
JavaStreamingContextFactory() {
      @Override
      public JavaStreamingContext create() {
        return new JavaStreamingContext(sparkContext, new
Duration(batchDurationMS));
      }
    };

      streamingContext = JavaStreamingContext.getOrCreate(
          checkpointDirString, sparkContext.hadoopConfiguration(),
streamingContextFactory, false);
      streamingContext.checkpoint(checkpointDirString);
{code}

It yields:

{code}
2014-10-31 14:29:00,211 ERROR OneForOneStrategy:66
org.apache.hadoop.conf.Configuration
- field (class "org.apache.spark.streaming.dstream.PairDStreamFunctions$$anonfun$9",
name: "conf$2", type: "class org.apache.hadoop.conf.Configuration")
- object (class
"org.apache.spark.streaming.dstream.PairDStreamFunctions$$anonfun$9",
<function2>)
- field (class "org.apache.spark.streaming.dstream.ForEachDStream",
name: "org$apache$spark$streaming$dstream$ForEachDStream$$foreachFunc",
type: "interface scala.Function2")
- object (class "org.apache.spark.streaming.dstream.ForEachDStream",
org.apache.spark.streaming.dstream.ForEachDStream@cb8016a)
...
{code}


This looks like it's due to PairRDDFunctions, as this saveFunc seems
to be  org.apache.spark.streaming.dstream.PairDStreamFunctions$$anonfun$9
:

{code}
def saveAsNewAPIHadoopFiles(
    prefix: String,
    suffix: String,
    keyClass: Class[\_],
    valueClass: Class[\_],
    outputFormatClass: Class[\_ <: NewOutputFormat[\_, \_]],
    conf: Configuration = new Configuration
  ) {
  val saveFunc = (rdd: RDD[(K, V)], time: Time) => {
    val file = rddToFileName(prefix, suffix, time)
    rdd.saveAsNewAPIHadoopFile(file, keyClass, valueClass,
outputFormatClass, conf)
  }
  self.foreachRDD(saveFunc)
}
{code}

Is that not a problem? but then I don't know how it would ever work in Spark. But then again I don't see why this is an issue and only when checkpointing is enabled.

Long-shot, but I wonder if it is related to closure issues like https://issues.apache.org/jira/browse/SPARK-1866


---

* [SPARK-4192](https://issues.apache.org/jira/browse/SPARK-4192) | *Minor* | **Support UDT in Python**

This is a sub-task of SPARK-3572 for UDT support in Python.


---

* [SPARK-4191](https://issues.apache.org/jira/browse/SPARK-4191) | *Major* | **move wrapperFor to HiveInspectors to reuse them**

move wrapperFor in InsertIntoHiveTable to HiveInspectors to reuse them, this method can be reused when writing date with ObjectInspector(such as orc support)


---

* [SPARK-4188](https://issues.apache.org/jira/browse/SPARK-4188) | *Major* | **Shuffle fetches should be retried at a lower level**

During periods of high network (or GC) load, it is not uncommon that IOExceptions crop up around connection failures when fetching shuffle files. Unfortunately, when such a failure occurs, it is interpreted as an inability to fetch the files, which causes us to mark the executor as lost and recompute all of its shuffle outputs.
We should allow retrying at the network level in the event of an IOException in order to avoid this circumstance.


---

* [SPARK-4186](https://issues.apache.org/jira/browse/SPARK-4186) | *Major* | **Support binaryFiles and binaryRecords API in Python**

After SPARK-2759, we should expose these methods in Python. Shouldn't be too hard to add.


---

* [SPARK-4185](https://issues.apache.org/jira/browse/SPARK-4185) | *Major* | **JSON schema inference failed when dealing with type conflicts in arrays**

{code}
val sqlContext = new org.apache.spark.sql.SQLContext(sparkContext)
val diverging = sparkContext.parallelize(List("""{"branches": ["foo"]}""", """{"branches": [{"foo":42}]}"""))
sqlContext.jsonRDD(diverging)  // throws a MatchError
{code}
The case is from http://chapeau.freevariable.com/2014/10/fedmsg-and-spark.html


---

* [SPARK-4183](https://issues.apache.org/jira/browse/SPARK-4183) | *Major* | **Enable Netty-based BlockTransferService by default**

Spark's NettyBlockTransferService relies on Netty to achieve high performance and zero-copy IO, which is a big simplification over the manual connection management that's done in today's NioBlockTransferService. Additionally, the core functionality of the NettyBlockTransferService has been extracted out of spark core into the "network" package, with the intention of reusing this code for SPARK-3796 ([PR #3001|https://github.com/apache/spark/pull/3001/files#diff-54]).

We should turn NettyBlockTransferService on by default in order to improve debuggability and stability of the network layer (which has historically been more challenging with the current BlockTransferService).


---

* [SPARK-4182](https://issues.apache.org/jira/browse/SPARK-4182) | *Blocker* | **Caching tables containing boolean, binary, array, struct and/or map columns doesn't work**

If a table contains a column whose type is binary, array, struct, map, and for some reason, boolean, in-memory columnar caching doesn't work because a {{NoopColumnStats}} is used to collect column statistics. {{NoopColumnStats}} returns an empty statistics row, and thus breaks {{InMemoryRelation}} statistics calculation.

Execute the following snippet to reproduce this bug in {{spark-shell}}:
{code}
import org.apache.spark.sql.SQLContext
import org.apache.spark.sql.catalyst.types.\_

val sparkContext = sc
import sparkContext.\_

val sqlContext = new SQLContext(sparkContext)
import sqlContext.\_

case class BoolField(flag: Boolean)

val schemaRDD = parallelize(true :: false :: Nil).map(BoolField(\_)).toSchemaRDD
schemaRDD.cache().count()
schemaRDD.count()
{code}
Exception thrown:
{code}
java.lang.ArrayIndexOutOfBoundsException: 4
        at org.apache.spark.sql.catalyst.expressions.GenericRow.apply(Row.scala:142)
        at org.apache.spark.sql.catalyst.expressions.BoundReference.eval(BoundAttribute.scala:37)
        at org.apache.spark.sql.columnar.InMemoryRelation$$anonfun$computeSizeInBytes$1.apply(InMemoryColumnarTableScan.scala:66)
        at org.apache.spark.sql.columnar.InMemoryRelation$$anonfun$computeSizeInBytes$1.apply(InMemoryColumnarTableScan.scala:66)
        at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
        at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
        at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
        at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
        at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
        at scala.collection.AbstractTraversable.map(Traversable.scala:105)
        at org.apache.spark.sql.columnar.InMemoryRelation.computeSizeInBytes(InMemoryColumnarTableScan.scala:66)
        at org.apache.spark.sql.columnar.InMemoryRelation.statistics(InMemoryColumnarTableScan.scala:87)
        at org.apache.spark.sql.columnar.InMemoryRelation.statisticsToBePropagated(InMemoryColumnarTableScan.scala:73)
        at org.apache.spark.sql.columnar.InMemoryRelation.withOutput(InMemoryColumnarTableScan.scala:147)
        at org.apache.spark.sql.CacheManager$$anonfun$useCachedData$1$$anonfun$applyOrElse$1.apply(CacheManager.scala:122)
        at org.apache.spark.sql.CacheManager$$anonfun$useCachedData$1$$anonfun$applyOrElse$1.apply(CacheManager.scala:122)
        ...
{code}


---

* [SPARK-4180](https://issues.apache.org/jira/browse/SPARK-4180) | *Blocker* | **SparkContext constructor should throw exception if another SparkContext is already running**

Spark does not currently support multiple concurrently-running SparkContexts in the same JVM (see SPARK-2243).  Therefore, SparkContext's constructor should throw an exception if there is an active SparkContext that has not been shut down via {{stop()}}.

PySpark already does this, but the Scala SparkContext should do the same thing.  The current behavior with multiple active contexts is unspecified / not understood and it may be the source of confusing errors (see the user error report in SPARK-4080, for example).

This should be pretty easy to add: just add a {{activeSparkContext}} field to the SparkContext companion object and {{synchronize}} on it in the constructor and {{stop()}} methods; see PySpark's {{context.py}} file for an example of this approach.


---

* [SPARK-4177](https://issues.apache.org/jira/browse/SPARK-4177) | *Major* | **update build doc for already supporting hive 13 in jdbc/cli**

fix build doc since already support hive 13 in jdbc/cli


---

* [SPARK-4175](https://issues.apache.org/jira/browse/SPARK-4175) | *Critical* | **Exception on stage page**

{code}
14/10/31 14:52:58 WARN servlet.ServletHandler: /stages/stage/
java.util.NoSuchElementException: None.get
	at scala.None$.get(Option.scala:313)
	at scala.None$.get(Option.scala:311)
	at org.apache.spark.ui.jobs.StagePage.taskRow(StagePage.scala:331)
	at org.apache.spark.ui.jobs.StagePage$$anonfun$8.apply(StagePage.scala:173)
	at org.apache.spark.ui.jobs.StagePage$$anonfun$8.apply(StagePage.scala:173)
	at org.apache.spark.ui.UIUtils$$anonfun$listingTable$2.apply(UIUtils.scala:282)
	at org.apache.spark.ui.UIUtils$$anonfun$listingTable$2.apply(UIUtils.scala:282)
	at scala.collection.immutable.Stream.map(Stream.scala:376)
	at org.apache.spark.ui.UIUtils$.listingTable(UIUtils.scala:282)
	at org.apache.spark.ui.jobs.StagePage.render(StagePage.scala:171)
	at org.apache.spark.ui.WebUI$$anonfun$attachPage$1.apply(WebUI.scala:68)
	at org.apache.spark.ui.WebUI$$anonfun$attachPage$1.apply(WebUI.scala:68)
	at org.apache.spark.ui.JettyUtils$$anon$1.doGet(JettyUtils.scala:68)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:735)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:848)
	at org.eclipse.jetty.servlet.ServletHolder.handle(ServletHolder.java:684)
	at org.eclipse.jetty.servlet.ServletHandler$CachedChain.doFilter(ServletHandler.java:1496)
	at org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter.doFilter(AmIpFilter.java:164)
	at org.eclipse.jetty.servlet.ServletHandler$CachedChain.doFilter(ServletHandler.java:1467)
	at org.eclipse.jetty.servlet.ServletHandler.doHandle(ServletHandler.java:499)
	at org.eclipse.jetty.server.handler.ContextHandler.doHandle(ContextHandler.java:1086)
	at org.eclipse.jetty.servlet.ServletHandler.doScope(ServletHandler.java:428)
	at org.eclipse.jetty.server.handler.ContextHandler.doScope(ContextHandler.java:1020)
	at org.eclipse.jetty.server.handler.ScopedHandler.handle(ScopedHandler.java:135)
	at org.eclipse.jetty.server.handler.ContextHandlerCollection.handle(ContextHandlerCollection.java:255)
	at org.eclipse.jetty.server.handler.HandlerWrapper.handle(HandlerWrapper.java:116)
	at org.eclipse.jetty.server.Server.handle(Server.java:370)
	at org.eclipse.jetty.server.AbstractHttpConnection.handleRequest(AbstractHttpConnection.java:494)
	at org.eclipse.jetty.server.AbstractHttpConnection.headerComplete(AbstractHttpConnection.java:971)
	at org.eclipse.jetty.server.AbstractHttpConnection$RequestHandler.headerComplete(AbstractHttpConnection.java:1033)
	at org.eclipse.jetty.http.HttpParser.parseNext(HttpParser.java:644)
	at org.eclipse.jetty.http.HttpParser.parseAvailable(HttpParser.java:235)
	at org.eclipse.jetty.server.AsyncHttpConnection.handle(AsyncHttpConnection.java:82)
	at org.eclipse.jetty.io.nio.SelectChannelEndPoint.handle(SelectChannelEndPoint.java:667)
	at org.eclipse.jetty.io.nio.SelectChannelEndPoint$1.run(SelectChannelEndPoint.java:52)
	at org.eclipse.jetty.util.thread.QueuedThreadPool.runJob(QueuedThreadPool.java:608)
	at org.eclipse.jetty.util.thread.QueuedThreadPool$3.run(QueuedThreadPool.java:543)
	at java.lang.Thread.run(Thread.java:722)
{code}

I'm guessing this was caused by SPARK-4016?


---

* [SPARK-4173](https://issues.apache.org/jira/browse/SPARK-4173) | *Major* | **EdgePartitionBuilder uses wrong value for first clustered index**

Lines 48 and 49 in EdgePartitionBuilder reference {{srcIds}} before it has been initialized, causing an incorrect value to be stored for the first cluster.

https://github.com/apache/spark/blob/23468e7e96bf047ba53806352558b9d661567b23/graphx/src/main/scala/org/apache/spark/graphx/impl/EdgePartitionBuilder.scala#L48-49


---

* [SPARK-4169](https://issues.apache.org/jira/browse/SPARK-4169) | *Major* | **[Core] Locale dependent code**

With a non english locale the method isBindCollision in

core/src/main/scala/org/apache/spark/util/Utils.scala

doesn't work because it checks the exception message, which is locale dependent.

The test suite 
core/src/test/scala/org/apache/spark/util/UtilsSuite.scala
also contains a locale dependent test "string formatting of time durations" which uses a DecimalSeperator which is locale dependent.

I created a pull request on github to solve this issue.


---

* [SPARK-4166](https://issues.apache.org/jira/browse/SPARK-4166) | *Minor* | **Display the executor ID in the Web UI when ExecutorLostFailure happens**

Now when  ExecutorLostFailure happens, it only displays "ExecutorLostFailure (executor lost)"


---

* [SPARK-4164](https://issues.apache.org/jira/browse/SPARK-4164) | *Major* | **spark.kryo.registrator shall use comma separated value to support multiple registrator**

Currently, "spark.kryo.registrator" only support one registrator class. For example, 
conf.set("spark.kryo.registrator", "org.apache.spark.graphx.GraphRegistrator").

However, if there is user defined registrator class, it can not be registered. 

To improve the code, we can change the code in "KryoSerializer" to support class with separator( for example comma).


---

* [SPARK-4163](https://issues.apache.org/jira/browse/SPARK-4163) | *Minor* | **When fetching blocks unsuccessfully, Web UI only displays "Fetch failure"**

When fetching blocks unsuccessfully, Web UI only displays "Fetch failure". It's hard to find out the cause of the fetch failure. Web UI should display the stack track for the fetch failure.


---

* [SPARK-4158](https://issues.apache.org/jira/browse/SPARK-4158) | *Major* | **Spark throws exception when Mesos resources are missing**

Spark throws an exception when trying to check resources which haven't been offered by Mesos.  This is an error in Spark, and should be corrected as such.  Here's a sample:

{code}
val data Exception in thread "Thread-41" java.lang.IllegalArgumentException: No resource called cpus in [name: "mem"
type: SCALAR
scalar {
  value: 2067.0
}
role: "*"
, name: "disk"
type: SCALAR
scalar {
  value: 900.0
}
role: "*"
, name: "ports"
type: RANGES
ranges {
  range {
    begin: 31000
    end: 32000
  }
}
role: "*"
]
        at org.apache.spark.scheduler.cluster.mesos.CoarseMesosSchedulerBackend.org$apache$spark$scheduler$cluster$mesos$CoarseMesosSchedulerBackend$$getResource(CoarseMesosSchedulerBackend.scala:236)
        at org.apache.spark.scheduler.cluster.mesos.CoarseMesosSchedulerBackend$$anonfun$resourceOffers$1.apply(CoarseMesosSchedulerBackend.scala:200)
        at org.apache.spark.scheduler.cluster.mesos.CoarseMesosSchedulerBackend$$anonfun$resourceOffers$1.apply(CoarseMesosSchedulerBackend.scala:197)
        at scala.collection.Iterator$class.foreach(Iterator.scala:727)
        at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
        at scala.collection.IterableLike$class.foreach(IterableLike.scala:72)
        at scala.collection.AbstractIterable.foreach(Iterable.scala:54)
        at org.apache.spark.scheduler.cluster.mesos.CoarseMesosSchedulerBackend.resourceOffers(CoarseMesosSchedulerBackend.scala:197)
{code}


---

* [SPARK-4155](https://issues.apache.org/jira/browse/SPARK-4155) | *Minor* | **Consolidate usages of \<driver\>**

We have "<driver>" everywhere to represent the driver. Let's consolidate the usage of this into 1 variable.


---

* [SPARK-4154](https://issues.apache.org/jira/browse/SPARK-4154) | *Major* | **Query does not work if it has "not between " in Spark SQL and HQL**

if the query contains "not between" does not work.
{code}
SELECT * FROM src where key not between 10 and 20
{code}

It gives the following error

{code}
Exception in thread "main" java.lang.RuntimeException: 
Unsupported language features in query: SELECT * FROM src where key not between 10 and 20
TOK\_QUERY
  TOK\_FROM
    TOK\_TABREF
      TOK\_TABNAME
        src
  TOK\_INSERT
    TOK\_DESTINATION
      TOK\_DIR
        TOK\_TMP\_FILE
    TOK\_SELECT
      TOK\_SELEXPR
        TOK\_ALLCOLREF
    TOK\_WHERE
      TOK\_FUNCTION
        between
        KW\_TRUE
        TOK\_TABLE\_OR\_COL
          key
        10
        20

scala.NotImplementedError: No parse rules for ASTNode type: 256, text: KW\_TRUE :
KW\_TRUE
" +
         
org.apache.spark.sql.hive.HiveQl$.nodeToExpr(HiveQl.scala:1088)
        
	at scala.sys.package$.error(package.scala:27)
	at org.apache.spark.sql.hive.HiveQl$.createPlan(HiveQl.scala:251)
	at org.apache.spark.sql.hive.ExtendedHiveQlParser$$anonfun$hiveQl$1.apply(ExtendedHiveQlParser.scala:50)
	at org.apache.spark.sql.hive.ExtendedHiveQlParser$$anonfun$hiveQl$1.apply(ExtendedHiveQlParser.scala:49)
	at scala.util.parsing.combinator.Parsers$Success.map(Parsers.scala:136)
	at scala.util.parsing.combinator.Parsers$Success.map(Parsers.scala:135)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:242)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:242)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:222)
{code}


---

* [SPARK-4153](https://issues.apache.org/jira/browse/SPARK-4153) | *Trivial* | **All columns of the application table in the history page are sorted in alphabetical order**

"Started", "Completed", "Duration" and "Last Updated" columns should be sorted by time.


---

* [SPARK-4152](https://issues.apache.org/jira/browse/SPARK-4152) | *Minor* | **Avoid data change in CTAS while table already existed**

CREATE TABLE t1 (a String);
CREATE TABLE t1 AS SELECT key FROM src; -- throw exception
CREATE TABLE if not exists t1 AS SELECT key FROM src; -- expect do nothing, actually will overwrite the t1.


---

* [SPARK-4150](https://issues.apache.org/jira/browse/SPARK-4150) | *Trivial* | **rdd.setName returns None in PySpark**

We should return self so we can do 

{code}
rdd.setName('abc').cache().count()
{code}


---

* [SPARK-4149](https://issues.apache.org/jira/browse/SPARK-4149) | *Minor* | **ISO 8601 support for json date time strings**

parse json string like "2014-10-29T20:05:00-08:00" or "2014-10-29T20:05:00Z".


---

* [SPARK-4148](https://issues.apache.org/jira/browse/SPARK-4148) | *Major* | **PySpark's sample uses the same seed for all partitions**

The current way of seed distribution makes the random sequences from partition i and i+1 offset by 1.

{code}
In [14]: import random

In [15]: r1 = random.Random(10)

In [16]: r1.randint(0, 1)
Out[16]: 1

In [17]: r1.random()
Out[17]: 0.4288890546751146

In [18]: r1.random()
Out[18]: 0.5780913011344704

In [19]: r2 = random.Random(10)

In [20]: r2.randint(0, 1)
Out[20]: 1

In [21]: r2.randint(0, 1)
Out[21]: 0

In [22]: r2.random()
Out[22]: 0.5780913011344704
{code}

So the second value from partition 1 is the same as the first value from partition 2.


---

* [SPARK-4146](https://issues.apache.org/jira/browse/SPARK-4146) | *Minor* | **[GraphX] Modify option name according to example doc in SynthBenchmark**

Now graphx.SynthBenchmark example has an option of iteration number named as "niter". However, in its document, it is named as "niters". The mismatch between the implementation and document causes certain IllegalArgumentException while trying that example.


---

* [SPARK-4145](https://issues.apache.org/jira/browse/SPARK-4145) | *Major* | **Create jobs overview and job details pages on the web UI**

We should create a jobs overview and job details page on the web UI.  The overview page would list all jobs in the SparkContext and would replace the current "Stages" page as the default web UI page.  The job details page would provide information on the stages triggered by a particular job; it would also serve as a place to show DAG visualizations and other debugging aids.

I still plan to keep the current "Stages" page, which lists all stages of all jobs, since it's a useful debugging aid for figuring out how resources are being consumed across all jobs in a Spark Cluster.


---

* [SPARK-4143](https://issues.apache.org/jira/browse/SPARK-4143) | *Trivial* | **Move inner class DeferredObjectAdapter to top level**

The class DeferredObjectAdapter is the inner class of HiveGenericUdf, which may cause some overhead in closure ser/de-ser. Move it to top level.


---

* [SPARK-4142](https://issues.apache.org/jira/browse/SPARK-4142) | *Major* | **Bad Default for GraphLoader Edge Partitions**

The default number of edge partitions for the GraphLoader is set to 1 rather than the default parallelism.


---

* [SPARK-4141](https://issues.apache.org/jira/browse/SPARK-4141) | *Minor* | **Hide Accumulators column on stage page when no accumulators exist**

The task table on the details page for each stage has a column for accumulators. We should only show this column if the stage has accumulators, otherwise it clutters the UI.


---

* [SPARK-4139](https://issues.apache.org/jira/browse/SPARK-4139) | *Major* | **Start the number of executors at the max if dynamic allocation is enabled**

SPARK-3795 allows us to dynamically scale the number of executors up and down. We should start the number at the max instead of from 0 in the beginning, because the first job will likely run immediately after the SparkContext is set up.


---

* [SPARK-4138](https://issues.apache.org/jira/browse/SPARK-4138) | *Major* | **Guard against incompatible settings on the number of executors**

After SPARK-3822 and SPARK-3795, we now set a lower bound and an upper bound for the number of executors. These settings are incompatible if the user sets the number of executors explicitly, however. We need to add a guard against this.


---

* [SPARK-4130](https://issues.apache.org/jira/browse/SPARK-4130) | *Major* | **loadLibSVMFile does not handle extra whitespace**

When testing MLlib on the splice site data (http://www.csie.ntu.edu.tw/~cjlin/libsvmtools/datasets/binary.html#splice-site) the loadSVM.  To reproduce in spark shell:

{code:scala}
import org.apache.spark.mllib.util.MLUtils
val data =  MLUtils.loadLibSVMFile(sc, "hdfs://ec2-54-200-69-227.us-west-2.compute.amazonaws.com:9000/splice\_site.t")
{code}

generates the error:

{code}
org.apache.spark.SparkException: Job aborted due to stage failure: Task 0.0:73 failed 4 times, most recent failure: Exception failure in TID 335 on host ip-172-31-31-54.us-west-2.compute.internal: java.lang.NumberFormatException: For input string: ""
        java.lang.NumberFormatException.forInputString(NumberFormatException.java:65)
        java.lang.Integer.parseInt(Integer.java:504)
        java.lang.Integer.parseInt(Integer.java:527)
        scala.collection.immutable.StringLike$class.toInt(StringLike.scala:229)
        scala.collection.immutable.StringOps.toInt(StringOps.scala:31)
        org.apache.spark.mllib.util.MLUtils$$anonfun$4$$anonfun$5.apply(MLUtils.scala:81)
        org.apache.spark.mllib.util.MLUtils$$anonfun$4$$anonfun$5.apply(MLUtils.scala:79)
        scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
        scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
        scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:33)
        scala.collection.mutable.ArrayOps$ofRef.foreach(ArrayOps.scala:108)
        scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
        scala.collection.mutable.ArrayOps$ofRef.map(ArrayOps.scala:108)
        org.apache.spark.mllib.util.MLUtils$$anonfun$4.apply(MLUtils.scala:79)
        org.apache.spark.mllib.util.MLUtils$$anonfun$4.apply(MLUtils.scala:76)
        scala.collection.Iterator$$anon$11.next(Iterator.scala:328)
        scala.collection.Iterator$class.foreach(Iterator.scala:727)
        scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
        scala.collection.generic.Growable$class.$plus$plus$eq(Growable.scala:48)
        scala.collection.mutable.ArrayBuffer.$plus$plus$eq(ArrayBuffer.scala:103)
        org.apache.spark.CacheManager.getOrCompute(CacheManager.scala:107)
        org.apache.spark.rdd.RDD.iterator(RDD.scala:227)
        org.apache.spark.rdd.MappedRDD.compute(MappedRDD.scala:31)
        org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
        org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
        org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:111)
        org.apache.spark.scheduler.Task.run(Task.scala:51)
        org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:187)
        java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        java.lang.Thread.run(Thread.java:745)
{code}


---

* [SPARK-4129](https://issues.apache.org/jira/browse/SPARK-4129) | *Major* | **Performance tuning in MultivariateOnlineSummarizer**

In MultivariateOnlineSummarizer, breeze's activeIterator is used to loop through the nonZero elements in the vector. However, activeIterator doesn't perform well due to lots of overhead. In this PR, native while loop is used for both DenseVector and SparseVector.

The benchmark result with 20 executors using mnist8m dataset:

Before:
DenseVector: 48.2 seconds
SparseVector: 16.3 seconds

After:
DenseVector: 17.8 seconds
SparseVector: 11.2 seconds

Since MultivariateOnlineSummarizer is used in several places, the overall performance gain in mllib library will be significant with this PR.


---

* [SPARK-4128](https://issues.apache.org/jira/browse/SPARK-4128) | *Blocker* | **Create instructions on fully building Spark in Intellij**

With some of our more complicated modules, I'm not sure whether Intellij correctly understands all source locations. Also, we might require specifying some profiles for the build to work directly. We should document clearly how to start with vanilla Spark master and get the entire thing building in Intellij.


---

* [SPARK-4124](https://issues.apache.org/jira/browse/SPARK-4124) | *Major* | **Simplify serialization and call API in MLlib Python**

There are much repeated code  to similar things, convert RDD into Java object, convert arguments into java, convert to result rdd/object into python, they could be simplified to share the same code.


---

* [SPARK-4121](https://issues.apache.org/jira/browse/SPARK-4121) | *Blocker* | **Master build failures after shading commons-math3**

The Spark master Maven build kept failing after we replace colt with commons-math3 and shade the latter:

https://amplab.cs.berkeley.edu/jenkins/job/Spark-Master-Maven-with-YARN/

The error message is:

{code}
KMeansClusterSuite:
Spark assembly has been built with Hive, including Datanucleus jars on classpath
Spark assembly has been built with Hive, including Datanucleus jars on classpath
- task size should be small in both training and prediction *** FAILED ***
  org.apache.spark.SparkException: Job aborted due to stage failure: Task 1 in stage 1.0 failed 4 times, most recent failure: Lost task 1.3 in stage 1.0 (TID 9, localhost): java.io.InvalidClassException: org.apache.spark.util.random.PoissonSampler; local class incompatible: stream classdesc serialVersionUID = -795011761847245121, local class serialVersionUID = 4249244967777318419
        java.io.ObjectStreamClass.initNonProxy(ObjectStreamClass.java:617)
        java.io.ObjectInputStream.readNonProxyDesc(ObjectInputStream.java:1622)
        java.io.ObjectInputStream.readClassDesc(ObjectInputStream.java:1517)
        java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1771)
        java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1350)
        java.io.ObjectInputStream.defaultReadFields(ObjectInputStream.java:1990)
        java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1915)
        java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1798)
        java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1350)
        java.io.ObjectInputStream.defaultReadFields(ObjectInputStream.java:1990)
        java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1915)
        java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1798)
        java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1350)
        java.io.ObjectInputStream.readObject(ObjectInputStream.java:370)
        org.apache.spark.serializer.JavaDeserializationStream.readObject(JavaSerializer.scala:62)
        org.apache.spark.serializer.JavaSerializerInstance.deserialize(JavaSerializer.scala:87)
        org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:57)
        org.apache.spark.scheduler.Task.run(Task.scala:56)
        org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:186)
        java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        java.lang.Thread.run(Thread.java:745)
{code}

This test passed in local sbt build. So the issue should be caused by shading. Maybe there are two versions of commons-math3 (hadoop depends on it), or MLlib doesn't use the shaded version at compile.

[~srowen] Could you take a look? Thanks!


---

* [SPARK-4120](https://issues.apache.org/jira/browse/SPARK-4120) | *Major* | **Join of multiple tables with syntax like SELECT .. FROM T1,T2,T3.. does not work in SparkSQL**

The queries with more than like 2 tables does not work. 
{code}
sql("SELECT * FROM records1 as a,records2 as b,records3 as c where a.key=b.key and a.key=c.key")
{code}

The above query gives following exception.
{code}
Exception in thread "main" java.lang.RuntimeException: [1.40] failure: ``UNION'' expected but `,' found

SELECT * FROM records1 as a,records2 as b,records3 as c where a.key=b.key and a.key=c.key
                                       ^
	at scala.sys.package$.error(package.scala:27)
	at org.apache.spark.sql.catalyst.AbstractSparkSQLParser.apply(SparkSQLParser.scala:33)
	at org.apache.spark.sql.SQLContext$$anonfun$1.apply(SQLContext.scala:75)

{code}


---

* [SPARK-4116](https://issues.apache.org/jira/browse/SPARK-4116) | *Minor* | **Delete the abandoned log4j-spark-container.properties**

Seems like the properties file was abandoned, we could delete it.


---

* [SPARK-4115](https://issues.apache.org/jira/browse/SPARK-4115) | *Minor* | **[GraphX] add overrided count for EdgeRDD**

Add overrided count for edge counting of EdgeRDD.


---

* [SPARK-4113](https://issues.apache.org/jira/browse/SPARK-4113) | *Blocker* | **Pyhon UDF on ArrayType**

from Matei:

I have a table where column c is of type array<int>. However the following set of commands fails:
sqlContext.registerFunction("py\_func", lambda a: len(a))

%sql select py\_func(c) from some\_temp

Error in SQL statement: java.lang.RuntimeException: org.apache.spark.SparkException: Job aborted due to stage failure: Task 2 in stage 252.0 failed 4 times, most recent failure: Lost task 2.3 in stage 252.0 (TID 8454, ip-10-0-157-104.us-west-2.compute.internal): net.razorvine.pickle.PickleException: couldn't introspect javabean: java.lang.IllegalArgumentException: wrong number of arguments
        net.razorvine.pickle.Pickler.put\_javabean(Pickler.java:603)
        net.razorvine.pickle.Pickler.dispatch(Pickler.java:299)
        net.razorvine.pickle.Pickler.save(Pickler.java:125)
        net.razorvine.pickle.Pickler.put\_arrayOfObjects(Pickler.java:392)
        net.razorvine.pickle.Pickler.dispatch(Pickler.java:195)
        net.razorvine.pickle.Pickler.save(Pickler.java:125)
        net.razorvine.pickle.Pickler.put\_arrayOfObjects(Pickler.java:392)
        net.razorvine.pickle.Pickler.dispatch(Pickler.java:195)
        net.razorvine.pickle.Pickler.save(Pickler.java:125)
        net.razorvine.pickle.Pickler.dump(Pickler.java:95)
The same function works if I select a Row from my table into Python and call it on its third column.


---

* [SPARK-4111](https://issues.apache.org/jira/browse/SPARK-4111) | *Major* | **[MLlib] Implement regression model evaluation metrics**

Supervised machine learning include classification and regression. There is classification metrics (BinaryClassificationMetrics) in MLlib, we also need regression metrics to evaluate the regression model and tunning parameter.


---

* [SPARK-4110](https://issues.apache.org/jira/browse/SPARK-4110) | *Minor* | **Wrong comments about default settings in spark-daemon.sh**

In spark-daemon.sh, thare are following comments.

{code}
#   SPARK\_CONF\_DIR  Alternate conf dir. Default is ${SPARK\_PREFIX}/conf.
#   SPARK\_LOG\_DIR   Where log files are stored.  PWD by default.
{code}

But, I think the default value for SPARK\_CONF\_DIR is ${SPARK\_HOME}/conf and for SPARK\_LOG\_DIR is ${SPARK\_HOME}/logs.


---

* [SPARK-4108](https://issues.apache.org/jira/browse/SPARK-4108) | *Trivial* | **Fix uses of @deprecated in catalyst dataTypes**

@deprecated takes 2 parameters message and version 
sql/catalyst/src/main/scala/org/apache/spark/sql/catalyst/types/dataTypes.scala
has a usage of @deprecated with just one parameter


---

* [SPARK-4107](https://issues.apache.org/jira/browse/SPARK-4107) | *Blocker* | **Incorrect handling of Channel.read()'s return value may lead to data truncation**

When using {{Channel.read()}}, we need to properly handle the return value and account for the case where we've read fewer bytes than expected.  There are a few places where we don't do this properly, which may lead to incorrect data truncation in rare circumstances.  I've opened a PR to fix this.


---

* [SPARK-4102](https://issues.apache.org/jira/browse/SPARK-4102) | *Trivial* | **ShuffleReader.stop() method is never implemented or called; should be deleted.**

As-is, the presence of this method is misleading.  If a future subclass implements it, it will never be called.  Until it's needed, we should just remove it.


---

* [SPARK-4098](https://issues.apache.org/jira/browse/SPARK-4098) | *Minor* | **use appUIAddress instead of appUIHostPort in yarn-client mode**

I don't understant why using appUIHostPort here, but in yarn-cluster mode we use appUIAddress. So I replaced it. 
Testing results state it is ok to change.


---

* [SPARK-4097](https://issues.apache.org/jira/browse/SPARK-4097) | *Minor* | **Race condition in org.apache.spark.ComplexFutureAction.cancel**

There is a chance that `thread` is null when calling `thread.interrupt()`.

{code:java}
  override def cancel(): Unit = this.synchronized {
    \_cancelled = true
    if (thread != null) {
      thread.interrupt()
    }
  }
{code}

Should put `thread = null` into a `synchronized` block to fix the race condition.

{code:java}
      try {
        p.success(func)
      } catch {
        case e: Exception => p.failure(e)
      } finally {
        thread = null
      }
{code}


---

* [SPARK-4096](https://issues.apache.org/jira/browse/SPARK-4096) | *Minor* | **let ApplicationMaster accept executor memory argument in same format as JVM memory strings**

Here ApplicationMaster accept executor memory argument only in number format, we should let it accept JVM style memory strings as well.


---

* [SPARK-4095](https://issues.apache.org/jira/browse/SPARK-4095) | *Minor* | **[YARN][Minor]extract val isLaunchingDriver in ClientBase**

Instead of checking if `args.userClass` is null repeatedly, we extract it to an global val as in `ApplicationMaster`.


---

* [SPARK-4090](https://issues.apache.org/jira/browse/SPARK-4090) | *Blocker* | **Memory leak in snappy-java 1.1.1.4/5**

There is memory-leak bug in snappy-java 1.1.1.4/5, we should rollback to 1.1.1.3 or wait for bugfix.

The jenkins tests timeouted or OOM multiple times recently. While test it locally, I got the heap dump of leaked JVM:



Then found that it's a bug in recent releases of snappy-java:
{code}
+        inputBuffer = inputBufferAllocator.allocate(inputSize);
+        outputBuffer = inputBufferAllocator.allocate(outputSize);
{code}

The outputBuffer is allocated from inputBufferAllocator but released to outputBufferAllocator: https://github.com/xerial/snappy-java/issues/91


---

* [SPARK-4089](https://issues.apache.org/jira/browse/SPARK-4089) | *Minor* | **The version number of Spark in \_config.yaml is wrong.**

The version number of Spark in docs/\_config.yaml for master branch should be 1.2.0 for now.


---

* [SPARK-4088](https://issues.apache.org/jira/browse/SPARK-4088) | *Blocker* | **Python worker should exit after socket is closed by JVM**

In case of take() or exception in Python, python worker may exit before JVM read() all the response, then the write thread may raise "Connection reset" exception.


---

* [SPARK-4085](https://issues.apache.org/jira/browse/SPARK-4085) | *Critical* | **Job will fail if a shuffle file that's read locally gets deleted**

This commit: https://github.com/apache/spark/commit/665e71d14debb8a7fc1547c614867a8c3b1f806a changed the behavior of fetching local shuffle blocks such that if a shuffle block is not found locally, the shuffle block is no longer marked as failed, and a fetch failed exception is not thrown (this is because the "catch" block here won't ever be invoked: https://github.com/apache/spark/commit/665e71d14debb8a7fc1547c614867a8c3b1f806a#diff-e6e1631fa01e17bf851f49d30d028823R202 because the exception called from getLocalFromDisk() doesn't get thrown until next() gets called on the iterator).

[~rxin] [~matei] it looks like you guys changed the test for this to catch the new exception that gets thrown (https://github.com/apache/spark/commit/665e71d14debb8a7fc1547c614867a8c3b1f806a#diff-9c2e1918319de967045d04caf813a7d1R93).  Was that intentional?  Because the new exception is a SparkException and not a FetchFailedException, jobs with missing local shuffle data will now fail, rather than having the map stage get retried.

This problem is reproducible with this test case:
{code}
  test("hash shuffle manager recovers when local shuffle files get deleted") {
    val conf = new SparkConf(false)
    conf.set("spark.shuffle.manager", "hash")
    sc = new SparkContext("local", "test", conf)
    val rdd = sc.parallelize(1 to 10, 2).map((\_, 1)).reduceByKey(\_+\_)
    rdd.count()

    // Delete one of the local shuffle blocks.
    sc.env.blockManager.diskBlockManager.getFile(new ShuffleBlockId(0, 0, 0)).delete()
    rdd.count()
  }
{code}

which will fail on the second rdd.count().

This is a regression from 1.1.


---

* [SPARK-4084](https://issues.apache.org/jira/browse/SPARK-4084) | *Major* | **Reuse sort key in Sorter**

Sorter uses generic-typed key for sorting. When data is large, it creates lots of key objects, which is not efficient. We should reuse the key in Sorter for memory efficiency. This change is part of the petabyte sort implementation from [~rxin].


---

* [SPARK-4080](https://issues.apache.org/jira/browse/SPARK-4080) | *Critical* | **"IOException: unexpected exception type" while deserializing tasks**

When deserializing tasks on executors, we sometimes see {{IOException: unexpected exception type}}:

{code}
 java.io.IOException: unexpected exception type
        java.io.ObjectStreamClass.throwMiscException(ObjectStreamClass.java:1538)
        java.io.ObjectStreamClass.invokeReadObject(ObjectStreamClass.java:1025)
        java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1893)
        java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1798)
        java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1350)
        java.io.ObjectInputStream.defaultReadFields(ObjectInputStream.java:1990)
        java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1915)
        java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1798)
        java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1350)
        java.io.ObjectInputStream.readObject(ObjectInputStream.java:370)
        org.apache.spark.serializer.JavaDeserializationStream.readObject(JavaSerializer.scala:62)
        org.apache.spark.serializer.JavaSerializerInstance.deserialize(JavaSerializer.scala:87)
        org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:163)
        java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        java.lang.Thread.run(Thread.java:745)
{code}

Here are some occurrences of this bug reported on the mailing list and GitHub:

- https://www.mail-archive.com/user@spark.apache.org/msg12129.html
- http://mail-archives.apache.org/mod\_mbox/incubator-spark-user/201409.mbox/%3CCAEaWm8UOp9TGarm5scEpPZEy5qxO+H8hU8UjzaH5s-ajyzZB\_g@mail.gmail.com%3E
- https://github.com/yieldbot/flambo/issues/13
- https://www.mail-archive.com/user@spark.apache.org/msg13283.html

This is probably caused by throwing exceptions other than IOException from our custom {{readExternal}} methods (see http://grepcode.com/file/repository.grepcode.com/java/root/jdk/openjdk/7u40-b43/java/io/ObjectStreamClass.java#1022).  [~davies] spotted an instance of this in TorrentBroadcast, where a failed {{require}} throws a different exception, but this issue has been reported in Spark 1.1.0 as well.  To fix this, I'm going to add try-catch blocks around all of our {{readExternal}} and {{writeExternal}} methods to re-throw caught exceptions as IOException.

This fix should allow us to determine the actual exceptions that are causing deserialization failures.


---

* [SPARK-4078](https://issues.apache.org/jira/browse/SPARK-4078) | *Major* | **New FsPermission instance w/o FsPermission.createImmutable in eventlog**

By default, Spark builds its package against Hadoop 1.0.4 version. In that version, it has some FsPermission bug (see HADOOP-7629 by Todd Lipcon). This bug got fixed since 1.1 version. By using that FsPermission.createImmutable() API, end-user may see some RPC exception like below (if turn on eventlog over HDFS). 
{quote}
Exception in thread "main" java.io.IOException: Call to sr484/10.1.2.84:54310 failed on local exception: java.io.EOFException
        at org.apache.hadoop.ipc.Client.wrapException(Client.java:1150)
        at org.apache.hadoop.ipc.Client.call(Client.java:1118)
        at org.apache.hadoop.ipc.RPC$Invoker.invoke(RPC.java:229)
        at $Proxy6.setPermission(Unknown Source)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)
        at java.lang.reflect.Method.invoke(Method.java:597)
        at org.apache.hadoop.io.retry.RetryInvocationHandler.invokeMethod(RetryInvocationHandler.java:85)
        at org.apache.hadoop.io.retry.RetryInvocationHandler.invoke(RetryInvocationHandler.java:62)
        at $Proxy6.setPermission(Unknown Source)
        at org.apache.hadoop.hdfs.DFSClient.setPermission(DFSClient.java:1285)
        at org.apache.hadoop.hdfs.DistributedFileSystem.setPermission(DistributedFileSystem.java:572)
        at org.apache.spark.util.FileLogger.createLogDir(FileLogger.scala:138)
        at org.apache.spark.util.FileLogger.start(FileLogger.scala:115)
        at org.apache.spark.scheduler.EventLoggingListener.start(EventLoggingListener.scala:74)
        at org.apache.spark.SparkContext.<init>(SparkContext.scala:324)
{quote}


---

* [SPARK-4077](https://issues.apache.org/jira/browse/SPARK-4077) | *Major* | **A broken string timestamp value can Spark SQL return wrong values for valid string timestamp values**

The following case returns wrong results.
The text file is 
{code}
2014-12-11 00:00:00,1
2014-12-11astring00:00:00,2
{code}
The DDL statement and the query are shown below...
{code}
sql("""
create external table date\_test(my\_date timestamp, id int)
row format delimited
fields terminated by ','
lines terminated by '\n'
LOCATION 'dateTest'
""")
sql("select * from date\_test").collect.foreach(println)
{code}
The result is 
{code}
[1969-12-31 19:00:00.0,1]
[null,2]
{code}

If I change the data to 
{code}
2014-12-11 00:00:00,1
2014-12-11 00:00:00,2
{code}
The result is fine.

For the data with broken string timestamp value, I tried runSqlHive. The result is fine.


---

* [SPARK-4076](https://issues.apache.org/jira/browse/SPARK-4076) | *Minor* | **Parameter expansion in spark-config is wrong**

In sbin/spark-config.sh, parameter expansion is used to extract source root as follows.

{code}
this="${BASH\_SOURCE-$0}"
{code}

I think, the parameter expansion should be ":-" instead of "-".
If we use "-" and BASH\_SOURCE="", (empty character is set, not unset),
"" (empty character) is set to $this.


---

* [SPARK-4075](https://issues.apache.org/jira/browse/SPARK-4075) | *Minor* | **Jar url validation is not enough for Jar file**

In deploy.ClientArguments.isValidJarUrl, the url is checked as follows.

{code}
def isValidJarUrl(s: String): Boolean = s.matches("(.+):(.+)jar")
{code}

So, it allows like 'hdfs:file.jar' (no authority).


---

* [SPARK-4071](https://issues.apache.org/jira/browse/SPARK-4071) | *Major* | **Unroll fails silently if BlockManager size is small**

In tests, we may want to have BlockManagers of size < 1MB (spark.storage.unrollMemoryThreshold). However, these BlockManagers are useless because we can't unroll anything in them ever. At the very least we need to log a warning.


---

* [SPARK-4068](https://issues.apache.org/jira/browse/SPARK-4068) | *Critical* | **NPE in jsonRDD schema inference**

{code}
val jsonData = """{"data":[[null], [[["Test"]]]]}""" :: """{"other": ""}""" :: Nil
sqlContext.jsonRDD(sc.parallelize(jsonData))
{code}

{code}
org.apache.spark.SparkException: Job aborted due to stage failure: Task 13 in stage 5.0 failed 4 times, most recent failure: Lost task 13.3 in stage 5.0 (TID 347, ip-10-0-234-152.us-west-2.compute.internal): java.lang.NullPointerException: 
        org.apache.spark.sql.json.JsonRDD$$anonfun$org$apache$spark$sql$json$JsonRDD$$allKeysWithValueTypes$1.org$apache$spark$sql$json$JsonRDD$$anonfun$$buildKeyPathForInnerStructs$1(JsonRDD.scala:252)
        org.apache.spark.sql.json.JsonRDD$$anonfun$org$apache$spark$sql$json$JsonRDD$$allKeysWithValueTypes$1$$anonfun$org$apache$spark$sql$json$JsonRDD$$anonfun$$buildKeyPathForInnerStructs$1$3.apply(JsonRDD.scala:253)
        org.apache.spark.sql.json.JsonRDD$$anonfun$org$apache$spark$sql$json$JsonRDD$$allKeysWithValueTypes$1$$anonfun$org$apache$spark$sql$json$JsonRDD$$anonfun$$buildKeyPathForInnerStructs$1$3.apply(JsonRDD.scala:253)
        scala.collection.TraversableLike$$anonfun$flatMap$1.apply(TraversableLike.scala:251)
        scala.collection.TraversableLike$$anonfun$flatMap$1.apply(TraversableLike.scala:251)
        scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
        scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
        scala.collection.TraversableLike$class.flatMap(TraversableLike.scala:251)
        scala.collection.AbstractTraversable.flatMap(Traversable.scala:105)
...
{code}


---

* [SPARK-4067](https://issues.apache.org/jira/browse/SPARK-4067) | *Major* | **refactor ExecutorUncaughtExceptionHandler as a general one as it is used like this**

currently , we call Utils.tryOrExit everywhere

AppClient

Executor

TaskSchedulerImpl

It makes the name of ExecutorUncaughtExceptionHandler unfit to the real case....


---

* [SPARK-4065](https://issues.apache.org/jira/browse/SPARK-4065) | *Minor* | **pyspark will not use ipython on Windows**

pyspark2.cmd will not launch ipython, even if the environment variables are set. It doesn't check for the existence of ipython environment variables - in all cases, it will just launch python.


---

* [SPARK-4064](https://issues.apache.org/jira/browse/SPARK-4064) | *Critical* | **NioBlockTransferService should deal with empty messages correctly**

When I test [the PR 1983|https://github.com/apache/spark/pull/1983], The probability of a third, spark hangs


---

* [SPARK-4061](https://issues.apache.org/jira/browse/SPARK-4061) | *Major* | **We cannot use EOL character in the operand of LIKE predicate.**

We cannot use EOL character like \n or \r in the operand of LIKE predicate.
So following condition is never true.

{code}
-- someStr is 'hoge\nfuga'
where someStr LIKE 'hoge\_fuga'
{code}


---

* [SPARK-4060](https://issues.apache.org/jira/browse/SPARK-4060) | *Trivial* | **MLlib, exposing special rdd functions to the public**

I'm up to implementing algorithms using a sliding window.
The solution already exists in
/spark-mllib/src/main/scala/org/apache/spark/mllib/rdd/RDDFunctions.scala
but is not accessible due to a private[mllib] limitation.
I think exposing this part of the mllib to the public would be very helpfull because the functionality is also interessting for external developers.

This is my first Ticket at the Spark Jira. I hope my argumentation is clear.


---

* [SPARK-4058](https://issues.apache.org/jira/browse/SPARK-4058) | *Minor* | **Log file name is hard coded even though there is a variable '$LOG\_FILE '**

In a script 'python/run-tests', log file name is represented by a variable 'LOG\_FILE' and it is used in run-tests. But, there are some hard-coded log file name in the script.


---

* [SPARK-4055](https://issues.apache.org/jira/browse/SPARK-4055) | *Trivial* | **Inconsistent spelling 'MLlib' and 'MLLib'**

Thare are some inconsistent spellings 'MLlib' and 'MLLib' in some documents and source codes.


---

* [SPARK-4053](https://issues.apache.org/jira/browse/SPARK-4053) | *Minor* | **Block generator throttling in NetworkReceiverSuite is flaky**

In the unit test that checked whether blocks generated by throttled block generator had expected number of records, the thresholds are too tight, which sometimes led to the test failing.


---

* [SPARK-4052](https://issues.apache.org/jira/browse/SPARK-4052) | *Minor* | **Use scala.collection.Map for pattern matching instead of using Predef.Map (it is scala.collection.immutable.Map)**

Seems ScalaReflection and InsertIntoHiveTable only take scala.collection.immutable.Map as the value type of MapType. Here are test cases showing errors.
{code}
val sqlContext = new org.apache.spark.sql.hive.HiveContext(sc)
import sqlContext.createSchemaRDD
val rdd = sc.parallelize(("key", "value") :: Nil)

// Test1: This one fails.
case class Test1(m: scala.collection.Map[String, String])
val rddOfTest1 = rdd.map { case (k, v) => Test1(Map(k->v)) }
rddOfTest1.registerTempTable("t1")
/* Stack trace
scala.MatchError: scala.collection.Map[String,String] (of class scala.reflect.internal.Types$TypeRef$$anon$5)
	at org.apache.spark.sql.catalyst.ScalaReflection$.schemaFor(ScalaReflection.scala:53)
	at org.apache.spark.sql.catalyst.ScalaReflection$$anonfun$schemaFor$1.apply(ScalaReflection.scala:64)
	at org.apache.spark.sql.catalyst.ScalaReflection$$anonfun$schemaFor$1.apply(ScalaReflection.scala:62)
...
*/

// Test2: This one is fine.
case class Test2(m: scala.collection.immutable.Map[String, String])
val rddOfTest2 = rdd.map { case (k, v) => Test2(Map(k->v)) }
rddOfTest2.registerTempTable("t2")
sqlContext.sql("SELECT m FROM t2").collect
sqlContext.sql("SELECT m['key'] FROM t2").collect

// Test3: This one fails.
val schema = StructType(StructField("m", MapType(StringType, StringType), true) :: Nil)
val rowRDD = rdd.map { case (k, v) =>  Row(scala.collection.mutable.HashMap(k->v)) }
val schemaRDD = sqlContext.applySchema(rowRDD, schema)
schemaRDD.registerTempTable("t3")
sqlContext.sql("SELECT m FROM t3").collect
sqlContext.sql("SELECT m['key'] FROM t3").collect
sqlContext.sql("CREATE TABLE testHiveTable1(m MAP <STRING, STRING>)")
sqlContext.sql("INSERT OVERWRITE TABLE testHiveTable1 SELECT m FROM t3")
/* Stack trace
14/10/22 19:30:56 INFO DAGScheduler: Job 4 failed: runJob at InsertIntoHiveTable.scala:124, took 1.384579 s
org.apache.spark.SparkException: Job aborted due to stage failure: Task 1 in stage 4.0 failed 4 times, most recent failure: Lost task 1.3 in stage 4.0 (TID 12, yins-mbp): java.lang.ClassCastException: scala.collection.mutable.HashMap cannot be cast to scala.collection.immutable.Map
        org.apache.spark.sql.hive.execution.InsertIntoHiveTable$$anonfun$wrapperFor$5.apply(InsertIntoHiveTable.scala:96)
        org.apache.spark.sql.hive.execution.InsertIntoHiveTable$$anonfun$wrapperFor$5.apply(InsertIntoHiveTable.scala:96)
        org.apache.spark.sql.hive.execution.InsertIntoHiveTable$$anonfun$org$apache$spark$sql$hive$execution$InsertIntoHiveTable$$writeToFile$1$1.apply(InsertIntoHiveTable.scala:148)
        org.apache.spark.sql.hive.execution.InsertIntoHiveTable$$anonfun$org$apache$spark$sql$hive$execution$InsertIntoHiveTable$$writeToFile$1$1.apply(InsertIntoHiveTable.scala:145)
*/

// Test4: This one is fine.
val rowRDD = rdd.map { case (k, v) =>  Row(Map(k->v)) }
val schemaRDD = sqlContext.applySchema(rowRDD, schema)
schemaRDD.registerTempTable("t4")
sqlContext.sql("SELECT m FROM t4").collect
sqlContext.sql("SELECT m['key'] FROM t4").collect
sqlContext.sql("CREATE TABLE testHiveTable1(m MAP <STRING, STRING>)")
sqlContext.sql("INSERT OVERWRITE TABLE testHiveTable1 SELECT m FROM t4")
{code}


---

* [SPARK-4051](https://issues.apache.org/jira/browse/SPARK-4051) | *Major* | **Rows in python should support conversion to dictionary**

When working with the output of a query against a sqlContext, the result a Row object with fields accessible via dot notation rather than something similar to a dictionary.

The issue is that there are libraries (such as pandas and ggplot) that do not know how to operate on Rows but you can supply field names for the libraries to use. When the library attempts to use the row, it expects a data type like a dictionary, indexable using brackets and named field i.e. obj["fieldname"].


---

* [SPARK-4050](https://issues.apache.org/jira/browse/SPARK-4050) | *Blocker* | **Caching of temporary tables with projects fail when the final query projects fewer columns**

{code}
import sqlContext.\_
import org.apache.spark.sql.\_
val data = sc.parallelize(1 to 100, 10).map(i => (i, i)).sortByKey()
val data2: SchemaRDD = data.orderBy('\_1.asc).select('\_1)
data2.registerTempTable("data3")
table("data3")
sql("cache table data3")
{code}

{code}
// Note that a count(*) plan does not use the in-memory cached relation
​
sql("select count(*) from data3")
res2: org.apache.spark.sql.SchemaRDD = 
SchemaRDD[69] at RDD at SchemaRDD.scala:104
== Query Plan ==
== Physical Plan ==
Aggregate false, [], [SUM(PartialCount#17L) AS c\_0#15L]
 Exchange SinglePartition
  Aggregate true, [], [COUNT(1) AS PartialCount#17L]
   Project []
    Sort [\_1#2 ASC], true
     Exchange (RangePartitioning [\_1#2 ASC], 200)
      PhysicalRDD [\_1#2,\_2#3], MapPartitionsRDD[38] at mapPartitions at ExistingRDD.scala:37
{code}


---

* [SPARK-4047](https://issues.apache.org/jira/browse/SPARK-4047) | *Minor* | **Generate runtime warning for naive implementation examples for algorithms implemented in MLlib/graphx**

Based on SPARK-2434, we're generating runtime warnings to denote that the example implementation of algorithms were naive and a well implemented version is available in MLlib.  Here are list of examples that are related to algorithms implemented in MLlib and graphx.

1. LocalALS
2. LocalFileLR
3. LocalKMeans
4. LocalLR
5. SparkALS
6. SparkHdfsLR
7. SparkKMeans
8. SparkLR
9. SparkPageRank (*)
10. SparkTachyonHdfsLR (*)

Python examples:

1. ALS
2. kmeans
3. logistic\_regression
4. pagerank (*)

Java examples:

1. JavaHdfsLR (*)
2. JavaPageRank (*)

(*) - Examples with missing runtime warnings.

Also in few examples implementing LR, its currently pointing to org.apache.spark.mllib.classification.LogisticRegression instead of org.apache.spark.mllib.classification.LogisticRegressionModel


---

* [SPARK-4042](https://issues.apache.org/jira/browse/SPARK-4042) | *Major* | **append columns ids and names before broadcast**

appended columns ids and names will not broadcast because we append them after creating table reader. This leads to the config broadcasted to executor side dose not contain the configs of appended columns and names.


---

* [SPARK-4040](https://issues.apache.org/jira/browse/SPARK-4040) | *Major* | **Update spark documentation for local mode and spark-streaming.**

*Note:   this JIRA has changed since its inception - its not a bug, but something which can be tricky to surmise from existing docs.  So the attached patch is a doc improvement.*

Below is the original JIRA which was filed: 

Please note that Im somewhat new to spark streaming's API, and am not a spark expert - so I've done the best to write up and reproduce this "bug".  If its not a bug i hope an expert will help to explain why and promptly close it.  However, it appears it could be a bug after discussing with [~rnowling] who is a spark contributor.

CC [~rnowling] [~willbenton] 
 
It appears that in a DStream context, a call to   {{MappedRDD.count()}} blocks progress and prevents emission of RDDs from a stream.

{noformat}
    tweetStream.foreachRDD((rdd,lent)=> {
      tweetStream.repartition(1)
      //val count = rdd.count()  DONT DO THIS !
      checks += 1;
      if (checks > 20) {
        ssc.stop()
      }
   }
{noformat} 

The above code block should inevitably halt, after 20 intervals of RDDs... However, if we uncomment the call  to {{rdd.count()}}, it turns out that we get an infinite stream which emits no RDDs , and thus our program runs forever (ssc.stop is unreachable), because *forEach doesnt receive any more entries*.  

I suspect this is actually because the foreach block never completes, because {{count()}} is winds up calling {{compute}}, which ultimately just reads from the stream.

I havent put together a minimal reproducer or unit test yet, but I can work on doing so if more info is needed.

I guess this could be seen as an application bug - but i think spark might be made smarter to throw its hands up when people execute blocking code in a stream processor.


---

* [SPARK-4037](https://issues.apache.org/jira/browse/SPARK-4037) | *Blocker* | **NPE in JDBC server when calling SET**

{code}
SET spark.sql.shuffle.partitions=10;
{code}

{code}
14/10/21 18:00:47 ERROR server.SparkSQLOperationManager: Error executing query:
java.lang.NullPointerException
	at org.apache.spark.sql.hive.HiveContext.runHive(HiveContext.scala:309)
	at org.apache.spark.sql.hive.HiveContext.runSqlHive(HiveContext.scala:272)
	at org.apache.spark.sql.hive.HiveContext.setConf(HiveContext.scala:244)
	at org.apache.spark.sql.execution.SetCommand.sideEffectResult$lzycompute(commands.scala:64)
...
{code}


---

* [SPARK-4035](https://issues.apache.org/jira/browse/SPARK-4035) | *Trivial* | **Wrong format specifier in BlockerManager.scala**

Should not use "%f" for Long.


---

* [SPARK-4032](https://issues.apache.org/jira/browse/SPARK-4032) | *Blocker* | **Deprecate YARN alpha support in Spark 1.2**

When someone builds for yarn alpha, we should just display a warning like

{code}
***WARNING***: Support for YARN-alpha API's will be removed in Spark 1.3 (see SPARK-3445).
{code}

We can print a warning when the yarn-alpha profile is used:
http://stackoverflow.com/questions/3416573/how-can-i-display-a-message-in-maven


---

* [SPARK-4031](https://issues.apache.org/jira/browse/SPARK-4031) | *Major* | **Read broadcast variables on use**

This is a proposal to change the broadcast variable implementations in Spark to only read values when they are used rather than on deserializing.

This change will be very helpful (and in our use cases required) for complex applications which have a large number of broadcast variables. For example if broadcast variables are class members, they are captured in closures even when they are not used.

We could also consider cleaning closures more aggressively, but that might be a more complex change.


---

* [SPARK-4030](https://issues.apache.org/jira/browse/SPARK-4030) | *Major* | **`destroy` method in Broadcast should be public**

The destroy method in Broadcast.scala [https://github.com/apache/spark/blob/master/core/src/main/scala/org/apache/spark/broadcast/Broadcast.scala#L91] is right now marked as private[spark]

This prevents long-running applications from cleaning up memory used by broadcast variables on the driver.  Also as broadcast variables are always created with persistence MEMORY\_DISK, this slows down jobs when old broadcast variables are flushed to disk. 

Making `destroy` public can help applications control the lifetime.


---

* [SPARK-4029](https://issues.apache.org/jira/browse/SPARK-4029) | *Critical* | **Update streaming driver to reliably save and recover received block metadata on driver failures**

As part of the initiative of preventing data loss on driver failure, this JIRA tracks the sub task of modifying the streaming driver to reliably save received block metadata, and recover them on driver restart.


---

* [SPARK-4028](https://issues.apache.org/jira/browse/SPARK-4028) | *Critical* | **ReceivedBlockHandler interface to abstract the functionality of storage of received data**

As part of the initiative to prevent data loss on streaming driver failure, this JIRA tracks the subtask of implementing a ReceivedBlockHandler, that abstracts the functionality of storage of received data blocks. The default implementation will maintain the current behavior of storing the data into BlockManager. The optional implementation will store the data to both BlockManager as well as a write ahead log.


---

* [SPARK-4027](https://issues.apache.org/jira/browse/SPARK-4027) | *Critical* | **Write Ahead Log backed Block RDD**

As part of the initiative of preventing data loss on streaming driver failure, this sub-task implements a BlockRDD that is backed by HDFS. This BlockRDD can either read data from the Spark's BlockManager, or read the data from file-segments in HDFS.


---

* [SPARK-4026](https://issues.apache.org/jira/browse/SPARK-4026) | *Critical* | **Write ahead log management**

As part of the effort to avoid data loss on Spark Streaming driver failure, we want to implement a write ahead log that can write received data to HDFS. This allows the received data to be persist across driver failures. So when the streaming driver is restarted, it can find and reprocess all the data that were received but not processed.


---

* [SPARK-4023](https://issues.apache.org/jira/browse/SPARK-4023) | *Critical* | **PySpark's stat.Statistics is broken**

{code}
from pyspark.mllib.stat import Statistics
from pyspark.mllib.random import RandomRDDs
data = RandomRDDs.uniformVectorRDD(sc, 100000, 10, 10)
Statistics.colStats(data)
{code}

throws 

{code}

Py4JJavaError: An error occurred while calling o37.colStats.
: org.apache.spark.SparkException: Job aborted due to stage failure: Task 2 in stage 0.0 failed 1 times, most recent failure: Lost task 2.0 in stage 0.0 (TID 2, localhost): net.razorvine.pickle.PickleException: expected zero arguments for construction of ClassDict (for numpy.core.multiarray.\_reconstruct)
        net.razorvine.pickle.objects.ClassDictConstructor.construct(ClassDictConstructor.java:23)
        net.razorvine.pickle.Unpickler.load\_reduce(Unpickler.java:617)
        net.razorvine.pickle.Unpickler.dispatch(Unpickler.java:170)
        net.razorvine.pickle.Unpickler.load(Unpickler.java:84)
        net.razorvine.pickle.Unpickler.loads(Unpickler.java:97)
        org.apache.spark.mllib.api.python.SerDe$$anonfun$pythonToJava$1$$anonfun$apply$1.apply(PythonMLLibAPI.scala:695)
        org.apache.spark.mllib.api.python.SerDe$$anonfun$pythonToJava$1$$anonfun$apply$1.apply(PythonMLLibAPI.scala:694)
        scala.collection.Iterator$$anon$13.hasNext(Iterator.scala:371)
        scala.collection.Iterator$class.foreach(Iterator.scala:727)
        scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
        scala.collection.TraversableOnce$class.foldLeft(TraversableOnce.scala:144)
        scala.collection.AbstractIterator.foldLeft(Iterator.scala:1157)
        scala.collection.TraversableOnce$class.aggregate(TraversableOnce.scala:201)
        scala.collection.AbstractIterator.aggregate(Iterator.scala:1157)
        org.apache.spark.mllib.rdd.RDDFunctions$$anonfun$4.apply(RDDFunctions.scala:99)
        org.apache.spark.mllib.rdd.RDDFunctions$$anonfun$4.apply(RDDFunctions.scala:99)
        org.apache.spark.mllib.rdd.RDDFunctions$$anonfun$5.apply(RDDFunctions.scala:100)
        org.apache.spark.mllib.rdd.RDDFunctions$$anonfun$5.apply(RDDFunctions.scala:100)
        org.apache.spark.rdd.RDD$$anonfun$13.apply(RDD.scala:599)
        org.apache.spark.rdd.RDD$$anonfun$13.apply(RDD.scala:599)
        org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
        org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
        org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
        org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
        org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:68)
        org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:41)
        org.apache.spark.scheduler.Task.run(Task.scala:56)
        org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:181)
        java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        java.lang.Thread.run(Thread.java:744)
{code}


---

* [SPARK-4022](https://issues.apache.org/jira/browse/SPARK-4022) | *Critical* | **Replace colt dependency (LGPL) with commons-math**

The colt library we use is LGPL-licensed:
http://acs.lbl.gov/ACSSoftware/colt/license.html

We need to swap this out for commons-math. It is also a very old library that hasn't been updated since 2004.


---

* [SPARK-4020](https://issues.apache.org/jira/browse/SPARK-4020) | *Major* | **Failed executor not properly removed if it has not run tasks**

If an executor has not run tasks, then the DAG scheduler won't remove the block manager that belongs to this executor. This is because we don't add the executor to `activeExecutorIds` in `TaskSchedulerImpl` until we have successfully scheduled a task on the executor.

The motivation for fixing this is to avoid having the `BlockManagerMasterActor` to remove the associated block manager through a timeout when it can just do so right away.


---

* [SPARK-4019](https://issues.apache.org/jira/browse/SPARK-4019) | *Blocker* | **Shuffling with more than 2000 reducers may drop all data when partitons are mostly empty or cause deserialization errors if at least one partition is empty**

{code}
sc.makeRDD(0 until 10, 1000).repartition(2001).collect()
{code}

returns `Array()`.

1.1.0 doesn't have this issue. Tried both HASH and SORT manager.

This problem can also manifest itself as Snappy deserialization errors if the average map output status size is non-zero but there is at least one empty partition, e.g. 

sc.makeRDD(0 until 100000, 1000).repartition(2001).collect()


---

* [SPARK-4017](https://issues.apache.org/jira/browse/SPARK-4017) | *Major* | **Progress bar in console**

It will be nice to have a progress bar in console, then we could change the default logging level to WARN.

The progress bar should be in one line, could also be in the title of terminal.


---

* [SPARK-4016](https://issues.apache.org/jira/browse/SPARK-4016) | *Minor* | **Allow user to optionally show additional, advanced metrics in the UI**

Allowing the user to show/hide additional metrics will allow us to both (1) add more advanced metrics without cluttering the UI for the average user and (2) hide, by default, some of the metrics currently shown that are not widely used.


---

* [SPARK-4015](https://issues.apache.org/jira/browse/SPARK-4015) | *Trivial* | **Documentation in the streaming context references non-existent function**

The current streaming scaladoc/javadoc references context.awaitTransformation when it should be context.awaitTermination.


---

* [SPARK-4013](https://issues.apache.org/jira/browse/SPARK-4013) | *Major* | **Do not run multiple actor systems on each executor**

This causes many more error messages to be logged on the driver than necessary when an executor is disassociated. We shouldn't have two concurrently running actor systems anyway.


---

* [SPARK-4010](https://issues.apache.org/jira/browse/SPARK-4010) | *Blocker* | **Spark UI returns 500 in yarn-client mode**

http://host/proxy/application\_id/stages/   returns this result:
{noformat}
HTTP ERROR 500

Problem accessing /proxy/application\_1411648907638\_0281/stages/. Reason:

    Connection refused
Caused by:

java.net.ConnectException: Connection refused
	at java.net.PlainSocketImpl.socketConnect(Native Method)
	at java.net.AbstractPlainSocketImpl.doConnect(AbstractPlainSocketImpl.java:339)
	at java.net.AbstractPlainSocketImpl.connectToAddress(AbstractPlainSocketImpl.java:200)
	at java.net.AbstractPlainSocketImpl.connect(AbstractPlainSocketImpl.java:182)
	at java.net.SocksSocketImpl.connect(SocksSocketImpl.java:392)
	at java.net.Socket.connect(Socket.java:579)
	at java.net.Socket.connect(Socket.java:528)
	at java.net.Socket.<init>(Socket.java:425)
	at java.net.Socket.<init>(Socket.java:280)
	at org.apache.commons.httpclient.protocol.DefaultProtocolSocketFactory.createSocket(DefaultProtocolSocketFactory.java:80)
	at org.apache.commons.httpclient.protocol.DefaultProtocolSocketFactory.createSocket(DefaultProtocolSocketFactory.java:122)
	at org.apache.commons.httpclient.HttpConnection.open(HttpConnection.java:707)
	at org.apache.commons.httpclient.HttpMethodDirector.executeWithRetry(HttpMethodDirector.java:387)
	at org.apache.commons.httpclient.HttpMethodDirector.executeMethod(HttpMethodDirector.java:171)
	at org.apache.commons.httpclient.HttpClient.executeMethod(HttpClient.java:397)
	at org.apache.commons.httpclient.HttpClient.executeMethod(HttpClient.java:346)
	at org.apache.hadoop.yarn.server.webproxy.WebAppProxyServlet.proxyLink(WebAppProxyServlet.java:185)
	at org.apache.hadoop.yarn.server.webproxy.WebAppProxyServlet.doGet(WebAppProxyServlet.java:336)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:707)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:820)
	at org.mortbay.jetty.servlet.ServletHolder.handle(ServletHolder.java:511)
	at org.mortbay.jetty.servlet.ServletHandler$CachedChain.doFilter(ServletHandler.java:1221)
	at com.google.inject.servlet.FilterChainInvocation.doFilter(FilterChainInvocation.java:66)
	at com.sun.jersey.spi.container.servlet.ServletContainer.doFilter(ServletContainer.java:900)
	at com.sun.jersey.spi.container.servlet.ServletContainer.doFilter(ServletContainer.java:834)
	at com.sun.jersey.spi.container.servlet.ServletContainer.doFilter(ServletContainer.java:795)
	at com.google.inject.servlet.FilterDefinition.doFilter(FilterDefinition.java:163)
	at com.google.inject.servlet.FilterChainInvocation.doFilter(FilterChainInvocation.java:58)
	at com.google.inject.servlet.ManagedFilterPipeline.dispatch(ManagedFilterPipeline.java:118)
	at com.google.inject.servlet.GuiceFilter.doFilter(GuiceFilter.java:113)
	at org.mortbay.jetty.servlet.ServletHandler$CachedChain.doFilter(ServletHandler.java:1212)
	at org.apache.hadoop.http.lib.StaticUserWebFilter$StaticUserFilter.doFilter(StaticUserWebFilter.java:109)
	at org.mortbay.jetty.servlet.ServletHandler$CachedChain.doFilter(ServletHandler.java:1212)
	at org.apache.hadoop.http.HttpServer2$QuotingInputFilter.doFilter(HttpServer2.java:1183)
	at org.mortbay.jetty.servlet.ServletHandler$CachedChain.doFilter(ServletHandler.java:1212)
	at org.apache.hadoop.http.NoCacheFilter.doFilter(NoCacheFilter.java:45)
	at org.mortbay.jetty.servlet.ServletHandler$CachedChain.doFilter(ServletHandler.java:1212)
	at org.apache.hadoop.http.NoCacheFilter.doFilter(NoCacheFilter.java:45)
	at org.mortbay.jetty.servlet.ServletHandler$CachedChain.doFilter(ServletHandler.java:1212)
	at org.mortbay.jetty.servlet.ServletHandler.handle(ServletHandler.java:399)
	at org.mortbay.jetty.security.SecurityHandler.handle(SecurityHandler.java:216)
	at org.mortbay.jetty.servlet.SessionHandler.handle(SessionHandler.java:182)
	at org.mortbay.jetty.handler.ContextHandler.handle(ContextHandler.java:766)
	at org.mortbay.jetty.webapp.WebAppContext.handle(WebAppContext.java:450)
	at org.mortbay.jetty.handler.ContextHandlerCollection.handle(ContextHandlerCollection.java:230)
	at org.mortbay.jetty.handler.HandlerWrapper.handle(HandlerWrapper.java:152)
	at org.mortbay.jetty.Server.handle(Server.java:326)
	at org.mortbay.jetty.HttpConnection.handleRequest(HttpConnection.java:542)
	at org.mortbay.jetty.HttpConnection$RequestHandler.headerComplete(HttpConnection.java:928)
	at org.mortbay.jetty.HttpParser.parseNext(HttpParser.java:549)
	at org.mortbay.jetty.HttpParser.parseAvailable(HttpParser.java:212)
	at org.mortbay.jetty.HttpConnection.handle(HttpConnection.java:404)
	at org.mortbay.io.nio.SelectChannelEndPoint.run(SelectChannelEndPoint.java:410)
	at org.mortbay.thread.QueuedThreadPool$PoolThread.run(QueuedThreadPool.java:582)
Powered by Jetty://

{noformat}


---

* [SPARK-4008](https://issues.apache.org/jira/browse/SPARK-4008) | *Minor* | **Fix "kryo with fold" in KryoSerializerSuite**

"kryo with fold" in KryoSerializerSuite is disabled now. It can be fixed by changing the zeroValue


---

* [SPARK-4006](https://issues.apache.org/jira/browse/SPARK-4006) | *Critical* | **Spark Driver crashes whenever an Executor is registered twice**

This is a huge robustness issue for us (Taboola), in mission critical , time sensitive (real time) spark jobs.

We have long running spark drivers and even though we have state of the art hardware, from time to time executors disconnect. In many cases, the RemoveExecutor is not received, and when the new executor registers, the driver crashes. In mesos coarse grained, executor ids are fixed. 

The issue is with the System.exit(1) in BlockManagerMasterActor

{code}
private def register(id: BlockManagerId, maxMemSize: Long, slaveActor: ActorRef) {
    if (!blockManagerInfo.contains(id)) {
      blockManagerIdByExecutor.get(id.executorId) match {
        case Some(manager) =>
          // A block manager of the same executor already exists.
          // This should never happen. Let's just quit.
          logError("Got two different block manager registrations on " + id.executorId)
          System.exit(1)
        case None =>
          blockManagerIdByExecutor(id.executorId) = id
      }

      logInfo("Registering block manager %s with %s RAM".format(
        id.hostPort, Utils.bytesToString(maxMemSize)))

      blockManagerInfo(id) =
        new BlockManagerInfo(id, System.currentTimeMillis(), maxMemSize, slaveActor)
    }
    listenerBus.post(SparkListenerBlockManagerAdded(id, maxMemSize))
  }
{code}


---

* [SPARK-4003](https://issues.apache.org/jira/browse/SPARK-4003) | *Major* | **Add {Big Decimal, Timestamp, Date} types to Java SqlContext**

in JavaSqlContext, we need to let java program use big decimal, timestamp, date types.


---

* [SPARK-4000](https://issues.apache.org/jira/browse/SPARK-4000) | *Major* | **Gathers unit tests logs to Jenkins master at the end of a Jenkins build**

Unit tests logs can be useful for debugging Jenkins failures. Currently these logs are deleted together with the build directory. We can scp the archived logs to the build history directory in Jenkins master, and then serve them via HTTP.


---

* [SPARK-3997](https://issues.apache.org/jira/browse/SPARK-3997) | *Major* | **scalastyle should output the error location**

{{./dev/scalastyle}} =>
{noformat}
Scalastyle checks failed at following occurrences:
java.lang.RuntimeException: exists error
	at scala.sys.package$.error(package.scala:27)
	at scala.Predef$.error(Predef.scala:142)
[error] (mllib/*:scalastyle) exists error
{noformat}

scalastyle should output the error location:
{noformat}
[error] /Users/witgo/work/code/java/spark/mllib/src/main/scala/org/apache/spark/mllib/feature/TopicModeling.scala:413: File line length exceeds 100 characters
{noformat}


---

* [SPARK-3995](https://issues.apache.org/jira/browse/SPARK-3995) | *Critical* | **[PYSPARK] PySpark's sample methods do not work with NumPy 1.9**

There is a breaking bug in PySpark's sampling methods when run with NumPy v1.9. This is the version of NumPy included with the current Anaconda distribution (v2.1); this is a popular distribution, and is likely to affect many users.

Steps to reproduce are:

{code:python}
foo = sc.parallelize(range(1000),5)
foo.takeSample(False, 10)
{code}

Returns:

{code}
PythonException: Traceback (most recent call last):
  File "/Users/freemanj11/code/spark-1.1.0-bin-hadoop1/python/pyspark/worker.py", line 79, in main
    serializer.dump\_stream(func(split\_index, iterator), outfile)
  File "/Users/freemanj11/code/spark-1.1.0-bin-hadoop1/python/pyspark/serializers.py", line 196, in dump\_stream
    self.serializer.dump\_stream(self.\_batched(iterator), stream)
  File "/Users/freemanj11/code/spark-1.1.0-bin-hadoop1/python/pyspark/serializers.py", line 127, in dump\_stream
    for obj in iterator:
  File "/Users/freemanj11/code/spark-1.1.0-bin-hadoop1/python/pyspark/serializers.py", line 185, in \_batched
    for item in iterator:
  File "/Users/freemanj11/code/spark-1.1.0-bin-hadoop1/python/pyspark/rddsampler.py", line 116, in func
    if self.getUniformSample(split) <= self.\_fraction:
  File "/Users/freemanj11/code/spark-1.1.0-bin-hadoop1/python/pyspark/rddsampler.py", line 58, in getUniformSample
    self.initRandomGenerator(split)
  File "/Users/freemanj11/code/spark-1.1.0-bin-hadoop1/python/pyspark/rddsampler.py", line 44, in initRandomGenerator
    self.\_random = numpy.random.RandomState(self.\_seed)
  File "mtrand.pyx", line 610, in mtrand.RandomState.\_\_init\_\_ (numpy/random/mtrand/mtrand.c:7397)
  File "mtrand.pyx", line 646, in mtrand.RandomState.seed (numpy/random/mtrand/mtrand.c:7697)
ValueError: Seed must be between 0 and 4294967295
{code}

In PySpark's {{RDDSamplerBase}} class from {{pyspark.rddsampler}} we use:

{code:python}
self.\_seed = seed if seed is not None else random.randint(0, sys.maxint)
{code}

In previous versions of NumPy a random seed larger than 2 ** 32 would silently get truncated to 2 ** 32. This was fixed in a recent patch (https://github.com/numpy/numpy/commit/6b1a1205eac6fe5d162f16155d500765e8bca53c). But sampling {{(0, sys.maxint)}} often yields ints larger than 2 ** 32, which effectively breaks sampling operations in PySpark (unless the seed is set manually).

I am putting a PR together now (the fix is very simple!).


---

* [SPARK-3994](https://issues.apache.org/jira/browse/SPARK-3994) | *Major* | **countByKey / countByValue do not go through Aggregator**

The implementations of these methods are historical remnants of Spark from a time when the shuffle may have been nonexistent. Now, they can be simplified by plugging into reduceByKey(), potentially seeing performance and stability improvements.


---

* [SPARK-3993](https://issues.apache.org/jira/browse/SPARK-3993) | *Blocker* | **python worker may hang after reused from take()**

After take(), maybe there are some garbage left in the socket, then next task assigned to this worker will hang because of corrupted data.

We should make sure the socket is clean before reuse it.


---

* [SPARK-3990](https://issues.apache.org/jira/browse/SPARK-3990) | *Critical* | **kryo.KryoException caused by ALS.trainImplicit in pyspark**

When we tried ALS.trainImplicit() in pyspark environment, it only works for iterations = 1. What is more strange, it is that if we try the same code in Scala, it works very well.(I did several test, by now, in Scala ALS.trainImplicit works)

For example, the following code:
{code:title=test.py|borderStyle=solid}
  from pyspark.mllib.recommendation import *
  r1 = (1, 1, 1.0) 
  r2 = (1, 2, 2.0) 
  r3 = (2, 1, 2.0) 
  ratings = sc.parallelize([r1, r2, r3]) 
  model = ALS.trainImplicit(ratings, 1) 
'''by default iterations = 5 or model = ALS.trainImplicit(ratings, 1, 2)'''
{code}


It will cause the failed stage at count at ALS.scala:314 Info as:
{code:title=error information provided by ganglia}
Job aborted due to stage failure: Task 6 in stage 90.0 failed 4 times, most recent failure: Lost task 6.3 in stage 90.0 (TID 484, ip-172-31-35-238.ec2.internal): com.esotericsoftware.kryo.KryoException: java.lang.ArrayStoreException: scala.collection.mutable.HashSet
Serialization trace:
shouldSend (org.apache.spark.mllib.recommendation.OutLinkBlock)
        com.esotericsoftware.kryo.serializers.FieldSerializer$ObjectField.read(FieldSerializer.java:626)
        com.esotericsoftware.kryo.serializers.FieldSerializer.read(FieldSerializer.java:221)
        com.esotericsoftware.kryo.Kryo.readClassAndObject(Kryo.java:729)
        com.twitter.chill.Tuple2Serializer.read(TupleSerializers.scala:43)
        com.twitter.chill.Tuple2Serializer.read(TupleSerializers.scala:34)
        com.esotericsoftware.kryo.Kryo.readClassAndObject(Kryo.java:729)
        org.apache.spark.serializer.KryoDeserializationStream.readObject(KryoSerializer.scala:133)
        org.apache.spark.serializer.DeserializationStream$$anon$1.getNext(Serializer.scala:133)
        org.apache.spark.util.NextIterator.hasNext(NextIterator.scala:71)
        org.apache.spark.InterruptibleIterator.hasNext(InterruptibleIterator.scala:39)
        scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
        org.apache.spark.util.collection.ExternalAppendOnlyMap.insertAll(ExternalAppendOnlyMap.scala:137)
        org.apache.spark.rdd.CoGroupedRDD$$anonfun$compute$5.apply(CoGroupedRDD.scala:159)
        org.apache.spark.rdd.CoGroupedRDD$$anonfun$compute$5.apply(CoGroupedRDD.scala:158)
        scala.collection.TraversableLike$WithFilter$$anonfun$foreach$1.apply(TraversableLike.scala:772)
        scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
        scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
        scala.collection.TraversableLike$WithFilter.foreach(TraversableLike.scala:771)
        org.apache.spark.rdd.CoGroupedRDD.compute(CoGroupedRDD.scala:158)
        org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
        org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
        org.apache.spark.rdd.MappedValuesRDD.compute(MappedValuesRDD.scala:31)
        org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
        org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
        org.apache.spark.rdd.FlatMappedValuesRDD.compute(FlatMappedValuesRDD.scala:31)
        org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
        org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
        org.apache.spark.rdd.FlatMappedRDD.compute(FlatMappedRDD.scala:33)
        org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
        org.apache.spark.CacheManager.getOrCompute(CacheManager.scala:61)
        org.apache.spark.rdd.RDD.iterator(RDD.scala:227)
        org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:62)
        org.apache.spark.scheduler.Task.run(Task.scala:54)
        org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:177)
        java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        java.lang.Thread.run(Thread.java:745)
Driver stacktrace:
{code}
In the log of slave which failed the task, it has:

{code:title=error information in the log of slave}
14/10/17 13:20:54 ERROR executor.Executor: Exception in task 6.0 in stage 90.0 (TID 465)
com.esotericsoftware.kryo.KryoException: java.lang.ArrayStoreException: scala.collection.mutable.HashSet
Serialization trace:
shouldSend (org.apache.spark.mllib.recommendation.OutLinkBlock)
	at com.esotericsoftware.kryo.serializers.FieldSerializer$ObjectField.read(FieldSerializer.java:626)
	at com.esotericsoftware.kryo.serializers.FieldSerializer.read(FieldSerializer.java:221)
	at com.esotericsoftware.kryo.Kryo.readClassAndObject(Kryo.java:729)
	at com.twitter.chill.Tuple2Serializer.read(TupleSerializers.scala:43)
	at com.twitter.chill.Tuple2Serializer.read(TupleSerializers.scala:34)
	at com.esotericsoftware.kryo.Kryo.readClassAndObject(Kryo.java:729)
	at org.apache.spark.serializer.KryoDeserializationStream.readObject(KryoSerializer.scala:133)
	at org.apache.spark.serializer.DeserializationStream$$anon$1.getNext(Serializer.scala:133)
	at org.apache.spark.util.NextIterator.hasNext(NextIterator.scala:71)
	at org.apache.spark.InterruptibleIterator.hasNext(InterruptibleIterator.scala:39)
	at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
	at org.apache.spark.util.collection.ExternalAppendOnlyMap.insertAll(ExternalAppendOnlyMap.scala:137)
	at org.apache.spark.rdd.CoGroupedRDD$$anonfun$compute$5.apply(CoGroupedRDD.scala:159)
	at org.apache.spark.rdd.CoGroupedRDD$$anonfun$compute$5.apply(CoGroupedRDD.scala:158)
	at scala.collection.TraversableLike$WithFilter$$anonfun$foreach$1.apply(TraversableLike.scala:772)
	at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
	at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
	at scala.collection.TraversableLike$WithFilter.foreach(TraversableLike.scala:771)
	at org.apache.spark.rdd.CoGroupedRDD.compute(CoGroupedRDD.scala:158)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
	at org.apache.spark.rdd.MappedValuesRDD.compute(MappedValuesRDD.scala:31)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
	at org.apache.spark.rdd.FlatMappedValuesRDD.compute(FlatMappedValuesRDD.scala:31)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
	at org.apache.spark.rdd.FlatMappedRDD.compute(FlatMappedRDD.scala:33)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
	at org.apache.spark.CacheManager.getOrCompute(CacheManager.scala:61)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:227)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:62)
	at org.apache.spark.scheduler.Task.run(Task.scala:54)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:177)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
Caused by: java.lang.ArrayStoreException: scala.collection.mutable.HashSet
	at com.esotericsoftware.kryo.serializers.DefaultArraySerializers$ObjectArraySerializer.read(DefaultArraySerializers.java:338)
	at com.esotericsoftware.kryo.serializers.DefaultArraySerializers$ObjectArraySerializer.read(DefaultArraySerializers.java:293)
	at com.esotericsoftware.kryo.Kryo.readObject(Kryo.java:648)
	at com.esotericsoftware.kryo.serializers.FieldSerializer$ObjectField.read(FieldSerializer.java:605)
	... 36 more
{code}


---

* [SPARK-3988](https://issues.apache.org/jira/browse/SPARK-3988) | *Minor* | **Public API for DateType support**

add Python API and something else.


---

* [SPARK-3987](https://issues.apache.org/jira/browse/SPARK-3987) | *Major* | **NNLS generates incorrect result**

Hi,

Please see the example gram matrix and linear term:

val P2 = new DoubleMatrix(20, 20, 333907.312770, -60814.043975, 207935.829941, -162881.367739, -43730.396770, 17511.428983, -243340.496449, -225245.957922, 104700.445881, 32430.845099, 336378.693135, -373497.970207, -41147.159621, 53928.060360, -293517.883778, 53105.278068, 0.000000, -85257.781696, 84913.970469, -10584.080103, -60814.043975, 13826.806664, -38032.612640, 33475.833875, 10791.916809, -1040.950810, 48106.552472, 45390.073380, -16310.282190, -2861.455903, -60790.833191, 73109.516544, 9826.614644, -8283.992464, 56991.742991, -6171.366034, 0.000000, 19152.382499, -13218.721710, 2793.734234, 207935.829941, -38032.612640, 129661.677608, -101682.098412, -27401.299347, 10787.713362, -151803.006149, -140563.601672, 65067.935324, 20031.263383, 209521.268600, -232958.054688, -25764.179034, 33507.951918, -183046.845592, 32884.782835, 0.000000, -53315.811196, 52770.762546, -6642.187643, -162881.367739, 33475.833875, -101682.098412, 85094.407608, 25422.850782, -5437.646141, 124197.166330, 116206.265909, -47093.484134, -11420.168521, -163429.436848, 189574.783900, 23447.172314, -24087.375367, 148311.355507, -20848.385466, 0.000000, 46835.814559, -38180.352878, 6415.873901, -43730.396770, 10791.916809, -27401.299347, 25422.850782, 8882.869799, 15.638084, 35933.473986, 34186.371325, -10745.330690, -974.314375, -43537.709621, 54371.010558, 7894.453004, -5408.929644, 42231.381747, -3192.010574, 0.000000, 15058.753110, -8704.757256, 2316.581535, 17511.428983, -1040.950810, 10787.713362, -5437.646141, 15.638084, 2794.949847, -9681.950987, -8258.171646, 7754.358930, 4193.359412, 18052.143842, -15456.096769, -253.356253, 4089.672804, -12524.380088, 5651.579348, 0.000000, -1513.302547, 6296.461898, 152.427321, -243340.496449, 48106.552472, -151803.006149, 124197.166330, 35933.473986, -9681.950987, 182931.600236, 170454.352953, -72361.174145, -19270.461728, -244518.179729, 279551.060579, 33340.452802, -37103.267653, 219025.288975, -33687.141423, 0.000000, 67347.950443, -58673.009647, 8957.800259, -225245.957922, 45390.073380, -140563.601672, 116206.265909, 34186.371325, -8258.171646, 170454.352953, 159322.942894, -66074.960534, -16839.743193, -226173.967766, 260421.044094, 31624.194003, -33839.612565, 203889.695169, -30034.828909, 0.000000, 63525.040745, -53572.741748, 8575.071847, 104700.445881, -16310.282190, 65067.935324, -47093.484134, -10745.330690, 7754.358930, -72361.174145, -66074.960534, 35869.598076, 13378.653317, 106033.647837, -111831.682883, -10455.465743, 18537.392481, -88370.612394, 20344.288488, 0.000000, -22935.482766, 29004.543704, -2409.461759, 32430.845099, -2861.455903, 20031.263383, -11420.168521, -974.314375, 4193.359412, -19270.461728, -16839.743193, 13378.653317, 6802.081898, 33256.395091, -30421.985199, -1296.785870, 7026.518692, -24443.378205, 9221.982599, 0.000000, -4088.076871, 10861.014242, -25.092938, 336378.693135, -60790.833191, 209521.268600, -163429.436848, -43537.709621, 18052.143842, -244518.179729, -226173.967766, 106033.647837, 33256.395091, 339200.268106, -375442.716811, -41027.594509, 54636.778527, -295133.248586, 54177.278365, 0.000000, -85237.666701, 85996.957056, -10503.209968, -373497.970207, 73109.516544, -232958.054688, 189574.783900, 54371.010558, -15456.096769, 279551.060579, 260421.044094, -111831.682883, -30421.985199, -375442.716811, 427793.208465, 50528.074431, -57375.986301, 335203.382015, -52676.385869, 0.000000, 102368.307670, -90679.792485, 13509.390393, -41147.159621, 9826.614644, -25764.179034, 23447.172314, 7894.453004, -253.356253, 33340.452802, 31624.194003, -10455.465743, -1296.785870, -41027.594509, 50528.074431, 7255.977434, -5281.636812, 39298.355527, -3440.450858, 0.000000, 13717.870243, -8471.405582, 2071.812204, 53928.060360, -8283.992464, 33507.951918, -24087.375367, -5408.929644, 4089.672804, -37103.267653, -33839.612565, 18537.392481, 7026.518692, 54636.778527, -57375.986301, -5281.636812, 9735.061160, -45360.674033, 10634.633559, 0.000000, -11652.364691, 15039.566630, -1202.539106, -293517.883778, 56991.742991, -183046.845592, 148311.355507, 42231.381747, -12524.380088, 219025.288975, 203889.695169, -88370.612394, -24443.378205, -295133.248586, 335203.382015, 39298.355527, -45360.674033, 262923.925938, -42012.606885, 0.000000, 79810.919951, -71657.856143, 10464.327491, 53105.278068, -6171.366034, 32884.782835, -20848.385466, -3192.010574, 5651.579348, -33687.141423, -30034.828909, 20344.288488, 9221.982599, 54177.278365, -52676.385869, -3440.450858, 10634.633559, -42012.606885, 13238.686902, 0.000000, -8739.845698, 16511.872845, -530.252003, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 118.430000, 0.000000, 0.000000, 0.000000, -85257.781696, 19152.382499, -53315.811196, 46835.814559, 15058.753110, -1513.302547, 67347.950443, 63525.040745, -22935.482766, -4088.076871, -85237.666701, 102368.307670, 13717.870243, -11652.364691, 79810.919951, -8739.845698, 0.000000, 26878.133950, -18588.407734, 3894.934299, 84913.970469, -13218.721710, 52770.762546, -38180.352878, -8704.757256, 6296.461898, -58673.009647, -53572.741748, 29004.543704, 10861.014242, 85996.957056, -90679.792485, -8471.405582, 15039.566630, -71657.856143, 16511.872845, 0.000000, -18588.407734, 23649.538538, -1951.083671, -10584.080103, 2793.734234, -6642.187643, 6415.873901, 2316.581535, 152.427321, 8957.800259, 8575.071847, -2409.461759, -25.092938, -10503.209968, 13509.390393, 2071.812204, -1202.539106, 10464.327491, -530.252003, 0.000000, 3894.934299, -1951.083671, 738.955915)
    val q2 = new DoubleMatrix(20, 1, 31755.057100, -13047.148129, 20191.244430, -25993.775800, -11963.550172, -4272.425977, -33569.856044, -33451.387021, 2320.764250, -5333.136834, 30633.764272, -49513.939049, -10351.230305, 872.276714, -37634.078430, -4628.338543, -0.000000, -18109.093788, 1856.725521, -3397.693211)

NNLS result:

0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0

PR result: https://github.com/apache/spark/pull/2705

QuadraticMinimizer result [0.130104; 0.126840; 0.072565; 0.154153; 0.144728; 0.129937; 0.121166; 0.161450; 0.199197; 0.187168; 0.159467; 0.144269; 0.117404; 0.109298; 0.086901; 0.221391; 0.000000; 0.174044; 0.162080; 0.045439]

Octave result:
octave:7> qp(x0, H, f, [], [], lb, ub)
ans =
   0.13010
   0.12684
   0.07256
   0.15415
   0.14473
   0.12994
   0.12117
   0.16145
   0.19920
   0.18717
   0.15947
   0.14427
   0.11740
   0.10930
   0.08690
   0.22139
   0.00000
   0.17404
   0.16208
   0.04544


---

* [SPARK-3986](https://issues.apache.org/jira/browse/SPARK-3986) | *Minor* | **Fix package names to fit their directory names.**

Package names of 2 test suites are different from their directory names.

- {{GeneratedEvaluationSuite}}
- {{GeneratedMutableEvaluationSuite}}


---

* [SPARK-3985](https://issues.apache.org/jira/browse/SPARK-3985) | *Minor* | **json file path is not right**

in examples/src/main/python/sql.py, we just add SPARK\_HOME and "examples/..." together instead of using "os.path.join", would cause a problem.


---

* [SPARK-3984](https://issues.apache.org/jira/browse/SPARK-3984) | *Major* | **Display task deserialization time in the UI**

Right now, the UI does not display the time to deserialize the task, which can be significant when running short jobs (e.g., ML).

cc [~sparks] [~shivaram]


---

* [SPARK-3983](https://issues.apache.org/jira/browse/SPARK-3983) | *Major* | **Scheduler delay (shown in the UI) is incorrect**

The reported scheduler delay includes time to get a new thread (from a threadpool) in order to start the task, time to deserialize the task, and time to serialize the result.  None of these things are delay caused by the scheduler; including them as such is misleading.

This is especially problematic when debugging performance of short tasks (that run in 10s of milliseconds), when the scheduler delay can be very large relative to the task duration.

cc [~sparks] [~shivaram]


---

* [SPARK-3979](https://issues.apache.org/jira/browse/SPARK-3979) | *Minor* | **Yarn backend's default file replication should match HDFS's default one**

This code in ClientBase.scala sets the replication used for files uploaded to HDFS:

{code}
    val replication = sparkConf.getInt("spark.yarn.submit.file.replication", 3).toShort
{code}

Instead of a hardcoded "3" (which is the default value for HDFS), it should be using the default value from the HDFS conf ("dfs.replication").


---

* [SPARK-3973](https://issues.apache.org/jira/browse/SPARK-3973) | *Minor* | **Print callSite information for broadcast variables**

Printing call site information for broadcast variables will help in debugging which variables are used, when they are used etc.


---

* [SPARK-3971](https://issues.apache.org/jira/browse/SPARK-3971) | *Blocker* | **Failed to deserialize Vector in cluster mode**

The serialization of Vector/Rating did not work in cluster mode, because the initializer is not called in executor.


---

* [SPARK-3970](https://issues.apache.org/jira/browse/SPARK-3970) | *Major* | **Remove duplicate removal of local dirs**

The shutdown hook of DiskBlockManager would remove localDirs. So do not need to register them with Utils.registerShutdownDeleteDir. It causes duplicate removal of these local dirs and corresponding exceptions.


---

* [SPARK-3969](https://issues.apache.org/jira/browse/SPARK-3969) | *Major* | **Optimizer should have a super class as an interface.**

Some developers want to replace {{Optimizer}} to fit their projects but can't do so because currently {{Optimizer}} is an {{object}}.


---

* [SPARK-3968](https://issues.apache.org/jira/browse/SPARK-3968) | *Minor* | **Use parquet-mr filter2 api in spark sql**

The parquet-mr project has introduced a new filter api , along with several fixes (like filtering on optional fields) . It can also eliminate entire RowGroups depending on certain statistics like min/max
We can leverage that to further improve performance of queries with filters.
Also filter2 api introduces ability to create custom filters. We can create a custom filter for the optimized In clause (InSet) , so that elimination happens in the ParquetRecordReader itself (will create a separate ticket for that) .

This fixes the below ticket : 

https://issues.apache.org/jira/browse/SPARK-1847


---

* [SPARK-3967](https://issues.apache.org/jira/browse/SPARK-3967) | *Major* | **Spark applications fail in yarn-cluster mode when the directories configured in yarn.nodemanager.local-dirs are located on different disks/partitions**

Spark applications fail from time to time in yarn-cluster mode (but not in yarn-client mode) when yarn.nodemanager.local-dirs (Hadoop YARN config) is set to a comma-separated list of directories which are located on different disks/partitions.

Steps to reproduce:
1. Set yarn.nodemanager.local-dirs (in yarn-site.xml) to a list of directories located on different partitions (the more you set, the more likely it will be to reproduce the bug):
(...)
<property>
  <name>yarn.nodemanager.local-dirs</name>
  <value>file:/d1/yarn/local/nm-local-dir,file:/d2/yarn/local/nm-local-dir,file:/d3/yarn/local/nm-local-dir,file:/d4/yarn/local/nm-local-dir,file:/d5/yarn/local/nm-local-dir,file:/d6/yarn/local/nm-local-dir,file:/d7/yarn/local/nm-local-dir</value>
</property>
(...)
2. Launch (several times) an application in yarn-cluster mode, it will fail (apparently randomly) from time to time


---

* [SPARK-3964](https://issues.apache.org/jira/browse/SPARK-3964) | *Major* | **Python API for Hypothesis testing**

Python API for Hypothesis testing


---

* [SPARK-3962](https://issues.apache.org/jira/browse/SPARK-3962) | *Blocker* | **Mark spark dependency as "provided" in external libraries**

Right now there is not an easy way for users to link against the external streaming libraries and not accidentally pull Spark into their assembly jar. We should mark Spark as "provided" in the external connector pom's so that user applications can simply include those like any other dependency in the user's jar.

This is also the best format for third-party libraries that depend on Spark (of which there will eventually be many) so it would be nice for our own build to conform to this nicely.


---

* [SPARK-3961](https://issues.apache.org/jira/browse/SPARK-3961) | *Major* | **Python API for mllib.feature**

Add completed API for mllib.feature


---

* [SPARK-3960](https://issues.apache.org/jira/browse/SPARK-3960) | *Critical* | **We can apply unary minus only to literal.**

Because of the wrong syntax definition, we cannot apply unary minus only to literal. So, we cannot write such expressions.

{code}
-(value1 + value2) // Parenthesized expressions
-column // Columns
-MAX(column) // Functions
{code}


---

* [SPARK-3959](https://issues.apache.org/jira/browse/SPARK-3959) | *Critical* | **SqlParser fails to parse literal -9223372036854775808 (Long.MinValue).**

SqlParser fails to parse -9223372036854775808 (Long.MinValue) so we cannot write queries such like as follows.

{code}
SELECT value FROM someTable WHERE value > -9223372036854775808
{code}


---

* [SPARK-3954](https://issues.apache.org/jira/browse/SPARK-3954) | *Major* | **Optimization to FileInputDStream**

about convert files to RDDS there are 3 loops with files sequence in spark source.
loops files sequence:
1.files.map(...)
2.files.zip(fileRDDs)
3.files-size.foreach
modiy 3 recursions  to 1 recursion.

spark source code:
  private def filesToRDD(files: Seq[String]): RDD[(K, V)] = {
    val fileRDDs = files.map(file => context.sparkContext.newAPIHadoopFile[K, V, F](file))
    files.zip(fileRDDs).foreach { case (file, rdd) => {
      if (rdd.partitions.size == 0) {
        logError("File " + file + " has no data in it. Spark Streaming can only ingest " +
          "files that have been \"moved\" to the directory assigned to the file stream. " +
          "Refer to the streaming programming guide for more details.")
      }
    }}
    new UnionRDD(context.sparkContext, fileRDDs)
  }
// -----------------------------------------------------------------------------------
modified code:
  private def filesToRDD(files: Seq[String]): RDD[(K, V)] = {
    val fileRDDs = for (file <- files; rdd = context.sparkContext.newAPIHadoopFile[K, V, F](file)) 
      yield {
      if (rdd.partitions.size == 0) {
        logError("File " + file + " has no data in it. Spark Streaming can only ingest " +
          "files that have been \"moved\" to the directory assigned to the file stream. " +
          "Refer to the streaming programming guide for more details.")
      }
      rdd
    }
    new UnionRDD(context.sparkContext, fileRDDs)
  }


---

* [SPARK-3953](https://issues.apache.org/jira/browse/SPARK-3953) | *Minor* | **Confusable variable name.**

In SqlParser.scala, there is following code.

{code}
case d ~ p ~ r ~ f ~ g ~ h ~ o ~ l  =>
  val base = r.getOrElse(NoRelation)
  val withFilter = f.map(f => Filter(f, base)).getOrElse(base)
{code}

in the code above, there 2 variables which has same name "f" in near place. 
One is receiver "f" and other is bound variable "f".


---

* [SPARK-3952](https://issues.apache.org/jira/browse/SPARK-3952) | *Blocker* | **Python examples in Streaming Programming Guide**

Having Python examples in Streaming Programming Guide.


---

* [SPARK-3948](https://issues.apache.org/jira/browse/SPARK-3948) | *Blocker* | **Sort-based shuffle can lead to assorted stream-corruption exceptions**

Several exceptions occurred when running TPC-DS queries against latest master branch with sort-based shuffle enable, like PARSING\_ERROR(2) in snappy, deserializing error in Kryo and offset out-range in FileManagedBuffer, all these exceptions are gone when we changed to hash-based shuffle.

With deep investigation, we found that some shuffle output file is unexpectedly smaller than the others, as the log shows:

{noformat}
14/10/14 18:25:06 INFO shuffle.IndexShuffleBlockManager: Block id: shuffle\_6\_9\_11, offset: 3055635, length: 236708, file length: 47274167
14/10/14 18:25:06 INFO shuffle.IndexShuffleBlockManager: Block id: shuffle\_6\_10\_11, offset: 2986484, length: 222755, file length: 47174539
14/10/14 18:25:06 INFO shuffle.IndexShuffleBlockManager: Block id: shuffle\_6\_11\_11, offset: 2995341, length: 259871, file length: 383405
14/10/14 18:25:06 INFO shuffle.IndexShuffleBlockManager: Block id: shuffle\_6\_12\_11, offset: 2991030, length: 268191, file length: 47478892
14/10/14 18:25:06 INFO shuffle.IndexShuffleBlockManager: Block id: shuffle\_6\_13\_11, offset: 3016292, length: 230694, file length: 47420826
14/10/14 18:25:06 INFO shuffle.IndexShuffleBlockManager: Block id: shuffle\_6\_14\_11, offset: 3061400, length: 241136, file length: 47395509
{noformat}

As you can see the total file length of shuffle\_6\_11\_11 is much smaller than other same stage map output results.

And we also dump the map outputs in map side to see if this small size output is correct or not, below is the log:

{noformat}
 In bypass merge sort, file name: /mnt/DP\_disk1/animal/spark/spark-local-
20141014182142-8345/22/shuffle\_6\_11\_0.data, file length: 383405length:
 274722 262597 291290 272902 264941 270358 291005 295285 252482 
287142 232617 259871 233734 241439 228897 234282 253834 235619 
233803 255532 270739 253825 262087 266404 234273 250120 262983 
257024 255947 254971 258908 247862 221613 258566 245399 251684 
274843 226150 264278 245279 225656 235084 239466 212851 242245 
218781 222191 215500 211548 234256 208601 204113 191923 217895 
227020 215331 212313 223725 250876 256875 239276 266777 235520 
237462 234063 242270 246825 255888 235937 236956 233099 264508 
260303 233294 239061 254856 257475 230105 246553 260412 210355 
211201 219572 206636 226866 209937 226618 218208 206255 248069 
221717 222112 215734 248088 239207 246125 239056 241133 253091 
246738 233128 242794 231606 255737 221123 252115 247286 229688 
251087 250047 237579 263079 256251 238214 208641 201120 204009 
200825 211965 200600 194492 226471 194887 226975 215072 206008 
233288 222132 208860 219064 218162 237126 220465 201343 225711 
232178 233786 212767 211462 213671 215853 227822 233782 214727 
247001 228968 247413 222674 214241 184122 215643 207665 219079 
215185 207718 212723 201613 216600 212591 208174 204195 208099 
229079 230274 223373 214999 256626 228895 231821 383405 229646 
220212 245495 245960 227556 213266 237203 203805 240509 239306 
242365 218416 238487 219397 240026 251011 258369 255365 259811 
283313 248450 264286 264562 257485 279459 249187 257609 274964 
292369 273826
{noformat}

Here I dump the file name, length and each partition's length, obviously the sum of all partition lengths is not equal to file length. So I think there may be a situation paritionWriter in ExternalSorter not always append to the end of previous written file, the file's content is overwritten in some parts, and this lead to the exceptions I mentioned before.

Also I changed the code of copyStream by disable transferTo, use the previous one, all the issues are gone. So I think there maybe some flushing problems in transferTo when processed data is large.


---

* [SPARK-3946](https://issues.apache.org/jira/browse/SPARK-3946) | *Minor* | **.gitignore in /python includes wrong directory.**

.gitignore in /python includes {{docs/}} .
But /python/docs/* are the normal script or template files.
It seems to be indended to ignore output files of sphinx build, so it should be modified as {{docs/\_build/}} .


---

* [SPARK-3945](https://issues.apache.org/jira/browse/SPARK-3945) | *Major* | **Write properties of hive-site.xml to HiveContext when initilize session state In SparkSQLEnv.scala**

Write properties of hive-site.xml to HiveContext when initilize session state In SparkSQLEnv.scala

The method of SparkSQLEnv.init() in HiveThriftServer2.scala cann't write the properties of hive-site.xml to HiveContext

example: 
hive-site.xml
<property>
	<name>spark.sql.shuffle.partititions</name>
	<value>99</value>
</property>


---

* [SPARK-3944](https://issues.apache.org/jira/browse/SPARK-3944) | *Major* | **Utils.resolveURI fails on upgrading scalaVersion to 2.11.2**

The method tries to match a String (`uri.getScheme`) to obtain the result. The value from `uri.getScheme` can be null. 
Pattern matching using Regex when String value is null throws NPE in Scala 2.11.2. whereas it works in 2.10.4

Running the same code snippet gives different results
{noformat}
Welcome to Scala version 2.10.4 (Java HotSpot(TM) 64-Bit Server VM, Java 1.7.0\_60).
Type in expressions to have them evaluated.
Type :help for more information.

scala> val pattern = "(.*)".r
pattern: scala.util.matching.Regex = (.*)

scala> val x:String = null
x: String = null

scala> x match {   case pattern(x) => println("Success")
     |       case null => println("Fail")
     | }
Fail

scala> 
{noformat}

{noformat}
Welcome to Scala version 2.11.2 (Java HotSpot(TM) 64-Bit Server VM, Java 1.7.0\_60).
Type in expressions to have them evaluated.
Type :help for more information.

scala> val pattern = "(.*)".r
pattern: scala.util.matching.Regex = (.*)

scala> val x:String = null
x: String = null

scala> x match {   case pattern(x) => println("Success")
     |       case null => println("Fail")
     |      }
java.lang.NullPointerException
  at java.util.regex.Matcher.getTextLength(Matcher.java:1234)
  at java.util.regex.Matcher.reset(Matcher.java:308)
  at java.util.regex.Matcher.<init>(Matcher.java:228)
  at java.util.regex.Pattern.matcher(Pattern.java:1088)
  at scala.util.matching.Regex.unapplySeq(Regex.scala:206)
  ... 47 elided
{noformat}

This happens because, In scala 2.11.2 "the unapply" tries to match the regex even if the input is null. While in scala 2.10 it matches the correct case with out unapplying.


---

* [SPARK-3943](https://issues.apache.org/jira/browse/SPARK-3943) | *Minor* | **Some scripts bin\\*.cmd pollutes environment variables in Windows.**

Some scripts (bin\*.cmd) pollutes environment variables in Windows.
For example, when we execute bin\spark-submit.cmd, we will found that our command prompt keeps environment variables like %SPARK\_HOME%, %SPARK\_SUBMIT\_DEPLOY\_MODE%, and so on.
Those environment variables are only used in the script internally, so we'd better to avoid polluting the environment.


---

* [SPARK-3941](https://issues.apache.org/jira/browse/SPARK-3941) | *Major* | **\_remainingMem should not increase twice when updateBlockInfo**

In BlockManagermasterActor, \_remainingMem would increase memSize for twice when updateBlockInfo if new storageLevel is invalid.


---

* [SPARK-3940](https://issues.apache.org/jira/browse/SPARK-3940) | *Major* | **SQL console prints error messages three times**

if an error of SQL，the console print Error three times。
eg：
{noformat}
spark-sql> show tablesss;
show tablesss;
14/10/13 20:56:29 INFO ParseDriver: Parsing command: show tablesss
NoViableAltException(26@[598:1: ddlStatement : ( createDatabaseStatement | switchDatabaseStatement | dropDatabaseStatement | createTableStatement | dropTableStatement | truncateTableStatement | alterStatement | descStatement | showStatement | metastoreCheck | createViewStatement | dropViewStatement | createFunctionStatement | createMacroStatement | createIndexStatement | dropIndexStatement | dropFunctionStatement | dropMacroStatement | analyzeStatement | lockStatement | unlockStatement | createRoleStatement | dropRoleStatement | grantPrivileges | revokePrivileges | showGrants | showRoleGrants | grantRole | revokeRole );])
	at org.antlr.runtime.DFA.noViableAlt(DFA.java:158)
	at org.antlr.runtime.DFA.predict(DFA.java:144)
	at org.apache.hadoop.hive.ql.parse.HiveParser.ddlStatement(HiveParser.java:1962)
	at org.apache.hadoop.hive.ql.parse.HiveParser.execStatement(HiveParser.java:1298)
	at org.apache.hadoop.hive.ql.parse.HiveParser.statement(HiveParser.java:938)
	at org.apache.hadoop.hive.ql.parse.ParseDriver.parse(ParseDriver.java:190)
	at org.apache.hadoop.hive.ql.parse.ParseDriver.parse(ParseDriver.java:161)
	at org.apache.spark.sql.hive.HiveQl$.getAst(HiveQl.scala:218)
	at org.apache.spark.sql.hive.HiveQl$.createPlan(HiveQl.scala:226)
	at org.apache.spark.sql.hive.ExtendedHiveQlParser$$anonfun$hiveQl$1.apply(ExtendedHiveQlParser.scala:50)
	at org.apache.spark.sql.hive.ExtendedHiveQlParser$$anonfun$hiveQl$1.apply(ExtendedHiveQlParser.scala:49)
	at scala.util.parsing.combinator.Parsers$Success.map(Parsers.scala:136)
	at scala.util.parsing.combinator.Parsers$Success.map(Parsers.scala:135)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:242)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:242)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:222)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1$$anonfun$apply$2.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1$$anonfun$apply$2.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$Failure.append(Parsers.scala:202)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:222)
	at scala.util.parsing.combinator.Parsers$$anon$2$$anonfun$apply$14.apply(Parsers.scala:891)
	at scala.util.parsing.combinator.Parsers$$anon$2$$anonfun$apply$14.apply(Parsers.scala:891)
	at scala.util.DynamicVariable.withValue(DynamicVariable.scala:57)
	at scala.util.parsing.combinator.Parsers$$anon$2.apply(Parsers.scala:890)
	at scala.util.parsing.combinator.PackratParsers$$anon$1.apply(PackratParsers.scala:110)
	at org.apache.spark.sql.catalyst.AbstractSparkSQLParser.apply(SparkSQLParser.scala:31)
	at org.apache.spark.sql.hive.HiveQl$$anonfun$3.apply(HiveQl.scala:130)
	at org.apache.spark.sql.hive.HiveQl$$anonfun$3.apply(HiveQl.scala:130)
	at org.apache.spark.sql.catalyst.SparkSQLParser$$anonfun$org$apache$spark$sql$catalyst$SparkSQLParser$$others$1.apply(SparkSQLParser.scala:184)
	at org.apache.spark.sql.catalyst.SparkSQLParser$$anonfun$org$apache$spark$sql$catalyst$SparkSQLParser$$others$1.apply(SparkSQLParser.scala:183)
	at scala.util.parsing.combinator.Parsers$Success.map(Parsers.scala:136)
	at scala.util.parsing.combinator.Parsers$Success.map(Parsers.scala:135)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:242)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:242)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:222)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1$$anonfun$apply$2.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1$$anonfun$apply$2.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$Failure.append(Parsers.scala:202)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:222)
	at scala.util.parsing.combinator.Parsers$$anon$2$$anonfun$apply$14.apply(Parsers.scala:891)
	at scala.util.parsing.combinator.Parsers$$anon$2$$anonfun$apply$14.apply(Parsers.scala:891)
	at scala.util.DynamicVariable.withValue(DynamicVariable.scala:57)
	at scala.util.parsing.combinator.Parsers$$anon$2.apply(Parsers.scala:890)
	at scala.util.parsing.combinator.PackratParsers$$anon$1.apply(PackratParsers.scala:110)
	at org.apache.spark.sql.catalyst.AbstractSparkSQLParser.apply(SparkSQLParser.scala:31)
	at org.apache.spark.sql.hive.HiveQl$.parseSql(HiveQl.scala:221)
	at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:98)
	at org.apache.spark.sql.hive.thriftserver.SparkSQLDriver.run(SparkSQLDriver.scala:58)
	at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver.processCmd(SparkSQLCLIDriver.scala:274)
	at org.apache.hadoop.hive.cli.CliDriver.processLine(CliDriver.java:413)
	at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver$.main(SparkSQLCLIDriver.scala:209)
	at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver.main(SparkSQLCLIDriver.scala)
14/10/13 20:56:30 ERROR SparkSQLDriver: Failed in [show tablesss]
org.apache.spark.sql.hive.HiveQl$ParseException: Failed to parse: show tablesss
	at org.apache.spark.sql.hive.HiveQl$.createPlan(HiveQl.scala:225)
	at org.apache.spark.sql.hive.ExtendedHiveQlParser$$anonfun$hiveQl$1.apply(ExtendedHiveQlParser.scala:50)
	at org.apache.spark.sql.hive.ExtendedHiveQlParser$$anonfun$hiveQl$1.apply(ExtendedHiveQlParser.scala:49)
	at scala.util.parsing.combinator.Parsers$Success.map(Parsers.scala:136)
	at scala.util.parsing.combinator.Parsers$Success.map(Parsers.scala:135)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:242)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:242)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:222)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1$$anonfun$apply$2.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1$$anonfun$apply$2.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$Failure.append(Parsers.scala:202)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:222)
	at scala.util.parsing.combinator.Parsers$$anon$2$$anonfun$apply$14.apply(Parsers.scala:891)
	at scala.util.parsing.combinator.Parsers$$anon$2$$anonfun$apply$14.apply(Parsers.scala:891)
	at scala.util.DynamicVariable.withValue(DynamicVariable.scala:57)
	at scala.util.parsing.combinator.Parsers$$anon$2.apply(Parsers.scala:890)
	at scala.util.parsing.combinator.PackratParsers$$anon$1.apply(PackratParsers.scala:110)
	at org.apache.spark.sql.catalyst.AbstractSparkSQLParser.apply(SparkSQLParser.scala:31)
	at org.apache.spark.sql.hive.HiveQl$$anonfun$3.apply(HiveQl.scala:130)
	at org.apache.spark.sql.hive.HiveQl$$anonfun$3.apply(HiveQl.scala:130)
	at org.apache.spark.sql.catalyst.SparkSQLParser$$anonfun$org$apache$spark$sql$catalyst$SparkSQLParser$$others$1.apply(SparkSQLParser.scala:184)
	at org.apache.spark.sql.catalyst.SparkSQLParser$$anonfun$org$apache$spark$sql$catalyst$SparkSQLParser$$others$1.apply(SparkSQLParser.scala:183)
	at scala.util.parsing.combinator.Parsers$Success.map(Parsers.scala:136)
	at scala.util.parsing.combinator.Parsers$Success.map(Parsers.scala:135)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:242)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:242)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:222)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1$$anonfun$apply$2.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1$$anonfun$apply$2.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$Failure.append(Parsers.scala:202)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:222)
	at scala.util.parsing.combinator.Parsers$$anon$2$$anonfun$apply$14.apply(Parsers.scala:891)
	at scala.util.parsing.combinator.Parsers$$anon$2$$anonfun$apply$14.apply(Parsers.scala:891)
	at scala.util.DynamicVariable.withValue(DynamicVariable.scala:57)
	at scala.util.parsing.combinator.Parsers$$anon$2.apply(Parsers.scala:890)
	at scala.util.parsing.combinator.PackratParsers$$anon$1.apply(PackratParsers.scala:110)
	at org.apache.spark.sql.catalyst.AbstractSparkSQLParser.apply(SparkSQLParser.scala:31)
	at org.apache.spark.sql.hive.HiveQl$.parseSql(HiveQl.scala:221)
	at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:98)
	at org.apache.spark.sql.hive.thriftserver.SparkSQLDriver.run(SparkSQLDriver.scala:58)
	at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver.processCmd(SparkSQLCLIDriver.scala:274)
	at org.apache.hadoop.hive.cli.CliDriver.processLine(CliDriver.java:413)
	at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver$.main(SparkSQLCLIDriver.scala:209)
	at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver.main(SparkSQLCLIDriver.scala)
Caused by: org.apache.hadoop.hive.ql.parse.ParseException: line 1:5 cannot recognize input near 'show' 'tablesss' '<EOF>' in ddl statement

	at org.apache.hadoop.hive.ql.parse.ParseDriver.parse(ParseDriver.java:193)
	at org.apache.hadoop.hive.ql.parse.ParseDriver.parse(ParseDriver.java:161)
	at org.apache.spark.sql.hive.HiveQl$.getAst(HiveQl.scala:218)
	at org.apache.spark.sql.hive.HiveQl$.createPlan(HiveQl.scala:226)
	... 47 more
org.apache.spark.sql.hive.HiveQl$ParseException: Failed to parse: show tablesss
	at org.apache.spark.sql.hive.HiveQl$.createPlan(HiveQl.scala:225)
	at org.apache.spark.sql.hive.ExtendedHiveQlParser$$anonfun$hiveQl$1.apply(ExtendedHiveQlParser.scala:50)
	at org.apache.spark.sql.hive.ExtendedHiveQlParser$$anonfun$hiveQl$1.apply(ExtendedHiveQlParser.scala:49)
	at scala.util.parsing.combinator.Parsers$Success.map(Parsers.scala:136)
	at scala.util.parsing.combinator.Parsers$Success.map(Parsers.scala:135)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:242)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:242)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:222)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1$$anonfun$apply$2.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1$$anonfun$apply$2.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$Failure.append(Parsers.scala:202)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:222)
	at scala.util.parsing.combinator.Parsers$$anon$2$$anonfun$apply$14.apply(Parsers.scala:891)
	at scala.util.parsing.combinator.Parsers$$anon$2$$anonfun$apply$14.apply(Parsers.scala:891)
	at scala.util.DynamicVariable.withValue(DynamicVariable.scala:57)
	at scala.util.parsing.combinator.Parsers$$anon$2.apply(Parsers.scala:890)
	at scala.util.parsing.combinator.PackratParsers$$anon$1.apply(PackratParsers.scala:110)
	at org.apache.spark.sql.catalyst.AbstractSparkSQLParser.apply(SparkSQLParser.scala:31)
	at org.apache.spark.sql.hive.HiveQl$$anonfun$3.apply(HiveQl.scala:130)
	at org.apache.spark.sql.hive.HiveQl$$anonfun$3.apply(HiveQl.scala:130)
	at org.apache.spark.sql.catalyst.SparkSQLParser$$anonfun$org$apache$spark$sql$catalyst$SparkSQLParser$$others$1.apply(SparkSQLParser.scala:184)
	at org.apache.spark.sql.catalyst.SparkSQLParser$$anonfun$org$apache$spark$sql$catalyst$SparkSQLParser$$others$1.apply(SparkSQLParser.scala:183)
	at scala.util.parsing.combinator.Parsers$Success.map(Parsers.scala:136)
	at scala.util.parsing.combinator.Parsers$Success.map(Parsers.scala:135)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:242)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:242)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:222)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1$$anonfun$apply$2.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1$$anonfun$apply$2.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$Failure.append(Parsers.scala:202)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:222)
	at scala.util.parsing.combinator.Parsers$$anon$2$$anonfun$apply$14.apply(Parsers.scala:891)
	at scala.util.parsing.combinator.Parsers$$anon$2$$anonfun$apply$14.apply(Parsers.scala:891)
	at scala.util.DynamicVariable.withValue(DynamicVariable.scala:57)
	at scala.util.parsing.combinator.Parsers$$anon$2.apply(Parsers.scala:890)
	at scala.util.parsing.combinator.PackratParsers$$anon$1.apply(PackratParsers.scala:110)
	at org.apache.spark.sql.catalyst.AbstractSparkSQLParser.apply(SparkSQLParser.scala:31)
	at org.apache.spark.sql.hive.HiveQl$.parseSql(HiveQl.scala:221)
	at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:98)
	at org.apache.spark.sql.hive.thriftserver.SparkSQLDriver.run(SparkSQLDriver.scala:58)
	at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver.processCmd(SparkSQLCLIDriver.scala:274)
	at org.apache.hadoop.hive.cli.CliDriver.processLine(CliDriver.java:413)
	at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver$.main(SparkSQLCLIDriver.scala:209)
	at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver.main(SparkSQLCLIDriver.scala)
Caused by: org.apache.hadoop.hive.ql.parse.ParseException: line 1:5 cannot recognize input near 'show' 'tablesss' '<EOF>' in ddl statement

	at org.apache.hadoop.hive.ql.parse.ParseDriver.parse(ParseDriver.java:193)
	at org.apache.hadoop.hive.ql.parse.ParseDriver.parse(ParseDriver.java:161)
	at org.apache.spark.sql.hive.HiveQl$.getAst(HiveQl.scala:218)
	at org.apache.spark.sql.hive.HiveQl$.createPlan(HiveQl.scala:226)
	... 47 more

14/10/13 20:56:30 ERROR CliDriver: org.apache.spark.sql.hive.HiveQl$ParseException: Failed to parse: show tablesss
	at org.apache.spark.sql.hive.HiveQl$.createPlan(HiveQl.scala:225)
	at org.apache.spark.sql.hive.ExtendedHiveQlParser$$anonfun$hiveQl$1.apply(ExtendedHiveQlParser.scala:50)
	at org.apache.spark.sql.hive.ExtendedHiveQlParser$$anonfun$hiveQl$1.apply(ExtendedHiveQlParser.scala:49)
	at scala.util.parsing.combinator.Parsers$Success.map(Parsers.scala:136)
	at scala.util.parsing.combinator.Parsers$Success.map(Parsers.scala:135)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:242)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:242)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:222)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1$$anonfun$apply$2.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1$$anonfun$apply$2.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$Failure.append(Parsers.scala:202)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:222)
	at scala.util.parsing.combinator.Parsers$$anon$2$$anonfun$apply$14.apply(Parsers.scala:891)
	at scala.util.parsing.combinator.Parsers$$anon$2$$anonfun$apply$14.apply(Parsers.scala:891)
	at scala.util.DynamicVariable.withValue(DynamicVariable.scala:57)
	at scala.util.parsing.combinator.Parsers$$anon$2.apply(Parsers.scala:890)
	at scala.util.parsing.combinator.PackratParsers$$anon$1.apply(PackratParsers.scala:110)
	at org.apache.spark.sql.catalyst.AbstractSparkSQLParser.apply(SparkSQLParser.scala:31)
	at org.apache.spark.sql.hive.HiveQl$$anonfun$3.apply(HiveQl.scala:130)
	at org.apache.spark.sql.hive.HiveQl$$anonfun$3.apply(HiveQl.scala:130)
	at org.apache.spark.sql.catalyst.SparkSQLParser$$anonfun$org$apache$spark$sql$catalyst$SparkSQLParser$$others$1.apply(SparkSQLParser.scala:184)
	at org.apache.spark.sql.catalyst.SparkSQLParser$$anonfun$org$apache$spark$sql$catalyst$SparkSQLParser$$others$1.apply(SparkSQLParser.scala:183)
	at scala.util.parsing.combinator.Parsers$Success.map(Parsers.scala:136)
	at scala.util.parsing.combinator.Parsers$Success.map(Parsers.scala:135)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:242)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:242)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:222)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1$$anonfun$apply$2.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1$$anonfun$apply$2.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$Failure.append(Parsers.scala:202)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:222)
	at scala.util.parsing.combinator.Parsers$$anon$2$$anonfun$apply$14.apply(Parsers.scala:891)
	at scala.util.parsing.combinator.Parsers$$anon$2$$anonfun$apply$14.apply(Parsers.scala:891)
	at scala.util.DynamicVariable.withValue(DynamicVariable.scala:57)
	at scala.util.parsing.combinator.Parsers$$anon$2.apply(Parsers.scala:890)
	at scala.util.parsing.combinator.PackratParsers$$anon$1.apply(PackratParsers.scala:110)
	at org.apache.spark.sql.catalyst.AbstractSparkSQLParser.apply(SparkSQLParser.scala:31)
	at org.apache.spark.sql.hive.HiveQl$.parseSql(HiveQl.scala:221)
	at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:98)
	at org.apache.spark.sql.hive.thriftserver.SparkSQLDriver.run(SparkSQLDriver.scala:58)
	at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver.processCmd(SparkSQLCLIDriver.scala:274)
	at org.apache.hadoop.hive.cli.CliDriver.processLine(CliDriver.java:413)
	at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver$.main(SparkSQLCLIDriver.scala:209)
	at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver.main(SparkSQLCLIDriver.scala)
Caused by: org.apache.hadoop.hive.ql.parse.ParseException: line 1:5 cannot recognize input near 'show' 'tablesss' '<EOF>' in ddl statement

	at org.apache.hadoop.hive.ql.parse.ParseDriver.parse(ParseDriver.java:193)
	at org.apache.hadoop.hive.ql.parse.ParseDriver.parse(ParseDriver.java:161)
	at org.apache.spark.sql.hive.HiveQl$.getAst(HiveQl.scala:218)
	at org.apache.spark.sql.hive.HiveQl$.createPlan(HiveQl.scala:226)
	... 47 more
{noformat}


---

* [SPARK-3938](https://issues.apache.org/jira/browse/SPARK-3938) | *Critical* | **Set RDD name to table name during cache operations**

When we create a table via "CACHE TABLE tbl" or "CACHE TABLE tbl AS SELECT", we should name the created RDD with the table name. This will allow it to render nicely in the storage tab, which is necessary when people look at the storage tab to understand the caching behavior of Spark (e.g. percentage in cache, etc).


---

* [SPARK-3936](https://issues.apache.org/jira/browse/SPARK-3936) | *Blocker* | **Remove auto join elimination and introduce aggregateMessages**

This is actually a ticket with two separate problems:

1. Remove auto join elimination

2. Introduce a new fundamental primitive aggregateMessages

For the first one, description provided by Pedro:

There seems to be a bug with the GraphX byte code inspection, specifically in BytecodeUtils. 

These are the unit tests I wrote to expose the problem:
https://github.com/EntilZha/spark/blob/a3c38a8329545c034fae2458df134fa3829d08fb/graphx/src/test/scala/org/apache/spark/graphx/util/BytecodeUtilsSuite.scala#L93-L121

The first two tests pass, the second two tests fail. This exposes a problem with inspection of methods in closures, in this case within maps. Specifically, it seems like there is a problem with inspection of non-inline methods in a closure.


For the 2nd one, see pull request https://github.com/apache/spark/pull/3100


---

* [SPARK-3935](https://issues.apache.org/jira/browse/SPARK-3935) | *Minor* | **Unused variable in PairRDDFunctions.scala**

There is a unused variable (count) in saveAsHadoopDataset function in PairRDDFunctions.scala. 
It is better to add a log statement to record the line of output.


---

* [SPARK-3934](https://issues.apache.org/jira/browse/SPARK-3934) | *Major* | **RandomForest bug in sanity check in DTStatsAggregator**

When run with a mix of unordered categorical and continuous features, on multiclass classification, RandomForest fails.  The bug is in the sanity checks in getFeatureOffset and getLeftRightFeatureOffsets, which use the wrong indices for checking whether features are unordered.

Proposal: Remove the sanity checks since they are not really needed, and since they would require DTStatsAggregator to keep track of an extra set of indices (for the feature subset).


---

* [SPARK-3929](https://issues.apache.org/jira/browse/SPARK-3929) | *Major* | **Support for fixed-precision decimal**

Spark SQL should support fixed-precision decimals, which are available in Hive 0.13 (see https://cwiki.apache.org/confluence/download/attachments/27362075/Hive\_Decimal\_Precision\_Scale\_Support.pdf) as well as in new versions of Parquet. This involves adding precision to the decimal type and implementing various rules for math on it (see above).


---

* [SPARK-3925](https://issues.apache.org/jira/browse/SPARK-3925) | *Major* | **Do not consider the ordering of qualifiers during comparison**

The qualifiers orderings should not be considered during the comparison between old qualifiers and new qualifiers when calling 'withQualifiers'.


---

* [SPARK-3923](https://issues.apache.org/jira/browse/SPARK-3923) | *Blocker* | **All Standalone Mode services time out with each other**

I'm seeing an issue where it seems that components in Standalone Mode (Worker, Master, Driver, and Executor) all seem to time out with each other after around 1000 seconds. Here is an example log:

{code}
14/10/13 06:43:55 INFO Master: Registering worker ip-10-0-147-189.us-west-2.compute.internal:38922 with 4 cores, 29.0 GB RAM
14/10/13 06:43:55 INFO Master: Registering worker ip-10-0-175-214.us-west-2.compute.internal:42918 with 4 cores, 59.0 GB RAM
14/10/13 06:43:56 INFO Master: Registering app Databricks Shell
14/10/13 06:43:56 INFO Master: Registered app Databricks Shell with ID app-20141013064356-0000

... precisely 1000 seconds later ...

14/10/13 07:00:35 WARN ReliableDeliverySupervisor: Association with remote system [akka.tcp://sparkWorker@ip-10-0-147-189.us-west-2.compute.internal:38922] has failed, address is now gated for [5000] ms. Reason is: [Disassociated].
14/10/13 07:00:35 INFO Master: akka.tcp://sparkWorker@ip-10-0-147-189.us-west-2.compute.internal:38922 got disassociated, removing it.
14/10/13 07:00:35 INFO LocalActorRef: Message [akka.remote.transport.ActorTransportAdapter$DisassociateUnderlying] from Actor[akka://sparkMaster/deadLetters] to Actor[akka://sparkMaster/system/transports/akkaprotocolmanager.tcp0/akkaProtocol-tcp%3A%2F%2FsparkMaster%4010.0.147.189%3A54956-1#1529980245] was not delivered. [2] dead letters encountered. This logging can be turned off or adjusted with configuration settings 'akka.log-dead-letters' and 'akka.log-dead-letters-during-shutdown'.
14/10/13 07:00:35 INFO Master: akka.tcp://sparkWorker@ip-10-0-175-214.us-west-2.compute.internal:42918 got disassociated, removing it.
14/10/13 07:00:35 INFO Master: Removing worker worker-20141013064354-ip-10-0-175-214.us-west-2.compute.internal-42918 on ip-10-0-175-214.us-west-2.compute.internal:42918
14/10/13 07:00:35 INFO Master: Telling app of lost executor: 1
14/10/13 07:00:35 INFO Master: akka.tcp://sparkWorker@ip-10-0-175-214.us-west-2.compute.internal:42918 got disassociated, removing it.
14/10/13 07:00:35 WARN ReliableDeliverySupervisor: Association with remote system [akka.tcp://sparkWorker@ip-10-0-175-214.us-west-2.compute.internal:42918] has failed, address is now gated for [5000] ms. Reason is: [Disassociated].
14/10/13 07:00:35 INFO LocalActorRef: Message [akka.remote.transport.ActorTransportAdapter$DisassociateUnderlying] from Actor[akka://sparkMaster/deadLetters] to Actor[akka://sparkMaster/system/transports/akkaprotocolmanager.tcp0/akkaProtocol-tcp%3A%2F%2FsparkMaster%4010.0.175.214%3A35958-2#314633324] was not delivered. [3] dead letters encountered. This logging can be turned off or adjusted with configuration settings 'akka.log-dead-letters' and 'akka.log-dead-letters-during-shutdown'.
14/10/13 07:00:35 INFO LocalActorRef: Message [akka.remote.transport.AssociationHandle$Disassociated] from Actor[akka://sparkMaster/deadLetters] to Actor[akka://sparkMaster/system/transports/akkaprotocolmanager.tcp0/akkaProtocol-tcp%3A%2F%2FsparkMaster%4010.0.175.214%3A35958-2#314633324] was not delivered. [4] dead letters encountered. This logging can be turned off or adjusted with configuration settings 'akka.log-dead-letters' and 'akka.log-dead-letters-during-shutdown'.
14/10/13 07:00:36 INFO ProtocolStateActor: No response from remote. Handshake timed out or transport failure detector triggered.
14/10/13 07:00:36 INFO Master: akka.tcp://sparkDriver@ip-10-0-175-215.us-west-2.compute.internal:58259 got disassociated, removing it.
14/10/13 07:00:36 INFO LocalActorRef: Message [akka.remote.transport.AssociationHandle$InboundPayload] from Actor[akka://sparkMaster/deadLetters] to Actor[akka://sparkMaster/system/transports/akkaprotocolmanager.tcp0/akkaProtocol-tcp%3A%2F%2FsparkMaster%4010.0.175.215%3A41987-3#1944377249] was not delivered. [5] dead letters encountered. This logging can be turned off or adjusted with configuration settings 'akka.log-dead-letters' and 'akka.log-dead-letters-during-shutdown'.
14/10/13 07:00:36 INFO Master: Removing app app-20141013064356-0000
14/10/13 07:00:36 WARN ReliableDeliverySupervisor: Association with remote system [akka.tcp://sparkDriver@ip-10-0-175-215.us-west-2.compute.internal:58259] has failed, address is now gated for [5000] ms. Reason is: [Disassociated].
14/10/13 07:00:36 INFO LocalActorRef: Message [akka.remote.transport.ActorTransportAdapter$DisassociateUnderlying] from Actor[akka://sparkMaster/deadLetters] to Actor[akka://sparkMaster/system/transports/akkaprotocolmanager.tcp0/akkaProtocol-tcp%3A%2F%2FsparkMaster%4010.0.175.215%3A41987-3#1944377249] was not delivered. [6] dead letters encountered. This logging can be turned off or adjusted with configuration settings 'akka.log-dead-letters' and 'akka.log-dead-letters-during-shutdown'.
14/10/13 07:00:36 INFO LocalActorRef: Message [akka.remote.transport.AssociationHandle$Disassociated] from Actor[akka://sparkMaster/deadLetters] to Actor[akka://sparkMaster/system/transports/akkaprotocolmanager.tcp0/akkaProtocol-tcp%3A%2F%2FsparkMaster%4010.0.175.215%3A41987-3#1944377249] was not delivered. [7] dead letters encountered. This logging can be turned off or adjusted with configuration settings 'akka.log-dead-letters' and 'akka.log-dead-letters-during-shutdown'.
14/10/13 07:00:36 INFO Master: akka.tcp://sparkDriver@ip-10-0-175-215.us-west-2.compute.internal:58259 got disassociated, removing it.
{code}

Note that the driver and master are living on the same machine, and there is no load to speak of at the time (so no GC). Also everything disconnecting exactly 1000 seconds after initial connection is pretty suspicious.


---

* [SPARK-3922](https://issues.apache.org/jira/browse/SPARK-3922) | *Minor* | **A global UTF8 constant for Spark**

A global UTF8 constant is very helpful to handle encoding problems when converting between String and bytes. There are several solutions here:

1. Add `val UTF\_8 = Charset.forName("UTF-8")` to Utils.scala
2. java.nio.charset.StandardCharsets.UTF\_8 (require JDK7)
3. io.netty.util.CharsetUtil.UTF\_8
4. com.google.common.base.Charsets.UTF\_8
5. org.apache.commons.lang.CharEncoding.UTF\_8
6. org.apache.commons.lang3.CharEncoding.UTF\_8

IMO, I prefer option 1) because people can find it easily.


---

* [SPARK-3921](https://issues.apache.org/jira/browse/SPARK-3921) | *Critical* | **WorkerWatcher in Standalone mode fail to come up due to invalid workerUrl**

As of [this commit|https://github.com/apache/spark/commit/79e45c9323455a51f25ed9acd0edd8682b4bbb88#diff-79391110e9f26657e415aa169a004998R153], standalone mode appears to have lost its WorkerWatcher, because of the swapped workerUrl and appId parameters. We still put workerUrl before appId when we start standalone executors, and the Executor misinterprets the appId as the workerUrl and fails to create the WorkerWatcher.

Note that this does not seem to crash the Standalone executor mode, despite the failing of the WorkerWatcher during its constructor.


---

* [SPARK-3918](https://issues.apache.org/jira/browse/SPARK-3918) | *Major* | **Forget Unpersist in RandomForest.scala(train Method)**

   In version 1.1.0 DecisionTree.scala, train Method, treeInput has been persisted in Memory, but without unpersist. It caused heavy DISK usage.
   In github version(1.2.0 maybe), RandomForest.scala, train Method, baggedInput has been persisted but without unpersisted too.


---

* [SPARK-3912](https://issues.apache.org/jira/browse/SPARK-3912) | *Critical* | **FlumeStreamSuite is flaky, fails either with port binding issues or data not being reliably sent**

Two problems.

1. Attempts to start the service to start on different possible ports (to avoid bind failures) was incorrect as the service is actually start lazily (when receiver starts, not when the flume input stream is created). 
2. Lots of Thread.sleep was used to improve the probabilities that data sent through avro to flume receiver was being sent. However, the sending may fail for various unknown reasons, causing the test to fail.
3. Thread.sleep was also used to send one record per batch and checks were made on whether only one records was received in every batch. This was an overkill because all we need to test in this unit test is whether data is being sent and received or not, not about timings.


---

* [SPARK-3911](https://issues.apache.org/jira/browse/SPARK-3911) | *Minor* | **HiveSimpleUdf can not be optimized in constant folding**

{panel}
explain extended select cos(null) from src limit 1;
{panel}
It outputs
{panel}
 Project [HiveSimpleUdf#org.apache.hadoop.hive.ql.udf.UDFCos(null) AS c\_0#5]
  MetastoreRelation default, src, None

== Optimized Logical Plan ==
Limit 1
 Project [HiveSimpleUdf#org.apache.hadoop.hive.ql.udf.UDFCos(null) AS c\_0#5]
  MetastoreRelation default, src, None

== Physical Plan ==
Limit 1
 Project [HiveSimpleUdf#org.apache.hadoop.hive.ql.udf.UDFCos(null) AS c\_0#5]
  HiveTableScan [], (MetastoreRelation default, src, None), None
{panel}


---

* [SPARK-3909](https://issues.apache.org/jira/browse/SPARK-3909) | *Minor* | **A corrupted format in Sphinx documents and building warnings**

Sphinx documents contains a corrupted ReST format and have some warnings.

The purpose of this issue is same as https://issues.apache.org/jira/browse/SPARK-3773.

commit: 0e8203f4fb721158fb27897680da476174d24c4b

output
{noformat}
$ cd ./python/docs
$ make clean html
rm -rf \_build/*
sphinx-build -b html -d \_build/doctrees   . \_build/html
Making output directory...
Running Sphinx v1.2.3
loading pickled environment... not yet created
building [html]: targets for 4 source files that are out of date
updating environment: 4 added, 0 changed, 0 removed
reading sources... [100%] pyspark.sql                                                                                                                                                                     
/Users/<user>/MyRepos/Scala/spark/python/pyspark/mllib/feature.py:docstring of pyspark.mllib.feature.Word2VecModel.findSynonyms:4: WARNING: Field list ends without a blank line; unexpected unindent.
/Users/<user>/MyRepos/Scala/spark/python/pyspark/mllib/feature.py:docstring of pyspark.mllib.feature.Word2VecModel.transform:3: WARNING: Field list ends without a blank line; unexpected unindent.
/Users/<user>/MyRepos/Scala/spark/python/pyspark/sql.py:docstring of pyspark.sql:4: WARNING: Bullet list ends without a blank line; unexpected unindent.
looking for now-outdated files... none found
pickling environment... done
checking consistency... done
preparing documents... done
writing output... [100%] pyspark.sql                                                                                                                                                                      
writing additional files... (12 module code pages) \_modules/index search
copying static files... WARNING: html\_static\_path entry u'/Users/<user>/MyRepos/Scala/spark/python/docs/\_static' does not exist
done
copying extra files... done
dumping search index... done
dumping object inventory... done
build succeeded, 4 warnings.

Build finished. The HTML pages are in \_build/html.
{noformat}


---

* [SPARK-3907](https://issues.apache.org/jira/browse/SPARK-3907) | *Minor* | **add "truncate table" support**

The "truncate table " syntax had been disabled.
Removes all rows from a table or partition(s),Currently target table should be native/managed table or exception will be thrown.User can specify partial partition\_spec for truncating multiple partitions at once and omitting partition\_spec will truncate all partitions in the table.


---

* [SPARK-3906](https://issues.apache.org/jira/browse/SPARK-3906) | *Major* | **Support joins of multiple tables in SparkSQL (SQLContext, not HiveQL)**

Queries like:

select *
from fp
inner join dts
on fp.status\_code = dts.status\_code
inner dc
on fp.curr\_code = dc.curr\_code

currently is not supported in SparkSQL. Workaround is to use subquery.

However it's quite cumbersome. Please support it. :)

Jianshi


---

* [SPARK-3904](https://issues.apache.org/jira/browse/SPARK-3904) | *Major* | **HQL doesn't support the ConstantObjectInspector to pass into UDFs**

In HQL, we convert all of the data type into normal ObjectInspectors for UDFs, most of cases it work, however, some of the UDF actually requires the input ObjectInspector to be the ConstantObjectInspector, which will cause exception.
e.g.
{panel}
select named\_struct("x", "str") from src limit 1
{panel}

It will throws exception like
{panel}
14/10/10 16:25:17 INFO parse.ParseDriver: Parsing command: select named\_struct("x", "str") from src
14/10/10 16:25:17 INFO parse.ParseDriver: Parse Completed
14/10/10 16:25:17 INFO metastore.HiveMetaStore: 0: get\_table : db=default tbl=src
14/10/10 16:25:17 INFO HiveMetaStore.audit: ugi=hcheng	ip=unknown-ip-addr	cmd=get\_table : db=default tbl=tmp2	
14/10/10 16:25:17 ERROR thriftserver.SparkSQLDriver: Failed in [select named\_struct("x", "str") from src]
org.apache.hadoop.hive.ql.exec.UDFArgumentTypeException: Even arguments to NAMED\_STRUCT must be a constant STRING.org.apache.hadoop.hive.serde2.objectinspector.primitive.JavaStringObjectInspector@2f2dbcfc
	at org.apache.hadoop.hive.ql.udf.generic.GenericUDFNamedStruct.initialize(GenericUDFNamedStruct.java:55)
	at org.apache.spark.sql.hive.HiveGenericUdf.returnInspector$lzycompute(hiveUdfs.scala:129)
	at org.apache.spark.sql.hive.HiveGenericUdf.returnInspector(hiveUdfs.scala:129)
	at org.apache.spark.sql.hive.HiveGenericUdf.eval(hiveUdfs.scala:158)
	at org.apache.spark.sql.catalyst.optimizer.ConstantFolding$$anonfun$apply$6$$anonfun$applyOrElse$2.applyOrElse(Optimizer.scala:267)
	at org.apache.spark.sql.catalyst.optimizer.ConstantFolding$$anonfun$apply$6$$anonfun$applyOrElse$2.applyOrElse(Optimizer.scala:260)
{panel}


---

* [SPARK-3902](https://issues.apache.org/jira/browse/SPARK-3902) | *Major* | **Stabilize AsyncRDDActions and expose its methods in Java API**

The AsyncRDDActions methods are currently the easiest way to determine Spark jobs' ids for use in progress-monitoring code (see SPARK-2636).  AsyncRDDActions is currently marked as {{@Experimental}}; for 1.2, I think that we should stabilize this API and expose it in Java, too.

One concern is whether there's a better async API design that we should prefer over this one as our stable API; I had some ideas for a more general API in SPARK-3626 (discussed in much greater detail on GitHub: https://github.com/apache/spark/pull/2482) but decided against the more general API due to its confusing cancellation semantics.  Given this, I'd be comfortable stabilizing our current API.


---

* [SPARK-3900](https://issues.apache.org/jira/browse/SPARK-3900) | *Critical* | **ApplicationMaster's shutdown hook fails and IllegalStateException is thrown.**

ApplicationMaster registers a shutdown hook and it calls ApplicationMaster#cleanupStagingDir.

cleanupStagingDir invokes FileSystem.get(yarnConf) and it invokes FileSystem.getInternal. FileSystem.getInternal also registers shutdown hook.
In FileSystem of hadoop 0.23, the shutdown hook registration does not consider whether shutdown is in progress or not (In 2.2, it's considered).

{code}
// 0.23 
if (map.isEmpty() ) {
  ShutdownHookManager.get().addShutdownHook(clientFinalizer, SHUTDOWN\_HOOK\_PRIORITY);
}
{code}

{code}
// 2.2
if (map.isEmpty()
            && !ShutdownHookManager.get().isShutdownInProgress()) {
   ShutdownHookManager.get().addShutdownHook(clientFinalizer, SHUTDOWN\_HOOK\_PRIORITY);
}
{code}

Thus, in 0.23, another shutdown hook can be registered when ApplicationMaster's shutdown hook run.

This issue cause IllegalStateException as follows.

{code}
java.lang.IllegalStateException: Shutdown in progress, cannot add a shutdownHook
        at org.apache.hadoop.util.ShutdownHookManager.addShutdownHook(ShutdownHookManager.java:152)
        at org.apache.hadoop.fs.FileSystem$Cache.getInternal(FileSystem.java:2306)
        at org.apache.hadoop.fs.FileSystem$Cache.get(FileSystem.java:2278)
        at org.apache.hadoop.fs.FileSystem.get(FileSystem.java:316)
        at org.apache.hadoop.fs.FileSystem.get(FileSystem.java:162)
        at org.apache.spark.deploy.yarn.ApplicationMaster.org$apache$spark$deploy$yarn$ApplicationMaster$$cleanupStagingDir(ApplicationMaster.scala:307)
        at org.apache.spark.deploy.yarn.ApplicationMaster$$anon$3.run(ApplicationMaster.scala:118)
        at org.apache.hadoop.util.ShutdownHookManager$1.run(ShutdownHookManager.java:54)
{code}


---

* [SPARK-3890](https://issues.apache.org/jira/browse/SPARK-3890) | *Minor* | **remove redundant spark.executor.memory in doc**

Seems like there is a redundant spark.executor.memory config item in docs.


---

* [SPARK-3889](https://issues.apache.org/jira/browse/SPARK-3889) | *Critical* | **JVM dies with SIGBUS, resulting in ConnectionManager failed ACK**

Here's the first part of the core dump, possibly caused by a job which shuffles a lot of very small partitions.

{code}
#
# A fatal error has been detected by the Java Runtime Environment:
#
#  SIGBUS (0x7) at pc=0x00007fa5885fcdb0, pid=488, tid=140343502632704
#
# JRE version: 7.0\_25-b30
# Java VM: OpenJDK 64-Bit Server VM (23.7-b01 mixed mode linux-amd64 compressed oops)
# Problematic frame:
# v  ~StubRoutines::jbyte\_disjoint\_arraycopy
#
# Failed to write core dump. Core dumps have been disabled. To enable core dumping, try "ulimit -c unlimited" before starting Java again
#
# If you would like to submit a bug report, please include
# instructions on how to reproduce the bug and visit:
#   https://bugs.launchpad.net/ubuntu/+source/openjdk-7/
#

---------------  T H R E A D  ---------------

Current thread (0x00007fa4b0631000):  JavaThread "Executor task launch worker-170" daemon [\_thread\_in\_Java, id=6783, stack(0x00007fa4448ef000,0x00007fa4449f0000)]

siginfo:si\_signo=SIGBUS: si\_errno=0, si\_code=2 (BUS\_ADRERR), si\_addr=0x00007fa428f79000
{code}

Here is the only useful content I can find related to JVM and SIGBUS from Google: https://bugzilla.redhat.com/show\_bug.cgi?format=multiple&id=976664

It appears it may be related to disposing byte buffers, which we do in the ConnectionManager -- we mmap shuffle files via ManagedBuffer and dispose of them in BufferMessage.


---

* [SPARK-3887](https://issues.apache.org/jira/browse/SPARK-3887) | *Major* | **ConnectionManager should log remote exception when reporting remote errors**

When reporting that a remote error occurred, the ConnectionManager should also log the stacktrace of the remote exception.  This can be accomplished by sending the remote exception's stacktrace as the payload in the "negative ACK / error message" that's sent by the error-handling code.


---

* [SPARK-3886](https://issues.apache.org/jira/browse/SPARK-3886) | *Major* | **Choose the batch size of serializer based on size of object**

The default batch size (1024) maybe will not work for huge objects, so it's better to choose the proper size based on the size of objects.


---

* [SPARK-3877](https://issues.apache.org/jira/browse/SPARK-3877) | *Major* | **The exit code of spark-submit is still 0 when an yarn application fails**

When an yarn application fails (yarn-cluster mode), the exit code of spark-submit is still 0. It's hard for people to write some automatic scripts to run spark jobs in yarn because the failure can not be detected in these scripts.


---

* [SPARK-3874](https://issues.apache.org/jira/browse/SPARK-3874) | *Major* | **Provide stable TaskContext API**

We made some improvements in SPARK-3543 but for Spark 1.2 we should convert TaskContext into a fully stable API. To do this I’d suggest the following changes - note that some of this reverses parts of SPARK-3543. The goal is to provide a class that users can’t easily construct and exposes only the public functionality.

1. Separate TaskContext into a public abstract class (TaskContext) and a private implementation called TaskContextImpl. The former should be a Java abstract class - the latter should be a private[spark] Scala class to reduce visibility (or maybe we can keep it as Java and tell people not to use it?).

2. TaskContext abstract class will have (NOTE: this changes getXX() to XX() intentionally)
public isCompleted()
public isInterrupted()
public addTaskCompletionListener(...)
public addTaskCompletionCallback(...) (deprecated)
public stageId()
public partitionId()
public attemptId()
pubic isRunningLocally()
STATIC
public get() 
set() and unset() at default visibility

3. A new private[spark] static object TaskContextHelper in the same package as TaskContext will exist to expose set() and unset() from within Spark using forwarder methods that just call TaskContext.set(). If someone within Spark wants to set this they call TaskContextHelper.set() and it forwards it.

4. TaskContextImpl will be used whenever we construct a TaskContext internally.


---

* [SPARK-3870](https://issues.apache.org/jira/browse/SPARK-3870) | *Minor* | **EOL character enforcement**

We have shell scripts and Windows batch files, so we should enforce proper EOL character.


---

* [SPARK-3869](https://issues.apache.org/jira/browse/SPARK-3869) | *Major* | **./bin/spark-class miss Java version with \_JAVA\_OPTIONS set**

When \_JAVA\_OPTIONS environment variable is set, a command "java -version" outputs a message like "Picked up \_JAVA\_OPTIONS: -Dfile.encoding=UTF-8".
./bin/spark-class knows java version from the first line of "java -version" output, so it mistakes java version with \_JAVA\_OPTIONS set.

commit: a85f24accd3266e0f97ee04d03c22b593d99c062


---

* [SPARK-3868](https://issues.apache.org/jira/browse/SPARK-3868) | *Major* | **Hard to recognize which module is tested from unit-tests.log**

./python/run-tests script display messages about which test it is running currently on stdout but not write them on unit-tests.log.
It is harder for us to recognize what test programs were executed and which test was failed.


---

* [SPARK-3867](https://issues.apache.org/jira/browse/SPARK-3867) | *Major* | **./python/run-tests failed when it run with Python 2.6 and unittest2 is not installed**

./python/run-tests search a Python 2.6 executable on PATH and use it if available.
When using Python 2.6, it is going to import unittest2 module which is *not* a standard library in Python 2.6, so it fails with ImportError.

commit: 1d72a30874a88bdbab75217f001cf2af409016e7


---

* [SPARK-3861](https://issues.apache.org/jira/browse/SPARK-3861) | *Major* | **Avoid rebuilding hash tables on each partition**

BroadcastHashJoin builds a new hash table for each partition. We can build it once per node and reuse the hash table.


---

* [SPARK-3858](https://issues.apache.org/jira/browse/SPARK-3858) | *Minor* | **SchemaRDD.generate ignores alias argument**

The {{alias}} argument to {{SchemaRDD.generate}} is discarded and a constant {{None}} is supplied to the {{logical.Generate}} constructor.


---

* [SPARK-3857](https://issues.apache.org/jira/browse/SPARK-3857) | *Major* | **Create a join package for various join operators**

The join operator file is getting long. Let's break it apart.


---

* [SPARK-3856](https://issues.apache.org/jira/browse/SPARK-3856) | *Trivial* | **Clean deprecated usage after breeze 0.10 upgrade**

[warn] /Users/meng/src/spark/mllib/src/main/scala/org/apache/spark/mllib/feature/Normalizer.scala:50: method norm in trait NumericOps is deprecated: Use norm(XXX) instead of XXX.norm
[warn]     var norm = vector.toBreeze.norm(p)


---

* [SPARK-3855](https://issues.apache.org/jira/browse/SPARK-3855) | *Major* | **Binding Exception when running PythonUDFs**

{code}
from pyspark import *
from pyspark.sql import *
sc = SparkContext()
sqlContext = SQLContext(sc)
sqlContext.registerFunction("strlen", lambda string: len(string))
sqlContext.inferSchema(sc.parallelize([Row(a="test")])).registerTempTable("test")
srdd = sqlContext.sql("SELECT strlen(a) FROM test WHERE strlen(a) > 1")
print srdd.\_jschema\_rdd.baseSchemaRDD().queryExecution().toString()
print srdd.collect()
{code}

output:
{code}
== Parsed Logical Plan ==
Project ['strlen('a) AS c0#1]
 Filter ('strlen('a) > 1)
  UnresolvedRelation None, test, None

== Analyzed Logical Plan ==
Project [c0#1]
 Project [pythonUDF#2 AS c0#1]
  EvaluatePython PythonUDF#strlen(a#0)
   Project [a#0]
    Filter (CAST(pythonUDF#3, DoubleType) > CAST(1, DoubleType))
     EvaluatePython PythonUDF#strlen(a#0)
      SparkLogicalPlan (ExistingRdd [a#0], MapPartitionsRDD[7] at mapPartitions at SQLContext.scala:525)

== Optimized Logical Plan ==
Project [pythonUDF#2 AS c0#1]
 EvaluatePython PythonUDF#strlen(a#0)
  Project [a#0]
   Filter (CAST(pythonUDF#3, DoubleType) > 1.0)
    EvaluatePython PythonUDF#strlen(a#0)
     SparkLogicalPlan (ExistingRdd [a#0], MapPartitionsRDD[7] at mapPartitions at SQLContext.scala:525)

== Physical Plan ==
Project [pythonUDF#2 AS c0#1]
 BatchPythonEvaluation PythonUDF#strlen(a#0), [a#0,pythonUDF#5]
  Project [a#0]
   Filter (CAST(pythonUDF#3, DoubleType) > 1.0)
    BatchPythonEvaluation PythonUDF#strlen(a#0), [a#0,pythonUDF#3]
     ExistingRdd [a#0], MapPartitionsRDD[7] at mapPartitions at SQLContext.scala:525

Code Generation: false
== RDD ==
14/10/08 15:03:00 ERROR Executor: Exception in task 1.0 in stage 4.0 (TID 9)
org.apache.spark.sql.catalyst.errors.package$TreeNodeException: Binding attribute, tree: pythonUDF#2
	at org.apache.spark.sql.catalyst.errors.package$.attachTree(package.scala:47)
	at org.apache.spark.sql.catalyst.expressions.BindReferences$$anonfun$bindReference$1.applyOrElse(BoundAttribute.scala:47)
	at org.apache.spark.sql.catalyst.expressions.BindReferences$$anonfun$bindReference$1.applyOrElse(BoundAttribute.scala:46)
	at org.apache.spark.sql.catalyst.trees.TreeNode.transformDown(TreeNode.scala:144)
	at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$4.apply(TreeNode.scala:162)
	at scala.collection.Iterator$$anon$11.next(Iterator.scala:328)
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
	at org.apache.spark.sql.catalyst.trees.TreeNode.transformChildrenDown(TreeNode.scala:191)
	at org.apache.spark.sql.catalyst.trees.TreeNode.transformDown(TreeNode.scala:147)
	at org.apache.spark.sql.catalyst.trees.TreeNode.transform(TreeNode.scala:135)
	at org.apache.spark.sql.catalyst.expressions.BindReferences$.bindReference(BoundAttribute.scala:46)
	at org.apache.spark.sql.catalyst.expressions.InterpretedMutableProjection$$anonfun$$init$$2.apply(Projection.scala:52)
	at org.apache.spark.sql.catalyst.expressions.InterpretedMutableProjection$$anonfun$$init$$2.apply(Projection.scala:52)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.immutable.List.foreach(List.scala:318)
	at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
	at scala.collection.AbstractTraversable.map(Traversable.scala:105)
	at org.apache.spark.sql.catalyst.expressions.InterpretedMutableProjection.<init>(Projection.scala:52)
	at org.apache.spark.sql.execution.SparkPlan$$anonfun$newMutableProjection$1.apply(SparkPlan.scala:106)
	at org.apache.spark.sql.execution.SparkPlan$$anonfun$newMutableProjection$1.apply(SparkPlan.scala:106)
	at org.apache.spark.sql.execution.Project$$anonfun$1.apply(basicOperators.scala:43)
	at org.apache.spark.sql.execution.Project$$anonfun$1.apply(basicOperators.scala:42)
	at org.apache.spark.rdd.RDD$$anonfun$13.apply(RDD.scala:599)
	at org.apache.spark.rdd.RDD$$anonfun$13.apply(RDD.scala:599)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
	at org.apache.spark.rdd.MappedRDD.compute(MappedRDD.scala:31)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:61)
	at org.apache.spark.scheduler.Task.run(Task.scala:56)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:182)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
Caused by: java.lang.RuntimeException: Couldn't find pythonUDF#2 in [a#0,pythonUDF#5]
	at scala.sys.package$.error(package.scala:27)
	at org.apache.spark.sql.catalyst.expressions.BindReferences$$anonfun$bindReference$1$$anonfun$applyOrElse$1.apply(BoundAttribute.scala:53)
	at org.apache.spark.sql.catalyst.expressions.BindReferences$$anonfun$bindReference$1$$anonfun$applyOrElse$1.apply(BoundAttribute.scala:47)
	at org.apache.spark.sql.catalyst.errors.package$.attachTree(package.scala:46)
	... 46 more
14/10/08 15:03:00 ERROR Executor: Exception in task 0.0 in stage 4.0 (TID 8)
org.apache.spark.sql.catalyst.errors.package$TreeNodeException: Binding attribute, tree: pythonUDF#2
	at org.apache.spark.sql.catalyst.errors.package$.attachTree(package.scala:47)
	at org.apache.spark.sql.catalyst.expressions.BindReferences$$anonfun$bindReference$1.applyOrElse(BoundAttribute.scala:47)
	at org.apache.spark.sql.catalyst.expressions.BindReferences$$anonfun$bindReference$1.applyOrElse(BoundAttribute.scala:46)
	at org.apache.spark.sql.catalyst.trees.TreeNode.transformDown(TreeNode.scala:144)
	at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$4.apply(TreeNode.scala:162)
	at scala.collection.Iterator$$anon$11.next(Iterator.scala:328)
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
	at org.apache.spark.sql.catalyst.trees.TreeNode.transformChildrenDown(TreeNode.scala:191)
	at org.apache.spark.sql.catalyst.trees.TreeNode.transformDown(TreeNode.scala:147)
	at org.apache.spark.sql.catalyst.trees.TreeNode.transform(TreeNode.scala:135)
	at org.apache.spark.sql.catalyst.expressions.BindReferences$.bindReference(BoundAttribute.scala:46)
	at org.apache.spark.sql.catalyst.expressions.InterpretedMutableProjection$$anonfun$$init$$2.apply(Projection.scala:52)
	at org.apache.spark.sql.catalyst.expressions.InterpretedMutableProjection$$anonfun$$init$$2.apply(Projection.scala:52)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.immutable.List.foreach(List.scala:318)
	at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
	at scala.collection.AbstractTraversable.map(Traversable.scala:105)
	at org.apache.spark.sql.catalyst.expressions.InterpretedMutableProjection.<init>(Projection.scala:52)
	at org.apache.spark.sql.execution.SparkPlan$$anonfun$newMutableProjection$1.apply(SparkPlan.scala:106)
	at org.apache.spark.sql.execution.SparkPlan$$anonfun$newMutableProjection$1.apply(SparkPlan.scala:106)
	at org.apache.spark.sql.execution.Project$$anonfun$1.apply(basicOperators.scala:43)
	at org.apache.spark.sql.execution.Project$$anonfun$1.apply(basicOperators.scala:42)
	at org.apache.spark.rdd.RDD$$anonfun$13.apply(RDD.scala:599)
	at org.apache.spark.rdd.RDD$$anonfun$13.apply(RDD.scala:599)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
	at org.apache.spark.rdd.MappedRDD.compute(MappedRDD.scala:31)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:61)
	at org.apache.spark.scheduler.Task.run(Task.scala:56)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:182)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
Caused by: java.lang.RuntimeException: Couldn't find pythonUDF#2 in [a#0,pythonUDF#5]
	at scala.sys.package$.error(package.scala:27)
	at org.apache.spark.sql.catalyst.expressions.BindReferences$$anonfun$bindReference$1$$anonfun$applyOrElse$1.apply(BoundAttribute.scala:53)
	at org.apache.spark.sql.catalyst.expressions.BindReferences$$anonfun$bindReference$1$$anonfun$applyOrElse$1.apply(BoundAttribute.scala:47)
	at org.apache.spark.sql.catalyst.errors.package$.attachTree(package.scala:46)
	... 46 more
{code}


---

* [SPARK-3853](https://issues.apache.org/jira/browse/SPARK-3853) | *Major* | **JsonRDD does not support converting fields to type Timestamp**

create a SchemaRDD using 
eventsSchema = sqlContext.jsonRDD(jsonEventsRdd, schemaWithTimestampField)
eventsSchema.registerTempTable("events")
sqlContext.sql("select max(time\_field) from events")

Throws this exception:
scala.MatchError: TimestampType (of class org.apache.spark.sql.catalyst.types.TimestampType$)
        org.apache.spark.sql.json.JsonRDD$.enforceCorrectType(JsonRDD.scala:357)
        org.apache.spark.sql.json.JsonRDD$$anonfun$org$apache$spark$sql$json$JsonRDD$$asRow$1$$anonfun$apply$12.apply(JsonRDD.scala:391)
......


---

* [SPARK-3848](https://issues.apache.org/jira/browse/SPARK-3848) | *Blocker* | **yarn alpha doesn't build on master**

yarn alpha build was broken by https://github.com/apache/spark/pull/2432
as it added an argument to YarnAllocator but not to yarn/alpha YarnAllocationHandler


commit https://github.com/apache/spark/commit/79e45c9323455a51f25ed9acd0edd8682b4bbb88


---

* [SPARK-3845](https://issues.apache.org/jira/browse/SPARK-3845) | *Major* | **SQLContext(...) should inherit configurations from SparkContext**

It's very confusing that Spark configurations (e.g. spark.serializer, spark.speculation, etc.) can be set in the spark-default.conf file, while SparkSQL configurations (e..g spark.sql.inMemoryColumnarStorage.compressed, spark.sql.codegen, etc.) has to be set either in sqlContext.setConf or sql("SET ...").

When I do:

  val sqlContext = new org.apache.spark.sql.SQLContext(sparkContext)

I would expect sqlContext recognizes all the SQL configurations comes with sparkContext.

Jianshi


---

* [SPARK-3844](https://issues.apache.org/jira/browse/SPARK-3844) | *Trivial* | **Truncate appName in WebUI if it is too long**

If `appName` is too long, it may move off the navbar. We can put the full name inside `title` attribute while truncating the displayed name.


---

* [SPARK-3843](https://issues.apache.org/jira/browse/SPARK-3843) | *Trivial* | **Cleanup scalastyle.txt at the end of running dev/scalastyle**

dev/scalastyle create a log file 'scalastyle.txt'. it is overwrote per running but never deleted even though dev/mima and dev/lint-python delete their log files.


---

* [SPARK-3841](https://issues.apache.org/jira/browse/SPARK-3841) | *Minor* | **Pretty-print Params case classes for tests**

Provide a parent class for the Params case classes used in many MLlib examples, where the parent class pretty-prints the case class fields:
Param1Name	Param1Value
Param2Name	Param2Value
...
Using this class will make it easier to print test settings to logs.


---

* [SPARK-3840](https://issues.apache.org/jira/browse/SPARK-3840) | *Major* | **Spark EC2 templates fail when variables are missing**

For instance https://github.com/mesos/spark-ec2/pull/58 introduced this problem when AWS\_ACCESS\_KEY\_ID isn't set:

Configuring /root/shark/conf/shark-env.sh
Traceback (most recent call last):
  File "./deploy\_templates.py", line 91, in <module>
    text = text.replace("{{" + key + "}}", template\_vars[key])
TypeError: expected a character buffer object

This makes all the cluster configuration fail.


---

* [SPARK-3836](https://issues.apache.org/jira/browse/SPARK-3836) | *Minor* | **Spark REPL optionally propagate internal exceptions**

Optionally have the repl throw exceptions generated by interpreted code, instead of swallowing the exception and returning it as text output. This is useful when embedding the repl, otherwise it's not possible to know when user code threw an exception.


---

* [SPARK-3834](https://issues.apache.org/jira/browse/SPARK-3834) | *Blocker* | **Backticks not correctly handled in subquery aliases**

[~ravi.pesala]  assigning to you since you fixed the last problem here.  Let me know if you don't have time to work on this or if you have any questions.


---

* [SPARK-3832](https://issues.apache.org/jira/browse/SPARK-3832) | *Major* | **Upgrade Breeze dependency to 0.10**

In Breeze 0.10, the L1regParam can be configured through anonymous function in OWLQN, and each component can be penalized differently. This is required for GLMNET in MLlib with L1/L2 regularization. 

https://github.com/scalanlp/breeze/commit/2570911026aa05aa1908ccf7370bc19cd8808a4c


---

* [SPARK-3831](https://issues.apache.org/jira/browse/SPARK-3831) | *Major* | **Filter rule Improvement and bool expression optimization.**

If we write the filter which is always FALSE like

{code}
SELECT * from person WHERE FALSE;
{code}

200 tasks will run. I think, 1 task is enough.

And current optimizer cannot optimize the case NOT is duplicated like

{code}
SELECT * from person WHERE NOT ( NOT (age > 30));
{code}

The filter rule above should be simplified


---

* [SPARK-3829](https://issues.apache.org/jira/browse/SPARK-3829) | *Minor* | **Make Spark logo image on the header of HistoryPage as a link to HistoryPage's page #1**

There is a Spark logo on the header of HistoryPage.
We can have too many HistoryPages if we run 20+ applications. So I think, it's useful if the logo is as a link to the HistoryPage's page #1.


---

* [SPARK-3827](https://issues.apache.org/jira/browse/SPARK-3827) | *Minor* | **Very long RDD names are not rendered properly in web UI**

With Spark SQL we generate very long RDD names. These names are not properly rendered in the web UI.


---

* [SPARK-3826](https://issues.apache.org/jira/browse/SPARK-3826) | *Blocker* | **Support JDBC/ODBC server with Hive 0.13.1**

Now hive-thriftserver not support hive-0.13, to make it support both 0.12 and 0.13


---

* [SPARK-3825](https://issues.apache.org/jira/browse/SPARK-3825) | *Major* | **Log more information when unrolling a block fails**

We currently log only the following:
{code}
14/10/06 16:45:42 WARN CacheManager: Not enough space to cache partition rdd\_0\_2 in memory! Free memory is 481861527 bytes.
{code}
This is confusing, however, because "free memory" here means the amount of memory not occupied by blocks. It does not include the amount of memory reserved for unrolling.


---

* [SPARK-3824](https://issues.apache.org/jira/browse/SPARK-3824) | *Blocker* | **Spark SQL should cache in MEMORY\_AND\_DISK by default**

Spark SQL currently uses MEMORY\_ONLY as the default format. Due to the use of column buffers however, there is a huge cost to having to recompute blocks, much more so than Spark core. Especially since now we are more conservative about caching blocks and sometimes won't cache blocks we think might exceed memory, it seems good to keep persisted blocks on disk by default.


---

* [SPARK-3822](https://issues.apache.org/jira/browse/SPARK-3822) | *Major* | **Expose a mechanism for SparkContext to ask for / remove Yarn containers**

This is one of the core components for the umbrella issue SPARK-3174. Currently, the only agent in Spark that communicates directly with the RM is the AM. This means the only way for the SparkContext to ask for / remove containers from the RM is through the AM. The communication link between the SparkContext and the AM needs to be added.


---

* [SPARK-3816](https://issues.apache.org/jira/browse/SPARK-3816) | *Major* | **Add configureOutputJobPropertiesForStorageHandler to JobConf in SparkHadoopWriter**

It's similar to SPARK-2846. We should add PlanUtils.configureInputJobPropertiesForStorageHandler to SparkHadoopWriter, so that writer can add configuration from customized StorageHandler to JobConf


---

* [SPARK-3814](https://issues.apache.org/jira/browse/SPARK-3814) | *Minor* | **Support for Bitwise AND(&), OR(\|) ,XOR(^), NOT(~) in Spark HQL and SQL**

Error: java.lang.RuntimeException: 
Unsupported language features in query: select (case when bit\_field & 1=1 then r\_end - r\_start else NULL end) from mytable where pkey='0178-2014-07' LIMIT 2
TOK\_QUERY
  TOK\_FROM
    TOK\_TABREF
      TOK\_TABNAME
       mytable 
  TOK\_INSERT
    TOK\_DESTINATION
      TOK\_DIR
        TOK\_TMP\_FILE
    TOK\_SELECT
      TOK\_SELEXPR
        TOK\_FUNCTION
          when
          =
            &
              TOK\_TABLE\_OR\_COL
                bit\_field
              1
            1
          -
            TOK\_TABLE\_OR\_COL
              r\_end
            TOK\_TABLE\_OR\_COL
              r\_start
          TOK\_NULL
    TOK\_WHERE
      =
        TOK\_TABLE\_OR\_COL
          pkey
        '0178-2014-07'
    TOK\_LIMIT
      2


SQLState:  null
ErrorCode: 0


---

* [SPARK-3813](https://issues.apache.org/jira/browse/SPARK-3813) | *Major* | **Support "case when" conditional functions in Spark SQL**

The SQL queries which has following conditional functions are not supported in Spark SQL.
{code}
CASE a WHEN b THEN c [WHEN d THEN e]* [ELSE f] END
CASE WHEN a THEN b [WHEN c THEN d]* [ELSE e] END
{code}
The same functions can work in Spark HiveQL.


---

* [SPARK-3811](https://issues.apache.org/jira/browse/SPARK-3811) | *Minor* | **More robust / standard Utils.deleteRecursively, Utils.createTempDir**

I noticed a few issues with how temp directories are created and deleted:

*Minor*

* Guava's {{Files.createTempDir()}} plus {{File.deleteOnExit()}} is used in many tests to make a temp dir, but {{Utils.createTempDir()}} seems to be the standard Spark mechanism
* Call to {{File.deleteOnExit()}} could be pushed into {{Utils.createTempDir()}} as well, along with this replacement.
* \_I messed up the message in an exception in {{Utils}} in SPARK-3794; fixed here\_

*Bit Less Minor*

* {{Utils.deleteRecursively()}} fails immediately if any {{IOException}} occurs, instead of trying to delete any remaining files and subdirectories. I've observed this leave temp dirs around. I suggest changing it to continue in the face of an exception and throw one of the possibly several exceptions that occur at the end.
* {{Utils.createTempDir()}} will add a JVM shutdown hook every time the method is called. Even if the subdir is the parent of another parent dir, since this check is inside the hook. However {{Utils}} manages a set of all dirs to delete on shutdown already, called {{shutdownDeletePaths}}. A single hook can be registered to delete all of these on exit. This is how Tachyon temp paths are cleaned up in {{TachyonBlockManager}}.

I noticed a few other things that might be changed but wanted to ask first:

* Shouldn't the set of dirs to delete be {{File}}, not just {{String}} paths?
* {{Utils}} manages the set of {{TachyonFile}} that have been registered for deletion, but the shutdown hook is managed in {{TachyonBlockManager}}. Should this logic not live together, and not in {{Utils}}? it's more specific to Tachyon, and looks a slight bit odd to import in such a generic place.


---

* [SPARK-3810](https://issues.apache.org/jira/browse/SPARK-3810) | *Minor* | **Rule PreInsertionCasts doesn't handle partitioned table properly**

This issue can be reproduced by the following {{sbt/sbt hive/console}} session:
{code}
scala> loadTestTable("src")
...
scala> loadTestTable("srcpart")
...
scala> sql("INSERT INTO TABLE srcpart PARTITION (ds='1', hr='2') SELECT key, value FROM src").queryExecution
...
== Parsed Logical Plan ==
InsertIntoTable (UnresolvedRelation None, srcpart, None), Map(ds -> Some(hello), hr -> Some(world)), false
 Project ['key,'value]
  UnresolvedRelation None, src, None

== Analyzed Logical Plan ==
InsertIntoTable (MetastoreRelation default, srcpart, None), Map(ds -> Some(hello), hr -> Some(world)), false
 Project [key#50,value#51]
  Project [key#50,value#51]
   Project [key#50,value#51]
    Project [key#50,value#51]
     Project [key#50,value#51]
      Project [key#50,value#51]
       Project [key#50,value#51]
        Project [key#50,value#51]
         Project [key#50,value#51]
          Project [key#50,value#51]
           Project [key#50,value#51]
            Project [key...
{code}


---

* [SPARK-3809](https://issues.apache.org/jira/browse/SPARK-3809) | *Major* | **make HiveThriftServer2Suite work correctly**

Currently HiveThriftServer2Suite is a fake one, actually HiveThriftServer not started there


---

* [SPARK-3808](https://issues.apache.org/jira/browse/SPARK-3808) | *Blocker* | **PySpark fails to start in Windows**

When we execute bin\pyspark.cmd in Windows, it fails to start.
We get following messages.
{noformat}
C:\XXXX>bin\pyspark.cmd
Running C:\XXXX\python.exe with PYTHONPATH=C:\XXXX\bin\..\python\lib\py4j-0.8.2.1-src.zip;C:\XXXX\bin\..\python;
Python 2.7.8 (default, Jun 30 2014, 16:03:49) [MSC v.1500 32 bit (Intel)] on win32
Type "help", "copyright", "credits" or "license" for more information.
="x" was unexpected at this time.
Traceback (most recent call last):
  File "C:\XXXX\bin\..\python\pyspark\shell.py", line 45, in <module>
    sc = SparkContext(appName="PySparkShell", pyFiles=add\_files)
  File "C:\XXXX\python\pyspark\context.py", line 103, in \_\_init\_\_
    SparkContext.\_ensure\_initialized(self, gateway=gateway)
  File "C:\XXXX\python\pyspark\context.py", line 212, in \_ensure\_initialized
    SparkContext.\_gateway = gateway or launch\_gateway()
  File "C:\XXXX\python\pyspark\java\_gateway.py", line 71, in launch\_gateway
    raise Exception(error\_msg)
Exception: Launching GatewayServer failed with exit code 255!
Warning: Expected GatewayServer to output a port, but found no output.

>>>
{noformat}


---

* [SPARK-3807](https://issues.apache.org/jira/browse/SPARK-3807) | *Major* | **SparkSql does not work for tables created using custom serde**

SparkSql crashes on selecting tables using custom serde. 

Example:
----------------

CREATE EXTERNAL TABLE table\_name PARTITIONED BY ( a int) ROW FORMAT 'SERDE "org.apache.hadoop.hive.serde2.thrift.ThriftDeserializer" with serdeproperties("serialization.format"="org.apache.thrift.protocol.TBinaryProtocol","serialization.class"="ser\_class") STORED AS SEQUENCEFILE;

The following exception is seen on running a query like 'select * from table\_name limit 1': 

ERROR CliDriver: org.apache.hadoop.hive.serde2.SerDeException: java.lang.NullPointerException 
at org.apache.hadoop.hive.serde2.thrift.ThriftDeserializer.initialize(ThriftDeserializer.java:68) 
at org.apache.hadoop.hive.ql.plan.TableDesc.getDeserializer(TableDesc.java:80) 
at org.apache.spark.sql.hive.execution.HiveTableScan.addColumnMetadataToConf(HiveTableScan.scala:86) 
at org.apache.spark.sql.hive.execution.HiveTableScan.<init>(HiveTableScan.scala:100) 
at org.apache.spark.sql.hive.HiveStrategies$HiveTableScans$$anonfun$14.apply(HiveStrategies.scala:188) 
at org.apache.spark.sql.hive.HiveStrategies$HiveTableScans$$anonfun$14.apply(HiveStrategies.scala:188) 
at org.apache.spark.sql.SQLContext$SparkPlanner.pruneFilterProject(SQLContext.scala:364) 
at org.apache.spark.sql.hive.HiveStrategies$HiveTableScans$.apply(HiveStrategies.scala:184) 
at org.apache.spark.sql.catalyst.planning.QueryPlanner$$anonfun$1.apply(QueryPlanner.scala:58) 
at org.apache.spark.sql.catalyst.planning.QueryPlanner$$anonfun$1.apply(QueryPlanner.scala:58) 
at scala.collection.Iterator$$anon$13.hasNext(Iterator.scala:371) 
at org.apache.spark.sql.catalyst.planning.QueryPlanner.apply(QueryPlanner.scala:59) 
at org.apache.spark.sql.catalyst.planning.QueryPlanner.planLater(QueryPlanner.scala:54) 
at org.apache.spark.sql.execution.SparkStrategies$BasicOperators$.apply(SparkStrategies.scala:280) 
at org.apache.spark.sql.catalyst.planning.QueryPlanner$$anonfun$1.apply(QueryPlanner.scala:58) 
at org.apache.spark.sql.catalyst.planning.QueryPlanner$$anonfun$1.apply(QueryPlanner.scala:58) 
at scala.collection.Iterator$$anon$13.hasNext(Iterator.scala:371) 
at org.apache.spark.sql.catalyst.planning.QueryPlanner.apply(QueryPlanner.scala:59) 
at org.apache.spark.sql.SQLContext$QueryExecution.sparkPlan$lzycompute(SQLContext.scala:402) 
at org.apache.spark.sql.SQLContext$QueryExecution.sparkPlan(SQLContext.scala:400) 
at org.apache.spark.sql.SQLContext$QueryExecution.executedPlan$lzycompute(SQLContext.scala:406) 
at org.apache.spark.sql.SQLContext$QueryExecution.executedPlan(SQLContext.scala:406) 
at org.apache.spark.sql.hive.HiveContext$QueryExecution.stringResult(HiveContext.scala:406) 
at org.apache.spark.sql.hive.thriftserver.SparkSQLDriver.run(SparkSQLDriver.scala:59) 
at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver.processCmd(SparkSQLCLIDriver.scala:291) 
at org.apache.hadoop.hive.cli.CliDriver.processLine(CliDriver.java:413) 
at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver$.main(SparkSQLCLIDriver.scala:226) 
at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver.main(SparkSQLCLIDriver.scala) 
at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method) 
at sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source) 
at sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source) 
at java.lang.reflect.Method.invoke(Unknown Source) 
at org.apache.spark.deploy.SparkSubmit$.launch(SparkSubmit.scala:328) 
at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:75) 
at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala) 
Caused by: java.lang.NullPointerException


After fixing this issue, when some columns in the table were referred in the query, sparksql could not resolve those references.


---

* [SPARK-3806](https://issues.apache.org/jira/browse/SPARK-3806) | *Major* | **minor bug in CliSuite**

Clisuite throw exception as follows:
Exception in thread "Thread-6" java.lang.IndexOutOfBoundsException: 6
	at scala.collection.mutable.ResizableArray$class.apply(ResizableArray.scala:43)
	at scala.collection.mutable.ArrayBuffer.apply(ArrayBuffer.scala:47)
	at org.apache.spark.sql.hive.thriftserver.CliSuite.org$apache$spark$sql$hive$thriftserver$CliSuite$$captureOutput$1(CliSuite.scala:67)
	at org.apache.spark.sql.hive.thriftserver.CliSuite$$anonfun$4.apply(CliSuite.scala:78)
	at org.apache.spark.sql.hive.thriftserver.CliSuite$$anonfun$4.apply(CliSuite.scala:78)
	at scala.sys.process.ProcessLogger$$anon$1.out(ProcessLogger.scala:96)
	at scala.sys.process.BasicIO$$anonfun$processOutFully$1.apply(BasicIO.scala:135)
	at scala.sys.process.BasicIO$$anonfun$processOutFully$1.apply(BasicIO.scala:135)
	at scala.sys.process.BasicIO$.readFully$1(BasicIO.scala:175)
	at scala.sys.process.BasicIO$.processLinesFully(BasicIO.scala:179)
	at scala.sys.process.BasicIO$$anonfun$processFully$1.apply(BasicIO.scala:164)
	at scala.sys.process.BasicIO$$anonfun$processFully$1.apply(BasicIO.scala:162)
	at scala.sys.process.ProcessBuilderImpl$Simple$$anonfun$3.apply$mcV$sp(ProcessBuilderImpl.scala:73)
	at scala.sys.process.ProcessImpl$Spawn$$anon$1.run(ProcessImpl.scala:22)


---

* [SPARK-3803](https://issues.apache.org/jira/browse/SPARK-3803) | *Major* | **ArrayIndexOutOfBoundsException found in executing computePrincipalComponents**

When I executed computePrincipalComponents method of RowMatrix, I got java.lang.ArrayIndexOutOfBoundsException.

{code}
14/10/05 20:16:31 INFO DAGScheduler: Failed to run reduce at RDDFunctions.scala:111
org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 31.0 failed 1 times, most recent failure: Lost task 0.0 in stage 31.0 (TID 611, localhost): java.lang.ArrayIndexOutOfBoundsException: 4878161
        org.apache.spark.mllib.linalg.distributed.RowMatrix$.org$apache$spark$mllib$linalg$distributed$RowMatrix$$dspr(RowMatrix.scala:460)
        org.apache.spark.mllib.linalg.distributed.RowMatrix$$anonfun$3.apply(RowMatrix.scala:114)
        org.apache.spark.mllib.linalg.distributed.RowMatrix$$anonfun$3.apply(RowMatrix.scala:113)
        scala.collection.TraversableOnce$$anonfun$foldLeft$1.apply(TraversableOnce.scala:144)
        scala.collection.TraversableOnce$$anonfun$foldLeft$1.apply(TraversableOnce.scala:144)
        scala.collection.Iterator$class.foreach(Iterator.scala:727)
        scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
        scala.collection.TraversableOnce$class.foldLeft(TraversableOnce.scala:144)
        scala.collection.AbstractIterator.foldLeft(Iterator.scala:1157)
        scala.collection.TraversableOnce$class.aggregate(TraversableOnce.scala:201)
        scala.collection.AbstractIterator.aggregate(Iterator.scala:1157)
        org.apache.spark.mllib.rdd.RDDFunctions$$anonfun$4.apply(RDDFunctions.scala:99)
        org.apache.spark.mllib.rdd.RDDFunctions$$anonfun$4.apply(RDDFunctions.scala:99)
        org.apache.spark.mllib.rdd.RDDFunctions$$anonfun$5.apply(RDDFunctions.scala:100)
        org.apache.spark.mllib.rdd.RDDFunctions$$anonfun$5.apply(RDDFunctions.scala:100)
        org.apache.spark.rdd.RDD$$anonfun$13.apply(RDD.scala:596)
        org.apache.spark.rdd.RDD$$anonfun$13.apply(RDD.scala:596)
        org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
        org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
        org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
        org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
        org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:68)
        org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:41)
        org.apache.spark.scheduler.Task.run(Task.scala:54)
        org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:177)
        java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        java.lang.Thread.run(Thread.java:745)
{code}

The RowMatrix instance was generated from the result of TF-IDF like the following.

{code}
scala> val hashingTF = new HashingTF()
scala> val tf = hashingTF.transform(texts)
scala> import org.apache.spark.mllib.feature.IDF
scala> tf.cache()
scala> val idf = new IDF().fit(tf)
scala> val tfidf: RDD[Vector] = idf.transform(tf)

scala> import org.apache.spark.mllib.linalg.distributed.RowMatrix
scala> val mat = new RowMatrix(tfidf)
scala> val pc = mat.computePrincipalComponents(2)
{code}

I think this was because I created HashingTF instance with default numFeatures and Array is used in RowMatrix#computeGramianMatrix method
like the following.

{code}
  /**
   * Computes the Gramian matrix `A^T A`.
   */
  def computeGramianMatrix(): Matrix = {
    val n = numCols().toInt
    val nt: Int = n * (n + 1) / 2

    // Compute the upper triangular part of the gram matrix.
    val GU = rows.treeAggregate(new BDV[Double](new Array[Double](nt)))(
      seqOp = (U, v) => {
        RowMatrix.dspr(1.0, v, U.data)
        U
      }, combOp = (U1, U2) => U1 += U2)

    RowMatrix.triuToFull(n, GU.data)
  }
{code} 

When the size of Vectors generated by TF-IDF is too large, it makes "nt" to have undesirable value (and undesirable size of Array used in treeAggregate),
since n * (n + 1) / 2 exceeded Int.MaxValue.


Is this surmise correct?

And, of course, I could avoid this situation by creating instance of HashingTF with smaller numFeatures.
But this may not be fundamental solution.


---

* [SPARK-3800](https://issues.apache.org/jira/browse/SPARK-3800) | *Critical* | **BindingException when grouping on nested fields**

Query to reproduce by [~ekhliang]
{code}
select attribute, sum(cnt)
from (
  select nested.attribute, count(*) as cnt
  from rows
  group by nested.attribute) a
group by attribute
{code}


---

* [SPARK-3798](https://issues.apache.org/jira/browse/SPARK-3798) | *Blocker* | **Corrupted projection in Generator**

In some cases it is possible for the output of a generator to change, resulting in a corrupted projection and thus incorrect data from a query that uses a generator (e.g., LATERAL VIEW explode).


---

* [SPARK-3797](https://issues.apache.org/jira/browse/SPARK-3797) | *Major* | **Run the shuffle service inside the YARN NodeManager as an AuxiliaryService**

It's also worth considering running the shuffle service in a YARN container beside the executor(s) on each node.


---

* [SPARK-3796](https://issues.apache.org/jira/browse/SPARK-3796) | *Major* | **Create shuffle service for external block storage**

This task will be broken up into two parts -- the first, being to refactor our internal shuffle service to use a BlockTransferService which we can easily extract out into its own service, and then the second is to actually do the extraction.

Here is the design document for the low-level service, nicknamed "Sluice", on top of which will be Spark's BlockTransferService API:
https://docs.google.com/document/d/1zKf3qloBu3dmv2AFyQTwEpumWRPUT5bcAUKB5PGNfx0


---

* [SPARK-3795](https://issues.apache.org/jira/browse/SPARK-3795) | *Major* | **Add scheduler hooks/heuristics for adding and removing executors**

To support dynamic scaling of a Spark application, Spark's scheduler will need to have hooks around explicitly decommissioning executors. We'll also need basic heuristics governing when to start/stop executors based on load. An initial goal is to keep this very simple.


---

* [SPARK-3794](https://issues.apache.org/jira/browse/SPARK-3794) | *Major* | **Building spark core fails due to inadvertent dependency on Commons IO**

At the commit cf1d32e3e1071829b152d4b597bf0a0d7a5629a2, building spark core result in compilation error when we specify some hadoop versions.

To reproduce this issue, we should execute following command with <hadoop.version>=1.1.0, 1.1.1, 1.1.2, 1.2.0, 1.2.1, or 2.2.0.

{noformat}
$ cd ./core
$ mvn -Dhadoop.version=<hadoop.version> -DskipTests clean compile
...
[ERROR] /Users/tomohiko/MyRepos/Scala/spark/core/src/main/scala/org/apache/spark/util/Utils.scala:720: value listFilesAndDirs is not a member of object org.apache.commons.io.FileUtils
[ERROR]       val files = FileUtils.listFilesAndDirs(dir, TrueFileFilter.TRUE, TrueFileFilter.TRUE)
[ERROR]                             ^
{noformat}

Because that compilation uses commons-io version 2.1 and FileUtils#listFilesAndDirs method was added at commons-io version 2.2, this compilation always fails.

FileUtils#listFilesAndDirs → http://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#listFilesAndDirs%28java.io.File,%20org.apache.commons.io.filefilter.IOFileFilter,%20org.apache.commons.io.filefilter.IOFileFilter%29

Because a hadoop-client in those problematic version depends on commons-io 2.1 not 2.4, we should have assumption that commons-io is version 2.1.


---

* [SPARK-3791](https://issues.apache.org/jira/browse/SPARK-3791) | *Major* | **HiveThriftServer2 returns 0.12.0 to ODBC SQLGetInfo call**

The "DBMS Server version" should be Spark version rather than Hive version:
{code}
...
{"ts":"2014-10-03T07:01:21.679","pid":23188,"tid":"2034","sev":"info","req":"-","sess":"-","site":"-","user":"-","k":"msg","v":"GenericODBCProtocol: DBMS Server version: 0.12.0"}
...
{code}


---

* [SPARK-3790](https://issues.apache.org/jira/browse/SPARK-3790) | *Major* | **CosineSimilarity via DIMSUM example**

Create an example that gives approximation error for DIMSUM using arbitrary RowMatrix given via commandline.

PR tracking this:
https://github.com/apache/spark/pull/2622


---

* [SPARK-3788](https://issues.apache.org/jira/browse/SPARK-3788) | *Major* | **Yarn dist cache code is not friendly to HDFS HA, Federation**

There are two bugs here.

1. The {{compareFs()}} method in ClientBase considers the 'host' part of the URI to be an actual host. In the case of HA and Federation, that's a namespace name, which doesn't resolve to anything. So in those cases, {{compareFs()}} always says the file systems are different.

2. In {{prepareLocalResources()}}, when adding a file to the distributed cache, that is done with the common FileSystem object instantiated at the start of the method. In the case of Federation that doesn't work: the qualified URL's scheme may differ from the non-qualified one, so the FileSystem instance will not work.

Fixes are pretty trivial.


---

* [SPARK-3786](https://issues.apache.org/jira/browse/SPARK-3786) | *Major* | **Speedup tests of PySpark**

It takes about 20 minutes (about 25% of all the tests) to run all the tests of PySpark.

The slowest ones are tests.py and streaming/tests.py, they create new JVM and SparkContext for each test cases, it will be faster to reuse the SparkContext for most of cases.


---

* [SPARK-3783](https://issues.apache.org/jira/browse/SPARK-3783) | *Minor* | **The type parameters for SparkContext.accumulable are inconsistent Accumulable itself**

SparkContext.accumulable takes type parameters [T, R] - and passes them to accumulable, in that order.
Accumulable takes type parameters [R, T].
So T for SparkContext.accumulable corresponds with R for Accumulable and vice versa.
Minor, but very confusing.


---

* [SPARK-3780](https://issues.apache.org/jira/browse/SPARK-3780) | *Major* | **YarnAllocator should look at the container completed diagnostic message**

Yarn will give us a diagnostic message along with a container complete notification. We should print that diagnostic message for the spark user.  

For instance, I believe if it the container gets shot for being over its memory limit yarn would give us a useful diagnostic saying that.  This would be really useful for the user to be able to see.


---

* [SPARK-3777](https://issues.apache.org/jira/browse/SPARK-3777) | *Minor* | **Display "Executor ID" for Tasks in Stage page**

Now the Stage page only displays "Executor"(host) for tasks. However, there may be more than one Executors running in the same host. Currently, when some task is hung, I only know the host of the faulty executor. Therefore I have to check all executors in the host.

Adding "Executor ID" would be helpful to locate the faulty executor.


---

* [SPARK-3776](https://issues.apache.org/jira/browse/SPARK-3776) | *Major* | **Wrong conversion to Catalyst for Option[Product]**

Method ScalaReflection.convertToCatalyst make wrong conversion for Option[Product] data.
For example:
case class A(intValue: Int)
case class B(optionA: Option[A])
val b = B(Some(A(5)))
ScalaReflection.convertToCatalyst(b) returns Seq(A(5)) instead of Seq(Seq(5))


---

* [SPARK-3775](https://issues.apache.org/jira/browse/SPARK-3775) | *Trivial* | **Not suitable error message in spark-shell.cmd**

In Windows environment.
When we execute bin\spark-shell.cmd before we build spark, we get the error message like this.

{quote}
Failed to find Spark assembly JAR.
You need to build Spark with sbt\sbt assembly before running this program.
{quote}

But this message is not suitable because ...
* Maven is also available to build Spark, and it works in Windows without cygwin now ([SPARK-3061]).
* The equivalent error message of linux version (bin/spark-shell) doesn't mention the way to build.
bq. You need to build Spark before running this program.
* sbt\sbt can't be executed in Windows without cygwin because it's bash script.

So this message should be modified as same as the linux version.


---

* [SPARK-3774](https://issues.apache.org/jira/browse/SPARK-3774) | *Trivial* | **typo comment in bin/utils.sh**

typo comment in bin/utils.sh

{code}
# Gather all all spark-submit options into SUBMISSION\_OPTS
{code}


---

* [SPARK-3773](https://issues.apache.org/jira/browse/SPARK-3773) | *Minor* | **Sphinx build warnings**

When building Sphinx documents for PySpark, we have 12 warnings.
Their causes are almost docstrings in broken ReST format.

To reproduce this issue, we should run following commands on the commit: 6e27cb630de69fa5acb510b4e2f6b980742b1957.

{quote}
$ cd ./python/docs
$ make clean html
...
/Users/<user>/MyRepos/Scala/spark/python/pyspark/\_\_init\_\_.py:docstring of pyspark.SparkContext.sequenceFile:4: ERROR: Unexpected indentation.
/Users/<user>/MyRepos/Scala/spark/python/pyspark/\_\_init\_\_.py:docstring of pyspark.RDD.saveAsSequenceFile:4: ERROR: Unexpected indentation.
/Users/<user>/MyRepos/Scala/spark/python/pyspark/mllib/classification.py:docstring of pyspark.mllib.classification.LogisticRegressionWithSGD.train:14: ERROR: Unexpected indentation.
/Users/<user>/MyRepos/Scala/spark/python/pyspark/mllib/classification.py:docstring of pyspark.mllib.classification.LogisticRegressionWithSGD.train:16: WARNING: Definition list ends without a blank line; unexpected unindent.
/Users/<user>/MyRepos/Scala/spark/python/pyspark/mllib/classification.py:docstring of pyspark.mllib.classification.LogisticRegressionWithSGD.train:17: WARNING: Block quote ends without a blank line; unexpected unindent.
/Users/<user>/MyRepos/Scala/spark/python/pyspark/mllib/classification.py:docstring of pyspark.mllib.classification.SVMWithSGD.train:14: ERROR: Unexpected indentation.
/Users/<user>/MyRepos/Scala/spark/python/pyspark/mllib/classification.py:docstring of pyspark.mllib.classification.SVMWithSGD.train:16: WARNING: Definition list ends without a blank line; unexpected unindent.
/Users/<user>/MyRepos/Scala/spark/python/pyspark/mllib/classification.py:docstring of pyspark.mllib.classification.SVMWithSGD.train:17: WARNING: Block quote ends without a blank line; unexpected unindent.
/Users/<user>/MyRepos/Scala/spark/python/docs/pyspark.mllib.rst:50: WARNING: missing attribute mentioned in :members: or \_\_all\_\_: module pyspark.mllib.regression, attribute RidgeRegressionModelLinearRegressionWithSGD
/Users/<user>/MyRepos/Scala/spark/python/pyspark/mllib/tree.py:docstring of pyspark.mllib.tree.DecisionTreeModel.predict:3: ERROR: Unexpected indentation.
...
checking consistency... /Users/<user>/MyRepos/Scala/spark/python/docs/modules.rst:: WARNING: document isn't included in any toctree
...
copying static files... WARNING: html\_static\_path entry u'/Users/<user>/MyRepos/Scala/spark/python/docs/\_static' does not exist
...
build succeeded, 12 warnings.
{quote}


---

* [SPARK-3772](https://issues.apache.org/jira/browse/SPARK-3772) | *Major* | **RDD operation on IPython REPL failed with an illegal port number**

To reproduce this issue, we should execute following commands on the commit: 6e27cb630de69fa5acb510b4e2f6b980742b1957.

{quote}
$ PYSPARK\_PYTHON=ipython ./bin/pyspark
...
In [1]: file = sc.textFile('README.md')
In [2]: file.first()
...
14/10/03 08:50:13 WARN NativeCodeLoader: Unable to load native-hadoop library for your platform... using builtin-java classes where applicable
14/10/03 08:50:13 WARN LoadSnappy: Snappy native library not loaded
14/10/03 08:50:13 INFO FileInputFormat: Total input paths to process : 1
14/10/03 08:50:13 INFO SparkContext: Starting job: runJob at PythonRDD.scala:334
14/10/03 08:50:13 INFO DAGScheduler: Got job 0 (runJob at PythonRDD.scala:334) with 1 output partitions (allowLocal=true)
14/10/03 08:50:13 INFO DAGScheduler: Final stage: Stage 0(runJob at PythonRDD.scala:334)
14/10/03 08:50:13 INFO DAGScheduler: Parents of final stage: List()
14/10/03 08:50:13 INFO DAGScheduler: Missing parents: List()
14/10/03 08:50:13 INFO DAGScheduler: Submitting Stage 0 (PythonRDD[2] at RDD at PythonRDD.scala:44), which has no missing parents
14/10/03 08:50:13 INFO MemoryStore: ensureFreeSpace(4456) called with curMem=57388, maxMem=278019440
14/10/03 08:50:13 INFO MemoryStore: Block broadcast\_1 stored as values in memory (estimated size 4.4 KB, free 265.1 MB)
14/10/03 08:50:13 INFO DAGScheduler: Submitting 1 missing tasks from Stage 0 (PythonRDD[2] at RDD at PythonRDD.scala:44)
14/10/03 08:50:13 INFO TaskSchedulerImpl: Adding task set 0.0 with 1 tasks
14/10/03 08:50:13 INFO TaskSetManager: Starting task 0.0 in stage 0.0 (TID 0, localhost, PROCESS\_LOCAL, 1207 bytes)
14/10/03 08:50:13 INFO Executor: Running task 0.0 in stage 0.0 (TID 0)
14/10/03 08:50:14 ERROR Executor: Exception in task 0.0 in stage 0.0 (TID 0)
java.lang.IllegalArgumentException: port out of range:1027423549
	at java.net.InetSocketAddress.checkPort(InetSocketAddress.java:143)
	at java.net.InetSocketAddress.<init>(InetSocketAddress.java:188)
	at java.net.Socket.<init>(Socket.java:244)
	at org.apache.spark.api.python.PythonWorkerFactory.createSocket$1(PythonWorkerFactory.scala:75)
	at org.apache.spark.api.python.PythonWorkerFactory.liftedTree1$1(PythonWorkerFactory.scala:90)
	at org.apache.spark.api.python.PythonWorkerFactory.createThroughDaemon(PythonWorkerFactory.scala:89)
	at org.apache.spark.api.python.PythonWorkerFactory.create(PythonWorkerFactory.scala:62)
	at org.apache.spark.SparkEnv.createPythonWorker(SparkEnv.scala:100)
	at org.apache.spark.api.python.PythonRDD.compute(PythonRDD.scala:71)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:61)
	at org.apache.spark.scheduler.Task.run(Task.scala:56)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:182)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:744)
{quote}


---

* [SPARK-3771](https://issues.apache.org/jira/browse/SPARK-3771) | *Major* | **AppendingParquetOutputFormat should use reflection to prevent from breaking binary-compatibility.**

Original problem is [SPARK-3764|https://issues.apache.org/jira/browse/SPARK-3764].

{{AppendingParquetOutputFormat}} uses a binary-incompatible method {{context.getTaskAttemptID}}.
This causes binary-incompatible of Spark itself, i.e. if Spark itself is built against hadoop-1, the artifact is for only hadoop-1, and vice versa.


---

* [SPARK-3770](https://issues.apache.org/jira/browse/SPARK-3770) | *Major* | **The userFeatures RDD from MatrixFactorizationModel isn't accessible from the python bindings**

We need access to the underlying latent user features from python.  However, the userFeatures RDD from the MatrixFactorizationModel isn't accessible from the python bindings.  I've fixed this with a PR that I'll submit shortly that adds a method to the underlying scala class to turn the RDD[(Int, Array[Double])] to an RDD[String].  This is then accessed from the python recommendation.py


---

* [SPARK-3768](https://issues.apache.org/jira/browse/SPARK-3768) | *Major* | **Modify default YARN memory\_overhead-- from an additive constant to a multiplier**

Related to #894 and https://issues.apache.org/jira/browse/SPARK-2398 Experiments show that memory\_overhead grows with container size. The multiplier has been experimentally obtained and can potentially be improved over time.


https://github.com/apache/spark/pull/2485


---

* [SPARK-3763](https://issues.apache.org/jira/browse/SPARK-3763) | *Trivial* | **The example of building with sbt should be "sbt assembly" instead of "sbt compile"**

In building-spark.md, there are some examples for making assembled package with maven but the example for building with sbt is only about for compiling.


---

* [SPARK-3762](https://issues.apache.org/jira/browse/SPARK-3762) | *Critical* | **clear all SparkEnv references after stop**

SparkEnv is cached in ThreadLocal object, so after stop and create a new SparkContext, old SparkEnv is still used by some threads, it will trigger many problems.

We should clear all the references after stop a SparkEnv.


---

* [SPARK-3759](https://issues.apache.org/jira/browse/SPARK-3759) | *Minor* | **SparkSubmitDriverBootstrapper should return exit code of driver process**

SparkSubmitDriverBootstrapper.scala currently always returns exit code 0. Instead, it should return the exit code of the driver process.

Suggested code change in SparkSubmitDriverBootstrapper, line 157: 

{code}
val returnCode = process.waitFor()
sys.exit(returnCode)
{code}

Workaround for this issue: 
Instead of specifying 'driver.extra*' properties in spark-defaults.conf, pass these properties to spark-submit directly. This will launch the driver program without the use of SparkSubmitDriverBootstrapper.


---

* [SPARK-3757](https://issues.apache.org/jira/browse/SPARK-3757) | *Trivial* | **mvn clean doesn't delete some files**

When we build spak using {{mvn package}},
{{/python/lib/py4j-0.8.2.1-src.zip}} is unzipped and some py4j files (*.py) are created into {{/python/build/}}.
But this directory and these files are not deleted while {{mvn clean}}.


---

* [SPARK-3756](https://issues.apache.org/jira/browse/SPARK-3756) | *Major* | **Include possible MultiException when detecting port collisions**

a tiny bug in method  isBindCollision


---

* [SPARK-3755](https://issues.apache.org/jira/browse/SPARK-3755) | *Major* | **Do not bind port 1 - 1024 to server in spark**

Non-root user use port 1- 1024 to start jetty server will get the exception " java.net.SocketException: Permission denied"


---

* [SPARK-3751](https://issues.apache.org/jira/browse/SPARK-3751) | *Minor* | **DecisionTreeRunner functionality improvement**

DecisionTreeRunner functionality additions:
* Allow user to pass in a test dataset
* Do not print full model if the model is too large.

As part of this, modify DecisionTreeModel and RandomForestModel to allow printing less info.  Proposed updates:
* toString: prints model summary
* toDebugString: prints full model (named after RDD.toDebugString)

Similar update to Python API:
* \_\_repr\_\_() now prints a model summary
* toDebugString() now prints the full model


---

* [SPARK-3749](https://issues.apache.org/jira/browse/SPARK-3749) | *Critical* | **Bugs in broadcast  of large RDD**

1. broadcast is triggle unexpected
2. fd is leaked in JVM
3. broadcast is not unpersisted in JVM


---

* [SPARK-3748](https://issues.apache.org/jira/browse/SPARK-3748) | *Minor* | **Log thread name in unit test logs**

Thread names are often useful for correlating failures.


---

* [SPARK-3747](https://issues.apache.org/jira/browse/SPARK-3747) | *Major* | **TaskResultGetter could incorrectly abort a stage if it cannot get result for a specific task**

There is a "return" in logUncaughtExceptions, but we are catching all Exceptions. Instead, we should be catching NonFatal.


---

* [SPARK-3745](https://issues.apache.org/jira/browse/SPARK-3745) | *Major* | **curl on maven search repo (apache rat) url returns search status, not jar file**

in spark/dev/check-license, there are four attempts to download the apache rat jar from maven:

{noformat}
  URL1="http://search.maven.org/remotecontent?filepath=org/apache/rat/apache-rat/${RAT\_VERSION}/apache-rat-${RAT\_VERSION}.jar"
  URL2="http://repo1.maven.org/maven2/org/apache/rat/apache-rat/${RAT\_VERSION}/apache-rat-${RAT\_VERSION}.jar"

*snip*

    if hash curl 2>/dev/null; then
      (curl --silent ${URL1} > "$JAR\_DL" || curl --silent ${URL2} > "$JAR\_DL") && mv "$JAR\_DL" "$JAR"
    elif hash wget 2>/dev/null; then
      (wget --quiet ${URL1} -O "$JAR\_DL" || wget --quiet ${URL2} -O "$JAR\_DL") && mv "$JAR\_DL" "$JAR"
{noformat}

the first attempt is on the search repo via curl, which returns a "YEP!  WE FOUND IT!" html blob:

{noformat}
[root@test01 sknapp]# curl --silent http://search.maven.org/remotecontent?filepath=org/apache/rat/apache-rat/0.10/apache-rat-0.10.jar > test.part
[root@test01 sknapp]# cat test.part
<html>
<head><title>302 Found</title></head>
<body bgcolor="white">
<center><h1>302 Found</h1></center>
<hr><center>nginx/0.8.55</center>
</body>
</html>
{noformat}

this is failing to DL for EVERY time the test is run.  i've run curl on the 2nd url, which points at the repo itself and it successfully downloads.  wget does the correct thing for both URLs.

there is also no error checking on the downloaded file, short of file existence.

potential fixes, in no particular order:
1) run unzip -tq ${$JAR}, check for 0 exist status to ensure it's a compressed archive
2) run wget before curl
3) only run curl on the 2nd URL (pointing directly to the repo)


---

* [SPARK-3744](https://issues.apache.org/jira/browse/SPARK-3744) | *Blocker* | **FlumeStreamSuite will fail during port contention**

This has been failing the master nightly builds. There are hard-coded ports and if they are contended it will break.


---

* [SPARK-3741](https://issues.apache.org/jira/browse/SPARK-3741) | *Minor* | **ConnectionManager.sendMessage may not propagate errors to MessageStatus**

If some network exception happens, ConnectionManager.sendMessage won't notify MessageStatus.


---

* [SPARK-3740](https://issues.apache.org/jira/browse/SPARK-3740) | *Major* | **Use a compressed bitmap to track zero sized blocks in HighlyCompressedMapStatus**

HighlyCompressedMapStatus uses a single long to track the average block size. However, if a stage has a lot of zero sized outputs, this leads to inefficiency because executors would need to send requests to fetch zero sized blocks.

We can use a compressed bitmap to track the zero-sized blocks.

See discussion in https://github.com/apache/spark/pull/2470


---

* [SPARK-3736](https://issues.apache.org/jira/browse/SPARK-3736) | *Critical* | **Workers should reconnect to Master if disconnected**

In standalone mode, when a worker gets disconnected from the master for some reason it never attempts to reconnect.  In this situation you have to bounce the worker before it will reconnect to the master.

The preferred alternative is to follow what Hadoop does -- when there's a disconnect, attempt to reconnect at a particular interval until successful (I think it repeats indefinitely every 10sec).

This has been observed by:

- [~pkolaczk] in http://apache-spark-user-list.1001560.n3.nabble.com/Workers-disconnected-from-master-sometimes-and-never-reconnect-back-td6240.html
- [~romi-totango] in http://apache-spark-user-list.1001560.n3.nabble.com/Re-Workers-disconnected-from-master-sometimes-and-never-reconnect-back-td15335.html
- [~aash]


---

* [SPARK-3734](https://issues.apache.org/jira/browse/SPARK-3734) | *Major* | **DriverRunner should not read SPARK\_HOME from submitter's environment**

If you use {{spark-submit}} in {{cluster}} mode to submit a job to a Spark Standalone cluster, and the {{JAVA\_HOME}} environment variable is set on the submitting machine, then DriverRunner will attempt to use the \_submitter's\_ JAVA\_HOME to launch the driver process (instead of the worker's JAVA\_HOME), which can cause the job to fail unless the submitter and worker have Java installed in the same location.

This has a pretty simple fix: read JAVA\_HOME from {{sys.env}} instead of {{command.environment}}; PR pending shortly.


---

* [SPARK-3731](https://issues.apache.org/jira/browse/SPARK-3731) | *Critical* | **RDD caching stops working in pyspark after some time**

Consider a file F which when loaded with sc.textFile and cached takes up slightly more than half of free memory for RDD cache.

When in PySpark the following is executed:
  1) a = sc.textFile(F)
  2) a.cache().count()
  3) b = sc.textFile(F)
  4) b.cache().count()
and then the following is repeated (for example 10 times):
  a) a.unpersist().cache().count()
  b) b.unpersist().cache().count()
after some time, there are no RDD cached in memory.

Also, since that time, no other RDD ever gets cached (the worker always reports something like "WARN CacheManager: Not enough space to cache partition rdd\_23\_5 in memory! Free memory is 277478190 bytes.", even if rdd\_23\_5 is ~50MB). The Executors tab of the Application Detail UI shows that all executors have 0MB memory used (which is consistent with the CacheManager warning).

When doing the same in scala, everything works perfectly.

I understand that this is a vague description, but I do no know how to describe the problem better.


---

* [SPARK-3729](https://issues.apache.org/jira/browse/SPARK-3729) | *Blocker* | **Null-pointer when constructing a HiveContext when settings are present**

{code}
java.lang.NullPointerException
	at org.apache.spark.sql.hive.HiveContext.runHive(HiveContext.scala:307)
	at org.apache.spark.sql.hive.HiveContext.runSqlHive(HiveContext.scala:270)
	at org.apache.spark.sql.hive.HiveContext.setConf(HiveContext.scala:242)
	at org.apache.spark.sql.SQLContext$$anonfun$1.apply(SQLContext.scala:79)
	at org.apache.spark.sql.SQLContext$$anonfun$1.apply(SQLContext.scala:78)
	at scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:33)
	at scala.collection.mutable.ArrayOps$ofRef.foreach(ArrayOps.scala:108)
	at org.apache.spark.sql.SQLContext.<init>(SQLContext.scala:78)
	at org.apache.spark.sql.hive.HiveContext.<init>(HiveContext.scala:76)
...
{code}


---

* [SPARK-3721](https://issues.apache.org/jira/browse/SPARK-3721) | *Major* | **Broadcast Variables above 2GB break in PySpark**

The bug displays 3 unique failure modes in PySpark, all of which seem to be related to broadcast variable size. Note that the tests below ran python 2.7.3 on all machines and used the Spark 1.1.0 binaries.

**BLOCK 1** [no problem]
{noformat}
import cPickle
from pyspark import SparkContext

def check\_pre\_serialized(size):
    msg = cPickle.dumps(range(2 ** size))
    print 'serialized length:', len(msg)
    bvar = sc.broadcast(msg)
    print 'length recovered from broadcast variable:', len(bvar.value)
    print 'correct value recovered:', msg == bvar.value
    bvar.unpersist()    

def check\_unserialized(size):
    msg = range(2 ** size)
    bvar = sc.broadcast(msg)
    print 'correct value recovered:', msg == bvar.value
    bvar.unpersist()

SparkContext.setSystemProperty('spark.executor.memory', '15g')
SparkContext.setSystemProperty('spark.cores.max', '5')
sc = SparkContext('spark://crosby.research.intel-research.net:7077', 'broadcast\_bug')
{noformat}

**BLOCK 2**  [no problem]
{noformat}
check\_pre\_serialized(20)
> serialized length: 9374656
> length recovered from broadcast variable: 9374656
> correct value recovered: True
{noformat}

**BLOCK 3**  [no problem]
{noformat}
check\_unserialized(20)
> correct value recovered: True
{noformat}

**BLOCK 4**  [no problem]
{noformat}
check\_pre\_serialized(27)
> serialized length: 1499501632
> length recovered from broadcast variable: 1499501632
> correct value recovered: True
{noformat}

**BLOCK 5**  [no problem]
{noformat}
check\_unserialized(27)
> correct value recovered: True
{noformat}

**BLOCK 6**  **[ERROR 1: unhandled error from cPickle.dumps inside sc.broadcast]**
{noformat}
check\_pre\_serialized(28)
.....
> /home/spark/greatest/python/pyspark/serializers.py in dumps(self, obj)
>     354
>     355     def dumps(self, obj):
> --> 356         return cPickle.dumps(obj, 2)
>     357
>     358     loads = cPickle.loads
>
> SystemError: error return without exception set
{noformat}

**BLOCK 7**  [no problem]
{noformat}
check\_unserialized(28)
> correct value recovered: True
{noformat}

**BLOCK 8**  **[ERROR 2: no error occurs and *incorrect result* is returned]**
{noformat}
check\_pre\_serialized(29)
> serialized length: 6331339840
> length recovered from broadcast variable: 2036372544
> correct value recovered: False
{noformat}

**BLOCK 9**  **[ERROR 3: unhandled error from zlib.compress inside sc.broadcast]**
{noformat}
check\_unserialized(29)
......
> /home/spark/greatest/python/pyspark/serializers.py in dumps(self, obj)
>     418 
>     419     def dumps(self, obj):
> --> 420         return zlib.compress(self.serializer.dumps(obj), 1)
>     421 
>     422     def loads(self, obj):
> 
> OverflowError: size does not fit in an int
{noformat}

**BLOCK 10**  [ERROR 1]
{noformat}
check\_pre\_serialized(30)
...same as above...
{noformat}

**BLOCK 11**  [ERROR 3]
{noformat}
check\_unserialized(30)
...same as above...
{noformat}


---

* [SPARK-3716](https://issues.apache.org/jira/browse/SPARK-3716) | *Trivial* | **Change partitionStrategy to utilize PartitionStrategy.fromString(\_) to match edgeStorageLevel and vertexStorageLevel syntax in Analytics.scala**

Currently the Analytics.scala page has its own function which is a copy of the PartitionStrategy object's fromString() method. This can be removed, and the PartitionStrategy.fromString(\_) method can be called in the .map() method in the creation of the partitionStrategy val. This matches the syntax used in the edgeStorageLevel and vertexStorageLevel declarations.


---

* [SPARK-3715](https://issues.apache.org/jira/browse/SPARK-3715) | *Trivial* | **[Docs]Minor typo**

Fix some typo.


---

* [SPARK-3713](https://issues.apache.org/jira/browse/SPARK-3713) | *Major* | **Use JSON to serialize DataType**

Currently we are using compiler generated {{toString}} method for case classes to serialize {{DataType}} objects, which is dangerous and already introduced some bugs (e.g. SPARK-3421). Moreover, we also serialize schema in this format and write into generated Parquet metadata. Using JSON can fix all these known and potential issues.


---

* [SPARK-3711](https://issues.apache.org/jira/browse/SPARK-3711) | *Minor* | **Optimize where in clause filter queries**

The In case class is replaced by a InSet class in case all the filters are literals, which uses a hashset instead of Sequence,  thereby giving significant performance improvement. Maximum improvement should be visible in case small percentage of large data matches the filter list


---

* [SPARK-3710](https://issues.apache.org/jira/browse/SPARK-3710) | *Blocker* | **YARN integration test is flaky**

This has been regularly failing the master build:

Example failure: https://amplab.cs.berkeley.edu/jenkins/job/Spark-Master-SBT/738/AMPLAB\_JENKINS\_BUILD\_PROFILE=hadoop2.2,label=centos/#showFailuresLink

One thing to look at is whether the YARN mini cluster makes assumptions about being able to bind to specific ports.

{code}
sbt.ForkMain$ForkError: Call From test04.amplab/10.123.1.2 to test04.amplab:0 failed on connection exception: java.net.ConnectException: Connection refused; For more details see:  http://wiki.apache.org/hadoop/ConnectionRefused
	at sun.reflect.GeneratedConstructorAccessor5.newInstance(Unknown Source)
	at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)
	at java.lang.reflect.Constructor.newInstance(Constructor.java:526)
	at org.apache.hadoop.net.NetUtils.wrapWithMessage(NetUtils.java:783)
	at org.apache.hadoop.net.NetUtils.wrapException(NetUtils.java:730)
	at org.apache.hadoop.ipc.Client.call(Client.java:1351)
	at org.apache.hadoop.ipc.Client.call(Client.java:1300)
	at org.apache.hadoop.ipc.ProtobufRpcEngine$Invoker.invoke(ProtobufRpcEngine.java:206)
	at com.sun.proxy.$Proxy11.getClusterMetrics(Unknown Source)
	at org.apache.hadoop.yarn.api.impl.pb.client.ApplicationClientProtocolPBClientImpl.getClusterMetrics(ApplicationClientProtocolPBClientImpl.java:152)
	at sun.reflect.GeneratedMethodAccessor2.invoke(Unknown Source)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.io.retry.RetryInvocationHandler.invokeMethod(RetryInvocationHandler.java:186)
	at org.apache.hadoop.io.retry.RetryInvocationHandler.invoke(RetryInvocationHandler.java:102)
	at com.sun.proxy.$Proxy12.getClusterMetrics(Unknown Source)
	at org.apache.hadoop.yarn.client.api.impl.YarnClientImpl.getYarnClusterMetrics(YarnClientImpl.java:246)
	at org.apache.spark.deploy.yarn.Client$$anonfun$submitApplication$1.apply(Client.scala:69)
	at org.apache.spark.deploy.yarn.Client$$anonfun$submitApplication$1.apply(Client.scala:69)
	at org.apache.spark.Logging$class.logInfo(Logging.scala:59)
	at org.apache.spark.deploy.yarn.Client.logInfo(Client.scala:35)
	at org.apache.spark.deploy.yarn.Client.submitApplication(Client.scala:68)
	at org.apache.spark.scheduler.cluster.YarnClientSchedulerBackend.start(YarnClientSchedulerBackend.scala:61)
	at org.apache.spark.scheduler.TaskSchedulerImpl.start(TaskSchedulerImpl.scala:141)
	at org.apache.spark.SparkContext.<init>(SparkContext.scala:310)
	at org.apache.spark.deploy.yarn.YarnClusterDriver$.main(YarnClusterSuite.scala:140)
	at org.apache.spark.deploy.yarn.YarnClusterSuite$$anonfun$1.apply$mcV$sp(YarnClusterSuite.scala:91)
	at org.apache.spark.deploy.yarn.YarnClusterSuite$$anonfun$1.apply(YarnClusterSuite.scala:89)
	at org.apache.spark.deploy.yarn.YarnClusterSuite$$anonfun$1.apply(YarnClusterSuite.scala:89)
	at org.scalatest.Transformer$$anonfun$apply$1.apply(Transformer.scala:22)
	at org.scalatest.Transformer$$anonfun$apply$1.apply(Transformer.scala:22)
	at org.scalatest.OutcomeOf$class.outcomeOf(OutcomeOf.scala:85)
	at org.scalatest.OutcomeOf$.outcomeOf(OutcomeOf.scala:104)
	at org.scalatest.Transformer.apply(Transformer.scala:22)
	at org.scalatest.Transformer.apply(Transformer.scala:20)
	at org.scalatest.FunSuiteLike$$anon$1.apply(FunSuiteLike.scala:158)
	at org.scalatest.Suite$class.withFixture(Suite.scala:1121)
	at org.scalatest.FunSuite.withFixture(FunSuite.scala:1559)
	at org.scalatest.FunSuiteLike$class.invokeWithFixture$1(FunSuiteLike.scala:155)
	at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:167)
	at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:167)
	at org.scalatest.SuperEngine.runTestImpl(Engine.scala:306)
	at org.scalatest.FunSuiteLike$class.runTest(FunSuiteLike.scala:167)
	at org.scalatest.FunSuite.runTest(FunSuite.scala:1559)
	at org.scalatest.FunSuiteLike$$anonfun$runTests$1.apply(FunSuiteLike.scala:200)
	at org.scalatest.FunSuiteLike$$anonfun$runTests$1.apply(FunSuiteLike.scala:200)
	at org.scalatest.SuperEngine$$anonfun$traverseSubNodes$1$1.apply(Engine.scala:413)
	at org.scalatest.SuperEngine$$anonfun$traverseSubNodes$1$1.apply(Engine.scala:401)
	at scala.collection.immutable.List.foreach(List.scala:318)
	at org.scalatest.SuperEngine.traverseSubNodes$1(Engine.scala:401)
	at org.scalatest.SuperEngine.org$scalatest$SuperEngine$$runTestsInBranch(Engine.scala:396)
	at org.scalatest.SuperEngine.runTestsImpl(Engine.scala:483)
	at org.scalatest.FunSuiteLike$class.runTests(FunSuiteLike.scala:200)
	at org.scalatest.FunSuite.runTests(FunSuite.scala:1559)
	at org.scalatest.Suite$class.run(Suite.scala:1423)
	at org.scalatest.FunSuite.org$scalatest$FunSuiteLike$$super$run(FunSuite.scala:1559)
	at org.scalatest.FunSuiteLike$$anonfun$run$1.apply(FunSuiteLike.scala:204)
	at org.scalatest.FunSuiteLike$$anonfun$run$1.apply(FunSuiteLike.scala:204)
	at org.scalatest.SuperEngine.runImpl(Engine.scala:545)
	at org.scalatest.FunSuiteLike$class.run(FunSuiteLike.scala:204)
	at org.apache.spark.deploy.yarn.YarnClusterSuite.org$scalatest$BeforeAndAfterAll$$super$run(YarnClusterSuite.scala:35)
	at org.scalatest.BeforeAndAfterAll$class.liftedTree1$1(BeforeAndAfterAll.scala:257)
	at org.scalatest.BeforeAndAfterAll$class.run(BeforeAndAfterAll.scala:256)
	at org.apache.spark.deploy.yarn.YarnClusterSuite.run(YarnClusterSuite.scala:35)
	at org.scalatest.tools.Framework.org$scalatest$tools$Framework$$runSuite(Framework.scala:444)
	at org.scalatest.tools.Framework$ScalaTestTask.execute(Framework.scala:651)
	at sbt.ForkMain$Run$2.call(ForkMain.java:294)
	at sbt.ForkMain$Run$2.call(ForkMain.java:284)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
Caused by: sbt.ForkMain$ForkError: Connection refused
	at sun.nio.ch.SocketChannelImpl.checkConnect(Native Method)
	at sun.nio.ch.SocketChannelImpl.finishConnect(SocketChannelImpl.java:739)
	at org.apache.hadoop.net.SocketIOWithTimeout.connect(SocketIOWithTimeout.java:206)
	at org.apache.hadoop.net.NetUtils.connect(NetUtils.java:529)
	at org.apache.hadoop.net.NetUtils.connect(NetUtils.java:493)
	at org.apache.hadoop.ipc.Client$Connection.setupConnection(Client.java:547)
	at org.apache.hadoop.ipc.Client$Connection.setupIOstreams(Client.java:642)
	at org.apache.hadoop.ipc.Client$Connection.access$2600(Client.java:314)
	at org.apache.hadoop.ipc.Client.getConnection(Client.java:1399)
	at org.apache.hadoop.ipc.Client.call(Client.java:1318)
	... 66 more
{code}


---

* [SPARK-3708](https://issues.apache.org/jira/browse/SPARK-3708) | *Major* | **Backticks aren't handled correctly in aliases**

Here's a failing test case:

{code}
sql("SELECT k FROM (SELECT `key` AS `k` FROM src) a")
{code}


---

* [SPARK-3707](https://issues.apache.org/jira/browse/SPARK-3707) | *Minor* | **Type Coercion for DIV doesn't work for non-numeric argument**

When do query like "select key/2 from src", it throws exception like
{panel}
14/09/27 22:14:36 ERROR SparkSQLDriver: Failed in [select key/2 from src]
org.apache.spark.sql.catalyst.analysis.UnresolvedException: Invalid call to datatype. Can not resolve due to differing types DoubleType, IntegerType on unresolved object, tree: (CAST(key#3, DoubleType) / 2)
	at org.apache.spark.sql.catalyst.expressions.BinaryArithmetic.dataType(arithmetic.scala:62)
	at org.apache.spark.sql.catalyst.analysis.HiveTypeCoercion$Division$$anonfun$apply$9.applyOrElse(HiveTypeCoercion.scala:351)
	at org.apache.spark.sql.catalyst.analysis.HiveTypeCoercion$Division$$anonfun$apply$9.applyOrElse(HiveTypeCoercion.scala:346)
	at org.apache.spark.sql.catalyst.trees.TreeNode.transformDown(TreeNode.scala:144)
	at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$4.apply(TreeNode.scala:162)
{panel}


---

* [SPARK-3706](https://issues.apache.org/jira/browse/SPARK-3706) | *Major* | **Cannot run IPython REPL with IPYTHON set to "1" and PYSPARK\_PYTHON unset**

h3. Problem

The section "Using the shell" in Spark Programming Guide (https://spark.apache.org/docs/latest/programming-guide.html#using-the-shell) says that we can run pyspark REPL through IPython.
But a folloing command does not run IPython but a default Python executable.

{quote}
$ IPYTHON=1 ./bin/pyspark
Python 2.7.8 (default, Jul  2 2014, 10:14:46) 
...
{quote}

the spark/bin/pyspark script on the commit b235e013638685758885842dc3268e9800af3678 decides which executable and options it use folloing way.

# if PYSPARK\_PYTHON unset
#* → defaulting to "python"
# if IPYTHON\_OPTS set
#* → set IPYTHON "1"
# some python scripts passed to ./bin/pyspak → run it with ./bin/spark-submit
#* out of this issues scope
# if IPYTHON set as "1"
#* → execute $PYSPARK\_PYTHON (default: ipython) with arguments $IPYTHON\_OPTS
#* otherwise execute $PYSPARK\_PYTHON

Therefore, when PYSPARK\_PYTHON is unset, python is executed though IPYTHON is "1".
In other word, when PYSPARK\_PYTHON is unset, IPYTHON\_OPS and IPYTHON has no effect on decide which command to use.

||PYSPARK\_PYTHON||IPYTHON\_OPTS||IPYTHON||resulting command||expected command||
|(unset → defaults to python)|(unset)|(unset)|python|(same)|
|(unset → defaults to python)|(unset)|1|python|ipython|
|(unset → defaults to python)|an\_option|(unset → set to 1)|python an\_option|ipython an\_option|
|(unset → defaults to python)|an\_option|1|python an\_option|ipython an\_option|
|ipython|(unset)|(unset)|ipython|(same)|
|ipython|(unset)|1|ipython|(same)|
|ipython|an\_option|(unset → set to 1)|ipython an\_option|(same)|
|ipython|an\_option|1|ipython an\_option|(same)|


h3. Suggestion

The pyspark script should determine firstly whether a user wants to run IPython or other executables.

# if IPYTHON\_OPTS set
#* set IPYTHON "1"
# if IPYTHON has a value "1"
#* PYSPARK\_PYTHON defaults to "ipython" if not set
# PYSPARK\_PYTHON defaults to "python" if not set

See the pull request for more detailed modification.


---

* [SPARK-3701](https://issues.apache.org/jira/browse/SPARK-3701) | *Minor* | **Some clean-up work after the refactoring of MLlib's SerDe for PySpark**

Fix some minor issues came with the refactoring of MLlib's SerDe for PySpark.


---

* [SPARK-3699](https://issues.apache.org/jira/browse/SPARK-3699) | *Minor* | **sbt console tasks don't clean up SparkContext**

Because the sbt console tasks for the hive and sql projects don't stop the SparkContext upon exit, users are faced with an ugly stack trace.


---

* [SPARK-3697](https://issues.apache.org/jira/browse/SPARK-3697) | *Minor* | ** HistoryServer cann't list event Log when there was a no permissions directory in the $spark.eventLog.dir**

 HistoryServer cann't list event Log on WEB UI  when there was a no permissions directory in the $spark.eventLog.dir. eg, The following files list   is in the  $spark.eventLog.dir directory:
{code}
[yangping.wu@master spark-1.1.0-bin-2.2.0]$ bin/hadoop fs -ls /spark-logs/eventLog
Found 45 items
drwxrwxrwx   - root        root                0 2014-09-24 18:31 /spark-logs/eventLog/scala.hbasetest-1411552435599
drwxrwxrwx   - root        root                0 2014-09-24 17:56 /spark-logs/eventLog/scala.hbasetest-1411552547780
drwxrwxrwx   - root        root                0 2014-09-24 18:00 /spark-logs/eventLog/scala.hbasetest-1411552747689
drwxrwxrwx   - root        root                0 2014-09-24 18:05 /spark-logs/eventLog/scala.hbasetest-1411553051906
drwxrwxrwx   - root        root                0 2014-09-24 18:09 /spark-logs/eventLog/scala.hbasetest-1411553328706
drwxrwxrwx   - root        root                0 2014-09-24 18:22 /spark-logs/eventLog/scala.hbasetest-1411554132311
drwxrwxrwx   - root        root                0 2014-09-26 10:57 /spark-logs/eventLog/simple-application-1411698604636
drwxrwxrwx   - root        root                0 2014-09-26 14:45 /spark-logs/eventLog/simple-application-1411712643513
drwxrwx---   - yangping.wu supergroup          0 2014-09-26 16:29 /spark-logs/eventLog/simple-application-1411720159090( didn't have permissions for historyServer)
drwxrwx---   - yangping.wu root                0 2014-09-26 16:29 /spark-logs/eventLog/simple-application-1411720190625
{code}
but when I start the historyServer, The historyServer meet  a AccessControlException in the log file as following:
{code}
26 Sep 2014 17:50:26,561 ERROR [LogCheckingThread] (org.apache.spark.Logging$class.logError:96)  - Exception in checking for event log updates
org.apache.hadoop.security.AccessControlException: Permission denied: user=root, access=EXECUTE, inode="/spark-logs/eventLog/simple-application-1411720159090":yangping.wu:supergroup:drwxrwx---
        at org.apache.hadoop.hdfs.server.namenode.FSPermissionChecker.check(FSPermissionChecker.java:234)
        at org.apache.hadoop.hdfs.server.namenode.FSPermissionChecker.checkTraverse(FSPermissionChecker.java:187)
        at org.apache.hadoop.hdfs.server.namenode.FSPermissionChecker.checkPermission(FSPermissionChecker.java:150)
        at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.checkPermission(FSNamesystem.java:5186)
        at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.checkPermission(FSNamesystem.java:5168)
        at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.checkTraverse(FSNamesystem.java:5147)
        at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.getFileInfo(FSNamesystem.java:3286)
        at org.apache.hadoop.hdfs.server.namenode.NameNodeRpcServer.getFileInfo(NameNodeRpcServer.java:749)
        at org.apache.hadoop.hdfs.protocolPB.ClientNamenodeProtocolServerSideTranslatorPB.getFileInfo(ClientNamenodeProtocolServerSideTranslatorPB.java:692)
        at org.apache.hadoop.hdfs.protocol.proto.ClientNamenodeProtocolProtos$ClientNamenodeProtocol$2.callBlockingMethod(ClientNamenodeProtocolProtos.java:59628)
        at org.apache.hadoop.ipc.ProtobufRpcEngine$Server$ProtoBufRpcInvoker.call(ProtobufRpcEngine.java:585)
        at org.apache.hadoop.ipc.RPC$Server.call(RPC.java:928)
        at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2048)
        at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2044)
        at java.security.AccessController.doPrivileged(Native Method)
        at javax.security.auth.Subject.doAs(Subject.java:415)
        at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1491)
        at org.apache.hadoop.ipc.Server$Handler.run(Server.java:2042)

        at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)
        at sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:39)
        at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:27)
        at java.lang.reflect.Constructor.newInstance(Constructor.java:513)
        at org.apache.hadoop.ipc.RemoteException.instantiateException(RemoteException.java:106)
        at org.apache.hadoop.ipc.RemoteException.unwrapRemoteException(RemoteException.java:73)
        at org.apache.hadoop.hdfs.DFSClient.getFileInfo(DFSClient.java:1681)
        at org.apache.hadoop.hdfs.DistributedFileSystem$17.doCall(DistributedFileSystem.java:1106)
        at org.apache.hadoop.hdfs.DistributedFileSystem$17.doCall(DistributedFileSystem.java:1102)
        at org.apache.hadoop.fs.FileSystemLinkResolver.resolve(FileSystemLinkResolver.java:81)
        at org.apache.hadoop.hdfs.DistributedFileSystem.getFileStatus(DistributedFileSystem.java:1102)
        at org.apache.hadoop.fs.FileSystem.isFile(FileSystem.java:1423)
        at org.apache.spark.deploy.history.FsHistoryProvider$$anonfun$liftedTree1$1$1.apply(FsHistoryProvider.scala:126)
        at org.apache.spark.deploy.history.FsHistoryProvider$$anonfun$liftedTree1$1$1.apply(FsHistoryProvider.scala:125)
        at scala.collection.TraversableLike$$anonfun$filter$1.apply(TraversableLike.scala:264)
        at scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:33)
        at scala.collection.mutable.WrappedArray.foreach(WrappedArray.scala:34)
        at scala.collection.TraversableLike$class.filter(TraversableLike.scala:263)
        at scala.collection.AbstractTraversable.filter(Traversable.scala:105)
        at org.apache.spark.deploy.history.FsHistoryProvider.org$apache$spark$deploy$history$FsHistoryProvider$$checkForLogs(FsHistoryProvider.scala:123)
        at org.apache.spark.deploy.history.FsHistoryProvider$$anon$1$$anonfun$run$1.apply$mcV$sp(FsHistoryProvider.scala:70)
        at org.apache.spark.deploy.history.FsHistoryProvider$$anon$1$$anonfun$run$1.apply(FsHistoryProvider.scala:61)
        at org.apache.spark.deploy.history.FsHistoryProvider$$anon$1$$anonfun$run$1.apply(FsHistoryProvider.scala:61)
        at org.apache.spark.util.Utils$.logUncaughtExceptions(Utils.scala:1311)
{code}

Because the HistoryServer don't have permission to read the directory(/spark-logs/eventLog/simple-application-1411720159090). and lead the HistoryServer cann't show other event log file on the WEB UI. but show "No Completed Applications Found"! I think the HistoryServer can ignore the incorrect directory(eg: /spark-logs/eventLog/simple-application-1411720159090 as mentioned above).


---

* [SPARK-3696](https://issues.apache.org/jira/browse/SPARK-3696) | *Minor* | **Do not override user-defined conf\_dir in spark-config.sh**

Now many scripts used spark-config.sh in which SPARK\_CONF\_DIR is directly assigned with SPARK\_HOME/conf. It is inconvenient for those who define SPARK\_CONF\_DIR in env.


---

* [SPARK-3690](https://issues.apache.org/jira/browse/SPARK-3690) | *Minor* | **Closing shuffle writers we swallow more important exception**

ShaffleMapTask: line 75

{code:title=ShaffleMapTask|borderStyle=solid}
 case e: Exception =>
        if (writer != null) {
          writer.stop(success = false)
        }
        throw e
{code}

Exception in writer.stop() swallows the important one. Couldn't find the reason for problems for days. Look up in internet "java.io.FileNotFoundException: /local/hd2/yarn/local/usercache/epahomov/appcache/application\_1411219858924\_12991/spark-local-20140924225309-03f5/21/shuffle\_4\_12\_147 (No such file or directory)" - there are plenty poor guys like me.


---

* [SPARK-3686](https://issues.apache.org/jira/browse/SPARK-3686) | *Blocker* | **flume.SparkSinkSuite.Success is flaky**

{code}
Error Message

4000 did not equal 5000
Stacktrace

sbt.ForkMain$ForkError: 4000 did not equal 5000
	at org.scalatest.Assertions$class.newAssertionFailedException(Assertions.scala:498)
	at org.scalatest.FunSuite.newAssertionFailedException(FunSuite.scala:1559)
	at org.scalatest.Assertions$AssertionsHelper.macroAssert(Assertions.scala:416)
	at org.apache.spark.streaming.flume.sink.SparkSinkSuite.org$apache$spark$streaming$flume$sink$SparkSinkSuite$$assertChannelIsEmpty(SparkSinkSuite.scala:195)
	at org.apache.spark.streaming.flume.sink.SparkSinkSuite$$anonfun$1.apply$mcV$sp(SparkSinkSuite.scala:54)
	at org.apache.spark.streaming.flume.sink.SparkSinkSuite$$anonfun$1.apply(SparkSinkSuite.scala:40)
	at org.apache.spark.streaming.flume.sink.SparkSinkSuite$$anonfun$1.apply(SparkSinkSuite.scala:40)
	at org.scalatest.Transformer$$anonfun$apply$1.apply(Transformer.scala:22)
	at org.scalatest.Transformer$$anonfun$apply$1.apply(Transformer.scala:22)
	at org.scalatest.OutcomeOf$class.outcomeOf(OutcomeOf.scala:85)
	at org.scalatest.OutcomeOf$.outcomeOf(OutcomeOf.scala:104)
	at org.scalatest.Transformer.apply(Transformer.scala:22)
	at org.scalatest.Transformer.apply(Transformer.scala:20)
	at org.scalatest.FunSuiteLike$$anon$1.apply(FunSuiteLike.scala:158)
	at org.scalatest.Suite$class.withFixture(Suite.scala:1121)
	at org.scalatest.FunSuite.withFixture(FunSuite.scala:1559)
	at org.scalatest.FunSuiteLike$class.invokeWithFixture$1(FunSuiteLike.scala:155)
	at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:167)
	at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:167)
	at org.scalatest.SuperEngine.runTestImpl(Engine.scala:306)
	at org.scalatest.FunSuiteLike$class.runTest(FunSuiteLike.scala:167)
	at org.scalatest.FunSuite.runTest(FunSuite.scala:1559)
	at org.scalatest.FunSuiteLike$$anonfun$runTests$1.apply(FunSuiteLike.scala:200)
	at org.scalatest.FunSuiteLike$$anonfun$runTests$1.apply(FunSuiteLike.scala:200)
	at org.scalatest.SuperEngine$$anonfun$traverseSubNodes$1$1.apply(Engine.scala:413)
	at org.scalatest.SuperEngine$$anonfun$traverseSubNodes$1$1.apply(Engine.scala:401)
	at scala.collection.immutable.List.foreach(List.scala:318)
	at org.scalatest.SuperEngine.traverseSubNodes$1(Engine.scala:401)
	at org.scalatest.SuperEngine.org$scalatest$SuperEngine$$runTestsInBranch(Engine.scala:396)
	at org.scalatest.SuperEngine.runTestsImpl(Engine.scala:483)
	at org.scalatest.FunSuiteLike$class.runTests(FunSuiteLike.scala:200)
	at org.scalatest.FunSuite.runTests(FunSuite.scala:1559)
	at org.scalatest.Suite$class.run(Suite.scala:1423)
	at org.scalatest.FunSuite.org$scalatest$FunSuiteLike$$super$run(FunSuite.scala:1559)
	at org.scalatest.FunSuiteLike$$anonfun$run$1.apply(FunSuiteLike.scala:204)
	at org.scalatest.FunSuiteLike$$anonfun$run$1.apply(FunSuiteLike.scala:204)
	at org.scalatest.SuperEngine.runImpl(Engine.scala:545)
	at org.scalatest.FunSuiteLike$class.run(FunSuiteLike.scala:204)
	at org.scalatest.FunSuite.run(FunSuite.scala:1559)
	at org.scalatest.tools.Framework.org$scalatest$tools$Framework$$runSuite(Framework.scala:444)
	at org.scalatest.tools.Framework$ScalaTestTask.execute(Framework.scala:651)
	at sbt.ForkMain$Run$2.call(ForkMain.java:294)
	at sbt.ForkMain$Run$2.call(ForkMain.java:284)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
{code}

Example test result (this will stop working in a few days):
https://amplab.cs.berkeley.edu/jenkins/job/Spark-Master-SBT/719/AMPLAB\_JENKINS\_BUILD\_PROFILE=hadoop2.3,label=centos/testReport/junit/org.apache.spark.streaming.flume.sink/SparkSinkSuite/Success\_with\_ack/


---

* [SPARK-3681](https://issues.apache.org/jira/browse/SPARK-3681) | *Major* | **Failed to serialized ArrayType or MapType  after accessing them in Python**

{code}
files\_schema\_rdd.map(lambda x: x.files).take(1)
{code}

Also it will lose the schema after iterate an ArrayType.

{code}
files\_schema\_rdd.map(lambda x: [f.batch for f in x.files]).take(1)
{code}


---

* [SPARK-3679](https://issues.apache.org/jira/browse/SPARK-3679) | *Critical* | **pickle the exact globals of functions**

function.func\_code.co\_names has all the names used in the function, including name of attributes. It will pickle some unnecessary globals if there is a global having the same name with attribute (in co\_names).

There is a regression introduced by PR 2114 https://github.com/apache/spark/pull/2144/files


---

* [SPARK-3676](https://issues.apache.org/jira/browse/SPARK-3676) | *Major* | **jdk version lead to spark sql test suite error**

System.out.println(1/500d)  get different result in diff jdk version
jdk 1.6.0(\_31) ---- 0.0020
jdk 1.7.0(\_05) ---- 0.002

this will lead to  spark sql hive test suite failed (replay by set jdk version = 1.6.0\_31)--- 
[info] - division *** FAILED ***
[info]   Results do not match for division:
[info]   SELECT 2 / 1, 1 / 2, 1 / 3, 1 / COUNT(*) FROM src LIMIT 1
[info]   == Parsed Logical Plan ==
[info]   Limit 1
[info]    Project [(2 / 1) AS c\_0#692,(1 / 2) AS c\_1#693,(1 / 3) AS c\_2#694,(1 / COUNT(1)) AS c\_3#695]
[info]     UnresolvedRelation None, src, None
[info]   
[info]   == Analyzed Logical Plan ==
[info]   Limit 1
[info]    Aggregate [], [(CAST(2, DoubleType) / CAST(1, DoubleType)) AS c\_0#692,(CAST(1, DoubleType) / CAST(2, DoubleType)) AS c\_1#693,(CAST(1, DoubleType) / CAST(3, DoubleType)) AS c\_2#694,(CAST(CAST(1, LongType), Doub
leType) / CAST(COUNT(1), DoubleType)) AS c\_3#695]
[info]     MetastoreRelation default, src, None
[info]   
[info]   == Optimized Logical Plan ==
[info]   Limit 1
[info]    Aggregate [], [2.0 AS c\_0#692,0.5 AS c\_1#693,0.3333333333333333 AS c\_2#694,(1.0 / CAST(COUNT(1), DoubleType)) AS c\_3#695]
[info]     Project []
[info]      MetastoreRelation default, src, None
[info]   
[info]   == Physical Plan ==
[info]   Limit 1
[info]    Aggregate false, [], [2.0 AS c\_0#692,0.5 AS c\_1#693,0.3333333333333333 AS c\_2#694,(1.0 / CAST(SUM(PartialCount#699L), DoubleType)) AS c\_3#695]
[info]     Exchange SinglePartition
[info]      Aggregate true, [], [COUNT(1) AS PartialCount#699L]
[info]       HiveTableScan [], (MetastoreRelation default, src, None), None
[info]   
[info]   Code Generation: false
[info]   == RDD ==
[info]   c\_0    c\_1     c\_2     c\_3
[info]   !== HIVE - 1 row(s) ==              == CATALYST - 1 row(s) ==
[info]   !2.0   0.5     0.3333333333333333      0.002   2.0     0.5     0.3333333333333333      0.0020 (HiveComparisonTest.scala:370)


[info] - timestamp cast #1 *** FAILED ***
[info]   Results do not match for timestamp cast #1:
[info]   SELECT CAST(CAST(1 AS TIMESTAMP) AS DOUBLE) FROM src LIMIT 1
[info]   == Parsed Logical Plan ==
[info]   Limit 1
[info]    Project [CAST(CAST(1, TimestampType), DoubleType) AS c\_0#995]
[info]     UnresolvedRelation None, src, None
[info]   
[info]   == Analyzed Logical Plan ==
[info]   Limit 1
[info]    Project [CAST(CAST(1, TimestampType), DoubleType) AS c\_0#995]
[info]     MetastoreRelation default, src, None
[info]   
[info]   == Optimized Logical Plan ==
[info]   Limit 1
[info]    Project [0.0010 AS c\_0#995]
[info]     MetastoreRelation default, src, None
[info]   
[info]   == Physical Plan ==
[info]   Limit 1
[info]    Project [0.0010 AS c\_0#995]
[info]     HiveTableScan [], (MetastoreRelation default, src, None), None
[info]   
[info]   Code Generation: false
[info]   == RDD ==
[info]   c\_0
[info]   !== HIVE - 1 row(s) ==   == CATALYST - 1 row(s) ==
[info]   !0.001                   0.0010 (HiveComparisonTest.scala:370)


---

* [SPARK-3675](https://issues.apache.org/jira/browse/SPARK-3675) | *Major* | **Allow starting JDBC server on an existing context**

A common question on the mailing list is how to read from temporary tables over JDBC.  While we should try and support most of this in SQL, it would also be nice to query generic RDDs over JDBC.


---

* [SPARK-3664](https://issues.apache.org/jira/browse/SPARK-3664) | *Major* | **Graduate GraphX from alpha to stable**

The GraphX API is officially marked as alpha but has been moving toward stability. This ticket tracks what will be necessary to mark it a stable part of Spark.


---

* [SPARK-3661](https://issues.apache.org/jira/browse/SPARK-3661) | *Critical* | **spark.\*.memory is ignored in cluster mode**

This is related to https://issues.apache.org/jira/browse/SPARK-3653, but for the config. Note that `spark.executor.memory` is fine only in standalone and mesos mode because we pass the Spark system properties to the driver after it has started.


---

* [SPARK-3659](https://issues.apache.org/jira/browse/SPARK-3659) | *Minor* | **Set EC2 version to 1.1.0 in master branch**

Master branch should be in sync with branch-1.1


---

* [SPARK-3658](https://issues.apache.org/jira/browse/SPARK-3658) | *Minor* | **Take thrift server as a daemon**

We take thrift server as a daemon working in background, so we can log it while it is running and stop it with scripts.


---

* [SPARK-3657](https://issues.apache.org/jira/browse/SPARK-3657) | *Blocker* | **yarn alpha YarnRMClientImpl throws NPE appMasterRequest.setTrackingUrl starting spark-shell**

YarnRMClientImpl.registerApplicationMaster can throw null pointer exception when setting the trackingurl if its empty:

    appMasterRequest.setTrackingUrl(new URI(uiAddress).getAuthority())


I hit this just start spark-shell without the tracking url set.

14/09/23 16:18:34 INFO yarn.YarnRMClientImpl: Connecting to ResourceManager at kryptonitered-jt1.red.ygrid.yahoo.com/98.139.154.99:8030
Exception in thread "main" java.lang.NullPointerException
        at org.apache.hadoop.yarn.proto.YarnServiceProtos$RegisterApplicationMasterRequestProto$Builder.setTrackingUrl(YarnServiceProtos.java:710)
        at org.apache.hadoop.yarn.api.protocolrecords.impl.pb.RegisterApplicationMasterRequestPBImpl.setTrackingUrl(RegisterApplicationMasterRequestPBImpl.java:132)
        at org.apache.spark.deploy.yarn.YarnRMClientImpl.registerApplicationMaster(YarnRMClientImpl.scala:102)
        at org.apache.spark.deploy.yarn.YarnRMClientImpl.register(YarnRMClientImpl.scala:55)
        at org.apache.spark.deploy.yarn.YarnRMClientImpl.register(YarnRMClientImpl.scala:38)
        at org.apache.spark.deploy.yarn.ApplicationMaster.registerAM(ApplicationMaster.scala:168)
        at org.apache.spark.deploy.yarn.ApplicationMaster.runExecutorLauncher(ApplicationMaster.scala:206)
        at org.apache.spark.deploy.yarn.ApplicationMaster.run(ApplicationMaster.scala:120)


---

* [SPARK-3654](https://issues.apache.org/jira/browse/SPARK-3654) | *Major* | **Implement all extended HiveQL statements/commands with a separate parser combinator**

Statements and commands like {{SET}}, {{CACHE TABLE}} and {{ADD JAR}} etc. are currently parsed in a quite hacky way, like this:
{code}
if (sql.trim.toLowerCase.startsWith("cache table")) {
  sql.trim.toLowerCase.startsWith("cache table") match {
    ...
  }
}
{code}
It would be much better to add an extra parser combinator that parses these syntax extensions first, and then fallback to the normal Hive parser.


---

* [SPARK-3653](https://issues.apache.org/jira/browse/SPARK-3653) | *Critical* | **SPARK\_{DRIVER\|EXECUTOR}\_MEMORY is ignored in cluster mode**

We only check for these in the spark-class but not in SparkSubmit. For client mode, this is OK because the driver can read directly from these environment variables.

For cluster mode however, SPARK\_EXECUTOR\_MEMORY is not set on the node that starts the driver, and SPARK\_DRIVER\_MEMORY is simply not propagated to the driver JVM.


---

* [SPARK-3651](https://issues.apache.org/jira/browse/SPARK-3651) | *Major* | **Consolidate executor maps in CoarseGrainedSchedulerBackend**

In CoarseGrainedSchedulerBackend, we have:
{code}
    private val executorActor = new HashMap[String, ActorRef]
    private val executorAddress = new HashMap[String, Address]
    private val executorHost = new HashMap[String, String]
    private val freeCores = new HashMap[String, Int]
    private val totalCores = new HashMap[String, Int]
{code}
We only ever put / remove stuff from these maps together. It would simplify the code if we consolidate these all into one map as we have done in JobProgressListener in https://issues.apache.org/jira/browse/SPARK-2299.


---

* [SPARK-3649](https://issues.apache.org/jira/browse/SPARK-3649) | *Major* | **ClassCastException in GraphX custom serializers when sort-based shuffle spills**

As [reported|http://apache-spark-user-list.1001560.n3.nabble.com/java-lang-ClassCastException-java-lang-Long-cannot-be-cast-to-scala-Tuple2-td13926.html#a14501] on the mailing list, GraphX throws

{code}
java.lang.ClassCastException: java.lang.Long cannot be cast to scala.Tuple2
        at org.apache.spark.graphx.impl.RoutingTableMessageSerializer$$anon$1$$anon$2.writeObject(Serializers.scala:39) 
        at org.apache.spark.storage.DiskBlockObjectWriter.write(BlockObjectWriter.scala:195) 
        at org.apache.spark.util.collection.ExternalSorter.spillToMergeableFile(ExternalSorter.scala:329)
{code}

when sort-based shuffle attempts to spill to disk. This is because GraphX defines custom serializers for shuffling pair RDDs that assume Spark will always serialize the entire pair object rather than breaking it up into its components. However, the spill code path in sort-based shuffle [violates this assumption|https://github.com/apache/spark/blob/f9d6220c792b779be385f3022d146911a22c2130/core/src/main/scala/org/apache/spark/util/collection/ExternalSorter.scala#L329].

GraphX uses the custom serializers to compress vertex ID keys using variable-length integer encoding. However, since the serializer can no longer rely on the key and value being serialized and deserialized together, performing such encoding would require writing a tag byte. Therefore it may be better to simply remove the custom serializers.


---

* [SPARK-3647](https://issues.apache.org/jira/browse/SPARK-3647) | *Critical* | **Shaded Guava patch causes access issues with package private classes**

The patch that introduced shading to Guava (SPARK-2848) tried to maintain backwards compatibility in the Java API by not relocating the "Optional" class. That causes problems when that class references package private members in the Absent and Present classes, which are now in a different package:

{noformat}
Exception in thread "main" java.lang.IllegalAccessError: tried to access class org.spark-project.guava.common.base.Present from class com.google.common.base.Optional
	at com.google.common.base.Optional.of(Optional.java:86)
	at org.apache.spark.api.java.JavaUtils$.optionToOptional(JavaUtils.scala:25)
	at org.apache.spark.api.java.JavaSparkContext.getSparkHome(JavaSparkContext.scala:542)
{noformat}


---

* [SPARK-3641](https://issues.apache.org/jira/browse/SPARK-3641) | *Critical* | **Correctly populate SparkPlan.currentContext**

After creating a new SQLContext, we need to populate SparkPlan.currentContext before we create any SparkPlan. Right now, only SQLContext.createSchemaRDD populate SparkPlan.currentContext. SQLContext.applySchema is missing this call and we can have NPE as described in http://qnalist.com/questions/5162981/spark-sql-1-1-0-npe-when-join-two-cached-table.


---

* [SPARK-3639](https://issues.apache.org/jira/browse/SPARK-3639) | *Minor* | **Kinesis examples set master as local**

Kinesis examples set master as local thus not allowing the example to be tested on a cluster


---

* [SPARK-3638](https://issues.apache.org/jira/browse/SPARK-3638) | *Major* | **Commons HTTP client dependency conflict in extras/kinesis-asl module**

Followed instructions as mentioned @ https://github.com/apache/spark/blob/master/docs/streaming-kinesis-integration.md and when running the example, I get the following error:

{code}
Caused by: java.lang.NoSuchMethodError: org.apache.http.impl.conn.DefaultClientConnectionOperator.<init>(Lorg/apache/http/conn/scheme/SchemeRegistry;Lorg/apache/http/conn/DnsResolver;)V
        at org.apache.http.impl.conn.PoolingClientConnectionManager.createConnectionOperator(PoolingClientConnectionManager.java:140)
        at org.apache.http.impl.conn.PoolingClientConnectionManager.<init>(PoolingClientConnectionManager.java:114)
        at org.apache.http.impl.conn.PoolingClientConnectionManager.<init>(PoolingClientConnectionManager.java:99)
        at com.amazonaws.http.ConnectionManagerFactory.createPoolingClientConnManager(ConnectionManagerFactory.java:29)
        at com.amazonaws.http.HttpClientFactory.createHttpClient(HttpClientFactory.java:97)
        at com.amazonaws.http.AmazonHttpClient.<init>(AmazonHttpClient.java:181)
        at com.amazonaws.AmazonWebServiceClient.<init>(AmazonWebServiceClient.java:119)
        at com.amazonaws.AmazonWebServiceClient.<init>(AmazonWebServiceClient.java:103)
        at com.amazonaws.services.kinesis.AmazonKinesisClient.<init>(AmazonKinesisClient.java:136)
        at com.amazonaws.services.kinesis.AmazonKinesisClient.<init>(AmazonKinesisClient.java:117)
        at com.amazonaws.services.kinesis.AmazonKinesisAsyncClient.<init>(AmazonKinesisAsyncClient.java:132)
{code}

I believe this is due to the dependency conflict as described @ http://mail-archives.apache.org/mod\_mbox/spark-dev/201409.mbox/%3CCAJOb8btdXks-7-spJJ5jMNw0XsnrjwDpCQqtjht1hUn6j4zb\_g@mail.gmail.com%3E


---

* [SPARK-3635](https://issues.apache.org/jira/browse/SPARK-3635) | *Trivial* | **Find Strongly Connected Components with Graphx has a small bug**

The strongly connected components function (spark / graphx / src / main / scala / org / apache / spark / graphx / lib / StronglyConnectedComponents.scala) has a typo in the condition on line 78.
I think the condition should be "if (e.srcAttr.\_1 < e.dstAttr.\_1)" instead of "if (e.srcId < e.dstId)"


---

* [SPARK-3634](https://issues.apache.org/jira/browse/SPARK-3634) | *Major* | **Python modules added through addPyFile should take precedence over system modules**

Python modules added through {{SparkContext.addPyFile()}} are currently \_appended\_ to {{sys.path}}; this is probably the opposite of the behavior that we want, since it causes system versions of modules to take precedence over versions explicitly added by users.

To fix this, we should change the {{sys.path}} manipulation code in {{context.py}} and {{worker.py}} to prepend files to {{sys.path}}.


---

* [SPARK-3633](https://issues.apache.org/jira/browse/SPARK-3633) | *Blocker* | **Fetches failure observed after SPARK-2711**

Running a variant of PageRank on a 6-node cluster with a 30Gb input dataset. Recently upgraded to Spark 1.1. The workload fails with the following error message(s):

{code}
14/09/19 12:10:38 WARN TaskSetManager: Lost task 51.0 in stage 2.1 (TID 552, c1705.halxg.cloudera.com): FetchFailed(BlockManagerId(1, c1706.halxg.cloudera.com, 49612, 0), shuffleId=3, mapId=75, reduceId=120)

14/09/19 12:10:38 INFO DAGScheduler: Resubmitting failed stages
{code}

In order to identify the problem, I carried out change set analysis. As I go back in time, the error message changes to:

{code}
14/09/21 12:56:54 WARN TaskSetManager: Lost task 35.0 in stage 3.0 (TID 519, c1706.halxg.cloudera.com): java.io.FileNotFoundException: /var/lib/jenkins/workspace/tmp/spark-local-20140921123257-68ee/1c/temp\_3a1ade13-b48a-437a-a466-673995304034 (Too many open files)
        java.io.FileOutputStream.open(Native Method)
        java.io.FileOutputStream.<init>(FileOutputStream.java:221)
        org.apache.spark.storage.DiskBlockObjectWriter.open(BlockObjectWriter.scala:117)
        org.apache.spark.storage.DiskBlockObjectWriter.write(BlockObjectWriter.scala:185)
        org.apache.spark.util.collection.ExternalAppendOnlyMap.spill(ExternalAppendOnlyMap.scala:197)
        org.apache.spark.util.collection.ExternalAppendOnlyMap.insertAll(ExternalAppendOnlyMap.scala:145)
        org.apache.spark.Aggregator.combineValuesByKey(Aggregator.scala:58)
        org.apache.spark.shuffle.hash.HashShuffleWriter.write(HashShuffleWriter.scala:51)
        org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:68)
        org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:41)
        org.apache.spark.scheduler.Task.run(Task.scala:54)
        org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:199)
        java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        java.lang.Thread.run(Thread.java:745)
{code}

All the way until Aug 4th. Turns out the problem changeset is 4fde28c.


---

* [SPARK-3632](https://issues.apache.org/jira/browse/SPARK-3632) | *Critical* | **ConnectionManager can run out of receive threads with authentication on**

If you turn authentication on and you are using a lot of executors. There is a chance that all the of the threads in the handleMessageExecutor could be waiting to send a message because they are blocked waiting on authentication to happen. This can cause a temporary deadlock until the connection times out.


---

* [SPARK-3628](https://issues.apache.org/jira/browse/SPARK-3628) | *Blocker* | **Don't apply accumulator updates multiple times for tasks in result stages**

In previous versions of Spark, accumulator updates only got applied once for accumulators that are only used in actions (i.e. result stages), letting you use them to deterministically compute a result. Unfortunately, this got broken in some recent refactorings.

This is related to https://issues.apache.org/jira/browse/SPARK-732, but that issue is about applying the same semantics to intermediate stages too, which is more work and may not be what we want for debugging.


---

* [SPARK-3627](https://issues.apache.org/jira/browse/SPARK-3627) | *Critical* | **spark on yarn reports success even though job fails**

I was running a wordcount and saving the output to hdfs.  If the output directory already exists, yarn reports success even though the job fails since it requires the output directory to not be there.


---

* [SPARK-3623](https://issues.apache.org/jira/browse/SPARK-3623) | *Critical* | **Graph should support the checkpoint operation**

Consider the following code:
{code}
    for (i <- 0 until totalIter) {
      val previousCorpus = corpus
      logInfo("Start Gibbs sampling (Iteration %d/%d)".format(i, totalIter))

      val corpusTopicDist = collectTermTopicDist(corpus, globalTopicCounter, sumTerms,
        numTerms, numTopics, alpha, beta).persist(storageLevel)

      val corpusSampleTopics = sampleTopics(corpusTopicDist, globalTopicCounter, sumTerms, numTerms,
        numTopics, alpha, beta).persist(storageLevel)

      corpus = updateCounter(corpusSampleTopics, numTopics).persist(storageLevel)

      globalTopicCounter = collectGlobalCounter(corpus, numTopics)
      assert(bsum(globalTopicCounter) == sumTerms)
      previousCorpus.unpersistVertices()
      corpusTopicDist.unpersistVertices()
      corpusSampleTopics.unpersistVertices()
    }
{code}
If there is no checkpoint operation will appear the following problems.
1. The RDD of corpus dependencies are too deep
2. The shuffle files are too large.
3. Any of a server crash will cause the algorithm to recalculate


---

* [SPARK-3618](https://issues.apache.org/jira/browse/SPARK-3618) | *Major* | **Store analyzed plans for temp tables**

Right now we store unanalyzed logical plans for temporary tables.  However this means that changes to session state (e.g., the current database) could result in tables becoming inaccessible.


---

* [SPARK-3616](https://issues.apache.org/jira/browse/SPARK-3616) | *Major* | **Add Selenium tests to Web UI**

We should add basic Selenium tests to Web UI suite.  This will make it easy to write regression tests / reproductions for UI bugs and will be useful in testing some planned refactorings / redesigns that I'm working on.


---

* [SPARK-3615](https://issues.apache.org/jira/browse/SPARK-3615) | *Blocker* | **Kafka test should not hard code Zookeeper port**

This is causing failures in our master build if port 2181 is contented. Instead of binding to a static port we should re-factor this such that it opens a socket on port 0 and then reads back the port. So we can never have contention.

{code}
sbt.ForkMain$ForkError: Address already in use
	at sun.nio.ch.Net.bind0(Native Method)
	at sun.nio.ch.Net.bind(Net.java:444)
	at sun.nio.ch.Net.bind(Net.java:436)
	at sun.nio.ch.ServerSocketChannelImpl.bind(ServerSocketChannelImpl.java:214)
	at sun.nio.ch.ServerSocketAdaptor.bind(ServerSocketAdaptor.java:74)
	at sun.nio.ch.ServerSocketAdaptor.bind(ServerSocketAdaptor.java:67)
	at org.apache.zookeeper.server.NIOServerCnxnFactory.configure(NIOServerCnxnFactory.java:95)
	at org.apache.spark.streaming.kafka.KafkaTestUtils$EmbeddedZookeeper.<init>(KafkaStreamSuite.scala:200)
	at org.apache.spark.streaming.kafka.KafkaStreamSuite.beforeFunction(KafkaStreamSuite.scala:62)
	at org.apache.spark.streaming.kafka.JavaKafkaStreamSuite.setUp(JavaKafkaStreamSuite.java:51)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.junit.runners.model.FrameworkMethod$1.runReflectiveCall(FrameworkMethod.java:45)
	at org.junit.internal.runners.model.ReflectiveCallable.run(ReflectiveCallable.java:15)
	at org.junit.runners.model.FrameworkMethod.invokeExplosively(FrameworkMethod.java:42)
	at org.junit.internal.runners.statements.RunBefores.evaluate(RunBefores.java:27)
	at org.junit.internal.runners.statements.RunAfters.evaluate(RunAfters.java:30)
	at org.junit.runners.ParentRunner.runLeaf(ParentRunner.java:263)
	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:68)
	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:47)
	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)
	at org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:60)
	at org.junit.runners.ParentRunner.runChildren(ParentRunner.java:229)
	at org.junit.runners.ParentRunner.access$000(ParentRunner.java:50)
	at org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:222)
	at org.junit.runners.ParentRunner.run(ParentRunner.java:300)
	at org.junit.runners.Suite.runChild(Suite.java:128)
	at org.junit.runners.Suite.runChild(Suite.java:24)
	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)
	at org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:60)
	at org.junit.runners.ParentRunner.runChildren(ParentRunner.java:229)
	at org.junit.runners.ParentRunner.access$000(ParentRunner.java:50)
	at org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:222)
	at org.junit.runners.ParentRunner.run(ParentRunner.java:300)
	at org.junit.runner.JUnitCore.run(JUnitCore.java:157)
	at org.junit.runner.JUnitCore.run(JUnitCore.java:136)
	at com.novocode.junit.JUnitRunner.run(JUnitRunner.java:90)
	at sbt.RunnerWrapper$1.runRunner2(FrameworkWrapper.java:223)
	at sbt.RunnerWrapper$1.execute(FrameworkWrapper.java:236)
	at sbt.ForkMain$Run$2.call(ForkMain.java:294)
	at sbt.ForkMain$Run$2.call(ForkMain.java:284)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
{code}


---

* [SPARK-3614](https://issues.apache.org/jira/browse/SPARK-3614) | *Minor* | **Filter on minimum occurrences of a term in IDF**

The IDF class in MLlib does not provide the capability of defining a minimum number of documents a term should appear in the corpus. The idea is to have a cutoff variable which defines this minimum occurrence value, and the terms which have lower frequency are ignored.

Mathematically,
IDF(t,D)=log( (|D|+1)/(DF(t,D)+1) ), for DF(t,D) >=minimumOccurance


where, 
D is the total number of documents in the corpus
DF(t,D) is the number of documents that contain the term t
minimumOccurance is the minimum number of documents the term appears in the document corpus

This would have an impact on accuracy as terms that appear in less than a certain limit of documents, have low or no importance in TFIDF vectors.


---

* [SPARK-3613](https://issues.apache.org/jira/browse/SPARK-3613) | *Major* | **Don't record the size of each shuffle block for large jobs**

MapStatus saves the size of each block (1 byte per block) for a particular map task. This actually means the shuffle metadata is O(M*R), where M = num maps and R = num reduces.

If M is greater than a certain size, we should probably just send an average size instead of a whole array.


---

* [SPARK-3612](https://issues.apache.org/jira/browse/SPARK-3612) | *Major* | **Executor shouldn't quit if heartbeat message fails to reach the driver**

The thread started by Executor.startDriverHeartbeater can actually terminate the whole executor if AkkaUtils.askWithReply[HeartbeatResponse] throws an exception. 

I don't think we should quit the executor this way. At the very least, we would want to log a more meaningful exception then simply
{code}
14/09/20 06:38:12 WARN AkkaUtils: Error sending message in 1 attempts
java.util.concurrent.TimeoutException: Futures timed out after [30 seconds]
        at scala.concurrent.impl.Promise$DefaultPromise.ready(Promise.scala:219)
        at scala.concurrent.impl.Promise$DefaultPromise.result(Promise.scala:223)
        at scala.concurrent.Await$$anonfun$result$1.apply(package.scala:107)
        at scala.concurrent.BlockContext$DefaultBlockContext$.blockOn(BlockContext.scala:53)
        at scala.concurrent.Await$.result(package.scala:107)
        at org.apache.spark.util.AkkaUtils$.askWithReply(AkkaUtils.scala:176)
        at org.apache.spark.executor.Executor$$anon$1.run(Executor.scala:379)
14/09/20 06:38:45 WARN AkkaUtils: Error sending message in 2 attempts
java.util.concurrent.TimeoutException: Futures timed out after [30 seconds]
        at scala.concurrent.impl.Promise$DefaultPromise.ready(Promise.scala:219)
        at scala.concurrent.impl.Promise$DefaultPromise.result(Promise.scala:223)
        at scala.concurrent.Await$$anonfun$result$1.apply(package.scala:107)
        at scala.concurrent.BlockContext$DefaultBlockContext$.blockOn(BlockContext.scala:53)
        at scala.concurrent.Await$.result(package.scala:107)
        at org.apache.spark.util.AkkaUtils$.askWithReply(AkkaUtils.scala:176)
        at org.apache.spark.executor.Executor$$anon$1.run(Executor.scala:379)
14/09/20 06:39:18 WARN AkkaUtils: Error sending message in 3 attempts
java.util.concurrent.TimeoutException: Futures timed out after [30 seconds]
        at scala.concurrent.impl.Promise$DefaultPromise.ready(Promise.scala:219)
        at scala.concurrent.impl.Promise$DefaultPromise.result(Promise.scala:223)
        at scala.concurrent.Await$$anonfun$result$1.apply(package.scala:107)
        at scala.concurrent.BlockContext$DefaultBlockContext$.blockOn(BlockContext.scala:53)
        at scala.concurrent.Await$.result(package.scala:107)
        at org.apache.spark.util.AkkaUtils$.askWithReply(AkkaUtils.scala:176)
        at org.apache.spark.executor.Executor$$anon$1.run(Executor.scala:379)
14/09/20 06:39:21 ERROR ExecutorUncaughtExceptionHandler: Uncaught exception in thread Thread[Driver Heartbeater,5,main]
org.apache.spark.SparkException: Error sending message [message = Heartbeat(281,[Lscala.Tuple2;@4d9294db,BlockManagerId(281, ip-172-31-7-55.eu-west-1.compute.internal, 52303))]
        at org.apache.spark.util.AkkaUtils$.askWithReply(AkkaUtils.scala:190)
        at org.apache.spark.executor.Executor$$anon$1.run(Executor.scala:379)
Caused by: java.util.concurrent.TimeoutException: Futures timed out after [30 seconds]
        at scala.concurrent.impl.Promise$DefaultPromise.ready(Promise.scala:219)
        at scala.concurrent.impl.Promise$DefaultPromise.result(Promise.scala:223)
        at scala.concurrent.Await$$anonfun$result$1.apply(package.scala:107)
        at scala.concurrent.BlockContext$DefaultBlockContext$.blockOn(BlockContext.scala:53)
        at scala.concurrent.Await$.result(package.scala:107)
        at org.apache.spark.util.AkkaUtils$.askWithReply(AkkaUtils.scala:176)
        ... 1 more

{code}


---

* [SPARK-3610](https://issues.apache.org/jira/browse/SPARK-3610) | *Critical* | **History server log name should not be based on user input**

Right now we use the user-defined application name when creating the logging file for the history server. We should use some type of GUID generated from inside of Spark instead of allowing user input here. It can cause errors if users provide characters that are not valid in filesystem paths.

Original bug report:
{quote}
The default log files for the Mllib examples use a rather long naming convention that includes special characters like parentheses and comma.For e.g. one of my log files is named "binaryclassifier-with-params(input.txt,100,1.0,svm,l2,0.1)-1410566770032".

When I click on the program on the history server page (at port 18080), to view the detailed application logs, the history server crashes and I need to restart it. I am using Spark 1.1 on a mesos cluster.

I renamed the  log file by removing the special characters and  then it loads up correctly. I am not sure which program is creating the log files. Can it be changed so that the default log file naming convention does not include  special characters? 
{quote}


---

* [SPARK-3609](https://issues.apache.org/jira/browse/SPARK-3609) | *Major* | **Add sizeInBytes statistics to Limit operator**

The {{sizeInBytes}} statistics of a {{LIMIT}} operator can be estimated fairly precisely when all output attributes are of native data types, all native data types except {{StringType}} have fixed size. For {{StringType}}, we can use a relatively large (say 4K) default size.


---

* [SPARK-3608](https://issues.apache.org/jira/browse/SPARK-3608) | *Critical* | **Spark EC2 Script does not correctly break when AWS tagging succeeds.**

Spark EC2 script will tag 5 times and not break out correctly if things succeed.


---

* [SPARK-3606](https://issues.apache.org/jira/browse/SPARK-3606) | *Major* | **Spark-on-Yarn AmIpFilter does not work with Yarn HA.**

The current IP filter only considers one of the RMs in an HA setup. If the active RM is not the configured one, you get a "connection refused" error when clicking on the Spark AM links in the RM UI.

Similar to YARN-1811, but for Spark.


---

* [SPARK-3605](https://issues.apache.org/jira/browse/SPARK-3605) | *Trivial* | **Typo in SchemaRDD JavaDoc**

"Examples are loading data from Parquet files by using by using the"


---

* [SPARK-3598](https://issues.apache.org/jira/browse/SPARK-3598) | *Major* | **cast to timestamp should be the same as hive**

select cast(1000 as timestamp) from src limit 1;
should return 1970-01-01 00:00:01

also, current implementation has bug when the time is before 1970-01-01 00:00:00


---

* [SPARK-3597](https://issues.apache.org/jira/browse/SPARK-3597) | *Major* | **MesosSchedulerBackend does not implement `killTask`**

The MesosSchedulerBackend class does not implement `killTask`, and therefore results in exceptions like this:

14/09/19 01:52:53 ERROR TaskSetManager: Task 238 in stage 1.0 failed 4 times; aborting job
14/09/19 01:52:53 INFO TaskSchedulerImpl: Cancelling stage 1
14/09/19 01:52:53 INFO DAGScheduler: Could not cancel tasks for stage 1
java.lang.UnsupportedOperationException
	at org.apache.spark.scheduler.SchedulerBackend$class.killTask(SchedulerBackend.scala:32)
	at org.apache.spark.scheduler.cluster.mesos.MesosSchedulerBackend.killTask(MesosSchedulerBackend.scala:41)
	at org.apache.spark.scheduler.TaskSchedulerImpl$$anonfun$cancelTasks$3$$anonfun$apply$1.apply$mcVJ$sp(TaskSchedulerImpl.scala:194)
	at org.apache.spark.scheduler.TaskSchedulerImpl$$anonfun$cancelTasks$3$$anonfun$apply$1.apply(TaskSchedulerImpl.scala:192)
	at org.apache.spark.scheduler.TaskSchedulerImpl$$anonfun$cancelTasks$3$$anonfun$apply$1.apply(TaskSchedulerImpl.scala:192)
	at scala.collection.mutable.HashSet.foreach(HashSet.scala:79)
	at org.apache.spark.scheduler.TaskSchedulerImpl$$anonfun$cancelTasks$3.apply(TaskSchedulerImpl.scala:192)
	at org.apache.spark.scheduler.TaskSchedulerImpl$$anonfun$cancelTasks$3.apply(TaskSchedulerImpl.scala:185)
	at scala.Option.foreach(Option.scala:236)
	at org.apache.spark.scheduler.TaskSchedulerImpl.cancelTasks(TaskSchedulerImpl.scala:185)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$failJobAndIndependentStages$1.apply$mcVI$sp(DAGScheduler.scala:1211)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$failJobAndIndependentStages$1.apply(DAGScheduler.scala:1197)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$failJobAndIndependentStages$1.apply(DAGScheduler.scala:1197)
	at scala.collection.mutable.HashSet.foreach(HashSet.scala:79)
	at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$failJobAndIndependentStages(DAGScheduler.scala:1197)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1174)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1173)
	at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
	at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
	at org.apache.spark.scheduler.DAGScheduler.abortStage(DAGScheduler.scala:1173)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:688)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:688)
	at scala.Option.foreach(Option.scala:236)
	at org.apache.spark.scheduler.DAGScheduler.handleTaskSetFailed(DAGScheduler.scala:688)
	at org.apache.spark.scheduler.DAGSchedulerEventProcessActor$$anonfun$receive$2.applyOrElse(DAGScheduler.scala:1391)
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

* [SPARK-3595](https://issues.apache.org/jira/browse/SPARK-3595) | *Major* | **Spark should respect configured OutputCommitter when using saveAsHadoopFile**

When calling {{saveAsHadoopFile}}, Spark hardcodes the OutputCommitter to be a {{FileOutputCommitter}}.

When using Spark on an EMR cluster to process and write files to/from S3, the default Hadoop configuration uses a {{DirectFileOutputCommitter}} to avoid writing to a temporary directory and doing a copy.

Will submit a patch via GitHub shortly.

Cheers,


---

* [SPARK-3594](https://issues.apache.org/jira/browse/SPARK-3594) | *Major* | **try more rows during inferSchema**

If there are some empty values in the first row of RDD of Row, the inferSchema will failed.

It's better to try with more rows, combine them together.


---

* [SPARK-3593](https://issues.apache.org/jira/browse/SPARK-3593) | *Major* | **Support Sorting of Binary Type Data**

If you try sorting on a binary field you currently get an exception.   Please add support for binary data type sorting.


---

* [SPARK-3592](https://issues.apache.org/jira/browse/SPARK-3592) | *Critical* | **applySchema to an RDD of Row**

Right now, we can not appy schema to a RDD of Row, this should be a Bug,

{code}
>>> srdd = sqlCtx.jsonRDD(sc.parallelize(["""{"a":2}"""]))
>>> sqlCtx.applySchema(srdd.map(lambda x:x), srdd.schema())
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  File "/Users/daviesliu/work/spark/python/pyspark/sql.py", line 1121,
in applySchema
    \_verify\_type(row, schema)
  File "/Users/daviesliu/work/spark/python/pyspark/sql.py", line 736,
in \_verify\_type
    % (dataType, type(obj)))
TypeError: StructType(List(StructField(a,IntegerType,true))) can not
accept abject in type <class 'pyspark.sql.Row'>
{code}


---

* [SPARK-3590](https://issues.apache.org/jira/browse/SPARK-3590) | *Major* | **Expose async APIs in the Java API**

Currently, a single async method is exposed through the Java API (JavaRDDLike::foreachAsync). That method returns a Scala future (FutureAction).

We should bring the Java API up to sync with the Scala async APIs, and also expose Java-friendly types (e.g. a proper java.util.concurrent.Future).


---

* [SPARK-3589](https://issues.apache.org/jira/browse/SPARK-3589) | *Minor* | **[Minor]Remove redundant code in deploy module**

"export CLASSPATH" in spark-class is redundant.

We could reuse value "isYarnCluster" in SparkSubmit.scala.


---

* [SPARK-3584](https://issues.apache.org/jira/browse/SPARK-3584) | *Major* | **sbin/slaves doesn't work when we use password authentication for SSH**

In sbin/slaves, ssh command run in the background but if we use password authentication, background ssh command doesn't work so sbin/slaves doesn't work.

Also I suggest improvement for sbin/slaves.
In current implementation, slaves file is trucked by Git but it can be edited by user so we prepare slaves.template instead of slaves.

Default slaves file has one entry, localhost, so we should use localhost as a default host list.
I modified sbin/slaves to choose localhost as a default host list.


---

* [SPARK-3582](https://issues.apache.org/jira/browse/SPARK-3582) | *Major* | **Spark SQL having issue with existing Hive UDFs which take Map as a parameter**

I have a UDF with the following evaluate method :
public Text evaluate(Text argument, Map<Text, Text> params)

And when i tried invoking this UDF, i was getting the following error.

scala.MatchError: interface java.util.Map (of class java.lang.Class)
at org.apache.spark.sql.hive.HiveInspectors$class.javaClassToDataType(HiveInspectors.scala:35)
at org.apache.spark.sql.hive.HiveFunctionRegistry.javaClassToDataType(hiveUdfs.scala:37)

had a look at HiveInspectors.scala and was not able to see any resolver for java.util.Map


---

* [SPARK-3579](https://issues.apache.org/jira/browse/SPARK-3579) | *Major* | **Jekyll doc generation is different across environments**

This can result in a lot of false changes when someone alters something with the docs. It is relevant to the both the Spark website (maintained in a separate subversion repo) and the Spark docs.

There are at least two issues here. One is that the HTML character escaping can be different in certain cases. Another is that the highlighting output seems a bit different depending on (I think) what version of pygments is used.


---

* [SPARK-3578](https://issues.apache.org/jira/browse/SPARK-3578) | *Minor* | **GraphGenerators.sampleLogNormal sometimes returns too-large result**

GraphGenerators.sampleLogNormal is supposed to return an integer strictly less than maxVal. However, it violates this guarantee. It generates its return value as follows:

{code}
var X: Double = maxVal

while (X >= maxVal) {
  val Z = rand.nextGaussian()
  X = math.exp(mu + sigma*Z)
}
math.round(X.toFloat)
{code}

When X is sampled to be close to (but less than) maxVal, then it will pass the while loop condition, but the rounded result will be equal to maxVal, which will fail the test.

For example, if maxVal is 5 and X is 4.9, then X < maxVal, but math.round(X.toFloat) is 5.

A solution is to round X down instead of to the nearest integer.


---

* [SPARK-3573](https://issues.apache.org/jira/browse/SPARK-3573) | *Critical* | **Dataset**

This JIRA is for discussion of ML dataset, essentially a SchemaRDD with extra ML-specific metadata embedded in its schema.

.Sample code

Suppose we have training events stored on HDFS and user/ad features in Hive, we want to assemble features for training and then apply decision tree.
The proposed pipeline with dataset looks like the following (need more refinements):

{code}
sqlContext.jsonFile("/path/to/training/events", 0.01).registerTempTable("event")
val training = sqlContext.sql("""
  SELECT event.id AS eventId, event.userId AS userId, event.adId AS adId, event.action AS label,
         user.gender AS userGender, user.country AS userCountry, user.features AS userFeatures,
         ad.targetGender AS targetGender
    FROM event JOIN user ON event.userId = user.id JOIN ad ON event.adId = ad.id;""").cache()

val indexer = new Indexer()
val interactor = new Interactor()
val fvAssembler = new FeatureVectorAssembler()
val treeClassifer = new DecisionTreeClassifer()

val paramMap = new ParamMap()
  .put(indexer.features, Map("userCountryIndex" -> "userCountry"))
  .put(indexer.sortByFrequency, true)
  .put(interactor.features, Map("genderMatch" -> Array("userGender", "targetGender")))
  .put(fvAssembler.features, Map("features" -> Array("genderMatch", "userCountryIndex", "userFeatures")))
  .put(fvAssembler.dense, true)
  .put(treeClassifer.maxDepth, 4) // By default, classifier recognizes "features" and "label" columns.

val pipeline = Pipeline.create(indexer, interactor, fvAssembler, treeClassifier)
val model = pipeline.fit(training, paramMap)

sqlContext.jsonFile("/path/to/events", 0.01).registerTempTable("event")
val test = sqlContext.sql("""
  SELECT event.id AS eventId, event.userId AS userId, event.adId AS adId,
         user.gender AS userGender, user.country AS userCountry, user.features AS userFeatures,
         ad.targetGender AS targetGender
    FROM event JOIN user ON event.userId = user.id JOIN ad ON event.adId = ad.id;""")

val prediction = model.transform(test).select('eventId, 'prediction)
{code}


---

* [SPARK-3572](https://issues.apache.org/jira/browse/SPARK-3572) | *Major* | **Internal API for User-Defined Types**

If a user knows how to map a class to a struct type in Spark SQL, he should be able to register this mapping through sqlContext and hence SQL can figure out the schema automatically.

{code}
trait RowSerializer[T] {
  def dataType: StructType
  def serialize(obj: T): Row
  def deserialize(row: Row): T
}

sqlContext.registerUserType[T](clazz: classOf[T], serializer: classOf[RowSerializer[T]])
{code}

In sqlContext, we can maintain a class-to-serializer map and use it for conversion. The serializer class can be embedded into the metadata, so when `select` is called, we know we want to deserialize the result.

{code}
sqlContext.registerUserType(classOf[Vector], classOf[VectorRowSerializer])
val points: RDD[LabeledPoint] = ...
val features: RDD[Vector] = points.select('features).map { case Row(v: Vector) => v }
{code}


---

* [SPARK-3571](https://issues.apache.org/jira/browse/SPARK-3571) | *Blocker* | **Spark standalone cluster mode doesn't work.**

Recent changes of Master.scala causes Spark standalone cluster mode not working.

I think, the loop in Master#schedule never assign worker for driver.

{code}
    for (driver <- waitingDrivers.toList) { // iterate over a copy of waitingDrivers
      // We assign workers to each waiting driver in a round-robin fashion. For each driver, we
      // start from the last worker that was assigned a driver, and continue onwards until we have
      // explored all alive workers.
      curPos = (curPos + 1) % aliveWorkerNum
      val startPos = curPos
      var launched = false
      while (curPos != startPos && !launched) {
        val worker = shuffledAliveWorkers(curPos)
        if (worker.memoryFree >= driver.desc.mem && worker.coresFree >= driver.desc.cores) {
          launchDriver(worker, driver)
          waitingDrivers -= driver
          launched = true
        }
        curPos = (curPos + 1) % aliveWorkerNum
      }

{code}


---

* [SPARK-3569](https://issues.apache.org/jira/browse/SPARK-3569) | *Major* | **Add metadata field to StructField**

Want to add a metadata field to StructField that can be used by other applications like ML to embed more information about the column.

{code}
case class case class StructField(name: String, dataType: DataType, nullable: Boolean, metadata: Map[String, Any] = Map.empty)
{code}

For ML, we can store feature information like categorical/continuous, number categories, category-to-index map, etc.

One question is how to carry over the metadata in query execution. For example:

{code}
val features = schemaRDD.select('features)
val featuresDesc = features.schema('features).metadata
{code}


---

* [SPARK-3568](https://issues.apache.org/jira/browse/SPARK-3568) | *Major* | **Add metrics for ranking algorithms**

Include common metrics for ranking algorithms (http://www-nlp.stanford.edu/IR-book/), including:
 - Mean Average Precision
 - Precision@n: top-n precision
 - Discounted cumulative gain (DCG) and NDCG 

This implementation attempts to create a new class called *RankingMetrics* under *org.apache.spark.mllib.evaluation*, which accepts input (prediction and label pairs) as *RDD[Array[T], Array[T]]*. The following methods will be implemented:

{code:title=RankingMetrics.scala|borderStyle=solid}
class RankingMetrics[T](predictionAndLabels: RDD[(Array[T], Array[T])]) {
  /* Returns the precsion@k for each query */
  lazy val precAtK: RDD[Array[Double]]

  /**
   * @param k the position to compute the truncated precision
   * @return the average precision at the first k ranking positions
   */
  def precision(k: Int): Double

  /* Returns the average precision for each query */
  lazy val avePrec: RDD[Double]

  /*Returns the mean average precision (MAP) of all the queries*/
  lazy val meanAvePrec: Double

  /*Returns the normalized discounted cumulative gain for each query */
  lazy val ndcgAtK: RDD[Array[Double]]

  /**
   * @param k the position to compute the truncated ndcg
   * @return the average ndcg at the first k ranking positions
   */
  def ndcg(k: Int): Double
}
{code}


---

* [SPARK-3567](https://issues.apache.org/jira/browse/SPARK-3567) | *Major* | **appId field in SparkDeploySchedulerBackend should be volatile**

appId field in SparkDeploySchedulerBackend is set by AppClient.ClientActor#receiveWithLogging and appId is referred via SparkDeploySchedulerBackend#applicationId.

A thread which runs AppClient.ClientActor and a thread invoking SparkDeploySchedulerBackend#applicationId can be another threads so appId should be volatile.


---

* [SPARK-3566](https://issues.apache.org/jira/browse/SPARK-3566) | *Minor* | **.gitignore and .rat-excludes should consider Windows cmd file and Emacs' backup files**

Current .gitignore and .rat-excludes does not consider spark-env.cmd.
Also, .gitignore doesn't consider emacs' meta files (backup file which starts with and ends with # and lock file which starts with .#) even though considers vi's meta file (*.swp).


---

* [SPARK-3564](https://issues.apache.org/jira/browse/SPARK-3564) | *Major* | **Display App ID on HistoryPage**

Current HistoryPage display doesn't display App ID so if there are lots of applications which have same name, it's difficult to find an application we'd like to know it's status.


---

* [SPARK-3560](https://issues.apache.org/jira/browse/SPARK-3560) | *Critical* | **In yarn-cluster mode, the same jars are distributed through multiple mechanisms.**

In yarn-cluster mode, jars given to spark-submit's --jars argument should be distributed to executors through the distributed cache, not through fetching.

Currently, Spark tries to distribute the jars both ways, which can cause executor errors related to trying to overwrite symlinks without write permissions.

It looks like this was introduced by SPARK-2260, which sets spark.jars in yarn-cluster mode.  Setting spark.jars is necessary for standalone cluster deploy mode, but harmful for yarn cluster deploy mode.


---

* [SPARK-3559](https://issues.apache.org/jira/browse/SPARK-3559) | *Blocker* | **appendReadColumnIDs and appendReadColumnNames introduce unnecessary columns in the lists of needed column ids and column names stored in hiveConf**

Because we are using the same hiveConf and we are currently using ColumnProjectionUtils.appendReadColumnIDs ColumnProjectionUtils.appendReadColumnNames to append needed column ids and names for a table, lists of needed column ids and names can have unnecessary columns.

Also, for a join operation, TableScanOperators for both tables are sharing the same hiveConf and they may need to set table-specific properties.


---

* [SPARK-3556](https://issues.apache.org/jira/browse/SPARK-3556) | *Major* | **Monitoring and debugging improvements (Spark 1.2)**

This is an umbrella issue to track monitoring and debugging improvements that are targeted for Spark 1.2.


---

* [SPARK-3555](https://issues.apache.org/jira/browse/SPARK-3555) | *Blocker* | **UI port contention suite flakey**

This has been failing in our master build since this afternoon. Not sure exactly what is causing it, but one clear improvement would be to bind to a random port and then read back the port. This is a strict improvement so we should just do this and see if it fixes the test.

{code}
UISuite:
- jetty selects different port under contention *** FAILED ***
  4040 equaled 4040 (UISuite.scala:127)
{code}


---

* [SPARK-3554](https://issues.apache.org/jira/browse/SPARK-3554) | *Major* | **handle large dataset in closure of PySpark**

Sometimes there are large dataset used in closure and user forget to use broadcast for it, then the serialized command will become huge.

py4j can not handle large objects efficiently, we should compress the serialized command and user broadcast for it if it's huge.


---

* [SPARK-3547](https://issues.apache.org/jira/browse/SPARK-3547) | *Minor* | **Maybe we should not simply make return code 1 equal to CLASS\_NOT\_FOUND**

It incurred runtime exception when hadoop version is not A.B.* format, which is detected by Hive. Then the jvm return code is 1, while equals to CLASS\_NOT\_FOUND\_EXIT\_STATUS in start-thriftserver.sh script. It proves even runtime exception can lead the jvm existed with code 1.
Should we just modify the misleading error message in script ?

The error message in script:
CLASS\_NOT\_FOUND\_EXIT\_STATUS=1
if [[ exit\_status -eq CLASS\_NOT\_FOUND\_EXIT\_STATUS ]]; then
  echo
  echo "Failed to load Hive Thrift server main class $CLASS."
  echo "You need to build Spark with -Phive."
fi

Below is exception stack I met:

[omm@dc1-rack1-host2 sbin]$ ./start-thriftserver.sh 
log4j:WARN No appenders could be found for logger (org.apache.hadoop.util.Shell).
log4j:WARN Please initialize the log4j system properly.
log4j:WARN See http://logging.apache.org/log4j/1.2/faq.html#noconfig for more info.
Using Spark's default log4j profile: org/apache/spark/log4j-defaults.properties
Exception in thread "main" java.lang.RuntimeException: org.apache.hadoop.hive.ql.metadata.HiveException: java.lang.RuntimeException: java.lang.RuntimeException: Illegal Hadoop Version: V100R001C00 (expected A.B.* format)
        at org.apache.hadoop.hive.ql.session.SessionState.start(SessionState.java:286)
        at org.apache.spark.sql.hive.thriftserver.HiveThriftServer2$.main(HiveThriftServer2.scala:54)
        at org.apache.spark.sql.hive.thriftserver.HiveThriftServer2.main(HiveThriftServer2.scala)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:606)
        at org.apache.spark.deploy.SparkSubmit$.launch(SparkSubmit.scala:332)
        at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:79)
        at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)
Caused by: org.apache.hadoop.hive.ql.metadata.HiveException: java.lang.RuntimeException: java.lang.RuntimeException: Illegal Hadoop Version: V100R001C00 (expected A.B.* format)
        at org.apache.hadoop.hive.ql.metadata.HiveUtils.getAuthenticator(HiveUtils.java:368)
        at org.apache.hadoop.hive.ql.session.SessionState.start(SessionState.java:278)
        ... 9 more
Caused by: java.lang.RuntimeException: java.lang.RuntimeException: Illegal Hadoop Version: V100R001C00 (expected A.B.* format)
        at org.apache.hadoop.hive.ql.security.HadoopDefaultAuthenticator.setConf(HadoopDefaultAuthenticator.java:53)
        at org.apache.hadoop.util.ReflectionUtils.setConf(ReflectionUtils.java:73)
        at org.apache.hadoop.util.ReflectionUtils.newInstance(ReflectionUtils.java:133)
        at org.apache.hadoop.hive.ql.metadata.HiveUtils.getAuthenticator(HiveUtils.java:365)
        ... 10 more
Caused by: java.lang.RuntimeException: Illegal Hadoop Version: V100R001C00 (expected A.B.* format)
        at org.apache.hadoop.hive.shims.ShimLoader.getMajorVersion(ShimLoader.java:141)
        at org.apache.hadoop.hive.shims.ShimLoader.loadShims(ShimLoader.java:113)
        at org.apache.hadoop.hive.shims.ShimLoader.getHadoopShims(ShimLoader.java:80)
        at org.apache.hadoop.hive.ql.security.HadoopDefaultAuthenticator.setConf(HadoopDefaultAuthenticator.java:51)
        ... 13 more

Failed to load Hive Thrift server main class org.apache.spark.sql.hive.thriftserver.HiveThriftServer2.
You need to build Spark with -Phive.

I tested runtime exception and ioexception today, and JVM will also return with exit code 1. Below is my code and error it lead.
Code, throw ArrayIndexOutOfBoundsException and FileNotFoundException:

object ExitCodeWithRuntimeException
{
  def main(args: Array[String]): Unit =
  {
    if(args(0).equals("array"))
      arrayIndexOutOfBoundsException(args)
    else if(args(0).equals("file"))
      fileNotFoundException()
  }

  def arrayIndexOutOfBoundsException(args: Array[String]): Unit =
  {
    println(args(args.length))
  }

  def fileNotFoundException(): Unit =
  {
    val fis = new FileInputStream("filedoesnotexist")
  }
}

Error:
Exception in thread "main" java.lang.ArrayIndexOutOfBoundsException: 1
	at scala.ExitCodeWithRuntimeException$.arrayIndexOutOfBoundsException(ExitCodeWithRuntimeException.scala:24)
	at scala.ExitCodeWithRuntimeException$.main(ExitCodeWithRuntimeException.scala:17)
	at scala.ExitCodeWithRuntimeException.main(ExitCodeWithRuntimeException.scala)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)
	at java.lang.reflect.Method.invoke(Method.java:597)
	at com.intellij.rt.execution.application.AppMain.main(AppMain.java:120)

Process finished with exit code 1

Exception in thread "main" java.io.FileNotFoundException: filedoesnotexist (系统找不到指定的文件。)
	at java.io.FileInputStream.open(Native Method)
	at java.io.FileInputStream.<init>(FileInputStream.java:120)
	at java.io.FileInputStream.<init>(FileInputStream.java:79)
	at scala.ExitCodeWithRuntimeException$.fileNotFoundException(ExitCodeWithRuntimeException.scala:29)
	at scala.ExitCodeWithRuntimeException$.main(ExitCodeWithRuntimeException.scala:19)
	at scala.ExitCodeWithRuntimeException.main(ExitCodeWithRuntimeException.scala)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)
	at java.lang.reflect.Method.invoke(Method.java:597)
	at com.intellij.rt.execution.application.AppMain.main(AppMain.java:120)

Process finished with exit code 1

So, we need to change the exit code represented ClassNotFoundException to a special one.


---

* [SPARK-3546](https://issues.apache.org/jira/browse/SPARK-3546) | *Critical* | **InputStream of ManagedBuffer is not closed and causes running out of file descriptor**

If application has lots of shuffle blocks, resource leak (running out of file descriptor) is occurred.

Following text is file descriptors of an Executor which has lots of blocks
{code}
・・・
lr-x------ 1 yarn yarn 64  9月 16 20:28 2014 9980 -> /hadoop/yarn/local/usercache/kou/appcache/application\_1410858801629\_0012/spark-local-20140916200509-7444/13/shuffle\_0\_340\_0.data
lr-x------ 1 yarn yarn 64  9月 16 20:28 2014 9981 -> /hadoop/yarn/local/usercache/kou/appcache/application\_1410858801629\_0012/spark-local-20140916200509-7444/37/shuffle\_0\_355\_0.data
lr-x------ 1 yarn yarn 64  9月 16 20:28 2014 9982 -> /hadoop/yarn/local/usercache/kou/appcache/application\_1410858801629\_0012/spark-local-20140916200509-7444/10/shuffle\_0\_370\_0.data
lr-x------ 1 yarn yarn 64  9月 16 20:28 2014 9983 -> /hadoop/yarn/local/usercache/kou/appcache/application\_1410858801629\_0012/spark-local-20140916200509-7444/0c/shuffle\_0\_385\_0.data
lr-x------ 1 yarn yarn 64  9月 16 20:28 2014 9984 -> /hadoop/yarn/local/usercache/kou/appcache/application\_1410858801629\_0012/spark-local-20140916200509-7444/0e/shuffle\_0\_390\_0.data
lr-x------ 1 yarn yarn 64  9月 16 20:28 2014 9985 -> /hadoop/yarn/local/usercache/kou/appcache/application\_1410858801629\_0012/spark-local-20140916200509-7444/1d/shuffle\_0\_405\_0.data
lr-x------ 1 yarn yarn 64  9月 16 20:28 2014 9986 -> /hadoop/yarn/local/usercache/kou/appcache/application\_1410858801629\_0012/spark-local-20140916200509-7444/36/shuffle\_0\_420\_0.data
lr-x------ 1 yarn yarn 64  9月 16 20:28 2014 9987 -> /hadoop/yarn/local/usercache/kou/appcache/application\_1410858801629\_0012/spark-local-20140916200509-7444/1b/shuffle\_0\_425\_0.data
lr-x------ 1 yarn yarn 64  9月 16 20:28 2014 9988 -> /hadoop/yarn/local/usercache/kou/appcache/application\_1410858801629\_0012/spark-local-20140916200509-7444/0b/shuffle\_0\_430\_0.data
lr-x------ 1 yarn yarn 64  9月 16 20:28 2014 9989 -> /hadoop/yarn/local/usercache/kou/appcache/application\_1410858801629\_0012/spark-local-20140916200509-7444/0d/shuffle\_0\_450\_0.data
lr-x------ 1 yarn yarn 64  9月 16 20:11 2014 999 -> /hadoop/yarn/local/usercache/kou/appcache/application\_1410858801629\_0012/spark-local-20140916200509-7444/28/shuffle\_1\_630\_0.data
lr-x------ 1 yarn yarn 64  9月 16 20:28 2014 9990 -> /hadoop/yarn/local/usercache/kou/appcache/application\_1410858801629\_0012/spark-local-20140916200509-7444/29/shuffle\_0\_465\_0.data
lr-x------ 1 yarn yarn 64  9月 16 20:28 2014 9991 -> /hadoop/yarn/local/usercache/kou/appcache/application\_1410858801629\_0012/spark-local-20140916200509-7444/14/shuffle\_0\_495\_0.data
lr-x------ 1 yarn yarn 64  9月 16 20:28 2014 9992 -> /hadoop/yarn/local/usercache/kou/appcache/application\_1410858801629\_0012/spark-local-20140916200509-7444/3c/shuffle\_0\_525\_0.data
lr-x------ 1 yarn yarn 64  9月 16 20:28 2014 9993 -> /hadoop/yarn/local/usercache/kou/appcache/application\_1410858801629\_0012/spark-local-20140916200509-7444/2a/shuffle\_0\_530\_0.data
lr-x------ 1 yarn yarn 64  9月 16 20:28 2014 9994 -> /hadoop/yarn/local/usercache/kou/appcache/application\_1410858801629\_0012/spark-local-20140916200509-7444/05/shuffle\_0\_535\_0.data
lr-x------ 1 yarn yarn 64  9月 16 20:28 2014 9995 -> /hadoop/yarn/local/usercache/kou/appcache/application\_1410858801629\_0012/spark-local-20140916200509-7444/15/shuffle\_0\_540\_0.data
lr-x------ 1 yarn yarn 64  9月 16 20:28 2014 9996 -> /hadoop/yarn/local/usercache/kou/appcache/application\_1410858801629\_0012/spark-local-20140916200509-7444/2c/shuffle\_0\_550\_0.data
lr-x------ 1 yarn yarn 64  9月 16 20:28 2014 9997 -> /hadoop/yarn/local/usercache/kou/appcache/application\_1410858801629\_0012/spark-local-20140916200509-7444/13/shuffle\_0\_560\_0.data
lr-x------ 1 yarn yarn 64  9月 16 20:28 2014 9998 -> /hadoop/yarn/local/usercache/kou/appcache/application\_1410858801629\_0012/spark-local-20140916200509-7444/12/shuffle\_0\_570\_0.data
lr-x------ 1 yarn yarn 64  9月 16 20:27 2014 9999 -> /hadoop/yarn/local/usercache/kou/appcache/application\_1410858801629\_0012/spark-local-20140916200509-7444/2f/shuffle\_0\_580\_0.data
{code}

This is caused by not closing InputStream generated by ManagedBuffer.


---

* [SPARK-3543](https://issues.apache.org/jira/browse/SPARK-3543) | *Critical* | **Write TaskContext in Java and expose it through a static accessor**

Right now we have these xWithContext methods and it's a bit awkward (for instance, we don't support accessing taskContext from a normal map or filter operation). I'd propose the following

1. Re-write TaskContext in Java - it's a simple class. It can still refer to the scala version of TaskMetrics.
2. Have a static method `TaskContext.get()` which will return the current in-scope TaskContext. Under the hood this uses a thread local variable similar to SparkEnv that the Executor sets.
3. Deprecate all of the existing xWithContext methods.


---

* [SPARK-3540](https://issues.apache.org/jira/browse/SPARK-3540) | *Major* | **Add reboot-slaves functionality to the ec2 script**

Often when running large scale tests, it is possible to get the slaves to be at 100% usr or 100% cpu (or over committing memory), and they would no longer be responsive. It would be useful to have a reboot-slaves command so we can reboot all slaves using the script.


---

* [SPARK-3539](https://issues.apache.org/jira/browse/SPARK-3539) | *Minor* | **Task description "apply at Option.scala:120"; no user code involved**

In Spark 1.1, I'm seeing tasks with callbacks that don't involve my code at all!
I'd seen something like this before in 1.0.0, but the behavior seems to be back

apply at Option.scala:120
org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:202)
scala.Option.getOrElse(Option.scala:120)
org.apache.spark.rdd.RDD.partitions(RDD.scala:202)
org.apache.spark.rdd.FilteredRDD.getPartitions(FilteredRDD.scala:29)
org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:204)
org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:202)
scala.Option.getOrElse(Option.scala:120)
org.apache.spark.rdd.RDD.partitions(RDD.scala:202)
org.apache.spark.rdd.MappedRDD.getPartitions(MappedRDD.scala:28)
org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:204)
org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:202)
scala.Option.getOrElse(Option.scala:120)
org.apache.spark.rdd.RDD.partitions(RDD.scala:202)
org.apache.spark.rdd.FilteredRDD.getPartitions(FilteredRDD.scala:29)
org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:204)
org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:202)
scala.Option.getOrElse(Option.scala:120)
org.apache.spark.rdd.RDD.partitions(RDD.scala:202)
org.apache.spark.rdd.MappedRDD.getPartitions(MappedRDD.scala:28)
org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:204)


---

* [SPARK-3537](https://issues.apache.org/jira/browse/SPARK-3537) | *Major* | **Statistics for cached RDDs**

Right now we only have limited statistics for hive tables.  We could easily collect this data when caching an RDD as well.


---

* [SPARK-3536](https://issues.apache.org/jira/browse/SPARK-3536) | *Major* | **SELECT on empty parquet table throws exception**

Reported by [~matei].  Reproduce as follows:
{code}
scala> case class Data(i: Int)
defined class Data

scala> createParquetFile[Data]("testParquet")
scala> parquetFile("testParquet").count()
14/09/15 14:34:17 WARN scheduler.DAGScheduler: Creating new stage failed due to exception - job: 0
java.lang.NullPointerException
	at org.apache.spark.sql.parquet.FilteringParquetRowInputFormat.getSplits(ParquetTableOperations.scala:438)
	at parquet.hadoop.ParquetInputFormat.getSplits(ParquetInputFormat.java:344)
	at org.apache.spark.rdd.NewHadoopRDD.getPartitions(NewHadoopRDD.scala:95)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:204)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:202)
{code}


---

* [SPARK-3535](https://issues.apache.org/jira/browse/SPARK-3535) | *Major* | **Spark on Mesos not correctly setting heap overhead**

Spark on Mesos does account for any memory overhead.  The result is that tasks are OOM killed nearly 95% of the time.

Like with the Hadoop on Mesos project, Spark should set aside 15-25% of the executor memory for JVM overhead.

For example, see: https://github.com/mesos/hadoop/blob/master/src/main/java/org/apache/hadoop/mapred/ResourcePolicy.java#L55-L63


---

* [SPARK-3534](https://issues.apache.org/jira/browse/SPARK-3534) | *Blocker* | **Avoid running MLlib and Streaming tests when testing SQL PRs**

We are bumping up against the 120 minute time limit for tests pretty regularly now.  Since we have decreased the number of shuffle partitions and up-ed the parallelism I don't think there is much low hanging fruit to speed up the SQL tests. (The tests that are listed as taking 2-3 minutes are actually 100s of tests that I think are valuable).  Instead I propose we avoid running tests that we don't need to.

This will have the added benefit of eliminating failures in SQL due to flaky streaming tests.

Note that this won't fix the full builds that are run for every commit.  There I think we just just up the test timeout.

cc: [~joshrosen] [~pwendell]


---

* [SPARK-3531](https://issues.apache.org/jira/browse/SPARK-3531) | *Major* | **select null from table would throw a MatchError**

"select null from src limit 1" will lead to a scala.MatchError


---

* [SPARK-3530](https://issues.apache.org/jira/browse/SPARK-3530) | *Critical* | **Pipeline and Parameters**

This part of the design doc is for pipelines and parameters. I put the design doc at

https://docs.google.com/document/d/1rVwXRjWKfIb-7PI6b86ipytwbUH7irSNLF1\_6dLmh8o/edit?usp=sharing

I will copy the proposed interfaces to this JIRA later. Some sample code can be viewed at: https://github.com/mengxr/spark-ml/

Please help review the design and post your comments here. Thanks!


---

* [SPARK-3526](https://issues.apache.org/jira/browse/SPARK-3526) | *Major* | **Docs section on data locality**

Several threads on the mailing list have been about data locality and how to interpret PROCESS\_LOCAL, NODE\_LOCAL, RACK\_LOCAL, etc.  Let's get some more details in the docs on this concept so we can point future questions there.

A couple people appreciated the below description of locality so it could be a good starting point:

{quote}
The locality is how close the data is to the code that's processing it.  PROCESS\_LOCAL means data is in the same JVM as the code that's running, so it's really fast.  NODE\_LOCAL might mean that the data is in HDFS on the same node, or in another executor on the same node, so is a little slower because the data has to travel across an IPC connection.  RACK\_LOCAL is even slower -- data is on a different server so needs to be sent over the network.

Spark switches to lower locality levels when there's no unprocessed data on a node that has idle CPUs.  In that situation you have two options: wait until the busy CPUs free up so you can start another task that uses data on that server, or start a new task on a farther away server that needs to bring data from that remote place.  What Spark typically does is wait a bit in the hopes that a busy CPU frees up.  Once that timeout expires, it starts moving the data from far away to the free CPU.
{quote}


---

* [SPARK-3519](https://issues.apache.org/jira/browse/SPARK-3519) | *Major* | **PySpark RDDs are missing the distinct(n) method**

{{distinct()}} works but {{distinct(N)}} doesn't.

{code}
>>> sc.parallelize([1,1,2]).distinct()
PythonRDD[15] at RDD at PythonRDD.scala:43
>>> sc.parallelize([1,1,2]).distinct(2)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
TypeError: distinct() takes exactly 1 argument (2 given)
{code}

The PySpark docs only call out [the {{distinct()}} signature|http://spark.apache.org/docs/1.1.0/api/python/pyspark.rdd.RDD-class.html#distinct], but the programming guide [includes the {{distinct(N)}} signature|http://spark.apache.org/docs/1.1.0/programming-guide.html#transformations] as well.

{quote}
{noformat}
distinct([numTasks]))	Return a new dataset that contains the distinct elements of the source dataset.
{noformat}
{quote}


---

* [SPARK-3518](https://issues.apache.org/jira/browse/SPARK-3518) | *Minor* | **Remove useless statement in JsonProtocol**

In org.apache.spark.util.JsonProtocol#taskInfoToJson, a variable named "accumUpdateMap" is created as follows.

{code}
val accumUpdateMap = taskInfo.accumulables
{code}

But accumUpdateMap is never used and there is 2nd invocation of "taskInfo.accumlables" as follows.

{code}
("Accumulables" -> JArray(taskInfo.accumulables.map(accumulableInfoToJson).toList))
{code}


---

* [SPARK-3516](https://issues.apache.org/jira/browse/SPARK-3516) | *Minor* | **DecisionTree Python support for params maxInstancesPerNode, maxInfoGain**

Add DecisionTree parameters to Python API:
* maxInstancesPerNode
* maxInfoGain


---

* [SPARK-3515](https://issues.apache.org/jira/browse/SPARK-3515) | *Major* | **ParquetMetastoreSuite fails when executed together with other suites under Maven**

Reproduction step:
{code}
mvn -Phive,hadoop-2.4 -DwildcardSuites=org.apache.spark.sql.parquet.ParquetMetastoreSuite,org.apache.spark.sql.hive.StatisticsSuite -pl core,sql/catalyst,sql/core,sql/hive test
{code}
Maven instantiates all discovered test suite object at first, and then starts executing all test cases. {{ParquetMetastoreSuite}} sets up several temporary tables in constructor, but these tables are deleted immediately since {{StatisticsSuite}}'s constructor calls {{TestHiveContext.reset()}}.

To fix this issue, we shouldn't put this kind of side effect in constructor, but in {{beforeAll}}.


---

* [SPARK-3503](https://issues.apache.org/jira/browse/SPARK-3503) | *Major* | **Disable thread local cache in PooledByteBufAllocator**

Feedback from Norman.

Thread-local caches should be disabled because the ByteBufs are allocated by the event loop thread, but released by the executor thread rather than the event loop thread. Those thread-local caches actually delay the recycling of buffers, leading to larger memory usage.


---

* [SPARK-3502](https://issues.apache.org/jira/browse/SPARK-3502) | *Major* | **SO\_RCVBUF and SO\_SNDBUF should be bootstrap childOption, not option**

Part of Norman Maurer's review feedback.


---

* [SPARK-3501](https://issues.apache.org/jira/browse/SPARK-3501) | *Minor* | **Hive SimpleUDF will create duplicated type cast which cause exception in constant folding**

When do the query like:
select datediff(cast(value as timestamp), cast('2002-03-21 00:00:00' as timestamp)) from src;

SparkSQL will raise exception:
{panel}
[info] - Cast Timestamp to Timestamp in UDF *** FAILED ***
[info]   scala.MatchError: TimestampType (of class org.apache.spark.sql.catalyst.types.TimestampType$)
[info]   at org.apache.spark.sql.catalyst.expressions.Cast.castToTimestamp(Cast.scala:77)
[info]   at org.apache.spark.sql.catalyst.expressions.Cast.cast$lzycompute(Cast.scala:251)
[info]   at org.apache.spark.sql.catalyst.expressions.Cast.cast(Cast.scala:247)
[info]   at org.apache.spark.sql.catalyst.expressions.Cast.eval(Cast.scala:263)
[info]   at org.apache.spark.sql.catalyst.optimizer.ConstantFolding$$anonfun$apply$5$$anonfun$applyOrElse$2.applyOrElse(Optimizer.scala:217)
[info]   at org.apache.spark.sql.catalyst.optimizer.ConstantFolding$$anonfun$apply$5$$anonfun$applyOrElse$2.applyOrElse(Optimizer.scala:210)
[info]   at org.apache.spark.sql.catalyst.trees.TreeNode.transformDown(TreeNode.scala:144)
[info]   at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$4$$anonfun$apply$2.apply(TreeNode.scala:180)
[info]   at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
[info]   at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
{panel}


---

* [SPARK-3500](https://issues.apache.org/jira/browse/SPARK-3500) | *Critical* | **coalesce() and repartition() of SchemaRDD is broken**

{code}
>>> sqlCtx.jsonRDD(sc.parallelize(['{"foo":"bar"}', '{"foo":"baz"}'])).coalesce(1)
Py4JError: An error occurred while calling o94.coalesce. Trace:
py4j.Py4JException: Method coalesce([class java.lang.Integer, class java.lang.Boolean]) does not exist
{code}

repartition() is also missing too.


---

* [SPARK-3496](https://issues.apache.org/jira/browse/SPARK-3496) | *Critical* | **Block replication can by mistake choose driver BlockManager as a peer for replication**

When selecting peer block managers for replicating a block, the driver block manager can also get chosen accidentally. This is because BlockManagerMasterActor did not filter out the driver block manager.


---

* [SPARK-3495](https://issues.apache.org/jira/browse/SPARK-3495) | *Critical* | **Block replication fails continuously when the replication target node is dead**

If a block manager (say, A) wants to replicate a block and the node chosen for replication (say, B) is dead, then the attempt to send the block to B fails. However, this continues to fail indefinitely. Even if the driver learns about the demise of the B, A continues to try replicating to B and failing miserably. 

The reason behind this bug is that A initially fetches a list of peers from the driver (when B was active), but never updates it after B is dead. This affects Spark Streaming as its receiver uses block replication.


---

* [SPARK-3494](https://issues.apache.org/jira/browse/SPARK-3494) | *Major* | **DecisionTree overflow error in calculating maxMemoryUsage**

maxMemoryUsage can easily overflow.  It needs to use long ints, and also check for overflows afterwards.


---

* [SPARK-3491](https://issues.apache.org/jira/browse/SPARK-3491) | *Major* | **Use pickle to serialize the data in MLlib Python**

Currently, we write the code for serialization/deserialization in Python and Scala manually, it can not scale to the big number of MLlib API.

If the serialization could be done in pickle (using Pyrolite in JVM) in extensional way, then it should be much easy to add Python API for MLlib.


---

* [SPARK-3490](https://issues.apache.org/jira/browse/SPARK-3490) | *Major* | **Alleviate port collisions during tests**

A few tests, notably SparkSubmitSuite and DriverSuite, have been failing intermittently because we open too many ephemeral ports and occasionally can't bind to new ones.

We should minimize the use of ports during tests where possible. A great candidate is the SparkUI, which is not needed for most tests.


---

* [SPARK-3486](https://issues.apache.org/jira/browse/SPARK-3486) | *Major* | **Add PySpark support for Word2Vec**

Add PySpark support for Word2Vec


---

* [SPARK-3485](https://issues.apache.org/jira/browse/SPARK-3485) | *Major* | **should check parameter type when find constructors**

In hiveUdfs, we get constructors of primitivetypes by find a constructor which takes only one parameter. This is very dangerous when more than one constructors match. When the sequence of primitiveTypes becomes larger, the problem would occur.


---

* [SPARK-3483](https://issues.apache.org/jira/browse/SPARK-3483) | *Major* | **Special chars in column names**

For columns with special characters in names, double quoted ANSI syntax would be nice to have.
select "a/b" from mytable

Is there a workaround for this? Currently the grammar interprets this as a string value.


---

* [SPARK-3481](https://issues.apache.org/jira/browse/SPARK-3481) | *Minor* | **HiveComparisonTest throws exception of "org.apache.hadoop.hive.ql.metadata.HiveException: Database does not exist: default"**

In local test, lots of exception raised like:
{panel}
11:08:01.746 ERROR hive.ql.exec.DDLTask: org.apache.hadoop.hive.ql.metadata.HiveException: Database does not exist: default
	at org.apache.hadoop.hive.ql.exec.DDLTask.switchDatabase(DDLTask.java:3480)
	at org.apache.hadoop.hive.ql.exec.DDLTask.execute(DDLTask.java:237)
	at org.apache.hadoop.hive.ql.exec.Task.executeTask(Task.java:151)
	at org.apache.hadoop.hive.ql.exec.TaskRunner.runSequential(TaskRunner.java:65)
	at org.apache.hadoop.hive.ql.Driver.launchTask(Driver.java:1414)
	at org.apache.hadoop.hive.ql.Driver.execute(Driver.java:1192)
	at org.apache.hadoop.hive.ql.Driver.runInternal(Driver.java:1020)
	at org.apache.hadoop.hive.ql.Driver.run(Driver.java:888)
	at org.apache.spark.sql.hive.HiveContext.runHive(HiveContext.scala:298)
	at org.apache.spark.sql.hive.HiveContext.runSqlHive(HiveContext.scala:272)
	at org.apache.spark.sql.hive.test.TestHiveContext.runSqlHive(TestHive.scala:88)
	at org.apache.spark.sql.hive.test.TestHiveContext.reset(TestHive.scala:348)
	at org.apache.spark.sql.hive.execution.HiveComparisonTest$$anonfun$createQueryTest$1.apply$mcV$sp(HiveComparisonTest.scala:255)
	at org.apache.spark.sql.hive.execution.HiveComparisonTest$$anonfun$createQueryTest$1.apply(HiveComparisonTest.scala:225)
	at org.apache.spark.sql.hive.execution.HiveComparisonTest$$anonfun$createQueryTest$1.apply(HiveComparisonTest.scala:225)
	at org.scalatest.Transformer$$anonfun$apply$1.apply(Transformer.scala:22)
	at org.scalatest.Transformer$$anonfun$apply$1.apply(Transformer.scala:22)
	at org.scalatest.OutcomeOf$class.outcomeOf(OutcomeOf.scala:85)
	at org.scalatest.OutcomeOf$.outcomeOf(OutcomeOf.scala:104)
	at org.scalatest.Transformer.apply(Transformer.scala:22)
	at org.scalatest.Transformer.apply(Transformer.scala:20)
	at org.scalatest.FunSuiteLike$$anon$1.apply(FunSuiteLike.scala:158)
	at org.scalatest.Suite$class.withFixture(Suite.scala:1121)
	at org.scalatest.FunSuite.withFixture(FunSuite.scala:1559)
	at org.scalatest.FunSuiteLike$class.invokeWithFixture$1(FunSuiteLike.scala:155)
	at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:167)
	at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:167)
	at org.scalatest.SuperEngine.runTestImpl(Engine.scala:306)
	at org.scalatest.FunSuiteLike$class.runTest(FunSuiteLike.scala:167)
	at org.scalatest.FunSuite.runTest(FunSuite.scala:1559)
	at org.scalatest.FunSuiteLike$$anonfun$runTests$1.apply(FunSuiteLike.scala:200)
	at org.scalatest.FunSuiteLike$$anonfun$runTests$1.apply(FunSuiteLike.scala:200)
	at org.scalatest.SuperEngine$$anonfun$traverseSubNodes$1$1.apply(Engine.scala:413)
	at org.scalatest.SuperEngine$$anonfun$traverseSubNodes$1$1.apply(Engine.scala:401)
	at scala.collection.immutable.List.foreach(List.scala:318)
	at org.scalatest.SuperEngine.traverseSubNodes$1(Engine.scala:401)
	at org.scalatest.SuperEngine.org$scalatest$SuperEngine$$runTestsInBranch(Engine.scala:396)
	at org.scalatest.SuperEngine.runTestsImpl(Engine.scala:483)
	at org.scalatest.FunSuiteLike$class.runTests(FunSuiteLike.scala:200)
	at org.scalatest.FunSuite.runTests(FunSuite.scala:1559)
	at org.scalatest.Suite$class.run(Suite.scala:1423)
	at org.scalatest.FunSuite.org$scalatest$FunSuiteLike$$super$run(FunSuite.scala:1559)
	at org.scalatest.FunSuiteLike$$anonfun$run$1.apply(FunSuiteLike.scala:204)
	at org.scalatest.FunSuiteLike$$anonfun$run$1.apply(FunSuiteLike.scala:204)
	at org.scalatest.SuperEngine.runImpl(Engine.scala:545)
	at org.scalatest.FunSuiteLike$class.run(FunSuiteLike.scala:204)
	at org.apache.spark.sql.hive.execution.HiveComparisonTest.org$scalatest$BeforeAndAfterAll$$super$run(HiveComparisonTest.scala:41)
	at org.scalatest.BeforeAndAfterAll$class.liftedTree1$1(BeforeAndAfterAll.scala:257)
	at org.scalatest.BeforeAndAfterAll$class.run(BeforeAndAfterAll.scala:256)
	at org.apache.spark.sql.hive.execution.HiveComparisonTest.run(HiveComparisonTest.scala:41)
	at org.scalatest.tools.Framework.org$scalatest$tools$Framework$$runSuite(Framework.scala:444)
	at org.scalatest.tools.Framework$ScalaTestTask.execute(Framework.scala:651)
	at sbt.ForkMain$Run$2.call(ForkMain.java:294)
	at sbt.ForkMain$Run$2.call(ForkMain.java:284)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)

11:08:01.747 ERROR org.apache.hadoop.hive.ql.Driver: FAILED: Execution Error, return code 1 from org.apache.hadoop.hive.ql.exec.DDLTask. Database does not exist: default
11:08:01.747 ERROR org.apache.spark.sql.hive.test.TestHive: 
{panel}


---

* [SPARK-3479](https://issues.apache.org/jira/browse/SPARK-3479) | *Major* | **Have Jenkins show which category of tests failed in his GitHub messages**

A nice thing to do for starters would be to report which category of tests failed (e.g. Python style vs. Spark unit tests), and then later work on showing the specific failures.


---

* [SPARK-3478](https://issues.apache.org/jira/browse/SPARK-3478) | *Major* | **Profile Python tasks stage by stage in worker**

The Python code in driver is easy to profile by users, but the code run in worker is distributed in clusters, is not easy to profile by users.

So we need a way to do the profiling in worker and aggregate all the result together for users.

This also can be used to analys the bottleneck in PySpark.


---

* [SPARK-3477](https://issues.apache.org/jira/browse/SPARK-3477) | *Major* | **Clean up code in Yarn Client / ClientBase**

With the addition of new features and supporting multiple versions of yarn the code has become cumbersome and could use some clean.  We should add comments and update to follow the new style guilines also.


---

* [SPARK-3470](https://issues.apache.org/jira/browse/SPARK-3470) | *Minor* | **Have JavaSparkContext implement Closeable/AutoCloseable**

After discussion in SPARK-2972, it seems like a good idea to allow Java developers to use Java 7 automatic resource management with JavaSparkContext, like so:

{code:java}
try (JavaSparkContext ctx = new JavaSparkContext(...)) {
   return br.readLine();
}
{code}


---

* [SPARK-3469](https://issues.apache.org/jira/browse/SPARK-3469) | *Major* | **All TaskCompletionListeners should be called even if some of them fail**

If there are multiple TaskCompletionListeners, and any one of them misbehaves (e.g. throws an exception), then we will skip executing the rest of them.

As we are increasingly relying on TaskCompletionListener for cleaning up of resources, we should make sure they are always called, even if the previous ones fail.


---

* [SPARK-3467](https://issues.apache.org/jira/browse/SPARK-3467) | *Major* | **Python BatchedSerializer should dynamically lower batch size for large objects**

If you try caching largish objects in Python, you will get a crash sooner than you would in Scala / Java because Python automatically batches them. I believe the default batch size is 10, though it may be 1024. But maybe we can start by pickling the first object and using a smaller batch size if it is large.


---

* [SPARK-3466](https://issues.apache.org/jira/browse/SPARK-3466) | *Critical* | **Limit size of results that a driver collects for each action**

Right now, operations like {{collect()}} and {{take()}} can crash the driver with an OOM if they bring back too many data. We should add a {{spark.driver.maxResultSize}} setting (or something like that) that will make the driver abort a job if its result is too big. We can set it to some fraction of the driver's memory by default, or to something like 100 MB.


---

* [SPARK-3465](https://issues.apache.org/jira/browse/SPARK-3465) | *Blocker* | **Task metrics are not aggregated correctly in local mode**

In local mode, after onExecutorMetricsUpdate(), t.taskMetrics will be the same object with that in TaskContext (because there is no serialization for MetricsUpdate in local mode), then all the upcoming changes in metrics will be lost, because updateAggregateMetrics() only counts the difference in these two. 

This bug was introduced in https://issues.apache.org/jira/browse/SPARK-2099, cc [~sandyr]]


---

* [SPARK-3463](https://issues.apache.org/jira/browse/SPARK-3463) | *Major* | **Show metrics about spilling in Python**

It should also show the number of bytes spilled into disks while doing aggregation in Python.


---

* [SPARK-3462](https://issues.apache.org/jira/browse/SPARK-3462) | *Major* | **parquet pushdown for unionAll**

http://apache-spark-developers-list.1001551.n3.nabble.com/parquet-predicate-projection-pushdown-into-unionAll-td8339.html

// single table, pushdown
scala> p.where('age < 40).select('name)
res36: org.apache.spark.sql.SchemaRDD =
SchemaRDD[97] at RDD at SchemaRDD.scala:103
== Query Plan ==
== Physical Plan ==
Project [name#3]
 ParquetTableScan [name#3,age#4], (ParquetRelation /var/tmp/people, Some(Configuration: core-default.xml, core-site.xml, mapred-default.xml, mapred-site.xml), org.apache.spark.sql.SQLContext@6d7e79f6, []), [(age#4 < 40)]


// union of 2 tables, no pushdown
scala> b.where('age < 40).select('name)
res37: org.apache.spark.sql.SchemaRDD =
SchemaRDD[99] at RDD at SchemaRDD.scala:103
== Query Plan ==
== Physical Plan ==
Project [name#3]
 Filter (age#4 < 40)
  Union [ParquetTableScan [name#3,age#4,phones#5], (ParquetRelation /var/tmp/people, Some(Configuration: core-default.xml, core-site.xml, mapred-default.xml, mapred-site.xml), org.apache.spark.sql.SQLContext@6d7e79f6, []), []
,ParquetTableScan [name#0,age#1,phones#2], (ParquetRelation /var/tmp/people2, Some(Configuration: core-default.xml, core-site.xml, mapred-default.xml, mapred-site.xml), org.apache.spark.sql.SQLContext@6d7e79f6, []), []
]


---

* [SPARK-3458](https://issues.apache.org/jira/browse/SPARK-3458) | *Major* | **enable use of python's "with" statements for SparkContext management**

best practice for managing SparkContexts involves exception handling, e.g.

{code}
try:
  sc = SparkContext()
  app(sc)
finally:
  sc.stop()
{code}

python provides the "with" statement to simplify this code, e.g.

{code}
with SparkContext() as sc:
  app(sc)
{code}

the SparkContext should be usable in a "with" statement


---

* [SPARK-3456](https://issues.apache.org/jira/browse/SPARK-3456) | *Critical* | **YarnAllocator can lose container requests to RM**

I haven't actually tested this yet, but I believe that spark on yarn can lose container requests to the RM.  The reason is that we ask for the total number upfront (say x) but then we don't ask for anymore unless some are missing and if we do then we could erase the original request.

For example

- ask for 3 containers
- 1 is allocated
- ask for 0 containers since asked for 3 originally (2 left)
- the 1 allocated dies
- We now ask for 1 since its missing, this will override whatever is on the yarn side (in this case 2).

Then we lose the 2 more we need.


---

* [SPARK-3452](https://issues.apache.org/jira/browse/SPARK-3452) | *Critical* | **Maven build should skip publishing artifacts people shouldn't depend on**

I think it's easy to do this by just adding a skip configuration somewhere. We shouldn't be publishing repl, yarn, assembly, tools, repl-bin, or examples.


---

* [SPARK-3448](https://issues.apache.org/jira/browse/SPARK-3448) | *Minor* | **SpecificMutableRow.update doesn't check for null**

{code}
  test("SpecificMutableRow.update with null") {
    val row = new SpecificMutableRow(Seq(IntegerType))
    row(0) = null
    assert(row.isNullAt(0))
  }
{code}


---

* [SPARK-3447](https://issues.apache.org/jira/browse/SPARK-3447) | *Major* | **Kryo NPE when serializing JListWrapper**

Repro (provided by [~davies]):
{code}
from pyspark.sql import SQLContext; SQLContext(sc).inferSchema(sc.parallelize([{"a": [3]}])).\_jschema\_rdd.collect()
{code}

{code}
14/09/05 21:59:47 ERROR TaskResultGetter: Exception while getting task result
com.esotericsoftware.kryo.KryoException: java.lang.NullPointerException
Serialization trace:
underlying (scala.collection.convert.Wrappers$JListWrapper)
values (org.apache.spark.sql.catalyst.expressions.GenericRow)
at com.esotericsoftware.kryo.serializers.FieldSerializer$ObjectField.read(FieldSerializer.java:626)
at com.esotericsoftware.kryo.serializers.FieldSerializer.read(FieldSerializer.java:221)
at com.esotericsoftware.kryo.Kryo.readClassAndObject(Kryo.java:729)
at com.esotericsoftware.kryo.serializers.DefaultArraySerializers$ObjectArraySerializer.read(DefaultArraySerializers.java:338)
at com.esotericsoftware.kryo.serializers.DefaultArraySerializers$ObjectArraySerializer.read(DefaultArraySerializers.java:293)
at com.esotericsoftware.kryo.Kryo.readObject(Kryo.java:648)
at com.esotericsoftware.kryo.serializers.FieldSerializer$ObjectField.read(FieldSerializer.java:605)
at com.esotericsoftware.kryo.serializers.FieldSerializer.read(FieldSerializer.java:221)
at com.esotericsoftware.kryo.Kryo.readClassAndObject(Kryo.java:729)
at com.esotericsoftware.kryo.serializers.DefaultArraySerializers$ObjectArraySerializer.read(DefaultArraySerializers.java:338)
at com.esotericsoftware.kryo.serializers.DefaultArraySerializers$ObjectArraySerializer.read(DefaultArraySerializers.java:293)
at com.esotericsoftware.kryo.Kryo.readClassAndObject(Kryo.java:729)
at org.apache.spark.serializer.KryoSerializerInstance.deserialize(KryoSerializer.scala:162)
at org.apache.spark.scheduler.DirectTaskResult.value(TaskResult.scala:79)
at org.apache.spark.scheduler.TaskSetManager.handleSuccessfulTask(TaskSetManager.scala:514)
at org.apache.spark.scheduler.TaskSchedulerImpl.handleSuccessfulTask(TaskSchedulerImpl.scala:355)
at org.apache.spark.scheduler.TaskResultGetter$$anon$2$$anonfun$run$1.apply$mcV$sp(TaskResultGetter.scala:68)
at org.apache.spark.scheduler.TaskResultGetter$$anon$2$$anonfun$run$1.apply(TaskResultGetter.scala:47)
at org.apache.spark.scheduler.TaskResultGetter$$anon$2$$anonfun$run$1.apply(TaskResultGetter.scala:47)
at org.apache.spark.util.Utils$.logUncaughtExceptions(Utils.scala:1276)
at org.apache.spark.scheduler.TaskResultGetter$$anon$2.run(TaskResultGetter.scala:46)
at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1146)
at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
at java.lang.Thread.run(Thread.java:701)
Caused by: java.lang.NullPointerException
at scala.collection.convert.Wrappers$MutableBufferWrapper.add(Wrappers.scala:80)
at com.esotericsoftware.kryo.serializers.CollectionSerializer.read(CollectionSerializer.java:109)
at com.esotericsoftware.kryo.serializers.CollectionSerializer.read(CollectionSerializer.java:18)
at com.esotericsoftware.kryo.Kryo.readObject(Kryo.java:648)
at com.esotericsoftware.kryo.serializers.FieldSerializer$ObjectField.read(FieldSerializer.java:605)
... 23 more
{code}


---

* [SPARK-3446](https://issues.apache.org/jira/browse/SPARK-3446) | *Major* | **FutureAction should expose the job ID**

This is a follow up to SPARK-2636.

The patch for that bug added a {{jobId}} method to {{SimpleFutureAction}}. The problem is that {{SimpleFutureAction}} is not exposed through any existing API; all the {{AsyncRDDActions}} methods return just {{FutureAction}}. So clients have to restore to casting / isInstanceOf to be able to use that.

Exposing the {{jobId}} through {{FutureAction}} has extra complications, though, because {{ComplexFutureAction}} also extends that class.


---

* [SPARK-3443](https://issues.apache.org/jira/browse/SPARK-3443) | *Minor* | **Update the default values of some decision tree parameters**

Update:

1. maxMemoryInMB: 128 -> 256
2. maxBins: 100 -> 32
3. maxDepth: 4 -> 5 (in some example code)

This is discussed in https://github.com/apache/spark/pull/2125.


---

* [SPARK-3433](https://issues.apache.org/jira/browse/SPARK-3433) | *Minor* | **Mima false-positives with @DeveloperAPI and @Experimental annotations**

In https://github.com/apache/spark/pull/2315, I found two cases where {{@DeveloperAPI}} and {{@Experimental}} annotations didn't prevent false-positive warnings from Mima.  To reproduce this problem, run dev/mima as of https://github.com/JoshRosen/spark/commit/ec90e21947b615d4ef94a3a54cfd646924ccaf7c.  The spurious warnings are listed at the top of https://gist.github.com/JoshRosen/5d8df835516dc367389d.


---

* [SPARK-3429](https://issues.apache.org/jira/browse/SPARK-3429) | *Major* | **Don't include the empty string "" as a defaultAclUser**

The empty string is included as a default ACL user for reads and admin permissions.  I'm unsure if it's a security bug, but we should exclude this "" user as it's an obvious bug.


---

* [SPARK-3427](https://issues.apache.org/jira/browse/SPARK-3427) | *Major* | **Avoid active vertex tracking in static PageRank**

GraphX's current implementation of static (fixed iteration count) PageRank uses the Pregel API. This unnecessarily tracks active vertices, even though in static PageRank all vertices are always active. Active vertex tracking incurs the following costs:

1. A shuffle per iteration to ship the active sets to the edge partitions.
2. A hash table creation per iteration at each partition to index the active sets for lookup.
3. A hash lookup per edge to check whether the source vertex is active.

I reimplemented static PageRank using the lower-level GraphX API instead of the Pregel API. In benchmarks on a 16-node m2.4xlarge cluster, this provided a 23% speedup (from 514 s to 397 s, mean over 3 trials) for 10 iterations of PageRank on a synthetic graph with 10M vertices and 1.27B edges.


---

* [SPARK-3426](https://issues.apache.org/jira/browse/SPARK-3426) | *Blocker* | **Sort-based shuffle compression behavior is inconsistent**

We have the following configs:

{code}
spark.shuffle.compress
spark.shuffle.spill.compress
{code}

When these two diverge, sort-based shuffle fails with a compression exception under certain workloads. This is because in sort-based shuffle we serve the index file (using spark.shuffle.spill.compress) as a normal shuffle file (using spark.shuffle.compress). It was unfortunate in retrospect that these two configs were exposed so we can't easily remove them.

Here is how this can be reproduced. Set the following in your spark-defaults.conf:
{code}
spark.master                  local-cluster[1,1,512]
spark.shuffle.spill.compress  false
spark.shuffle.compress        true
spark.shuffle.manager         sort
spark.shuffle.memoryFraction  0.001
{code}
Then run the following in spark-shell:
{code}
sc.parallelize(0 until 100000).map(i => (i/4, i)).groupByKey().collect()
{code}

This leads to compression errors, such as the following:

{code}
[info]   org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 1.0 failed 4 times, most recent failure: Lost task 0.3 in stage 1.0 (TID 8, joshs-mbp): java.io.IOException: FAILED\_TO\_UNCOMPRESS(5)
[info]         org.xerial.snappy.SnappyNative.throw\_error(SnappyNative.java:84)
[info]         org.xerial.snappy.SnappyNative.rawUncompress(Native Method)
[info]         org.xerial.snappy.Snappy.rawUncompress(Snappy.java:444)
[info]         org.xerial.snappy.Snappy.uncompress(Snappy.java:480)
[info]         org.xerial.snappy.SnappyInputStream.readFully(SnappyInputStream.java:127)
[info]         org.xerial.snappy.SnappyInputStream.readHeader(SnappyInputStream.java:88)
[info]         org.xerial.snappy.SnappyInputStream.<init>(SnappyInputStream.java:58)
[info]         org.apache.spark.io.SnappyCompressionCodec.compressedInputStream(CompressionCodec.scala:128)
[info]         org.apache.spark.storage.BlockManager.wrapForCompression(BlockManager.scala:1090)
[info]         org.apache.spark.storage.BlockManager.getLocalShuffleFromDisk(BlockManager.scala:350)
[info]         org.apache.spark.storage.ShuffleBlockFetcherIterator$$anonfun$fetchLocalBlocks$1$$anonfun$apply$4.apply(ShuffleBlockFetcherIterator.scala:196)
[info]         org.apache.spark.storage.ShuffleBlockFetcherIterator$$anonfun$fetchLocalBlocks$1$$anonfun$apply$4.apply(ShuffleBlockFetcherIterator.scala:196)
[info]         org.apache.spark.storage.ShuffleBlockFetcherIterator.next(ShuffleBlockFetcherIterator.scala:243)
[info]         org.apache.spark.storage.ShuffleBlockFetcherIterator.next(ShuffleBlockFetcherIterator.scala:52)
[info]         scala.collection.Iterator$$anon$13.hasNext(Iterator.scala:371)
[info]         org.apache.spark.util.CompletionIterator.hasNext(CompletionIterator.scala:30)
[info]         org.apache.spark.InterruptibleIterator.hasNext(InterruptibleIterator.scala:39)
[info]         org.apache.spark.util.collection.ExternalAppendOnlyMap.insertAll(ExternalAppendOnlyMap.scala:129)
[info]         org.apache.spark.Aggregator.combineValuesByKey(Aggregator.scala:58)
[info]         org.apache.spark.shuffle.hash.HashShuffleReader.read(HashShuffleReader.scala:46)
[info]         org.apache.spark.rdd.ShuffledRDD.compute(ShuffledRDD.scala:92)
[info]         org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
[info]         org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
[info]         org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:61)
[info]         org.apache.spark.scheduler.Task.run(Task.scala:56)
[info]         org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:181)
[info]         java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
[info]         java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
[info]         java.lang.Thread.run(Thread.java:745)
{code}

Similarly, with

{code}
spark.shuffle.spill.compress  true
spark.shuffle.compress        false
{code}

we see

{code}
info]   org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 1.0 failed 4 times, most recent failure: Lost task 0.3 in stage 1.0 (TID 8, joshs-mbp): java.io.StreamCorruptedException: invalid stream header: 82534E41
[info]         java.io.ObjectInputStream.readStreamHeader(ObjectInputStream.java:804)
[info]         java.io.ObjectInputStream.<init>(ObjectInputStream.java:299)
[info]         org.apache.spark.serializer.JavaDeserializationStream$$anon$1.<init>(JavaSerializer.scala:57)
[info]         org.apache.spark.serializer.JavaDeserializationStream.<init>(JavaSerializer.scala:57)
[info]         org.apache.spark.serializer.JavaSerializerInstance.deserializeStream(JavaSerializer.scala:95)
[info]         org.apache.spark.storage.BlockManager.getLocalShuffleFromDisk(BlockManager.scala:355)
[info]         org.apache.spark.storage.ShuffleBlockFetcherIterator$$anonfun$fetchLocalBlocks$1$$anonfun$apply$4.apply(ShuffleBlockFetcherIterator.scala:197)
[info]         org.apache.spark.storage.ShuffleBlockFetcherIterator$$anonfun$fetchLocalBlocks$1$$anonfun$apply$4.apply(ShuffleBlockFetcherIterator.scala:197)
[info]         org.apache.spark.storage.ShuffleBlockFetcherIterator.next(ShuffleBlockFetcherIterator.scala:244)
[info]         org.apache.spark.storage.ShuffleBlockFetcherIterator.next(ShuffleBlockFetcherIterator.scala:52)
[info]         scala.collection.Iterator$$anon$13.hasNext(Iterator.scala:371)
[info]         org.apache.spark.util.CompletionIterator.hasNext(CompletionIterator.scala:30)
[info]         org.apache.spark.InterruptibleIterator.hasNext(InterruptibleIterator.scala:39)
[info]         org.apache.spark.util.collection.ExternalAppendOnlyMap.insertAll(ExternalAppendOnlyMap.scala:129)
[info]         org.apache.spark.Aggregator.combineValuesByKey(Aggregator.scala:58)
[info]         org.apache.spark.shuffle.hash.HashShuffleReader.read(HashShuffleReader.scala:46)
[info]         org.apache.spark.rdd.ShuffledRDD.compute(ShuffledRDD.scala:92)
[info]         org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
[info]         org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
[info]         org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:61)
[info]         org.apache.spark.scheduler.Task.run(Task.scala:56)
[info]         org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:181)
[info]         java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
[info]         java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
[info]         java.lang.Thread.run(Thread.java:745)
{code}


---

* [SPARK-3425](https://issues.apache.org/jira/browse/SPARK-3425) | *Minor* | **OpenJDK - when run with jvm 1.8, should not set MaxPermSize**

In JVM 1.8.0, MaxPermSize is no longer supported.
In spark stderr output, there would be a line of

Java HotSpot(TM) 64-Bit Server VM warning: ignoring option MaxPermSize=128m; support was removed in 8.0


---

* [SPARK-3423](https://issues.apache.org/jira/browse/SPARK-3423) | *Minor* | **Implement BETWEEN support for regular SQL parser**

The HQL parser supports BETWEEN but the SQLParser currently does not.  It would be great if it did.


---

* [SPARK-3420](https://issues.apache.org/jira/browse/SPARK-3420) | *Major* | **Using Sphinx to generate API docs for PySpark**

Sphinx can generate better documents than epydoc, so let's move on to Sphinx.


---

* [SPARK-3418](https://issues.apache.org/jira/browse/SPARK-3418) | *Major* | **[MLlib] Additional BLAS and Local Sparse Matrix support**

Currently MLlib doesn't have Level-2 and Level-3 BLAS support. For Multi-Model training, adding support for Level-3 BLAS functions is vital.

In addition, as most real data is sparse, support for Local Sparse Matrices will also be added, as supporting sparse matrices will save a lot of memory and will lead to better performance. The ability to left multiply a dense matrix with a sparse matrix, i.e. `C := alpha * A * B + beta * C` where `A` is a sparse matrix will also be added. However, `B` and `C` will remain as Dense Matrices for now.

I will post performance comparisons with other libraries that support sparse matrices such as Breeze and Matrix-toolkits-JAVA (MTJ) in the comments.


---

* [SPARK-3417](https://issues.apache.org/jira/browse/SPARK-3417) | *Minor* | **Use of old-style classes in pyspark**

pyspark seems to use old-style classes

class Foo:

These are relatively ancient and should be replaced by

class Foo(object):

Many newer libraries depend on this change.


---

* [SPARK-3415](https://issues.apache.org/jira/browse/SPARK-3415) | *Major* | **Using sys.stderr in pyspark results in error**

Using sys.stderr in pyspark results in: 
  File "/home/spark-1.1/dist/python/pyspark/cloudpickle.py", line 660, in save\_file
    from ..transport.adapter import SerializingAdapter
ValueError: Attempted relative import beyond toplevel package

Code to reproduce (copy paste the code in pyspark):

import sys
  
class TestClass(object):
    def \_\_init\_\_(self, out = sys.stderr):
        self.out = out
    def getOne(self):
        return 'one'
  
    
def f():
    print type(t)
    return 'ok'
    
  
t = TestClass()
a = [ 1 , 2, 3, 4, 5 ]
b = sc.parallelize(a)
b.map(lambda x: f()).first()


---

* [SPARK-3414](https://issues.apache.org/jira/browse/SPARK-3414) | *Critical* | **Case insensitivity breaks when unresolved relation contains attributes with uppercase letters in their names**

Paste the following snippet to {{spark-shell}} (need Hive support) to reproduce this issue:
{code}
import org.apache.spark.sql.hive.HiveContext

val hiveContext = new HiveContext(sc)
import hiveContext.\_

case class LogEntry(filename: String, message: String)
case class LogFile(name: String)

sc.makeRDD(Seq.empty[LogEntry]).registerTempTable("rawLogs")
sc.makeRDD(Seq.empty[LogFile]).registerTempTable("logFiles")

val srdd = sql(
  """
    SELECT name, message
    FROM rawLogs
    JOIN (
      SELECT name
      FROM logFiles
    ) files
    ON rawLogs.filename = files.name
  """)

srdd.registerTempTable("boom")
sql("select * from boom")
{code}
Exception thrown:
{code}
SchemaRDD[7] at RDD at SchemaRDD.scala:103
== Query Plan ==
== Physical Plan ==
org.apache.spark.sql.catalyst.errors.package$TreeNodeException: Unresolved attributes: *, tree:
Project [*]
 LowerCaseSchema
  Subquery boom
   Project ['name,'message]
    Join Inner, Some(('rawLogs.filename = name#2))
     LowerCaseSchema
      Subquery rawlogs
       SparkLogicalPlan (ExistingRdd [filename#0,message#1], MapPartitionsRDD[1] at mapPartitions at basicOperators.scala:208)
     Subquery files
      Project [name#2]
       LowerCaseSchema
        Subquery logfiles
         SparkLogicalPlan (ExistingRdd [name#2], MapPartitionsRDD[4] at mapPartitions at basicOperators.scala:208)
{code}
Notice that {{rawLogs}} in the join operator is not lowercased.

The reason is that, during analysis phase, the {{CaseInsensitiveAttributeReferences}} batch is only executed before the {{Resolution}} batch. And when {{srdd}} is registered as temporary table {{boom}}, its original (unanalyzed) logical plan is stored into the catalog:
{code}
Join Inner, Some(('rawLogs.filename = 'files.name))
 UnresolvedRelation None, rawLogs, None
 Subquery files
  Project ['name]
   UnresolvedRelation None, logFiles, None
{code}
notice that attributes referenced in the join operator (esp. {{rawLogs}}) is not lowercased yet.

And then, when {{select * from boom}} is been analyzed, its input logical plan is:
{code}
Project [*]
 UnresolvedRelation None, boom, None
{code}
here the unresolved relation points to the unanalyzed logical plan of {{srdd}} above, which is later discovered by rule {{ResolveRelations}}, thus not touched by {{CaseInsensitiveAttributeReferences}} at all, and {{rawLogs.filename}} is thus not lowercased:
{code}
=== Applying Rule org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveRelations ===
 Project [*]                            Project [*]
! UnresolvedRelation None, boom, None    LowerCaseSchema
!                                         Subquery boom
!                                          Project ['name,'message]
!                                           Join Inner, Some(('rawLogs.filename = 'files.name))
!                                            LowerCaseSchema
!                                             Subquery rawlogs
!                                              SparkLogicalPlan (ExistingRdd [filename#0,message#1], MapPartitionsRDD[1] at mapPartitions at basicOperators.scala:208)
!                                            Subquery files
!                                             Project ['name]
!                                              LowerCaseSchema
!                                               Subquery logfiles
!                                                SparkLogicalPlan (ExistingRdd [name#2], MapPartitionsRDD[4] at mapPartitions at basicOperators.scala:208)
{code}

A reasonable fix for this could be always register analyzed logical plan to the catalog when registering temporary tables.


---

* [SPARK-3411](https://issues.apache.org/jira/browse/SPARK-3411) | *Minor* | **Improve load-balancing of concurrently-submitted drivers across workers**

If the waiting driver array is too big, the drivers in it will be dispatched to the first worker we get(if it has enough resources), with or without the Randomization.

We should do randomization every time we dispatch a driver, in order to better balance drivers.

Update(2014/9/6):Doing shuffle is much slower, so we use round robin to avoid it.


---

* [SPARK-3410](https://issues.apache.org/jira/browse/SPARK-3410) | *Minor* | **The priority of shutdownhook for ApplicationMaster should not be integer literal**

In ApplicationMaster, the priority of shutdown hook is set to 30, which expects higher than the priority of o.a.h.FileSystem.
In FileSystem, the priority of shutdown hook is expressed as public constant named "SHUTDOWN\_HOOK\_PRIORITY" so I think it's better to use this constant for the priority of ApplicationMaster's shutdown hook.


---

* [SPARK-3409](https://issues.apache.org/jira/browse/SPARK-3409) | *Major* | **Avoid pulling in Exchange operator itself in Exchange's closures**

{code}
        val rdd = child.execute().mapPartitions { iter =>
          if (sortBasedShuffleOn) {
            iter.map(r => (null, r.copy()))
          } else {
            val mutablePair = new MutablePair[Null, Row]()
            iter.map(r => mutablePair.update(null, r))
          }
        }
{code}

The above snippet from Exchange references sortBasedShuffleOn within a closure, which requires pulling in the entire Exchange object in the closure. 

This is a tiny teeny optimization.


---

* [SPARK-3406](https://issues.apache.org/jira/browse/SPARK-3406) | *Minor* | **Python persist API does not have a default storage level**

PySpark's persist method on RDD's does not have a default storage level. This is different than the Scala API which defaults to in memory caching. This is minor.


---

* [SPARK-3404](https://issues.apache.org/jira/browse/SPARK-3404) | *Critical* | **SparkSubmitSuite fails with "spark-submit exits with code 1"**

Maven-based Jenkins builds have been failing for over a month. For example:
https://amplab.cs.berkeley.edu/jenkins/job/Spark-Master-Maven-pre-YARN/

It's SparkSubmitSuite that fails. For example:
https://amplab.cs.berkeley.edu/jenkins/job/Spark-Master-Maven-pre-YARN/541/hadoop.version=2.0.0-mr1-cdh4.1.2,label=centos/consoleFull

{code}
SparkSubmitSuite
...
- launch simple application with spark-submit *** FAILED ***
  org.apache.spark.SparkException: Process List(./bin/spark-submit, --class, org.apache.spark.deploy.SimpleApplicationTest, --name, testApp, --master, local, file:/tmp/1409815981504-0/testJar-1409815981505.jar) exited with code 1
  at org.apache.spark.util.Utils$.executeAndGetOutput(Utils.scala:837)
  at org.apache.spark.deploy.SparkSubmitSuite.runSparkSubmit(SparkSubmitSuite.scala:311)
  at org.apache.spark.deploy.SparkSubmitSuite$$anonfun$14.apply$mcV$sp(SparkSubmitSuite.scala:291)
  at org.apache.spark.deploy.SparkSubmitSuite$$anonfun$14.apply(SparkSubmitSuite.scala:284)
  at org.apache.spark.deploy.SparkSubmitSuite$$anonfun$14.apply(SparkSubmitSuite.scala:284)
  at org.scalatest.Transformer$$anonfun$apply$1.apply(Transformer.scala:22)
  at org.scalatest.Transformer$$anonfun$apply$1.apply(Transformer.scala:22)
  at org.scalatest.OutcomeOf$class.outcomeOf(OutcomeOf.scala:85)
  at org.scalatest.OutcomeOf$.outcomeOf(OutcomeOf.scala:104)
  at org.scalatest.Transformer.apply(Transformer.scala:22)
  ...
- spark submit includes jars passed in through --jar *** FAILED ***
  org.apache.spark.SparkException: Process List(./bin/spark-submit, --class, org.apache.spark.deploy.JarCreationTest, --name, testApp, --master, local-cluster[2,1,512], --jars, file:/tmp/1409815984960-0/testJar-1409815985029.jar,file:/tmp/1409815985030-0/testJar-1409815985087.jar, file:/tmp/1409815984959-0/testJar-1409815984959.jar) exited with code 1
  at org.apache.spark.util.Utils$.executeAndGetOutput(Utils.scala:837)
  at org.apache.spark.deploy.SparkSubmitSuite.runSparkSubmit(SparkSubmitSuite.scala:311)
  at org.apache.spark.deploy.SparkSubmitSuite$$anonfun$15.apply$mcV$sp(SparkSubmitSuite.scala:305)
  at org.apache.spark.deploy.SparkSubmitSuite$$anonfun$15.apply(SparkSubmitSuite.scala:294)
  at org.apache.spark.deploy.SparkSubmitSuite$$anonfun$15.apply(SparkSubmitSuite.scala:294)
  at org.scalatest.Transformer$$anonfun$apply$1.apply(Transformer.scala:22)
  at org.scalatest.Transformer$$anonfun$apply$1.apply(Transformer.scala:22)
  at org.scalatest.OutcomeOf$class.outcomeOf(OutcomeOf.scala:85)
  at org.scalatest.OutcomeOf$.outcomeOf(OutcomeOf.scala:104)
  at org.scalatest.Transformer.apply(Transformer.scala:22)
  ...
{code}

SBT builds don't fail, so it is likely to be due to some difference in how the tests are run rather than a problem with test or core project.

This is related to http://issues.apache.org/jira/browse/SPARK-3330 but the cause identified in that JIRA is, at least, not the only cause. (Although, it wouldn't hurt to be doubly-sure this is not an issue by changing the Jenkins config to invoke {{mvn clean && mvn ... package}} {{mvn ... clean package}}.)

This JIRA tracks investigation into a different cause. Right now I have some further information but not a PR yet.

Part of the issue is that there is no clue in the log about why {{spark-submit}} exited with status 1. See https://github.com/apache/spark/pull/2108/files and https://issues.apache.org/jira/browse/SPARK-3193 for a change that would at least print stdout to the log too.

The SparkSubmit program exits with 1 when the main class it is supposed to run is not found (https://github.com/apache/spark/blob/master/core/src/main/scala/org/apache/spark/deploy/SparkSubmit.scala#L322) This is for example SimpleApplicationTest (https://github.com/apache/spark/blob/master/core/src/test/scala/org/apache/spark/deploy/SparkSubmitSuite.scala#L339)

The test actually submits an empty JAR not containing this class. It relies on {{spark-submit}} finding the class within the compiled test-classes of the Spark project. However it does seem to be compiled and present even with Maven.

If modified to print stdout and stderr, and dump the actual command, I see an empty stdout, and only the command to stderr:

{code}
Spark Command: /Library/Java/JavaVirtualMachines/jdk1.8.0\_20.jdk/Contents/Home/bin/java -cp null::/Users/srowen/Documents/spark/conf:/Users/srowen/Documents/spark/assembly/target/scala-2.10/spark-assembly-1.1.0-SNAPSHOT-hadoop1.0.4.jar:/Users/srowen/Documents/spark/core/target/scala-2.10/test-classes:/Users/srowen/Documents/spark/repl/target/scala-2.10/test-classes:/Users/srowen/Documents/spark/mllib/target/scala-2.10/test-classes:/Users/srowen/Documents/spark/bagel/target/scala-2.10/test-classes:/Users/srowen/Documents/spark/graphx/target/scala-2.10/test-classes:/Users/srowen/Documents/spark/streaming/target/scala-2.10/test-classes:/Users/srowen/Documents/spark/sql/catalyst/target/scala-2.10/test-classes:/Users/srowen/Documents/spark/sql/core/target/scala-2.10/test-classes:/Users/srowen/Documents/spark/sql/hive/target/scala-2.10/test-classes:/Users/srowen/Documents/Cloudera/bottou/hadoop-conf/ -Xms512m -Xmx512m org.apache.spark.deploy.SparkSubmit --class org.apache.spark.deploy.JarCreationTest --name testApp --master local-cluster[2,1,512] --jars file:/var/folders/vl/nbmbr36j0692ch5r98b5cn040000gn/T/1409845282367-0/testJar-1409845282404.jar,file:/var/folders/vl/nbmbr36j0692ch5r98b5cn040000gn/T/1409845282405-0/testJar-1409845282436.jar file:/var/folders/vl/nbmbr36j0692ch5r98b5cn040000gn/T/1409845282366-0/testJar-1409845282366.jar
{code}

Strangely, while tests fail under {{mvn test}}, they *pass* if I run just {{SparkSubmitSuite}} in Maven with {{mvn -DwildcardSuites=org.apache.spark.deploy.SparkSubmitSuite test -rf :spark-core\_2.10}}

It does seem to do with the classpath that gets picked up by {{spark-submit}} varying in these different scenarios.

I verified that the test suite and Jenkins set {{SPARK\_TESTING=1}}, since that affects access to {{test-classes}} on the classpath in {{spark-submit}}.

I'm still investigating but posting this to track the issue, which is kind of bothersome since it means Jenkins isn't catching (other) build problems from Maven. And to see if anyone has bright ideas.


---

* [SPARK-3399](https://issues.apache.org/jira/browse/SPARK-3399) | *Major* | **Test for PySpark should ignore HADOOP\_CONF\_DIR and YARN\_CONF\_DIR**

Some tests for PySpark make temporary files on /tmp of local file system but if environment variable HADOOP\_CONF\_DIR or YARN\_CONF\_DIR is set in spark-env.sh, tests expects temporary files are on FileSystem configured in core-site.xml even though actual files are on local file system.

I think, we should ignore HADOOP\_CONF\_DIR and YARN\_CONF\_DIR.
If we need those variables in some tests, we should set those variables in such tests specially.


---

* [SPARK-3398](https://issues.apache.org/jira/browse/SPARK-3398) | *Minor* | **Have spark-ec2 intelligently wait for specific cluster states**

{{spark-ec2}} currently has retry logic for when it tries to install stuff on a cluster and for when it tries to destroy security groups. 

It would be better to have some logic that allows {{spark-ec2}} to explicitly wait for when all the nodes in a cluster it is working on have reached a specific state.

Examples:
* Wait for all nodes to be up
* Wait for all nodes to be up and accepting SSH connections (then start installing stuff)
* Wait for all nodes to be down
* Wait for all nodes to be terminated (then delete the security groups)

Having a function in the {{spark\_ec2.py}} script that blocks until the desired cluster state is reached would reduce the need for various retry logic. It would probably also eliminate the need for the {{--wait}} parameter.


---

* [SPARK-3396](https://issues.apache.org/jira/browse/SPARK-3396) | *Major* | **Change LogistricRegressionWithSGD's default regType to L2**

The default updater is SimpleUpdater, which doesn't add any regularization.


---

* [SPARK-3395](https://issues.apache.org/jira/browse/SPARK-3395) | *Minor* | **[SQL] DSL uses incorrect attribute ids after a distinct()**

In the following example, 

val rdd = ... // two columns: {key, value}
val derivedRDD = rdd.distinct().limit(1)

sql("explain select * from rdd inner join derivedRDD on rdd.key = derivedRDD.key")

The inner join executes incorrectly since the two keys end up with the same attribute id after analysis.


---

* [SPARK-3393](https://issues.apache.org/jira/browse/SPARK-3393) | *Minor* | **Align the log4j configuration for Spark & SparkSQLCLI**

User may be confused for the HQL logging & configurations, we'd better provide a default template.


---

* [SPARK-3392](https://issues.apache.org/jira/browse/SPARK-3392) | *Trivial* | **Set command always get \<undefined\> for key "mapred.reduce.tasks"**

This is a tiny fix for getting the value of "mapred.reduce.tasks", which make more sense for the hive user.


---

* [SPARK-3391](https://issues.apache.org/jira/browse/SPARK-3391) | *Major* | **Support attaching more than 1 EBS volumes**

Currently spark-ec2 supports attaching only one EBS volume.

Attaching multiple EBS volumes can increase the aggregate throughput of EBS.


---

* [SPARK-3390](https://issues.apache.org/jira/browse/SPARK-3390) | *Critical* | **sqlContext.jsonRDD fails on a complex structure of JSON array and JSON object nesting**

I found a valid JSON string, but which Spark SQL fails to correctly parse:

Try running these lines in a spark-shell to reproduce:

{code:borderStyle=solid}
val sqlContext = new org.apache.spark.sql.SQLContext(sc)
val badJson = "{\"foo\": [[{\"bar\": 0}]]}"
val rdd = sc.parallelize(badJson :: Nil)
sqlContext.jsonRDD(rdd).count()
{code}

I've tried running these lines on the 1.0.2 release as well latest Spark1.1 release candidate, and I get this stack trace:

{panel}
org.apache.spark.SparkException: Job aborted due to stage failure: Task 2.0:3 failed 1 times, most recent failure: Exception failure in TID 7 on host localhost: scala.MatchError: StructType(List()) (of class org.apache.spark.sql.catalyst.types.StructType)
        org.apache.spark.sql.json.JsonRDD$.enforceCorrectType(JsonRDD.scala:333)
        org.apache.spark.sql.json.JsonRDD$$anonfun$enforceCorrectType$1.apply(JsonRDD.scala:335)
        scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
        scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
        scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
        scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
        scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
        scala.collection.AbstractTraversable.map(Traversable.scala:105)
        org.apache.spark.sql.json.JsonRDD$.enforceCorrectType(JsonRDD.scala:335)
        org.apache.spark.sql.json.JsonRDD$$anonfun$enforceCorrectType$1.apply(JsonRDD.scala:335)
        scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
        scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
        scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
        scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
        scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
        scala.collection.AbstractTraversable.map(Traversable.scala:105)
        org.apache.spark.sql.json.JsonRDD$.enforceCorrectType(JsonRDD.scala:335)
        org.apache.spark.sql.json.JsonRDD$$anonfun$org$apache$spark$sql$json$JsonRDD$$asRow$1$$anonfun$apply$12.apply(JsonRDD.scala:365)
        scala.Option.map(Option.scala:145)
        org.apache.spark.sql.json.JsonRDD$$anonfun$org$apache$spark$sql$json$JsonRDD$$asRow$1.apply(JsonRDD.scala:364)
        org.apache.spark.sql.json.JsonRDD$$anonfun$org$apache$spark$sql$json$JsonRDD$$asRow$1.apply(JsonRDD.scala:349)
        scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
        scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
        org.apache.spark.sql.json.JsonRDD$.org$apache$spark$sql$json$JsonRDD$$asRow(JsonRDD.scala:349)
        org.apache.spark.sql.json.JsonRDD$$anonfun$createLogicalPlan$1.apply(JsonRDD.scala:51)
        org.apache.spark.sql.json.JsonRDD$$anonfun$createLogicalPlan$1.apply(JsonRDD.scala:51)
        scala.collection.Iterator$$anon$11.next(Iterator.scala:328)
        scala.collection.Iterator$$anon$11.next(Iterator.scala:328)
....
{panel}


---

* [SPARK-3389](https://issues.apache.org/jira/browse/SPARK-3389) | *Major* | **Add converter class to make reading Parquet files easy with PySpark**

If a user wants to read Parquet data from PySpark, they currently must use SparkContext.newAPIHadoopFile.  If they do not provide a valueConverter, they will get JSON string that must be parsed.  Here I add a Converter implementation based on the one in the AvroConverters.scala file.


---

* [SPARK-3388](https://issues.apache.org/jira/browse/SPARK-3388) | *Major* | **Expose cluster applicationId, use it to serve history information**

This is a follow up to SPARK-2150.

Currently Spark uses the application-generated log directory name as the URL for the history server. That's not very user-friendly since there's no way for the user to figure out that information otherwise.

A more user-friendly approach would be to use the cluster-defined application id, when present. That also has the advantage of providing that information as metadata for the Spark app, so that someone can easily correlate information kept in Spark with that kept by the cluster manager.

Open PR: https://github.com/apache/spark/pull/1218


---

* [SPARK-3378](https://issues.apache.org/jira/browse/SPARK-3378) | *Trivial* | **Replace the word "SparkSQL" with right word "Spark SQL"**

In programming-guide.md, there are 2 "SparkSQL". We should use "Spark SQL" instead.


---

* [SPARK-3377](https://issues.apache.org/jira/browse/SPARK-3377) | *Critical* | **Metrics can be accidentally aggregated against our intention**

I'm using codahale base MetricsSystem of Spark with JMX or Graphite, and I saw following 2 problems.

(1) When applications which have same spark.app.name run on cluster at the same time, some metrics names are mixed. For instance, if 2+ application is running on the cluster at the same time, each application emits the same named metric like  "SparkPi.DAGScheduler.stage.failedStages" and Graphite cannot distinguish the metrics is for which application.

(2) When 2+ executors run on the same machine, JVM metrics of each executors are mixed. For instance, 2+ executors running on the same node can emit the same named metric "jvm.memory" and Graphite cannot distinguish the metrics is from which application.


---

* [SPARK-3375](https://issues.apache.org/jira/browse/SPARK-3375) | *Blocker* | **spark on yarn container allocation issues**

It looks like if yarn doesn't get the containers immediately it stops asking for them and the yarn application hangs with never getting any executors.  This was introduced by https://github.com/apache/spark/pull/2169


---

* [SPARK-3372](https://issues.apache.org/jira/browse/SPARK-3372) | *Blocker* | **MLlib doesn't pass maven build / checkstyle due to multi-byte character contained in Gradient.scala**

Gradient.scala includes 2 UTF-8 hyphens.
Caused by this, mvn package falied on Windows8 because it cannot pass checkstyle.


---

* [SPARK-3371](https://issues.apache.org/jira/browse/SPARK-3371) | *Major* | **Spark SQL: Renaming a function expression with group by gives error**

{code}
val sqlContext = new org.apache.spark.sql.SQLContext(sc)
val rdd = sc.parallelize(List("""{"foo":"bar"}"""))
sqlContext.jsonRDD(rdd).registerAsTable("t1")
sqlContext.registerFunction("len", (s: String) => s.length)
sqlContext.sql("select len(foo) as a, count(1) from t1 group by len(foo)").collect()
{code}

running above code in spark-shell gives the following error

{noformat}
14/09/03 17:20:13 ERROR Executor: Exception in task 2.0 in stage 3.0 (TID 214)
org.apache.spark.sql.catalyst.errors.package$TreeNodeException: Binding attribute, tree: foo#0
	at org.apache.spark.sql.catalyst.errors.package$.attachTree(package.scala:47)
	at org.apache.spark.sql.catalyst.expressions.BindReferences$$anonfun$bindReference$1.applyOrElse(BoundAttribute.scala:43)
	at org.apache.spark.sql.catalyst.expressions.BindReferences$$anonfun$bindReference$1.applyOrElse(BoundAttribute.scala:42)
	at org.apache.spark.sql.catalyst.trees.TreeNode.transformDown(TreeNode.scala:165)
	at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$4$$anonfun$apply$2.apply(TreeNode.scala:201)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.immutable.List.foreach(List.scala:318)
	at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
	at scala.collection.AbstractTraversable.map(Traversable.scala:105)
	at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$4.apply(TreeNode.scala:199)
	at scala.collection.Iterator$$anon$11.next(Iterator.scala:328)
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
	at org.apache.spark.sql.catalyst.trees.TreeNode.transformChildrenDown(TreeNode.scala:212)
	at org.apache.spark.sql.catalyst.trees.TreeNode.transformDown(TreeNode.scala:168)
	at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$4.apply(TreeNode.scala:183)
	at scala.collection.Iterator$$anon$11.next(Iterator.scala:328)
{noformat}

remove "as a" in the query causes no error


---

* [SPARK-3366](https://issues.apache.org/jira/browse/SPARK-3366) | *Major* | **Compute best splits distributively in decision tree**

The current implementation computes all best splits locally on the driver, which makes the driver a bottleneck for both communication and computation. It would be nice if we can compute the best splits distributively.


---

* [SPARK-3363](https://issues.apache.org/jira/browse/SPARK-3363) | *Major* | **[SQL] Type Coercion should support every type to have null value**

Current implementation only support numeric(ByteType, ShortType, IntegerType, LongType, FloatType, DoubleType, DecimalType) and boolean


---

* [SPARK-3362](https://issues.apache.org/jira/browse/SPARK-3362) | *Major* | **[SQL] bug in CaseWhen resolve**

select case x when 0 then null else y/x end from t;
will lead to an match error in toHiveString() when output, because spark would consider the output is always NullType, which is not right.


---

* [SPARK-3361](https://issues.apache.org/jira/browse/SPARK-3361) | *Minor* | **Expand PEP 8 checks to include EC2 script and Python examples**

Via {{tox.ini}}, expand the PEP 8 checks to include the EC2 script and all Python examples. That should cover everything.


---

* [SPARK-3358](https://issues.apache.org/jira/browse/SPARK-3358) | *Major* | **PySpark worker fork()ing performance regression in m3.\* / PVM instances**

SPARK-2764 (and some followup commits) simplified PySpark's worker process structure by removing an intermediate pool of processes forked by daemon.py.  Previously, daemon.py forked a fixed-size pool of processes that shared a socket and handled worker launch requests from Java.  After my patch, this intermediate pool was removed and launch requests are handled directly in daemon.py.

Unfortunately, this seems to have increased PySpark task launch latency when running on m3* class instances in EC2.  Most of this difference can be attributed to m3 instances' more expensive fork() system calls.  I tried the following microbenchmark on m3.xlarge and r3.xlarge instances:

{code}
import os

for x in range(1000):
  if os.fork() == 0:
    exit()
{code}

On the r3.xlarge instance:

{code}
real	0m0.761s
user	0m0.008s
sys	0m0.144s
{code}

And on m3.xlarge:

{code}
real    0m1.699s
user    0m0.012s
sys     0m1.008s
{code}

I think this is due to HVM vs PVM EC2 instances using different virtualization technologies with different fork costs.

It may be the case that this performance difference only appears in certain microbenchmarks and is masked by other performance improvements in PySpark, such as improvements to large group-bys.  I'm in the process of re-running spark-perf benchmarks on m3 instances in order to confirm whether this impacts more realistic jobs.


---

* [SPARK-3356](https://issues.apache.org/jira/browse/SPARK-3356) | *Major* | **Document when RDD elements' ordering within partitions is nondeterministic**

As reported in SPARK-3098 for example, for users using zipWithIndex, zipWithUniqueId, etc, (and maybe even things like mapPartitions) it's confusing that the order of elements in each partition after a shuffle operation is nondeterministic (unless the operation was sortByKey). We should explain this in the docs for the zip and partition-wise operations.

Another subtle issue is that the order of values for each key in groupBy / join / etc can be nondeterministic -- we need to explain that too.


---

* [SPARK-3353](https://issues.apache.org/jira/browse/SPARK-3353) | *Major* | **Stage id monotonicity (parent stage should have lower stage id)**

The way stage IDs are generated is that parent stages actually have higher stage id. This is very confusing because parent stages get scheduled & executed first.

We should reverse that order so the scheduling timeline of stages (absent of failures) is monotonic, i.e. stages that are executed first have lower stage ids.


---

* [SPARK-3349](https://issues.apache.org/jira/browse/SPARK-3349) | *Major* | **Incorrect partitioning after LIMIT operator**

Reproduced by the following example:
{code}
import org.apache.spark.sql.catalyst.plans.Inner
import org.apache.spark.sql.catalyst.analysis.UnresolvedAttribute
import org.apache.spark.sql.catalyst.expressions.\_

val series = sql("select distinct year from sales order by year asc limit 10")
val results = sql("select * from sales")
series.registerTempTable("series")
results.registerTempTable("results")

sql("select * from results inner join series where results.year = series.year").count

-----------

java.lang.IllegalArgumentException: Can't zip RDDs with unequal numbers of partitions
	at org.apache.spark.rdd.ZippedPartitionsBaseRDD.getPartitions(ZippedPartitionsRDD.scala:56)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:204)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:202)
	at scala.Option.getOrElse(Option.scala:120)
	at org.apache.spark.rdd.RDD.partitions(RDD.scala:202)
	at org.apache.spark.rdd.MapPartitionsRDD.getPartitions(MapPartitionsRDD.scala:32)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:204)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:202)
	at scala.Option.getOrElse(Option.scala:120)
	at org.apache.spark.rdd.RDD.partitions(RDD.scala:202)
	at org.apache.spark.rdd.MapPartitionsRDD.getPartitions(MapPartitionsRDD.scala:32)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:204)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:202)
	at scala.Option.getOrElse(Option.scala:120)
	at org.apache.spark.rdd.RDD.partitions(RDD.scala:202)
	at org.apache.spark.rdd.MapPartitionsRDD.getPartitions(MapPartitionsRDD.scala:32)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:204)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:202)
	at scala.Option.getOrElse(Option.scala:120)
	at org.apache.spark.rdd.RDD.partitions(RDD.scala:202)
	at org.apache.spark.ShuffleDependency.<init>(Dependency.scala:79)
	at org.apache.spark.rdd.ShuffledRDD.getDependencies(ShuffledRDD.scala:80)
	at org.apache.spark.rdd.RDD$$anonfun$dependencies$2.apply(RDD.scala:191)
	at org.apache.spark.rdd.RDD$$anonfun$dependencies$2.apply(RDD.scala:189)
	at scala.Option.getOrElse(Option.scala:120)
	at org.apache.spark.rdd.RDD.dependencies(RDD.scala:189)
	at org.apache.spark.scheduler.DAGScheduler.visit$1(DAGScheduler.scala:298)
	at org.apache.spark.scheduler.DAGScheduler.getParentStages(DAGScheduler.scala:310)
	at org.apache.spark.scheduler.DAGScheduler.newStage(DAGScheduler.scala:246)
	at org.apache.spark.scheduler.DAGScheduler.handleJobSubmitted(DAGScheduler.scala:723)
	at org.apache.spark.scheduler.DAGSchedulerEventProcessActor$$anonfun$receive$2.applyOrElse(DAGScheduler.scala:1333)
	at akka.actor.ActorCell.receiveMessage(ActorCell.scala:498)
	at akka.actor.ActorCell.invoke(ActorCell.scala:456)
	at akka.dispatch.Mailbox.processMailbox(Mailbox.scala:237)
	at akka.dispatch.Mailbox.run(Mailbox.scala:219)
	at akka.dispatch.ForkJoinExecutorConfigurator$AkkaForkJoinTask.exec(AbstractDispatcher.scala:386)
	at scala.concurrent.forkjoin.ForkJoinTask.doExec(ForkJoinTask.java:260)
	at scala.concurrent.forkjoin.ForkJoinPool$WorkQueue.runTask(ForkJoinPool.java:1339)
	at scala.concurrent.forkjoin.ForkJoinPool.runWorker(ForkJoinPool.java:1979)
	at scala.concurrent.forkjoin.ForkJoinWorkerThread.run(ForkJoinWorkerThread.java:107)
{code}


---

* [SPARK-3347](https://issues.apache.org/jira/browse/SPARK-3347) | *Blocker* | **Spark on yarn alpha doesn't compile due to SPARK-2889**

Spark on yarn alpha doesn't compile after SPARK-2889 was merged in.

[ERROR] /home/tgraves/tgravescs-spark/yarn/alpha/src/main/scala/org/apache/spark/deploy/yarn/Client.scala:43: not found: value SparkHadoopUtil


---

* [SPARK-3345](https://issues.apache.org/jira/browse/SPARK-3345) | *Minor* | **Do correct parameters for ShuffleFileGroup**

In the method newFileGroup of class FileShuffleBlockManager, the parameters for creating new ShuffleFileGroup object is in wrong order.

Wrong: new ShuffleFileGroup(fileId, shuffleId, files)
Corrent: new ShuffleFileGroup(shuffleId, fileId, files)

Because in current codes, the parameters shuffleId and fileId are not used. So it doesn't cause problem now. However it should be corrected for readability and avoid future problem.


---

* [SPARK-3343](https://issues.apache.org/jira/browse/SPARK-3343) | *Major* | **Support for CREATE TABLE AS SELECT that specifies the format**

hql("""CREATE TABLE tmp\_adclick\_gm\_all ROW FORMAT DELIMITED FIELDS
TERMINATED BY ',' LINES TERMINATED BY '\n' as  SELECT SUM(uv) as uv,
round(SUM(cost),2) as total, round(SUM(cost)/SUM(uv),2) FROM
tmp\_adclick\_sellplat """)


14/09/02 15:32:28 INFO ParseDriver: Parse Completed

java.lang.RuntimeException:

Unsupported language features in query: CREATE TABLE
tmp\_adclick\_gm\_all ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' LINES
TERMINATED BY 'abc' as  SELECT SUM(uv) as uv, round(SUM(cost),2) as
total, round(SUM(cost)/SUM(uv),2) FROM tmp\_adclick\_sellplat


at scala.sys.package$.error(package.scala:27)

at org.apache.spark.sql.hive.HiveQl$.parseSql(HiveQl.scala:255)

at org.apache.spark.sql.hive.HiveContext.hiveql(HiveContext.scala:75)

at org.apache.spark.sql.hive.HiveContext.hql(HiveContext.scala:78)


---

* [SPARK-3339](https://issues.apache.org/jira/browse/SPARK-3339) | *Critical* | **Support for skipping json lines that fail to parse**

When dealing with large datasets there is alway some data that fails to parse.  Would be nice to handle this instead of throwing an exception requiring the user to filter it out manually.


---

* [SPARK-3338](https://issues.apache.org/jira/browse/SPARK-3338) | *Major* | **Respect user setting of spark.submit.pyFiles**

We currently override any setting of spark.submit.pyFiles. Even though this is not documented, we should still respect this if the user explicitly sets this in his/her default properties file.


---

* [SPARK-3335](https://issues.apache.org/jira/browse/SPARK-3335) | *Major* | **[Spark SQL] In pyspark, cannot use broadcast variables in UDF**

Running pyspark on a spark cluster with standalone master, spark sql cannot use broadcast variables in UDF. But we can use broadcast variable in spark in scala.

For example,
bar={"a":"aa", "b":"bb", "c":"abc"}
foo=sc.broadcast(bar)
sqlContext.registerFunction("MYUDF", lambda x: foo.value[x] if x else '').
q= sqlContext.sql('SELECT MYUDF(c)  FROM foobar')
out = q.collect()

Got the following exception:
Py4JJavaError: An error occurred while calling o169.collect.
: org.apache.spark.SparkException: Job aborted due to stage failure: Task 4 in stage 51.0 failed 4 times, most recent failure: Lost task 4.3 in stage 51.0 (TID 13040, ip-10-33-9-144.us-west-2.compute.internal): org.apache.spark.api.python.PythonException: Traceback (most recent call last):
  File "/root/spark/python/pyspark/worker.py", line 75, in main
    command = pickleSer.\_read\_with\_length(infile)
  File "/root/spark/python/pyspark/serializers.py", line 150, in \_read\_with\_length
    return self.loads(obj)
  File "/root/spark/python/pyspark/broadcast.py", line 41, in \_from\_id
    raise Exception("Broadcast variable '%s' not loaded!" % bid)
Exception: (Exception("Broadcast variable '21' not loaded!",), <function \_from\_id at 0x35042a8>, (21L,))

        org.apache.spark.api.python.PythonRDD$$anon$1.read(PythonRDD.scala:124)
        org.apache.spark.api.python.PythonRDD$$anon$1.<init>(PythonRDD.scala:154)
        org.apache.spark.api.python.PythonRDD.compute(PythonRDD.scala:87)
        org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
        org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
        org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
        org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
        org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
        org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
        org.apache.spark.rdd.ZippedPartitionsRDD2.compute(ZippedPartitionsRDD.scala:87)
        org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
        org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
        org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
        org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
        org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
        org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
        org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
        org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
        org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:68)
        org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:41)
        org.apache.spark.scheduler.Task.run(Task.scala:54)
        org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:177)
        java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        java.lang.Thread.run(Thread.java:745)
Driver stacktrace:
	at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$failJobAndIndependentStages(DAGScheduler.scala:1185)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1174)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1173)
	at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
	at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
	at org.apache.spark.scheduler.DAGScheduler.abortStage(DAGScheduler.scala:1173)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:688)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:688)
	at scala.Option.foreach(Option.scala:236)
	at org.apache.spark.scheduler.DAGScheduler.handleTaskSetFailed(DAGScheduler.scala:688)
	at org.apache.spark.scheduler.DAGSchedulerEventProcessActor$$anonfun$receive$2.applyOrElse(DAGScheduler.scala:1391)
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

* [SPARK-3332](https://issues.apache.org/jira/browse/SPARK-3332) | *Major* | **Tagging is not atomic with launching instances on EC2**

The implementation for SPARK-2333 changed the machine membership mechanism from security groups to tags.

This is a fundamentally flawed strategy as there aren't guarantees at all the machines will have a tag (even with a retry mechanism).

For instance, if the script is killed after launching the instances but before setting the tags the machines will be "invisible" to a destroy command, leaving a unmanageable cluster behind.

The initial proposal is to go back to the previous behavior for all cases but when the new flag (--security-group-prefix) is used.

Also it's worthwhile to mention that SPARK-3180 introduced the --additional-security-group flag which is a reasonable solution to SPARK-2333 (but isn't a full replacement to all use cases of --security-group-prefix).


---

* [SPARK-3331](https://issues.apache.org/jira/browse/SPARK-3331) | *Minor* | **PEP8 tests fail because they check unzipped py4j code**

PEP8 tests run on files under "./python", but unzipped py4j code is found at "./python/build/py4j". Py4J code fails style checks and can fail ./dev/run-tests if this code is present locally.


---

* [SPARK-3329](https://issues.apache.org/jira/browse/SPARK-3329) | *Trivial* | **HiveQuerySuite SET tests depend on map orderings**

The SET tests in HiveQuerySuite that return multiple values depend on the ordering in which map pairs are returned from Hive and can fail spuriously if this changes due to environment or library changes.


---

* [SPARK-3319](https://issues.apache.org/jira/browse/SPARK-3319) | *Major* | **Resolve spark.jars, spark.files, and spark.submit.pyFiles etc.**

We already do this for --jars, --files, and --py-files etc. For consistency, we should do the same for the corresponding spark configs as well in case the user sets them in spark-defaults.conf instead.


---

* [SPARK-3318](https://issues.apache.org/jira/browse/SPARK-3318) | *Trivial* | **The documentation for addFiles is wrong**

It indicates we should use the path rather than the file name, but all of the tests and the functionality works with file name.


---

* [SPARK-3315](https://issues.apache.org/jira/browse/SPARK-3315) | *Major* | **Support hyperparameter tuning**

Tuning a pipeline and select the best set of parameters.


---

* [SPARK-3310](https://issues.apache.org/jira/browse/SPARK-3310) | *Minor* | **Directly use currentTable without unnecessary implicit conversion**

We can directly use currentTable in function cacheTable without unnecessary implicit conversion.


---

* [SPARK-3309](https://issues.apache.org/jira/browse/SPARK-3309) | *Major* | **Put all public API in \_\_all\_\_**

\_\_all\_\_ could be used to define a collection of public interfaces in pyspark.

Also put all the public interfaces in top module of pyspark (pyspark.\_\_init\_\_.py).


---

* [SPARK-3308](https://issues.apache.org/jira/browse/SPARK-3308) | *Critical* | **Ability to read JSON Arrays as tables**

Right now we can only read json where each object is on its own line.  It would be nice to be able to read top level json arrays where each element maps to a row.


---

* [SPARK-3305](https://issues.apache.org/jira/browse/SPARK-3305) | *Trivial* | **Remove unused import from UI classes.**

UI classes are continue to change and left unused import.
Let's keep clean.


---

* [SPARK-3304](https://issues.apache.org/jira/browse/SPARK-3304) | *Major* | **ApplicationMaster's Finish status is wrong when uncaught exception is thrown from ReporterThread**

It's rare case but even though uncaught exception is thrown from Reporter thread, allocating containers, finish status is marked as SUCCEEDED.

In addition, in YARN Cluster mode, if we don't notice Reporter thread is dead, we waits long time until timeout.


---

* [SPARK-3303](https://issues.apache.org/jira/browse/SPARK-3303) | *Minor* | **SparkContextSchedulerCreationSuite test failed when mesos native lib is set**

run test with the master branch with this command 
sbt/sbt -Phive "test-only org.apache.spark.SparkContextSchedulerCreationSuite"

get this error:
[info] SparkContextSchedulerCreationSuite:
[info] - bad-master
[info] - local
[info] - local-*
[info] - local-n
[info] - local--n-failures
[info] - local-n-failures
[info] - bad-local-n
[info] - bad-local-n-failures
[info] - local-default-parallelism
[info] - simr
[info] - local-cluster
[info] - yarn-cluster
[info] - yarn-standalone
[info] - yarn-client
[info] - mesos fine-grained
[info] - mesos coarse-grained ** FAILED ***
[info] Executor Spark home `spark.mesos.executor.home` is not set!


---

* [SPARK-3300](https://issues.apache.org/jira/browse/SPARK-3300) | *Minor* | **No need to call clear() in ensureFreeSpace and shorten build() in ColumnBuilder**

The function ensureFreeSpace in object ColumnBuilder doesn't need to call clear() on ByteBuffer. The function build() in ColumnBuilder can not shorten by using flip() to replace limit(), position() and rewind().


---

* [SPARK-3297](https://issues.apache.org/jira/browse/SPARK-3297) | *Minor* | **[Spark SQL][UI] SchemaRDD toString with many columns messes up Storage tab display**

When a SchemaRDD with many columns (for example, 57 columns in this example) is cached using sqlContext.cacheTable, the Storage tab of the driver Web UI display gets messed up, because the long string of the SchemaRDD causes the first column to be much much wider than the others, and in fact much wider than the width of the browser.  It would be nice to have the first column be restricted to, say, 50% of the width of the browser window, with some minimum.

For example this is the SchemaRDD text for my table:

        RDD Storage Info for ExistingRdd [ActionGeo\_ADM1Code#198,ActionGeo\_CountryCode#199,ActionGeo\_FeatureID#200,ActionGeo\_FullName#201,ActionGeo\_Lat#202,ActionGeo\_Long#203,ActionGeo\_Type#204,Actor1Code#205,Actor1CountryCode#206,Actor1EthnicCode#207,Actor1Geo\_ADM1Code#208,Actor1Geo\_CountryCode#209,Actor1Geo\_FeatureID#210,Actor1Geo\_FullName#211,Actor1Geo\_Lat#212,Actor1Geo\_Long#213,Actor1Geo\_Type#214,Actor1KnownGroupCode#215,Actor1Name#216,Actor1Religion1Code#217,Actor1Religion2Code#218,Actor1Type1Code#219,Actor1Type2Code#220,Actor1Type3Code#221,Actor2Code#222,Actor2CountryCode#223,Actor2EthnicCode#224,Actor2Geo\_ADM1Code#225,Actor2Geo\_CountryCode#226,Actor2Geo\_FeatureID#227,Actor2Geo\_FullName#228,Actor2Geo\_Lat#229,Actor2Geo\_Long#230,Actor2Geo\_Type#231,Actor2KnownGroupCode#232,Actor2Name#233,Actor2Religion1Code#234,Actor2Religion2Code#235,Actor2Type1Code#236,Actor2Type2Code#237,Actor2Type3Code#238,AvgTone#239,DATEADDED#240,Day#241,EventBaseCode#242,EventCode#243,EventId#244,EventRootCode#245,FractionDate#246,GoldsteinScale#247,IsRootEvent#248,MonthYear#249,NumArticles#250,NumMentions#251,NumSources#252,QuadClass#253,Year#254], MappedRDD[200]

I would personally love to fix the toString method to not necessarily print every column, but to cut it off after a while.  This would aid the printout in the Spark Shell as well.  For example:

[ActionGeo\_ADM1Code#198,ActionGeo\_CountryCode#199,ActionGeo\_FeatureID#200,ActionGeo\_FullName#201,ActionGeo\_Lat#202 .... and 52 more columns]


---

* [SPARK-3294](https://issues.apache.org/jira/browse/SPARK-3294) | *Critical* | **Avoid boxing/unboxing when handling in-memory columnar storage**

When Spark SQL in-memory columnar storage was implemented, we tried to avoid boxing/unboxing costs as much as possible, but {{javap}} shows that there still exist code that involves boxing/unboxing on critical paths due to type erasure, especially methods of sub-classes of {{ColumnType}}. Should eliminate them whenever possible for better performance.


---

* [SPARK-3286](https://issues.apache.org/jira/browse/SPARK-3286) | *Major* | **Cannot view ApplicationMaster UI when Yarn’s url scheme is https**

The spark Application Master starts its web UI at http://<host-name>:port.
When Spark ApplicationMaster registers its URL with Resource Manager , the URL does not contain URI scheme.
If the URL scheme is absent, Resource Manager’s web app proxy will use the HTTP Policy of the Resource Manager.(YARN-1553)
If the HTTP Policy of the Resource Manager is https, then web app proxy  will try to access https://<host-name>:port.
This will result in error.


---

* [SPARK-3285](https://issues.apache.org/jira/browse/SPARK-3285) | *Major* | **Using values.sum is easier to understand than using values.foldLeft(0)(\_ + \_)**

def sumB >: A: B = foldLeft(num.zero)(num.plus)
Using values.sum is easier to understand than using values.foldLeft(0)(\_ + ), so we'd better use values.sum instead of values.foldLeft(0)( + \_)


---

* [SPARK-3281](https://issues.apache.org/jira/browse/SPARK-3281) | *Major* | **Remove Netty specific code in BlockManager**

Everything should go through the BlockTransferService interface rather than having conditional branches for Netty.


---

* [SPARK-3280](https://issues.apache.org/jira/browse/SPARK-3280) | *Major* | **Made sort-based shuffle the default implementation**

sort-based shuffle has lower memory usage and seems to outperform hash-based in almost all of our testing.


---

* [SPARK-3279](https://issues.apache.org/jira/browse/SPARK-3279) | *Major* | **Remove useless field variable in ApplicationMaster**

ApplicationMaster no longer use "ALLOCATE\_HEARTBEAT\_INTERVAL".
Let's remove it.


---

* [SPARK-3272](https://issues.apache.org/jira/browse/SPARK-3272) | *Major* | **Calculate prediction for nodes separately from calculating information gain for splits in decision tree**

In current implementation, prediction for a node is calculated along with calculation of information gain stats for each possible splits. The value to predict for a specific node is determined, no matter what the splits are.
To save computation, we can first calculate prediction first and then calculate information gain stats for each split.

This is also necessary if we want to support minimum instances per node parameters([SPARK-2207|https://issues.apache.org/jira/browse/SPARK-2207]) because when all splits don't satisfy minimum instances requirement , we don't use information gain of any splits. There should be a way to get the prediction value.


---

* [SPARK-3268](https://issues.apache.org/jira/browse/SPARK-3268) | *Minor* | **DoubleType should support modulus**

Using the modulus operator (%) on Doubles throws and exception. 

eg: 

SELECT 1388632775.0 % 60 from tablename LIMIT 1

Throws: 
java.lang.Exception: Type DoubleType does not support numeric operations


---

* [SPARK-3265](https://issues.apache.org/jira/browse/SPARK-3265) | *Minor* | **Allow using custom ipython executable with pyspark**

Although you can make pyspark use ipython with IPYTHON=1, and also change the python executable with PYSPARK\_PYTHON=..., you can't use both at the same time because it hardcodes the default ipython script.

This makes it use the PYSPARK\_PYTHON variable if present and fall back to default python, similarly to how the default python executable is handled.

So you can use a custom ipython like so:
{{PYSPARK\_PYTHON=./anaconda/bin/ipython IPYTHON\_OPTS="notebook" pyspark}}


---

* [SPARK-3263](https://issues.apache.org/jira/browse/SPARK-3263) | *Major* | **PR #720 broke GraphGenerator.logNormal**

PR #720 made multiple changes to GraphGenerator.logNormalGraph including:

* Replacing the call to functions for generating random vertices and edges with in-line implementations with different equations
* Hard-coding of RNG seeds so that method now generates the same graph for a given number of vertices, edges, mu, and sigma -- user is not able to override seed or specify that seed should be randomly generated.
* Backwards-incompatible change to logNormalGraph signature with introduction of new required parameter.
* Failed to update scala docs and programming guide for API changes

I also see that PR #720 added a Synthetic Benchmark in the examples.

Based on reading the Pregel paper, I believe the in-line functions are incorrect.  I proposed to:

* Removing the in-line calls
* Adding a seed for deterministic behavior (when desired)
* Keeping the number of partitions parameter.
* Updating the synthetic benchmark example


---

* [SPARK-3260](https://issues.apache.org/jira/browse/SPARK-3260) | *Major* | **Yarn - pass acls along with executor launch**

In https://github.com/apache/spark/pull/1196 I added passing the spark view and modify acls into yarn.  Unfortunately we are only passing them into the application master and I missed passing them in when we launch individual containers (executors). 

We need to modify the ExecutorRunnable.startContainer to set the acls in the ContainerLaunchContext.


---

* [SPARK-3254](https://issues.apache.org/jira/browse/SPARK-3254) | *Major* | **Streaming K-Means**

Streaming K-Means with proper decay settings.


---

* [SPARK-3250](https://issues.apache.org/jira/browse/SPARK-3250) | *Major* | **More Efficient Sampling**

Sampling, as currently implemented in Spark, is an O\(n\) operation.  A number of stochastic algorithms achieve speed ups by exploiting O\(k\) sampling, where k is the number of data points to sample.  Examples of such algorithms include KMeans MiniBatch (SPARK-2308) and Stochastic Gradient Descent with mini batching.

More efficient sampling may be achievable by packing partitions with an ArrayBuffer or other data structure supporting random access.  Since many of these stochastic algorithms perform repeated rounds of sampling, it may be feasible to perform a transformation to change the backing data structure followed by multiple rounds of sampling.


---

* [SPARK-3233](https://issues.apache.org/jira/browse/SPARK-3233) | *Critical* | **Executor never stop its SparnEnv, BlockManager, ConnectionManager etc.**

Executor never stop its SparnEnv. Because of this,  following component in Executor never stop until JVM is shutdown.

* HttpFileServer
* MapOutputTracker
* ShuffleManager
* BlockManager
* MetricSystem
* ActorSystem


---

* [SPARK-3225](https://issues.apache.org/jira/browse/SPARK-3225) | *Trivial* | **Typo in script**

use\_conf\_dir => user\_conf\_dir in load-spark-env.sh.


---

* [SPARK-3223](https://issues.apache.org/jira/browse/SPARK-3223) | *Critical* | **runAsSparkUser cannot change HDFS write permission properly in mesos cluster mode**

While running mesos with --no-switch\_user option, HDFS account name is different from driver and executor. It makes a permission error at last stage. Executor's id is mesos' user id and driver's id is who runs spark-submit. So, moving output from \_temporary/path/to/output/part-xxxx to /output/path/part-xxxx fails because of permission error. The solution for this is only setting SPARK\_USER to HADOOP\_USER\_NAME when MesosExecutorBackend calls runAsSparkUser. HADOOP\_USER\_NAME is used when FileSystem get user.


---

* [SPARK-3217](https://issues.apache.org/jira/browse/SPARK-3217) | *Major* | **Shaded Guava jar doesn't play well with Maven build when SPARK\_PREPEND\_CLASSES is set**

PR [#1813|https://github.com/apache/spark/pull/1813] shaded Guava jar file and moved Guava classes to package {{org.spark-project.guava}} when Spark is built by Maven. But if developers set the environment variable {{SPARK\_PREPEND\_CLASSES}} to {{true}}, commands like {{bin/spark-shell}} throws {{ClassNotFoundException}}:
{code}
# Set the env var
$ export SPARK\_PREPEND\_CLASSES=true

# Build Spark with Maven
$ mvn clean package -Phive,hadoop-2.3 -Dhadoop.version=2.3.0 -DskipTests
...

# Then spark-shell complains
$ ./bin/spark-shell
Spark assembly has been built with Hive, including Datanucleus jars on classpath
Exception in thread "main" java.lang.NoClassDefFoundError: com/google/common/util/concurrent/ThreadFactoryBuilder
        at org.apache.spark.util.Utils$.<init>(Utils.scala:636)
        at org.apache.spark.util.Utils$.<clinit>(Utils.scala)
        at org.apache.spark.repl.SparkILoop.<init>(SparkILoop.scala:134)
        at org.apache.spark.repl.SparkILoop.<init>(SparkILoop.scala:65)
        at org.apache.spark.repl.Main$.main(Main.scala:30)
        at org.apache.spark.repl.Main.main(Main.scala)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:606)
        at org.apache.spark.deploy.SparkSubmit$.launch(SparkSubmit.scala:317)
        at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:73)
        at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)
Caused by: java.lang.ClassNotFoundException: com.google.common.util.concurrent.ThreadFactoryBuilder
        at java.net.URLClassLoader$1.run(URLClassLoader.java:366)
        at java.net.URLClassLoader$1.run(URLClassLoader.java:355)
        at java.security.AccessController.doPrivileged(Native Method)
        at java.net.URLClassLoader.findClass(URLClassLoader.java:354)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:425)
        at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:308)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:358)
        ... 13 more

# Check the assembly jar file
$ jar tf assembly/target/scala-2.10/spark-assembly-1.1.0-SNAPSHOT-hadoop2.3.0.jar | grep -i ThreadFactoryBuilder
org/spark-project/guava/common/util/concurrent/ThreadFactoryBuilder$1.class
org/spark-project/guava/common/util/concurrent/ThreadFactoryBuilder.class
{code}
SBT build is fine since we don't shade Guava with SBT right now.


---

* [SPARK-3212](https://issues.apache.org/jira/browse/SPARK-3212) | *Blocker* | **Improve the clarity of caching semantics**

Right now there are a bunch of different ways to cache tables in Spark SQL. For example:
 - tweets.cache()
 - sql("SELECT * FROM tweets").cache()
 - table("tweets").cache()
 - tweets.cache().registerTempTable(tweets)
 - sql("CACHE TABLE tweets")
 - cacheTable("tweets")

Each of the above commands has subtly different semantics, leading to a very confusing user experience.  Ideally, we would stop doing caching based on simple tables names and instead have a phase of optimization that does intelligent matching of query plans with available cached data.


---

* [SPARK-3211](https://issues.apache.org/jira/browse/SPARK-3211) | *Major* | **.take() is OOM-prone when there are empty partitions**

Filed on dev@ on 22 August by [~pnepywoda]:

{quote}
On line 777
https://github.com/apache/spark/commit/42571d30d0d518e69eecf468075e4c5a823a2ae8#diff-1d55e54678eff2076263f2fe36150c17R771
the logic for take() reads ALL partitions if the first one (or first k) are
empty. This has actually lead to OOMs when we had many partitions
(thousands) and unfortunately the first one was empty.

Wouldn't a better implementation strategy be

numPartsToTry = partsScanned * 2

instead of

numPartsToTry = totalParts - 1

(this doubling is similar to most memory allocation strategies)

Thanks!
- Paul
{quote}


---

* [SPARK-3207](https://issues.apache.org/jira/browse/SPARK-3207) | *Minor* | **Choose splits for continuous features in DecisionTree more adaptively**

DecisionTree splits on continuous features by choosing an array of values from a subsample of the data.

Currently, it does not check for identical values in the subsample, so it could end up having multiple copies of the same split.  This is not an error, but it could be improved to be more adaptive to the data.

Proposal: In findSplitsBins, check for identical values, and do some searching in order to find a set of unique splits.  Reduce the number of splits if there are not enough unique candidates.

This would require modifying findSplitsBins and making sure that the number of splits/bins (chosen adaptively) is set correctly elsewhere in the code (such as in DecisionTreeMetadata).


---

* [SPARK-3206](https://issues.apache.org/jira/browse/SPARK-3206) | *Major* | **Error in PageRank values**

I have found a small example where the PageRank values using run and runUntilConvergence differ quite a bit.

I am running the Pagerank module on the following graph:

Edge Table:

|| Node1 || Node2 ||
|1 | 2 |
|1 |	3|
|3 |	2|
|3 |	4|
|5 |	3|
|6 |	7|
|7 |	8|
|8 |	9|
|9 |	7|

Node Table (note the extra node):

|| NodeID  || NodeName  ||
|a |	1|
|b |	2|
|c |	3|
|d |	4|
|e |	5|
|f |	6|
|g |	7|
|h |	8|
|i |	9|
|j.longaddress.com |	10|

with a default resetProb of 0.15.
When I compute the pageRank with runUntilConvergence, running 

{{val ranks = PageRank.runUntilConvergence(graph,0.0001).vertices}}

I get the ranks
(4,0.29503124999999997)
(1,0.15)
(6,0.15)
(3,0.34124999999999994)
(7,1.3299054047985106)
(9,1.2381240056453071)
(8,1.2803346052504254)
(10,0.15)
(5,0.15)
(2,0.35878124999999994)

However, when I run page Rank with the run() method, running  

{{val ranksI = PageRank.run(graph,100).vertices}} 

I get the page ranks

(4,0.29503124999999997)
(1,0.15)
(6,0.15)
(3,0.34124999999999994)
(7,0.9999999387662847)
(9,0.9999999256447741)
(8,0.9999999256447741)
(10,0.15)
(5,0.15)
(2,0.29503124999999997)

These are quite different, leading me to suspect that one of the PageRank methods is incorrect. I have examined the source, but I do not know what the correct fix is, or which set of values is correct.


---

* [SPARK-3198](https://issues.apache.org/jira/browse/SPARK-3198) | *Major* | **Remove the id property from the TreeNode API**

Remove the id property of TreeNode API, since the id generation is kind of performance bottleneck in execution.


---

* [SPARK-3193](https://issues.apache.org/jira/browse/SPARK-3193) | *Major* | **output error info when Process exitcode not zero**

I noticed that sometimes pr tests failed due to the Process exitcode != 0:
DriverSuite: 
Spark assembly has been built with Hive, including Datanucleus jars on classpath 
- driver should exit after finishing *** FAILED *** 
   SparkException was thrown during property evaluation. (DriverSuite.scala:40) 
     Message: Process List(./bin/spark-class, org.apache.spark.DriverWithoutCleanup, local) exited with code 1 
     Occurred at table row 0 (zero based, not counting headings), which had values ( 
       master = local 
     ) 
 
[info] SparkSubmitSuite:
[info] - prints usage on empty input
[info] - prints usage with only --help
[info] - prints error with unrecognized options
[info] - handle binary specified but not class
[info] - handles arguments with --key=val
[info] - handles arguments to user program
[info] - handles arguments to user program with name collision
[info] - handles YARN cluster mode
[info] - handles YARN client mode
[info] - handles standalone cluster mode
[info] - handles standalone client mode
[info] - handles mesos client mode
[info] - handles confs with flag equivalents
[info] - launch simple application with spark-submit *** FAILED ***
[info]   org.apache.spark.SparkException: Process List(./bin/spark-submit, --class, org.apache.spark.deploy.SimpleApplicationTest, --name, testApp, --master, local, file:/tmp/1408854098404-0/testJar-1408854098404.jar) exited with code 1
[info]   at org.apache.spark.util.Utils$.executeAndGetOutput(Utils.scala:872)
[info]   at org.apache.spark.deploy.SparkSubmitSuite.runSparkSubmit(SparkSubmitSuite.scala:311)
[info]   at org.apache.spark.deploy.SparkSubmitSuite$$anonfun$14.apply$mcV$sp(SparkSubmitSuite.scala:291)
[info]   at org.apache.spark.deploy.SparkSubmitSuite$$anonfun$14.apply(SparkSubmitSuite.scala:284)
[info]   at org.apacSpark assembly has been built with Hive, including Datanucleus jars on classpath

refer to 
https://amplab.cs.berkeley.edu/jenkins/job/SparkPullRequestBuilder/18688/consoleFull
https://amplab.cs.berkeley.edu/jenkins/job/SparkPullRequestBuilder/19118/consoleFull

we should output the process error info when failed, this can be helpful for diagnosis.


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

* [SPARK-3187](https://issues.apache.org/jira/browse/SPARK-3187) | *Minor* | **Refactor and cleanup Yarn allocator code**

This is a follow-up to SPARK-2933, which dealt with the ApplicationMaster code.

There's a lot of logic in the container allocation code in alpha/stable that could probably be merged.


---

* [SPARK-3179](https://issues.apache.org/jira/browse/SPARK-3179) | *Major* | **Add task OutputMetrics**

Track the bytes that tasks write to HDFS or other output destinations.


---

* [SPARK-3178](https://issues.apache.org/jira/browse/SPARK-3178) | *Major* | **setting SPARK\_WORKER\_MEMORY to a value without a label (m or g) sets the worker memory limit to zero**

This should either default to m or just completely fail.  Starting a worker with zero memory isn't very helpful.


---

* [SPARK-3177](https://issues.apache.org/jira/browse/SPARK-3177) | *Minor* | **Yarn-alpha ClientBaseSuite Unit test failed**

Yarn-alpha ClientBaseSuite Unit test failed due to differences of MRJobConfig API between yarn-stable and yarn-alpha. 

The class field
MRJobConfig.DEFAULT\_MAPREDUCE\_APPLICATION\_CLASSPATH 

in yarn-alpha 
returns String Array

in yarn 
returns String 

the method will works for yarn-stable but will fail as it try to cast String Array to String. 

val knownDefMRAppCP: Seq[String] =
     getFieldValue[String, Seq[String]](classOf[MRJobConfig],
"DEFAULT\_MAPREDUCE\_APPLICATION\_CLASSPATH",
                                         Seq[String]())(a => a.split(","))


---

* [SPARK-3176](https://issues.apache.org/jira/browse/SPARK-3176) | *Minor* | **Implement 'ABS' and 'LAST' for sql**

Add support for the mathematical function "ABS" and  the analytic function "last" to return a subset of the rows satisfying a query within spark sql.


---

* [SPARK-3174](https://issues.apache.org/jira/browse/SPARK-3174) | *Major* | **Provide elastic scaling within a Spark application**

A common complaint with Spark in a multi-tenant environment is that applications have a fixed allocation that doesn't grow and shrink with their resource needs.  We're blocked on YARN-1197 for dynamically changing the resources within executors, but we can still allocate and discard whole executors.

It would be useful to have some heuristics that
* Request more executors when many pending tasks are building up
* Discard executors when they are idle

See the latest design doc for more information.


---

* [SPARK-3161](https://issues.apache.org/jira/browse/SPARK-3161) | *Major* | **Cache example-node map for DecisionTree training**

Improvement: worker computation

When training each level of a DecisionTree, each example needs to be mapped to a node in the current level (or to none if it does not reach that level).  This is currently done via the function predictNodeIndex(), which traces from the current tree’s root node to the given level.

Proposal: Cache this mapping.
* Pro: O(1) lookup instead of O(level).
* Con: Extra RDD which must share the same partitioning as the training data.

Design:
* (option 1) This could be done as in [Sequoia Forests | https://github.com/AlpineNow/SparkML2] where each instance is stored with an array of node indices (1 node per tree).
* (option 2) This could also be done by storing an RDD\[Array\[Map\[Int, Array\[TreePoint\]\]\]\], where each partition stores an array of maps from node indices to an array of instances.  This has more overhead in data structures but could be more efficient: not all nodes are split on each iteration, and this would allow each executor to ignore instances which are not used for the current node set.


---

* [SPARK-3160](https://issues.apache.org/jira/browse/SPARK-3160) | *Minor* | **Simplify DecisionTree data structure for training**

Improvement: code clarity

Currently, we maintain a tree structure, a flat array of nodes, and a parentImpurities array.

Proposed fix: Maintain everything within a growing tree structure.

This would let us eliminate the flat array of nodes, thus saving storage when we do not grow a full tree.  It would also potentially make it easier to pass subtrees to compute nodes for local training.

Note:
* This JIRA used to have this item as well: We could have a “LearningNode extends Node” setup where the LearningNode holds metadata for learning (such as impurities).  The test-time model could be extracted from this training-time model, so that extra information (such as impurities) does not have to be kept after training.
* However, this is really a separate issue, so I removed it.


---

* [SPARK-3158](https://issues.apache.org/jira/browse/SPARK-3158) | *Major* | **Avoid 1 extra aggregation for DecisionTree training**

Improvement: computation

Currently, the implementation does one unnecessary aggregation step.  The aggregation step for level L (to choose splits) gives enough information to set the predictions of any leaf nodes at level L+1.  We can use that info and skip the aggregation step for the last level of the tree (which only has leaf nodes).

This update could be done by:
* allocating a root node before the loop in the main train() method
* allocating nodes for level L+1 while choosing splits for level L
* caching stats in these newly allocated nodes, so that we can calculate predictions if we know they will be leaves
* DecisionTree.findBestSplits can just return doneTraining

This will let us cache impurity and avoid re-calculating it in calculateGainForSplit.

Some above notes were copied from discussion in [https://github.com/apache/spark/pull/2341]


---

* [SPARK-3156](https://issues.apache.org/jira/browse/SPARK-3156) | *Major* | **DecisionTree: Order categorical features adaptively**

Improvement: accuracy

Currently, ordered categorical features use a fixed bin ordering chosen before training based on a subsample of the data.  (See the code using centroids in findSplitsBins().)

Proposal: Choose the ordering adaptively for every split.  This would require a bit more computation on the master, but could improve results by splitting more intelligently.

Required changes: The result of aggregation is used in findAggForOrderedFeatureClassification() to compute running totals over the pre-set ordering of categorical feature values.  The stats should instead be used to choose a new ordering of categories, before computing running totals.

Clarification:
It is actually more accurate to choose a new ordering at every node (and is required to make this have guarantees and not be a heuristic for regression and binary classification).  It does mean a different set of splits may be considered at each node, but that split should be tailored specifically for that node and should give better results.
As far as computation, it does require a sort, but that should be cheap as long as the number of categories for any feature is not too large.  In my tests, much more (10x - 100x) time is spent on the aggregation than on the master, so it is not an issue for categorical features with a smallish number of categories.


---

* [SPARK-3135](https://issues.apache.org/jira/browse/SPARK-3135) | *Major* | **Avoid memory copy in TorrentBroadcast serialization**

TorrentBroadcast.blockifyObject uses a ByteArrayOutputStream to serialize broadcast object into a single giant byte array, and then separates it into smaller chunks.  We should implement a new OutputStream that writes serialized bytes directly into chunks of byte arrays so we don't need the extra memory copy.


---

* [SPARK-3129](https://issues.apache.org/jira/browse/SPARK-3129) | *Critical* | **Prevent data loss in Spark Streaming on driver failure using Write Ahead Logs**

Spark Streaming can small amounts of data when the driver goes down - and the sending system cannot re-send the data (or the data has already expired on the sender side). This currently affects all receivers. 

The solution we propose is to reliably store all the received data into HDFS. This will allow the data to persist through driver failures, and therefore can be processed when the driver gets restarted. 

The high level design doc for this feature is given here. 
https://docs.google.com/document/d/1vTCB5qVfyxQPlHuv8rit9-zjdttlgaSrMgfCDQlCJIM/edit?usp=sharing

This major task has been divided in sub-tasks
- Implementing a write ahead log management system that can manage rolling write ahead logs - write to log, recover on failure and clean up old logs
- Implementing a HDFS backed block RDD that can read data either from Spark's BlockManager or from HDFS files
- Implementing a ReceivedBlockHandler interface that abstracts out the functionality of saving received blocks
- Implementing a ReceivedBlockTracker and other associated changes in the driver that allows metadata of received blocks and block-to-batch allocations to be recovered upon driver retart


---

* [SPARK-3128](https://issues.apache.org/jira/browse/SPARK-3128) | *Minor* | **Use streaming test suite for StreamingLR**

Unit tests for Streaming Linear Regression currently use file writing to generate input data and a TextFileStream to read the data. It would be better to use existing utilities from the streaming test suite to simulate DStreams and collect and evaluate results of DStream operations. This will make tests faster, simpler, and easier to maintain / extend.


---

* [SPARK-3121](https://issues.apache.org/jira/browse/SPARK-3121) | *Critical* | **Wrong implementation of implicit bytesWritableConverter**

val path = ... //path to seq file with BytesWritable as type of both key and value
val file = sc.sequenceFile[Array[Byte],Array[Byte]](path)
file.take(1)(0).\_1

This prints incorrect content of byte array. Actual content starts with correct one and some "random" bytes and zeros are appended. BytesWritable has two methods:

getBytes() - return content of all internal array which is often longer then actual value stored. It usually contains the rest of previous longer values

copyBytes() - return just begining of internal array determined by internal length property

It looks like in implicit conversion between BytesWritable and Array[byte] getBytes is used instead of correct copyBytes.


---

* [SPARK-3094](https://issues.apache.org/jira/browse/SPARK-3094) | *Major* | **Support run pyspark in PyPy**

PyPy is much faster than CPython (about 5x), run PySpark in PyPy will also be useful for pure Python heavy computation applications.


---

* [SPARK-3086](https://issues.apache.org/jira/browse/SPARK-3086) | *Minor* | **Use 1-indexing for decision tree nodes**

1-indexing is good for binary trees. The root node gets index 1. And for any node with index i, its left child is (i << 1), right child is (i << 1) + 1, parent is (i >> 1), and its level is `java.lang.Integer.highestOneBit(idx)` (also 1-indexing for levels).


---

* [SPARK-3076](https://issues.apache.org/jira/browse/SPARK-3076) | *Minor* | **Gracefully report build timeouts in Jenkins**

Copy of dev list thread:

{quote}
Jenkins runs for this PR https://github.com/apache/spark/pull/1960 timed out without notification. The relevant Jenkins logs are at

https://amplab.cs.berkeley.edu/jenkins/job/SparkPullRequestBuilder/18588/consoleFull
https://amplab.cs.berkeley.edu/jenkins/job/SparkPullRequestBuilder/18592/consoleFull
https://amplab.cs.berkeley.edu/jenkins/job/SparkPullRequestBuilder/18597/consoleFull




On Fri, Aug 15, 2014 at 11:44 AM, Nicholas Chammas <nicholas.chammas@gmail.com> wrote:
Shivaram,

Can you point us to an example of that happening? The Jenkins console output, that is.

Nick


On Fri, Aug 15, 2014 at 2:28 PM, Shivaram Venkataraman <shivaram@eecs.berkeley.edu> wrote:
Also I think Jenkins doesn't post build timeouts to github. Is there anyway
we can fix that ?
On Aug 15, 2014 9:04 AM, "Patrick Wendell" <pwendell@gmail.com> wrote:

> Hi All,
>
> I noticed that all PR tests run overnight had failed due to timeouts. The
> patch that updates the netty shuffle I believe somehow inflated to the
> build time significantly. That patch had been tested, but one change was
> made before it was merged that was not tested.
>
> I've reverted the patch for now to see if it brings the build times back
> down.
>
> - Patrick
>
{quote}


---

* [SPARK-3069](https://issues.apache.org/jira/browse/SPARK-3069) | *Minor* | **Build instructions in README are outdated**

The build instructions in the README are outdated. The instructions on http://spark.apache.org/docs/latest/building-with-maven.html are more up to date.

If SPARK-3039 gets merged, the maven property `avro.mapred.classifier` (which determines which API version of Hadoop the avro-mapred artifact expects) should also be documented.


---

* [SPARK-3068](https://issues.apache.org/jira/browse/SPARK-3068) | *Minor* | **when run with jvm 1.8, should not set MaxPermSize**

In JVM 1.8.0, MaxPermSize is no longer supported.
In spark stderr output, there would be a line of

Java HotSpot(TM) 64-Bit Server VM warning: ignoring option MaxPermSize=128m; support was removed in 8.0


---

* [SPARK-3067](https://issues.apache.org/jira/browse/SPARK-3067) | *Minor* | **JobProgressPage could not show Fair Scheduler Pools section sometimes**

JobProgressPage could not show Fair Scheduler Pools section sometimes.
SparkContext starts webui and then postEnvironmentUpdate. Sometimes JobProgressPage is accessed between webui starting and postEnvironmentUpdate, then the lazy val isFairScheduler will be false. The Fair Scheduler Pools section will not display any more.


---

* [SPARK-3061](https://issues.apache.org/jira/browse/SPARK-3061) | *Minor* | **Maven build fails in Windows OS**

Maven build fails in Windows OS with this error message.

{noformat}
[ERROR] Failed to execute goal org.codehaus.mojo:exec-maven-plugin:1.2.1:exec (default) on project spark-core\_2.10: Command execution failed. Cannot run program "unzip" (in directory "C:\path\to\gitofspark\python"): CreateProcess error=2, w肳ꂽt@ -> [Help 1]
{noformat}


---

* [SPARK-3047](https://issues.apache.org/jira/browse/SPARK-3047) | *Major* | **add an option to use str in textFileRDD()**

In Python 2.x, most of the string are bytearray, it's more efficient then unicode (both cpu and memory).

UTF-8 is the default encoding.

After disable decode from utf8 into unicode in UTF8Deserializer, the total time for wc job is reduce by 32% (from 2m17s to 1m34s).

We also could add argument unicode=False to textFile().


---

* [SPARK-3043](https://issues.apache.org/jira/browse/SPARK-3043) | *Major* | **DecisionTree aggregation is inefficient**

2 major efficiency issues in computation and storage:

(1) DecisionTree aggregation involves reshaping data unnecessarily.

E.g., the internal methods extractNodeInfo() and getBinDataForNode() involve reshaping the data multiple times without real computation.

(2) DecisionTree splits and aggregate bins can include many unused bins/splits.

The same number of splits/bins are used for all features.  E.g., if there is a continuous feature which uses 100 bins, then there will also be 100 bins allocated for all binary features, even though only 2 are necessary.


---

* [SPARK-3040](https://issues.apache.org/jira/browse/SPARK-3040) | *Trivial* | **Reverse order of Utils.findLocalIpAddress on UNIX**

I noticed this inconvenience when I ran spark-shell with my virtual machines on and VPN service running.

There are a lot of network interfaces on my laptop(inactive devices omitted):
{quote}
lo0: inet 127.0.0.1
en1: inet 192.168.0.102
vnic0: inet 10.211.55.2 (virtual if for vm1)
vnic1: inet 10.37.129.3 (virtual if for vm2)
tun0: inet 172.16.100.191 --> 172.16.100.191 (tun device for VPN)
{quote}

In spark core, Utils.findLocalIpAddress() uses NetworkInterface.getNetworkInterfaces to get all active network interfaces, but unfortunately, this method returns network interfaces in reverse order compared to the ifconfig output (both use ioctl sys call). I dug into the openJDK 6 and 7 source code and confirms this behavior(It just happens on unix-like system, windows deals with it and returns in index order). So, the findLocalIpAddress method will pick the ip address associated with tun0 rather than en1


---

* [SPARK-3032](https://issues.apache.org/jira/browse/SPARK-3032) | *Blocker* | **Potential bug when running sort-based shuffle with sorting using TimSort**

When using SparkPerf's aggregate-by-key workload to test sort-based shuffle, data type for key and value is (String, String), always meet this issue:

{noformat}
java.lang.IllegalArgumentException: Comparison method violates its general contract!
        at org.apache.spark.util.collection.Sorter$SortState.mergeLo(Sorter.java:755)
        at org.apache.spark.util.collection.Sorter$SortState.mergeAt(Sorter.java:493)
        at org.apache.spark.util.collection.Sorter$SortState.mergeCollapse(Sorter.java:420)
        at org.apache.spark.util.collection.Sorter$SortState.access$200(Sorter.java:294)
        at org.apache.spark.util.collection.Sorter.sort(Sorter.java:128)
        at org.apache.spark.util.collection.SizeTrackingPairBuffer.destructiveSortedIterator(SizeTrackingPairBuffer.scala:83)
        at org.apache.spark.util.collection.ExternalSorter.spillToMergeableFile(ExternalSorter.scala:323)
        at org.apache.spark.util.collection.ExternalSorter.spill(ExternalSorter.scala:271)
        at org.apache.spark.util.collection.ExternalSorter.maybeSpill(ExternalSorter.scala:249)
        at org.apache.spark.util.collection.ExternalSorter.insertAll(ExternalSorter.scala:220)
        at org.apache.spark.shuffle.sort.SortShuffleWriter.write(SortShuffleWriter.scala:85)
        at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:68)
        at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:41)
        at org.apache.spark.scheduler.Task.run(Task.scala:54)
        at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:199)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1110)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:603)
        at java.lang.Thread.run(Thread.java:722)
{noformat}

Seems the current partitionKeyComparator which use hashcode of String as key comparator break some sorting contracts. 

Also I tested using data type Int as key, this is OK to pass the test, since hashcode of Int is its self. So I think potentially partitionDiff + hashcode of String may break the sorting contracts.


---

* [SPARK-3030](https://issues.apache.org/jira/browse/SPARK-3030) | *Major* | **reuse python worker**

Currently, it will fork an Python worker for each task, it will better if we can reuse the worker for later tasks.

This will be very useful for large dataset with big broadcast, so it does not need to sending broadcast to worker again and again. Also it can reduce the overhead of launch a task.


---

* [SPARK-3019](https://issues.apache.org/jira/browse/SPARK-3019) | *Major* | **Pluggable block transfer (data plane communication) interface**

The attached design doc proposes a standard interface for block transferring, which will make future engineering of this functionality easier, allowing the Spark community to provide alternative implementations.

Block transferring is a critical function in Spark. All of the following depend on it:
* shuffle
* torrent broadcast
* block replication in BlockManager
* remote block reads for tasks scheduled without locality


---

* [SPARK-3018](https://issues.apache.org/jira/browse/SPARK-3018) | *Major* | **Release all ManagedBuffers upon task completion/failure**

BlockFetcherIterator retains ManagedBuffers returned by BlockClient.fetchBlocks. Those buffers are released when the iterators are traversed fully. In the case of task failures or completion without exhausting the iterator, this could lead to memory leak.


---

* [SPARK-3016](https://issues.apache.org/jira/browse/SPARK-3016) | *Major* | **Client should be able to put blocks in addition to fetch blocks**

If we ever want the Netty module to replace the existing ConnectionManager, we'd need to implement the ability for the client to put blocks to servers.


---

* [SPARK-3014](https://issues.apache.org/jira/browse/SPARK-3014) | *Minor* | **Log a more informative messages in a couple failure scenarios**

This is what shows up currently when the user code fails to initialize a SparkContext when running in yarn-cluster mode:
{code}
Exception in thread "Thread-4" java.lang.NullPointerException
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.spark.deploy.yarn.ApplicationMaster$$anon$2.run(ApplicationMaster.scala:187)
Exception in thread "main" java.lang.AssertionError: assertion failed
	at scala.Predef$.assert(Predef.scala:165)
	at org.apache.spark.deploy.yarn.ApplicationMaster.waitForSparkContextInitialized(ApplicationMaster.scala:223)
	at org.apache.spark.deploy.yarn.ApplicationMaster.run(ApplicationMaster.scala:112)
	at org.apache.spark.deploy.yarn.ApplicationMaster$$anonfun$main$1.apply$mcV$sp(ApplicationMaster.scala:470)
	at org.apache.spark.deploy.SparkHadoopUtil$$anon$1.run(SparkHadoopUtil.scala:53)
	at org.apache.spark.deploy.SparkHadoopUtil$$anon$1.run(SparkHadoopUtil.scala:52)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:415)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1554)
	at org.apache.spark.deploy.SparkHadoopUtil.runAsSparkUser(SparkHadoopUtil.scala:52)
	at org.apache.spark.deploy.yarn.ApplicationMaster$.main(ApplicationMaster.scala:469)
	at org.apache.spark.deploy.yarn.ApplicationMaster.main(ApplicationMaster.scala)
{code}

This is what shows up when the main method isn't static:
{code}
Exception in thread "main" java.lang.NullPointerException
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.spark.deploy.SparkSubmit$.launch(SparkSubmit.scala:292)
	at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:55)
	at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)
{code}


---

* [SPARK-3010](https://issues.apache.org/jira/browse/SPARK-3010) | *Trivial* | **fix redundant conditional**

there are some redundant conditional in spark, such as 

1.
private[spark] def codegenEnabled: Boolean =
  if (getConf(CODEGEN\_ENABLED, "false") == "true") true else false
2.
x => if (x == 2) true else false

... etc


---

* [SPARK-3002](https://issues.apache.org/jira/browse/SPARK-3002) | *Major* | **Maintains a connection pool and reuse clients in BlockClientFactory**

To create a client manager that reuses clients (and connections).

Can also use IdleStateHandler to clean up idle connections.

http://netty.io/4.0/api/io/netty/handler/timeout/IdleStateHandler.html


---

* [SPARK-2981](https://issues.apache.org/jira/browse/SPARK-2981) | *Major* | **PartitionStrategy: VertexID hash overflow**

In EdgePartition1D, a PartitionID is calculated by multiplying VertexId with a mixingPrime (1125899906842597L) then cast to Int, and mod numParts.

The Long is overflowed, and when cast to Int:

{quote}
scala> (1125899906842597L*1).toInt
res1: Int = -27

scala> (1125899906842597L*2).toInt
res2: Int = -54

scala> (1125899906842597L*3).toInt
res3: Int = -81
{quote}
As the cast produce number that are multiplies of 3, the partition is not useable when partitioning to multiples of 3.

for example when you partition to 6 or 9 parts:
{quote}
14/08/12 09:26:21 INFO GraphXPartition: GRAPHX: psrc Array((0,4347084), (1,0), (2,0), (3,3832578), (4,0), (5,0))
14/08/12 09:26:21 INFO GraphXPartition: GRAPHX: pdst Array((0,4347084), (1,0), (2,0), (3,3832578), (4,0), (5,0)) 

14/08/12 09:21:46 INFO GraphXPartition: GRAPHX: psrc Array((0,8179662), (1,0), (2,0), (3,0), (4,0), (5,0), (6,0), (7,0), (8,0))
14/08/12 09:21:46 INFO GraphXPartition: GRAPHX: pdst Array((0,8179662), (1,0), (2,0), (3,0), (4,0), (5,0), (6,0), (7,0), (8,0)) 

so the vertices are partitioned to 0,3 for 6; and 0 for 9
{quote}

I think solution is to cast after mod.
{quote}
scala> (1125899906842597L*3)
res4: Long = 3377699720527791

scala> (1125899906842597L*3) % 9
res5: Long = 3

scala> ((1125899906842597L*3) % 9).toInt
res5: Int = 3
{quote}


---

* [SPARK-2978](https://issues.apache.org/jira/browse/SPARK-2978) | *Major* | **Provide an MR-style shuffle transformation**

For Hive on Spark joins in particular, and for running legacy MR code in general, I think it would be useful to provide a transformation with the semantics of the Hadoop MR shuffle, i.e. one that
* groups by key: provides (Key, Iterator[Value])
* within each partition, provides keys in sorted order

A couple ways that could make sense to expose this:
* Add a new operator.  "groupAndSortByKey", "groupByKeyAndSortWithinPartition", "hadoopStyleShuffle", maybe?
* Allow groupByKey to take an ordering param for keys within a partition


---

* [SPARK-2976](https://issues.apache.org/jira/browse/SPARK-2976) | *Minor* | **Replace tabs with spaces**

Currently, there are too many tabs in source file, which does not correspond to coding style.

I saw following 3 files have tabs.

* sorttable.js
* JavaPageRank.java
* JavaKinesisWordCountASL.java


---

* [SPARK-2955](https://issues.apache.org/jira/browse/SPARK-2955) | *Minor* | **Test code fails to compile with "mvn compile" without "install"**

(This is the corrected follow-up to https://issues.apache.org/jira/browse/SPARK-2903 )

Right now, "mvn compile test-compile" fails to compile Spark. (Don't worry; "mvn package" works, so this is not major.) The issue stems from test code in some modules depending on test code in other modules. That is perfectly fine and supported by Maven.

It takes extra work to get this to work with scalatest, and this has been attempted: https://github.com/apache/spark/blob/master/sql/catalyst/pom.xml#L86

This formulation is not quite enough, since the SQL Core module's tests fail to compile for lack of finding test classes in SQL Catalyst, and likewise for most Streaming integration modules depending on core Streaming test code. Example:

{code}
[error] /Users/srowen/Documents/spark/sql/core/src/test/scala/org/apache/spark/sql/QueryTest.scala:23: not found: type PlanTest
[error] class QueryTest extends PlanTest {
[error]                         ^
[error] /Users/srowen/Documents/spark/sql/core/src/test/scala/org/apache/spark/sql/CachedTableSuite.scala:28: package org.apache.spark.sql.test is not a value
[error]   test("SPARK-1669: cacheTable should be idempotent") {
[error]   ^
...
{code}

The issue I believe is that generation of a test-jar is bound here to the compile phase, but the test classes are not being compiled in this phase. It should bind to the test-compile phase.

It works when executing "mvn package" or "mvn install" since test-jar artifacts are actually generated available through normal Maven mechanisms as each module is built. They are then found normally, regardless of scalatest configuration.

It would be nice for a simple "mvn compile test-compile" to work since the test code is perfectly compilable given the Maven declarations.

On the plus side, this change is low-risk as it only affects tests.
[~yhuai] made the original scalatest change and has glanced at this and thinks it makes sense.


---

* [SPARK-2951](https://issues.apache.org/jira/browse/SPARK-2951) | *Major* | **SerDeUtils.pythonToPairRDD fails on RDDs of pickled array.arrays in Python 2.6**

With Python 2.6, calling SerDeUtils.pythonToPairRDD() on an RDD of pickled Python array.arrays will fail with this exception:

{code}
ava.lang.ClassCastException: java.lang.String cannot be cast to java.util.ArrayList
        net.razorvine.pickle.objects.ArrayConstructor.construct(ArrayConstructor.java:33)
        net.razorvine.pickle.Unpickler.load\_reduce(Unpickler.java:617)
        net.razorvine.pickle.Unpickler.dispatch(Unpickler.java:170)
        net.razorvine.pickle.Unpickler.load(Unpickler.java:84)
        net.razorvine.pickle.Unpickler.loads(Unpickler.java:97)
        org.apache.spark.api.python.SerDeUtil$$anonfun$pythonToPairRDD$1$$anonfun$5.apply(SerDeUtil.scala:106)
        org.apache.spark.api.python.SerDeUtil$$anonfun$pythonToPairRDD$1$$anonfun$5.apply(SerDeUtil.scala:106)
        scala.collection.Iterator$$anon$11.next(Iterator.scala:328)
        scala.collection.Iterator$$anon$11.next(Iterator.scala:328)
        scala.collection.Iterator$$anon$11.next(Iterator.scala:328)
        org.apache.spark.rdd.PairRDDFunctions$$anonfun$12.apply(PairRDDFunctions.scala:898)
        org.apache.spark.rdd.PairRDDFunctions$$anonfun$12.apply(PairRDDFunctions.scala:880)
        org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:62)
        org.apache.spark.scheduler.Task.run(Task.scala:54)
        org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:199)
        java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        java.lang.Thread.run(Thread.java:745)
{code}

I think this is due to a difference in how array.array is pickled in Python 2.6 vs. Python 2.7.  To see this, run the following script:

{code}
from pickletools import dis, optimize
from pickle import dumps, loads, HIGHEST\_PROTOCOL
from array import array

arr = array('d', [1, 2, 3])

#protocol = HIGHEST\_PROTOCOL
protocol = 0

pickled = dumps(arr, protocol=protocol)
pickled = optimize(pickled)
unpickled = loads(pickled)

print arr
print unpickled

print dis(pickled)
{code}

In Python 2.7, this outputs

{code}
array('d', [1.0, 2.0, 3.0])
array('d', [1.0, 2.0, 3.0])
    0: c    GLOBAL     'array array'
   13: (    MARK
   14: S        STRING     'd'
   19: (        MARK
   20: l            LIST       (MARK at 19)
   21: F        FLOAT      1.0
   26: a        APPEND
   27: F        FLOAT      2.0
   32: a        APPEND
   33: F        FLOAT      3.0
   38: a        APPEND
   39: t        TUPLE      (MARK at 13)
   40: R    REDUCE
   41: .    STOP
highest protocol among opcodes = 0
None
{code}

whereas 2.6 outputs

{code}
array('d', [1.0, 2.0, 3.0])
array('d', [1.0, 2.0, 3.0])
    0: c    GLOBAL     'array array'
   13: (    MARK
   14: S        STRING     'd'
   19: S        STRING     '\x00\x00\x00\x00\x00\x00\xf0?\x00\x00\x00\x00\x00\x00\x00@\x00\x00\x00\x00\x00\x00\x08@'
  110: t        TUPLE      (MARK at 13)
  111: R    REDUCE
  112: .    STOP
highest protocol among opcodes = 0
None
{code}

I think the Java-side depickling library doesn't expect this pickled format, causing this failure.

I noticed this when running PySpark's unit tests on 2.6 because the TestOuputFormat.test\_newhadoop test failed.

I think that this issue affects all of the methods that might need to depickle arrays in Java, including all of the Hadoop output format methods.

How should we try to fix this?  Require that users upgrade to 2.7 if they want to use code that requires this?  Open a bug with the depickling library maintainers?  Try to hack in our own pickling routines for arrays if we detect that we're using 2.6?


---

* [SPARK-2950](https://issues.apache.org/jira/browse/SPARK-2950) | *Minor* | **Add GC time and Shuffle Write time to JobLogger output**

The JobLogger is very useful for performing offline performance profiling of Spark jobs. GC Time and Shuffle Write time are available in TaskMetrics but are currently missed from the JobLogger output. This change adds these two fields.


---

* [SPARK-2933](https://issues.apache.org/jira/browse/SPARK-2933) | *Minor* | **Refactor and cleanup Yarn AM code**

There's some code in the yarn module that could be simplified by doing some minor cleanup. For example, ApplicationMaster has 3 constructors, while only one of the is only ever called.

Also, it would be nice if more of the code was shared. While some things have been factored out (e.g. ClientBase), there's still a lot of code that looks very similar in the alpha and stable trees.


---

* [SPARK-2932](https://issues.apache.org/jira/browse/SPARK-2932) | *Trivial* | **Move MasterFailureTest out of "main" source directory**

Currently, MasterFailureTest.scala lives in streaming/src/main, which means it ends up in the published streaming jar.

It's only used by other test code, and although it also provides a main() entry point, that's also only usable for testing, so the code should probably be moved to the test directory.


---

* [SPARK-2918](https://issues.apache.org/jira/browse/SPARK-2918) | *Minor* | **EXPLAIN doens't support the CTAS**

Currently, the "EXPLAIN" only support the "query", even it will fail for SQL like "explain create table s1 as select * from src where key=0;"


---

* [SPARK-2917](https://issues.apache.org/jira/browse/SPARK-2917) | *Minor* | **Avoid CTAS creates table in logical plan analyzing.**

Currently, the CTAS will create the table in logical plan analyzing, right before the real execution triggered.
E.g. in
CREATE TABLE s1 as select * from src where key=0;


---

* [SPARK-2915](https://issues.apache.org/jira/browse/SPARK-2915) | *Minor* | **Storage summary table UI glitch when using sparkSQL**

When using sqlContext.cacheTable() a registered table. the name of the RDD becomes a very large string (related to the query that created the sqlRDD). As a result the first columns of the storage tab in SparkUI becomes very long and the other columns become squashed.

Since the name of the RDD is not human readable, we can simply set ellipsis in the first cell (which will hide the rest of string). Alternatively we can fix the RDD name to a more readable and shorter name.


---

* [SPARK-2912](https://issues.apache.org/jira/browse/SPARK-2912) | *Major* | **Jenkins should include the commit hash in his messages**

When there are multiple test cycles within a PR, it is not obvious what cycle applies to what set of changes. This makes it more likely for committers to merge a PR that has had new commits added since the last PR.

Requirements:
* Add the commit hash to Jenkins's messages so it's clear what the test cycle corresponds to.
* While you're at it, polish the formatting a bit.


---

* [SPARK-2911](https://issues.apache.org/jira/browse/SPARK-2911) | *Minor* | **provide rdd.parent[T](j) to obtain jth parent of rdd**

For writing RDD subclasses that involve more than a single parent dependency, it would be convenient (and more readable) to say:

rdd.parent[T](j)

instead of:

rdd.dependencies(j).rdd.asInstanceOf[RDD[T]]


---

* [SPARK-2902](https://issues.apache.org/jira/browse/SPARK-2902) | *Major* | **Change default options to be more agressive**

Compression for in-memory columnar storage is disabled by default, it's time to enable it. Also, it help alleviating OOM mentioned in SPARK-2650


---

* [SPARK-2895](https://issues.apache.org/jira/browse/SPARK-2895) | *Major* | **Support mapPartitionsWithContext in Spark Java API**

This is a requirement from Hive on Spark, mapPartitionsWithContext only exists in Spark Scala API, we expect to access from Spark Java API. 
For HIVE-7627, HIVE-7843, Hive operators which are invoked in mapPartitions closure need to get taskId.


---

* [SPARK-2890](https://issues.apache.org/jira/browse/SPARK-2890) | *Major* | **Spark SQL should allow SELECT with duplicated columns**

Spark reported error java.lang.IllegalArgumentException with messages:

java.lang.IllegalArgumentException: requirement failed: Found fields with the same name.
        at scala.Predef$.require(Predef.scala:233)
        at org.apache.spark.sql.catalyst.types.StructType.<init>(dataTypes.scala:317)
        at org.apache.spark.sql.catalyst.types.StructType$.fromAttributes(dataTypes.scala:310)
        at org.apache.spark.sql.parquet.ParquetTypesConverter$.convertToString(ParquetTypes.scala:306)
        at org.apache.spark.sql.parquet.ParquetTableScan.execute(ParquetTableOperations.scala:83)
        at org.apache.spark.sql.execution.Filter.execute(basicOperators.scala:57)
        at org.apache.spark.sql.execution.SparkPlan.executeCollect(SparkPlan.scala:85)
        at org.apache.spark.sql.SchemaRDD.collect(SchemaRDD.scala:433)

After trial and error, it seems it's caused by duplicated columns in my select clause.

I made the duplication on purpose for my code to parse correctly. I think we should allow users to specify duplicated columns as return value.

Jianshi


---

* [SPARK-2889](https://issues.apache.org/jira/browse/SPARK-2889) | *Minor* | **Spark creates Hadoop Configuration objects inconsistently**

Looking through Spark code, there are 3 ways used to get Configuration objects:

- Use SparkContext.hadoopConfiguration
- Use SparkHadoopUtil.newConfiguration
- Call {{new Configuration()}} directly

Only the first one supports setting hadoop configs via {{spark.hadoop.*}} properties. We should probably make everybody agree about how to do things.


---

* [SPARK-2885](https://issues.apache.org/jira/browse/SPARK-2885) | *Major* | **All-pairs similarity via DIMSUM**

Build all-pairs similarity algorithm via DIMSUM. 

Given a dataset of sparse vector data, the all-pairs similarity problem is to find all similar vector pairs according to a similarity function such as cosine similarity, and a given similarity score threshold. Sometimes, this problem is called a “similarity join”.

The brute force approach of considering all pairs quickly breaks, since it scales quadratically. For example, for a million vectors, it is not feasible to check all roughly trillion pairs to see if they are above the similarity threshold. Having said that, there exist clever sampling techniques to focus the computational effort on those pairs that are above the similarity threshold, which makes the problem feasible.

DIMSUM has a single parameter (called gamma) to tradeoff computation time vs accuracy. Setting gamma from 1 to the largest magnitude allows tradeoff of computation vs accuracy from low computation to high accuracy. For a very large gamma, all cosine similarities are computed exactly with no sampling.

Current PR:
https://github.com/apache/spark/pull/1778

Justification for adding to MLlib:
- All-pairs similarity is missing from MLlib and has been requested several times, e.g. http://bit.ly/XAFGs8 and separately by Jeremy Freeman (see https://github.com/apache/spark/pull/1778#issuecomment-51300825)

- Algorithm is used in large-scale production at Twitter. e.g. see https://blog.twitter.com/2012/dimension-independent-similarity-computation-disco . Twitter also open-sourced their version in scalding: https://github.com/twitter/scalding/pull/833

- When used with the gamma parameter set high, this algorithm becomes the normalized gramian matrix, which is useful in RowMatrix alongside the computeGramianMatrix method already in RowMatrix

More details about usage at Twitter: https://blog.twitter.com/2014/all-pairs-similarity-via-dimsum

For correctness proof, see Theorem 4.3 in http://stanford.edu/~rezab/papers/dimsum.pdf


---

* [SPARK-2881](https://issues.apache.org/jira/browse/SPARK-2881) | *Blocker* | **Snappy is now default codec - could lead to conflicts since uses /tmp**

I was using spark master branch and I ran into an issue with Snappy since its now the default codec for shuffle. 

The issue was that someone else had run with snappy and it created /tmp/snappy-*.so but it had restrictive permissions so I was not able to use it or remove it.   This caused my spark job to not start.  

I was running in yarn client mode at the time.  Yarn cluster mode shouldn't have this issue since we change the java.io.tmpdir. 
I assume this would also affect standalone mode.

I'm not sure if this is a true blocker but wanted to file it as one at first and let us decide.


---

* [SPARK-2871](https://issues.apache.org/jira/browse/SPARK-2871) | *Major* | **Missing API in PySpark**

There are several APIs missing in PySpark:

RDD.collectPartitions()
RDD.histogram()
RDD.zipWithIndex()
RDD.zipWithUniqueId()
RDD.min(comp)
RDD.max(comp)

A bunch of API related to approximate jobs.


---

* [SPARK-2848](https://issues.apache.org/jira/browse/SPARK-2848) | *Major* | **Shade Guava in Spark deliverables**

As discussed in SPARK-2420, this task covers the work of shading Guava in Spark deliverables so that they don't conflict with the Hadoop classpath (nor user's classpath).

Since one Guava class is exposed through Spark's API, that class will be forked from 14.0.1 (current version used by Spark) and excluded from any shading.

The end result is that Spark's Guava won't be exposed to users anymore. This has the side-effect of effectively downgrading to version 11 (the one used by Hadoop) for those that do not explicitly depend on / package Guava with their apps.


---

* [SPARK-2845](https://issues.apache.org/jira/browse/SPARK-2845) | *Minor* | **Add timestamp to BlockManager events**

BlockManager events in SparkListener.scala do not have a timestamp; while not necessary for rendering the Spark UI, the extra information might be interesting for other tools that use the event data.

Note that the same applies to lots of other events; it would be nice, at some point, to have all of them have a timestamp assigned at the point of creation of the event, so that network traffic / event queueing in the driver do not affect that information. But right now, I'm more interested in those particular events. :-)


---

* [SPARK-2811](https://issues.apache.org/jira/browse/SPARK-2811) | *Major* | **update algebird to 0.8.1**

First algebird\_2.11 0.8.1 has to be released


---

* [SPARK-2809](https://issues.apache.org/jira/browse/SPARK-2809) | *Major* | **update chill to version 0.5.0**

First twitter chill\_2.11 0.4 has to be released


---

* [SPARK-2805](https://issues.apache.org/jira/browse/SPARK-2805) | *Major* | **Update akka to version 2.3.4**

akka-2.3 is the lowest version available in Scala 2.11

akka-2.3 depends on protobuf 2.5. Hadoop-1 requires protobuf 2.4.1. In order to reconcile the conflicting dependencies, need to release akka-2.3.x-shaded-protobuf artifact which has protobuf 2.5 within.


---

* [SPARK-2781](https://issues.apache.org/jira/browse/SPARK-2781) | *Major* | **Analyzer should check resolution of LogicalPlans**

Currently the Analyzer’s CheckResolution rule checks that all attributes are resolved by searching for unresolved Expressions.  But some LogicalPlans, including Union, contain custom implementations of the resolve attribute that validate other criteria in addition to checking for attribute resolution of their descendants.  These LogicalPlans are not currently validated by the CheckResolution implementation.

As a result, it is currently possible to execute a query generated from unresolved LogicalPlans.  One example is a UNION query that produces rows with different data types in the same column:

{noformat}
val sqlContext = new org.apache.spark.sql.SQLContext(sc)
import sqlContext.\_
case class T1(value:Seq[Int])
val t1 = sc.parallelize(Seq(T1(Seq(0,1))))
t1.registerAsTable("t1")
sqlContext.sql("SELECT value FROM t1 UNION SELECT 2 FROM t1”).collect()
{noformat}

In this example, the type coercion implementation cannot unify array and integer types.  One row contains an array in the returned column and the other row contains an integer.  The result is:

{noformat}
res3: Array[org.apache.spark.sql.Row] = Array([List(0, 1)], [2])
{noformat}

I believe fixing this is a first step toward improving validation for Union (and similar) plans.  (For instance, Union does not currently validate that its children contain the same number of columns.)


---

* [SPARK-2778](https://issues.apache.org/jira/browse/SPARK-2778) | *Major* | **Add unit tests for Yarn integration**

It would be nice to add some Yarn integration tests to the unit tests in Spark; Yarn provides a "MiniYARNCluster" class that can be used to spawn a cluster locally.

UPDATE: These tests are causing exceptions in our nightly build:

{code}
sbt.ForkMain$ForkError: Call From test04.amplab/10.123.1.2 to test04.amplab:0 failed on connection exception: java.net.ConnectException: Connection refused; For more details see:  http://wiki.apache.org/hadoop/ConnectionRefused
	at sun.reflect.GeneratedConstructorAccessor5.newInstance(Unknown Source)
	at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)
	at java.lang.reflect.Constructor.newInstance(Constructor.java:526)
	at org.apache.hadoop.net.NetUtils.wrapWithMessage(NetUtils.java:783)
	at org.apache.hadoop.net.NetUtils.wrapException(NetUtils.java:730)
	at org.apache.hadoop.ipc.Client.call(Client.java:1351)
	at org.apache.hadoop.ipc.Client.call(Client.java:1300)
	at org.apache.hadoop.ipc.ProtobufRpcEngine$Invoker.invoke(ProtobufRpcEngine.java:206)
	at com.sun.proxy.$Proxy11.getClusterMetrics(Unknown Source)
	at org.apache.hadoop.yarn.api.impl.pb.client.ApplicationClientProtocolPBClientImpl.getClusterMetrics(ApplicationClientProtocolPBClientImpl.java:152)
	at sun.reflect.GeneratedMethodAccessor2.invoke(Unknown Source)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.io.retry.RetryInvocationHandler.invokeMethod(RetryInvocationHandler.java:186)
	at org.apache.hadoop.io.retry.RetryInvocationHandler.invoke(RetryInvocationHandler.java:102)
	at com.sun.proxy.$Proxy12.getClusterMetrics(Unknown Source)
	at org.apache.hadoop.yarn.client.api.impl.YarnClientImpl.getYarnClusterMetrics(YarnClientImpl.java:246)
	at org.apache.spark.deploy.yarn.Client$$anonfun$submitApplication$1.apply(Client.scala:69)
	at org.apache.spark.deploy.yarn.Client$$anonfun$submitApplication$1.apply(Client.scala:69)
	at org.apache.spark.Logging$class.logInfo(Logging.scala:59)
	at org.apache.spark.deploy.yarn.Client.logInfo(Client.scala:35)
	at org.apache.spark.deploy.yarn.Client.submitApplication(Client.scala:68)
	at org.apache.spark.scheduler.cluster.YarnClientSchedulerBackend.start(YarnClientSchedulerBackend.scala:61)
	at org.apache.spark.scheduler.TaskSchedulerImpl.start(TaskSchedulerImpl.scala:141)
	at org.apache.spark.SparkContext.<init>(SparkContext.scala:310)
	at org.apache.spark.deploy.yarn.YarnClusterDriver$.main(YarnClusterSuite.scala:140)
	at org.apache.spark.deploy.yarn.YarnClusterSuite$$anonfun$1.apply$mcV$sp(YarnClusterSuite.scala:91)
	at org.apache.spark.deploy.yarn.YarnClusterSuite$$anonfun$1.apply(YarnClusterSuite.scala:89)
	at org.apache.spark.deploy.yarn.YarnClusterSuite$$anonfun$1.apply(YarnClusterSuite.scala:89)
	at org.scalatest.Transformer$$anonfun$apply$1.apply(Transformer.scala:22)
	at org.scalatest.Transformer$$anonfun$apply$1.apply(Transformer.scala:22)
	at org.scalatest.OutcomeOf$class.outcomeOf(OutcomeOf.scala:85)
	at org.scalatest.OutcomeOf$.outcomeOf(OutcomeOf.scala:104)
	at org.scalatest.Transformer.apply(Transformer.scala:22)
	at org.scalatest.Transformer.apply(Transformer.scala:20)
	at org.scalatest.FunSuiteLike$$anon$1.apply(FunSuiteLike.scala:158)
	at org.scalatest.Suite$class.withFixture(Suite.scala:1121)
	at org.scalatest.FunSuite.withFixture(FunSuite.scala:1559)
	at org.scalatest.FunSuiteLike$class.invokeWithFixture$1(FunSuiteLike.scala:155)
	at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:167)
	at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:167)
	at org.scalatest.SuperEngine.runTestImpl(Engine.scala:306)
	at org.scalatest.FunSuiteLike$class.runTest(FunSuiteLike.scala:167)
	at org.scalatest.FunSuite.runTest(FunSuite.scala:1559)
	at org.scalatest.FunSuiteLike$$anonfun$runTests$1.apply(FunSuiteLike.scala:200)
	at org.scalatest.FunSuiteLike$$anonfun$runTests$1.apply(FunSuiteLike.scala:200)
	at org.scalatest.SuperEngine$$anonfun$traverseSubNodes$1$1.apply(Engine.scala:413)
	at org.scalatest.SuperEngine$$anonfun$traverseSubNodes$1$1.apply(Engine.scala:401)
	at scala.collection.immutable.List.foreach(List.scala:318)
	at org.scalatest.SuperEngine.traverseSubNodes$1(Engine.scala:401)
	at org.scalatest.SuperEngine.org$scalatest$SuperEngine$$runTestsInBranch(Engine.scala:396)
	at org.scalatest.SuperEngine.runTestsImpl(Engine.scala:483)
	at org.scalatest.FunSuiteLike$class.runTests(FunSuiteLike.scala:200)
	at org.scalatest.FunSuite.runTests(FunSuite.scala:1559)
	at org.scalatest.Suite$class.run(Suite.scala:1423)
	at org.scalatest.FunSuite.org$scalatest$FunSuiteLike$$super$run(FunSuite.scala:1559)
	at org.scalatest.FunSuiteLike$$anonfun$run$1.apply(FunSuiteLike.scala:204)
	at org.scalatest.FunSuiteLike$$anonfun$run$1.apply(FunSuiteLike.scala:204)
	at org.scalatest.SuperEngine.runImpl(Engine.scala:545)
	at org.scalatest.FunSuiteLike$class.run(FunSuiteLike.scala:204)
	at org.apache.spark.deploy.yarn.YarnClusterSuite.org$scalatest$BeforeAndAfterAll$$super$run(YarnClusterSuite.scala:35)
	at org.scalatest.BeforeAndAfterAll$class.liftedTree1$1(BeforeAndAfterAll.scala:257)
	at org.scalatest.BeforeAndAfterAll$class.run(BeforeAndAfterAll.scala:256)
	at org.apache.spark.deploy.yarn.YarnClusterSuite.run(YarnClusterSuite.scala:35)
	at org.scalatest.tools.Framework.org$scalatest$tools$Framework$$runSuite(Framework.scala:444)
	at org.scalatest.tools.Framework$ScalaTestTask.execute(Framework.scala:651)
	at sbt.ForkMain$Run$2.call(ForkMain.java:294)
	at sbt.ForkMain$Run$2.call(ForkMain.java:284)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
Caused by: sbt.ForkMain$ForkError: Connection refused
	at sun.nio.ch.SocketChannelImpl.checkConnect(Native Method)
	at sun.nio.ch.SocketChannelImpl.finishConnect(SocketChannelImpl.java:739)
	at org.apache.hadoop.net.SocketIOWithTimeout.connect(SocketIOWithTimeout.java:206)
	at org.apache.hadoop.net.NetUtils.connect(NetUtils.java:529)
	at org.apache.hadoop.net.NetUtils.connect(NetUtils.java:493)
	at org.apache.hadoop.ipc.Client$Connection.setupConnection(Client.java:547)
	at org.apache.hadoop.ipc.Client$Connection.setupIOstreams(Client.java:642)
	at org.apache.hadoop.ipc.Client$Connection.access$2600(Client.java:314)
	at org.apache.hadoop.ipc.Client.getConnection(Client.java:1399)
	at org.apache.hadoop.ipc.Client.call(Client.java:1318)
	... 66 more
{code}


---

* [SPARK-2761](https://issues.apache.org/jira/browse/SPARK-2761) | *Major* | **Merge similar code paths in ExternalSorter and EAOM**

Right now there is quite a lot of duplicate code. It would be good to merge these somehow if we want to make changes to them in the future.


---

* [SPARK-2759](https://issues.apache.org/jira/browse/SPARK-2759) | *Major* | **The ability to read binary files into Spark**

For reading images, compressed files, or other custom formats it would be useful to have methods that could read the files in as a byte array or DataInputStream so other functions could then process the data.


---

* [SPARK-2742](https://issues.apache.org/jira/browse/SPARK-2742) | *Minor* | **The variable inputFormatInfo and inputFormatMap never used**

the ClientArguments class has two never used variables, one is inputFormatInfo, the other is inputFormatMap


---

* [SPARK-2714](https://issues.apache.org/jira/browse/SPARK-2714) | *Minor* | **DAGScheduler should log jobid when runJob finishes**

When DAGScheduler concurrently runs multiple jobs, SparkContext only logs "Job finished" and logs in the same file which doesn't tell who is who. It's difficult to found which job has finished or how much time it has taken from multiple "Job finished: ..., took ... s" logs.


---

* [SPARK-2713](https://issues.apache.org/jira/browse/SPARK-2713) | *Major* | **Executors of same application in same host should only download files & jars once**

If Spark lunched multiple executors in one host for one application, every executor would download it dependent files and jars (if not using local: url) independently. It maybe result in huge latency. In my case, it result in 20 seconds latency to download dependent jars(about 17M) when I lunch 32 executors in one host(total 4 hosts). 

This patch will cache downloaded files and jars for executors to reduce network throughput and download latency. I my case, the latency was reduced from 20 seconds to less than 1 second.


---

* [SPARK-2706](https://issues.apache.org/jira/browse/SPARK-2706) | *Major* | **Enable Spark to support Hive 0.13**

It seems Spark cannot work with Hive 0.13 well.
When I compiled Spark with Hive 0.13.1, I got some error messages, as attached below.
So, when can Spark be enabled to support Hive 0.13?

Compiling Error:
{quote}
[ERROR] /ws/spark/sql/hive/src/main/scala/org/apache/spark/sql/hive/HiveContext.scala:180: type mismatch;
 found   : String
 required: Array[String]
[ERROR]       val proc: CommandProcessor = CommandProcessorFactory.get(tokens(0), hiveconf)
[ERROR]                                                                      ^
[ERROR] /ws/spark/sql/hive/src/main/scala/org/apache/spark/sql/hive/HiveMetastoreCatalog.scala:264: overloaded method constructor TableDesc with alternatives:
  (x$1: Class[\_ <: org.apache.hadoop.mapred.InputFormat[\_, \_]],x$2: Class[\_],x$3: java.util.Properties)org.apache.hadoop.hive.ql.plan.TableDesc <and>
  ()org.apache.hadoop.hive.ql.plan.TableDesc
 cannot be applied to (Class[org.apache.hadoop.hive.serde2.Deserializer], Class[(some other)?0(in value tableDesc)(in value tableDesc)], Class[?0(in value tableDesc)(in value tableDesc)], java.util.Properties)
[ERROR]   val tableDesc = new TableDesc(
[ERROR]                   ^
[ERROR] /ws/spark/sql/hive/src/main/scala/org/apache/spark/sql/hive/TableReader.scala:140: value getPartitionPath is not a member of org.apache.hadoop.hive.ql.metadata.Partition
[ERROR]       val partPath = partition.getPartitionPath
[ERROR]                                ^
[ERROR] /ws/spark/sql/hive/src/main/scala/org/apache/spark/sql/hive/execution/HiveTableScan.scala:132: value appendReadColumnNames is not a member of object org.apache.hadoop.hive.serde2.ColumnProjectionUtils
[ERROR]     ColumnProjectionUtils.appendReadColumnNames(hiveConf, attributes.map(\_.name))
[ERROR]                           ^
[ERROR] /ws/spark/sql/hive/src/main/scala/org/apache/spark/sql/hive/execution/InsertIntoHiveTable.scala:79: org.apache.hadoop.hive.common.type.HiveDecimal does not have a constructor
[ERROR]       new HiveDecimal(bd.underlying())
[ERROR]       ^
[ERROR] /ws/spark/sql/hive/src/main/scala/org/apache/spark/sql/hive/execution/InsertIntoHiveTable.scala:132: type mismatch;
 found   : org.apache.hadoop.fs.Path
 required: String
[ERROR]       SparkHiveHadoopWriter.createPathFromString(fileSinkConf.getDirName, conf))
[ERROR]                                                               ^
[ERROR] /ws/spark/sql/hive/src/main/scala/org/apache/spark/sql/hive/execution/InsertIntoHiveTable.scala:179: value getExternalTmpFileURI is not a member of org.apache.hadoop.hive.ql.Context
[ERROR]     val tmpLocation = hiveContext.getExternalTmpFileURI(tableLocation)
[ERROR]                                   ^
[ERROR] /ws/spark/sql/hive/src/main/scala/org/apache/spark/sql/hive/hiveUdfs.scala:209: org.apache.hadoop.hive.common.type.HiveDecimal does not have a constructor
[ERROR]           case bd: BigDecimal => new HiveDecimal(bd.underlying())
[ERROR]                                  ^
[ERROR] 8 errors found
[DEBUG] Compilation failed (CompilerInterface)
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary:
[INFO] 
[INFO] Spark Project Parent POM .......................... SUCCESS [2.579s]
[INFO] Spark Project Core ................................ SUCCESS [2:39.805s]
[INFO] Spark Project Bagel ............................... SUCCESS [21.148s]
[INFO] Spark Project GraphX .............................. SUCCESS [59.950s]
[INFO] Spark Project ML Library .......................... SUCCESS [1:08.771s]
[INFO] Spark Project Streaming ........................... SUCCESS [1:17.759s]
[INFO] Spark Project Tools ............................... SUCCESS [15.405s]
[INFO] Spark Project Catalyst ............................ SUCCESS [1:17.405s]
[INFO] Spark Project SQL ................................. SUCCESS [1:11.094s]
[INFO] Spark Project Hive ................................ FAILURE [11.121s]
[INFO] Spark Project REPL ................................ SKIPPED
[INFO] Spark Project YARN Parent POM ..................... SKIPPED
[INFO] Spark Project YARN Stable API ..................... SKIPPED
[INFO] Spark Project Assembly ............................ SKIPPED
[INFO] Spark Project External Twitter .................... SKIPPED
[INFO] Spark Project External Kafka ...................... SKIPPED
[INFO] Spark Project External Flume ...................... SKIPPED
[INFO] Spark Project External ZeroMQ ..................... SKIPPED
[INFO] Spark Project External MQTT ....................... SKIPPED
[INFO] Spark Project Examples ............................ SKIPPED
[INFO] ------------------------------------------------------------------------
[INFO] BUILD FAILURE
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 9:25.609s
[INFO] Finished at: Wed Jul 23 05:22:06 EDT 2014
[INFO] Final Memory: 52M/873M
[INFO] ------------------------------------------------------------------------
[ERROR] Failed to execute goal net.alchim31.maven:scala-maven-plugin:3.1.6:compile (scala-compile-first) on project spark-hive\_2.10: Execution scala-compile-first of goal net.alchim31.maven:scala-maven-plugin:3.1.6:compile failed. CompileFailed -> [Help 1]
org.apache.maven.lifecycle.LifecycleExecutionException: Failed to execute goal net.alchim31.maven:scala-maven-plugin:3.1.6:compile (scala-compile-first) on project spark-hive\_2.10: Execution scala-compile-first of goal net.alchim31.maven:scala-maven-plugin:3.1.6:compile failed.
	at org.apache.maven.lifecycle.internal.MojoExecutor.execute(MojoExecutor.java:225)
	at org.apache.maven.lifecycle.internal.MojoExecutor.execute(MojoExecutor.java:153)
	at org.apache.maven.lifecycle.internal.MojoExecutor.execute(MojoExecutor.java:145)
	at org.apache.maven.lifecycle.internal.LifecycleModuleBuilder.buildProject(LifecycleModuleBuilder.java:84)
	at org.apache.maven.lifecycle.internal.LifecycleModuleBuilder.buildProject(LifecycleModuleBuilder.java:59)
	at org.apache.maven.lifecycle.internal.LifecycleStarter.singleThreadedBuild(LifecycleStarter.java:183)
	at org.apache.maven.lifecycle.internal.LifecycleStarter.execute(LifecycleStarter.java:161)
	at org.apache.maven.DefaultMaven.doExecute(DefaultMaven.java:320)
	at org.apache.maven.DefaultMaven.execute(DefaultMaven.java:156)
	at org.apache.maven.cli.MavenCli.execute(MavenCli.java:537)
	at org.apache.maven.cli.MavenCli.doMain(MavenCli.java:196)
	at org.apache.maven.cli.MavenCli.main(MavenCli.java:141)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.codehaus.plexus.classworlds.launcher.Launcher.launchEnhanced(Launcher.java:290)
	at org.codehaus.plexus.classworlds.launcher.Launcher.launch(Launcher.java:230)
	at org.codehaus.plexus.classworlds.launcher.Launcher.mainWithExitCode(Launcher.java:409)
	at org.codehaus.plexus.classworlds.launcher.Launcher.main(Launcher.java:352)
Caused by: org.apache.maven.plugin.PluginExecutionException: Execution scala-compile-first of goal net.alchim31.maven:scala-maven-plugin:3.1.6:compile failed.
	at org.apache.maven.plugin.DefaultBuildPluginManager.executeMojo(DefaultBuildPluginManager.java:110)
	at org.apache.maven.lifecycle.internal.MojoExecutor.execute(MojoExecutor.java:209)
	... 19 more
Caused by: Compilation failed
	at sbt.compiler.AnalyzingCompiler.call(AnalyzingCompiler.scala:76)
	at sbt.compiler.AnalyzingCompiler.compile(AnalyzingCompiler.scala:35)
	at sbt.compiler.AnalyzingCompiler.compile(AnalyzingCompiler.scala:29)
	at sbt.compiler.AggressiveCompile$$anonfun$4$$anonfun$compileScala$1$1.apply$mcV$sp(AggressiveCompile.scala:71)
	at sbt.compiler.AggressiveCompile$$anonfun$4$$anonfun$compileScala$1$1.apply(AggressiveCompile.scala:71)
	at sbt.compiler.AggressiveCompile$$anonfun$4$$anonfun$compileScala$1$1.apply(AggressiveCompile.scala:71)
	at sbt.compiler.AggressiveCompile.sbt$compiler$AggressiveCompile$$timed(AggressiveCompile.scala:101)
	at sbt.compiler.AggressiveCompile$$anonfun$4.compileScala$1(AggressiveCompile.scala:70)
	at sbt.compiler.AggressiveCompile$$anonfun$4.apply(AggressiveCompile.scala:88)
	at sbt.compiler.AggressiveCompile$$anonfun$4.apply(AggressiveCompile.scala:60)
	at sbt.inc.IncrementalCompile$$anonfun$doCompile$1.apply(Compile.scala:24)
	at sbt.inc.IncrementalCompile$$anonfun$doCompile$1.apply(Compile.scala:22)
	at sbt.inc.Incremental$.cycle(Incremental.scala:52)
	at sbt.inc.Incremental$.compile(Incremental.scala:29)
	at sbt.inc.IncrementalCompile$.apply(Compile.scala:20)
	at sbt.compiler.AggressiveCompile.compile2(AggressiveCompile.scala:96)
	at sbt.compiler.AggressiveCompile.compile1(AggressiveCompile.scala:44)
	at com.typesafe.zinc.Compiler.compile(Compiler.scala:158)
	at com.typesafe.zinc.Compiler.compile(Compiler.scala:142)
	at sbt\_inc.SbtIncrementalCompiler.compile(SbtIncrementalCompiler.java:77)
	at scala\_maven.ScalaCompilerSupport.incrementalCompile(ScalaCompilerSupport.java:308)
	at scala\_maven.ScalaCompilerSupport.compile(ScalaCompilerSupport.java:124)
	at scala\_maven.ScalaCompilerSupport.doExecute(ScalaCompilerSupport.java:104)
	at scala\_maven.ScalaMojoSupport.execute(ScalaMojoSupport.java:482)
	at org.apache.maven.plugin.DefaultBuildPluginManager.executeMojo(DefaultBuildPluginManager.java:101)
	... 20 more
[ERROR] 
{quote}


---

* [SPARK-2693](https://issues.apache.org/jira/browse/SPARK-2693) | *Critical* | **Support for UDAF Hive Aggregates like PERCENTILE**

{code}
SELECT MIN(field1), MAX(field2), AVG(field3), PERCENTILE(field4), year,month,day FROM  raw\_data\_table  GROUP BY year, month, day

MIN, MAX and AVG functions work fine for me, but with PERCENTILE, I get an error as shown below.

Exception in thread "main" java.lang.RuntimeException: No handler for udf class org.apache.hadoop.hive.ql.udf.UDAFPercentile
        at scala.sys.package$.error(package.scala:27)
        at org.apache.spark.sql.hive.HiveFunctionRegistry$.lookupFunction(hiveUdfs.scala:69)
        at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveFunctions$$anonfun$apply$4$$anonfun$applyOrElse$3.applyOrElse(Analyzer.scala:115)
        at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveFunctions$$anonfun$apply$4$$anonfun$applyOrElse$3.applyOrElse(Analyzer.scala:113)
        at org.apache.spark.sql.catalyst.trees.TreeNode.transformDown(TreeNode.scala:165)
{code}

This aggregate extends UDAF, which we don't yet have a wrapper for.


---

* [SPARK-2672](https://issues.apache.org/jira/browse/SPARK-2672) | *Major* | **Support compression in wholeFile()**

The wholeFile() can not read compressed files, it should be, just like textFile().


---

* [SPARK-2668](https://issues.apache.org/jira/browse/SPARK-2668) | *Major* | **Add variable of yarn log directory for reference from the log4j configuration**

Assign value of yarn container log directory to java opts "spark.yarn.log.dir", So user defined log4j.properties can reference this value and write log to YARN container's log directory.
Otherwise, user defined file appender will only write to container's CWD, and log files in CWD will not be displayed on YARN UI，and either cannot be aggregated to HDFS log directory after job finished.

User defined log4j.properties reference example:
{code}
log4j.appender.rolling\_file.File = ${spark.yarn.log.dir}/spark.log
{code}


---

* [SPARK-2652](https://issues.apache.org/jira/browse/SPARK-2652) | *Major* | **Turning default configurations for PySpark**

Some default value of configuration does not make sense for PySpark, change them to reasonable ones, such as spark.serializer and spark.kryo.referenceTracking


---

* [SPARK-2642](https://issues.apache.org/jira/browse/SPARK-2642) | *Minor* | **Add jobId in web UI**

Web UI has stage id only at present. Multiple stages could not explicitly show as the same job.
Job id will be added in wen ui.


---

* [SPARK-2636](https://issues.apache.org/jira/browse/SPARK-2636) | *Major* | **Expose job ID in JobWaiter API**

In Hive on Spark, we want to track spark job status through Spark API, the basic idea is as following:
# create an hive-specified spark listener and register it to spark listener bus.
# hive-specified spark listener generate job status by spark listener events.
# hive driver track job status through hive-specified spark listener. 

the current problem is that hive driver need job identifier to track specified job status through spark listener, but there is no spark API to get job identifier(like job id) while submit spark job.

I think other project whoever try to track job status with spark API would suffer from this as well.


---

* [SPARK-2634](https://issues.apache.org/jira/browse/SPARK-2634) | *Major* | **MapOutputTrackerWorker.mapStatuses should be thread-safe**

MapOutputTrackerWorker.mapStatuses will be used concurrently, so it should be a thread-safe Map.


---

* [SPARK-2626](https://issues.apache.org/jira/browse/SPARK-2626) | *Major* | **Stop SparkContext in all examples**

Event logs rely on sc.stop() to close the file. If this is never closed, the history server will not be able to find the logs.


---

* [SPARK-2558](https://issues.apache.org/jira/browse/SPARK-2558) | *Trivial* | **Mention --queue argument in YARN documentation**

The docs about it went away when we updated the page to spark-submit.


---

* [SPARK-2548](https://issues.apache.org/jira/browse/SPARK-2548) | *Minor* | **JavaRecoverableWordCount is missing**

JavaRecoverableWordCount was mentioned in the doc but not in the codebase. We need to rewrite the example because the code was lost during the migration from spark/spark-incubating to apache/spark.


---

* [SPARK-2546](https://issues.apache.org/jira/browse/SPARK-2546) | *Critical* | **Configuration object thread safety issue**

// observed in 0.9.1 but expected to exist in 1.0.1 as well

This ticket is copy-pasted from a thread on the dev@ list:

{quote}
We discovered a very interesting bug in Spark at work last week in Spark 0.9.1 — that the way Spark uses the Hadoop Configuration object is prone to thread safety issues.  I believe it still applies in Spark 1.0.1 as well.  Let me explain:

Observations
 - Was running a relatively simple job (read from Avro files, do a map, do another map, write back to Avro files)
 - 412 of 413 tasks completed, but the last task was hung in RUNNING state
 - The 412 successful tasks completed in median time 3.4s
 - The last hung task didn't finish even in 20 hours
 - The executor with the hung task was responsible for 100% of one core of CPU usage
 - Jstack of the executor attached (relevant thread pasted below)

Diagnosis

After doing some code spelunking, we determined the issue was concurrent use of a Configuration object for each task on an executor.  In Hadoop each task runs in its own JVM, but in Spark multiple tasks can run in the same JVM, so the single-threaded access assumptions of the Configuration object no longer hold in Spark.

The specific issue is that the AvroRecordReader actually \_modifies\_ the JobConf it's given when it's instantiated!  It adds a key for the RPC protocol engine in the process of connecting to the Hadoop FileSystem.  When many tasks start at the same time (like at the start of a job), many tasks are adding this configuration item to the one Configuration object at once.  Internally Configuration uses a java.lang.HashMap, which isn't threadsafe… The below post is an excellent explanation of what happens in the situation where multiple threads insert into a HashMap at the same time.

http://mailinator.blogspot.com/2009/06/beautiful-race-condition.html

The gist is that you have a thread following a cycle of linked list nodes indefinitely.  This exactly matches our observations of the 100% CPU core and also the final location in the stack trace.

So it seems the way Spark shares a Configuration object between task threads in an executor is incorrect.  We need some way to prevent concurrent access to a single Configuration object.


Proposed fix

We can clone the JobConf object in HadoopRDD.getJobConf() so each task gets its own JobConf object (and thus Configuration object).  The optimization of broadcasting the Configuration object across the cluster can remain, but on the other side I think it needs to be cloned for each task to allow for concurrent access.  I'm not sure the performance implications, but the comments suggest that the Configuration object is ~10KB so I would expect a clone on the object to be relatively speedy.

Has this been observed before?  Does my suggested fix make sense?  I'd be happy to file a Jira ticket and continue discussion there for the right way to fix.


Thanks!
Andrew


P.S.  For others seeing this issue, our temporary workaround is to enable spark.speculation, which retries failed (or hung) tasks on other machines.


{noformat}
"Executor task launch worker-6" daemon prio=10 tid=0x00007f91f01fe000 nid=0x54b1 runnable [0x00007f92d74f1000]
   java.lang.Thread.State: RUNNABLE
    at java.util.HashMap.transfer(HashMap.java:601)
    at java.util.HashMap.resize(HashMap.java:581)
    at java.util.HashMap.addEntry(HashMap.java:879)
    at java.util.HashMap.put(HashMap.java:505)
    at org.apache.hadoop.conf.Configuration.set(Configuration.java:803)
    at org.apache.hadoop.conf.Configuration.set(Configuration.java:783)
    at org.apache.hadoop.conf.Configuration.setClass(Configuration.java:1662)
    at org.apache.hadoop.ipc.RPC.setProtocolEngine(RPC.java:193)
    at org.apache.hadoop.hdfs.NameNodeProxies.createNNProxyWithClientProtocol(NameNodeProxies.java:343)
    at org.apache.hadoop.hdfs.NameNodeProxies.createNonHAProxy(NameNodeProxies.java:168)
    at org.apache.hadoop.hdfs.NameNodeProxies.createProxy(NameNodeProxies.java:129)
    at org.apache.hadoop.hdfs.DFSClient.<init>(DFSClient.java:436)
    at org.apache.hadoop.hdfs.DFSClient.<init>(DFSClient.java:403)
    at org.apache.hadoop.hdfs.DistributedFileSystem.initialize(DistributedFileSystem.java:125)
    at org.apache.hadoop.fs.FileSystem.createFileSystem(FileSystem.java:2262)
    at org.apache.hadoop.fs.FileSystem.access$200(FileSystem.java:86)
    at org.apache.hadoop.fs.FileSystem$Cache.getInternal(FileSystem.java:2296)
    at org.apache.hadoop.fs.FileSystem$Cache.get(FileSystem.java:2278)
    at org.apache.hadoop.fs.FileSystem.get(FileSystem.java:316)
    at org.apache.hadoop.fs.Path.getFileSystem(Path.java:194)
    at org.apache.avro.mapred.FsInput.<init>(FsInput.java:37)
    at org.apache.avro.mapred.AvroRecordReader.<init>(AvroRecordReader.java:43)
    at org.apache.avro.mapred.AvroInputFormat.getRecordReader(AvroInputFormat.java:52)
    at org.apache.spark.rdd.HadoopRDD$$anon$1.<init>(HadoopRDD.scala:156)
    at org.apache.spark.rdd.HadoopRDD.compute(HadoopRDD.scala:149)
    at org.apache.spark.rdd.HadoopRDD.compute(HadoopRDD.scala:64)
    at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:241)
    at org.apache.spark.rdd.RDD.iterator(RDD.scala:232)
    at org.apache.spark.rdd.MappedRDD.compute(MappedRDD.scala:31)
    at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:241)
    at org.apache.spark.rdd.RDD.iterator(RDD.scala:232)
    at org.apache.spark.rdd.MappedRDD.compute(MappedRDD.scala:31)
    at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:241)
    at org.apache.spark.rdd.RDD.iterator(RDD.scala:232)
    at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:109)
    at org.apache.spark.scheduler.Task.run(Task.scala:53)
    at org.apache.spark.executor.Executor$TaskRunner$$anonfun$run$1.apply$mcV$sp(Executor.scala:211)
    at org.apache.spark.deploy.SparkHadoopUtil$$anon$1.run(SparkHadoopUtil.scala:42)
    at org.apache.spark.deploy.SparkHadoopUtil$$anon$1.run(SparkHadoopUtil.scala:41)
    at java.security.AccessController.doPrivileged(Native Method)
    at javax.security.auth.Subject.doAs(Subject.java:415)
    at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1408)
    at org.apache.spark.deploy.SparkHadoopUtil.runAsUser(SparkHadoopUtil.scala:41)
    at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:176)
    at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
    at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
    at java.lang.Thread.run(Thread.java:745)
{noformat}
{quote}


---

* [SPARK-2517](https://issues.apache.org/jira/browse/SPARK-2517) | *Minor* | **Remove as many compilation warning messages as possible**

We should probably treat warnings as failures in Jenkins.

Some examples:

{code}
[warn] /scratch/rxin/spark/core/src/test/scala/org/apache/spark/util/FileAppenderSuite.scala:138: abstract type ExpectedAppender is unchecked since it is eliminated by erasure
[warn]       assert(appender.isInstanceOf[ExpectedAppender])
[warn]                                   ^
[warn] /scratch/rxin/spark/core/src/test/scala/org/apache/spark/util/FileAppenderSuite.scala:143: abstract type ExpectedRollingPolicy is unchecked since it is eliminated by erasure
[warn]         rollingPolicy.isInstanceOf[ExpectedRollingPolicy]
[warn]                                   ^
{code}

{code}
[warn] /scratch/rxin/spark/streaming/src/test/scala/org/apache/spark/streaming/InputStreamsSuite.scala:386: method connect in class IOManager is deprecated: use the new implementation in package akka.io instead
[warn]   override def preStart = IOManager(context.system).connect(new InetSocketAddress(port))
[warn]                                                     ^
[warn] /scratch/rxin/spark/sql/core/src/main/scala/org/apache/spark/sql/json/JsonRDD.scala:207: non-variable type argument String in type pattern Map[String,Any] is unchecked since it is eliminated by erasure
[warn]       case (key: String, struct: Map[String, Any]) => {
[warn]                                  ^
[warn] /scratch/rxin/spark/sql/core/src/main/scala/org/apache/spark/sql/json/JsonRDD.scala:238: non-variable type argument String in type pattern java.util.Map[String,Object] is unchecked since it is eliminated by erasure
[warn]     case map: java.util.Map[String, Object] =>
[warn]                         ^
[warn] /scratch/rxin/spark/sql/core/src/main/scala/org/apache/spark/sql/json/JsonRDD.scala:243: non-variable type argument Object in type pattern java.util.List[Object] is unchecked since it is eliminated by erasure
[warn]     case list: java.util.List[Object] =>
[warn]                          ^
[warn] /scratch/rxin/spark/sql/core/src/main/scala/org/apache/spark/sql/json/JsonRDD.scala:323: non-variable type argument String in type pattern Map[String,Any] is unchecked since it is eliminated by erasure
[warn]       case value: Map[String, Any] => toJsonObjectString(value)
[warn]                   ^
[info] Compiling 2 Scala sources to /scratch/rxin/spark/repl/target/scala-2.10/test-classes...
[warn] /scratch/rxin/spark/core/src/test/scala/org/apache/spark/rdd/RDDSuite.scala:382: method mapWith in class RDD is deprecated: use mapPartitionsWithIndex
[warn]     val randoms = ones.mapWith(
[warn]                        ^
[warn] /scratch/rxin/spark/core/src/test/scala/org/apache/spark/rdd/RDDSuite.scala:400: method flatMapWith in class RDD is deprecated: use mapPartitionsWithIndex and flatMap
[warn]     val randoms = ones.flatMapWith(
[warn]                        ^
[warn] /scratch/rxin/spark/core/src/test/scala/org/apache/spark/rdd/RDDSuite.scala:421: method filterWith in class RDD is deprecated: use mapPartitionsWithIndex and filter
[warn]     val sample = ints.filterWith(
[warn]                       ^
[warn] /scratch/rxin/spark/core/src/test/scala/org/apache/spark/serializer/ProactiveClosureSerializationSuite.scala:76: method mapWith in class RDD is deprecated: use mapPartitionsWithIndex
[warn]     x.mapWith(x => x.toString)((x,y)=>x + uc.op(y))
[warn]       ^
[warn] /scratch/rxin/spark/core/src/test/scala/org/apache/spark/serializer/ProactiveClosureSerializationSuite.scala:82: method filterWith in class RDD is deprecated: use mapPartitionsWithIndex and filter
[warn]     x.filterWith(x => x.toString)((x,y)=>uc.pred(y))
[warn]       ^
[warn] /scratch/rxin/spark/core/src/test/scala/org/apache/spark/util/VectorSuite.scala:29: class Vector in package util is deprecated: Use Vectors.dense from Spark's mllib.linalg package instead.
[warn]   def verifyVector(vector: Vector, expectedLength: Int) = {
[warn]                            ^
[warn] one warning found
{code}

{code}
[warn] /scratch/rxin/spark/sql/core/src/main/scala/org/apache/spark/sql/json/JsonRDD.scala:238: non-variable type argument String in type pattern java.util.Map[String,Object] is unchecked since it is eliminated by erasure
[warn]     case map: java.util.Map[String, Object] =>
[warn]                         ^
[warn] /scratch/rxin/spark/sql/core/src/main/scala/org/apache/spark/sql/json/JsonRDD.scala:243: non-variable type argument Object in type pattern java.util.List[Object] is unchecked since it is eliminated by erasure
[warn]     case list: java.util.List[Object] =>
[warn]                          ^
[warn] /scratch/rxin/spark/sql/core/src/main/scala/org/apache/spark/sql/json/JsonRDD.scala:323: non-variable type argument String in type pattern Map[String,Any] is unchecked since it is eliminated by erasure
[warn]       case value: Map[String, Any] => toJsonObjectString(value)
[warn]                   ^
{code}


---

* [SPARK-2492](https://issues.apache.org/jira/browse/SPARK-2492) | *Minor* | **KafkaReceiver minor changes to align with Kafka 0.8**

Update to delete Zookeeper metadata when Kafka's parameter "auto.offset.reset" is set to "smallest", which is aligned with Kafka 0.8's ConsoleConsumer.

Also use Kafka offered API without directly using zkClient.


---

* [SPARK-2482](https://issues.apache.org/jira/browse/SPARK-2482) | *Major* | **Resolve sbt warnings during build**

At the same time, import the scala.language.postfixOps and org.scalatest.time.SpanSugar.\_ cause scala.language.postfixOps doesn't work


---

* [SPARK-2468](https://issues.apache.org/jira/browse/SPARK-2468) | *Critical* | **Netty-based block server / client module**

Right now shuffle send goes through the block manager. This is inefficient because it requires loading a block from disk into a kernel buffer, then into a user space buffer, and then back to a kernel send buffer before it reaches the NIC. It does multiple copies of the data and context switching between kernel/user. It also creates unnecessary buffer in the JVM that increases GC

Instead, we should use FileChannel.transferTo, which handles this in the kernel space with zero-copy. See http://www.ibm.com/developerworks/library/j-zerocopy/

One potential solution is to use Netty.  Spark already has a Netty based network module implemented (org.apache.spark.network.netty). However, it lacks some functionality and is turned off by default.


---

* [SPARK-2460](https://issues.apache.org/jira/browse/SPARK-2460) | *Major* | **Optimize SparkContext.hadoopFile api**

1 use SparkContext.hadoopRDD() instead of instantiate HadoopRDD directly in SparkContext.hadoopFile
2 broadcast jobConf in HadoopRDD, not Configuration


---

* [SPARK-2444](https://issues.apache.org/jira/browse/SPARK-2444) | *Minor* | **Make spark.yarn.executor.memoryOverhead a first class citizen**

Higher value of spark.yarn.executor.memoryOverhead is critical to running Spark applications on Yarn (https://issues.apache.org/jira/browse/SPARK-2398) at least for 1.0. It would be great to have this parameter highlighted in the docs/usage.


---

* [SPARK-2435](https://issues.apache.org/jira/browse/SPARK-2435) | *Major* | **Add shutdown hook to bin/pyspark**

We currently never stop the SparkContext cleanly in bin/pyspark unless the user explicitly runs sc.stop(). This behavior is not consistent with bin/spark-shell, in which case Ctrl+D stops the SparkContext before quitting the shell.


---

* [SPARK-2425](https://issues.apache.org/jira/browse/SPARK-2425) | *Critical* | **Standalone Master is too aggressive in removing Applications**

When standalone Executors trying to run a particular Application fail a cummulative ApplicationState.MAX\_NUM\_RETRY times, Master will remove the Application.  This will be true even if there actually are a number of Executors that are successfully running the Application.  This makes long-running standalone-mode Applications in particular unnecessarily vulnerable to limited failures in the cluster -- e.g., a single bad node on which Executors repeatedly fail for any reason can prevent an Application from starting or can result in a running Application being removed even though it could continue to run successfully (just not making use of all potential Workers and Executors.)


---

* [SPARK-2420](https://issues.apache.org/jira/browse/SPARK-2420) | *Major* | **Dependency changes for compatibility with Hive**

During the prototyping of HIVE-7292, many library conflicts showed up because Spark build contains versions of libraries that's vastly different from current major Hadoop version. It would be nice if we can choose versions that's in line with Hadoop or shading them in the assembly. Here are the wish list:

1. Upgrade protobuf version to 2.5.0 from current 2.4.1
2. Shading Spark's jetty and servlet dependency in the assembly.
3. guava version difference. Spark is using a higher version. I'm not sure what's the best solution for this.

The list may grow as HIVE-7292 proceeds.

For information only, the attached is a patch that we applied on Spark in order to make Spark work with Hive. It gives an idea of the scope of changes.


---

* [SPARK-2377](https://issues.apache.org/jira/browse/SPARK-2377) | *Major* | **Create a Python API for Spark Streaming**

[Spark Streaming|http://spark.apache.org/docs/latest/streaming-programming-guide.html] currently offers APIs in Scala and Java. It would be great feature add to have a Python API as well.

This is probably a large task that will span many issues if undertaken. This ticket should provide some place to track overall progress towards an initial Python API for Spark Streaming.


---

* [SPARK-2334](https://issues.apache.org/jira/browse/SPARK-2334) | *Major* | **Attribute Error calling PipelinedRDD.id() in pyspark**

calling the id() function of a PipelinedRDD causes an error in PySpark.  (Works fine in Scala.)

The second id() call here fails, the first works:
{code}
r1 = sc.parallelize([1,2,3])
r1.id()
r2=r1.map(lambda i: i+1)
r2.id()
{code}

Error:

{code}
---------------------------------------------------------------------------
AttributeError                            Traceback (most recent call last)
<ipython-input-31-a0cf66fcf645> in <module>()
----> 1 r2.id()

/usr/lib/spark/python/pyspark/rdd.py in id(self)
    180         A unique ID for this RDD (within its SparkContext).
    181         """
--> 182         return self.\_id
    183 
    184     def \_\_repr\_\_(self):

AttributeError: 'PipelinedRDD' object has no attribute '\_id'
{code}


---

* [SPARK-2329](https://issues.apache.org/jira/browse/SPARK-2329) | *Major* | **Add multi-label evaluation metrics**

There is no class in Spark MLlib for measuring the performance of multi-label  classifiers. Multilabel classification is when the document is labeled with several labels (classes).

This task involves adding the class for multilabel evaluation and unit tests. The following measures are to be implemented: Precision, Recall and F1-measure (1) based on documents averaged by the number of documents; (2) per label; (3) based on labels micro and macro averaged; (4) Hamming loss. Reference: Tsoumakas, Grigorios, Ioannis Katakis, and Ioannis Vlahavas. "Mining multi-label data." Data mining and knowledge discovery handbook. Springer US, 2010. 667-685.


---

* [SPARK-2321](https://issues.apache.org/jira/browse/SPARK-2321) | *Critical* | **Design a proper progress reporting & event listener API**

This is a ticket to track progress on redesigning the SparkListener and JobProgressListener API.

There are multiple problems with the current design, including:

0. I'm not sure if the API is usable in Java (there are at least some enums we used in Scala and a bunch of case classes that might complicate things).
1. The whole API is marked as DeveloperApi, because we haven't paid a lot of attention to it yet. Something as important as progress reporting deserves a more stable API.
2. There is no easy way to connect jobs with stages. Similarly, there is no easy way to connect job groups with jobs / stages.
3. JobProgressListener itself has no encapsulation at all. States can be arbitrarily mutated by external programs. Variable names are sort of randomly decided and inconsistent. 

We should just revisit these and propose a new, concrete design.


---

* [SPARK-2314](https://issues.apache.org/jira/browse/SPARK-2314) | *Major* | **RDD actions are only overridden in Scala, not java or python**

For example, collect and take().  We should keep these two in sync, or move this code to schemaRDD like if possible.


---

* [SPARK-2288](https://issues.apache.org/jira/browse/SPARK-2288) | *Major* | **Hide ShuffleBlockManager behind ShuffleManager**

This is a sub task for SPARK-2275. 

At present, In shuffle write path, the shuffle block manager manage the mapping from some blockID to a FileSegment for the benefit of consolidate shuffle, this way it bypass the block store's blockId based access mode. Then in the read path, when read a shuffle block data, disk store query shuffleBlockManager to hack the normal blockId to file mapping in order to correctly read data from file. This really rend to a lot of bi-directional dependencies between modules and the code logic is some how messed up. None of the shuffle block manager and blockManager/Disk Store fully control the read path. They are tightly coupled in low level code modules. And it make it hard to implement other shuffle manager logics. e.g. a sort based shuffle which might merge all output from one map partition to a single file. This will need to hack more into the diskStore/diskBlockManager etc to find out the right data to be read.

Possible approaching:
So I think it might be better that we expose an FileSegment based read interface for DiskStore in addition to the current blockID based interface.
Then those mapping blockId to FileSegment code logic can all reside in the specific shuffle manager, if they do need to merge data into one single object. they take care of the mapping logic in both read/write path and take the responsibility of read / write shuffle data
The BlockStore itself should just take care of read/write as required, it should not involve into the data mapping logic at all. This might make the interface between modules more clear and decouple each other in a more clean way.


---

* [SPARK-2269](https://issues.apache.org/jira/browse/SPARK-2269) | *Major* | **Clean up and add unit tests for resourceOffers in MesosSchedulerBackend**

This function could be simplified a bit. We could re-write it without offerableIndices or creating the mesosTasks array as large as the offer list. There is a lot of logic around making sure you get the correct index into mesosTasks and offers, really we should just build mesosTasks directly from the offers we get back. To associate the tasks we are launching with the offers we can just create a hashMap from the slaveId to the original offer.

The basic logic of the function is that you take the mesos offers, convert them to spark offers, then convert the results back.

One reason I think it might be designed as it is now is to deal with the case where Mesos gives multiple offers for a single slave. I checked directly with the Mesos team and they said this won't ever happen, you'll get at most one offer per mesos slave within a set of offers.


---

* [SPARK-2220](https://issues.apache.org/jira/browse/SPARK-2220) | *Major* | **Fix remaining Hive Commands**

None of the following have an execution plan:
{code}
private[hive] case class ShellCommand(cmd: String) extends Command
private[hive] case class SourceCommand(filePath: String) extends Command
private[hive] case class AddFile(filePath: String) extends Command
{code}

dfs is being fixed in a related PR.


---

* [SPARK-2192](https://issues.apache.org/jira/browse/SPARK-2192) | *Major* | **Examples Data Not in Binary Distribution**

The data used by examples is not packaged up with the binary distribution. The data subdirectory of spark should make it's way in to the distribution somewhere so the examples can use it.


---

* [SPARK-2140](https://issues.apache.org/jira/browse/SPARK-2140) | *Major* | **yarn stable client doesn't properly handle MEMORY\_OVERHEAD for AM**

The yarn stable client doesn't properly remove the MEMORY\_OVERHEAD amount from the java heap size, the code to handle that is commented out (see function calculateAMMemory).  We should fix this.


---

* [SPARK-2098](https://issues.apache.org/jira/browse/SPARK-2098) | *Major* | **All Spark processes should support spark-defaults.conf, config file**

SparkSubmit supports the idea of a config file to set SparkConf configurations. This is handy because you can easily set a site-wide configuration file, and power users can use their own when needed, or resort to JVM properties or other means of overriding configs.

It would be nice if all Spark processes (e.g. master / worker / history server) also supported something like this. For daemon processes this is particularly interesting because it makes it easy to decouple starting the daemon (e.g. some /etc/init.d script packaged by some distribution) from configuring that daemon. Right now you have to set environment variables to modify the configuration of those daemons, which is not very friendly to the above scenario.


---

* [SPARK-2096](https://issues.apache.org/jira/browse/SPARK-2096) | *Minor* | **Correctly parse dot notations for accessing an array of structs**

For example, "arrayOfStruct" is an array of structs and every element of this array has a field called "field1". "arrayOfStruct[0].field1" means to access the value of "field1" for the first element of "arrayOfStruct", but the SQL parser (in sql-core) treats "field1" as an alias. Also, "arrayOfStruct.field1" means to access all values of "field1" in this array of structs and the returns those values as an array. But, the SQL parser cannot resolve it.


---

* [SPARK-2069](https://issues.apache.org/jira/browse/SPARK-2069) | *Critical* | **MIMA false positives (umbrella)**

Since we started using MIMA more actively in core we've been running into situations were we get false positives. We should address these ASAP as they require having manual excludes in our build files which is pretty tedious.


---

* [SPARK-2066](https://issues.apache.org/jira/browse/SPARK-2066) | *Critical* | **Better error message for non-aggregated attributes with aggregates**

[~marmbrus]

Run the following query
{code}
scala> c.hql("select key, count(*) from src").collect()
{code}

Got the following exception at runtime
{code}
org.apache.spark.sql.catalyst.errors.package$TreeNodeException: No function to evaluate expression. type: AttributeReference, tree: key#61
	at org.apache.spark.sql.catalyst.expressions.AttributeReference.eval(namedExpressions.scala:157)
	at org.apache.spark.sql.catalyst.expressions.Projection.apply(Projection.scala:35)
	at org.apache.spark.sql.execution.Aggregate$$anonfun$execute$1$$anonfun$1.apply(Aggregate.scala:154)
	at org.apache.spark.sql.execution.Aggregate$$anonfun$execute$1$$anonfun$1.apply(Aggregate.scala:134)
	at org.apache.spark.rdd.RDD$$anonfun$12.apply(RDD.scala:558)
	at org.apache.spark.rdd.RDD$$anonfun$12.apply(RDD.scala:558)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:261)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:228)
	at org.apache.spark.rdd.MappedRDD.compute(MappedRDD.scala:31)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:261)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:228)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:111)
	at org.apache.spark.scheduler.Task.run(Task.scala:51)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:187)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:744)
{code}

This should either fail in analysis time, or pass at runtime. Definitely shouldn't fail at runtime.


---

* [SPARK-2062](https://issues.apache.org/jira/browse/SPARK-2062) | *Major* | **VertexRDD.apply does not use the mergeFunc**

Here: https://github.com/apache/spark/blob/b1feb60209174433262de2a26d39616ba00edcc8/graphx/src/main/scala/org/apache/spark/graphx/VertexRDD.scala#L410


---

* [SPARK-2058](https://issues.apache.org/jira/browse/SPARK-2058) | *Critical* | **SPARK\_CONF\_DIR should override all present configs**

When the user defines SPARK\_CONF\_DIR I think spark should use all the configs available there not only spark-env.
This involves changing SparkSubmitArguments to first read from SPARK\_CONF\_DIR, and updating the scripts to add SPARK\_CONF\_DIR to the computed classpath for configs such as log4j, metrics, etc.

I have already prepared a PR for this.


---

* [SPARK-1986](https://issues.apache.org/jira/browse/SPARK-1986) | *Major* | **lib.Analytics should be in org.apache.spark.examples**

The org.apache.spark.graphx.lib.Analytics driver is currently hard to run; the user has to figure out the correct invocation involving spark-submit. Instead, it should be put into the examples package to enable running it using bin/run-example.

Here is how Analytics must be invoked currently:
{code}
~/spark/bin/spark-submit --master spark://$(wget -q -O - http://169.254.169.254/latest/meta-data/public-hostname):7077 --class org.apache.spark.graphx.lib.Analytics ~/spark/assembly/target/scala-2.10/spark-assembly-1.1.0-SNAPSHOT-hadoop1.0.4.jar triangles /soc-LiveJournal1.txt --numEPart=256
{code}
Any JAR can be supplied in place of the assembly jar, as long as it exists.

Here is how it will be invoked after this issue is fixed:
{code}
MASTER=spark://$(wget -q -O - http://169.254.169.254/latest/meta-data/public-hostname):7077 ~/spark/bin/run-example GraphXAnalytics triangles /soc-LiveJournal1.txt --numEPart=256
{code}


---

* [SPARK-1919](https://issues.apache.org/jira/browse/SPARK-1919) | *Major* | **In Windows, Spark shell cannot load classes in spark.jars (--jars)**

Not sure what the issue is, but Spark submit does not have the same problem, even if the jars specified are the same.


---

* [SPARK-1860](https://issues.apache.org/jira/browse/SPARK-1860) | *Blocker* | **Standalone Worker cleanup should not clean up running executors**

The default values of the standalone worker cleanup code cleanup all application data every 7 days. This includes jars that were added to any executors that happen to be running for longer than 7 days, hitting streaming jobs especially hard.

Executor's log/data folders should not be cleaned up if they're still running. Until then, this behavior should not be enabled by default.


---

* [SPARK-1853](https://issues.apache.org/jira/browse/SPARK-1853) | *Major* | **Show Streaming application code context (file, line number) in Spark Stages UI**

Right now, the code context (file, and line number) shown for streaming jobs in stages UI is meaningless as it refers to internal DStream:<random line> rather than user application file.


---

* [SPARK-1847](https://issues.apache.org/jira/browse/SPARK-1847) | *Major* | **Pushdown filters on non-required parquet columns**

From Andre:

TODO: we currently only filter on non-nullable (Parquet REQUIRED) attributes until https://github.com/Parquet/parquet-mr/issues/371 has been resolved.


---

* [SPARK-1813](https://issues.apache.org/jira/browse/SPARK-1813) | *Major* | **Add a utility to SparkConf that makes using Kryo really easy**

It would be nice to have a method in SparkConf that makes it really easy to turn on Kryo serialization and register a set of classes.

Using Kryo currently requires all this:
{code}
import com.esotericsoftware.kryo.Kryo
import org.apache.spark.serializer.KryoRegistrator

class MyRegistrator extends KryoRegistrator {
  override def registerClasses(kryo: Kryo) {
    kryo.register(classOf[MyClass1])
    kryo.register(classOf[MyClass2])
  }
}

val conf = new SparkConf().setMaster(...).setAppName(...)
conf.set("spark.serializer", "org.apache.spark.serializer.KryoSerializer")
conf.set("spark.kryo.registrator", "mypackage.MyRegistrator")
val sc = new SparkContext(conf)
{code}

It would be nice if it just required this:
{code}
SparkConf.setKryo(Array(classOf[MyClass1], classOf[MyClass2]))
{code}


---

* [SPARK-1812](https://issues.apache.org/jira/browse/SPARK-1812) | *Major* | **Support cross-building with Scala 2.11**

Since Scala 2.10/2.11 are source compatible, we should be able to cross build for both versions. From what I understand there are basically three things we need to figure out:

1. Have a two versions of our dependency graph, one that uses 2.11 dependencies and the other that uses 2.10 dependencies.
2. Figure out how to publish different poms for 2.10 and 2.11.

I think (1) can be accomplished by having a scala 2.11 profile. (2) isn't really well supported by Maven since published pom's aren't generated dynamically. But we can probably script around it to make it work. I've done some initial sanity checks with a simple build here:

https://github.com/pwendell/scala-maven-crossbuild


---

* [SPARK-1720](https://issues.apache.org/jira/browse/SPARK-1720) | *Critical* | **use LD\_LIBRARY\_PATH instead of -Djava.library.path**

I think it would be better to use LD\_LIBRARY\_PATH rather then -Djava.library.path.  Once  java.library.path is set, it doesn't search LD\_LIBRARY\_PATH.  In Hadoop we switched to use LD\_LIBRARY\_PATH instead of java.library.path.  See https://issues.apache.org/jira/browse/MAPREDUCE-4072.


---

* [SPARK-1719](https://issues.apache.org/jira/browse/SPARK-1719) | *Major* | **spark.executor.extraLibraryPath isn't applied on yarn**

Looking through the code for spark on yarn I don't see that spark.executor.extraLibraryPath is being properly applied when it launches executors.  It is using the spark.driver.libraryPath in the ClientBase.

Note I didn't actually test it so its possible I missed something.

I also think better to use LD\_LIBRARY\_PATH rather then -Djava.library.path.  once  java.library.path is set, it doesn't search LD\_LIBRARY\_PATH.  In Hadoop we switched to use LD\_LIBRARY\_PATH instead of java.library.path.  See https://issues.apache.org/jira/browse/MAPREDUCE-4072.  I'll split this into separate jira.


---

* [SPARK-1701](https://issues.apache.org/jira/browse/SPARK-1701) | *Minor* | **Inconsistent naming: "slice" or "partition"**

Throughout the documentation and code "slice" and "partition" are used interchangeably. (Or so it seems to me.) It would avoid some confusion for new users to settle on one name. I think "partition" is winning, since that is the name of the class representing the concept.

This should not be much more complicated to do than a search & replace. I can take a stab at it, if you agree.


---

* [SPARK-1694](https://issues.apache.org/jira/browse/SPARK-1694) | *Minor* | **Simplify ColumnBuilder/Accessor class hierarchy**

Current {{ColumnBuilder/Accessor}} class hierarchy design was largely refactored from the in-memory columnar storage component of Shark. Code related to null values and compression were factored into {{NullableColumnBuilder/Accessor}} and {{CompressibleColumnBuilder/Accessor}} and then mixed in as stackable traits. The drawback is:

# Interactions among these classes were unnecessarily complicated and error prone.
# Flexibility provided by this design now seems useless

To simplify this, we can merge {{CompressibleColumnBuilder/Accessor}} and {{NullableColumnBuilder/Accessor}} into {{NativeColumnBuilder/Accessor}}, simply hard code null value processing and compression logic together.


---

* [SPARK-1656](https://issues.apache.org/jira/browse/SPARK-1656) | *Major* | **Potential resource leak in HttpBroadcast, SparkSubmitArguments, FileSystemPersistenceEngine and DiskStore**

Again... I'm trying to review all `close` statements to find such issues.


---

* [SPARK-1652](https://issues.apache.org/jira/browse/SPARK-1652) | *Blocker* | **Fixes and improvements for spark-submit/configs**

These are almost all a result of my config patch. Unfortunately the changes were difficult to unit-test and there several edge cases reported.


---

* [SPARK-1547](https://issues.apache.org/jira/browse/SPARK-1547) | *Major* | **Add gradient boosting algorithm to MLlib**

This task requires adding the gradient boosting algorithm to Spark MLlib. The implementation needs to adapt the gradient boosting algorithm to the scalable tree implementation.

The tasks involves:
- Comparing the various tradeoffs and finalizing the algorithm before implementation
- Code implementation
- Unit tests
- Functional tests
- Performance tests
- Documentation

[Ensembles design document (Google doc) | https://docs.google.com/document/d/1J0Q6OP2Ggx0SOtlPgRUkwLASrAkUJw6m6EK12jRDSNg/]


---

* [SPARK-1545](https://issues.apache.org/jira/browse/SPARK-1545) | *Major* | **Add Random Forest algorithm to MLlib**

This task requires adding Random Forest support to Spark MLlib. The implementation needs to adapt the classic algorithm to the scalable tree implementation.

The tasks involves:
- Comparing the various tradeoffs and finalizing the algorithm before implementation
- Code implementation
- Unit tests
- Functional tests
- Performance tests
- Documentation


---

* [SPARK-1484](https://issues.apache.org/jira/browse/SPARK-1484) | *Major* | **MLlib should warn if you are using an iterative algorithm on non-cached data**

Not sure what the best way to warn is, but even printing to the log is probably fine. We may want to print at the end of the training run as well as the beginning to make it more visible.


---

* [SPARK-1455](https://issues.apache.org/jira/browse/SPARK-1455) | *Major* | **Determine which test suites to run based on code changes**

Right now we run the entire set of tests for every change. This means the tests take a long time. Our pull request builder checks out the merge branch from git, so we could do a diff and figure out what source files were changed, and run a more isolated set of tests. We should just run tests in a way that reflects the inter-dependencies of the project. E.g:

- If Spark core is modified, we should run all tests
- If just SQL is modified, we should run only the SQL tests
- If just Streaming is modified, we should run only the streaming tests
- If just Pyspark is modified, we only run the PySpark tests.

And so on. I think this would reduce the RTT of the tests a lot and it should be pretty easy to accomplish with some scripting foo.


---

* [SPARK-1362](https://issues.apache.org/jira/browse/SPARK-1362) | *Major* | **Web UI should provide page of showing statistics and stage list for a given job**

Now spark provide the page of stage, but in spark the conception level is like this-- app > job > stage > task. Page of job is better to monitor the jobs in one app, and only page of stage we can not distinguish  jobs easily sometimes


---

* [SPARK-1344](https://issues.apache.org/jira/browse/SPARK-1344) | *Major* | **Scala API docs for top methods**

The RDD.top() methods are documented as follows:
bq. Returns the top *K* elements from this RDD using the natural ordering for *T*.
bq. Returns the top *K* elements from this RDD as defined by the specified Comparator[[T]].

I believe those should read
bq. Returns the top *num* elements from this RDD using the natural ordering for *K*.
bq. Returns the top *num* elements from this RDD as defined by the specified Comparator[[K]].


---

* [SPARK-1338](https://issues.apache.org/jira/browse/SPARK-1338) | *Major* | **Create Additional Style Rules**

There are a few other rules that would be helpful to have. Also we should add tests for these rules because it's easy to get them wrong. I gave some example comparisons from a javascript style checker.

Require spaces in type declarations:
def foo:String = X // no
def foo: String = XXX

def x:Int = 100 // no
val x: Int = 100

Require spaces after keywords:
if(x - 3) // no
if (x + 10)
See: requireSpaceAfterKeywords from
https://github.com/mdevils/node-jscs

Disallow spaces inside of parentheses:
val x = ( 3 + 5 ) // no
val x = (3 + 5)

See: disallowSpacesInsideParentheses from
https://github.com/mdevils/node-jscs

Require spaces before and after binary operators:
See: requireSpaceBeforeBinaryOperators
See: disallowSpaceAfterBinaryOperators
from https://github.com/mdevils/node-jscs


---

* [SPARK-1307](https://issues.apache.org/jira/browse/SPARK-1307) | *Major* | **don't use term 'standalone' to refer to a Spark Application**

In the "Quick Start Guide" for Scala, there are three sections entitled "A Standalone App in Scala", "A Standalone App in Java" and "A Standalone App in Python."  

In these sections, the word "standalone" is meant to refer to a Spark application that is run outside of the Spark Shell. This nomenclature is quite confusing, because the cluster management framework included in Spark is called "Spark Standalone"...this overlap of terms has resulted in at least one person (me) think that a "standalone app" was somehow related to a "standalone cluster"...and that in order to run my app on a Standalone Spark cluster, I had to write follow the instructions to write a Standalone app.

Fortunately, the only place I can find this usage of "standalone" to refer to an application is on the Quick Start page.   I think those three sections should instead be retitled as
Writing a Spark Application in Scala
Writing a Spark Application in Java
Writing a Spark Application in Python
and rephrased to remove the use of the term "standalone".


---

* [SPARK-1297](https://issues.apache.org/jira/browse/SPARK-1297) | *Minor* | **Upgrade HBase dependency to 0.98.0**

HBase 0.94.6 was released 11 months ago.

Upgrade HBase dependency to 0.98.0


---

* [SPARK-1209](https://issues.apache.org/jira/browse/SPARK-1209) | *Major* | **SparkHadoop{MapRed,MapReduce}Util should not use package org.apache.hadoop**

It's private, so the change won't break compatibility


---

* [SPARK-1087](https://issues.apache.org/jira/browse/SPARK-1087) | *Major* | **Separate file for traceback and callsite related functions**

Right now, \_extract\_concise\_traceback() is written inside rdd.py which provides the callsite information. But for [SPARK-972](https://spark-project.atlassian.net/browse/SPARK-972) in PR #581, we used the function from context.py. Also some issues were faced regarding the return string format. 

It would be a good idea to move the the traceback function from rdd and create a separate file for future developments.


---

* [SPARK-1069](https://issues.apache.org/jira/browse/SPARK-1069) | *Major* | **Provide binary compatibility in Spark 1.X releases**

It would be good if Spark offered binary compatibility between versions, meaning users do not have to recompile. This JIRA marks the intention of codifying this as a policy once we do a 1.1 release which is link-level compatible with 1.0.

Examples of binary incompatibilities:
https://github.com/jsuereth/binary-resilience

Some good talks on this:
https://skillsmatter.com/skillscasts/3269-binary-resilience
http://www.slideshare.net/mircodotta/managing-binary-compatibility-in-scala


---

* [SPARK-1047](https://issues.apache.org/jira/browse/SPARK-1047) | *Minor* | **Ability to disable the spark ui server (unit tests)**

Provide the ability to disable the internal jetty server that serves the web ui. It's not needed when running unit tests and often conflicts may other ports on the system.


---

* [SPARK-985](https://issues.apache.org/jira/browse/SPARK-985) | *Major* | **Support Job Cancellation on Mesos Scheduler**

https://github.com/apache/incubator-spark/pull/29 added job cancellation but may still need support for Mesos scheduler backends:

Quote: 
{quote}
This looks good except that MesosSchedulerBackend isn't yet calling Mesos's killTask. Do you want to add that too or are you planning to push it till later? I don't think it's a huge change.
{quote}


---

* [SPARK-927](https://issues.apache.org/jira/browse/SPARK-927) | *Minor* | **PySpark sample() doesn't work if numpy is installed on master but not on workers**

PySpark's sample() method crashes with ImportErrors on the workers if numpy is installed on the driver machine but not on the workers.  I'm not sure what's the best way to fix this.  A general mechanism for automatically shipping libraries from the master to the workers would address this, but that could be complicated to implement.


---

* [SPARK-611](https://issues.apache.org/jira/browse/SPARK-611) | *Major* | **Allow JStack to be run from web UI**

Huge debugging improvement if the standalone mode dashboard can run jstack and show it on the web page for a slave.


---

* [SPARK-546](https://issues.apache.org/jira/browse/SPARK-546) | ** | **Support full outer join and multiple join in a single shuffle**

RDD[(K,V)] now supports left/right outer join but not full outer join.

Also it'd be nice to provide a way for users to join multiple RDDs on the same key in a single shuffle.



