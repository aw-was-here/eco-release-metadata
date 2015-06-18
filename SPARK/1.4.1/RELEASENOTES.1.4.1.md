
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
#  1.4.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [SPARK-8395](https://issues.apache.org/jira/browse/SPARK-8395) | *Minor* | **spark-submit documentation is incorrect**

Using a fresh checkout of 1.4.0-bin-hadoop2.6

if you run 
./start-slave.sh  1 spark://localhost:7077

you get
failed to launch org.apache.spark.deploy.worker.Worker:
                             Default is conf/spark-defaults.conf.
  15/06/16 13:11:08 INFO Utils: Shutdown hook called

it seems the worker number is not being accepted  as desccribed here:
https://spark.apache.org/docs/latest/spark-standalone.html

The documentation says:
./sbin/start-slave.sh <worker#> <master-spark-URL>

but the start.slave-sh script states:
usage="Usage: start-slave.sh <spark-master-URL> where <spark-master-URL> is like spark://localhost:7077"

I have checked for similar issues using :
https://issues.apache.org/jira/browse/SPARK-6552?jql=text%20~%20%22start-slave%22

and found nothing similar so am raising this as an issue.


---

* [SPARK-8373](https://issues.apache.org/jira/browse/SPARK-8373) | *Minor* | **When an RDD has no partition, Python sum will throw "Can not reduce() empty RDD"**

The issue is because "sum" uses "reduce". Replacing it with "fold" will fix it.


---

* [SPARK-8372](https://issues.apache.org/jira/browse/SPARK-8372) | *Minor* | **History server shows incorrect information for application not started**

The history server may show an incorrect App ID for an incomplete application like <App ID>.inprogress. This app info will never disappear even after the app is completed.


---

* [SPARK-8367](https://issues.apache.org/jira/browse/SPARK-8367) | *Major* | **ReliableKafka will loss data when `spark.streaming.blockInterval` was 0**

{code:title=BlockGenerator.scala|borderStyle=solid}
  /** Change the buffer to which single records are added to. */
  private def updateCurrentBuffer(time: Long): Unit = synchronized {
    try {
      val newBlockBuffer = currentBuffer
      currentBuffer = new ArrayBuffer[Any]
      if (newBlockBuffer.size > 0) {

       val blockId = StreamBlockId(receiverId, time - blockIntervalMs)

        val newBlock = new Block(blockId, newBlockBuffer)
        listener.onGenerateBlock(blockId)
        blocksForPushing.put(newBlock)  // put is blocking when queue is full
        logDebug("Last element in " + blockId + " is " + newBlockBuffer.last)
      }
    } catch {
      case ie: InterruptedException =>
        logInfo("Block updating timer thread was interrupted")
      case e: Exception =>
        reportError("Error in block updating thread", e)
    }
  }
{code}

If *spark.streaming.blockInterval* was 0, the *blockId* in the code will always be the same because of  *time* was 0 and *blockIntervalMs* was 0 too.

{code:title=ReliableKafkaReceiver.scala|borderStyle=solid}
   private def rememberBlockOffsets(blockId: StreamBlockId): Unit = {
    // Get a snapshot of current offset map and store with related block id.
    val offsetSnapshot = topicPartitionOffsetMap.toMap
    blockOffsetMap.put(blockId, offsetSnapshot)
    topicPartitionOffsetMap.clear()
  }
{code}
If the *blockId* was the same,  Streaming will commit the  *offset*  before the really data comsumed(data was waitting to be commit but the offset had updated and commit by previous commit)
So when exception occures, the *offset* had commit but the data will loss since the data was in memory and not comsumed yet.


---

* [SPARK-8358](https://issues.apache.org/jira/browse/SPARK-8358) | *Blocker* | **DataFrame explode with alias and * fails**

{code}
scala> Seq((Array("a"), 1)).toDF("a", "b").select(explode($"a").as("a"), $"*")
org.apache.spark.sql.catalyst.analysis.UnresolvedException: Invalid call to dataType on unresolved object, tree: 'a
        at org.apache.spark.sql.catalyst.analysis.UnresolvedAttribute.dataType(unresolved.scala:60)
        at org.apache.spark.sql.catalyst.expressions.Explode.elementTypes(generators.scala:107)
        at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveGenerate$AliasedGenerator$.unapply(Analyzer.scala:577)
        at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveGenerate$$anonfun$apply$16$$anonfun$22.apply(Analyzer.scala:535)
        at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveGenerate$$anonfun$apply$16$$anonfun$22.apply(Analyzer.scala:534)
        at scala.collection.TraversableLike$$anonfun$flatMap$1.apply(TraversableLike.scala:251)
        at scala.collection.TraversableLike$$anonfun$flatMap$1.apply(TraversableLike.scala:251)
...
{code}


---

* [SPARK-8354](https://issues.apache.org/jira/browse/SPARK-8354) | *Major* | **Fix off-by-factor-of-8 error when allocating scratch space in UnsafeFixedWidthAggregationMap**

UnsafeFixedWidthAggregationMap contains an off-by-factor-of-8 error when allocating row conversion scratch space: we take a size requirement, measured in bytes, then allocate a long array of that size.  This means that we end up allocating 8x too much conversion space.


---

* [SPARK-8343](https://issues.apache.org/jira/browse/SPARK-8343) | *Minor* | **Improve the Spark Streaming Guides**

Improve the Spark Streaming Guides by fixing broken links, rewording confusing sections, fixing typos, adding missing words, etc.


---

* [SPARK-8336](https://issues.apache.org/jira/browse/SPARK-8336) | *Major* | **Fix NullPointerException with functions.rand()**

The problem was first reported by Justin Yip in the thread 'NullPointerException with functions.rand()'

Here is how to reproduce the problem:
{code}
sqlContext.createDataFrame(Seq((1,2), (3, 100))).withColumn("index", rand(30)).show()
{code}


---

* [SPARK-8330](https://issues.apache.org/jira/browse/SPARK-8330) | *Major* | **DAG visualization: trim whitespace from input**

Just as a safeguard against DOM rewriting.


---

* [SPARK-8329](https://issues.apache.org/jira/browse/SPARK-8329) | *Blocker* | **DataSource options parser no longer accepts '\_'**

This is a regression from 1.3.1


---

* [SPARK-8322](https://issues.apache.org/jira/browse/SPARK-8322) | *Major* | **EC2 script not fully updated for 1.4.0 release**

In the spark\_ec2.py script, the "1.4.0" spark version hasn't been added to the VALID\_SPARK\_VERSIONS map or the SPARK\_TACHYON\_MAP, causing the script to break for the latest release.


---

* [SPARK-8310](https://issues.apache.org/jira/browse/SPARK-8310) | *Critical* | **Spark EC2 branch in 1.4 is wrong**

It points to `branch-1.3` of spark-ec2 right now while it should point to `branch-1.4`

cc [~brdwrd] [~pwendell]


---

* [SPARK-8309](https://issues.apache.org/jira/browse/SPARK-8309) | *Critical* | **OpenHashMap doesn't work with more than 12M items**

The problem might be demonstrated with the following testcase:

{code}
  test("support for more than 12M items") {
    val cnt = 12000000 // 12M
    val map = new OpenHashMap[Int, Int](cnt)
    for (i <- 0 until cnt) {
      map(i) = 1
    }
    val numInvalidValues = map.iterator.count(\_.\_2 == 0)
    assertResult(0)(numInvalidValues)
  }

{code}


---

* [SPARK-8306](https://issues.apache.org/jira/browse/SPARK-8306) | *Major* | **AddJar command needs to set the new class loader to the HiveConf inside executionHive.state.**

In {{AddJar}} command, we are using {{org.apache.hadoop.hive.ql.metadata.Hive.get().getConf().setClassLoader(newClassLoader)}}. However, the conf returned by {{Hive.get().getConf()}} is not necessary the one set in {{executionHive.state}}. Thus, we may fail to set the correct class loader to {{executionHive}} in some cases.


---

* [SPARK-8289](https://issues.apache.org/jira/browse/SPARK-8289) | *Major* | **Provide a specific stack size with all Java implementations to prevent stack overflows with certain tests**

Default stack sizes differ per Java implementation - so tests can pass for those with higher stack sizes (OpenJDK) but will fail with Oracle or IBM Java owing to lower default sizes. In particular we can see this happening with the JavaALSSuite - with 15 iterations, we get stackoverflow errors with Oracle and IBM Java. We don't with OpenJDK. This JIRA aims to address such an issue by providing a default specified stack size to be used for all Java distributions: 4096k specified for both SBT test args and for Maven test args (changing project/ScalaBuild.scala and pom.xml respectively).


---

* [SPARK-8285](https://issues.apache.org/jira/browse/SPARK-8285) | *Trivial* | **CombineSum should be calculated as unlimited decimal first**

{code:title=GeneratedAggregate.scala}
case cs @ CombineSum(expr) =>
        val calcType = expr.dataType
          expr.dataType match {
            case DecimalType.Fixed(\_, \_) =>
              DecimalType.Unlimited
            case \_ =>
              expr.dataType
          }
{code}
calcType is always expr.dataType. credits are all belong to IntelliJ


---

* [SPARK-8282](https://issues.apache.org/jira/browse/SPARK-8282) | *Major* | **Make number of threads used in RBackend configurable**

RBackend starts a netty server which uses two threads. The number of threads is hardcoded. It is useful to have it configurable.


---

* [SPARK-8274](https://issues.apache.org/jira/browse/SPARK-8274) | *Trivial* | **Fix wrong URLs in MLlib Frequent Pattern Mining Documentation**

There is a mistake in the URLs of the Scala section of FP-Growth in the MLlib Frequent Pattern Mining documentation. The URL points to https://spark.apache.org/docs/latest/api/java/org/apache/spark/mllib/fpm/FPGrowth.html which is the Java's API, the link should point to the Scala API https://spark.apache.org/docs/latest/api/scala/index.html#org.apache.spark.mllib.fpm.FPGrowth

There's another mistake in the FP-GrowthModel in the same section, the link points, again, to the Java's API https://spark.apache.org/docs/latest/api/java/org/apache/spark/mllib/fpm/FPGrowthModel.html, the link should point to the Scala API https://spark.apache.org/docs/latest/api/scala/index.html#org.apache.spark.mllib.fpm.FPGrowthModel


---

* [SPARK-8200](https://issues.apache.org/jira/browse/SPARK-8200) | *Minor* | **Exception in StreamingLinearAlgorithm on Stream with Empty RDD.**

When training a streaming logistic regression model or a streaming linear regression model, any empty RDDs in a stream will cause an exception.

  java.lang.UnsupportedOperationException: empty collection
  at org.apache.spark.rdd.RDD$$anonfun$first$1.apply(RDD.scala:1288)
  at org.apache.spark.rdd.RDDOperationScope$.withScope(RDDOperationScope.scala:148)
  at org.apache.spark.rdd.RDDOperationScope$.withScope(RDDOperationScope.scala:109)
  at org.apache.spark.rdd.RDD.withScope(RDD.scala:286)
  at org.apache.spark.rdd.RDD.first(RDD.scala:1285)
  at org.apache.spark.mllib.regression.GeneralizedLinearAlgorithm.run(GeneralizedLinearAlgorithm.scala:215)
  at org.apache.spark.mllib.regression.StreamingLinearAlgorithm$$anonfun$trainOn$1.apply(StreamingLinearAlgorithm.scala:91)
  at org.apache.spark.mllib.regression.StreamingLinearAlgorithm$$anonfun$trainOn$1.apply(StreamingLinearAlgorithm.scala:85)
  at org.apache.spark.streaming.dstream.ForEachDStream$$anonfun$1$$anonfun$apply$mcV$sp$1.apply$mcV$sp(ForEachDStream.scala:42)
  at org.apache.spark.streaming.dstream.ForEachDStream$$anonfun$1$$anonfun$apply$mcV$sp$1.apply(ForEachDStream.scala:40)


---

* [SPARK-8162](https://issues.apache.org/jira/browse/SPARK-8162) | *Blocker* | **Run spark-shell cause NullPointerException**

run spark-shell on latest master branch, then failed, details are:

{noformat}
Welcome to
      \_\_\_\_              \_\_
     / \_\_/\_\_  \_\_\_ \_\_\_\_\_/ /\_\_
    \_\ \/ \_ \/ \_ `/ \_\_/  '\_/
   /\_\_\_/ .\_\_/\\_,\_/\_/ /\_/\\_\   version 1.5.0-SNAPSHOT
      /\_/

Using Scala version 2.10.4 (Java HotSpot(TM) 64-Bit Server VM, Java 1.8.0\_40)
Type in expressions to have them evaluated.
Type :help for more information.
error: error while loading JobProgressListener, Missing dependency 'bad symbolic reference. A signature in JobProgressListener.class refers to term annotations
in package com.google.common which is not available.
It may be completely missing from the current classpath, or the version on
the classpath might be incompatible with the version used when compiling JobProgressListener.class.', required by /opt/apache/spark/lib/spark-assembly-1.5.0-SNAPSHOT-hadoop2.7.0.jar(org/apache/spark/ui/jobs/JobProgressListener.class)
java.lang.NullPointerException
	at org.apache.spark.sql.SQLContext.<init>(SQLContext.scala:193)
	at org.apache.spark.sql.hive.HiveContext.<init>(HiveContext.scala:68)
	at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)
	at sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)
	at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)
	at java.lang.reflect.Constructor.newInstance(Constructor.java:422)
	at org.apache.spark.repl.SparkILoop.createSQLContext(SparkILoop.scala:1028)
	at $iwC$$iwC.<init>(<console>:9)
	at $iwC.<init>(<console>:18)
	at <init>(<console>:20)
	at .<init>(<console>:24)
	at .<clinit>(<console>)
	at .<init>(<console>:7)
	at .<clinit>(<console>)
	at $print(<console>)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:497)
	at org.apache.spark.repl.SparkIMain$ReadEvalPrint.call(SparkIMain.scala:1065)
	at org.apache.spark.repl.SparkIMain$Request.loadAndRun(SparkIMain.scala:1338)
	at org.apache.spark.repl.SparkIMain.loadAndRunReq$1(SparkIMain.scala:840)
	at org.apache.spark.repl.SparkIMain.interpret(SparkIMain.scala:871)
	at org.apache.spark.repl.SparkIMain.interpret(SparkIMain.scala:819)
	at org.apache.spark.repl.SparkILoop.reallyInterpret$1(SparkILoop.scala:857)
	at org.apache.spark.repl.SparkILoop.interpretStartingWith(SparkILoop.scala:902)
	at org.apache.spark.repl.SparkILoop.command(SparkILoop.scala:814)
	at org.apache.spark.repl.SparkILoopInit$$anonfun$initializeSpark$1.apply(SparkILoopInit.scala:130)
	at org.apache.spark.repl.SparkILoopInit$$anonfun$initializeSpark$1.apply(SparkILoopInit.scala:122)
	at org.apache.spark.repl.SparkIMain.beQuietDuring(SparkIMain.scala:324)
	at org.apache.spark.repl.SparkILoopInit$class.initializeSpark(SparkILoopInit.scala:122)
	at org.apache.spark.repl.SparkILoop.initializeSpark(SparkILoop.scala:64)
	at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1$$anonfun$apply$mcZ$sp$5.apply$mcV$sp(SparkILoop.scala:974)
	at org.apache.spark.repl.SparkILoopInit$class.runThunks(SparkILoopInit.scala:157)
	at org.apache.spark.repl.SparkILoop.runThunks(SparkILoop.scala:64)
	at org.apache.spark.repl.SparkILoopInit$class.postInitialization(SparkILoopInit.scala:106)
	at org.apache.spark.repl.SparkILoop.postInitialization(SparkILoop.scala:64)
	at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply$mcZ$sp(SparkILoop.scala:991)
	at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply(SparkILoop.scala:945)
	at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply(SparkILoop.scala:945)
	at scala.tools.nsc.util.ScalaClassLoader$.savingContextLoader(ScalaClassLoader.scala:135)
	at org.apache.spark.repl.SparkILoop.org$apache$spark$repl$SparkILoop$$process(SparkILoop.scala:945)
	at org.apache.spark.repl.SparkILoop.process(SparkILoop.scala:1059)
	at org.apache.spark.repl.Main$.main(Main.scala:31)
	at org.apache.spark.repl.Main.main(Main.scala)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:497)
	at org.apache.spark.deploy.SparkSubmit$.org$apache$spark$deploy$SparkSubmit$$runMain(SparkSubmit.scala:663)
	at org.apache.spark.deploy.SparkSubmit$.doRunMain$1(SparkSubmit.scala:169)
	at org.apache.spark.deploy.SparkSubmit$.submit(SparkSubmit.scala:192)
	at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:111)
	at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)

<console>:10: error: not found: value sqlContext
       import sqlContext.implicits.\_
              ^
<console>:10: error: not found: value sqlContext
       import sqlContext.sql
              ^
{noformat}

JDK: 1.8.0\_40
Hadoop: 2.7.0


---

* [SPARK-8161](https://issues.apache.org/jira/browse/SPARK-8161) | *Major* | **externalBlockStoreInitialized is never set to be true**

externalBlockStoreInitialized is never set to be true, which causes the blocks stored in ExternalBlockStore can not be removed.


---

* [SPARK-8146](https://issues.apache.org/jira/browse/SPARK-8146) | *Major* | **DataFrame Python API: Alias replace in DataFrameNaFunctions**

We missed aliasing it in na.replace.


---

* [SPARK-8141](https://issues.apache.org/jira/browse/SPARK-8141) | *Major* | **Precompute datatypes for partition columns and reuse it**

spec.partitionColumns.map(\_.dataType) re-runs for each Partition in HadoopFsRelation. When there are many partitions, it costs too much unnecessary time.


---

* [SPARK-8126](https://issues.apache.org/jira/browse/SPARK-8126) | *Minor* | **Use temp directory under build dir for unit tests**

Spark's unit tests leave a lot of garbage in /tmp after a run, making it hard to clean things up. Let's place those files under the build dir so that "mvn|sbt|git clean" can do their job.


---

* [SPARK-8121](https://issues.apache.org/jira/browse/SPARK-8121) | *Major* | **When using with Hadoop 1.x, "spark.sql.parquet.output.committer.class" is overriden by "spark.sql.sources.outputCommitterClass"**

When using Spark with Hadoop 1.x (the version I tested is 1.2.0) and {{spark.sql.sources.outputCommitterClass}} is configured, {{spark.sql.parquet.output.committer.class}} will be overriden. 

For example, if {{spark.sql.parquet.output.committer.class}} is set to {{FileOutputCommitter}}, while {{spark.sql.sources.outputCommitterClass}} is set to {{DirectParquetOutputCommitter}}, neither {{\_metadata}} nor {{\_common\_metadata}} will be written because {{FileOutputCommitter}} overrides {{DirectParquetOutputCommitter}}.

The reason is that, {{InsertIntoHadoopFsRelation}} initializes the {{TaskAttemptContext}} before calling {{ParquetRelation2.prepareForWriteJob()}}, which sets up Parquet output committer class. In the meanwhile, in Hadoop 1.x, {{TaskAttempContext}} constructor clones the job configuration, thus doesn't share the job configuration passed to {{ParquetRelation2.prepareForWriteJob()}}.

This issue can be fixed by simply [switching these two lines|https://github.com/apache/spark/blob/master/sql/core/src/main/scala/org/apache/spark/sql/sources/commands.scala#L285-L286].

Here is a Spark shell snippet for reproducing this issue:
{code}
import sqlContext.\_

sc.hadoopConfiguration.set(
  "spark.sql.sources.outputCommitterClass",
  "org.apache.hadoop.mapreduce.lib.output.FileOutputCommitter")

sc.hadoopConfiguration.set(
  "spark.sql.parquet.output.committer.class",
  "org.apache.spark.sql.parquet.DirectParquetOutputCommitter")

range(0, 1).write.mode("overwrite").parquet("file:///tmp/foo")
{code}
Then check {{/tmp/foo}}, Parquet summary files are missing:
{noformat}
/tmp/foo
├── \_SUCCESS
├── part-r-00001.gz.parquet
├── part-r-00002.gz.parquet
├── part-r-00003.gz.parquet
├── part-r-00004.gz.parquet
├── part-r-00005.gz.parquet
├── part-r-00006.gz.parquet
├── part-r-00007.gz.parquet
└── part-r-00008.gz.parquet
{noformat}


---

* [SPARK-8116](https://issues.apache.org/jira/browse/SPARK-8116) | *Minor* | **sc.range() doesn't match python range()**

Python's built-in range() and xrange() functions can take 1, 2, or 3 arguments. Ranges with just 1 argument are probably used the most frequently, e.g.:
for i in range(len(myList)): ...

However, in pyspark, the SparkContext range() method throws an error when called with a single argument, due to the way its arguments get passed into python's range function.

There's no good reason that I can think of not to support the same syntax as the built-in function. To fix this, we can set the default of the sc.range() method's `stop` argument to None, and then inside the method, if it is None, replace `stop` with `start` and set `start` to 0, which is what the c implementation of range() does:
https://github.com/python/cpython/blob/master/Objects/rangeobject.c#L87


---

* [SPARK-8098](https://issues.apache.org/jira/browse/SPARK-8098) | *Minor* | **Show correct length of bytes on log page**

The log page should only show desired length of bytes. Currently it shows bytes from the startIndex to the end of the file. The "Next" button on the page is always disabled.


---

* [SPARK-8088](https://issues.apache.org/jira/browse/SPARK-8088) | *Major* | **ExecutionAllocationManager spamming INFO logs about "Lowering target number of executors"**

I am running a {{spark-shell}} built at 1.4.0-rc4, with:

{code}
  --conf spark.dynamicAllocation.enabled=true \
  --conf spark.dynamicAllocation.minExecutors=5 \
  --conf spark.dynamicAllocation.maxExecutors=300 \
  --conf spark.dynamicAllocation.schedulerBacklogTimeout=3 \
  --conf spark.dynamicAllocation.executorIdleTimeout=600 \
{code}

I can't really type any commands because I am getting 10 of these per second:

{code}
15/06/03 20:49:09 INFO spark.ExecutorAllocationManager: Lowering target number of executors to 5 because not all requests are actually needed (previously 5)
15/06/03 20:49:09 INFO spark.ExecutorAllocationManager: Lowering target number of executors to 5 because not all requests are actually needed (previously 5)
15/06/03 20:49:09 INFO spark.ExecutorAllocationManager: Lowering target number of executors to 5 because not all requests are actually needed (previously 5)
15/06/03 20:49:09 INFO spark.ExecutorAllocationManager: Lowering target number of executors to 5 because not all requests are actually needed (previously 5)
15/06/03 20:49:09 INFO spark.ExecutorAllocationManager: Lowering target number of executors to 5 because not all requests are actually needed (previously 5)
15/06/03 20:49:09 INFO spark.ExecutorAllocationManager: Lowering target number of executors to 5 because not all requests are actually needed (previously 5)
{code}

It should not print anything if it is not in fact lowering the number of executors / is already at the minimum, right?


---

* [SPARK-8085](https://issues.apache.org/jira/browse/SPARK-8085) | *Major* | **Pass in user-specified schema in read.df**

This will help cases where we use the CSV reader and want each column to be of a specific type


---

* [SPARK-8084](https://issues.apache.org/jira/browse/SPARK-8084) | *Major* | **SparkR install script should fail with error if any packages required are not found**

This is to avoid cases where the script fails but the build is green

https://amplab.cs.berkeley.edu/jenkins/job/Spark-Master-Package/73/console


---

* [SPARK-8083](https://issues.apache.org/jira/browse/SPARK-8083) | *Major* | **Fix return to drivers link in Mesos driver page**

The current path is set to "/" but this doesn't work with a proxy. We need to prepend the proxy base uri if it's set.


---

* [SPARK-8079](https://issues.apache.org/jira/browse/SPARK-8079) | *Major* | **NPE when HadoopFsRelation.prepareForWriteJob throws exception**

Take {{ParquetRelation2}} as an example, the following Spark shell code may cause an unexpected NPE:
{code}
import sqlContext.\_
import sqlContext.implicits.\_

range(1, 3).select($"id" as "a b").write.format("parquet").save("file:///tmp/foo")
{code}
Exceptions thrown:
{noformat}
import sqlContext.\_
import sqlContext.implicits.\_

range(1, 3).select($"id" as "a b").write.format("parquet").save("file:///tmp/foo")

java.lang.RuntimeException: Attribute name "a b" contains invalid character(s) among " ,;{}()   =". Please use alias to rename it.
        at scala.sys.package$.error(package.scala:27)
        at org.apache.spark.sql.parquet.ParquetTypesConverter$$anonfun$checkSpecialCharacters$2.apply(ParquetTypes.scala:414)
        at org.apache.spark.sql.parquet.ParquetTypesConverter$$anonfun$checkSpecialCharacters$2.apply(ParquetTypes.scala:412)
        at scala.collection.immutable.List.foreach(List.scala:318)
        at org.apache.spark.sql.parquet.ParquetTypesConverter$.checkSpecialCharacters(ParquetTypes.scala:412)
        at org.apache.spark.sql.parquet.ParquetTypesConverter$.convertToString(ParquetTypes.scala:423)
        at org.apache.spark.sql.parquet.RowWriteSupport$.setSchema(ParquetTableSupport.scala:383)
        at org.apache.spark.sql.parquet.ParquetRelation2.prepareJobForWrite(newParquet.scala:230)
        ...
java.lang.NullPointerException
        at org.apache.spark.sql.sources.BaseWriterContainer.abortJob(commands.scala:372)
        at org.apache.spark.sql.sources.InsertIntoHadoopFsRelation.insert(commands.scala:137)
        at org.apache.spark.sql.sources.InsertIntoHadoopFsRelation.run(commands.scala:114)
        at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult$lzycompute(commands.scala:57)
        at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult(commands.scala:57)
        ...
{noformat}
Note that the first {{RuntimeException}} is expected, while the following NPE is not.

The reason of the NPE is that, {{BaseWriterContainer.driverSideSetup()}} calls {{relation.prepareForWriteJob()}} AND initializes the {{OutputCommitter}} used for the subsequent write job. However, if the former throws an exception, the latter is not properly initialized, thus an NPE is thrown when aborting the job because the {{OutputCommitter}} is still null.


---

* [SPARK-8074](https://issues.apache.org/jira/browse/SPARK-8074) | *Major* | **Parquet should throw AnalysisException during setup for data type/name related failures**

Change sys.error/RuntimeException to AnalysisException.


---

* [SPARK-8063](https://issues.apache.org/jira/browse/SPARK-8063) | *Major* | **Spark master URL conflict between MASTER env variable and --master command line option**

Currently, Spark supports several ways to specify the Spark master URL, like --master option for spark-submit, spark.master configuration option, MASTER env variable. They have different precedences, for example, --master overrides MASTER if both are specified.

However, for SparkR shell, it always use the master URL specified by MASTER, not honoring --master.


---

* [SPARK-8054](https://issues.apache.org/jira/browse/SPARK-8054) | *Major* | **Java compatibility fixes for MLlib 1.4**

See [SPARK-7529]


---

* [SPARK-8053](https://issues.apache.org/jira/browse/SPARK-8053) | *Minor* | **ElementwiseProduct scalingVec param name should match between ml,mllib**

spark.mllib's ElementwiseProduct uses "scalingVector"

spark.ml's ElementwiseProduct uses "scalingVec"

We should make them match.


---

* [SPARK-8051](https://issues.apache.org/jira/browse/SPARK-8051) | *Major* | **StringIndexerModel (and other models) shouldn't complain if the input column is missing.**

If a transformer is not used during transformation, it should keep silent if the input column is missing.


---

* [SPARK-8043](https://issues.apache.org/jira/browse/SPARK-8043) | *Minor* | **update NaiveBayes and SVM examples in doc**

I found some issues during testing the save/load examples in markdown Documents, as a part of 1.4 QA plan


---

* [SPARK-8032](https://issues.apache.org/jira/browse/SPARK-8032) | *Major* | **Make NumPy version checking in mllib/\_\_init\_\_.py**

The current checking does version `1.x' is less than `1.4' this will fail if x has greater than 1 digit, since x > 4, however `1.x` < `1.4`


---

* [SPARK-8004](https://issues.apache.org/jira/browse/SPARK-8004) | *Major* | **Spark does not enclose column names when fetchting from jdbc sources**

Spark failes to load tables that have a keyword as column names

Sample error:
{code}

org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 157.0 failed 1 times, most recent failure: Lost task 0.0 in stage 157.0 (TID 4322, localhost): com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'key,value FROM [XXXXXX]'
{code}

A correct query would have been
{code}
SELECT `key`.`value` FROM ....
{code}


---

* [SPARK-8001](https://issues.apache.org/jira/browse/SPARK-8001) | *Minor* | **Make AsynchronousListenerBus.waitUntilEmpty throw TimeoutException if timeout**

TimeoutException is a more explicit failure. In addition, the caller may forget to call {{assert}} to check the return value of {{AsynchronousListenerBus.waitUntilEmpty}}.


---

* [SPARK-7991](https://issues.apache.org/jira/browse/SPARK-7991) | *Major* | **Python DataFrame: support passing a list into describe**

DataFrame.describe in Python takes a vararg, i.e. it can be invoked this way:
{code}
df.describe('col1', 'col2', 'col3')
{code}

Most of our DataFrame functions accept a list in addition to varargs. describe should do the same, i.e. it should also accept a Python list:
{code}
df.describe(['col1', 'col2', 'col3'])
{code}


---

* [SPARK-7989](https://issues.apache.org/jira/browse/SPARK-7989) | *Major* | **Fix flaky tests in ExternalShuffleServiceSuite and SparkListenerWithClusterSuite**

The flaky tests in ExternalShuffleServiceSuite and SparkListenerWithClusterSuite will fail if there are not enough executors up before running the jobs.


---

* [SPARK-7980](https://issues.apache.org/jira/browse/SPARK-7980) | *Major* | **Support SQLContext.range(end)**

SQLContext.range should also allow only specifying the end position, similar to Python's own range.


---

* [SPARK-7969](https://issues.apache.org/jira/browse/SPARK-7969) | *Minor* | **Drop method on Dataframes should handle Column**

For now the drop method available on Dataframe since Spark 1.4.0 only accepts a column name (as a string), it should also accept a Column as input.


---

* [SPARK-7955](https://issues.apache.org/jira/browse/SPARK-7955) | *Major* | **Dynamic allocation: longer timeout for executors with cached blocks**

When dynamic allocation is enabled, executor idle time is currently the only parameter considered. This can be annoying if executors get removed but have cached blocks. This can cause sever performance degradation.


---

* [SPARK-7916](https://issues.apache.org/jira/browse/SPARK-7916) | *Major* | **MLlib Python doc parity check for classification and regression.**

Check then make the MLlib Python classification and regression doc to be as complete as the Scala doc.


---

* [SPARK-7705](https://issues.apache.org/jira/browse/SPARK-7705) | *Minor* | **Cleanup of .sparkStaging directory fails if application is killed**

When a streaming application is killed while running on YARN the .sparkStaging directory is not cleaned up. Setting spark.yarn.preserve.staging.files=false does not help and still leaves the files around.

The changes in SPARK-7503 do not catch this case since there is no exception in the shutdown. When the application gets killed the AM gets told to shutdown and the shutdown hook is run but the clean up is not triggered.


---

* [SPARK-7666](https://issues.apache.org/jira/browse/SPARK-7666) | *Major* | **MLlib Python doc parity check**

Check then make the MLlib Python doc to be as complete as the Scala doc.


---

* [SPARK-7558](https://issues.apache.org/jira/browse/SPARK-7558) | *Major* | **Log test name when starting and finishing each test**

Right now it's really tough to interpret testing output because logs for different tests are interspersed in the same unit-tests.log file. This makes it particularly hard to diagnose flaky tests. This would be much easier if we logged the test name before and after every test (e.g. "Starting test XX", "Finished test XX"). Then you could get right to the logs.

I think one way to do this might be to create a custom test fixture that logs the test class name and then mix that into every test suite /cc [~joshrosen] for his superb knowledge of Scalatest.


---

* [SPARK-7515](https://issues.apache.org/jira/browse/SPARK-7515) | *Minor* | **Update documentation for PySpark on YARN with cluster mode**

Now PySpark on YARN with cluster mode is supported so let's update doc.


---

* [SPARK-7387](https://issues.apache.org/jira/browse/SPARK-7387) | *Minor* | **CrossValidator example code in Python**

We should add example code for CrossValidator after SPARK-6940 is merged. This should be similar to the CrossValidator example in Scala/Java.


---

* [SPARK-7284](https://issues.apache.org/jira/browse/SPARK-7284) | *Critical* | **Update streaming documentation for Spark 1.4.0 release**

Things to update (continuously updated list)
- Python API for Kafka Direct
- Pointers to the new Streaming UI
- Update Kafka version to 0.8.2.1
- Add ref to RDD.foreachPartitionWithIndex (if merged)


---

* [SPARK-6820](https://issues.apache.org/jira/browse/SPARK-6820) | *Critical* | **Convert NAs to null type in SparkR DataFrames**

While converting RDD or local R DataFrame to a SparkR DataFrame we need to handle missing values or NAs.
We should convert NAs to SparkSQL's null type to handle the conversion correctly



