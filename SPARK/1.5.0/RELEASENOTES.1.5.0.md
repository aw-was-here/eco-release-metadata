
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
#  1.5.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [SPARK-8397](https://issues.apache.org/jira/browse/SPARK-8397) | *Minor* | **Allow custom configuration for TestHive**

We encourage people to use {{TestHive}} in unit tests, because it's impossible to create more than one {{HiveContext}} within one process. The current implementation locks people into using a {{local[2]}} {{SparkContext}} underlying their {{HiveContext}}. We should make it possible to override this using a system property so that people can test against {{local-cluster}} or remote spark clusters to make their tests more realistic.


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

* [SPARK-8350](https://issues.apache.org/jira/browse/SPARK-8350) | *Minor* | **R unit tests output should be logged to "unit-tests.log"**

Right now it's logged to "R-unit-tests.log". Jenkins currently only archives files named "unit-tests.log", and this is what all other modules (e.g. SQL, network, REPL) use.

1. We should be consistent
2. I don't want to reconfigure Jenkins to accept a different file


---

* [SPARK-8349](https://issues.apache.org/jira/browse/SPARK-8349) | *Major* | **Use expression constructors (rather than apply) in FunctionRegistry**

Right now we use appy methods -- would be better to switch to constructors so expressions with overloaded constructors don't need to define companion objects.


---

* [SPARK-8346](https://issues.apache.org/jira/browse/SPARK-8346) | *Major* | **Use InternalRow instread of catalyst.InternalRow**

It's annoying to use catalyst.InternalRow inside catalyst


---

* [SPARK-8343](https://issues.apache.org/jira/browse/SPARK-8343) | *Minor* | **Improve the Spark Streaming Guides**

Improve the Spark Streaming Guides by fixing broken links, rewording confusing sections, fixing typos, adding missing words, etc.


---

* [SPARK-8342](https://issues.apache.org/jira/browse/SPARK-8342) | *Major* | **Decimal Math beyond ~2^112 is broken**

Here is a snippet from the spark-shell that should not happen

{code}
scala> val d = Decimal(Long.MaxValue,100,0) * Decimal(Long.MaxValue,100,0)
d: org.apache.spark.sql.types.Decimal = 0
scala> d.toDebugString
res3: String = Decimal(expanded,0,1,0})
{code}

It looks like precision gets reseted on some operations and values are then truncated.


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

* [SPARK-8319](https://issues.apache.org/jira/browse/SPARK-8319) | *Major* | **Update logic related to key ordering in shuffle dependencies**

The Tungsten ShuffleManager falls back to regular SortShuffleManager whenever the shuffle dependency specifies a key ordering, but technically we only need to fall back when an aggregator is also specified.  We should update the fallback logic to handle this case so that the Tungsten optimizations can apply to more workloads.

I also noticed that the SQL Exchange operator performs defensive copying of shuffle inputs when a key ordering is specified, but this is unnecessary: the only shuffle manager that performs sorting on the map side is SortShuffleManager, and it only performs sorting if an aggregator is specified.  SQL never uses Spark's shuffle for performing aggregation, so this copying is unnecessary.


---

* [SPARK-8317](https://issues.apache.org/jira/browse/SPARK-8317) | *Major* | **Do not push sort into shuffle in Exchange operator**

In some cases, Spark SQL pushes sorting operations into the shuffle layer by specifying a key ordering as part of the shuffle dependency. I think that we should not do this:

- Since we do not delegate aggregation to Spark's shuffle, specifying the keyOrdering as part of the shuffle has no effect on the shuffle map side.
- By performing the shuffle ourselves (by inserting a sort operator after the shuffle instead), we can use the Exchange planner to choose specialized sorting implementations based on the types of rows being sorted.
- We can remove some complexity from SqlSerializer2 by not requiring it to know about sort orderings, since SQL's own sort operators will already perform the necessary defensive copying.


---

* [SPARK-8316](https://issues.apache.org/jira/browse/SPARK-8316) | *Minor* | **Upgrade Maven to 3.3.3**

Maven versions prior to 3.3 apparently have some bugs.

See: https://github.com/apache/spark/pull/6492#issuecomment-111001101


---

* [SPARK-8314](https://issues.apache.org/jira/browse/SPARK-8314) | *Major* | **improvement in performance of MLUtils.appendBias**

MLUtils.appendBias method is heavily used in creating intercepts for linear models. This method uses Breeze's vector concatenation which is very slow compared to the plain System.arrayCopy. This improvement is to change the implementation to use System.arrayCopy. 

We saw the following performance improvements after the change:
Benchmark with mnist dataset for 50 times:
MLUtils.appendBias (SparseVector Before): 47320 ms
MLUtils.appendBias (SparseVector After): 1935 ms

MLUtils.appendBias (DenseVector Before): 5340 ms
MLUtils.appendBias (DenseVector After): 4080 ms

This is almost a 24 times performance boost for SparseVectors.


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

* [SPARK-8305](https://issues.apache.org/jira/browse/SPARK-8305) | *Major* | **Improve codegen**

Fix small issues in codegen:

1. Fix Cast Decimal into Boolean
2. Fix Literal(null)
3. refactor


---

* [SPARK-8290](https://issues.apache.org/jira/browse/SPARK-8290) | *Minor* | **spark class command builder need read SPARK\_JAVA\_OPTS and SPARK\_DRIVER\_MEMORY properly**

SPARK\_JAVA\_OPTS was missed in reconstructing the launcher part, we should add it back so spark-class could read it.

The missing part is here: https://github.com/apache/spark/blob/1c30afdf94b27e1ad65df0735575306e65d148a1/bin/spark-class#L97.


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

* [SPARK-8251](https://issues.apache.org/jira/browse/SPARK-8251) | *Major* | **string function: alias upper / ucase**

Alias upper / ucase in FunctionRegistry.


---

* [SPARK-8250](https://issues.apache.org/jira/browse/SPARK-8250) | *Major* | **string function: alias lower/lcase**

Alias lower/lcase in FunctionRegistry.


---

* [SPARK-8248](https://issues.apache.org/jira/browse/SPARK-8248) | *Major* | **string function: length**

length(string A): int

Returns the length of the string.


---

* [SPARK-8229](https://issues.apache.org/jira/browse/SPARK-8229) | *Major* | **conditional function: isnotnull**

Just need to register it in the FunctionRegistry.


---

* [SPARK-8228](https://issues.apache.org/jira/browse/SPARK-8228) | *Major* | **conditional function: isnull**

Just need to register it in FunctionRegistry.


---

* [SPARK-8225](https://issues.apache.org/jira/browse/SPARK-8225) | *Major* | **math function: alias sign / signum**

Alias them in FunctionRegistry.


---

* [SPARK-8222](https://issues.apache.org/jira/browse/SPARK-8222) | *Major* | **math function: alias power / pow**

Add to FunctionRegistry power.


---

* [SPARK-8220](https://issues.apache.org/jira/browse/SPARK-8220) | *Major* | **math function: positive**

positive(INT a): INT
positive(DOUBLE a): DOUBLE

This is really just an identify function. We should create an Identity expression, and then in the optimizer just removes the Identity functions.


---

* [SPARK-8219](https://issues.apache.org/jira/browse/SPARK-8219) | *Major* | **math function: negative**

This is just an alias for UnaryMinus. Only add it to FunctionRegistry, and not DataFrame.


---

* [SPARK-8217](https://issues.apache.org/jira/browse/SPARK-8217) | *Major* | **math function: log2**

log2(double a): double

Returns the base-2 logarithm of the argument a.


---

* [SPARK-8216](https://issues.apache.org/jira/browse/SPARK-8216) | *Major* | **math function: rename log -\> ln**

Rename expression Log -> Ln.

Also create aliased data frame functions, and update FunctionRegistry.


---

* [SPARK-8215](https://issues.apache.org/jira/browse/SPARK-8215) | *Major* | **math function: pi**

pi(): double

Returns the value of pi. We should make sure foldable = true so it gets folded by the optimizer.


---

* [SPARK-8212](https://issues.apache.org/jira/browse/SPARK-8212) | *Major* | **math function: e**

e(): double

Returns the value of e.


We should make this foldable so it gets folded by the optimizer.


---

* [SPARK-8211](https://issues.apache.org/jira/browse/SPARK-8211) | *Major* | **math function: radians**

Alias toRadians -> radians in FunctionRegistry.


---

* [SPARK-8210](https://issues.apache.org/jira/browse/SPARK-8210) | *Major* | **math function: degrees**

Alias todegrees -> degrees.


---

* [SPARK-8208](https://issues.apache.org/jira/browse/SPARK-8208) | *Major* | **math function: ceiling**

We already have ceil -- just need to create an alias for it in FunctionRegistry.


---

* [SPARK-8205](https://issues.apache.org/jira/browse/SPARK-8205) | *Major* | **conditional function: nvl**

nvl(T value, T default\_value): T

Returns default value if value is null else returns value (as of HIve 0.11).

We already have this (called Coalesce). Just need to register an alias for it in FunctionRegistry.


---

* [SPARK-8201](https://issues.apache.org/jira/browse/SPARK-8201) | *Major* | **conditional function: if**

We already have an If expression. Just need to register it in FunctionRegistry.


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

* [SPARK-8189](https://issues.apache.org/jira/browse/SPARK-8189) | *Major* | **Use 100ns precision for TimestampType**

100ns means we only need 8 bytes to represent a Timestamp.


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

* [SPARK-8158](https://issues.apache.org/jira/browse/SPARK-8158) | *Major* | **HiveShim improvement**

1. explicitly import implicit conversion support.
2. use .nonEmpty instead of .size > 0
3. use val instead of var
4. comment indention


---

* [SPARK-8154](https://issues.apache.org/jira/browse/SPARK-8154) | *Major* | **Remove Term/Code type aliases in code generation**

From my perspective as a code reviewer, I find them more confusing than using String directly.


---

* [SPARK-8149](https://issues.apache.org/jira/browse/SPARK-8149) | *Major* | **Break ExpressionEvaluationSuite down to multiple files**

We need to substantially improve unit test coverage for expressions, and as a result it is not possible to have all expression tests in a single file.


---

* [SPARK-8148](https://issues.apache.org/jira/browse/SPARK-8148) | *Major* | **Do not use FloatType in partition column inference**

Always use DoubleType to be more stable and less error prone.


---

* [SPARK-8146](https://issues.apache.org/jira/browse/SPARK-8146) | *Major* | **DataFrame Python API: Alias replace in DataFrameNaFunctions**

We missed aliasing it in na.replace.


---

* [SPARK-8141](https://issues.apache.org/jira/browse/SPARK-8141) | *Major* | **Precompute datatypes for partition columns and reuse it**

spec.partitionColumns.map(\_.dataType) re-runs for each Partition in HadoopFsRelation. When there are many partitions, it costs too much unnecessary time.


---

* [SPARK-8140](https://issues.apache.org/jira/browse/SPARK-8140) | *Trivial* | **Remove empty model check in StreamingLinearAlgorithm**

1. Prevent creating a map of data to find numFeatures
2. If model is empty, then initialize with a zero vector of numFeatures


---

* [SPARK-8136](https://issues.apache.org/jira/browse/SPARK-8136) | *Major* | **AM link download test can be flaky**

Sometimes YARN does not replace the link (or replaces it too soon) causing the YarnClusterSuite to fail. On a real cluster, the NM automatically redirects once the app is complete. So we should make the test less strict and have it only check the link's format rather than try to download the logs.


---

* [SPARK-8129](https://issues.apache.org/jira/browse/SPARK-8129) | *Minor* | **Securely pass auth secrets to executors in standalone cluster mode**

Currently, when authentication is turned on, the standalone cluster manager passes auth secrets to executors (also drivers in cluster mode) as java options on the command line, which isn't secure. The passed secret can be seen by anyone running 'ps' command, e.g.,


bq.  501 94787 94734   0  2:32PM ??         0:00.78 /Library/Java/JavaVirtualMachines/jdk1.7.0\_60.jdk/Contents/Home/jre/bin/java -cp /Users/kan/github/spark/sbin/../conf/:/Users/kan/github/spark/assembly/target/scala-2.10/spark-assembly-1.4.0-SNAPSHOT-hadoop2.3.0.jar:/Users/kan/github/spark/lib\_managed/jars/datanucleus-api-jdo-3.2.6.jar:/Users/kan/github/spark/lib\_managed/jars/datanucleus-core-3.2.10.jar:/Users/kan/github/spark/lib\_managed/jars/datanucleus-rdbms-3.2.9.jar -Xms512M -Xmx512M *-Dspark.authenticate.secret=090A030E0F0A05010900000A0C0E0C0B03050D05* -Dspark.driver.port=49625 -Dspark.authenticate=true -XX:MaxPermSize=128m org.apache.spark.executor.CoarseGrainedExecutorBackend --driver-url akka.tcp://sparkDriver@192.168.1.152:49625/user/CoarseGrainedScheduler --executor-id 0 --hostname 192.168.1.152 --cores 8 --app-id app-20150605143259-0000 --worker-url akka.tcp://sparkWorker@192.168.1.152:49623/user/Worker


---

* [SPARK-8126](https://issues.apache.org/jira/browse/SPARK-8126) | *Minor* | **Use temp directory under build dir for unit tests**

Spark's unit tests leave a lot of garbage in /tmp after a run, making it hard to clean things up. Let's place those files under the build dir so that "mvn|sbt|git clean" can do their job.


---

* [SPARK-8118](https://issues.apache.org/jira/browse/SPARK-8118) | *Minor* | **Turn off noisy log output produced by Parquet 1.7.0**

Parquet 1.7.0 renames package name to "org.apache.parquet", need to adjust {{ParquetRelation.enableLogForwarding}} accordingly to avoid noisy log output.


---

* [SPARK-8117](https://issues.apache.org/jira/browse/SPARK-8117) | *Major* | **Push codegen into Expression**

Push the codegen implementation of expression into Expression itself, make it easy to manage and extend.


---

* [SPARK-8116](https://issues.apache.org/jira/browse/SPARK-8116) | *Minor* | **sc.range() doesn't match python range()**

Python's built-in range() and xrange() functions can take 1, 2, or 3 arguments. Ranges with just 1 argument are probably used the most frequently, e.g.:
for i in range(len(myList)): ...

However, in pyspark, the SparkContext range() method throws an error when called with a single argument, due to the way its arguments get passed into python's range function.

There's no good reason that I can think of not to support the same syntax as the built-in function. To fix this, we can set the default of the sc.range() method's `stop` argument to None, and then inside the method, if it is None, replace `stop` with `start` and set `start` to 0, which is what the c implementation of range() does:
https://github.com/python/cpython/blob/master/Objects/rangeobject.c#L87


---

* [SPARK-8106](https://issues.apache.org/jira/browse/SPARK-8106) | *Major* | **Set derby.system.durability=test in order to speed up Hive compatibility tests**

Derby has a configuration property named {{derby.system.durability}} that disables I/O synchronization calls for many writes.  This sacrifices durability but can result in large performance gains, which is appropriate for tests.

We should enable this in our test system properties in order to speed up the Hive compatibility tests.  I saw 2-3x speedups locally with this change.


---

* [SPARK-8101](https://issues.apache.org/jira/browse/SPARK-8101) | *Minor* | **Upgrade netty to avoid memory leak accord to netty #3837 issues**

There is a direct buffer leak in netty, due to netty 4.0.23-Final not release threadlocal after netty already send message success.

Please Ref: https://github.com/netty/netty/issues/3837


---

* [SPARK-8099](https://issues.apache.org/jira/browse/SPARK-8099) | *Major* | **In yarn-cluster mode, "--executor-cores" can't be setted into SparkConf**

While testing dynamic executor allocation function, I set the executor cores with *--executor-cores 4* in spark-submit command. But in *ExecutorAllocationManager*, the *private val tasksPerExecutor =conf.getInt("spark.executor.cores", 1) / conf.getInt("spark.task.cpus", 1)* is still to be 1.


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

* [SPARK-8077](https://issues.apache.org/jira/browse/SPARK-8077) | *Minor* | **Optimisation of TreeNode for large number of children**

Large IN clauses are parsed very slowly. For example SQL below (10K items in IN) takes 45-50s. 

{code}
s"""SELECT * FROM Person WHERE ForeName IN ('${(1 to 10000).map("n" + \_).mkString("','")}')"""
{code}

This is principally due to TreeNode which repeatedly call contains on children, where children in this case is a List that is 10K long. In effect parsing for large IN clauses is O(N squared).

A small change that uses a lazily initialised Set based on children for contains reduces parse time to around 2.5s

I'd like to create PR for change, as we often use IN clauses with a few thousand items.


---

* [SPARK-8074](https://issues.apache.org/jira/browse/SPARK-8074) | *Major* | **Parquet should throw AnalysisException during setup for data type/name related failures**

Change sys.error/RuntimeException to AnalysisException.


---

* [SPARK-8063](https://issues.apache.org/jira/browse/SPARK-8063) | *Major* | **Spark master URL conflict between MASTER env variable and --master command line option**

Currently, Spark supports several ways to specify the Spark master URL, like --master option for spark-submit, spark.master configuration option, MASTER env variable. They have different precedences, for example, --master overrides MASTER if both are specified.

However, for SparkR shell, it always use the master URL specified by MASTER, not honoring --master.


---

* [SPARK-8059](https://issues.apache.org/jira/browse/SPARK-8059) | *Minor* | **Reduce latency between executor requests and RM heartbeat**

This is a follow up to SPARK-7533. On top of the changes done as part of that issue, we could reduce allocation latency by waking up the allocation thread when the driver send new requests.


---

* [SPARK-8054](https://issues.apache.org/jira/browse/SPARK-8054) | *Major* | **Java compatibility fixes for MLlib 1.4**

See [SPARK-7529]


---

* [SPARK-8053](https://issues.apache.org/jira/browse/SPARK-8053) | *Minor* | **ElementwiseProduct scalingVec param name should match between ml,mllib**

spark.mllib's ElementwiseProduct uses "scalingVector"

spark.ml's ElementwiseProduct uses "scalingVec"

We should make them match.


---

* [SPARK-8052](https://issues.apache.org/jira/browse/SPARK-8052) | *Major* | **Hive on Spark: CAST string AS BIGINT produces wrong value**

Example hive query:
SELECT CAST("775983671874188101" as BIGINT)
produces:           775983671874188160L
Look at: last 2 digits.


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

* [SPARK-8010](https://issues.apache.org/jira/browse/SPARK-8010) | *Major* | **Implict promote Numeric type to String type in HiveTypeCoercion**

1. Given a query
`select coalesce(null, 1, '1') from dual` will cause exception:
  
  java.lang.RuntimeException: Could not determine return type of Coalesce for IntegerType,StringType

2. Given a query:
`select case when true then 1 else '1' end from dual` will cause exception:

  java.lang.RuntimeException: Types in CASE WHEN must be the same or coercible to a common type: StringType != IntegerType

I checked the code, the main cause is the HiveTypeCoercion doesn't do implicit convert when there is a IntegerType and StringType.

Numeric types can be promoted to string type in case throw exceptions.

Since Hive will always do this. It need to be fixed.


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

* [SPARK-7993](https://issues.apache.org/jira/browse/SPARK-7993) | *Blocker* | **Improve DataFrame.show() output**

1. Each column should be at the minimum 3 characters wide. Right now if the widest value is 1, it is just 1 char wide, which looks ugly. Example below:

2. If a DataFrame have more than N number of rows (N = 20 by default for show), at the end we should display a message like "only showing the top 20 rows".

{code}
+--+--+-+
| a| b|c|
+--+--+-+
| 1| 2|3|
| 1| 2|1|
| 1| 2|3|
| 3| 6|3|
| 1| 2|3|
| 5|10|1|
| 1| 2|3|
| 7|14|3|
| 1| 2|3|
| 9|18|1|
| 1| 2|3|
|11|22|3|
| 1| 2|3|
|13|26|1|
| 1| 2|3|
|15|30|3|
| 1| 2|3|
|17|34|1|
| 1| 2|3|
|19|38|3|
+--+--+-+
only showing top 20 rows   <---- add this at the end
{code}

3. For array values, instead of printing "ArrayBuffer", we should just print square brackets:

{code}
+------------------+------------------+-----------------+
|       a\_freqItems|       b\_freqItems|      c\_freqItems|
+------------------+------------------+-----------------+
|ArrayBuffer(11, 1)|ArrayBuffer(2, 22)|ArrayBuffer(1, 3)|
+------------------+------------------+-----------------+
{code}

should be

{code}
+-----------+-----------+-----------+
|a\_freqItems|b\_freqItems|c\_freqItems|
+-----------+-----------+-----------+
|    [11, 1]|    [2, 22]|     [1, 3]|
+-----------+-----------+-----------+
{code}


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

* [SPARK-7990](https://issues.apache.org/jira/browse/SPARK-7990) | *Major* | **Add methods to facilitate equi-join on multiple join keys**

We have a variant of the join function that facilitates equi-join on a single join key, but we don't have one to do it for multiple join keys.

This is the existing Python API:
{code}
def join(self, other, joinExprs=None, joinType=None):
{code}

I think we should rename joinExprs to "on", and joinType to "how" to match Pandas. And then the "on" column should support either a string, a join condition, a list of string, or a list of join condition ("and" together).

In order to support the Python API, we'd need to add a variant for Scala as well. I think we can add another join method that looks like
{code}
def join(other: DataFrame, on: Seq[String], joinType: String): DataFrame
{code}
and update the existing Scala one to call this one.


---

* [SPARK-7989](https://issues.apache.org/jira/browse/SPARK-7989) | *Major* | **Fix flaky tests in ExternalShuffleServiceSuite and SparkListenerWithClusterSuite**

The flaky tests in ExternalShuffleServiceSuite and SparkListenerWithClusterSuite will fail if there are not enough executors up before running the jobs.


---

* [SPARK-7986](https://issues.apache.org/jira/browse/SPARK-7986) | *Major* | **Refactor scalastyle-config.xml to divide it into 3 sections**

This file should be divided into 3 sections:
 (1) rules that we enforce.
 (2) rules that we would like to enforce, but haven't cleaned up the codebase to turn on yet  (or we need to make the scalastyle rule more configurable).
 (3) rules that we don't want to enforce.


---

* [SPARK-7983](https://issues.apache.org/jira/browse/SPARK-7983) | *Minor* | **Add require for one-based indices in loadLibSVMFile**

Add require for one-based indices in loadLibSVMFile

Customers frequently use zero-based indices in their LIBSVM files. No warnings or errors from Spark will be reported during their computation afterwards, and usually it will lead to wired result for many algorithms (like GBDT).

add a quick check.


---

* [SPARK-7980](https://issues.apache.org/jira/browse/SPARK-7980) | *Major* | **Support SQLContext.range(end)**

SQLContext.range should also allow only specifying the end position, similar to Python's own range.


---

* [SPARK-7969](https://issues.apache.org/jira/browse/SPARK-7969) | *Minor* | **Drop method on Dataframes should handle Column**

For now the drop method available on Dataframe since Spark 1.4.0 only accepts a column name (as a string), it should also accept a Column as input.


---

* [SPARK-7956](https://issues.apache.org/jira/browse/SPARK-7956) | *Major* | **Use Janino to compile SQL expression**

The overhead of current implementation of codegen is to high (50ms - 500ms), which blocks us from turning it on by default.

We should try to investigate using Janino to compile the SQL expressions into JVM bytecode, which should be much faster to compile (about 10ms).


---

* [SPARK-7955](https://issues.apache.org/jira/browse/SPARK-7955) | *Major* | **Dynamic allocation: longer timeout for executors with cached blocks**

When dynamic allocation is enabled, executor idle time is currently the only parameter considered. This can be annoying if executors get removed but have cached blocks. This can cause sever performance degradation.


---

* [SPARK-7952](https://issues.apache.org/jira/browse/SPARK-7952) | *Major* | **equality check between boolean type and numeric type is broken.**

Currently we only support literal numeric values.


---

* [SPARK-7945](https://issues.apache.org/jira/browse/SPARK-7945) | *Minor* | **Do trim to values of properties**

Now applications submited by org.apache.spark.launcher.Main read properties file without doing trim to values in it. 

If user left a space after a value(say spark.driver.extraClassPath) then it probably affect global functions(like some jar could not be included in the classpath), so we should do it like Utils.getPropertiesFromFile.


---

* [SPARK-7939](https://issues.apache.org/jira/browse/SPARK-7939) | *Major* | **Make URL partition recognition return String by default for all partition column types and values**

Imagine the following HDFS paths:

/data/split=00
/data/split=01
...
/data/split=FF

If I have less than or equal to 10 partitions (00, 01, ... 09), currently partition recognition will treat column 'split' as integer column. 

If I have more than 10 partitions, column 'split' will be recognized as String...

This is very confusing. *So I'm suggesting to treat partition columns as String by default*, and allow user to specify types if needed.

Another example is date:
/data/date=2015-04-01 => 'date' is String
/data/date=20150401 => 'date' is Int

Jianshi


---

* [SPARK-7916](https://issues.apache.org/jira/browse/SPARK-7916) | *Major* | **MLlib Python doc parity check for classification and regression.**

Check then make the MLlib Python classification and regression doc to be as complete as the Scala doc.


---

* [SPARK-7915](https://issues.apache.org/jira/browse/SPARK-7915) | *Major* | **Support specifying the column list for target table in CTAS**

{code}
create table t1 (a int, b string) as select key, value from src;

desc t1;
key	int	NULL
value	string	NULL
{code}

Thus Hive doesn't support specifying the column list for target table in CTAS, however, we should either throwing exception explicitly, or supporting the this feature, we just pick up the later, which seems useful and straightforward.


---

* [SPARK-7913](https://issues.apache.org/jira/browse/SPARK-7913) | *Minor* | **Increase the maximum capacity of PartitionedPairBuffer, PartitionedSerializedPairBuffer and AppendOnlyMap**

We can change the growing strategy to increase the maximum capacity of PartitionedPairBuffer, PartitionedSerializedPairBuffer and AppendOnlyMap.


---

* [SPARK-7910](https://issues.apache.org/jira/browse/SPARK-7910) | *Minor* | **Expose partitioner information in JavaRDD**

It would be useful to expose the partitioner info in the Java & Python APIs for RDDs.


---

* [SPARK-7887](https://issues.apache.org/jira/browse/SPARK-7887) | *Major* | **Remove EvaluatedType from SQL Expression**

It's not a very useful type to use. We can just remove it to simplify expressions slightly.


---

* [SPARK-7886](https://issues.apache.org/jira/browse/SPARK-7886) | *Blocker* | **Add built-in expressions to FunctionRegistry**

Once we do this, we no longer needs to hardcode expressions into the parser (both for internal SQL and Hive QL).


---

* [SPARK-7878](https://issues.apache.org/jira/browse/SPARK-7878) | *Minor* | **Rename Stage.jobId to Stage.earliestJobId**

The jobId field in stage refers to the earliest job that uses that job; there is another field, jobIds, that lists all jobs for the stage. We should rename this field to avoid future bugs where people think jobId refers to the one and only job for the stage (e.g., SPARK-6880).


---

* [SPARK-7862](https://issues.apache.org/jira/browse/SPARK-7862) | *Major* | **Query would hang when the using script has error output in SparkSQL**

Steps to reproduce:

val data = (1 to 100000).map { i => (i, i, i) }
data.toDF("d1", "d2", "d3").registerTempTable("script\_trans")
 sql("SELECT TRANSFORM (d1, d2, d3) USING 'cat 1>&2' AS (a,b,c) FROM script\_trans")


---

* [SPARK-7855](https://issues.apache.org/jira/browse/SPARK-7855) | *Major* | **Move hash-style shuffle code out of ExternalSorter and into own file**

ExternalSorter contains a bunch of code for handling the bypassMergeThreshold / hash-style shuffle path.  I think that it would significantly simplify the code to move this functionality out of ExternalSorter and into a separate class which shares a common interface (insertAll / writePartitionedFile()).  This is a stepping-stone towards eventually removing this bypass path (see SPARK-6026)


---

* [SPARK-7854](https://issues.apache.org/jira/browse/SPARK-7854) | *Minor* | **refine Kryo configuration limits test**

refine the code style, make it more abstraction.


---

* [SPARK-7846](https://issues.apache.org/jira/browse/SPARK-7846) | *Major* | **Use different way to pass spark.yarn.keytab and spark.yarn.principal in different modes**

--principal and --keytabl options are passed to client but when we started thrift server or spark-shell these two are also passed into the Main class (org.apache.spark.sql.hive.thriftserver.HiveThriftServer2 and org.apache.spark.repl.Main).

In these two main class, arguments passed in will be processed with some 3rd libraries, which will lead to some error: "Invalid option: --principal" or "Unrecgnised option: --principal".

We should pass these command args in different forms, say system properties.


---

* [SPARK-7826](https://issues.apache.org/jira/browse/SPARK-7826) | *Major* | **Suppress extra calling getCacheLocs.**

There are too many extra call method {{getCacheLocs}} for {{DAGScheduler}}, which includes Akka communication.
To improve {{DAGScheduler}} performance, suppress extra calling the method.

In my application with over 1200 stages, the execution time became 3.8 min from 8.5 min with my patch.


---

* [SPARK-7824](https://issues.apache.org/jira/browse/SPARK-7824) | *Major* | **Collapsing operator reordering and constant folding into a single batch to push down the single side.**

SQL:
{noformat}
select * from tableA join tableB on (a > 3 and b = d) or (a > 3 and b = e)
{noformat}

Plan before modify
{noformat}
== Optimized Logical Plan ==
Project [a#293,b#294,c#295,d#296,e#297]
 Join Inner, Some(((a#293 > 3) && ((b#294 = d#296) || (b#294 = e#297))))
  MetastoreRelation default, tablea, None
  MetastoreRelation default, tableb, None
{noformat}

Plan after modify
{noformat}
== Optimized Logical Plan ==
Project [a#293,b#294,c#295,d#296,e#297]
 Join Inner, Some(((b#294 = d#296) || (b#294 = e#297)))
  Filter (a#293 > 3)
   MetastoreRelation default, tablea, None
  MetastoreRelation default, tableb, None
{noformat}


---

* [SPARK-7811](https://issues.apache.org/jira/browse/SPARK-7811) | *Trivial* | **Fix typo on slf4j configuration on metrics.properties.template**

There are a minor typo on slf4jsink configuration at metrics.properties.template. 

slf4j is mispelled as sl4j on 2 of the configuration. 

Correcting the typo so users' custom settings will be loaded correctly.


---

* [SPARK-7795](https://issues.apache.org/jira/browse/SPARK-7795) | *Major* | **Speed up task serialization in standalone mode**

My experiments with scheduling very short tasks in standalone cluster mode indicated that a significant amount of time was being spent in scheduling the tasks (>500ms for 256 tasks). I found that most of the time was being spent in creating a new instance of serializer for each task. Changing this to just one serializer brought down the scheduling time to 8ms.


---

* [SPARK-7792](https://issues.apache.org/jira/browse/SPARK-7792) | *Major* | **HiveContext registerTempTable not thread safe**

{code:java}
public class ThreadRepro {
    public static void main(String[] args) throws Exception{
       new ThreadRepro().sparkPerfTest();
    }

    public void sparkPerfTest(){

        final AtomicLong counter = new AtomicLong();
        SparkConf conf = new SparkConf();
        conf.setAppName("My Application");
        conf.setMaster("local[7]");
        SparkContext sc = new SparkContext(conf);

        org.apache.spark.sql.hive.HiveContext hc = new org.apache.spark.sql.hive.HiveContext(sc);
        int poolSize = 10;
        ExecutorService pool = Executors.newFixedThreadPool(poolSize);
        for (int i=0; i<poolSize;i++ )
            pool.execute(new QueryJob(hc, i, counter));

        pool.shutdown();
        try {
            pool.awaitTermination(60, TimeUnit.MINUTES);
        }catch(Exception e){
            System.out.println("Thread interrupted");
        }
        System.out.println("All jobs complete");
        System.out.println(" Counter is "+counter.get());

    }
}

class QueryJob implements Runnable{
    String threadId;
    org.apache.spark.sql.hive.HiveContext sqlContext;
    String key;
    AtomicLong counter;
    final AtomicLong local\_counter = new AtomicLong();

    public QueryJob(org.apache.spark.sql.hive.HiveContext \_sqlContext,int id,AtomicLong ctr){

        threadId = "thread\_"+id;
        this.sqlContext= \_sqlContext;
        this.counter = ctr;
    }
    public void run() {
        for (int i = 0; i < 100; i++) {
            String tblName = threadId +"\_"+i;
            DataFrame df = sqlContext.emptyDataFrame();
            df.registerTempTable(tblName);
            String \_query = String.format("select count(*) from %s",tblName);
            System.out.println(String.format(" registered table %s; catalog (%s) ",tblName,debugTables()));
            List<Row> res;
            try {
                res = sqlContext.sql(\_query).collectAsList();
            }catch (Exception e){
                System.out.println("*Exception "+ debugTables() +"**");
                throw e;
            }
            sqlContext.dropTempTable(tblName);
            System.out.println(" dropped table "+tblName);
            try {
                Thread.sleep(3000);//lets make this a not-so-tight loop
            }catch(Exception e){
                System.out.println("Thread interrupted");
            }
        }
    }

    private String debugTables(){
        String v = Joiner.on(',').join(sqlContext.tableNames());
        if (v==null)return ""; else return v;
    }
}
{code}

this will periodically produce the following:

{quote}
 registered table thread\_0\_50; catalog (thread\_1\_50)
 registered table thread\_4\_50; catalog (thread\_4\_50,thread\_1\_50)
 registered table thread\_1\_50; catalog (thread\_1\_50)
 dropped table thread\_1\_50
 dropped table thread\_4\_50
*Exception **
Exception in thread "pool-6-thread-1" java.lang.Error: org.apache.spark.sql.AnalysisException: no such table thread\_0\_50; line 1 pos 21
  at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1151)
  at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
  at java.lang.Thread.run(Thread.java:745)
Caused by: org.apache.spark.sql.AnalysisException: no such table thread\_0\_50; line 1 pos 21
  at org.apache.spark.sql.catalyst.analysis.package$AnalysisErrorAt.failAnalysis(package.scala:42)
  at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveRelations$.getTable(Analyzer.scala:177)
  at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveRelations$$anonfun$apply$6.applyOrElse(Analyzer.scala:186)
  at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveRelations$$anonfun$apply$6.applyOrElse(Analyzer.scala:181)
  at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$3.apply(TreeNode.scala:188)
  at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$3.apply(TreeNode.scala:188)
  at org.apache.spark.sql.catalyst.trees.CurrentOrigin$.withOrigin(TreeNode.scala:51)
  at org.apache.spark.sql.catalyst.trees.TreeNode.transformDown(TreeNode.scala:187)
  at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$4.apply(TreeNode.scala:208)
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
  at org.apache.spark.sql.catalyst.trees.TreeNode.transformChildrenDown(TreeNode.scala:238)
  at org.apache.spark.sql.catalyst.trees.TreeNode.transformDown(TreeNode.scala:193)
  at org.apache.spark.sql.catalyst.trees.TreeNode.transform(TreeNode.scala:178)
  at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveRelations$.apply(Analyzer.scala:181)
  at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveRelations$.apply(Analyzer.scala:171)
  at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1$$anonfun$apply$2.apply(RuleExecutor.scala:61)
  at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1$$anonfun$apply$2.apply(RuleExecutor.scala:59)
  at scala.collection.LinearSeqOptimized$class.foldLeft(LinearSeqOptimized.scala:111)
  at scala.collection.immutable.List.foldLeft(List.scala:84)
  at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1.apply(RuleExecutor.scala:59)
  at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1.apply(RuleExecutor.scala:51)
  at scala.collection.immutable.List.foreach(List.scala:318)
  at org.apache.spark.sql.catalyst.rules.RuleExecutor.apply(RuleExecutor.scala:51)
  at org.apache.spark.sql.SQLContext$QueryExecution.analyzed$lzycompute(SQLContext.scala:1082)
  at org.apache.spark.sql.SQLContext$QueryExecution.analyzed(SQLContext.scala:1082)
  at org.apache.spark.sql.SQLContext$QueryExecution.assertAnalyzed(SQLContext.scala:1080)
  at org.apache.spark.sql.DataFrame.<init>(DataFrame.scala:133)
  at org.apache.spark.sql.DataFrame$.apply(DataFrame.scala:51)
  at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:101)
  at test.unit.QueryJob.run(ThreadRepro.java:93)
  at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
{quote}

Line 93 is the .sql call...


---

* [SPARK-7775](https://issues.apache.org/jira/browse/SPARK-7775) | *Critical* | **YARN AM tried to sleep negative milliseconds**

{code}
SLF4J: See http://www.slf4j.org/codes.html#multiple\_bindings for an explanation.
SLF4J: Actual binding is of type [org.slf4j.impl.Log4jLoggerFactory]
Exception in thread "Reporter" java.lang.IllegalArgumentException: timeout value is negative
  at java.lang.Thread.sleep(Native Method)
  at org.apache.spark.deploy.yarn.ApplicationMaster$$anon$1.run(ApplicationMaster.scala:356)
{code}

This kills the "reporter thread", which does some allocating too.


---

* [SPARK-7743](https://issues.apache.org/jira/browse/SPARK-7743) | *Major* | **Upgrade Parquet to 1.7**

There are many outstanding issues with the parquet format that have been resolved between the version depended on by spark (1.6.0rc3 as of spark 1.3.1) and the most recent parquet release (1.6.0).

Some of these are things include not supporting schema migration when using parquet with avro, not supporting summary metadata in the parquet footers causing null pointer exceptions reading, and many others.

See https://github.com/apache/parquet-mr/blob/master/CHANGES.md#version-160 for the full list of fixes.


---

* [SPARK-7733](https://issues.apache.org/jira/browse/SPARK-7733) | *Minor* | **Update build, code to use Java 7 for 1.5.0+**

Following the announced intention to drop Java 6 support in Spark 1.5, we should go ahead and switch master to Java 7 for Spark 1.5. We can also then remove a few checks and comments that were specific to supporting Java 6.

I think we might also usefully use the try-with-resources feature to improve / tighten up resource management in Java code, and look at replacing some uses of Guava functions with new JDK equivalents.

It's probably not quite worth replacing {{List<String> foo = new ArrayList<String>()}} with {{List<String> foo = new ArrayList<>()}} everywhere but that simplification might be useful to apply over time as the Java code is otherwise changed.


---

* [SPARK-7717](https://issues.apache.org/jira/browse/SPARK-7717) | *Minor* | **Spark Standalone Web UI showing incorrect total memory, workers and cores**

I launched a Spark master in standalone mode in one of my host and then launched 3 workers on three different hosts. The workers successfully connected to my master and the Web UI showed the correct details. Specifically, the Web UI correctly shows that the total memory and the total cores available for the cluster.

However on one of the worker, I did a "kill -9 <worker process id>" and restarted the worker again. This time though, the master's Web UI shows incorrect total memory and number of cores. The total memory is shown to be 4*n, where "n" is the memory in each worker. Also the total workers is shown as 4 and the total number of cores shown is incorrect, it shows 4*c, where "c" is the number of cores on each worker.


---

* [SPARK-7705](https://issues.apache.org/jira/browse/SPARK-7705) | *Minor* | **Cleanup of .sparkStaging directory fails if application is killed**

When a streaming application is killed while running on YARN the .sparkStaging directory is not cleaned up. Setting spark.yarn.preserve.staging.files=false does not help and still leaves the files around.

The changes in SPARK-7503 do not catch this case since there is no exception in the shutdown. When the application gets killed the AM gets told to shutdown and the shutdown hook is run but the clean up is not triggered.


---

* [SPARK-7699](https://issues.apache.org/jira/browse/SPARK-7699) | *Major* | **Dynamic allocation: initial executors may be canceled before first job**

spark.dynamicAllocation.minExecutors 2
spark.dynamicAllocation.initialExecutors  3
spark.dynamicAllocation.maxExecutors 4

Just run the spark-shell with above configurations, the initial executor number is 2.


---

* [SPARK-7691](https://issues.apache.org/jira/browse/SPARK-7691) | *Major* | **Use type-specific row accessor functions in CatalystTypeConverters' toScala functions**

CatalystTypeConverters's Catalyst row to Scala row converters access columns' values via the generic {{Row.get()}} call rather than using type-specific accessor methods.  If we refactor the internal converter interfaces slightly, we can pass the row and column number into the converter function and allow it to do its own type-specific field extraction, similar to what we do in UnsafeRowConverter.  This is a blocker for being able to unit test new operators that I'm developing as part of Project Tungsten, since those operators may output {{UnsafeRow}} instances which don't support the generic {{get()}}.


---

* [SPARK-7666](https://issues.apache.org/jira/browse/SPARK-7666) | *Major* | **MLlib Python doc parity check**

Check then make the MLlib Python doc to be as complete as the Scala doc.


---

* [SPARK-7663](https://issues.apache.org/jira/browse/SPARK-7663) | *Minor* | **[MLLIB] feature.Word2Vec throws empty iterator error when the vocabulary size is zero**

mllib.feature.Word2Vec at line 442: https://github.com/apache/spark/blob/master/mllib/src/main/scala/org/apache/spark/mllib/feature/Word2Vec.scala#L442 uses `.head` to get the vector size. But it would throw an empty iterator error if the `minCount` is large enough to remove all words in the dataset.

But due to this is not a common scenario, so maybe we can ignore it. If so, we can close the issue directly. If not, I can add some code to print more elegant error hits.


---

* [SPARK-7657](https://issues.apache.org/jira/browse/SPARK-7657) | *Minor* | **[YARN] Show driver link in Spark UI**

Currently, the driver link does not show up in the application UI. It is painful to debug apps running in cluster mode if the link does not show up. Client mode is fine since the links are local to the client machine.

In YARN mode, it is possible to just get this from the YARN container report.


---

* [SPARK-7639](https://issues.apache.org/jira/browse/SPARK-7639) | *Major* | **Add Python API for Statistics.kernelDensity**

Add Python API for org.apache.spark.mllib.stat.Statistics.kernelDensity


---

* [SPARK-7637](https://issues.apache.org/jira/browse/SPARK-7637) | *Minor* | **StructType.merge slow with large nenormalised tables O(N2)**

StructType.merge does a linear scan through the left schema and for each element scans the right schema. This results in a O(N2) algorithm. 
I have found this to be very slow when dealing with large denormalised parquet files.
I would like to make a small change to this function to map the fields of both the left and right schemas resulting in O(N).
This has a sizable increase in performance for large denormalised schemas.

10000x10000 column merge 
2891ms Original  
32ms with mapped field approach.

This merge can be called many times depending upon the number of files that you need to merge the schemas for, compounding the performance.


---

* [SPARK-7635](https://issues.apache.org/jira/browse/SPARK-7635) | *Minor* | **SparkContextSchedulerCreationSuite tests may fail due to unrecognized UnsatisfiedLinkError message.**

When mesos is not available, these tests fail due to the difference in the UnsatisfiedLinkError message with IBM Java vs OpenJDK:

- mesos fine-grained *** FAILED ***
  "mesos (Not found in java.library.path)" did not contain "no mesos in" (SparkContextSchedulerCreationSuite.scala:162)
- mesos coarse-grained *** FAILED ***
  "mesos (Not found in java.library.path)" did not contain "no mesos in" (SparkContextSchedulerCreationSuite.scala:162)
- mesos with zookeeper *** FAILED ***
  "mesos (Not found in java.library.path)" did not contain "no mesos in" (SparkContextSchedulerCreationSuite.scala:162)

PR to be submitted shortly.


---

* [SPARK-7562](https://issues.apache.org/jira/browse/SPARK-7562) | *Major* | **Improve error reporting for expression data type mismatch**

There is currently no error reporting for expression data types in analysis (we rely on "resolved" for that, which doesn't provide great error messages for types). It would be great to have that in checkAnalysis.

Ideally, it should be the responsibility of each Expression itself to specify the types it requires, and report errors that way. We would need to define a simple interface for that so each Expression can implement. The default implementation can just use the information provided by ExpectsInputTypes.expectedChildTypes. 

cc [~marmbrus] what we discussed offline today.


---

* [SPARK-7558](https://issues.apache.org/jira/browse/SPARK-7558) | *Major* | **Log test name when starting and finishing each test**

Right now it's really tough to interpret testing output because logs for different tests are interspersed in the same unit-tests.log file. This makes it particularly hard to diagnose flaky tests. This would be much easier if we logged the test name before and after every test (e.g. "Starting test XX", "Finished test XX"). Then you could get right to the logs.

I think one way to do this might be to create a custom test fixture that logs the test class name and then mix that into every test suite /cc [~joshrosen] for his superb knowledge of Scalatest.


---

* [SPARK-7533](https://issues.apache.org/jira/browse/SPARK-7533) | *Major* | **Decrease spacing between AM-RM heartbeats.**

The current default of spark.yarn.scheduler.heartbeat.interval-ms is 5 seconds.  This is really long.  For reference, the MR equivalent is 1 second.

To avoid noise and unnecessary communication, we could have a fast rate for when we're waiting for executors and a slow rate for when we're just heartbeating.


---

* [SPARK-7527](https://issues.apache.org/jira/browse/SPARK-7527) | *Minor* | **Wrong detection of REPL mode in ClosureCleaner**

If REPL class is not present on the classpath, the {{inIntetpreter}} boolean switch shall be {{false}}, not {{true}} at: https://github.com/apache/spark/blob/master/core/src/main/scala/org/apache/spark/util/ClosureCleaner.scala#L247


---

* [SPARK-7524](https://issues.apache.org/jira/browse/SPARK-7524) | *Major* | **add configs for keytab and principal, move originals to internal**

As spark now supports long running service by updating tokens for namenode, but only accept parameters passed with "--k=v" format which is not very convinient.

I wanna add spark.* configs in properties file and system property


---

* [SPARK-7515](https://issues.apache.org/jira/browse/SPARK-7515) | *Minor* | **Update documentation for PySpark on YARN with cluster mode**

Now PySpark on YARN with cluster mode is supported so let's update doc.


---

* [SPARK-7444](https://issues.apache.org/jira/browse/SPARK-7444) | *Minor* | **Eliminate noisy css warn/error logs for UISeleniumSuite**

Eliminate the following noisy logs for {{UISeleniumSuite}}:

{code}
15/05/07 10:09:50.196 pool-1-thread-1-ScalaTest-running-UISeleniumSuite WARN DefaultCssErrorHandler: CSS error: 'http://192.168.0.170:4040/static/bootstrap.min.css' [793:167] Error in style rule. (Invalid token "*". Was expecting one of: <EOF>, <S>, <IDENT>, "}", ";".)
15/05/07 10:09:50.196 pool-1-thread-1-ScalaTest-running-UISeleniumSuite WARN DefaultCssErrorHandler: CSS warning: 'http://192.168.0.170:4040/static/bootstrap.min.css' [793:167] Ignoring the following declarations in this rule.
15/05/07 10:09:50.197 pool-1-thread-1-ScalaTest-running-UISeleniumSuite WARN DefaultCssErrorHandler: CSS error: 'http://192.168.0.170:4040/static/bootstrap.min.css' [799:325] Error in style rule. (Invalid token "*". Was expecting one of: <EOF>, <S>, <IDENT>, "}", ";".)
15/05/07 10:09:50.197 pool-1-thread-1-ScalaTest-running-UISeleniumSuite WARN DefaultCssErrorHandler: CSS warning: 'http://192.168.0.170:4040/static/bootstrap.min.css' [799:325] Ignoring the following declarations in this rule.
15/05/07 10:09:50.198 pool-1-thread-1-ScalaTest-running-UISeleniumSuite WARN DefaultCssErrorHandler: CSS error: 'http://192.168.0.170:4040/static/bootstrap.min.css' [805:18] Error in style rule. (Invalid token "*". Was expecting one of: <EOF>, <S>, <IDENT>, "}", ";".)
15/05/07 10:09:50.198 pool-1-thread-1-ScalaTest-running-UISeleniumSuite WARN DefaultCssErrorHandler: CSS warning: 'http://192.168.0.170:4040/static/bootstrap.min.css' [805:18] Ignoring the following declarations in this rule.
{code}


---

* [SPARK-7440](https://issues.apache.org/jira/browse/SPARK-7440) | *Major* | **Remove physical Distinct operator in favor of Aggregate**

We can just rewrite distinct using groupby (i.e. aggregate operator).


---

* [SPARK-7389](https://issues.apache.org/jira/browse/SPARK-7389) | *Major* | **Tachyon integration improvement**

Two main changes:

1. Add two functions in ExternalBlockManager, which are putValues and getValues, because the implementation may not rely on the putBytes and getBytes

2. improve Tachyon integration.
Currently, when putting data into Tachyon, Spark first serialize all data in one partition into a ByteBuffer, and then write into Tachyon, this will use much memory and increase GC overhead

when getting data from Tachyon, getValues depends on getBytes, which also read all data into On heap byte arry, and result in much memory usage.
This PR changes the approach of the two functions, make them read / write data by stream to reduce memory usage.

In our testing, when data size is huge, this patch reduces about 30% GC time and 70% full GC time, and total execution time reduces about 10%


---

* [SPARK-7387](https://issues.apache.org/jira/browse/SPARK-7387) | *Minor* | **CrossValidator example code in Python**

We should add example code for CrossValidator after SPARK-6940 is merged. This should be similar to the CrossValidator example in Scala/Java.


---

* [SPARK-7357](https://issues.apache.org/jira/browse/SPARK-7357) | *Minor* | **Improving HBaseTest example**

Minor improvement to HBaseTest example, when Hbase related configurations e.g: zookeeper quorum, zookeeper client port or zookeeper.znode.parent are not set to default (localhost:2181), connection to zookeeper might hang as shown in following stack

15/03/26 18:31:20 INFO zookeeper.ZooKeeper: Initiating client connection, connectString=xxx.xxx.xxx:2181 sessionTimeout=90000 watcher=hconnection-0x322a4437, quorum=xxx.xxx.xxx:2181, baseZNode=/hbase
15/03/26 18:31:21 INFO zookeeper.ClientCnxn: Opening socket connection to server 9.30.94.121:2181. Will not attempt to authenticate using SASL (unknown error)
15/03/26 18:31:21 INFO zookeeper.ClientCnxn: Socket connection established to xxx.xxx.xxx/9.30.94.121:2181, initiating session
15/03/26 18:31:21 INFO zookeeper.ClientCnxn: Session establishment complete on server xxx.xxx.xxx/9.30.94.121:2181, sessionid = 0x14c53cd311e004b, negotiated timeout = 40000
15/03/26 18:31:21 INFO client.ZooKeeperRegistry: ClusterId read in ZooKeeper is null

this is due to hbase-site.xml is not placed on spark class path.


---

* [SPARK-7261](https://issues.apache.org/jira/browse/SPARK-7261) | *Blocker* | **Change default log level to WARN in the REPL**

We should add a log4j properties file for the repl (log4j-defaults-repl.properties) that has the level of warning. The main reason for doing this is that we now display nice progress bars in the REPL so the need for task level INFO messages is much less.

The best way to accomplish this is the following:
1. Add a second logging defaults file called log4j-defaults-repl.properties that has log level WARN. https://github.com/apache/spark/blob/branch-1.4/core/src/main/resources/org/apache/spark/log4j-defaults.properties
2. When logging is initialized, check whether you are inside the REPL. If so, then use that one:
https://github.com/apache/spark/blob/branch-1.4/core/src/main/scala/org/apache/spark/Logging.scala#L124
3. The printed message should say something like:
Using Spark's repl log4j profile: org/apache/spark/log4j-defaults-repl.properties
To adjust logging level use sc.setLogLevel("INFO")


---

* [SPARK-7199](https://issues.apache.org/jira/browse/SPARK-7199) | *Major* | **Add date and timestamp support to UnsafeRow**

We should add date and timestamp support to UnsafeRow.  This should be fairly easy, as both data types are fixed-length.


---

* [SPARK-7186](https://issues.apache.org/jira/browse/SPARK-7186) | *Blocker* | **Decouple internal Row from external Row**

Currently, we use o.a.s.sql.Row both internally and externally. The external interface is wider than what the internal needs because it is designed to facilitate end-user programming. This design has proven to be very error prone and cumbersome for internal Row implementations.

As a first step, we should just create an InternalRow interface in the catalyst module, which is identical to the current Row interface. And we should switch all internal operators/expressions to use this InternalRow instead. When we need to expose Row, we convert the InternalRow implementation into Row for users.

After this, we can start removing methods that don't make sense for InternalRow (in a separate ticket). This is probably one of the most important refactoring in Spark 1.5.


---

* [SPARK-7184](https://issues.apache.org/jira/browse/SPARK-7184) | *Major* | **Investigate turning codegen on by default**

If it is not the default, users get suboptimal performance out of the box, and the codegen path falls behind the interpreted path over time.

The best option might be to have only the codegen path.


---

* [SPARK-7161](https://issues.apache.org/jira/browse/SPARK-7161) | *Minor* | **Provide REST api to download event logs from History Server**

The idea is to tar up the logs and return the tar.gz file using a REST api. This can be used for debugging even after the app is done.

I am planning to take a look at this.


---

* [SPARK-7158](https://issues.apache.org/jira/browse/SPARK-7158) | *Blocker* | **collect and take return different results**

Reported by [~rams]

{code}
import java.util.UUID
import org.apache.spark.sql.\_
import org.apache.spark.sql.types.\_
val rdd = sc.parallelize(List(1,2,3), 2)
val schema = StructType(List(StructField("index",IntegerType,true)))
val df = sqlContext.createDataFrame(rdd.map(p => Row(p)), schema)
def id:() => String = () => {UUID.randomUUID().toString()}
def square:Int => Int = (x: Int) => {x * x}
val dfWithId = df.withColumn("id",callUDF(id, StringType)).cache() //expect the ID to have materialized at this point
dfWithId.collect()
//res0: Array[org.apache.spark.sql.Row] = Array([1,43c7b8e2-b4a3-43ee-beff-0bb4b7d6c1b1], [2,efd061be-e8cc-43fa-956e-cfd6e7355982], [3,79b0baab-627c-4761-af0d-8995b8c5a125])

val dfWithIdAndSquare = dfWithId.withColumn("square",callUDF(square, IntegerType, col("index")))
dfWithIdAndSquare.collect()
//res1: Array[org.apache.spark.sql.Row] = Array([1,a3b2e744-a0a1-40fe-8133-87a67660b4ab,1], [2,0a7052a0-6071-4ef5-a25a-2670248ea5cd,4], [3,209f269e-207a-4dfd-a186-738be5db2eff,9])
//why are the IDs in lines 11 and 15 different?
{code}

The randomly generated IDs are the same if show (which uses take under the hood) is used instead of collect.


---

* [SPARK-7067](https://issues.apache.org/jira/browse/SPARK-7067) | *Major* | **Can't resolve nested column in ORDER BY**

In order to avoid breaking existing HiveQL queries, the current way we resolve column in ORDER BY is: first resolve based on what comes from the select clause and then fall back on its child only when this fails.

However, this case will fail:
{code}
test("orderby queries") {
  jsonRDD(sparkContext.makeRDD(
    """{"a": {"b": [{"c": 1}]}, "b": [{"d": 1}]}""" :: Nil)).registerTempTable("t")
  sql("SELECT a.b FROM t ORDER BY b[0].d").queryExecution.analyzed
}
{code}

As hive doesn't support resolve ORDER BY attribute not exist in select clause, so this problem is spark sql only.


---

* [SPARK-7063](https://issues.apache.org/jira/browse/SPARK-7063) | *Minor* | **Update lz4 for Java 7 to avoid: when lz4 compression is used, it causes core dump**

this issue is initially noticed by using IBM JDK, below please find the stack track of this issue, caused by violating the rule in critical section. 

#0 0x000000314340f3cb in raise () from /service/pmrs/45638/20/lib64/libpthread.so.0
#1 0x00007f795b0323be in j9dump\_create () from /service/pmrs/45638/20/opt/ibm/biginsights/jdk/jre/lib/amd64/compressedrefs/libj9prt27.so
#2 0x00007f795a88ba2a in doSystemDump () from /service/pmrs/45638/20/opt/ibm/biginsights/jdk/jre/lib/amd64/compressedrefs/libj9dmp27.so
#3 0x00007f795b0405d5 in j9sig\_protect () from /service/pmrs/45638/20/opt/ibm/biginsights/jdk/jre/lib/amd64/compressedrefs/libj9prt27.so
#4 0x00007f795a88a1fd in runDumpFunction () from /service/pmrs/45638/20/opt/ibm/biginsights/jdk/jre/lib/amd64/compressedrefs/libj9dmp27.so
#5 0x00007f795a88dbab in runDumpAgent () from /service/pmrs/45638/20/opt/ibm/biginsights/jdk/jre/lib/amd64/compressedrefs/libj9dmp27.so
#6 0x00007f795a8a1c49 in triggerDumpAgents () from /service/pmrs/45638/20/opt/ibm/biginsights/jdk/jre/lib/amd64/compressedrefs/libj9dmp27.so
#7 0x00007f795a4518fe in doTracePoint () from /service/pmrs/45638/20/opt/ibm/biginsights/jdk/jre/lib/amd64/compressedrefs/libj9trc27.so
#8 0x00007f795a45210e in j9Trace () from /service/pmrs/45638/20/opt/ibm/biginsights/jdk/jre/lib/amd64/compressedrefs/libj9trc27.so
#9 0x00007f79590e46e1 in MM\_StandardAccessBarrier::jniReleasePrimitiveArrayCritical(J9VMThread*, \_jarray*, void*, int) ()
from /service/pmrs/45638/20/opt/ibm/biginsights/jdk/jre/lib/amd64/compressedrefs/libj9gc27.so
#10 0x00007f7938bc397c in Java\_net\_jpountz\_lz4\_LZ4JNI\_LZ4\_1compress\_1limitedOutput () from /service/pmrs/45638/20/tmp/liblz4-java7155003924599399415.so
#11 0x00007f795b707149 in VMprJavaSendNative () from /service/pmrs/45638/20/opt/ibm/biginsights/jdk/jre/lib/amd64/compressedrefs/libj9vm27.so
#12 0x0000000000000000 in ?? ()

this is an issue introduced by a bug in net.jpountz.lz4.lz4-1.2.0.jar, and fixed in 1.3.0 version.  Sun JDK /Open JDK doesn't complain this issue, but this issue will trigger assertion failure when IBM JDK is used. here is the link to the fix 
https://github.com/jpountz/lz4-java/commit/07229aa2f788229ab4f50379308297f428e3d2d2


---

* [SPARK-7042](https://issues.apache.org/jira/browse/SPARK-7042) | *Minor* | **Spark version of akka-actor\_2.11 is not compatible with the official akka-actor\_2.11 2.3.x**

When connecting to a remote Spark cluster (that runs Spark branch-1.3 built with Scala 2.11) from an application that uses akka 2.3.9 I get the following error:

{noformat}
2015-04-22 09:01:38,924 - [WARN] - [akka.remote.ReliableDeliverySupervisor] [sparkDriver-akka.actor.default-dispatcher-5] -
Association with remote system [akka.tcp://sparkExecutor@server:59007] has failed, address is now gated for [5000] ms.
Reason is: [akka.actor.Identify; local class incompatible: stream classdesc serialVersionUID = -213377755528332889, local class serialVersionUID = 1].
{noformat}

It looks like akka-actor\_2.11 2.3.4-spark that is used by Spark has been built using Scala compiler 2.11.0 that ignores SerialVersionUID annotations (see https://issues.scala-lang.org/browse/SI-8549).

The following steps can resolve the issue:
- re-build the custom akka library that is used by Spark with the more recent version of Scala compiler (e.g. 2.11.6) 
- deploy a new version (e.g. 2.3.4.1-spark) to a maven repo
- update version of akka used by spark (master and 1.3 branch)

I would also suggest to upgrade to the latest version of akka 2.3.9 (or 2.3.10 that should be released soon).


---

* [SPARK-7020](https://issues.apache.org/jira/browse/SPARK-7020) | *Critical* | **Restrict module testing based on commit contents**

Currently all builds trigger all tests. This does not need to happen and, to minimize the test window, the {{git}} commit contents should be checked to determine which modules were affected and, for each, only run those tests.


---

* [SPARK-7017](https://issues.apache.org/jira/browse/SPARK-7017) | *Major* | **Refactor dev/run-tests into Python**

This issue is to specifically track the progress of the {{dev/run-tests}} script into Python.


---

* [SPARK-6973](https://issues.apache.org/jira/browse/SPARK-6973) | *Minor* | **The total stages on the allJobsPage is wrong**

The job has two stages,  map and collect stage. Both two retried two times. The first and second time of map stage is successful, and the third time skipped. Of collect stage, the first and second time is failed, and the third time is successful.
On the allJobs page, the number of total stages is allStages-skippedStages. Mostly it's wright, but here I think total stages should be 2.

The example:
Stage 0: Map Stage
Stage 1: Collect Stage

Stage:     Stage 0 -> Stage 1 -> Stage 0(retry 1) -> Stage 1(retry 1) -> Stage 0(retry 2) -> Stage 1(retry 2)
Status：  Success ->     Fail     ->        Success       ->             Fail      ->                Skipped     ->             Success

Though one of Stage 0 is skipped, actually it's executed. So I think it should be included in the total number.


---

* [SPARK-6964](https://issues.apache.org/jira/browse/SPARK-6964) | *Critical* | **Support Cancellation in the Thrift Server**

There is already a hook in {{ExecuteStatementOperation}}, we just need to connect it to the job group cancellation support we already have and make sure the various drivers support it.


---

* [SPARK-6820](https://issues.apache.org/jira/browse/SPARK-6820) | *Critical* | **Convert NAs to null type in SparkR DataFrames**

While converting RDD or local R DataFrame to a SparkR DataFrame we need to handle missing values or NAs.
We should convert NAs to SparkSQL's null type to handle the conversion correctly


---

* [SPARK-6782](https://issues.apache.org/jira/browse/SPARK-6782) | *Minor* | **add sbt-revolver plugin to sbt build**

[sbt-revolver|https://github.com/spray/sbt-revolver] is a very useful sbt plugin for development.  You can start & stop long-running processes without being forced to kill the entire sbt session.  This can save a lot of time in the development cycle.

With sbt-revolver, you run {{re-start}} to start your app in a forked jvm.   It immediately gives you the sbt shell back, so you can continue to code.  When you want to reload your app with whatever changes you make, you just run {{re-start}} again -- it will kill the forked jvm, recompile your code, and start the process again.  (Or you can run {{re-stop}} at any time to kill the forked jvm.)

I used this a ton while working on adding json support to the UI in https://issues.apache.org/jira/browse/SPARK-3454 (as the history server never stops, without this plugin I had to kill sbt between every time I'd run it manually to play with the behavior.)  I don't write a lot of spark-streaming jobs, but I've also used this plugin in that case, since again my streaming jobs never terminate -- I imagine it would be really useful to anybody that is modifying streaming and wants to test out running some jobs.

I'll post a PR.


---

* [SPARK-6566](https://issues.apache.org/jira/browse/SPARK-6566) | *Major* | **Update Spark to use the latest version of Parquet libraries**

There are a lot of bug fixes in the latest version of parquet (1.6.0rc7). E.g. PARQUET-136

It would be good to update Spark to use the latest parquet version.

The following changes are required:
{code}
diff --git a/pom.xml b/pom.xml
index 5ad39a9..095b519 100644
--- a/pom.xml
+++ b/pom.xml
@@ -132,7 +132,7 @@
     <!-- Version used for internal directory structure -->
     <hive.version.short>0.13.1</hive.version.short>
     <derby.version>10.10.1.1</derby.version>
-    <parquet.version>1.6.0rc3</parquet.version>
+    <parquet.version>1.6.0rc7</parquet.version>
     <jblas.version>1.2.3</jblas.version>
     <jetty.version>8.1.14.v20131031</jetty.version>
     <orbit.version>3.0.0.v201112011016</orbit.version>
{code}
and
{code}
--- a/sql/core/src/main/scala/org/apache/spark/sql/parquet/ParquetTableOperations.scala
+++ b/sql/core/src/main/scala/org/apache/spark/sql/parquet/ParquetTableOperations.scala
@@ -480,7 +480,7 @@ private[parquet] class FilteringParquetRowInputFormat
     globalMetaData = new GlobalMetaData(globalMetaData.getSchema,
       mergedMetadata, globalMetaData.getCreatedBy)
 
-    val readContext = getReadSupport(configuration).init(
+    val readContext = ParquetInputFormat.getReadSupportInstance(configuration).init(
       new InitContext(configuration,
         globalMetaData.getKeyValueMetaData,
         globalMetaData.getSchema))

{code}

I am happy to prepare a pull request if necessary.


---

* [SPARK-6444](https://issues.apache.org/jira/browse/SPARK-6444) | *Major* | **SQL functions (either built-in or UDF) should check for data types of their arguments**

SQL functions should remain unresolved if their arguments don't satisfy their argument type requirements. Take {{Sum}} as an example, the data type of {{Sum(Literal("1"))}} is {{StringType}}, and now it's considered resolved, which may cause problems.

Here is a simplified version of a problematic query reported by [~cenyuhai]. Spark shell session for reproducing this issue:
{code}
import sqlContext.\_

sql("""
    CREATE TABLE IF NOT EXISTS ut (
        c1 STRING,
        c2 STRING
    )
    """)

sql("""
    SELECT SUM(c3) FROM (
        SELECT SUM(c1) AS c3, 0 AS c4 FROM ut     -- (1)
        UNION ALL
        SELECT 0 AS c3, COUNT(c2) AS c4 FROM ut   -- (2)
    ) t
    """).queryExecution.optimizedPlan
{code}
Exception thrown:
{noformat}
java.util.NoSuchElementException: key not found: c3#10
        at scala.collection.MapLike$class.default(MapLike.scala:228)
        at org.apache.spark.sql.catalyst.expressions.AttributeMap.default(AttributeMap.scala:29)
        at scala.collection.MapLike$class.apply(MapLike.scala:141)
        at org.apache.spark.sql.catalyst.expressions.AttributeMap.apply(AttributeMap.scala:29)
        at org.apache.spark.sql.catalyst.optimizer.UnionPushdown$$anonfun$1.applyOrElse(Optimizer.scala:80)
        at org.apache.spark.sql.catalyst.optimizer.UnionPushdown$$anonfun$1.applyOrElse(Optimizer.scala:79)
        at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$3.apply(TreeNode.scala:187)
        at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$3.apply(TreeNode.scala:187)
        at org.apache.spark.sql.catalyst.trees.CurrentOrigin$.withOrigin(TreeNode.scala:50)
        at org.apache.spark.sql.catalyst.trees.TreeNode.transformDown(TreeNode.scala:186)
        at org.apache.spark.sql.catalyst.trees.TreeNode.transform(TreeNode.scala:177)
        at org.apache.spark.sql.catalyst.optimizer.UnionPushdown$.pushToRight(Optimizer.scala:79)
        at org.apache.spark.sql.catalyst.optimizer.UnionPushdown$$anonfun$apply$1$$anonfun$applyOrElse$6.apply(Optimizer.scala:101)
        at org.apache.spark.sql.catalyst.optimizer.UnionPushdown$$anonfun$apply$1$$anonfun$applyOrElse$6.apply(Optimizer.scala:101)
        ...
{noformat}
The analyzed plan of the query is:
{noformat}
== Analyzed Logical Plan ==
!Aggregate [], [SUM(CAST(c3#153, DoubleType)) AS \_c0#157]                   (c)
 Union
  Project [CAST(c3#153, StringType) AS c3#164,c4#163L]                      (d)
   Project [c3#153,CAST(c4#154, LongType) AS c4#163L]
    Aggregate [], [SUM(CAST(c1#158, DoubleType)) AS c3#153,0 AS c4#154]     (b)
     MetastoreRelation default, ut, None
  Project [CAST(c3#155, StringType) AS c3#162,c4#156L]                      (a)
   Aggregate [], [0 AS c3#155,COUNT(c2#161) AS c4#156L]
    MetastoreRelation default, ut, None
{noformat}
This case is very interesting. It involves 2 analysis rules, {{WidenTypes}} and {{PromoteStrings}}, and 1 optimizer rule, {{UnionPushdown}}. To see the details, we can turn on TRACE level log and check detailed rule execution process. The TL;DR is:
# Since {{c1}} is STRING, {{SUM(c1)}} is also STRING (which is the root cause of the whole issue).
# {{c3}} in {{(1)}} is STRING, while the one in {{(2)}} is INT. Thus {{WidenTypes}} casts the latter to STRING to ensure both sides of the UNION have the same schema.  See {{(a)}}.
# {{PromoteStrings}} casts {{c1}} in {{SUM(c1)}} to DOUBLE, which consequently changes data type of {{SUM(c1)}} and {{c3}} to DOUBLE.  See {{(b)}}.
# {{c3}} in the top level {{Aggregate}} is resolved as DOUBLE (c)
# Since schemas of the two sides of the UNION are different again, {{WidenTypes}} casts {{SUM(c1) AS c3}} to STRING.  See {{(d)}}.
# Int the top level {{Aggregate}}, {{c3#153}} becomes a missing input attribute because it is hidden by {{(d)}} now.
# In the optimizing phase, {{UnionPushdown}} throws because the top level {{Aggregate}} has missing input attribute.


---

* [SPARK-6419](https://issues.apache.org/jira/browse/SPARK-6419) | *Major* | **GenerateOrdering does not support BinaryType and complex types.**

When user want to order by binary columns or columns with complex types and code gen is enabled, there will be a MatchError ([see here|https://github.com/apache/spark/blob/v1.3.0/sql/catalyst/src/main/scala/org/apache/spark/sql/catalyst/expressions/codegen/GenerateOrdering.scala#L45]). We can either add supports for these types or have a function to check if we can safely call GenerateOrdering (like the canBeCodeGened for HashAggregation Strategy).


---

* [SPARK-6411](https://issues.apache.org/jira/browse/SPARK-6411) | *Major* | **PySpark DataFrames can't be created if any datetimes have timezones**

I am unable to create a DataFrame with PySpark if any of the {{datetime}} objects that pass through the conversion process have a {{tzinfo}} property set. 

This works fine:

{code}
In [9]: sc.parallelize([(datetime.datetime(2014, 7, 8, 11, 10),)]).toDF().collect()
Out[9]: [Row(\_1=datetime.datetime(2014, 7, 8, 11, 10))]
{code}

as expected, the tuple's schema is inferred as having one anonymous column with a datetime field, and the datetime roundtrips through to the Java side python deserialization and then back into python land upon {{collect}}. This however:

{code}
In [5]: from dateutil.tz import tzutc

In [10]: sc.parallelize([(datetime.datetime(2014, 7, 8, 11, 10, tzinfo=tzutc()),)]).toDF().collect()
{code}

explodes with

{code}
Py4JJavaError: An error occurred while calling z:org.apache.spark.api.python.PythonRDD.collectAndServe.
: org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 12.0 failed 1 times, most recent failure: Lost task 0.0 in stage 12.0 (TID 12, localhost): net.razorvine.pickle.PickleException: invalid pickle data for datetime; expected 1 or 7 args, got 2
	at net.razorvine.pickle.objects.DateTimeConstructor.createDateTime(DateTimeConstructor.java:69)
	at net.razorvine.pickle.objects.DateTimeConstructor.construct(DateTimeConstructor.java:32)
	at net.razorvine.pickle.Unpickler.load\_reduce(Unpickler.java:617)
	at net.razorvine.pickle.Unpickler.dispatch(Unpickler.java:170)
	at net.razorvine.pickle.Unpickler.load(Unpickler.java:84)
	at net.razorvine.pickle.Unpickler.loads(Unpickler.java:97)
	at org.apache.spark.api.python.SerDeUtil$$anonfun$pythonToJava$1$$anonfun$apply$1.apply(SerDeUtil.scala:154)
	at org.apache.spark.api.python.SerDeUtil$$anonfun$pythonToJava$1$$anonfun$apply$1.apply(SerDeUtil.scala:153)
	at scala.collection.Iterator$$anon$13.hasNext(Iterator.scala:371)
	at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
	at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
	at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
	at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
	at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
	at org.apache.spark.api.python.SerDeUtil$AutoBatchedPickler.hasNext(SerDeUtil.scala:119)
	at scala.collection.Iterator$class.foreach(Iterator.scala:727)
	at org.apache.spark.api.python.SerDeUtil$AutoBatchedPickler.foreach(SerDeUtil.scala:114)
	at scala.collection.generic.Growable$class.$plus$plus$eq(Growable.scala:48)
	at scala.collection.mutable.ArrayBuffer.$plus$plus$eq(ArrayBuffer.scala:103)
	at scala.collection.mutable.ArrayBuffer.$plus$plus$eq(ArrayBuffer.scala:47)
	at scala.collection.TraversableOnce$class.to(TraversableOnce.scala:273)
	at org.apache.spark.api.python.SerDeUtil$AutoBatchedPickler.to(SerDeUtil.scala:114)
	at scala.collection.TraversableOnce$class.toBuffer(TraversableOnce.scala:265)
	at org.apache.spark.api.python.SerDeUtil$AutoBatchedPickler.toBuffer(SerDeUtil.scala:114)
	at scala.collection.TraversableOnce$class.toArray(TraversableOnce.scala:252)
	at org.apache.spark.api.python.SerDeUtil$AutoBatchedPickler.toArray(SerDeUtil.scala:114)
	at org.apache.spark.rdd.RDD$$anonfun$17.apply(RDD.scala:813)
	at org.apache.spark.rdd.RDD$$anonfun$17.apply(RDD.scala:813)
	at org.apache.spark.SparkContext$$anonfun$runJob$5.apply(SparkContext.scala:1520)
	at org.apache.spark.SparkContext$$anonfun$runJob$5.apply(SparkContext.scala:1520)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:61)
	at org.apache.spark.scheduler.Task.run(Task.scala:64)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:203)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:744)

Driver stacktrace:
	at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$failJobAndIndependentStages(DAGScheduler.scala:1211)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1200)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1199)
	at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
	at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
	at org.apache.spark.scheduler.DAGScheduler.abortStage(DAGScheduler.scala:1199)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:693)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:693)
	at scala.Option.foreach(Option.scala:236)
	at org.apache.spark.scheduler.DAGScheduler.handleTaskSetFailed(DAGScheduler.scala:693)
	at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1401)
	at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1362)
	at org.apache.spark.util.EventLoop$$anon$1.run(EventLoop.scala:48)
{code}

By the looks of the error, it would appear as though the java depickler isn't expecting the pickle stream to provide that extra timezone constructor argument.

Here's the disassembled pickle stream for a timezone-less datetime:

{code}
>>> object = datetime.datetime(2014, 7, 8, 11, 10)
>>> stream = pickle.dumps(object)
>>> pickletools.dis(stream)
    0: c    GLOBAL     'datetime datetime'
   19: p    PUT        0
   22: (    MARK
   23: S        STRING     '\x07\xde\x07\x08\x0b\n\x00\x00\x00\x00'
   65: p        PUT        1
   68: t        TUPLE      (MARK at 22)
   69: p    PUT        2
   72: R    REDUCE
   73: p    PUT        3
   76: .    STOP
highest protocol among opcodes = 0
{code}

and then for one with a timezone:

{code}
>>> object = datetime.datetime(2014, 7, 8, 11, 10, tzinfo=tzutc())
>>> stream = pickle.dumps(object)
>>> pickletools.dis(stream)
    0: c    GLOBAL     'datetime datetime'
   19: p    PUT        0
   22: (    MARK
   23: S        STRING     '\x07\xde\x07\x08\x0b\n\x00\x00\x00\x00'
   65: p        PUT        1
   68: c        GLOBAL     'copy\_reg \_reconstructor'
   93: p        PUT        2
   96: (        MARK
   97: c            GLOBAL     'dateutil.tz tzutc'
  116: p            PUT        3
  119: c            GLOBAL     'datetime tzinfo'
  136: p            PUT        4
  139: g            GET        4
  142: (            MARK
  143: t                TUPLE      (MARK at 142)
  144: R            REDUCE
  145: p            PUT        5
  148: t            TUPLE      (MARK at 96)
  149: p        PUT        6
  152: R        REDUCE
  153: p        PUT        7
  156: t        TUPLE      (MARK at 22)
  157: p    PUT        8
  160: R    REDUCE
  161: p    PUT        9
  164: .    STOP
highest protocol among opcodes = 0
{code}

I would bet that the Pyrolite library is missing support for that nested object as a second tuple member in the reconstruction of the datetime object. Has anyone hit this before? Any more information I can provide?


---

* [SPARK-6390](https://issues.apache.org/jira/browse/SPARK-6390) | *Major* | **Add MatrixUDT in PySpark**

After SPARK-6309, we should support MatrixUDT in PySpark too.


---

* [SPARK-6324](https://issues.apache.org/jira/browse/SPARK-6324) | *Minor* | **Clean up usage code in command-line scripts**

With SPARK-4924, most of the logic to launch Spark classes is in a new Java library. Pretty much the only thing left in scripts are the usage strings for each command; that uses some rather ugly and hacky code to handle, since it requires the library communicating back with the scripts that they should print a usage string instead of executing a command.

The scripts have to process that special command (differently on bash and Windows), and do filtering of the actual output of usage strings to account for different commands.

Instead, the library itself should handle all this by executing the classes with a "help" argument; and the classes should be able to handle that argument to do the right thing. So this would require both changes in the launcher library, and in all the main entry points to make sure they properly respond to the "help" by printing the correct help message.

This would make things a lot cleaner and a lot easier to maintain.


---

* [SPARK-6246](https://issues.apache.org/jira/browse/SPARK-6246) | *Minor* | **spark-ec2 can't handle clusters with \> 100 nodes**

This appears to be a new restriction, perhaps resulting from our upgrade of boto. Maybe it's a new restriction from EC2. Not sure yet.

We didn't have this issue around the Spark 1.1.0 time frame from what I can remember. I'll track down where the issue is and when it started.

Attempting to launch a cluster with 100 slaves yields the following:

{code}
Spark AMI: ami-35b1885c
Launching instances...
Launched 100 slaves in us-east-1c, regid = r-9c408776
Launched master in us-east-1c, regid = r-92408778
Waiting for AWS to propagate instance metadata...
Waiting for cluster to enter 'ssh-ready' state.ERROR:boto:400 Bad Request
ERROR:boto:<?xml version="1.0" encoding="UTF-8"?>
<Response><Errors><Error><Code>InvalidRequest</Code><Message>101 exceeds the maximum number of instance IDs that can be specificied (100). Please specify fewer than 100 instance IDs.</Message></Error></Errors><RequestID>217fd6ff-9afa-4e91-86bc-ab16fcc442d8</RequestID></Response>
Traceback (most recent call last):
  File "./ec2/spark\_ec2.py", line 1338, in <module>
    main()
  File "./ec2/spark\_ec2.py", line 1330, in main
    real\_main()
  File "./ec2/spark\_ec2.py", line 1170, in real\_main
    cluster\_state='ssh-ready'
  File "./ec2/spark\_ec2.py", line 795, in wait\_for\_cluster\_state
    statuses = conn.get\_all\_instance\_status(instance\_ids=[i.id for i in cluster\_instances])
  File "/path/apache/spark/ec2/lib/boto-2.34.0/boto/ec2/connection.py", line 737, in get\_all\_instance\_status
    InstanceStatusSet, verb='POST')
  File "/path/apache/spark/ec2/lib/boto-2.34.0/boto/connection.py", line 1204, in get\_object
    raise self.ResponseError(response.status, response.reason, body)
boto.exception.EC2ResponseError: EC2ResponseError: 400 Bad Request
<?xml version="1.0" encoding="UTF-8"?>
<Response><Errors><Error><Code>InvalidRequest</Code><Message>101 exceeds the maximum number of instance IDs that can be specificied (100). Please specify fewer than 100 instance IDs.</Message></Error></Errors><RequestID>217fd6ff-9afa-4e91-86bc-ab16fcc442d8</RequestID></Response>
{code}

This problem seems to be with {{get\_all\_instance\_status()}}, though I am not sure if other methods are affected too.


---

* [SPARK-6164](https://issues.apache.org/jira/browse/SPARK-6164) | *Minor* | **CrossValidatorModel should keep stats from fitting**

CrossValidator computes stats for each (model, fold) pair, but they are thrown out by the created model.  CrossValidatorModel should keep this info and expose it to users.


---

* [SPARK-5479](https://issues.apache.org/jira/browse/SPARK-5479) | *Major* | **PySpark on yarn mode need to support non-local python files**

 In SPARK-5162 [~vgrigor] reports this:
Now following code cannot work:
aws emr add-steps --cluster-id "j-XYWIXMD234" \
--steps Name=SparkPi,Jar=s3://eu-west-1.elasticmapreduce/libs/script-runner/script-runner.jar,Args=[/home/hadoop/spark/bin/spark-submit,--deploy-mode,cluster,--master,yarn-cluster,--py-files,s3://mybucketat.amazonaws.com/tasks/main.py,main.py,param1],ActionOnFailure=CONTINUE

so we need to support non-local python files on yarn client and cluster mode.
before submitting application to Yarn, we need to download non-local files to local or hdfs path.
or spark.yarn.dist.files need to support other non-local files.


---

* [SPARK-5451](https://issues.apache.org/jira/browse/SPARK-5451) | *Critical* | **And predicates are not properly pushed down**

This issue is actually caused by PARQUET-173.

The following {{spark-shell}} session can be used to reproduce this bug:
{code}
import org.apache.spark.sql.SQLContext

val sqlContext = new SQLContext(sc)
import sc.\_
import sqlContext.\_

case class KeyValue(key: Int, value: String)

parallelize(1 to 1024 * 1024 * 20).
  flatMap(i => Seq.fill(10)(KeyValue(i, i.toString))).
  saveAsParquetFile("large.parquet")

parquetFile("large.parquet").registerTempTable("large")

hadoopConfiguration.set("parquet.task.side.metadata", "false")
sql("SET spark.sql.parquet.filterPushdown=true")

sql("SELECT value FROM large WHERE 1024 < value AND value < 2048").collect()
{code}
From the log we can find:
{code}
There were no row groups that could be dropped due to filter predicates
{code}


---

* [SPARK-5090](https://issues.apache.org/jira/browse/SPARK-5090) | *Major* | **The improvement of python converter for hbase**

The python converter `HBaseResultToStringConverter` provided in the HBaseConverter.scala returns only the value of first column in the result. It limits the utility of this converter, because it returns only one value per row(perhaps there are several version in hbase) and moreover it loses the other information of record, such as column:cell, timestamp. 

Here we would like to propose an improvement about python converter which returns all the records in the results (in a single string) with more complete information. We would like also make some improvements for hbase\_inputformat.py


---

* [SPARK-4258](https://issues.apache.org/jira/browse/SPARK-4258) | *Critical* | **NPE with new Parquet Filters**

{code}
Caused by: org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 21.0 failed 4 times, most recent failure: Lost task 0.3 in stage 21.0 (TID 160, ip-10-0-247-144.us-west-2.compute.internal): java.lang.NullPointerException: 
        parquet.io.api.Binary$ByteArrayBackedBinary.compareTo(Binary.java:206)
        parquet.io.api.Binary$ByteArrayBackedBinary.compareTo(Binary.java:162)
        parquet.filter2.statisticslevel.StatisticsFilter.visit(StatisticsFilter.java:100)
        parquet.filter2.statisticslevel.StatisticsFilter.visit(StatisticsFilter.java:47)
        parquet.filter2.predicate.Operators$Eq.accept(Operators.java:162)
        parquet.filter2.statisticslevel.StatisticsFilter.visit(StatisticsFilter.java:210)
        parquet.filter2.statisticslevel.StatisticsFilter.visit(StatisticsFilter.java:47)
        parquet.filter2.predicate.Operators$Or.accept(Operators.java:302)
        parquet.filter2.statisticslevel.StatisticsFilter.visit(StatisticsFilter.java:201)
        parquet.filter2.statisticslevel.StatisticsFilter.visit(StatisticsFilter.java:47)
        parquet.filter2.predicate.Operators$And.accept(Operators.java:290)
        parquet.filter2.statisticslevel.StatisticsFilter.canDrop(StatisticsFilter.java:52)
        parquet.filter2.compat.RowGroupFilter.visit(RowGroupFilter.java:46)
        parquet.filter2.compat.RowGroupFilter.visit(RowGroupFilter.java:22)
        parquet.filter2.compat.FilterCompat$FilterPredicateCompat.accept(FilterCompat.java:108)
        parquet.filter2.compat.RowGroupFilter.filterRowGroups(RowGroupFilter.java:28)
        parquet.hadoop.ParquetRecordReader.initializeInternalReader(ParquetRecordReader.java:158)
        parquet.hadoop.ParquetRecordReader.initialize(ParquetRecordReader.java:138)
{code}

This occurs when reading parquet data encoded with the older version of the library for TPC-DS query 34.  Will work on coming up with a smaller reproduction


---

* [SPARK-3850](https://issues.apache.org/jira/browse/SPARK-3850) | *Minor* | **Scala style: disallow trailing spaces**

Background discussions:
* https://github.com/apache/spark/pull/2619
* http://apache-spark-developers-list.1001551.n3.nabble.com/Extending-Scala-style-checks-td8624.html

If you look at [the PR Cheng opened|https://github.com/apache/spark/pull/2619], you'll see a trailing white space seemed to mess up some SQL test. That's what spurred the creation of this issue.

[Ted Yu on the dev list|http://mail-archives.apache.org/mod\_mbox/spark-dev/201410.mbox/%3CCALte62y7a6WyBDUFDcGUwbf8WCpttViE+PAo4pZOR+\_-nB2UTw@mail.gmail.com%3E] suggested using this [{{WhitespaceEndOfLineChecker}}|http://www.scalastyle.org/rules-0.1.0.html].


---

* [SPARK-2774](https://issues.apache.org/jira/browse/SPARK-2774) | *Major* | **Set preferred locations for reduce tasks**

Currently we do not set preferred locations for reduce tasks in Spark. This patch proposes setting preferred locations based on the map output sizes and locations tracked by the MapOutputTracker. This is useful in two conditions

1. When you have a small job in a large cluster it can be useful to co-locate map and reduce tasks to avoid going over the network
2. If there is a lot of data skew in the map stage outputs, then it is beneficial to place the reducer close to the largest output.



