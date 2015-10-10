
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
# Apache Spark  1.5.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [SPARK-10980](https://issues.apache.org/jira/browse/SPARK-10980) | *Major* | **Create wrong decimal if unscaled \> 1e18 and scale \> 0**

Decimal(1000000000000000000L, 20, 2) will become 1000000000000000000 instead of 10000000000000000.00


---

* [SPARK-10959](https://issues.apache.org/jira/browse/SPARK-10959) | *Critical* | **PySpark StreamingLogisticRegressionWithSGD does not train with given regParam and convergenceTol parameters**

These parameters are passed into the StreamingLogisticRegressionWithSGD constructor, but do not get transferred to the model to use when training.  Same problem with StreamingLinearRegressionWithSGD and the intercept param is in the wrong  argument place where it is being used as regularization value.


---

* [SPARK-10955](https://issues.apache.org/jira/browse/SPARK-10955) | *Major* | **Disable dynamic allocation for Streaming jobs**

Spark streaming can be tricky with dynamic allocation and can lose dataWe should disable dynamic allocation or at least log that it is dangerous.


---

* [SPARK-10914](https://issues.apache.org/jira/browse/SPARK-10914) | *Major* | **UnsafeRow serialization breaks when two machines have different Oops size**

\*Updated description (by rxin on Oct 8, 2015)\*

To reproduce, launch Spark using
{code}
MASTER=local-cluster[2,1,1024] bin/spark-shell --conf "spark.executor.extraJavaOptions=-XX:-UseCompressedOops"
{code}

And then run the following
{code}
scala\> sql("select 1 xx").collect()
{code}

The problem is that UnsafeRow contains 3 pieces of information when pointing to some data in memory (an object, a base offset, and length). When the row is serialized with Java/Kryo serialization, the object layout in memory can change if two machines have different pointer width (Oops in JVM).



\*Original bug report description\*:

Using an inner join, to match together two integer columns, I generally get no results when there should be matches.  But the results vary and depend on whether the dataframes are coming from SQL, JSON, or cached, as well as the order in which I cache things and query them.

This minimal example reproduces it consistently for me in the spark-shell, on new installs of both 1.5.0 and 1.5.1 (pre-built against Hadoop 2.6 from http://spark.apache.org/downloads.html.)

{code}
/\* x is {"xx":1}{"xx":2} and y is just {"yy":1}{"yy:2} \*/
val x = sql("select 1 xx union all select 2") 
val y = sql("select 1 yy union all select 2")

x.join(y, $"xx" === $"yy").count() /\* expect 2, get 0 \*/
/\* If I cache both tables it works: \*/
x.cache()
y.cache()
x.join(y, $"xx" === $"yy").count() /\* expect 2, get 2 \*/

/\* but this still doesn't work: \*/
x.join(y, $"xx" === $"yy").filter("yy=1").count() /\* expect 1, get 0 \*/
{code}


---

* [SPARK-10904](https://issues.apache.org/jira/browse/SPARK-10904) | *Major* | **  select(df, c("col1", "col2")) fails**

The help page for 'select' gives an example of 
  select(df, c("col1", "col2"))

However, this fails with assertion:

java.lang.AssertionError: assertion failed
	at scala.Predef$.assert(Predef.scala:165)
	at org.apache.spark.api.r.SerDe$.readStringBytes(SerDe.scala:92)
	at org.apache.spark.api.r.SerDe$.readString(SerDe.scala:99)
	at org.apache.spark.api.r.SerDe$.readTypedObject(SerDe.scala:63)
	at org.apache.spark.api.r.SerDe$.readObject(SerDe.scala:52)
	at org.apache.spark.api.r.RBackendHandler$$anonfun$readArgs$1.apply(RBackendHandler.scala:182)
	at org.apache.spark.api.r.RBackendHandler$$anonfun$readArgs$1.apply(RBackendHandler.scala:181)

And then none of the functions will work with following error:
\> head(df)
 Error in if (returnStatus != 0) { : argument is of length zero


---

* [SPARK-10901](https://issues.apache.org/jira/browse/SPARK-10901) | *Critical* | **spark.yarn.user.classpath.first doesn't work**

spark.yarn.user.classpath.first doesn't properly add the app jar to the system class path first.  It has some logic there that i believe works for local files but running on yarn using distributed cache to distribute the app jar doesn't put \_\_app\_\_.jar into the classpath at all.

This is a break in backwards compatibility.

Note that in this case the user is trying to use different version of kryo (which used to work in spark 1.2) and the new configs for this: spark.{driver, executor}.userClassPathFirst don't allow this as it errors out with:

User class threw exception: java.lang.LinkageError: loader constraint violation: loader (instance of org/apache/spark/util/ChildFirstURLClassLoader) previously initiated loading for a different type with name "com/esotericsoftware/kryo/Kryo"


---

* [SPARK-10889](https://issues.apache.org/jira/browse/SPARK-10889) | *Minor* | **Upgrade Kinesis Client Library**

Kinesis Client Library added a custom cloudwatch metric in 1.3.0 called MillisBehindLatest. This is very important for capacity planning and alerting.


---

* [SPARK-10885](https://issues.apache.org/jira/browse/SPARK-10885) | *Major* | **Display the failed output op in Streaming UI**

Now if an output operation failed because of an error in the closure of `foreachRDD`, such as, 
{code}
    wordCounts.foreachRDD { rdd =\>
      if (Random.nextInt(2) == 0) {
        throw new RuntimeException("xxx")
      }
    }
{code}

we cannot display the error information.


---

* [SPARK-10871](https://issues.apache.org/jira/browse/SPARK-10871) | *Minor* | **Specify number of failed executors in ApplicationMaster error message**

I ran in to [this\|https://github.com/apache/spark/blob/9b9fe5f7bf55257269d8febcd64e95677075dfb6/yarn/src/main/scala/org/apache/spark/deploy/yarn/ApplicationMaster.scala#L346-L348] error message today while debugging a failed app:

{code}
15/09/29 00:33:20 INFO yarn.ApplicationMaster: Final app status: FAILED, exitCode: 11, (reason: Max number of executor failures reached)
15/09/29 00:33:23 INFO util.ShutdownHookManager: Shutdown hook called
{code}

This app ran with dynamic allocation and I'm not sure what limit was used as the "maximum allowable number of failed executors"; in any case, the error message may as well specify this.


---

* [SPARK-10859](https://issues.apache.org/jira/browse/SPARK-10859) | *Blocker* | **Predicates pushed to InmemoryColumnarTableScan are not evaluated correctly**

{code}
var data01 = sqlContext.sql("select 1 as id, \"{\\\"animal\\\":{\\\"type\\\": \\\"cat\\\"}},{\\\"animal\\\":{\\\"type\\\": \\\"dog\\\"}},{\\\"animal\\\":{\\\"type\\\": \\\"donkey\\\"}},{\\\"animal\\\":{\\\"type\\\": \\\"turkey\\\"}},{\\\"animal\\\":{\\\"type\\\": \\\"cat\\\"}},{\\\"animal\\\":{\\\"NOTANIMAL\\\": \\\"measuring tape\\\"}}\" as field")
case class SubField(fieldling: String)
var data02 = data01.explode(data01("field")){ case Row(field: String) =\> field.split(",").map(SubField(\_))}
  .selectExpr("id","fieldling","get\_json\_object(fieldling,\"$.animal.type\") as animal") 
var data03 = data01.explode(data01("field")){ case Row(field: String) =\> field.split(",").map(SubField(\_))}
  .selectExpr("id","fieldling","get\_json\_object(fieldling,\"$.animal.type\") as animal")
data02.cache()

data02.select($"animal" === "cat").explain
== Physical Plan ==
Project [(animal#25 = cat) AS (animal = cat)#263]
 InMemoryColumnarTableScan [animal#25], (InMemoryRelation [id#20,fieldling#24,animal#25], true, 10000, StorageLevel(true, true, false, true, 1), (TungstenProject [id#20,fieldling#24,get\_json\_object(fieldling#24,$.animal.type) AS animal#25]), None)

data02.select($"animal" === "cat").show
+--------------+
\|(animal = cat)\|
+--------------+
\|          true\|
\|         false\|
\|         false\|
\|         false\|
\|          true\|
\|          null\|
+--------------+

data02.filter($"animal" === "cat").explain
== Physical Plan ==
Filter (animal#25 = cat)
 InMemoryColumnarTableScan [id#20,fieldling#24,animal#25], [(animal#25 = cat)], (InMemoryRelation [id#20,fieldling#24,animal#25], true, 10000, StorageLevel(true, true, false, true, 1), (TungstenProject [id#20,fieldling#24,get\_json\_object(fieldling#24,$.animal.type) AS animal#25]), None)

data02.filter($"animal" === "cat").show
+---+---------+------+
\| id\|fieldling\|animal\|
+---+---------+------+
+---+---------+------+
{code}


---

* [SPARK-10858](https://issues.apache.org/jira/browse/SPARK-10858) | *Minor* | **YARN: archives/jar/files rename with # doesn't work unless scheme given**

The YARN distributed cache feature with --jars, --archives, --files where you can rename the file/archive using a # symbol only works if you explicitly include the scheme in the path:

works:
--jars file:///home/foo/my.jar#renamed.jar

doesn't work:
--jars /home/foo/my.jar#renamed.jar

Exception in thread "main" java.io.FileNotFoundException: File file:/home/foo/my.jar#renamed.jar does not exist
        at org.apache.hadoop.fs.RawLocalFileSystem.deprecatedGetFileStatus(RawLocalFileSystem.java:534)
        at org.apache.hadoop.fs.RawLocalFileSystem.getFileLinkStatusInternal(RawLocalFileSystem.java:747)
        at org.apache.hadoop.fs.RawLocalFileSystem.getFileStatus(RawLocalFileSystem.java:524)
        at org.apache.hadoop.fs.FilterFileSystem.getFileStatus(FilterFileSystem.java:416)
        at org.apache.hadoop.fs.FileUtil.copy(FileUtil.java:337)
        at org.apache.hadoop.fs.FileUtil.copy(FileUtil.java:289)
        at org.apache.spark.deploy.yarn.Client.copyFileToRemote(Client.scala:240)
        at org.apache.spark.deploy.yarn.Client.org$apache$spark$deploy$yarn$Client$$distribute$1(Client.scala:329)
        at org.apache.spark.deploy.yarn.Client$$anonfun$prepareLocalResources$6$$anonfun$apply$2.apply(Client.scala:393)
        at org.apache.spark.deploy.yarn.Client$$anonfun$prepareLocalResources$6$$anonfun$apply$2.apply(Client.scala:392)
        at scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:33)
        at scala.collection.mutable.ArrayOps$ofRef.foreach(ArrayOps.scala:108)


---

* [SPARK-10833](https://issues.apache.org/jira/browse/SPARK-10833) | *Major* | **Inline, organize BSD/MIT licenses in LICENSE**

In the course of https://issues.apache.org/jira/browse/LEGAL-226 it came to light that the guidance at http://www.apache.org/dev/licensing-howto.html#permissive-deps means that permissively-licensed dependencies has a different interpretation than we (er, I) had been operating under. "pointer ... to the license within the source tree" specifically means a copy of the license within Spark's distribution, whereas at the moment, Spark's LICENSE has a pointer to the project's license in the \*other project's\* source tree.

The remedy is simply to inline all such license references (i.e. BSD/MIT licenses) or include their text in "licenses" subdirectory and point to that.

Along the way, we can also treat other BSD/MIT licenses, whose text has been inlined into LICENSE, in the same way.

The LICENSE file can continue to provide a helpful list of BSD/MIT licensed projects and a pointer to their sites. This would be over and above including license text in the distro, which is the essential thing.

I do not think this blocks a current release, since there's a good-faith argument that the current practice satisfies the terms of the third-party licenses as well. (If it didn't, this would be a blocker for any further release.) However, of course it's better to follow the best practice going forward.


---

* [SPARK-10825](https://issues.apache.org/jira/browse/SPARK-10825) | *Critical* | **Flaky test: StandaloneDynamicAllocationSuite**

There are some race conditions in StandaloneDynamicAllocationSuite.
1. It should not assume master and workers start in order.
2. It should not assume master and workers get ready at once
3. It should not assume the application is already registered with master after creating SparkContext.
4. It should not access Master.app which is not thread safe.


---

* [SPARK-10790](https://issues.apache.org/jira/browse/SPARK-10790) | *Major* | **Dynamic Allocation does not request any executors if first stage needs less than or equal to spark.dynamicAllocation.initialExecutors**

If you set spark.dynamicAllocation.initialExecutors \> 0 (or spark.dynamicAllocation.minExecutors, since spark.dynamicAllocation.initialExecutors defaults to spark.dynamicAllocation.minExecutors), and the number of tasks in the first stage of your job is less than or equal to this min/init number of executors, dynamic allocation won't actually request any executors and will just hang indefinitely with the warning "Initial job has not accepted any resources; check your cluster UI to ensure that workers are registered and have sufficient resources".

The cause appears to be that ExecutorAllocationManager does not request any executors while the application is still initializing, but it still sets the initial value of numExecutorsTarget to spark.dynamicAllocation.initialExecutors. Once the job is running and has submitted its first task, if the first task does not need more than spark.dynamicAllocation.initialExecutors, ExecutorAllocationManager.updateAndSyncNumExecutorsTarget() does not think that it needs to request any executors, so it doesn't.


---

* [SPARK-10741](https://issues.apache.org/jira/browse/SPARK-10741) | *Major* | **Hive Query Having/OrderBy against Parquet table is not working**

Failed Query with Having Clause
{code}
  def testParquetHaving() {
    val ddl =
      """CREATE TABLE IF NOT EXISTS test ( c1 string, c2 int ) STORED AS PARQUET"""
    val failedHaving =
      """ SELECT c1, avg ( c2 ) as c\_avg
        \| FROM test
        \| GROUP BY c1
        \| HAVING ( avg ( c2 ) \> 5)  ORDER BY c1""".stripMargin
    TestHive.sql(ddl)
    TestHive.sql(failedHaving).collect
  }

org.apache.spark.sql.AnalysisException: resolved attribute(s) c2#16 missing from c1#17,c2#18 in operator !Aggregate [c1#17], [cast((avg(cast(c2#16 as bigint)) \> cast(5 as double)) as boolean) AS havingCondition#12,c1#17,avg(cast(c2#18 as bigint)) AS c\_avg#9];
	at org.apache.spark.sql.catalyst.analysis.CheckAnalysis$class.failAnalysis(CheckAnalysis.scala:37)
	at org.apache.spark.sql.catalyst.analysis.Analyzer.failAnalysis(Analyzer.scala:44)
	at org.apache.spark.sql.catalyst.analysis.CheckAnalysis$$anonfun$checkAnalysis$1.apply(CheckAnalysis.scala:154)
	at org.apache.spark.sql.catalyst.analysis.CheckAnalysis$$anonfun$checkAnalysis$1.apply(CheckAnalysis.scala:49)

{code}

Failed Query with OrderBy
{code}
  def testParquetOrderBy() {
    val ddl =
      """CREATE TABLE IF NOT EXISTS test ( c1 string, c2 int ) STORED AS PARQUET"""
    val failedOrderBy =
      """ SELECT c1, avg ( c2 ) c\_avg
        \| FROM test
        \| GROUP BY c1
        \| ORDER BY avg ( c2 )""".stripMargin
    TestHive.sql(ddl)
    TestHive.sql(failedOrderBy).collect
  }

org.apache.spark.sql.AnalysisException: resolved attribute(s) c2#33 missing from c1#34,c2#35 in operator !Aggregate [c1#34], [avg(cast(c2#33 as bigint)) AS aggOrder#31,c1#34,avg(cast(c2#35 as bigint)) AS c\_avg#28];
	at org.apache.spark.sql.catalyst.analysis.CheckAnalysis$class.failAnalysis(CheckAnalysis.scala:37)
	at org.apache.spark.sql.catalyst.analysis.Analyzer.failAnalysis(Analyzer.scala:44)
{code}


---

* [SPARK-10058](https://issues.apache.org/jira/browse/SPARK-10058) | *Critical* | **Flaky test: HeartbeatReceiverSuite: normal heartbeat**

https://amplab.cs.berkeley.edu/jenkins/view/Spark-QA-Test/job/Spark-1.5-SBT/116/AMPLAB\_JENKINS\_BUILD\_PROFILE=hadoop2.2,label=spark-test/testReport/junit/org.apache.spark/HeartbeatReceiverSuite/normal\_heartbeat/

{code}
Error Message

3 did not equal 2
Stacktrace

sbt.ForkMain$ForkError: 3 did not equal 2
	at org.scalatest.Assertions$class.newAssertionFailedException(Assertions.scala:500)
	at org.scalatest.FunSuite.newAssertionFailedException(FunSuite.scala:1555)
	at org.scalatest.Assertions$AssertionsHelper.macroAssert(Assertions.scala:466)
	at org.apache.spark.HeartbeatReceiverSuite$$anonfun$2.apply$mcV$sp(HeartbeatReceiverSuite.scala:104)
	at org.apache.spark.HeartbeatReceiverSuite$$anonfun$2.apply(HeartbeatReceiverSuite.scala:97)
	at org.apache.spark.HeartbeatReceiverSuite$$anonfun$2.apply(HeartbeatReceiverSuite.scala:97)
	at org.scalatest.Transformer$$anonfun$apply$1.apply$mcV$sp(Transformer.scala:22)
	at org.scalatest.OutcomeOf$class.outcomeOf(OutcomeOf.scala:85)
	at org.scalatest.OutcomeOf$.outcomeOf(OutcomeOf.scala:104)
	at org.scalatest.Transformer.apply(Transformer.scala:22)
	at org.scalatest.Transformer.apply(Transformer.scala:20)
	at org.scalatest.FunSuiteLike$$anon$1.apply(FunSuiteLike.scala:166)
	at org.apache.spark.SparkFunSuite.withFixture(SparkFunSuite.scala:42)
	at org.scalatest.FunSuiteLike$class.invokeWithFixture$1(FunSuiteLike.scala:163)
	at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:175)
	at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:175)
	at org.scalatest.SuperEngine.runTestImpl(Engine.scala:306)
	at org.scalatest.FunSuiteLike$class.runTest(FunSuiteLike.scala:175)
	at org.apache.spark.HeartbeatReceiverSuite.org$scalatest$BeforeAndAfterEach$$super$runTest(HeartbeatReceiverSuite.scala:41)
	at org.scalatest.BeforeAndAfterEach$class.runTest(BeforeAndAfterEach.scala:255)
	at org.apache.spark.HeartbeatReceiverSuite.runTest(HeartbeatReceiverSuite.scala:41)
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
	at org.apache.spark.HeartbeatReceiverSuite.org$scalatest$BeforeAndAfterAll$$super$run(HeartbeatReceiverSuite.scala:41)
	at org.scalatest.BeforeAndAfterAll$class.liftedTree1$1(BeforeAndAfterAll.scala:257)
	at org.scalatest.BeforeAndAfterAll$class.run(BeforeAndAfterAll.scala:256)
	at org.apache.spark.HeartbeatReceiverSuite.run(HeartbeatReceiverSuite.scala:41)
	at org.scalatest.tools.Framework.org$scalatest$tools$Framework$$runSuite(Framework.scala:462)
	at org.scalatest.tools.Framework$ScalaTestTask.execute(Framework.scala:671)
	at sbt.ForkMain$Run$2.call(ForkMain.java:294)
	at sbt.ForkMain$Run$2.call(ForkMain.java:284)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
{code}

This is really flaky (fail 30%)
https://amplab.cs.berkeley.edu/jenkins/view/Spark-QA-Test/job/Spark-1.5-SBT/116/AMPLAB\_JENKINS\_BUILD\_PROFILE=hadoop2.2,label=spark-test/testReport/junit/org.apache.spark/HeartbeatReceiverSuite/normal\_heartbeat/history/



