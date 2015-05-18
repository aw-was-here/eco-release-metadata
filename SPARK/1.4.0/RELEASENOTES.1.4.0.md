
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
#  1.4.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [SPARK-7694](https://issues.apache.org/jira/browse/SPARK-7694) | *Minor* | **Use getOrElse for getting the threshold of LR model**

The toString method of LogisticRegressionModel calls get method on an Option (threshold) without a safeguard. In spark-shell, the following code 
{code:title=lbfgs.scala|borderStyle=solid}
val model = algorithm.run(data).clearThreshold()
{code}
 in lbfgs code will fail as toString method will be called right after clearThreshold() to show the results in the REPL.


---

* [SPARK-7693](https://issues.apache.org/jira/browse/SPARK-7693) | *Major* | **Remove "import scala.concurrent.ExecutionContext.Implicits.global"**

Learnt a lesson from SPARK-7655: Spark should avoid to use "scala.concurrent.ExecutionContext.Implicits.global" because the user may submit blocking actions to `scala.concurrent.ExecutionContext.Implicits.global` and exhaust all threads in it. This could crash Spark.

So Spark should always use its own thread pools for safety.


---

* [SPARK-7686](https://issues.apache.org/jira/browse/SPARK-7686) | *Critical* | **Runnable DescribeCommand is assigned wrong physical plan output attributes in SparkStrategies**

In SparkStrategies, RunnableDescribeCommand is passed the output attributes of the table being described rather than the attributes of the describe command's output.  I noticed this when it caused problems in some UnsafeRow conversion code that I'm working on.


---

* [SPARK-7677](https://issues.apache.org/jira/browse/SPARK-7677) | *Major* | **Enable Kafka In Scala 2.11 Build**

Now that we upgraded Kafka in SPARK-2808 we can enable it in the Scala 2.11 build.


---

* [SPARK-7676](https://issues.apache.org/jira/browse/SPARK-7676) | *Major* | **Cleanup unnecessary code and fix small bug in the stage timeline view**

SPARK-7296 added a per-stage visualization to the UI.  There's some unneeded code left in this commit from the many iterations that should be removed. We should also remove the functionality to highlight the row in the task table when someone mouses over one of the tasks in the visualization, because there are typically far too many tasks in the table for this to be useful (because the user can't see which row is highlighted).

There's also a small bug where the end time is based on the last task's launch time, rather than the last task's finish time.


---

* [SPARK-7672](https://issues.apache.org/jira/browse/SPARK-7672) | *Critical* | **Number format exception with spark.kryoserializer.buffer.mb**

With spark.kryoserializer.buffer.mb  1000 : 

Exception in thread "main" java.lang.NumberFormatException: Size must be specified as bytes (b), kibibytes (k), mebibytes (m), gibibytes (g), tebibytes (t), or pebibytes(p). E.g. 50b, 100k, or 250m.
Fractional values are not supported. Input was: 1000000.0
        at org.apache.spark.network.util.JavaUtils.parseByteString(JavaUtils.java:238)
        at org.apache.spark.network.util.JavaUtils.byteStringAsKb(JavaUtils.java:259)
        at org.apache.spark.util.Utils$.byteStringAsKb(Utils.scala:1037)
        at org.apache.spark.SparkConf.getSizeAsKb(SparkConf.scala:245)
        at org.apache.spark.serializer.KryoSerializer.<init>(KryoSerializer.scala:53)
        at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)
        at sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:57)
        at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)
        at java.lang.reflect.Constructor.newInstance(Constructor.java:526)
        at org.apache.spark.SparkEnv$.instantiateClass$1(SparkEnv.scala:269)
        at org.apache.spark.SparkEnv$.instantiateClassFromConf$1(SparkEnv.scala:280)
        at org.apache.spark.SparkEnv$.create(SparkEnv.scala:283)
        at org.apache.spark.SparkEnv$.createDriverEnv(SparkEnv.scala:188)
        at org.apache.spark.SparkContext.createSparkEnv(SparkContext.scala:267)


---

* [SPARK-7671](https://issues.apache.org/jira/browse/SPARK-7671) | *Trivial* | **Fix wrong URLs in MLlib Data Types Documentation**

There is a mistake in the URL of Matrices in the MLlib Data Types documentation (Local matrix scala section), the URL points to https://spark.apache.org/docs/latest/api/scala/index.html#org.apache.spark.mllib.linalg.Matrices which is a mistake, since Matrices is an object that implements factory methods for Matrix that does not have a companion class. The correct link should point to https://spark.apache.org/docs/latest/api/scala/index.html#org.apache.spark.mllib.linalg.Matrices$

There is another mistake, in the Local Vector section in Scala, Java and Python

In the Scala section the URL of Vectors points to the trait Vector (https://spark.apache.org/docs/latest/api/scala/index.html#org.apache.spark.mllib.linalg.Vector) and not to the factory methods implemented in Vectors. 

The correct link should be: https://spark.apache.org/docs/latest/api/scala/index.html#org.apache.spark.mllib.linalg.Vectors$

In the Java section the URL of Vectors points to the Interface Vector (https://spark.apache.org/docs/latest/api/java/org/apache/spark/mllib/linalg/Vector.html) and not to the Class Vectors

The correct link should be:
https://spark.apache.org/docs/latest/api/java/org/apache/spark/mllib/linalg/Vectors.html

In the Python section the URL of Vectors points to the class Vector (https://spark.apache.org/docs/latest/api/python/pyspark.mllib.html#pyspark.mllib.linalg.Vector) and not the Class Vectors

The correct link should be:
https://spark.apache.org/docs/latest/api/python/pyspark.mllib.html#pyspark.mllib.linalg.Vectors


---

* [SPARK-7669](https://issues.apache.org/jira/browse/SPARK-7669) | *Minor* | **Builds against Hadoop 2.6+ get inconsistent curator dependencies**

If you build spark against Hadoop 2.6 you end up with an inconsistent set of curator dependencies -curator-recipe 2.4.0 with curator 2.6.0.

A dedicated hadoop-2.6 profile along with extraction of curator version into a property can keep the curator versions in sync, along with ZK.


---

* [SPARK-7668](https://issues.apache.org/jira/browse/SPARK-7668) | *Major* | **Matrix.map should preserve transpose property**

Currently calling map on both DenseMatrix and SparseMatrix will throw original transpose property away. It should be preserved.


---

* [SPARK-7664](https://issues.apache.org/jira/browse/SPARK-7664) | *Minor* | **DAG visualization: Fix incorrect link paths of DAG.**

In JobPage, we can jump a StagePage when we click corresponding box of DAG viz but the link path is incorrect.


---

* [SPARK-7660](https://issues.apache.org/jira/browse/SPARK-7660) | *Blocker* | **Snappy-java buffer-sharing bug leads to data corruption / test failures**

snappy-java contains a bug that can lead to situations where separate SnappyOutputStream instances end up sharing the same input and output buffers, which can lead to data corruption issues.  See https://github.com/xerial/snappy-java/issues/107 for my upstream bug report and https://github.com/xerial/snappy-java/pull/108 for my patch to fix this issue.

I discovered this issue because the buffer-sharing was leading to a test failure in JavaAPISuite: one of the repartition-and-sort tests was returning the wrong answer because both tasks wrote their output using the same compression buffers and one task won the race, causing its output to be written to both shuffle output files. As a result, the test returned the result of collecting one partition twice (see https://github.com/apache/spark/pull/5868#issuecomment-101954962 for more details).

The buffer-sharing can only occur if {{close()}} is called twice on the same SnappyOutputStream \_and\_ the JVM experiences little GC / memory pressure (for a more precise description of when this issue may occur, see my upstream tickets).  I think that this double-close happens somewhere in some test code that was added as part of my Tungsten shuffle patch, exposing this bug (to see this, download a recent build of master and run https://gist.github.com/JoshRosen/eb3257a75c16597d769f locally in order to force the test execution order that triggers the bug).

I think that it's rare that this bug would lead to silent failures like this. In more realistic workloads that aren't writing only a handful of bytes per task, I would expect this issue to lead to stream corruption issues like SPARK-4105.


---

* [SPARK-7655](https://issues.apache.org/jira/browse/SPARK-7655) | *Blocker* | **Akka timeout exception from ask and table broadcast**

I got the following exception when I was running a query with broadcast join.
{code}
15/05/15 01:15:49 [WARN] AkkaRpcEndpointRef: Error sending message [message = UpdateBlockInfo(BlockManagerId(driver, 10.0.171.162, 54870),broadcast\_758\_piece0,StorageLevel(false, false, false, false, 1),0,0,0)] in 1 attempts
java.util.concurrent.TimeoutException: Futures timed out after [120 seconds]
	at scala.concurrent.impl.Promise$DefaultPromise.ready(Promise.scala:219)
	at scala.concurrent.impl.Promise$DefaultPromise.result(Promise.scala:223)
	at scala.concurrent.Await$$anonfun$result$1.apply(package.scala:107)
	at scala.concurrent.BlockContext$DefaultBlockContext$.blockOn(BlockContext.scala:53)
	at scala.concurrent.Await$.result(package.scala:107)
	at org.apache.spark.rpc.RpcEndpointRef.askWithRetry(RpcEndpointRef.scala:102)
	at org.apache.spark.rpc.RpcEndpointRef.askWithRetry(RpcEndpointRef.scala:78)
	at org.apache.spark.storage.BlockManagerMaster.updateBlockInfo(BlockManagerMaster.scala:58)
	at org.apache.spark.storage.BlockManager.org$apache$spark$storage$BlockManager$$tryToReportBlockStatus(BlockManager.scala:374)
	at org.apache.spark.storage.BlockManager.reportBlockStatus(BlockManager.scala:350)
	at org.apache.spark.storage.BlockManager.removeBlock(BlockManager.scala:1107)
	at org.apache.spark.storage.BlockManager$$anonfun$removeBroadcast$2.apply(BlockManager.scala:1083)
	at org.apache.spark.storage.BlockManager$$anonfun$removeBroadcast$2.apply(BlockManager.scala:1083)
	at scala.collection.immutable.Set$Set2.foreach(Set.scala:94)
	at org.apache.spark.storage.BlockManager.removeBroadcast(BlockManager.scala:1083)
	at org.apache.spark.storage.BlockManagerSlaveEndpoint$$anonfun$receiveAndReply$1$$anonfun$applyOrElse$4.apply$mcI$sp(BlockManagerSlaveEndpoint.scala:65)
	at org.apache.spark.storage.BlockManagerSlaveEndpoint$$anonfun$receiveAndReply$1$$anonfun$applyOrElse$4.apply(BlockManagerSlaveEndpoint.scala:65)
	at org.apache.spark.storage.BlockManagerSlaveEndpoint$$anonfun$receiveAndReply$1$$anonfun$applyOrElse$4.apply(BlockManagerSlaveEndpoint.scala:65)
	at org.apache.spark.storage.BlockManagerSlaveEndpoint$$anonfun$1.apply(BlockManagerSlaveEndpoint.scala:78)
	at scala.concurrent.impl.Future$PromiseCompletingRunnable.liftedTree1$1(Future.scala:24)
	at scala.concurrent.impl.Future$PromiseCompletingRunnable.run(Future.scala:24)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
{code}


---

* [SPARK-7651](https://issues.apache.org/jira/browse/SPARK-7651) | *Minor* | **PySpark GMM predict, predictSoft should fail on bad input**

In PySpark, GaussianMixtureModel predict and predictSoft test if the argument is an RDD and operate correctly if so.  But if the argument is not an RDD, they fail silently, returning nothing.

[https://github.com/apache/spark/blob/11a1a135d1fe892cd48a9116acc7554846aed84c/python/pyspark/mllib/clustering.py#L176]

Instead, they should raise errors.


---

* [SPARK-7649](https://issues.apache.org/jira/browse/SPARK-7649) | *Major* | **Use window.localStorage to store the status rather than the url**

Use window.localStorage to store the status rather than the url so that the url won't be changed.


---

* [SPARK-7647](https://issues.apache.org/jira/browse/SPARK-7647) | *Major* | **Additional methods in GLM JavaModel wrappers**

We wrap Scala implementation of estimators and models as JavaEstimator and JavaModel in Python, which provides fit/transform by default. However, no additional methods are provided under the Python API. So basically user can call transform but they cannot get model weights out. We should provide those methods.


---

* [SPARK-7645](https://issues.apache.org/jira/browse/SPARK-7645) | *Major* | **Show milliseconds in the UI if the batch interval \< 1 second**

When the batch interval < 1 second, if we don't show milliseconds, some batches will be same in the UI.


---

* [SPARK-7643](https://issues.apache.org/jira/browse/SPARK-7643) | *Critical* | **Number of executors and partitions are displayed wrongly in storage tab**

Saw this in the storage tab of an RDD on a 1.4 cluster. An RDD is distributed among many executors, but the web UI says "1 Executors". Same the the partitions.


---

* [SPARK-7619](https://issues.apache.org/jira/browse/SPARK-7619) | *Major* | **autodoc\_docstring\_signature doesn't work for some classes/methods under spark.ml**

We use autodoc\_docstring\_signature to handle signature for methods wrapped by keyword\_only. However, it only works for some methods but not all. Need to look into this issue.


---

* [SPARK-7612](https://issues.apache.org/jira/browse/SPARK-7612) | *Minor* | **Use BLAS in naive Bayes training**

Similar to the changes we made to k-means, replacing the implementation by MLlib's BLAS wrappers gives us better control on the performance.


---

* [SPARK-7601](https://issues.apache.org/jira/browse/SPARK-7601) | *Major* | **Support Insert into JDBC Datasource**

Support Insert into JDBCDataSource. Following are usage examples
{code}
sqlContext.sql(
      s"""
        |CREATE TEMPORARY TABLE testram1
        |USING org.apache.spark.sql.jdbc
        |OPTIONS (url '$url', dbtable 'testram1', user 'xx', password 'xx', driver 'com.h2.Driver')
      """.stripMargin.replaceAll("\n", " "))

sqlContext.sql("insert into table testram1 select * from testsrc").show
{code}


---

* [SPARK-7599](https://issues.apache.org/jira/browse/SPARK-7599) | *Blocker* | **Don't restrict customized FSBasedRelation OutputCommitter to be subclass of FileOutputFormat**

Used {{FileOutputCommitter}} here because we need to retrieve the actual path of file being written, which is returned by {{FileOutputCommitter.getWorkPath}}. This implies customized output committers must be subclasses of {{FileOutputCommitter}}, which was true for {{DirectParquetOutputCommitter}}. But this restriction is too strict. Should resort to {{OutputCommitter}} rather than {{FileOutputCommitter}}.


---

* [SPARK-7598](https://issues.apache.org/jira/browse/SPARK-7598) | *Minor* | **Add aliveWorkers metrics in Master**

In Spark Standalone setup, when some workers are DEAD, they will stay in master worker list for a while.
master.workers metrics for master is only showing the total number of workers, we need to monitor how many real ALIVE workers are there to ensure the cluster is healthy.


---

* [SPARK-7595](https://issues.apache.org/jira/browse/SPARK-7595) | *Minor* | **Window will cause resolve failed with self join**

for example:
table: src(key string, value string)
sql: with v1 as(select key, count(value) over (partition by key) cnt\_val from src), v2 as(select v1.key, v1\_lag.cnt\_val from v1, v1 v1\_lag where v1.key = v1\_lag.key) select * from v2 limit 5;

then will analyze fail when resolving conflicting references in Join:
'Limit 5
 'Project [*]
  'Subquery v2
   'Project ['v1.key,'v1\_lag.cnt\_val]
    'Filter ('v1.key = 'v1\_lag.key)
     'Join Inner, None
      Subquery v1
       Project [key#95,cnt\_val#94L]
        Window [key#95,value#96], [HiveWindowFunction#org.apache.hadoop.hive.ql.udf.generic.GenericUDAFCount(value#96) WindowSpecDefinition [key#95], [], ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING AS cnt\_val#94L], WindowSpecDefinition [key#95], [], ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
         Project [key#95,value#96]
          MetastoreRelation default, src, None
      Subquery v1\_lag
       Subquery v1
        Project [key#97,cnt\_val#94L]
         Window [key#97,value#98], [HiveWindowFunction#org.apache.hadoop.hive.ql.udf.generic.GenericUDAFCount(value#98) WindowSpecDefinition [key#97], [], ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING AS cnt\_val#94L], WindowSpecDefinition [key#97], [], ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
          Project [key#97,value#98]
           MetastoreRelation default, src, None

Conflicting attributes: cnt\_val#94L


---

* [SPARK-7593](https://issues.apache.org/jira/browse/SPARK-7593) | *Major* | **Python API for Bucketizer**

This requires adding `DoubleArrayParam` for Python API calls, similar to VectorAssembler.


---

* [SPARK-7592](https://issues.apache.org/jira/browse/SPARK-7592) | *Blocker* | **Resolution set to "Pending Closed" when using PR merge script**

I noticed this was happening. The issue is that the behavior of the ASF JIRA silently changed. Now when the "Resolve Issue" transition occurs, the default resolution is "Pending Closed". We used to count on the default behavior being to set the resolution as "Fixed".

The solution is to explicitly set the resolution as "Fixed" and not count on default behavior.


---

* [SPARK-7591](https://issues.apache.org/jira/browse/SPARK-7591) | *Blocker* | **FSBasedRelation interface tweaks**

# Renaming {{FSBasedRelation}} to {{HadoopFsRelation}}
  Since itss all coupled with Hadoop {{FileSystem}} and job API.
# {{HadoopFsRelation}} should have a no-arg constructor
  {{paths}} and {{partitionColumns}} should just be methods to be overridden, rather than constructor arguments. This makes data source developers life easier by having a no-arg constructor and being serialization friendly.
# Renaming {{HadoopFsRelation.prepareForWrite}} to {{HadoopFsRelation.prepareJobForWrite}}
  The new name explicitly suggests developers should only touch the {{Job}} instance for preparation work (which is also documented in Scaladoc).
# Allowing serialization while creating {{OutputWriter}}s
  To be more precise, {{OutputWriter}}s are never created on driver side and serialized to executor side. But the factory that creates {{OutputWriter}}s should be created on driver side and serialized.
  The reason behind this is that, passing all needed materials to {{OutputWriter}} instances via Hadoop Configuration is doable but sometimes neither intuitive nor convenient. Resorting to serialization makes data source developers' life easier. Actually this happens when I was migrating the Parquet data source, and wanted to pass the final output path (instead of temporary work path) to the output writer (see [here|https://github.com/liancheng/spark/commit/ec9950c591e5b981ce20fab96562db28488e0035#diff-53521d336f7259e859fea4d3ca4dc888R74]). There I have to put a property into the Configuration object.


---

* [SPARK-7573](https://issues.apache.org/jira/browse/SPARK-7573) | *Minor* | **OneVsRest cleanups**

Minor cleanups discussed with [~mengxr]:
* move OneVsRest from reduction to classification sub-package
* make model constructor private


---

* [SPARK-7572](https://issues.apache.org/jira/browse/SPARK-7572) | *Major* | **Move Param and Params to ml.param in PySpark**

to match Scala namespaces.


---

* [SPARK-7571](https://issues.apache.org/jira/browse/SPARK-7571) | *Trivial* | **Rename `Math` to `math` in MLlib's Scala code**

scala.Math was deprecated since 2.8.


---

* [SPARK-7569](https://issues.apache.org/jira/browse/SPARK-7569) | *Critical* | **Improve error for binary expressions**

This is not a great error:
{code}
scala> Seq((1,1)).toDF("a", "b").select(lit(1) + new java.sql.Date(1)) 
org.apache.spark.sql.AnalysisException: invalid expression (1 + 0) between Literal 1, IntegerType and Literal 0, DateType;
{code}


---

* [SPARK-7568](https://issues.apache.org/jira/browse/SPARK-7568) | *Blocker* | **ml.LogisticRegression doesn't output the right prediction**

`bin/spark-submit examples/src/main/python/ml/simple\_text\_classification\_pipeline.py`

{code}
Row(id=4, text=u'spark i j k', words=[u'spark', u'i', u'j', u'k'], features=SparseVector(262144, {105: 1.0, 106: 1.0, 107: 1.0, 62173: 1.0}), rawPrediction=DenseVector([0.1629, -0.1629]), probability=DenseVector([0.5406, 0.4594]), prediction=0.0)
Row(id=5, text=u'l m n', words=[u'l', u'm', u'n'], features=SparseVector(262144, {108: 1.0, 109: 1.0, 110: 1.0}), rawPrediction=DenseVector([2.6407, -2.6407]), probability=DenseVector([0.9334, 0.0666]), prediction=0.0)
Row(id=6, text=u'mapreduce spark', words=[u'mapreduce', u'spark'], features=SparseVector(262144, {62173: 1.0, 140738: 1.0}), rawPrediction=DenseVector([1.2651, -1.2651]), probability=DenseVector([0.7799, 0.2201]), prediction=0.0)
Row(id=7, text=u'apache hadoop', words=[u'apache', u'hadoop'], features=SparseVector(262144, {128334: 1.0, 134181: 1.0}), rawPrediction=DenseVector([3.7429, -3.7429]), probability=DenseVector([0.9769, 0.0231]), prediction=0.0)
{code}

In Scala

{code}
$ bin/run-example ml.SimpleTextClassificationPipeline

(4, spark i j k) --> prob=[0.5406433544851436,0.45935664551485655], prediction=0.0
(5, l m n) --> prob=[0.9334382627383263,0.06656173726167364], prediction=0.0
(6, mapreduce spark) --> prob=[0.7799076868203896,0.22009231317961045], prediction=0.0
(7, apache hadoop) --> prob=[0.9768636139518304,0.023136386048169616], prediction=0.0
{code}

All predictions are 0, while some should be one based on the probability. It seems to be an issue with regularization.


---

* [SPARK-7566](https://issues.apache.org/jira/browse/SPARK-7566) | *Major* | **HiveContext.analyzer cannot be overriden**

Trying to override HiveContext.analyzer will give the following compilation error:

{code}
Error:(51, 36) overriding lazy value analyzer in class HiveContext of type org.apache.spark.sql.catalyst.analysis.Analyzer{val extendedResolutionRules: List[org.apache.spark.sql.catalyst.rules.Rule[org.apache.spark.sql.catalyst.plans.logical.LogicalPlan]]};
 lazy value analyzer has incompatible type
  override protected[sql] lazy val analyzer: Analyzer = {
                                   ^
{code}

That is because the type changed inadvertedly when omitting the type declaration of the return type.


---

* [SPARK-7561](https://issues.apache.org/jira/browse/SPARK-7561) | *Major* | **Install Junit Attachment Plugin on Jenkins**

As part of SPARK-7560 I'd like to just attach the test output file to the Jenkins build. This is nicer than requiring someone have an SSH login to the master node.

Currently we gzip the logs, copy it to the master, and then delete them on the worker.
https://github.com/apache/spark/blob/master/dev/run-tests-jenkins#L132

Instead I think we can just gzip them and then have the attachment plugin add them to the build. But it would require installing this plug-in to see if we can get it working.

[~shaneknapp] not sure how willing you are to install plug-ins on Jenkins, but this one would be awesome if it's doable and we can get it working.

https://wiki.jenkins-ci.org/display/JENKINS/JUnit+Attachments+Plugin


---

* [SPARK-7559](https://issues.apache.org/jira/browse/SPARK-7559) | *Minor* | **Bucketizer should include the right most boundary in the last bucket.**

Now we use special treatment for +inf.  This could be simplified by including the largest split value in the last bucket. E.g., (x1, x2, x3) defines buckets [x1, x2) and [x2, x3]. This shouldn't affect user code much, and there are applications that need to include the right-most value. For example, we can bucketize ratings from 0 to 10 to bad, neutral, and good with splits 0, 4, 6, 10.


---

* [SPARK-7557](https://issues.apache.org/jira/browse/SPARK-7557) | *Major* | **User guide update for feature transformer: HashingTF, Tokenizer**

Copied from [SPARK-7443]:
{quote}
Now that we have algorithms in spark.ml which are not in spark.mllib, we should start making subsections for the spark.ml API as needed. We can follow the structure of the spark.mllib user guide.
* The spark.ml user guide can provide: (a) code examples and (b) info on algorithms which do not exist in spark.mllib.
* We should not duplicate info in the spark.ml guides. Since spark.mllib is still the primary API, we should provide links to the corresponding algorithms in the spark.mllib user guide for more info.
{quote}


---

* [SPARK-7556](https://issues.apache.org/jira/browse/SPARK-7556) | *Major* | **User guide update for feature transformer: Binarizer**

Copied from [SPARK-7443]:
{quote}
Now that we have algorithms in spark.ml which are not in spark.mllib, we should start making subsections for the spark.ml API as needed. We can follow the structure of the spark.mllib user guide.
* The spark.ml user guide can provide: (a) code examples and (b) info on algorithms which do not exist in spark.mllib.
* We should not duplicate info in the spark.ml guides. Since spark.mllib is still the primary API, we should provide links to the corresponding algorithms in the spark.mllib user guide for more info.
{quote}


---

* [SPARK-7553](https://issues.apache.org/jira/browse/SPARK-7553) | *Blocker* | **Add methods to maintain a singleton StreamingContext**

In a REPL/notebook environment, its very easy to lose a reference to a StreamingContext by overriding the variable name. So if you happen to execute the following commands

{{
val ssc = new StreamingContext(...)  // cmd 1
ssc.start()                     // cmd 2
...
val ssc = new StreamingContext(...)   // accidentally run cmd 1 again
}}

The value of ssc will be overwritten. Now you can neither start the new context (as only one context can be started), nor stop the previous context (as the reference is lost).

Hence its best to maintain a singleton reference to the active context, so that we never loose reference for the active context. 

Since this problem occurs useful in REPL environments, its best to add this as an Experimental support in the Scala API only so that it can be used in Scala REPLs and notebooks.


---

* [SPARK-7551](https://issues.apache.org/jira/browse/SPARK-7551) | *Critical* | **Don't split by dot if within backticks for DataFrame attribute resolution**

DataFrame's resolve:
{code}
  protected[sql] def resolve(colName: String): NamedExpression = {
    queryExecution.analyzed.resolve(colName.split("\\."), sqlContext.analyzer.resolver).getOrElse {
      throw new AnalysisException(
        s"""Cannot resolve column name "$colName" among (${schema.fieldNames.mkString(", ")})""")
    }
  }
{code}

We should not split the parts quoted by backticks (`).

For example, `ab.cd`.`efg` should be split into two parts "ab.cd" and "efg".


---

* [SPARK-7545](https://issues.apache.org/jira/browse/SPARK-7545) | *Minor* | **Bernoulli NaiveBayes should validate data**

Bernoulli NaiveBayes expects input features to take values 0 or 1, but it does not actually check that.  It should check and throw an exception if it finds invalid values.


---

* [SPARK-7543](https://issues.apache.org/jira/browse/SPARK-7543) | *Major* | **Break dataframe.py into multiple files**

dataframe.py is getting large again. We should just make each class its own file.


---

* [SPARK-7534](https://issues.apache.org/jira/browse/SPARK-7534) | *Minor* | **Fix the Stage table when a stage is missing**

Just improved the Stage table when a stage is missing.

Please see the screenshots in https://github.com/apache/spark/pull/6061


---

* [SPARK-7532](https://issues.apache.org/jira/browse/SPARK-7532) | *Blocker* | **Make StreamingContext.start() idempotent**

Currently calling StreamingContext.start() throws error when the context is already started. This is inconsistent with the the StreamingContext.stop() which is idempotent, that is, called stop() on a stopped context is a no-op.


---

* [SPARK-7531](https://issues.apache.org/jira/browse/SPARK-7531) | *Major* | **Install GPG on Jenkins machines**

This one is also required for us to cut regular snapshot releases from Jenkins.


---

* [SPARK-7528](https://issues.apache.org/jira/browse/SPARK-7528) | *Major* | **Java compatibility of RankingMetrics**

This is to check Java compatibility of RankingMetrics, which uses ClassTag. Maybe we should create a factory method for Java users that uses a fake tag.


---

* [SPARK-7526](https://issues.apache.org/jira/browse/SPARK-7526) | *Minor* | **Specify ip of RBackend, MonitorServer and RRDD Socket server**

These R process only used to communicate with JVM process on local, so binding to localhost is more reasonable then wildcard ip.


---

* [SPARK-7522](https://issues.apache.org/jira/browse/SPARK-7522) | *Minor* | **ML Examples option for dataFormat should not be enclosed in angle brackets**

Some ML examples include an option for specifying the data format, such as DecisionTreeExample, but the option is enclosed in angle brackets like "opt[String]("<dataFormat>")."  This is probably just a typo but makes it awkward to use the option.


---

* [SPARK-7520](https://issues.apache.org/jira/browse/SPARK-7520) | *Critical* | **Install Jekyll On Jenkins Machines**

Hey Shane,

SPARK-1517 requires us to install Jekyll on the build machines. Any chance we can do that?

http://jekyllrb.com/


---

* [SPARK-7519](https://issues.apache.org/jira/browse/SPARK-7519) | *Minor* | **Some minor UI bugs in the new HiveThriftServer2 web UI**

Bugs description:

# There are extra commas on the top of session list.
# The format of time in "Start at:" is not the same as others.
# The total number of online sessions is wrong.


---

* [SPARK-7516](https://issues.apache.org/jira/browse/SPARK-7516) | *Minor* | **Replace deprecated Data Frame api in Python Docs**

In sql-programming-guide, deprecated python data frame api should be replaced:

schemaPeople = sqlContext.inferSchema(people)


---

* [SPARK-7512](https://issues.apache.org/jira/browse/SPARK-7512) | *Major* | **SparkR RDD show method doesn't work after transformations**

Detailed description of the bug at http://stackoverflow.com/questions/30057702/sparkr-filterrdd-and-flatmap-not-working


---

* [SPARK-7508](https://issues.apache.org/jira/browse/SPARK-7508) | *Minor* | **JettyUtils-generated servlets to log & report all errors**

the servlets created by JettyUtils to render pages do handle {{IllegalArgumentException}} exceptions, but all others are just thrown up. This stops them being logged or converted to meaningful error messages.

At the very least, server-side logging via log4j means that problems can be identified.


---

* [SPARK-7504](https://issues.apache.org/jira/browse/SPARK-7504) | *Major* | **NullPointerException when initializing SparkContext in YARN-cluster mode**

It is not clear for most users that, while running Spark on YARN a {{SparkContext}} with a given execution plan can be run locally as {{yarn-client}}, but can not deploy itself to the cluster. This is currently performed using {{org.apache.spark.deploy.yarn.Client}}. {color:gray} I think we should support deployment through {{SparkContext}}, but this is not the point I wish to make here. {color}

Configuring a {{SparkContext}} to deploy itself currently will yield an {{ERROR}} while accessing {{spark.yarn.app.id}} in  {{YarnClusterSchedulerBackend}}, and after that a {{NullPointerException}} while referencing the {{ApplicationMaster}} instance.

Spark should clearly inform the user that it might be running in {{yarn-cluster}} mode without a proper submission using {{Client}} and that deploying is not supported directly from {{SparkContext}}.


---

* [SPARK-7503](https://issues.apache.org/jira/browse/SPARK-7503) | *Major* | **Resources in .sparkStaging directory can't be cleaned up on error**

When we run applications on YARN with cluster mode, uploaded resources on .sparkStaging directory can't be cleaned up in case of failure of uploading local resources.

You can see this issue by running following command.
{code}
bin/spark-submit --master yarn --deploy-mode cluster --class <someClassName> <non-existing-jar>
{code}


---

* [SPARK-7502](https://issues.apache.org/jira/browse/SPARK-7502) | *Major* | **DAG visualization: handle removed stages gracefully**

Right now we get a blank viz in the job page if this happens. Then the JS error message in the developer console looks something like "Warning: SVG view box cannot be 'Nan Nan Nan Nan'".


---

* [SPARK-7500](https://issues.apache.org/jira/browse/SPARK-7500) | *Minor* | **DAG visualization: cluster name bleeds beyond the cluster**

This happens only for long names. See screenshot.


---

* [SPARK-7496](https://issues.apache.org/jira/browse/SPARK-7496) | *Minor* | **User guide update for Online LDA**

Update LDA subsection of clustering section of MLlib programming guide to include OnlineLDA


---

* [SPARK-7490](https://issues.apache.org/jira/browse/SPARK-7490) | *Minor* | **MapOutputTracker: close input streams to free native memory**

GZIPInputStream allocates native memory that is not freed until close() or when the finalizer runs. It is best to close() these streams explicitly to avoid native memory leaks

Pull request here: https://github.com/apache/spark/pull/5982


---

* [SPARK-7489](https://issues.apache.org/jira/browse/SPARK-7489) | *Major* | **Spark shell crashes when compiled with scala 2.11 and SPARK\_PREPEND\_CLASSES=true**

Steps followed
>export SPARK\_PREPEND\_CLASSES=true
>dev/change-version-to-2.11.sh
> sbt/sbt -Pyarn -Phadoop-2.4 -Dscala-2.11 -DskipTests clean assembly

>bin/spark-shell
....................
15/05/08 22:31:35 INFO Main: Created spark context..
Spark context available as sc.
java.lang.NoClassDefFoundError: org/apache/hadoop/hive/conf/HiveConf
  at java.lang.Class.getDeclaredConstructors0(Native Method)
  at java.lang.Class.privateGetDeclaredConstructors(Class.java:2671)
  at java.lang.Class.getConstructor0(Class.java:3075)
  at java.lang.Class.getConstructor(Class.java:1825)
  at org.apache.spark.repl.Main$.createSQLContext(Main.scala:86)
  ... 45 elided
Caused by: java.lang.ClassNotFoundException: org.apache.hadoop.hive.conf.HiveConf
  at java.net.URLClassLoader.findClass(URLClassLoader.java:381)
  at java.lang.ClassLoader.loadClass(ClassLoader.java:424)
  at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:331)
  at java.lang.ClassLoader.loadClass(ClassLoader.java:357)
  ... 50 more
<console>:11: error: not found: value sqlContext
       import sqlContext.implicits.\_
              ^
<console>:11: error: not found: value sqlContext
       import sqlContext.sql

There is a similar Resolved JIRA issue  -SPARK-7470 and a PR https://github.com/apache/spark/pull/5997 , which handled same  issue  only in scala 2.10


---

* [SPARK-7485](https://issues.apache.org/jira/browse/SPARK-7485) | *Major* | **Remove python artifacts from the assembly jar**

We change it so that we distributed the python files via a zip file in SPARK-6869.  With that we should remove the python files from the assembly jar.


---

* [SPARK-7484](https://issues.apache.org/jira/browse/SPARK-7484) | *Minor* | **Support passing jdbc connection properties for dataframe.createJDBCTable and insertIntoJDBC**

Few jdbc drivers like SybaseIQ support passing username and password only through connection properties. So the same needs to be supported.


---

* [SPARK-7482](https://issues.apache.org/jira/browse/SPARK-7482) | *Critical* | **Rename some DataFrame API methods in SparkR to match their counterparts in Scala**

This is re-consideration on how to solve name conflict. Previously, we rename API names from Scala API if there is name conflict with base or other commonly-used packages. However, from long term perspective, this is not good for API stability, because we can't predict name conflicts, for example, if in the future a name added in base package conflicts with an API in SparkR? So the better policy is to keep API name same as Scala's without worrying about name conflicts. When users use SparkR, they should load SparkR as last package, so that all API names are effective. Use can explicitly use :: to refer to hidden names from other packages.

more discussion can be found at https://issues.apache.org/jira/browse/SPARK-6812


---

* [SPARK-7475](https://issues.apache.org/jira/browse/SPARK-7475) | *Minor* | **adjust ldaExample for online LDA**

Add a new argument to specify the algorithm applied to LDA, to exhibit the basic usage of LDAOptimizer.


---

* [SPARK-7474](https://issues.apache.org/jira/browse/SPARK-7474) | *Major* | **ParamGridBuilder's doctest doesn't show up correctly in the generated doc**

{code}
>>> from classification import LogisticRegression
>>> lr = LogisticRegression()
>>> output = ParamGridBuilder().baseOn({lr.labelCol: 'l'})             .baseOn([lr.predictionCol, 'p'])             .addGrid(lr.regParam, [1.0, 2.0, 3.0])             .addGrid(lr.maxIter, [1, 5])             .addGrid(lr.featuresCol, ['f'])             .build()
>>> expected = [ {lr.regParam: 1.0, lr.featuresCol: 'f', lr.maxIter: 1, lr.labelCol: 'l', lr.predictionCol: 'p'}, {lr.regParam: 2.0, lr.featuresCol: 'f', lr.maxIter: 1, lr.labelCol: 'l', lr.predictionCol: 'p'}, {lr.regParam: 3.0, lr.featuresCol: 'f', lr.maxIter: 1, lr.labelCol: 'l', lr.predictionCol: 'p'}, {lr.regParam: 1.0, lr.featuresCol: 'f', lr.maxIter: 5, lr.labelCol: 'l', lr.predictionCol: 'p'}, {lr.regParam: 2.0, lr.featuresCol: 'f', lr.maxIter: 5, lr.labelCol: 'l', lr.predictionCol: 'p'}, {lr.regParam: 3.0, lr.featuresCol: 'f', lr.maxIter: 5, lr.labelCol: 'l', lr.predictionCol: 'p'}]
>>> len(output) == len(expected)
True
>>> all([m in expected for m in output])
True
{code}


---

* [SPARK-7473](https://issues.apache.org/jira/browse/SPARK-7473) | *Trivial* | **Use reservoir sample in RandomForest when choosing features per node**

See sampling in selectNodesToSplit method


---

* [SPARK-7470](https://issues.apache.org/jira/browse/SPARK-7470) | *Major* | **Spark shell not having hive crashes SQLContext**

If hive is not found on my class path, I get the following exception and I don't get to use the SQLContext anymore. In fact, we already catch `java.lang.ClassNotFoundException` in case this happens. We just don't also catch `java.lang.NoClassDefFoundError`. This happens if you have `SPARK\_PREPEND\_CLASSES` set.

{code}
15/05/07 17:07:30 INFO BlockManagerMaster: Registered BlockManager
15/05/07 17:07:30 INFO EventLoggingListener: Logging events to file:/tmp/spark-events/local-1431043649919
15/05/07 17:07:30 INFO SparkILoop: Created spark context..
Spark context available as sc.
java.lang.NoClassDefFoundError: org/apache/hadoop/hive/conf/HiveConf
	at java.lang.Class.getDeclaredConstructors0(Native Method)
	at java.lang.Class.privateGetDeclaredConstructors(Class.java:2493)
	at java.lang.Class.getConstructor0(Class.java:2803)
	at java.lang.Class.getConstructor(Class.java:1718)
	at org.apache.spark.repl.SparkILoop.createSQLContext(SparkILoop.scala:1026)
	at $iwC$$iwC.<init>(<console>:9)
	at $iwC.<init>(<console>:18)
{code}


---

* [SPARK-7469](https://issues.apache.org/jira/browse/SPARK-7469) | *Major* | **DAG visualization: show operators for SQL**

Right now the DAG shows low level Spark operations when SQL users really care about physical operators. We should show those instead.


---

* [SPARK-7467](https://issues.apache.org/jira/browse/SPARK-7467) | *Major* | **DAG visualization: handle checkpoint correctly**

We need to wrap RDD#doCheckpoint in a scope. Otherwise CheckpointRDDs may belong to other operators.


---

* [SPARK-7466](https://issues.apache.org/jira/browse/SPARK-7466) | *Critical* | **DAG visualization: orphaned nodes are not rendered correctly**

If you have an RDD instantiated outside of a scope, it is rendered as a weird badge outside of a stage. This is because we keep the edge but do not inform dagre-d3 of the node, resulting in the library rendering the node for us without the expected styles and labels.


---

* [SPARK-7464](https://issues.apache.org/jira/browse/SPARK-7464) | *Major* | **DAG visualization: highlight the same RDDs on hover**

We should make it clear that different RDDs are really the same ones if they are referenced across different stages in the same job.


---

* [SPARK-7452](https://issues.apache.org/jira/browse/SPARK-7452) | *Major* | **need to sort when convert to array in topByKey**

the toArray function of the PriorityQueue does not necessarily preserve order. Add a counter-example as the test, which would fail the original impl.


---

* [SPARK-7451](https://issues.apache.org/jira/browse/SPARK-7451) | *Major* | **Spark on Yarn : Preemption of executors is counted as failure causing Spark job to fail**

Preemption of executors by YARN's scheduler is counted as failure in Spark, which causes spark job to fail once failure count crosses 'spark.yarn.max.executor.failures'.


---

* [SPARK-7450](https://issues.apache.org/jira/browse/SPARK-7450) | *Minor* | **Use UNSAFE.getLong() to speed up BitSetMethods#anySet()**

Currently BitSetMethods#anySet() traverses BitSet in bytes.
We can use UNSAFE.getLong() for speed up.


---

* [SPARK-7447](https://issues.apache.org/jira/browse/SPARK-7447) | *Major* | **Large Job submission lag when using Parquet w/ Schema Merging**

I have 2.6 billion rows in parquet format and I'm trying to use the new schema merging feature (I was enforcing a consistent schema manually before in 0.8-1.2 which was annoying). 

I have approximate 200 parquet files with key=<date>. When I load the dataframe with the sqlcontext that process is understandably slow because I assume it's reading all the meta data from the parquet files and doing the initial schema merging. So that's ok.

However the problem I have is that once I have the dataframe. Doing any operation on the dataframe seems to have a 10-30 second lag before it actually starts processing the Job and shows up as an Active Job in the Spark Manager. This was an instant operation in all previous versions of Spark. Once the job actually is running the performance is fantastic, however this job submission lag is horrible.

I'm wondering if there is a bug with recomputing the schema merging. Running top on the master node shows some thread maxed out on 1 cpu during the lagging time which makes me think it's not net i/o but something pre-processing before job submission.


---

* [SPARK-7438](https://issues.apache.org/jira/browse/SPARK-7438) | *Minor* | **Validation Error while running  countApproxDistinct  with relative accuracy  \>= 0.38**

Eg Code: 
val a = sc.parallelize(1 to 10000, 20)
val b = a ++ a ++ a ++ a ++ a
b.countApproxDistinct(0.38)
"java.lang.IllegalArgumentException: requirement failed: p (3) must be at least 4"

Issue 1: When relative accuracy  >= 0.38, IAE is thrown, as the precision p evaluates to 3.
However,same input in countApproxDistinctByKey(0.38), works fine. Usage of relativeSD should be consistent in both countApproxDistinct and countApproxDistinctByKey
Issue 2: Validation error message "p (3) must be at least 4" is not giving a clue on what went wrong.
Issue 3: When relative accuracy < 0.000017, a proper validation error message is not shown from countApproxDistinct


---

* [SPARK-7436](https://issues.apache.org/jira/browse/SPARK-7436) | *Major* | **Cannot implement nor use custom StandaloneRecoveryModeFactory implementations**

At least, this code fragment is buggy ({{Master.scala}}):

{code}
      case "CUSTOM" =>
        val clazz = Class.forName(conf.get("spark.deploy.recoveryMode.factory"))
        val factory = clazz.getConstructor(conf.getClass, Serialization.getClass)
          .newInstance(conf, SerializationExtension(context.system))
          .asInstanceOf[StandaloneRecoveryModeFactory]
        (factory.createPersistenceEngine(), factory.createLeaderElectionAgent(this))
{code}

Because here: {{val factory = clazz.getConstructor(conf.getClass, Serialization.getClass)}} it tries to find the constructor which accepts {{org.apache.spark.SparkConf}} and class of companion object of {{akka.serialization.Serialization}} and then it tries to instantiate {{newInstance(conf, SerializationExtension(context.system))}} with instance of {{SparkConf}} and instance of {{Serialization}} class - not the companion objects.


---

* [SPARK-7435](https://issues.apache.org/jira/browse/SPARK-7435) | *Critical* | **Make DataFrame.show() consistent with that of Scala and pySpark**

Currently in SparkR, DataFrame has two methods show() and showDF(). show() prints the DataFrame column names and types and showDF() prints the first numRows rows of a DataFrame.

In Scala and pySpark, show() is used to prints rows of a DataFrame. 

We'd better keep API consistent unless there is some important reason. So propose to interchange the names (show() and showDF()) in SparkR.


---

* [SPARK-7431](https://issues.apache.org/jira/browse/SPARK-7431) | *Major* | **PySpark CrossValidatorModel needs to call parent init**

Try running the CrossValidator doc test in the pyspark shell.  Then type cvModel to print the model.  It will fail in {{Identifiable.\_\_repr\_\_}} since there is no uid defined!


---

* [SPARK-7429](https://issues.apache.org/jira/browse/SPARK-7429) | *Minor* | **Cleanups: Params.setDefault varargs, CrossValidatorModel transformSchema**

Params.setDefault taking a set of ParamPairs should be annotated with varargs.  I thought it would not work before, but it apparently does.

CrossValidator.transform should call transformSchema since the underlying Model might be a PipelineModel


---

* [SPARK-7427](https://issues.apache.org/jira/browse/SPARK-7427) | *Trivial* | **Make sharedParams match in Scala, Python**

The documentation for shared Params differs a little between Scala, Python.  The Python docs should be modified to match the Scala ones.  This will require modifying the sharedParamsCodeGen files.


---

* [SPARK-7421](https://issues.apache.org/jira/browse/SPARK-7421) | *Minor* | **Online LDA cleanups**

Planned changes, primarily to allow us more flexibility in the future:
* Rename "tau\_0" to "tau0"
* Mark LDAOptimizer trait sealed and DeveloperApi.
* Mark LDAOptimizer subclasses as final.
* Mark setOptimizer (the one taking an LDAOptimizer) and getOptimizer as DeveloperApi since we may need to change them in the future


---

* [SPARK-7411](https://issues.apache.org/jira/browse/SPARK-7411) | *Blocker* | **CTAS parser is incomplete**

The change to use an isolated classloader removed the use of the Semantic Analyzer for parsing CTAS queries.  We should fix this before the release.


---

* [SPARK-7408](https://issues.apache.org/jira/browse/SPARK-7408) | *Minor* | **DAG visualization: move style from JS to CSS**

Just for minor clean up.


---

* [SPARK-7407](https://issues.apache.org/jira/browse/SPARK-7407) | *Major* | **Use uid and param name to identify a parameter instead of the param object**

Transferring parameter values from one to another have been the pain point in the ML pipeline implementation. Because we use the param object as the key in the param map, we have to correctly copy them when making a copy of the transformer, estimator, and models. This becomes complicated when meta-algorithms are involved. For example, in cross validation:

{code}
val cv = new CrossValidator()
  .setEstimator(lr)
  .setEstimatorParamMaps(epm)
{code}

When we make a copy of `cv` with extra params that contain estimator params,

{code}
cv.copy(ParamMap(cv.numFolds -> 3, lr.maxIter -> 10))
{code}

we need to make a copy of the `lr` object as well and map `epm` to use the new param keys from the old `lr`. This is quite error-prone, especially if the estimator itself is another meta-algorithm.

Using uid + param name as the key in param maps and using the same uid in copy (and between estimator/model pairs) would simplify the implementations. We don't need to change the keys since the copied instance has the same id as the original instance. And it is easier to find models from a fitted pipeline.


---

* [SPARK-7405](https://issues.apache.org/jira/browse/SPARK-7405) | *Major* | **Fix the bug that ReceiverInputDStream doesn't report InputInfo**

The bug is because SPARK-7139 removed some codes from SPARK-7112 unintentionally here: https://github.com/apache/spark/commit/1854ac326a9cc6014817d8df30ed0458eee5d7d1#diff-5c8651dd78abd20439b8eb938175075dL72


---

* [SPARK-7403](https://issues.apache.org/jira/browse/SPARK-7403) | *Minor* | **Link URL in objects on Timeline View is wrong in case of running on YARN**

When we use Spark on YARN and have AllJobPage via ResourceManager's proxy, the link URL in objects which represent each job on timeline view is wrong.

In timeline-view.js, the link is generated as follows.
{code}
window.location.href = "job/?id=" + getJobId(this);
{code}
This assumes the URL displayed on the web browser ends with "jobs/" but when we access AllJobPage via the proxy, the url displayed does not end with "jobs/".


---

* [SPARK-7399](https://issues.apache.org/jira/browse/SPARK-7399) | *Blocker* | **Master fails on 2.11 with compilation error**

The current code in master (and 1.4 branch) fails on 2.11 with the following compilation error:

{code}
[error] /home/ubuntu/workspace/Apache Spark (master) on 2.11/core/src/main/scala/org/apache/spark/rdd/RDDOperationScope.scala:78: in object RDDOperationScope, multiple overloaded alternatives of method withScope define default arguments.
[error] private[spark] object RDDOperationScope {
[error]                       ^
{code}


---

* [SPARK-7396](https://issues.apache.org/jira/browse/SPARK-7396) | *Major* | **Update Producer in Kafka example to use new API of Kafka 0.8.2**

Due to upgrade of Kafka, current KafkaWordCountProducer will throw below exception, we need to update the code accordingly.

{code}
Exception in thread "main" kafka.common.FailedToSendMessageException: Failed to send messages after 3 tries.
	at kafka.producer.async.DefaultEventHandler.handle(DefaultEventHandler.scala:90)
	at kafka.producer.Producer.send(Producer.scala:77)
	at org.apache.spark.examples.streaming.KafkaWordCountProducer$.main(KafkaWordCount.scala:96)
	at org.apache.spark.examples.streaming.KafkaWordCountProducer.main(KafkaWordCount.scala)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.spark.deploy.SparkSubmit$.org$apache$spark$deploy$SparkSubmit$$runMain(SparkSubmit.scala:623)
	at org.apache.spark.deploy.SparkSubmit$.doRunMain$1(SparkSubmit.scala:169)
	at org.apache.spark.deploy.SparkSubmit$.submit(SparkSubmit.scala:192)
	at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:111)
	at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)
{code}


---

* [SPARK-7392](https://issues.apache.org/jira/browse/SPARK-7392) | *Critical* | **Kryo buffer size can not be larger than 2M**

when set *spark.kryoserializer.buffer* larger than 2048k, *IllegalArgumentException* will be thrown.


---

* [SPARK-7391](https://issues.apache.org/jira/browse/SPARK-7391) | *Minor* | **DAG visualization: open viz on stage page if from job page**

Right now we can click from the job page to the stage page. But as soon as you get to the stage page, you will have to open the viz manually again. This is annoying for users (like me) who expect that clicking from the job page would expand the stage DAG.


---

* [SPARK-7390](https://issues.apache.org/jira/browse/SPARK-7390) | *Major* | **CovarianceCounter in StatFunctions might calculate incorrect result**

CovarianceCounter in StatFunctions has a merging stage. In this merge function, the other CovarianceCounter object sometimes has zero count that causes the final CovarianceCounter with incorrect result.


---

* [SPARK-7388](https://issues.apache.org/jira/browse/SPARK-7388) | *Major* | **Python Api for Param[Array[T]]**

Python can't set Array[T] type params, because py4j casts a list to an ArrayList. Instead of Param[Array[T]], we sill have a ArrayParam[T] which can take a Seq[T].


---

* [SPARK-7384](https://issues.apache.org/jira/browse/SPARK-7384) | *Major* | **Fix flaky tests for distributed mode in BroadcastSuite**

Fixed the following failure: https://amplab.cs.berkeley.edu/jenkins/job/Spark-1.3-Maven-pre-YARN/hadoop.version=1.0.4,label=centos/452/testReport/junit/org.apache.spark.broadcast/BroadcastSuite/Unpersisting\_HttpBroadcast\_on\_executors\_and\_driver\_in\_distributed\_mode/

The tests should wait until all slaves are up. Otherwise, there may be only a part of {{BlockManager}}s registered, and fail the tests.


---

* [SPARK-7378](https://issues.apache.org/jira/browse/SPARK-7378) | *Blocker* | **HistoryServer does not handle "deep" link when lazy loading app**

This is a regression caused by SPARK-4705. When you go to a deep link into an app that is not loaded yet, that used to work, but now that returns a 404. You need to go into the root of the app first for the app to be loaded, which is not the expected behaviour.

Fix coming up.


---

* [SPARK-7377](https://issues.apache.org/jira/browse/SPARK-7377) | *Major* | **DAG visualization: JS error when there is only 1 RDD**

See screenshot. There is a simple fix.


---

* [SPARK-7375](https://issues.apache.org/jira/browse/SPARK-7375) | *Major* | **Avoid defensive copying in SQL exchange operator when sort-based shuffle buffers data in serialized form**

The original sort-based shuffle buffers shuffle input records in memory while sorting them. This causes problems when mutable records are presented to the shuffle, which happens in Spark SQL's Exchange operator. To work around this issue, SPARK-2967 and SPARK-4479 added defensive copying of shuffle inputs in the Exchange operator when sort-based shuffle is enabled.

I think that [~sandyr]'s recent patch for enabling serialization of records in sort-based shuffle (SPARK-4550) and my proposed {{unsafe}}-based shuffle path (SPARK-7081) may allow us to avoid this defensive copying in certain cases (since our patches cause records to be serialized one-at-a-time and remove the buffering of deserialized records).

As mentioned in SPARK-4479, a long-term fix for this issue might be to add hooks for informing the shuffle about object (im)mutability in order to allow the shuffle layer to decide whether to copy. In the meantime, though, I think that we should just extend the checks added in SPARK-4479 to avoid copies when these new serialized sort paths are used.

/cc [~rxin] [~marmbrus] [~yhuai]


---

* [SPARK-7371](https://issues.apache.org/jira/browse/SPARK-7371) | *Major* | **DAG visualization: put less emphasis on RDDs on stage page**

These are largely internal and users shouldn't really care about them that much.


---

* [SPARK-7361](https://issues.apache.org/jira/browse/SPARK-7361) | *Blocker* | **Throw unambiguous exception when attempting to start multiple StreamingContexts in the same JVM**

Currently attempt to start a streamingContext while another one is started throws a confusing exception that the action name JobScheduler is already registered. Instead its best to throw a proper exception as it is not supported.


---

* [SPARK-7356](https://issues.apache.org/jira/browse/SPARK-7356) | *Blocker* | **Flaky test: o.a.s.streaming.flume.FlumePollingStreamSuite**

https://amplab.cs.berkeley.edu/jenkins/job/Spark-Master-SBT/2269/


---

* [SPARK-7351](https://issues.apache.org/jira/browse/SPARK-7351) | *Major* | **Add spark.streaming.ui.retainedBatches to docs**

Title says it all


---

* [SPARK-7350](https://issues.apache.org/jira/browse/SPARK-7350) | *Minor* | **Attach the Streaming page when calling ssc.start()**

It's meaningless to display the Streaming tab before `ssc.start()`. So we should attach it in the `ssc.start` method.


---

* [SPARK-7347](https://issues.apache.org/jira/browse/SPARK-7347) | *Minor* | **DAG visualization: add tooltips to RDDs on job page**

Currently it's just a bunch of dots and it's not super clear what they represent. Once we add some tooltips it will be very clear.


---

* [SPARK-7345](https://issues.apache.org/jira/browse/SPARK-7345) | *Major* | **Spark cannot detect renamed columns using JDBC connector**

sqlContext.load("jdbc", Map("url" -> "some url", "dbtable" -> "(select column as column1, column as column2 from table)")) creates DataFrame with wrong schema which fails on action.
 
Most likely JDBC SQL connector uses getColumnName instead of getColumnLabel to deduce DataFrame schema from ResultSetMetaData.


---

* [SPARK-7341](https://issues.apache.org/jira/browse/SPARK-7341) | *Minor* | **Fix the flaky test: org.apache.spark.streaming.InputStreamsSuite.socket input stream**

Remove non-deterministic "Thread.sleep" and use deterministic strategies to fix the flaky failure: https://amplab.cs.berkeley.edu/jenkins/job/Spark-Master-Maven-pre-YARN/hadoop.version=1.0.4,label=centos/2127/testReport/junit/org.apache.spark.streaming/InputStreamsSuite/socket\_input\_stream/


---

* [SPARK-7333](https://issues.apache.org/jira/browse/SPARK-7333) | *Major* | **PySpark BinaryClassificationEvaluator**

Support BinaryClasisficationEvaluator in Python.


---

* [SPARK-7330](https://issues.apache.org/jira/browse/SPARK-7330) | *Major* | **JDBC RDD could lead to NPE when the date field is null**

because we call DateUtils.fromDate(rs.getDate(xx)) no matter it is null or not.


---

* [SPARK-7329](https://issues.apache.org/jira/browse/SPARK-7329) | *Minor* | **Use itertools.product in ParamGridBuilder**

justinuang suggested the following on https://github.com/apache/spark/pull/5601:

{code}
[dict(zip(self.\_param\_grid.keys(), prod)) for prod in itertools.product(*self.\_param\_grid.values())]
{code}


---

* [SPARK-7328](https://issues.apache.org/jira/browse/SPARK-7328) | *Major* | **Add missing items to pyspark.mllib.linalg.Vectors**

Add
1. Class methods squared\_dist, dot
2. parse
3. norm
4. numNonzeros


---

* [SPARK-7326](https://issues.apache.org/jira/browse/SPARK-7326) | *Major* | **Performing window() on a WindowedDStream doesn't work all the time**

Someone reported similar issues before but got no response.
http://apache-spark-user-list.1001560.n3.nabble.com/Windows-of-windowed-streams-not-displaying-the-expected-results-td466.html

And I met the same issue recently and it can be reproduced in 1.3.1 by the following piece of code:

def main(args: Array[String]) {

    val batchInterval = "1234"
    val sparkConf = new SparkConf()
      .setAppName("WindowOnWindowedDStream")
      .setMaster("local[2]")

    val ssc =  new StreamingContext(sparkConf, Milliseconds(batchInterval.toInt))
    ssc.checkpoint("checkpoint")

    def createRDD(i: Int) : RDD[(String, Int)] = {

      val count = 1000
      val rawLogs = (1 to count).map{ \_ =>
        val word = "word" + Random.nextInt.abs % 5

        (word, 1)
      }
      ssc.sparkContext.parallelize(rawLogs)
    }

    val rddQueue = mutable.Queue[RDD[(String, Int)]]()
    val rawLogStream = ssc.queueStream(rddQueue)

    (1 to 300) foreach { i =>
      rddQueue.enqueue(createRDD(i))
    }

    val l1 = rawLogStream.window(Milliseconds(batchInterval.toInt) * 5, Milliseconds(batchInterval.toInt) * 5).reduceByKey(\_ + \_)

    val l2 = l1.window(Milliseconds(batchInterval.toInt) * 15, Milliseconds(batchInterval.toInt) * 15).reduceByKey(\_ + \_)

    l1.print()
    l2.print()

    ssc.start()
    ssc.awaitTermination()
}

Here we have two windowed DStream instance l1 and l2. 

l1 is the result DStream by performing a window() on the source DStream with both window and sliding duration 5 times the batch internal of the source stream.

l2 is the result DStream by performing a window() on l1, with both window and sliding duration 3 times l1's batch interval, which is 15 times of the source stream.

From the output of this simple streaming app, I can only see print data output from l1 and no data printed from l2.

Diving into the source code, I found the problem may most likely reside in DStream.slice() implementation, as shown below.

  def slice(fromTime: Time, toTime: Time): Seq[RDD[T]] = {
    if (!isInitialized) {
      throw new SparkException(this + " has not been initialized")
    }
    if (!(fromTime - zeroTime).isMultipleOf(slideDuration)) {
      logWarning("fromTime (" + fromTime + ") is not a multiple of slideDuration ("
        + slideDuration + ")")
    }
    if (!(toTime - zeroTime).isMultipleOf(slideDuration)) {
      logWarning("toTime (" + fromTime + ") is not a multiple of slideDuration ("
        + slideDuration + ")")
    }
    val alignedToTime = toTime.floor(slideDuration, zeroTime)
    val alignedFromTime = fromTime.floor(slideDuration, zeroTime)

    logInfo("Slicing from " + fromTime + " to " + toTime +
      " (aligned to " + alignedFromTime + " and " + alignedToTime + ")")

    alignedFromTime.to(alignedToTime, slideDuration).flatMap(time => {
      if (time >= zeroTime) getOrCompute(time) else None
    })
  }

Here after performing floor() on both fromTime and toTime, the result (alignedFromTime - zeroTime) and (alignedToTime - zeroTime) may no longer be multiple of the slidingDuration, thus making isTimeValid() check failed for all the remaining computation.

The fix would be to add a new floor() function in Time.scala to respect the zeroTime while performing the floor :

  def floor(that: Duration, zeroTime: Time): Time = {
    val t = that.milliseconds
    new Time(((this.millis - zeroTime.milliseconds) / t) * t + zeroTime.milliseconds)
  } 

And then change the DStream.slice to call this new floor function by passing in its zeroTime.

    val alignedToTime = toTime.floor(slideDuration, zeroTime)
    val alignedFromTime = fromTime.floor(slideDuration, zeroTime)

This way the alignedToTime and alignedFromTime are *really* aligned in respect to zeroTime whose value is not really a 0.


---

* [SPARK-7324](https://issues.apache.org/jira/browse/SPARK-7324) | *Major* | **Add DataFrame.dropDuplicates**

Similar to http://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.drop\_duplicates.html

def dropDuplicates(): DataFrame

def dropDuplicates(subset: Seq[String]): DataFrame

We can turn this into groupBy(cols).agg(first(...))


---

* [SPARK-7323](https://issues.apache.org/jira/browse/SPARK-7323) | *Minor* | **Use insertAll instead of individual insert while merging combiners**

Currently we invoke combiners.insert() for each tuple in Aggregator - which results in creation of an Iterator per tuple, and iterating over this iterator : instead, we can directly call insertAll to avoid the object creation, method invocation and iteration overhead - for each tuple when combiners are used.


---

* [SPARK-7321](https://issues.apache.org/jira/browse/SPARK-7321) | *Critical* | **Add Column expression for conditional statements (if, case)**

A good reference implementation is http://www.jooq.org/doc/3.6/manual-single-page/#case-expressions

As an example in Python:
{code}
when(df.age == 1, "one").when(df.age == 2, "two").otherwise("unknown")
{code}


---

* [SPARK-7319](https://issues.apache.org/jira/browse/SPARK-7319) | *Major* | **Improve the output from DataFrame.show()**

DataFrame.show()'s current output is not as nice as some of the command line SQL tools. We should improve it. 

This is a good example:
{code}
+----+----+---------+
|year|code|govt\_debt|
+----+----+---------+
|2009|RU  |     8.70|
|2010|RU  |     9.10|
|2011|RU  |     9.30|
|2012|RU  |     9.40|
|2009|CA  |    51.30|
+----+----+---------+
{code}


---

* [SPARK-7318](https://issues.apache.org/jira/browse/SPARK-7318) | *Critical* | **DStream isn't cleaning closures correctly**

{code}
  def transform[U: ClassTag](transformFunc: RDD[T] => RDD[U]): DStream[U] = {
    transform((r: RDD[T], t: Time) => context.sparkContext.clean(transformFunc(r), false))
  }
{code}
This is cleaning an RDD instead!


---

* [SPARK-7317](https://issues.apache.org/jira/browse/SPARK-7317) | *Minor* | **ShuffleHandle needs to be exposed**

ShuffleHandle is marked private[spark] - while a lot of code which depends on it, and exposes it, is DeveloperApi.
While the actual implementation can remain private[spark], the handle class itself should be exposed so that Rdd's can leverage it.

Example: 
a) ShuffleDependency.shuffleHandle exposes a ShuffleHandle
b) ShuffleManager instance is exposed via SparkEnv.get.shuffleManager
c) SparkEnv.get.shuffleManager.getReader is exposed which needs handle as param : and can be used to write RDD's which leverage shuffle without needing to go through spark's shuffle based rdd's.

So all the machinery for custom RDD to leverage shuffle exists - except for specifying the ShuffleHandle class itself in dependencies.
This allows for customizations in user code on how to leverage shuffle.
For example, specialized join implementations.


---

* [SPARK-7314](https://issues.apache.org/jira/browse/SPARK-7314) | *Major* | **Upgrade Pyrolite to 4.4**

As discussed on SPARK-6288, we are using a really old version of Pyrolite, which was published under org.spark-project. It would be nice to upgrade to it the latest (and possibly official) version.


---

* [SPARK-7312](https://issues.apache.org/jira/browse/SPARK-7312) | *Blocker* | **SPARK-6913 broke jdk6 build**

https://github.com/apache/spark/pull/5782 uses java.sql.Driver.getParentLogger  which doesn't exist in jdk6, only jdk7

[error] /home/tgraves/tgravescs\_spark/sql/core/src/main/scala/org/apache/spark/sql/jdbc/jdbc.scala:198: value getParentLogger is not a member of java.sql.Driver
[error] override def getParentLogger: java.util.logging.Logger = wrapped.getParentLogger
[error] ^


---

* [SPARK-7311](https://issues.apache.org/jira/browse/SPARK-7311) | *Major* | **Enable in-memory serialized map-side shuffle to work with SQL serializers**

Right now it only works with KryoSerializer, but it would be useful to make it work with any Serializer that writes objects in a relocatable / self-contained fashion.


---

* [SPARK-7307](https://issues.apache.org/jira/browse/SPARK-7307) | *Major* | **Changing persistence engine trait to an abstract class**

See https://github.com/apache/spark/pull/5832


---

* [SPARK-7306](https://issues.apache.org/jira/browse/SPARK-7306) | *Blocker* | **SPARK-7224 broke build with jdk6**

Lots going on so filing blocker ticket so this doesn't get lost.

https://github.com/apache/spark/pull/5790

broke compatibility with jdk6 because its using  java.nio.file.Path which is only available in jdk7


---

* [SPARK-7304](https://issues.apache.org/jira/browse/SPARK-7304) | *Minor* | **Include $@ in call to mvn in make-distribution.sh**

The call to mvn does not include $@ in the command line in one place in make-distribution.sh.  This causes that mvn call to ignore additional command line parameters passed to make-distribution.sh in that call.


---

* [SPARK-7303](https://issues.apache.org/jira/browse/SPARK-7303) | *Major* | **push down project if possible when the child is sort**

Optimize the case of `project(\_, sort)` , a example is:

`select key from (select * from testData order by key) t`

optimize it from
```
== Parsed Logical Plan ==
'Project ['key]
 'Subquery t
  'Sort ['key ASC], true
   'Project [*]
    'UnresolvedRelation [testData], None

== Analyzed Logical Plan ==
Project [key#0]
 Subquery t
  Sort [key#0 ASC], true
   Project [key#0,value#1]
    Subquery testData
     LogicalRDD [key#0,value#1], MapPartitionsRDD[1]

== Optimized Logical Plan ==
Project [key#0]
 Sort [key#0 ASC], true
  LogicalRDD [key#0,value#1], MapPartitionsRDD[1] 

== Physical Plan ==
Project [key#0]
 Sort [key#0 ASC], true
  Exchange (RangePartitioning [key#0 ASC], 5), []
   PhysicalRDD [key#0,value#1], MapPartitionsRDD[1] 
```

to 
```
== Parsed Logical Plan ==
'Project ['key]
 'Subquery t
  'Sort ['key ASC], true
   'Project [*]
    'UnresolvedRelation [testData], None

== Analyzed Logical Plan ==
Project [key#0]
 Subquery t
  Sort [key#0 ASC], true
   Project [key#0,value#1]
    Subquery testData
     LogicalRDD [key#0,value#1], MapPartitionsRDD[1] 

== Optimized Logical Plan ==
Sort [key#0 ASC], true
 Project [key#0]
  LogicalRDD [key#0,value#1], MapPartitionsRDD[1] 

== Physical Plan ==
Sort [key#0 ASC], true
 Exchange (RangePartitioning [key#0 ASC], 5), []
  Project [key#0]
   PhysicalRDD [key#0,value#1], MapPartitionsRDD[1] 
```


---

* [SPARK-7302](https://issues.apache.org/jira/browse/SPARK-7302) | *Minor* | **SPARK building documentation still mentions building for yarn 0.23**

as of SPARK-3445 we deprecated using hadoop 0.23.  It looks like the building documentation still references it though. We should remove that.


---

* [SPARK-7299](https://issues.apache.org/jira/browse/SPARK-7299) | *Major* | **saving Oracle-source DataFrame to Hive changes scale**

When I load data from Oracle, save it to a table, then select from it, the scale is changed.

For example, I have a column defined as NUMBER(12, 2). I insert 19999 into the column. When I write that to a table and select from it, the result is 199.99.

Some databases (e.g. H2) will return this as 19999.00, but Oracle returns it as 19999. I believe that when the file is written out to parquet, the scale information is taken from the schema, not the value. In an Oracle (at least) JDBC DataFrame, the scale may be different from row to row.


---

* [SPARK-7298](https://issues.apache.org/jira/browse/SPARK-7298) | *Blocker* | **Harmonize style of new UI visualizations**

We need to go through all new visualizations in the web UI and make sure they have consistent style. Both consistent with each-other and consistent with the rest of the UI.


---

* [SPARK-7297](https://issues.apache.org/jira/browse/SPARK-7297) | *Blocker* | **Make timeline more discoverable**

Currently there is a small drop down triangle. I showed this to many people and they said they couldn't easily find it.


---

* [SPARK-7296](https://issues.apache.org/jira/browse/SPARK-7296) | *Major* | **Timeline view for Stage page**

May be a stretch for 1.4 but would like to see if we can get it.


---

* [SPARK-7295](https://issues.apache.org/jira/browse/SPARK-7295) | *Major* | **Add bitwise operations to DataFrame DSL**

We should add the following functions to org.apache.spark.sql.Column:

bitwiseAND
bitwiseOR
bitwiseXOR
bitwiseNOT

They should also be added to Python's Column class.


---

* [SPARK-7294](https://issues.apache.org/jira/browse/SPARK-7294) | *Major* | **Add a between function in Column**

Column.between(a, b)

We can just translate it to c > a and c < b

Should add this for both Python and Scala/Java.


---

* [SPARK-7291](https://issues.apache.org/jira/browse/SPARK-7291) | *Minor* | **Fix a flaky test in AkkaRpcEnvSuite**

Fixed the following flaky test:

https://amplab.cs.berkeley.edu/jenkins/job/Spark-Master-Maven-with-YARN/HADOOP\_PROFILE=hadoop-2.3,label=centos/1973/testReport/junit/org.apache.spark.rpc.akka/AkkaRpcEnvSuite/setupEndpointRef\_\_systemName\_\_address\_\_endpointName/


---

* [SPARK-7288](https://issues.apache.org/jira/browse/SPARK-7288) | *Major* | **Suppress compiler warnings due to use of sun.misc.Unsafe**

Our use of sun.misc.Unsafe in Tungsten led to some Java compiler warnings. These warnings can only be suppressed via the -XDignore.symbol.file javac flag; the @SuppressWarnings annotation won't work for these.

We can enable this flag only for the {{unsafe}} module.  To prevent us from having to add similar flags if we call unsafe functionality in other modules, we can place a facade in front of Unsafe so that other modules won't call it directly. This facade also will also help us to avoid accidental usage of deprecated Unsafe methods or methods that aren't supported in Java 6.


---

* [SPARK-7282](https://issues.apache.org/jira/browse/SPARK-7282) | *Major* | **Fix a flaky test in StreamingListenerSuite**

Fixed the following flaky test:

{code}
[info] StreamingListenerSuite:
[info] - batch info reporting (782 milliseconds)
[info] - receiver info reporting *** FAILED *** (3 seconds, 911 milliseconds)
[info]   The code passed to eventually never returned normally. Attempted 10 times over 3.4735783689999997 seconds. Last failure message: 0 did not equal 1. (StreamingListenerSuite.scala:104)
[info]   org.scalatest.exceptions.TestFailedDueToTimeoutException:
[info]   at org.scalatest.concurrent.Eventually$class.tryTryAgain$1(Eventually.scala:420)
[info]   at org.scalatest.concurrent.Eventually$class.eventually(Eventually.scala:438)
[info]   at org.scalatest.concurrent.Eventually$.eventually(Eventually.scala:478)
[info]   at org.scalatest.concurrent.Eventually$class.eventually(Eventually.scala:307)
[info]   at org.scalatest.concurrent.Eventually$.eventually(Eventually.scala:478)
[info]   at org.apache.spark.streaming.StreamingListenerSuite$$anonfun$2.apply$mcV$sp(StreamingListenerSuite.scala:104)
[info]   at org.apache.spark.streaming.StreamingListenerSuite$$anonfun$2.apply(StreamingListenerSuite.scala:94)
[info]   at org.apache.spark.streaming.StreamingListenerSuite$$anonfun$2.apply(StreamingListenerSuite.scala:94)
[info]   at org.scalatest.Transformer$$anonfun$apply$1.apply$mcV$sp(Transformer.scala:22)
[info]   at org.scalatest.OutcomeOf$class.outcomeOf(OutcomeOf.scala:85)
[info]   at org.scalatest.OutcomeOf$.outcomeOf(OutcomeOf.scala:104)
[info]   at org.scalatest.Transformer.apply(Transformer.scala:22)
[info]   at org.scalatest.Transformer.apply(Transformer.scala:20)
[info]   at org.scalatest.FunSuiteLike$$anon$1.apply(FunSuiteLike.scala:166)
[info]   at org.scalatest.Suite$class.withFixture(Suite.scala:1122)
[info]   at org.scalatest.FunSuite.withFixture(FunSuite.scala:1555)
[info]   at org.scalatest.FunSuiteLike$class.invokeWithFixture$1(FunSuiteLike.scala:163)
[info]   at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:175)
[info]   at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:175)
[info]   at org.scalatest.SuperEngine.runTestImpl(Engine.scala:306)
[info]   at org.scalatest.FunSuiteLike$class.runTest(FunSuiteLike.scala:175)
[info]   at org.apache.spark.streaming.StreamingListenerSuite.org$scalatest$BeforeAndAfter$$super$runTest(StreamingListenerSuite.scala:34)
[info]   at org.scalatest.BeforeAndAfter$class.runTest(BeforeAndAfter.scala:200)
[info]   at org.apache.spark.streaming.StreamingListenerSuite.runTest(StreamingListenerSuite.scala:34)
[info]   at org.scalatest.FunSuiteLike$$anonfun$runTests$1.apply(FunSuiteLike.scala:208)
[info]   at org.scalatest.FunSuiteLike$$anonfun$runTests$1.apply(FunSuiteLike.scala:208)
[info]   at org.scalatest.SuperEngine$$anonfun$traverseSubNodes$1$1.apply(Engine.scala:413)
[info]   at org.scalatest.SuperEngine$$anonfun$traverseSubNodes$1$1.apply(Engine.scala:401)
[info]   at scala.collection.immutable.List.foreach(List.scala:318)
[info]   at org.scalatest.SuperEngine.traverseSubNodes$1(Engine.scala:401)
[info]   at org.scalatest.SuperEngine.org$scalatest$SuperEngine$$runTestsInBranch(Engine.scala:396)
[info]   at org.scalatest.SuperEngine.runTestsImpl(Engine.scala:483)
[info]   at org.scalatest.FunSuiteLike$class.runTests(FunSuiteLike.scala:208)
[info]   at org.scalatest.FunSuite.runTests(FunSuite.scala:1555)
[info]   at org.scalatest.Suite$class.run(Suite.scala:1424)
[info]   at org.scalatest.FunSuite.org$scalatest$FunSuiteLike$$super$run(FunSuite.scala:1555)
[info]   at org.scalatest.FunSuiteLike$$anonfun$run$1.apply(FunSuiteLike.scala:212)
[info]   at org.scalatest.FunSuiteLike$$anonfun$run$1.apply(FunSuiteLike.scala:212)
[info]   at org.scalatest.SuperEngine.runImpl(Engine.scala:545)
[info]   at org.scalatest.FunSuiteLike$class.run(FunSuiteLike.scala:212)
[info]   at org.apache.spark.streaming.StreamingListenerSuite.org$scalatest$BeforeAndAfter$$super$run(StreamingListenerSuite.scala:34)
[info]   at org.scalatest.BeforeAndAfter$class.run(BeforeAndAfter.scala:241)
[info]   at org.apache.spark.streaming.StreamingListenerSuite.run(StreamingListenerSuite.scala:34)
[info]   at org.scalatest.tools.Framework.org$scalatest$tools$Framework$$runSuite(Framework.scala:462)
[info]   at org.scalatest.tools.Framework$ScalaTestTask.execute(Framework.scala:671)
[info]   at sbt.ForkMain$Run$2.call(ForkMain.java:294)
[info]   at sbt.ForkMain$Run$2.call(ForkMain.java:284)
[info]   at java.util.concurrent.FutureTask.run(FutureTask.java:262)
[info]   at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
[info]   at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
[info]   at java.lang.Thread.run(Thread.java:745)
[info]   Cause: org.scalatest.exceptions.TestFailedException: 0 did not equal 1
[info]   at org.scalatest.MatchersHelper$.newTestFailedException(MatchersHelper.scala:160)
[info]   at org.scalatest.Matchers$ShouldMethodHelper$.shouldMatcher(Matchers.scala:6231)
[info]   at org.scalatest.Matchers$AnyShouldWrapper.should(Matchers.scala:6277)
[info]   at org.apache.spark.streaming.StreamingListenerSuite$$anonfun$2$$anonfun$apply$mcV$sp$1.apply$mcV$sp(StreamingListenerSuite.scala:105)
[info]   at org.apache.spark.streaming.StreamingListenerSuite$$anonfun$2$$anonfun$apply$mcV$sp$1.apply(StreamingListenerSuite.scala:104)
[info]   at org.apache.spark.streaming.StreamingListenerSuite$$anonfun$2$$anonfun$apply$mcV$sp$1.apply(StreamingListenerSuite.scala:104)
[info]   at org.scalatest.concurrent.Eventually$class.makeAValiantAttempt$1(Eventually.scala:394)
[info]   at org.scalatest.concurrent.Eventually$class.tryTryAgain$1(Eventually.scala:408)
[info]   at org.scalatest.concurrent.Eventually$class.eventually(Eventually.scala:438)
[info]   at org.scalatest.concurrent.Eventually$.eventually(Eventually.scala:478)
[info]   at org.scalatest.concurrent.Eventually$class.eventually(Eventually.scala:307)
[info]   at org.scalatest.concurrent.Eventually$.eventually(Eventually.scala:478)
[info]   at org.apache.spark.streaming.StreamingListenerSuite$$anonfun$2.apply$mcV$sp(StreamingListenerSuite.scala:104)
[info]   at org.apache.spark.streaming.StreamingListenerSuite$$anonfun$2.apply(StreamingListenerSuite.scala:94)
[info]   at org.apache.spark.streaming.StreamingListenerSuite$$anonfun$2.apply(StreamingListenerSuite.scala:94)
[info]   at org.scalatest.Transformer$$anonfun$apply$1.apply$mcV$sp(Transformer.scala:22)
[info]   at org.scalatest.OutcomeOf$class.outcomeOf(OutcomeOf.scala:85)
[info]   at org.scalatest.OutcomeOf$.outcomeOf(OutcomeOf.scala:104)
[info]   at org.scalatest.Transformer.apply(Transformer.scala:22)
[info]   at org.scalatest.Transformer.apply(Transformer.scala:20)
[info]   at org.scalatest.FunSuiteLike$$anon$1.apply(FunSuiteLike.scala:166)
[info]   at org.scalatest.Suite$class.withFixture(Suite.scala:1122)
[info]   at org.scalatest.FunSuite.withFixture(FunSuite.scala:1555)
[info]   at org.scalatest.FunSuiteLike$class.invokeWithFixture$1(FunSuiteLike.scala:163)
[info]   at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:175)
[info]   at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:175)
[info]   at org.scalatest.SuperEngine.runTestImpl(Engine.scala:306)
[info]   at org.scalatest.FunSuiteLike$class.runTest(FunSuiteLike.scala:175)
[info]   at org.apache.spark.streaming.StreamingListenerSuite.org$scalatest$BeforeAndAfter$$super$runTest(StreamingListenerSuite.scala:34)
[info]   at org.scalatest.BeforeAndAfter$class.runTest(BeforeAndAfter.scala:200)
[info]   at org.apache.spark.streaming.StreamingListenerSuite.runTest(StreamingListenerSuite.scala:34)
[info]   at org.scalatest.FunSuiteLike$$anonfun$runTests$1.apply(FunSuiteLike.scala:208)
[info]   at org.scalatest.FunSuiteLike$$anonfun$runTests$1.apply(FunSuiteLike.scala:208)
[info]   at org.scalatest.SuperEngine$$anonfun$traverseSubNodes$1$1.apply(Engine.scala:413)
[info]   at org.scalatest.SuperEngine$$anonfun$traverseSubNodes$1$1.apply(Engine.scala:401)
[info]   at scala.collection.immutable.List.foreach(List.scala:318)
[info]   at org.scalatest.SuperEngine.traverseSubNodes$1(Engine.scala:401)
[info]   at org.scalatest.SuperEngine.org$scalatest$SuperEngine$$runTestsInBranch(Engine.scala:396)
[info]   at org.scalatest.SuperEngine.runTestsImpl(Engine.scala:483)
[info]   at org.scalatest.FunSuiteLike$class.runTests(FunSuiteLike.scala:208)
[info]   at org.scalatest.FunSuite.runTests(FunSuite.scala:1555)
[info]   at org.scalatest.Suite$class.run(Suite.scala:1424)
[info]   at org.scalatest.FunSuite.org$scalatest$FunSuiteLike$$super$run(FunSuite.scala:1555)
[info]   at org.scalatest.FunSuiteLike$$anonfun$run$1.apply(FunSuiteLike.scala:212)
[info]   at org.scalatest.FunSuiteLike$$anonfun$run$1.apply(FunSuiteLike.scala:212)
[info]   at org.scalatest.SuperEngine.runImpl(Engine.scala:545)
[info]   at org.scalatest.FunSuiteLike$class.run(FunSuiteLike.scala:212)
[info]   at org.apache.spark.streaming.StreamingListenerSuite.org$scalatest$BeforeAndAfter$$super$run(StreamingListenerSuite.scala:34)
[info]   at org.scalatest.BeforeAndAfter$class.run(BeforeAndAfter.scala:241)
[info]   at org.apache.spark.streaming.StreamingListenerSuite.run(StreamingListenerSuite.scala:34)
[info]   at org.scalatest.tools.Framework.org$scalatest$tools$Framework$$runSuite(Framework.scala:462)
[info]   at org.scalatest.tools.Framework$ScalaTestTask.execute(Framework.scala:671)
[info]   at sbt.ForkMain$Run$2.call(ForkMain.java:294)
[info]   at sbt.ForkMain$Run$2.call(ForkMain.java:284)
[info]   at java.util.concurrent.FutureTask.run(FutureTask.java:262)
[info]   at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
[info]   at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
[info]   at java.lang.Thread.run(Thread.java:745)
{code}


---

* [SPARK-7281](https://issues.apache.org/jira/browse/SPARK-7281) | *Minor* | **No option for AM native library path in yarn-client mode.**

There are many options to control the AM in yarn-client mode, but the option for the native library path is missing. Without that, users have to change the process's environment directly (using {{spark.yarn.appMasterEnv.LD\_LIBRARY\_PATH}} on Linux, for example) to add things to the native library path.

Depending on the cluster's configuration, native libraries are needed in the AM (for example when using the JNI-based group mapper in Hadoop).

There's also no option to control the AM's classpath, but since the AM is not running user code, that seems less important.


---

* [SPARK-7280](https://issues.apache.org/jira/browse/SPARK-7280) | *Major* | **Add a method for dropping a column in Java/Scala**

Similar to Pandas: http://pandas.pydata.org/pandas-docs/dev/generated/pandas.DataFrame.drop.html

Takes a column name and returns a new DataFrame that drops a column.


---

* [SPARK-7278](https://issues.apache.org/jira/browse/SPARK-7278) | *Major* | **Inconsistent handling of dates in PySparks Row object**

Consider the following Python code:

{code:none}
import datetime

rdd = sc.parallelize([[0, datetime.date(2014, 11, 11)], [1, datetime.date(2015,6,4)]])
df = rdd.toDF(schema=['rid', 'date'])
row = df.first()
{code}

Accessing the {{date}} column via {{\\_\\_getitem\\_\\_}} returns a {{datetime.datetime}} instance

{code:none}
>>>row[1]
datetime.datetime(2014, 11, 11, 0, 0)
{code}

while access via {{getattr}} returns a {{datetime.date}} instance:

{code:none}
>>>row.date
datetime.date(2014, 11, 11)
{code}

The problem seems to be that that Java deserializes the {{datetime.date}} objects to {{datetime.datetime}}. This is taken care of [here|https://github.com/apache/spark/blob/master/python/pyspark/sql/\_types.py#L1027] when using {{getattr}}, but is overlooked when directly accessing the tuple by index.

Is there an easy way to fix this?


---

* [SPARK-7277](https://issues.apache.org/jira/browse/SPARK-7277) | *Major* | **property mapred.reduce.task replaced by spark.sql.shuffle.partitions**

When I use "SET mapred.reduce.task" I get the warning "SetCommand: Property mapred.reduce.tasks is deprecated, automatically converted to spark.sql.shuffle.partitions instead."

It's true that mapred.reduce.task is deprecated but this replacement causes serious trouble:

Setting mapred.reduce.task to -1 (negative one) is valid and causes hadoop/hive to automatically determine the required number of reducers.

Setting spark.sql.shuffle.partitions to negative can cause spark to produce incorrect results.
In my system (spark-sql 1.3.1 running on a single machine in "local" mode), with this setting, any outer join produces no output (whereas an inner join does)


---

* [SPARK-7276](https://issues.apache.org/jira/browse/SPARK-7276) | *Major* | **withColumn is very slow on dataframe with large number of columns**

The code snippet demonstrates the problem.

{code}
    import org.apache.spark.sql.\_
    import org.apache.spark.sql.types.\_

    val sparkConf = new SparkConf().setAppName("Spark Test").setMaster(System.getProperty("spark.master", "local[4]"))

    val sc = new SparkContext(sparkConf)
    val sqlContext = new SQLContext(sc)
    import sqlContext.implicits.\_

    val custs = Seq(
      Row(1, "Bob", 21, 80.5),
      Row(2, "Bobby", 21, 80.5),
      Row(3, "Jean", 21, 80.5),
      Row(4, "Fatime", 21, 80.5)
    )

    var fields = List(
      StructField("id", IntegerType, true),
      StructField("a", IntegerType, true),
      StructField("b", StringType, true),
      StructField("target", DoubleType, false))
    val schema = StructType(fields)

    var rdd = sc.parallelize(custs)
    var df = sqlContext.createDataFrame(rdd, schema)

    for (i <- 1 to 200) {
      val now = System.currentTimeMillis
      df = df.withColumn("a\_new\_col\_" + i, df("a") + i)
      println(s"$i -> " + (System.currentTimeMillis - now))
    }

    df.show()
{code}


---

* [SPARK-7272](https://issues.apache.org/jira/browse/SPARK-7272) | *Major* | **User guide update for PMML model export**

Add user guide for PMML model export with some example code.


---

* [SPARK-7267](https://issues.apache.org/jira/browse/SPARK-7267) | *Critical* | **Push down Project when it's child is Limit**

SQL
{quote}
select key from (select key,value from t1 limit 100) t2 limit 10
{quote}

Optimized Logical Plan before modifying
{quote}
== Optimized Logical Plan ==
Limit 10
 Project [key#228]
  Limit 100
   MetastoreRelation default, t1, None
{quote}

Optimized Logical Plan after modifying
{quote}
== Optimized Logical Plan ==
Limit 10
 Limit 100
   Project [key#228]
    MetastoreRelation default, t1, None
{quote}

After this, we can  combine limits


---

* [SPARK-7266](https://issues.apache.org/jira/browse/SPARK-7266) | *Major* | **Add ExpectsInputTypes to expressions whenever possible**

This should gives us better analysis time error messages (rather than runtime) and automatic type casting.


---

* [SPARK-7262](https://issues.apache.org/jira/browse/SPARK-7262) | *Major* | **Binary LogisticRegression with L1/L2 (elastic net) using OWLQN in new ML package**

1) Handle scaling and addBias internally. 
2) L1/L2 elasticnet using OWLQN optimizer.


---

* [SPARK-7259](https://issues.apache.org/jira/browse/SPARK-7259) | *Minor* | **VectorIndexer: do not preserve non-ML metadata in output**

Purpose: match StringIndexer


---

* [SPARK-7255](https://issues.apache.org/jira/browse/SPARK-7255) | *Minor* | **spark.streaming.kafka.maxRetries not documented**

I noticed there was no documentation for [spark.streaming.kafka.maxRetries|https://github.com/apache/spark/blob/master/external/kafka/src/main/scala/org/apache/spark/streaming/kafka/DirectKafkaInputDStream.scala#L66] was not documented in the [configuration pagehttp://spark.apache.org/docs/latest/configuration.html#spark-streaming].

Is this on purpose?


---

* [SPARK-7249](https://issues.apache.org/jira/browse/SPARK-7249) | *Blocker* | ** Updated Hadoop dependencies due to inconsistency in the versions**

Updated Hadoop dependencies due to inconsistency in the versions. Now the global properties are the ones used by the hadoop-2.2 profile, and the profile was set to empty but kept for backwards compatibility reasons.


---

* [SPARK-7248](https://issues.apache.org/jira/browse/SPARK-7248) | *Major* | **Random number generators for DataFrames**

This is an umbrella JIRA for random number generators for DataFrames. The initial set of RNGs would be `rand` and `randn`, which takes a seed.

{code}
df.select("*", rand(11L).as("rand"))
{code}

Where those methods should live is TBD.


---

* [SPARK-7243](https://issues.apache.org/jira/browse/SPARK-7243) | *Major* | **Contingency table for DataFrames**

Create contingency table for two columns in a DataFrame. This is `table` in R and `crosstab` in pandas.

~~~
df.stat.crosstab(col1, col2): DataFrame
~~~

It returns a local DataFrame with "$col1\_$col2" and values from col2 as the column names. Values from col1 become the values in the first column.

If users want to ignore NA, they should filter NAs first.


---

* [SPARK-7242](https://issues.apache.org/jira/browse/SPARK-7242) | *Major* | **Frequent items for DataFrames**

Finding frequent items with possibly false positives, using the algorithm described in http://www.cs.umd.edu/~samir/498/karp.pdf.

{code}
df.stat.freqItems(cols: Array[String], support: Double = 0.001): DataFrame
{code}

The output is a local DataFrame having the input column names. In the first version, we will implement the single pass algorithm that may return false positives, but no false negatives.


---

* [SPARK-7241](https://issues.apache.org/jira/browse/SPARK-7241) | *Major* | **Pearson correlation for DataFrames**

This JIRA is for computing the Pearson linear correlation for two numerical columns in a DataFrame. The method `corr` should live under `df.stat`:

{code}
df.stat.corr(col1, col2, method="pearson"): Double
{code}

`method` will be used when we add other correlations.

Similar to SPARK-7240, UDAF will be added later.


---

* [SPARK-7240](https://issues.apache.org/jira/browse/SPARK-7240) | *Major* | **Covariance for DataFrames**

This JIRA is for computing stable covariance between two columns. The method `cov` should live under `df.stat` (similar to `na`).

{code}
df.stat.cov(col1, col2): Double
{code}

Stable algorithm: http://en.wikipedia.org/wiki/Algorithms\_for\_calculating\_variance#Covariance

UDAF support will be added later. Then users can do

{code}
df.groupBy("gender").agg(cov("age", "salary").as("cov\_age\_salary"))
{code}


---

* [SPARK-7237](https://issues.apache.org/jira/browse/SPARK-7237) | *Major* | **Many user provided closures are not actually cleaned**

It appears that many operations throughout Spark actually do not actually clean the closures provided by the user.

Simple reproduction:
{code}
def test(): Unit = {
  sc.parallelize(1 to 10).mapPartitions { iter => return; iter }.collect()
}
{code}
Clearly, the inner closure is not serializable, but when we serialize it we should expect the ClosureCleaner to fail fast and complain loudly about return statements. Instead, we get a mysterious stack trace:
{code}
java.io.NotSerializableException: java.lang.Object
Serialization stack:
	- object not serializable (class: java.lang.Object, value: java.lang.Object@6db4b914)
	- field (class: $iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$anonfun$1, name: nonLocalReturnKey1$1, type: class java.lang.Object)
	- object (class $iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$anonfun$1, <function1>)
	- field (class: org.apache.spark.rdd.RDD$$anonfun$14, name: f$4, type: interface scala.Function1)
	- object (class org.apache.spark.rdd.RDD$$anonfun$14, <function3>)
	at org.apache.spark.serializer.SerializationDebugger$.improveException(SerializationDebugger.scala:40)
	at org.apache.spark.serializer.JavaSerializationStream.writeObject(JavaSerializer.scala:47)
	at org.apache.spark.serializer.JavaSerializerInstance.serialize(JavaSerializer.scala:81)
	at org.apache.spark.util.ClosureCleaner$.ensureSerializable(ClosureCleaner.scala:314)
{code}

What might have caused this? If you look at the code for mapPartitions, you'll notice that we never explicitly clean the closure passed in by the user. Instead, we only wrap it in another closure and clean only the outer one:
{code}
def mapPartitions[U: ClassTag](
      f: Iterator[T] => Iterator[U], preservesPartitioning: Boolean = false): RDD[U] = {
    val func = (context: TaskContext, index: Int, iter: Iterator[T]) => f(iter)
    new MapPartitionsRDD(this, sc.clean(func), preservesPartitioning)
  }
{code}

This is not sufficient, however, because the user provided closure is actually a field of the outer closure, and this inner closure doesn't get cleaned. If we rewrite the above by cleaning the inner closure preemptively, as we have done in other places:

{code}
def mapPartitions[U: ClassTag](
      f: Iterator[T] => Iterator[U], preservesPartitioning: Boolean = false): RDD[U] = {
    val cleanedFunc = clean(f)
    new MapPartitionsRDD(
      this,
      (context: TaskContext, index: Int, iter: Iterator[T]) => cleanedFunc(iter),
      preservesPartitioning)
  }
{code}

Then we get the exception that we would expect by running the test() example above:
{code}
org.apache.spark.SparkException: Return statements aren't allowed in Spark closures
	at org.apache.spark.util.ReturnStatementFinder$$anon$1.visitTypeInsn(ClosureCleaner.scala:357)
	at com.esotericsoftware.reflectasm.shaded.org.objectweb.asm.ClassReader.accept(Unknown Source)
	at com.esotericsoftware.reflectasm.shaded.org.objectweb.asm.ClassReader.accept(Unknown Source)
	at org.apache.spark.util.ClosureCleaner$.org$apache$spark$util$ClosureCleaner$$clean(ClosureCleaner.scala:215)
	at org.apache.spark.util.ClosureCleaner$.clean(ClosureCleaner.scala:132)
	at org.apache.spark.SparkContext.clean(SparkContext.scala:1759)
	at org.apache.spark.rdd.RDD.mapPartitions(RDD.scala:640)
{code}

It seems to me that we simply forgot to do this in a few places (e.g. mapPartitions, keyBy, aggregateByKey), because in other similar places we do this correctly (e.g. groupBy, combineByKey, zipPartitions).


---

* [SPARK-7236](https://issues.apache.org/jira/browse/SPARK-7236) | *Critical* | **AkkaUtils askWithReply sleeps indefinitely when a timeout exception is thrown**

When {{AkkaUtils.askWithReply}} gets a TimeoutException, the default parameters {{maxAttempts = 1}} and {{retryInterval = Int.MaxValue}} lead to the thread sleeping for a good while.

I noticed this issue when testing for SPARK-6980 and using this function without invoking Spark jobs, so perhaps it acts differently in another context.

If this function is on its final attempt to ask and it fails, it should return immediately.  Also, perhaps a better default {{retryInterval}} would be {{0}}.


---

* [SPARK-7234](https://issues.apache.org/jira/browse/SPARK-7234) | *Major* | **When codegen on DateType defaultPrimitive will throw type mismatch exception**

When codegen on, the defaultPrimitive of DateType is null. This will rise below error.

select COUNT(a) from table
a -> DateType

type mismatch;
 found   : Null(null)
 required: DateType.this.InternalType


---

* [SPARK-7233](https://issues.apache.org/jira/browse/SPARK-7233) | *Critical* | **ClosureCleaner#clean blocks concurrent job submitter threads**

{{org.apache.spark.util.ClosureCleaner#clean}} method contains logic to determine if Spark is run in interpreter mode: https://github.com/apache/spark/blob/master/core/src/main/scala/org/apache/spark/util/ClosureCleaner.scala#L120

While this behavior is indeed valuable in particular situations, in addition to this it causes concurrent submitter threads to be blocked on a native call to {{java.lang.Class#forName0}} since it appears only 1 thread at a time can make the call.

This becomes a major issue when you have multiple threads concurrently submitting short-lived jobs. This is one of the patterns how we use Spark in production, and the number of parallel requests is expected to be quite high, up to a couple of thousand at a time.

A typical stacktrace of a blocked thread looks like:
{code}
http-bio-8091-exec-14 [BLOCKED] [DAEMON]

java.lang.Class.forName0(String, boolean, ClassLoader, Class) Class.java (native)
java.lang.Class.forName(String) Class.java:260
org.apache.spark.util.ClosureCleaner$.clean(Object, boolean) ClosureCleaner.scala:122
org.apache.spark.SparkContext.clean(Object, boolean) SparkContext.scala:1623
org.apache.spark.rdd.RDD.reduce(Function2) RDD.scala:883
org.apache.spark.rdd.RDD.takeOrdered(int, Ordering) RDD.scala:1240
org.apache.spark.api.java.JavaRDDLike$class.takeOrdered(JavaRDDLike, int, Comparator) JavaRDDLike.scala:586
org.apache.spark.api.java.AbstractJavaRDDLike.takeOrdered(int, Comparator) JavaRDDLike.scala:46
...
{code}


---

* [SPARK-7232](https://issues.apache.org/jira/browse/SPARK-7232) | *Major* | **Add a Substitution batch for spark sql analyzer**

Added a new batch named `Substitution` before Resolution batch. The motivation for this is there are kind of cases we want to do some substitution on the parsed logical plan before resolve it. 
Consider this two cases:
1 CTE, for cte we first build a row logical plan
'With Map(q1 -> 'Subquery q1
                             'Project ['key]
                               'UnresolvedRelation [src], None)
 'Project [*]
  'Filter ('key = 5)
   'UnresolvedRelation [q1], None

In `With` logicalplan here is a map stored the (q1-> subquery), we want first take off the with command and substitute the  q1 of UnresolvedRelation by the subquery

2 Another example is Window function, in window function user may define some windows, we also need substitute the window name of child by the concrete window. this should also done in the Substitution batch.


---

* [SPARK-7231](https://issues.apache.org/jira/browse/SPARK-7231) | *Critical* | **Make SparkR DataFrame API more dplyr friendly**

This ticket tracks auditing the SparkR dataframe API and ensuring that the API is friendly to existing R users. 

Mainly we wish to make sure the DataFrame API we expose has functions similar to those which exist on native R data frames and in popular packages like `dplyr`.


---

* [SPARK-7230](https://issues.apache.org/jira/browse/SPARK-7230) | *Critical* | **Make RDD API private in SparkR for Spark 1.4**

This ticket proposes making the RDD API in SparkR private for the 1.4 release. The motivation for doing so are discussed in a larger design document aimed at a more top-down design of the SparkR APIs. A first cut that discusses motivation and proposed changes can be found at http://goo.gl/GLHKZI

The main points in that document that relate to this ticket are:
- The RDD API requires knowledge of the distributed system and is pretty low level. This is not very suitable for a number of R users who are used to more high-level packages that work out of the box.
- The RDD implementation in SparkR is not fully robust right now: we are missing features like spilling for aggregation, handling partitions which don't fit in memory etc. There are further limitations like lack of hashCode for non-native types etc. which might affect user experience.

The only change we will make for now is to not export the RDD functions as public methods in the SparkR package and I will create another ticket for discussing more details public API for 1.5


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

* [SPARK-7228](https://issues.apache.org/jira/browse/SPARK-7228) | *Blocker* | **SparkR public API for 1.4 release**

This in an umbrella ticket to track the public APIs and documentation to be released as a part of SparkR in the 1.4 release.


---

* [SPARK-7225](https://issues.apache.org/jira/browse/SPARK-7225) | *Major* | **CombineLimits optimizer does not work**

The  optimized logical plan of  "select key from (select key from src limit 100) t2 limit 10"  like that 
{quote}
== Optimized Logical Plan ==
Limit 10
 Limit 100
  Project [key#3]
   MetastoreRelation default, src, None
{quote}

It did not combineLimits


---

* [SPARK-7223](https://issues.apache.org/jira/browse/SPARK-7223) | *Major* | **Rename RPC askWithReply -\> askWithReply, sendWithReply -\> ask**

Current naming is too confusing between askWithReply and sendWithReply.


---

* [SPARK-7222](https://issues.apache.org/jira/browse/SPARK-7222) | *Major* | **Added mathematical derivation in comment and compressed the model to LinearRegression with ElasticNet**

Added detailed mathematical derivation of how scaling and LeastSquaresAggregator work. Also refactored the code so the model is compressed based on the storage. We may try compress based on the prediction time. TODO: Add test that fail the test when the correction terms are not correctly computed.


---

* [SPARK-7217](https://issues.apache.org/jira/browse/SPARK-7217) | *Blocker* | **Add configuration to control the default behavior of StreamingContext.stop() implicitly calling SparkContext.stop()**

In environments like notebooks, the SparkContext is managed by the underlying infrastructure and it is expected that the SparkContext will not be stopped. However, StreamingContext.stop() calls SparkContext.stop() as a non-intuitive side-effect. This JIRA is to add a configuration in SparkConf that sets the default StreamingContext stop behavior. It should be such that the existing behavior does not change for existing users.


---

* [SPARK-7216](https://issues.apache.org/jira/browse/SPARK-7216) | *Major* | **Show driver details in Mesos cluster UI**

Show driver details in Mesos cluster UI


---

* [SPARK-7207](https://issues.apache.org/jira/browse/SPARK-7207) | *Minor* | **Add new spark.ml subpackages to SparkBuild**

Add to project/SparkBuild.scala list of subpackages for spark.ml:
* ml.recommendation
* ml.regression


---

* [SPARK-7204](https://issues.apache.org/jira/browse/SPARK-7204) | *Critical* | **Call sites in UI are not accurate for DataFrame operations**

Spark core computes callsites by climbing up the stack until we reach the stack frame at the boundary of user code and spark code. The way we compute whether a given frame is internal (Spark) or user code does not work correctly with the new dataframe API.

Once the scope work goes in, we'll have a nicer way to express units of operator scope, but until then there is a simple fix where we just make sure the SQL internal classes are also skipped as we climb up the stack.


---

* [SPARK-7202](https://issues.apache.org/jira/browse/SPARK-7202) | *Major* | **Add SparseMatrixPickler to SerDe**

We need Sparse MatrixPicker similar to that of DenseMatrixPickler.


---

* [SPARK-7201](https://issues.apache.org/jira/browse/SPARK-7201) | *Major* | **Move identifiable to ml.util**

It shouldn't live under spark.ml package.


---

* [SPARK-7196](https://issues.apache.org/jira/browse/SPARK-7196) | *Major* | **decimal precision lost when loading DataFrame from JDBC**

I have a decimal database field that is defined as 10.2 (i.e. ##########.##). When I load it into Spark via sqlContext.jdbc(..), the type of the corresponding field in the DataFrame is DecimalType, with precisionInfo None. Because of that loss of precision information, SPARK-4176 is triggered when I try to .saveAsTable(..).


---

* [SPARK-7187](https://issues.apache.org/jira/browse/SPARK-7187) | *Major* | **Exceptions in SerializationDebugger should not crash user code**

When issues like SPARK-7180 occurs, it ends up crashing user code through the ClosureCleaner in mysterious ways.


---

* [SPARK-7183](https://issues.apache.org/jira/browse/SPARK-7183) | *Major* | **Memory leak in netty shuffle with spark standalone cluster**

There is slow leak in netty shuffle with spark cluster in {{TransportRequestHandler.streamIds}}

In spark cluster, there are some reusable netty connections between two block managers to get/send blocks between worker/drivers. These connections are handled by the {{org.apache.spark.network.server.TransportRequestHandler}} in server side. This handler keep tracking all the streamids negotiate by RPC when shuffle data need transform in these two block managers and the streamid is keeping increasing, and never get a chance to be deleted exception this connection is dropped (seems never happen in normal running).

Here are some detail logs of this  {{TransportRequestHandler}} (Note: we add a log a print the total size of {{TransportRequestHandler.streamIds}}, the log is "Current set size is N of org.apache.spark.network.server.TransportRequestHandler@ADDRESS", this set size is keeping increasing in our test)
{quote}
15/04/22 21:00:16 DEBUG TransportServer: Shuffle server started on port :46288
15/04/22 21:00:16 INFO NettyBlockTransferService: Server created on 46288
15/04/22 21:00:31 INFO TransportRequestHandler: Created TransportRequestHandler org.apache.spark.network.server.TransportRequestHandler@29a4f3e7
15/04/22 21:00:32 TRACE MessageDecoder: Received message RpcRequest: RpcRequest\{requestId=6655045571437304938, message=[B@59778678\}
15/04/22 21:00:32 TRACE NettyBlockRpcServer: Received request: OpenBlocks\{appId=app-20150422210016-0000, execId=<driver>, blockIds=[broadcast\_1\_piece0]}
15/04/22 21:00:32 TRACE NettyBlockRpcServer: Registered streamId 1387459488000 with 1 buffers
15/04/22 21:00:33 TRACE TransportRequestHandler: Sent result RpcResponse\{requestId=6655045571437304938, response=[B@d2840b\} to client /10.111.7.150:33802
15/04/22 21:00:33 TRACE MessageDecoder: Received message ChunkFetchRequest: ChunkFetchRequest\{streamChunkId=StreamChunkId\{streamId=1387459488000, chunkIndex=0}}
15/04/22 21:00:33 TRACE TransportRequestHandler: Received req from /10.111.7.150:33802 to fetch block StreamChunkId\{streamId=1387459488000, chunkIndex=0\}
15/04/22 21:00:33 INFO TransportRequestHandler: Current set size is 1 of org.apache.spark.network.server.TransportRequestHandler@29a4f3e7
15/04/22 21:00:33 TRACE OneForOneStreamManager: Removing stream id 1387459488000
15/04/22 21:00:33 TRACE TransportRequestHandler: Sent result ChunkFetchSuccess\{streamChunkId=StreamChunkId\{streamId=1387459488000, chunkIndex=0}, buffer=NioManagedBuffer\{buf=java.nio.HeapByteBuffer[pos=0 lim=3839 cap=3839]}} to client /10.111.7.150:33802
15/04/22 21:00:34 TRACE MessageDecoder: Received message RpcRequest: RpcRequest\{requestId=6660601528868866371, message=[B@42bed1b8\}
15/04/22 21:00:34 TRACE NettyBlockRpcServer: Received request: OpenBlocks\{appId=app-20150422210016-0000, execId=<driver>, blockIds=[broadcast\_3\_piece0]}
15/04/22 21:00:34 TRACE NettyBlockRpcServer: Registered streamId 1387459488001 with 1 buffers
15/04/22 21:00:34 TRACE TransportRequestHandler: Sent result RpcResponse\{requestId=6660601528868866371, response=[B@7fa3fb60\} to client /10.111.7.150:33802
15/04/22 21:00:34 TRACE MessageDecoder: Received message ChunkFetchRequest: ChunkFetchRequest\{streamChunkId=StreamChunkId\{streamId=1387459488001, chunkIndex=0}}
15/04/22 21:00:34 TRACE TransportRequestHandler: Received req from /10.111.7.150:33802 to fetch block StreamChunkId\{streamId=1387459488001, chunkIndex=0\}
15/04/22 21:00:34 INFO TransportRequestHandler: Current set size is 2 of org.apache.spark.network.server.TransportRequestHandler@29a4f3e7
15/04/22 21:00:34 TRACE OneForOneStreamManager: Removing stream id 1387459488001
15/04/22 21:00:34 TRACE TransportRequestHandler: Sent result ChunkFetchSuccess\{streamChunkId=StreamChunkId\{streamId=1387459488001, chunkIndex=0}, buffer=NioManagedBuffer\{buf=java.nio.HeapByteBuffer[pos=0 lim=4277 cap=4277]}} to client /10.111.7.150:33802
15/04/22 21:00:34 TRACE MessageDecoder: Received message RpcRequest: RpcRequest\{requestId=8454597410163901330, message=[B@19c673d1\}
15/04/22 21:00:34 TRACE NettyBlockRpcServer: Received request: OpenBlocks\{appId=app-20150422210016-0000, execId=<driver>, blockIds=[broadcast\_2\_piece0]}
15/04/22 21:00:34 TRACE NettyBlockRpcServer: Registered streamId 1387459488002 with 1 buffers
15/04/22 21:00:34 TRACE TransportRequestHandler: Sent result RpcResponse\{requestId=8454597410163901330, response=[B@35dbdac2\} to client /10.111.7.150:33802
15/04/22 21:00:34 TRACE MessageDecoder: Received message ChunkFetchRequest: ChunkFetchRequest\{streamChunkId=StreamChunkId\{streamId=1387459488002, chunkIndex=0}}
15/04/22 21:00:34 TRACE TransportRequestHandler: Received req from /10.111.7.150:33802 to fetch block StreamChunkId\{streamId=1387459488002, chunkIndex=0\}
15/04/22 21:00:34 INFO TransportRequestHandler: Current set size is 3 of org.apache.spark.network.server.TransportRequestHandler@29a4f3e7
15/04/22 21:00:34 TRACE OneForOneStreamManager: Removing stream id 1387459488002
......
15/04/22 23:59:50 TRACE MessageDecoder: Received message RpcRequest: RpcRequest\{requestId=5718124278216696100, message=[B@7ade3ea3\}
15/04/22 23:59:50 TRACE NettyBlockRpcServer: Received request: OpenBlocks\{appId=app-20150422210016-0000, execId=<driver>, blockIds=[broadcast\_14679\_piece0]}
15/04/22 23:59:50 TRACE NettyBlockRpcServer: Registered streamId 1387459501252 with 1 buffers
15/04/22 23:59:50 TRACE TransportRequestHandler: Sent result RpcResponse\{requestId=5718124278216696100, response=[B@40c07a63\} to client /10.111.7.150:33802
15/04/22 23:59:50 TRACE MessageDecoder: Received message ChunkFetchRequest: ChunkFetchRequest\{streamChunkId=StreamChunkId\{streamId=1387459501252, chunkIndex=0}}
15/04/22 23:59:50 TRACE TransportRequestHandler: Received req from /10.111.7.150:33802 to fetch block StreamChunkId\{streamId=1387459501252, chunkIndex=0\}
15/04/22 23:59:50 INFO TransportRequestHandler: Current set size is 13253 of org.apache.spark.network.server.TransportRequestHandler@29a4f3e7
15/04/22 23:59:50 TRACE OneForOneStreamManager: Removing stream id 1387459501252
15/04/22 23:59:50 TRACE TransportRequestHandler: Sent result ChunkFetchSuccess\{streamChunkId=StreamChunkId\{streamId=1387459501252, chunkIndex=0}, buffer=NioManagedBuffer\{buf=java.nio.HeapByteBuffer[pos=0 lim=31474 cap=31474]}} to client /10.111.7.150:33802
15/04/22 23:59:50 TRACE MessageDecoder: Received message RpcRequest: RpcRequest\{requestId=8663805364150028136, message=[B@5974f9b4\}
15/04/22 23:59:50 TRACE NettyBlockRpcServer: Received request: OpenBlocks\{appId=app-20150422210016-0000, execId=<driver>, blockIds=[broadcast\_14688\_piece0]}
15/04/22 23:59:50 TRACE NettyBlockRpcServer: Registered streamId 1387459501253 with 1 buffers
15/04/22 23:59:50 TRACE TransportRequestHandler: Sent result RpcResponse\{requestId=8663805364150028136, response=[B@122023c6\} to client /10.111.7.150:33802
15/04/22 23:59:50 TRACE MessageDecoder: Received message ChunkFetchRequest: ChunkFetchRequest\{streamChunkId=StreamChunkId\{streamId=1387459501253, chunkIndex=0}}
15/04/22 23:59:50 TRACE TransportRequestHandler: Received req from /10.111.7.150:33802 to fetch block StreamChunkId\{streamId=1387459501253, chunkIndex=0\}
15/04/22 23:59:50 INFO TransportRequestHandler: Current set size is 13254 of org.apache.spark.network.server.TransportRequestHandler@29a4f3e7
15/04/22 23:59:50 TRACE OneForOneStreamManager: Removing stream id 1387459501253
15/04/22 23:59:50 TRACE TransportRequestHandler: Sent result ChunkFetchSuccess\{streamChunkId=StreamChunkId\{streamId=1387459501253, chunkIndex=0}, buffer=NioManagedBuffer\{buf=java.nio.HeapByteBuffer[pos=0 lim=4047 cap=4047]}} to client /10.111.7.150:33802
{quote}


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

* [SPARK-7176](https://issues.apache.org/jira/browse/SPARK-7176) | *Major* | **Add validation functionality to individual Param**

This issue was brought up by [https://issues.apache.org/jira/browse/SPARK-7147]: There are multiple locations in which a parameter can be specified (in setters and in calling fit/transform), and we should check the parameter value in each one.  It would be nice to avoid duplicating the checking code.

Proposed change:
* Add field to class Param: {{val isValid: T => Boolean}}, with default value of always returning true
* Add helper methods in new ParamCheck object for constructing common validation checks (especially to help Java users)
* Ensure that this validation is always done, most likely by always settings parameters by constructing a ParamPair + validating inside the ParamPair constructor


---

* [SPARK-7174](https://issues.apache.org/jira/browse/SPARK-7174) | *Major* | **Move calling `TaskScheduler.executorHeartbeatReceived` to another thread to avoid blocking the Akka thread pool**

HeartbeatReceiver will call TaskScheduler.executorHeartbeatReceived, which is a blocking operation because "TaskScheduler.executorHeartbeatReceived" will call 

{code}
    blockManagerMaster.driverEndpoint.askWithReply[Boolean](
      BlockManagerHeartbeat(blockManagerId), 600 seconds)
{code}

finally. Even if it asks from a local Actor, it may block the current Akka thread. E.g., the reply may be dispatched to the same thread of the ask operation. So the reply cannot be processed. An extreme case is setting the thread number of Akka dispatch thread pool to 1.

jstack log:

{code}
"sparkDriver-akka.actor.default-dispatcher-14" daemon prio=10 tid=0x00007f2a8c02d000 nid=0x725 waiting on condition [0x00007f2b1d6d0000]
   java.lang.Thread.State: TIMED\_WAITING (parking)
	at sun.misc.Unsafe.park(Native Method)
	- parking to wait for  <0x00000006197a0868> (a scala.concurrent.impl.Promise$CompletionLatch)
	at java.util.concurrent.locks.LockSupport.parkNanos(LockSupport.java:226)
	at java.util.concurrent.locks.AbstractQueuedSynchronizer.doAcquireSharedNanos(AbstractQueuedSynchronizer.java:1033)
	at java.util.concurrent.locks.AbstractQueuedSynchronizer.tryAcquireSharedNanos(AbstractQueuedSynchronizer.java:1326)
	at scala.concurrent.impl.Promise$DefaultPromise.tryAwait(Promise.scala:208)
	at scala.concurrent.impl.Promise$DefaultPromise.ready(Promise.scala:218)
	at scala.concurrent.impl.Promise$DefaultPromise.result(Promise.scala:223)
	at scala.concurrent.Await$$anonfun$result$1.apply(package.scala:107)
	at akka.dispatch.MonitorableThreadFactory$AkkaForkJoinWorkerThread$$anon$3.block(ThreadPoolBuilder.scala:169)
	at scala.concurrent.forkjoin.ForkJoinPool.managedBlock(ForkJoinPool.java:3640)
	at akka.dispatch.MonitorableThreadFactory$AkkaForkJoinWorkerThread.blockOn(ThreadPoolBuilder.scala:167)
	at scala.concurrent.Await$.result(package.scala:107)
	at org.apache.spark.rpc.RpcEndpointRef.askWithReply(RpcEnv.scala:355)
	at org.apache.spark.scheduler.DAGScheduler.executorHeartbeatReceived(DAGScheduler.scala:169)
	at org.apache.spark.scheduler.TaskSchedulerImpl.executorHeartbeatReceived(TaskSchedulerImpl.scala:367)
	at org.apache.spark.HeartbeatReceiver$$anonfun$receiveAndReply$1.applyOrElse(HeartbeatReceiver.scala:103)
	at org.apache.spark.rpc.akka.AkkaRpcEnv.org$apache$spark$rpc$akka$AkkaRpcEnv$$processMessage(AkkaRpcEnv.scala:182)
	at org.apache.spark.rpc.akka.AkkaRpcEnv$$anonfun$actorRef$lzycompute$1$1$$anon$1$$anonfun$receiveWithLogging$1$$anonfun$applyOrElse$4.apply$mcV$sp(AkkaRpcEnv.scala:128)
	at org.apache.spark.rpc.akka.AkkaRpcEnv.org$apache$spark$rpc$akka$AkkaRpcEnv$$safelyCall(AkkaRpcEnv.scala:203)
	at org.apache.spark.rpc.akka.AkkaRpcEnv$$anonfun$actorRef$lzycompute$1$1$$anon$1$$anonfun$receiveWithLogging$1.applyOrElse(AkkaRpcEnv.scala:127)
	at scala.runtime.AbstractPartialFunction$mcVL$sp.apply$mcVL$sp(AbstractPartialFunction.scala:33)
	at scala.runtime.AbstractPartialFunction$mcVL$sp.apply(AbstractPartialFunction.scala:33)
	at scala.runtime.AbstractPartialFunction$mcVL$sp.apply(AbstractPartialFunction.scala:25)
	at org.apache.spark.util.ActorLogReceive$$anon$1.apply(ActorLogReceive.scala:59)
	at org.apache.spark.util.ActorLogReceive$$anon$1.apply(ActorLogReceive.scala:42)
	at scala.PartialFunction$class.applyOrElse(PartialFunction.scala:118)
	at org.apache.spark.util.ActorLogReceive$$anon$1.applyOrElse(ActorLogReceive.scala:42)
	at akka.actor.Actor$class.aroundReceive(Actor.scala:465)
	at org.apache.spark.rpc.akka.AkkaRpcEnv$$anonfun$actorRef$lzycompute$1$1$$anon$1.aroundReceive(AkkaRpcEnv.scala:94)
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

Thanks for [~yhuai] providing the helpful jstack log.


---

* [SPARK-7168](https://issues.apache.org/jira/browse/SPARK-7168) | *Trivial* | **Update plugin versions in Maven build and centralize versions**

A minor cleanup before the next release: let's update the versions of build plugins used to the latest version while also pulling version management up into the parent, centrally. This only affects plugins and not the build result. Hopefully we'll pick up some tiny fixes along the way.


---

* [SPARK-7162](https://issues.apache.org/jira/browse/SPARK-7162) | *Minor* | **Launcher error in yarn-client**

{code:none} 
HADOOP\_CONF\_DIR=/usr/local/CDH5/hadoop-2.3.0-cdh5.0.1/etc/hadoop/ ./bin/spark-shell --master yarn-client --driver-memory 8g  --driver-libraryath $LD\_LIBRARY\_PATH:$JAVA\_LIBRARY\_PATH  --jars lib/hadoop-lzo-0.4.15-gplextras5.0.1-SNAPSHOT.jar
{code} => 
{code:none}
Welcome to
      \_\_\_\_              \_\_
     / \_\_/\_\_  \_\_\_ \_\_\_\_\_/ /\_\_
    \_\ \/ \_ \/ \_ `/ \_\_/  '\_/
   /\_\_\_/ .\_\_/\\_,\_/\_/ /\_/\\_\   version 1.4.0-SNAPSHOT
      /\_/

Using Scala version 2.10.4 (Java HotSpot(TM) 64-Bit Server VM, Java 1.7.0\_55)
Type in expressions to have them evaluated.
Type :help for more information.
spark.yarn.driver.memoryOverhead is set but does not apply in client mode.
java.io.FileNotFoundException: /etc/hadoop/hadoop (是一个目录)
        at java.io.FileInputStream.open(Native Method)
        at java.io.FileInputStream.<init>(FileInputStream.java:146)
        at org.spark-project.guava.io.Files$FileByteSource.openStream(Files.java:124)
        at org.spark-project.guava.io.Files$FileByteSource.openStream(Files.java:114)
        at org.spark-project.guava.io.ByteSource.copyTo(ByteSource.java:182)
        at org.spark-project.guava.io.Files.copy(Files.java:417)
        at org.apache.spark.deploy.yarn.Client$$anonfun$createConfArchive$2.apply(Client.scala:374)
        at org.apache.spark.deploy.yarn.Client$$anonfun$createConfArchive$2.apply(Client.scala:372)
        at scala.collection.mutable.HashMap$$anonfun$foreach$1.apply(HashMap.scala:98)
        at scala.collection.mutable.HashMap$$anonfun$foreach$1.apply(HashMap.scala:98)
        at scala.collection.mutable.HashTable$class.foreachEntry(HashTable.scala:226)
        at scala.collection.mutable.HashMap.foreachEntry(HashMap.scala:39)
        at scala.collection.mutable.HashMap.foreach(HashMap.scala:98)
        at org.apache.spark.deploy.yarn.Client.createConfArchive(Client.scala:372)
        at org.apache.spark.deploy.yarn.Client.prepareLocalResources(Client.scala:288)
        at org.apache.spark.deploy.yarn.Client.createContainerLaunchContext(Client.scala:466)
        at org.apache.spark.deploy.yarn.Client.submitApplication(Client.scala:106)
        at org.apache.spark.scheduler.cluster.YarnClientSchedulerBackend.start(YarnClientSchedulerBackend.scala:58)
        at org.apache.spark.scheduler.TaskSchedulerImpl.start(TaskSchedulerImpl.scala:141)
        at org.apache.spark.SparkContext.<init>(SparkContext.scala:469)
        at org.apache.spark.repl.SparkILoop.createSparkContext(SparkILoop.scala:1016)
        at $iwC$$iwC.<init>(<console>:9)
        at $iwC.<init>(<console>:18)
        at <init>(<console>:20)
        at .<init>(<console>:24)
        at .<clinit>(<console>)
        at .<init>(<console>:7)
        at .<clinit>(<console>)
        at $print(<console>)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:606)
        at org.apache.spark.repl.SparkIMain$ReadEvalPrint.call(SparkIMain.scala:1065)
        at org.apache.spark.repl.SparkIMain$Request.loadAndRun(SparkIMain.scala:1338)
        at org.apache.spark.repl.SparkIMain.loadAndRunReq$1(SparkIMain.scala:840)
        at org.apache.spark.repl.SparkIMain.interpret(SparkIMain.scala:871)
        at org.apache.spark.repl.SparkIMain.interpret(SparkIMain.scala:819)
        at org.apache.spark.repl.SparkILoop.reallyInterpret$1(SparkILoop.scala:856)
        at org.apache.spark.repl.SparkILoop.interpretStartingWith(SparkILoop.scala:901)
        at org.apache.spark.repl.SparkILoop.command(SparkILoop.scala:813)
        at org.apache.spark.repl.SparkILoopInit$$anonfun$initializeSpark$1.apply(SparkILoopInit.scala:123)
        at org.apache.spark.repl.SparkILoopInit$$anonfun$initializeSpark$1.apply(SparkILoopInit.scala:122)
        at org.apache.spark.repl.SparkIMain.beQuietDuring(SparkIMain.scala:324)
        at org.apache.spark.repl.SparkILoopInit$class.initializeSpark(SparkILoopInit.scala:122)
        at org.apache.spark.repl.SparkILoop.initializeSpark(SparkILoop.scala:64)
        at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1$$anonfun$apply$mcZ$sp$5.apply$mcV$sp(SparkILoop.scala:973)
        at org.apache.spark.repl.SparkILoopInit$class.runThunks(SparkILoopInit.scala:157)
        at org.apache.spark.repl.SparkILoop.runThunks(SparkILoop.scala:64)
        at org.apache.spark.repl.SparkILoopInit$class.postInitialization(SparkILoopInit.scala:106)
        at org.apache.spark.repl.SparkILoop.postInitialization(SparkILoop.scala:64)
        at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply$mcZ$sp(SparkILoop.scala:990)
        at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply(SparkILoop.scala:944)
        at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply(SparkILoop.scala:944)
        at scala.tools.nsc.util.ScalaClassLoader$.savingContextLoader(ScalaClassLoader.scala:135)
        at org.apache.spark.repl.SparkILoop.org$apache$spark$repl$SparkILoop$$process(SparkILoop.scala:944)
        at org.apache.spark.repl.SparkILoop.process(SparkILoop.scala:1058)
        at org.apache.spark.repl.Main$.main(Main.scala:31)
        at org.apache.spark.repl.Main.main(Main.scala)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:606)
        at org.apache.spark.deploy.SparkSubmit$.org$apache$spark$deploy$SparkSubmit$$runMain(SparkSubmit.scala:607)
        at org.apache.spark.deploy.SparkSubmit$.doRunMain$1(SparkSubmit.scala:167)
        at org.apache.spark.deploy.SparkSubmit$.submit(SparkSubmit.scala:190)
        at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:111)
        at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)

{code}


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

* [SPARK-7152](https://issues.apache.org/jira/browse/SPARK-7152) | *Major* | **Add a Column expression for partition ID**

Partition ID can be useful for seeding random number generators, or for seeding unique record IDs.


---

* [SPARK-7145](https://issues.apache.org/jira/browse/SPARK-7145) | *Minor* | **commons-lang (2.x) classes used instead of commons-lang3 (3.x); commons-io used without dependency**

Spark depends only on Commons Lang3 (3.x). However there are several accidental usages of Commons Lang (2.x) in the codebase. As we saw a few days ago the version of Lang 2.x that accidentally comes in via Hadoop can change with Hadoop version and so the accidental usage is more than a purely theoretical problem. It's easy to change the usages to 3.x counterparts.

Also, there are just a few uses of Commons IO in the code which can be replaced with uses of Guava, removing another used but undeclared dependency.


---

* [SPARK-7140](https://issues.apache.org/jira/browse/SPARK-7140) | *Major* | **Do not scan all values in Vector.hashCode**

It makes hashCode really expensive. The Pyrolite version we are using in Spark calls it in serialization. Scanning the first few nonzeros should be sufficient.


---

* [SPARK-7139](https://issues.apache.org/jira/browse/SPARK-7139) | *Blocker* | **Allow received block metadata to be saved to WAL and recovered on driver failure**

The received API allows arbitrary metadata to be added for each block. However that information is not saved in the WAL as part of the block information in the driver. 

To fix this, the following needs to be done. 

1. Forward the metadata to the ReceivedBlockTracker in the driver.
2. ReceivedBlockTracker saves the metadata and recovers it on restart. 

However there is one tricky thing. The ReceivedBlockTracker WAL is enabled only when `spark.streaming.receiver.writeAheadLog.enable = true`. This means that only when  receiver WAL is enabled is the driver WAL enabled. This is not desired as the one may want to save and recovered block metadata information (especially information like Kafka offsets or Kinesis sequence numbers) that can be used to recover data without actually saving the data to the receiver WAL. So we have to always enable the tracker WAL. 

3. Always enable the ReceivedBlockTracker WAL. However, make sure that the WriteAheadLogBackedBlockRDD skips block lookup after restart as the blocks are obviously gone.


---

* [SPARK-7138](https://issues.apache.org/jira/browse/SPARK-7138) | *Minor* | **Add method to BlockGenerator to add multiple records to BlockGenerator with single callback**

This is to ensure that receivers that receive data in small batches (like Kinesis) and want to add them but want the callback function to be called only once.

This is for internal use only for improvement to Kinesis Receiver that we are planning to do.


---

* [SPARK-7136](https://issues.apache.org/jira/browse/SPARK-7136) | *Minor* | **Spark SQL and DataFrame Guide - missing file paths and non-existent example file**

The example code in the "Generic Load/Save Functions" section needs a path to the people.parquet file to load. Additionally, there is no file "people.parquet" in /examples/src/main/resources/

A file "people.parquet" is in fact saved off in a later section (Parquet Files -Loading Data Programmatically). 

The best fix is probably a way in which all the example code can run independently of whether the other example code has been run.  Proposal is to instead use a file which does exist for Generic Load/Save Functions :
/examples/src/main/resources/users.parquet (of course changing the fields which are selected as well).


---

* [SPARK-7135](https://issues.apache.org/jira/browse/SPARK-7135) | *Major* | **Expression for monotonically increasing IDs**

Seems like a common use case that users might want a unique ID for each row. It is more expensive to have consecutive IDs, since that'd require two pass over the data. However, many use cases can be satisfied by just having unique ids.


---

* [SPARK-7133](https://issues.apache.org/jira/browse/SPARK-7133) | *Blocker* | **Implement struct, array, and map field accessor using apply in Scala and \_\_getitem\_\_ in Python**

Typing 
{code}
df.col[1]
{code}
and
{code}
df.col['field']
{code}

is so much eaiser than

{code}
df.col.getField('field')
df.col.getItem(1)
{code}


This would require us to define (in Column) an apply function in Scala, and a \_\_getitem\_\_ function in Python.


---

* [SPARK-7123](https://issues.apache.org/jira/browse/SPARK-7123) | *Major* | **support table.star in sqlcontext**

support this sql

SELECT r.*
FROM testData l join testData2 r on (l.key = r.a)


---

* [SPARK-7121](https://issues.apache.org/jira/browse/SPARK-7121) | *Major* | **ClosureCleaner does not handle nesting properly**

For instance, in SparkContext, I tried to do the following:
{code}
def scope[T](body: => T): T = body // no-op
def myCoolMethod(path: String): RDD[String] = scope {
  parallelize(1 to 10).map { \_ => path }
}
{code}
and I got an exception complaining that SparkContext is not serializable. The issue here is that the inner closure is getting its path from the outer closure (the scope), but the outer closure actually references the SparkContext object itself to get the `parallelize` method.

Note, however, that the inner closure doesn't actually need the SparkContext; it just needs a field from the outer closure. If we modify ClosureCleaner to clean the outer closure recursively while using the fields accessed by the inner closure, then we can serialize the inner closure.

This is blocking my effort on a visualization task.


---

* [SPARK-7120](https://issues.apache.org/jira/browse/SPARK-7120) | *Major* | **ClosureCleaner lacks documentation**

It's very hard to follow without the comments.


---

* [SPARK-7118](https://issues.apache.org/jira/browse/SPARK-7118) | *Minor* | **Add coalesce Spark SQL function to PySpark API**

The *org.apache.sql.functions.coalesce* function is not available from PySpark SQL API.

Let's add it.

Olivier.


---

* [SPARK-7116](https://issues.apache.org/jira/browse/SPARK-7116) | *Major* | **Intermediate RDD cached but never unpersisted**

In https://github.com/apache/spark/blob/master/sql/core/src/main/scala/org/apache/spark/sql/execution/pythonUdfs.scala#L233 an intermediate RDD is cached, but never unpersisted. It shows up in the 'Storage' section of the Web UI, but cannot be removed. There's already a comment in the source, suggesting to 'clean up'. If that cleanup is more involved than simply calling `unpersist`, it probably exceeds my current Scala skills.

Why that is a problem:

I'm adding a constant column to a DataFrame of about 20M records resulting from an inner join with {{df.withColumn(colname, ud\_func())}} , where {{ud\_func}} is simply a wrapped {{lambda: 1}}. Before and after applying the UDF the DataFrame takes up ~430MB in the cache. The cached intermediate RDD however takes up ~10GB(!) of storage, and I know of no way to uncache it.


---

* [SPARK-7115](https://issues.apache.org/jira/browse/SPARK-7115) | *Minor* | **Do not output 1 in PolynomialExpansion**

1 is included in the output in the current implementation. We should skip the first element in the expansion.


---

* [SPARK-7112](https://issues.apache.org/jira/browse/SPARK-7112) | *Major* | **Add InputInfoTracker to have a generic way to track input data rates for all input streams.**

Non-receiver streams like Kafka Direct stream should be able to report input data rates. For that we need a generic way to report input information. This JIRA is to track the addition of an InputInfoTracker for that purport. 

Here is the design doc - https://docs.google.com/document/d/122QvcwPoLkI2OW4eM7nyBOAqffk2uxgsNT38WI-M5vQ/edit#heading=h.9eluy73ulzuz


---

* [SPARK-7111](https://issues.apache.org/jira/browse/SPARK-7111) | *Blocker* | **Exposing of input data rates of non-receiver streams like Kafka Direct stream**

Currently for receiver-based input streams, Spark Streaming offers ReceiverTracker and ReceivedBlockTracker to track the status of receivers as well as block information. Also this status and block information can be retrieved from StreamingListener to expose to the users.

But for direct-based (receiver-less) input streams, Current Spark Streaming lacks such mechanism to track the registered direct streams, also lacks the way to track the processed number of data for direct-based input streams.

Here propose a mechanism to track the register direct stream, also expose the processing statistics to the BatchInfo and StreamingListener.


---

* [SPARK-7109](https://issues.apache.org/jira/browse/SPARK-7109) | *Major* | **Push down left side filter for left semi join**

now in spark sql optimizer we only push down right side filter, actually we can push down left side filter for left semi join


---

* [SPARK-7107](https://issues.apache.org/jira/browse/SPARK-7107) | *Minor* | **Add parameter for zookeeper.znode.parent to hbase\_inputformat.py**

[~yeshavora] first reported encountering the following exception running hbase\_inputformat.py :
{code}
py4j.protocol.Py4JJavaError: An error occurred while calling z:org.apache.spark.api.python.PythonRDD.newAPIHadoopRDD.
: java.lang.RuntimeException: java.lang.NullPointerException
at org.apache.hadoop.hbase.client.RpcRetryingCaller.callWithoutRetries(RpcRetryingCaller.java:208)
at org.apache.hadoop.hbase.client.ClientScanner.call(ClientScanner.java:313)
at org.apache.hadoop.hbase.client.ClientScanner.nextScanner(ClientScanner.java:288)
at org.apache.hadoop.hbase.client.ClientScanner.initializeScannerInConstruction(ClientScanner.java:160)
{code}
It turned out that the hbase cluster has custom znode parent:
{code}
    <property>
      <name>zookeeper.znode.parent</name>
      <value>/hbase-unsecure</value>
    </property>
{code}
hbase\_inputformat.py should support specification of custom znode parent.


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

* [SPARK-7102](https://issues.apache.org/jira/browse/SPARK-7102) | *Minor* | **update apache hosted graphx-programming-guide doc**

After reading the "Contributing to Spark" guide, I've realized that a previously merged pull request improving the spark documentation for graphx-programming-guide has not been made to the apache hosted site outside of the docs. Is this because I did not make a JIRA for it?

this is in regards to pull request:
aggregateMessages example in graphX doc #4853


---

* [SPARK-7100](https://issues.apache.org/jira/browse/SPARK-7100) | *Minor* | **GradientBoostTrees leaks a persisted RDD**

It appears GradientBoostedTrees.scala can call 'persist' on an RDD and never unpersist it.

In the master branch it's in GradientBoostedTrees.boost method. It "persists" the input RDD if it's not already persisted but doesn't unpersist it.

I'll be submitting a PR with a fix.


---

* [SPARK-7098](https://issues.apache.org/jira/browse/SPARK-7098) | *Major* | **Inconsistent Timestamp behavior when used in WHERE clause**

java.sql.Timestamps containing a nano value of 0 are not matched in a WHERE clause like SELECT ... FROM ... WHERE TS\_COL = '2015-04-23 02:55:00.0'. When used with an explicit cast like SELECT ... FROM ... WHERE TS\_COL = CAST('2015-04-23 02:55:00.0' AS TIMESTAMP) things work as expected.


---

* [SPARK-7090](https://issues.apache.org/jira/browse/SPARK-7090) | *Major* | **Introduce LDAOptimizer to LDA to further improve extensibility**

LDA was implemented with extensibility in mind. And with the development of OnlineLDA and Gibbs Sampling, we are collecting more detailed requirements from different algorithms.

As Joseph Bradley proposed in https://github.com/apache/spark/pull/4807 and with some further discussion, we'd like to adjust the code structure a little to present the common interface and extension point clearly.

Basically class LDA would be a common entrance for LDA computing. And each LDA object will refer to a LDAOptimizer for the concrete algorithm implementation. Users can customize LDAOptimizer with specific parameters and assign it to LDA.


---

* [SPARK-7087](https://issues.apache.org/jira/browse/SPARK-7087) | *Minor* | **Scala Version Change script is dependent on current working directory**

script change-version-to-2.10.sh and change-version-to-2.11.sh is not working if the current working directory is not spark 
for example if I run the script inside dev folder I get the following error 
/spark/dev$ ./change-version-to-2.10.sh
sed: can't read pom.xml: No such file or directory

I was trying to configure Jenkins to build using scala 2.10 and 2.11  one after another. In my jenkins I need to use absolute path in pre build step

Find command is searching for all .pom file assuming that the current working directory  is "spark"


---

* [SPARK-7085](https://issues.apache.org/jira/browse/SPARK-7085) | *Minor* | **Inconsistent default miniBatchFraction parameters in the train methods of RidgeRegression**

The miniBatchFraction parameter in the train method called with 4 arguments is 0.01, that is,

{code:title=RidgeRegression.scala|borderStyle=solid}
def train(
      input: RDD[LabeledPoint],
      numIterations: Int,
      stepSize: Double,
      regParam: Double): RidgeRegressionModel = {
    train(input, numIterations, stepSize, regParam, 0.01)
  }
{code}

but, the parameter is 1.0 in the other train methods. For example,
{code:title=RidgeRegression.scala|borderStyle=solid}
  def train(
      input: RDD[LabeledPoint],
      numIterations: Int): RidgeRegressionModel = {
    train(input, numIterations, 1.0, 0.01, 1.0)
  }
{code}


---

* [SPARK-7081](https://issues.apache.org/jira/browse/SPARK-7081) | *Major* | **Faster sort-based shuffle path using binary processing cache-aware sort**

(Description copied from GitHub):

This patch introduces a new shuffle manager that enhances the existing sort-based shuffle with a new cache-friendly sort algorithm that operates directly on binary data. The goals of this patch are to lower memory usage and Java object overheads during shuffle and to speed up sorting. It also lays groundwork for follow-up patches that will enable end-to-end processing of serialized records.

The new shuffle manager, `UnsafeShuffleManager`, can be enabled by setting `spark.shuffle.manager=tungsten-sort` in SparkConf.


The new shuffle manager uses directly-managed memory to implement several performance optimizations for certain types of shuffles. In cases where the new performance optimizations cannot be applied, the new shuffle manager delegates to SortShuffleManager to handle those shuffles.

UnsafeShuffleManager's optimizations will apply when \_all\_ of the following conditions hold:

 - The shuffle dependency specifies no aggregation or output ordering.
 - The shuffle serializer supports relocation of serialized values (this is currently supported
   by KryoSerializer and Spark SQL's custom serializers).
 - The shuffle produces fewer than 16777216 output partitions.
 - No individual record is larger than 128 MB when serialized.

In addition, extra spill-merging optimizations are automatically applied when the shuffle compression codec supports concatenation of serialized streams. This is currently supported by Spark's LZF serializer.

At a high-level, UnsafeShuffleManager's design is similar to Spark's existing SortShuffleManager.  In sort-based shuffle, incoming records are sorted according to their target partition ids, then written to a single map output file. Reducers fetch contiguous regions of this file in order to read their portion of the map output. In cases where the map output data is too large to fit in memory, sorted subsets of the output can are spilled to disk and those on-disk files are merged to produce the final output file.

UnsafeShuffleManager optimizes this process in several ways:

 - Its sort operates on serialized binary data rather than Java objects, which reduces memory consumption and GC overheads. This optimization requires the record serializer to have certain properties to allow serialized records to be re-ordered without requiring deserialization.  See SPARK-4550, where this optimization was first proposed and implemented, for more details.

 - It uses a specialized cache-efficient sorter (UnsafeShuffleExternalSorter) that sorts arrays of compressed record pointers and partition ids. By using only 8 bytes of space per record in the sorting array, this fits more of the array into cache.

 - The spill merging procedure operates on blocks of serialized records that belong to the same partition and does not need to deserialize records during the merge.

 - When the spill compression codec supports concatenation of compressed data, the spill merge simply concatenates the serialized and compressed spill partitions to produce the final output partition.  This allows efficient data copying methods, like NIO's `transferTo`, to be used and avoids the need to allocate decompression or copying buffers during the merge.

The shuffle read path is unchanged.

This patch is similar to http://issues.apache.org/jira/browse/SPARK-4550  but uses a slightly different implementation. The `unsafe`-based implementation featured in this patch lays the groundwork for followup patches that will enable sorting to operate on serialized data pages that will be prepared by Spark SQL's new `unsafe` operators.


---

* [SPARK-7077](https://issues.apache.org/jira/browse/SPARK-7077) | *Major* | **Binary processing hash table for aggregation**

Let's start with a hash table for aggregations.


---

* [SPARK-7073](https://issues.apache.org/jira/browse/SPARK-7073) | *Major* | **Clean up Python data type hierarchy**

We recently removed PrimitiveType in Scala, but in Python we still have that (internal) concept. We should revisit and clean those as well.


---

* [SPARK-7070](https://issues.apache.org/jira/browse/SPARK-7070) | *Critical* | **LDA.setBeta calls itself**

Should call setTopicConcentration.

Reported by buring: http://apache-spark-user-list.1001560.n3.nabble.com/LDA-code-little-error-Xiangrui-Meng-td22621.html


---

* [SPARK-7069](https://issues.apache.org/jira/browse/SPARK-7069) | *Major* | **Rename NativeType -\> AtomicType**

I think our NativeType is really just AtomicTypes. Let's use that instead.


---

* [SPARK-7068](https://issues.apache.org/jira/browse/SPARK-7068) | *Major* | **Remove PrimitiveType**

We don't have a clear definition of what primitive type is. Better to remove it than confusing ourselves.


---

* [SPARK-7060](https://issues.apache.org/jira/browse/SPARK-7060) | *Major* | **Missing alias function on Python DataFrame**

I don't think we should be setting "Blocker" on issues like this.


---

* [SPARK-7059](https://issues.apache.org/jira/browse/SPARK-7059) | *Major* | **Create a DataFrame join API to facilitate equijoin and self join**

Similar to SQL on and USING.


---

* [SPARK-7058](https://issues.apache.org/jira/browse/SPARK-7058) | *Critical* | **Task deserialization time metric does not include time to deserialize broadcasted RDDs**

The web UI's "task deserialization time" metric is slightly misleading because it does not capture the time taken to deserialize the broadcasted RDD.  Currently, this statistic is measured in {{Executor.run}} by measuring the time to deserialize the {{Task}} instance: https://github.com/apache/spark/blob/bdc5c16e76c5d0bc147408353b2ba4faa8e914fc/core/src/main/scala/org/apache/spark/executor/Executor.scala#L193

As of Spark 1.1.0, we transfer RDDs using broadcast variables rather than sending them directly as part of the {{Task}} object (see SPARK-2521 for more details).  As a result, the deserialization of the RDD is performed outside of this block and is not accounted for in this statistic.  As a result, the reported task deserialization time may be a severe underestimate of the actual time.

To measure actual RDD deserialization time, I hacked the following change into ShuffleMapTask:

{code}
diff --git a/core/src/main/scala/org/apache/spark/scheduler/ShuffleMapTask.scala b/core/src/main/scala/org/apache/spark/scheduler/ShuffleMapTask.scala
index 6c7d000..adab574 100644
--- a/core/src/main/scala/org/apache/spark/scheduler/ShuffleMapTask.scala
+++ b/core/src/main/scala/org/apache/spark/scheduler/ShuffleMapTask.scala
@@ -57,8 +57,10 @@ private[spark] class ShuffleMapTask(
   override def runTask(context: TaskContext): MapStatus = {
     // Deserialize the RDD using the broadcast variable.
     val ser = SparkEnv.get.closureSerializer.newInstance()
+    val deserializeStartTime = System.currentTimeMillis()
     val (rdd, dep) = ser.deserialize[(RDD[\_], ShuffleDependency[\_, \_, \_])](
       ByteBuffer.wrap(taskBinary.value), Thread.currentThread.getContextClassLoader)
+    println(s"Deserialized a shuffle map task in ${System.currentTimeMillis() - deserializeStartTime} ms")
{code}

For one of my benchmark jobs (a SQL aggregation query that used code generation), the actual deserialization time was ~150ms per task even though the UI only reported 1ms.

I think that this should be pretty easy to fix by simply adding additional calls in ShuffleMapTask and ResultTask to increment the deserialization time metric.


---

* [SPARK-7056](https://issues.apache.org/jira/browse/SPARK-7056) | *Critical* | **Make the WriteAheadLog pluggable**

Users may want the WAL data to be written to non-HDFS data storage systems. To allow that, we have to make the WAL pluggable. The following design doc outlines the plan. 

https://docs.google.com/a/databricks.com/document/d/1A2XaOLRFzvIZSi18i\_luNw5Rmm9j2j4AigktXxIYxmY/edit?usp=sharing


---

* [SPARK-7055](https://issues.apache.org/jira/browse/SPARK-7055) | *Major* | **getContextOrSparkClassLoader is not used while loading JDBC driver class**

In JDBCRDD.scala, getConnector method uses Class.forName to load JDBC driver class .Instead it should use getContextOrSparkClassLoader.loadClass method
There was a resolved JIRA : SPARK-6966 , which handled same issue only in 'JDBCRelation.scala'


---

* [SPARK-7052](https://issues.apache.org/jira/browse/SPARK-7052) | *Minor* | **Add ThreadUtils and move thread methods from Utils to ThreadUtils**

As per [~rxin] 's suggestion in https://github.com/apache/spark/pull/5392/files#r28757176


---

* [SPARK-7046](https://issues.apache.org/jira/browse/SPARK-7046) | *Trivial* | **BlockResult shouldn't include an InputMetrics object (code cleanup)**

The BlockResult class originally contained an InputMetrics object so that InputMetrics could directly be used as the InputMetrics for the whole task.  Now we copy the fields out of here, and the presence of this object is confusing because it's only a partial input metrics (it doesn't include the records read).  Because this object is no longer useful (and is confusing), it should be removed.


---

* [SPARK-7044](https://issues.apache.org/jira/browse/SPARK-7044) | *Major* | **[Spark SQL] query would hang when using scripts in SQL statement**

Query with 'USING' operator like below would hang when using scripts in SQL statement
{code}
INSERT INTO TABLE ${hiveconf:RESULT\_TABLE}
SELECT pid1, pid2, COUNT (*) AS cnt
FROM (
  --Make items basket
  FROM (
    -- Joining two tables
    SELECT s.ss\_ticket\_number AS oid , s.ss\_item\_sk AS pid
    FROM store\_sales s
    INNER JOIN item i ON (s.ss\_item\_sk = i.i\_item\_sk)
    WHERE i.i\_category\_id in (${hiveconf:q01\_i\_category\_id\_IN})
    AND s.ss\_store\_sk in (${hiveconf:q01\_ss\_store\_sk\_IN})
    CLUSTER BY oid
  ) q01\_map\_output
  REDUCE q01\_map\_output.oid, q01\_map\_output.pid
  USING '${env:BIG\_BENCH\_JAVA} ${env:BIG\_BENCH\_java\_child\_process\_xmx} -cp bigbenchqueriesmr.jar de.bankmark.bigbench.queries.q01.Red -ITEM\_SET\_MAX ${hiveconf:q01\_NPATH\_ITEM\_SET\_MAX} '
  AS (pid1 BIGINT, pid2 BIGINT)
) q01\_temp\_basket
{code}


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

* [SPARK-7037](https://issues.apache.org/jira/browse/SPARK-7037) | *Minor* | **Inconsistent behavior for non-spark config properties in spark-shell and spark-submit**

When specifying non-spark properties (i.e. names don't start with {{spark.}}) in the command line and config file, {{spark-submit}} and {{spark-shell}} behave differently, causing confusion to users.

Here is the summary-
|| || spark-submit || spark-shell ||
|| --conf k=v | silently ignored | applied |
|| spark-defaults.conf | show a warning message and ignored | show a warning message and ignored |

I assume that ignoring non-spark properties is intentional. If so, it should always be ignored with a warning message in all cases.

The reason why I bring this up is as follows. In my production Hadoop jobs, I set a couple of internal properties in the job config to keep track of extra information. In an attempt to do the same in Spark, I set a non-spark property in the command line and found that it doesn't work in spark-submit while it works in spark-shell. This was confusing to me at first, and I had to spend some time to fully understand all the different behaviors (as described above).


---

* [SPARK-7036](https://issues.apache.org/jira/browse/SPARK-7036) | *Minor* | **ALS.train should support DataFrames in PySpark**

ALS.train works with SchemaRDDs in 1.2. We should support DataFrames for compatibility.


---

* [SPARK-7033](https://issues.apache.org/jira/browse/SPARK-7033) | *Minor* | **Use JavaRDD.partitions() instead of JavaRDD.splits()**

In numPartitions(), JavaRDD.splits() is called to get the number of partitions in an RDD. But JavaRDD.splits() is deprecated. Use JavaRDD.partitions() instead.


---

* [SPARK-7031](https://issues.apache.org/jira/browse/SPARK-7031) | *Minor* | **let thrift server take SPARK\_DAEMON\_MEMORY and SPARK\_DAEMON\_JAVA\_OPTS**

Now SPARK\_DAEMON\_JAVA\_OPTS and SPARK\_DAEMON\_MEMORY only work on Master/Worker/HistoryServer/CoarseGrainedExecutorBackend/MesosExecutorBackend/etc but not ThriftServer. We should take ThriftServer as daemon and let it accept these two args.


---

* [SPARK-7022](https://issues.apache.org/jira/browse/SPARK-7022) | *Critical* | **PySpark is missing ParamGridBuilder**

PySpark is missing the entirety of ML.Tuning (see: https://issues.apache.org/jira/browse/SPARK-6940)

This is a subticket specifically to track the ParamGridBuilder. The CrossValidator will be dealt with in a followup.


---

* [SPARK-7015](https://issues.apache.org/jira/browse/SPARK-7015) | *Major* | **Multiclass to Binary Reduction**

With the new Pipeline API, it is possible to seamlessly support machine learning reductions as meta algorithms.
GBDT and SVM today are binary classifiers and we can implement multi class classification as a One vs All, or All vs All (or even more sophisticated reduction) using binary classifiers as primitives.
This JIRA is to track the creation of a reduction API for multi class classification.


---

* [SPARK-7011](https://issues.apache.org/jira/browse/SPARK-7011) | *Major* | **Build fails with scala 2.11 option, because a protected[sql] type is accessed in ml package.**

I am not sure why this does not fail while building with scala 2.10, looks like scala bug ?


---

* [SPARK-7003](https://issues.apache.org/jira/browse/SPARK-7003) | *Major* | **Improve reliability of connection failure detection between Netty block transfer service endpoints**

Currently we rely on the assumption that an exception will be raised and the channel closed if two endpoints cannot communicate over a Netty TCP channel. However, this guarantee does not hold in all network environments, and SPARK-6962 seems to point to a case where only the server side of the connection detected a fault.

We should improve robustness of fetch/rpc requests by having an explicit timeout in the transport layer which closes the connection if there is a period of inactivity while there are outstanding requests.


---

* [SPARK-6999](https://issues.apache.org/jira/browse/SPARK-6999) | *Blocker* | **infinite recursion with createDataFrame(JavaRDD[Row], java.util.List[String])**

It looks like 

{code}
  def createDataFrame(rowRDD: JavaRDD[Row], columns: java.util.List[String]): DataFrame = {
    createDataFrame(rowRDD.rdd, columns.toSeq)
  }
{code}

is in fact an infinite recursion because it calls itself. Scala implicit conversions convert the arguments back into a JavaRDD and a java.util.List.

{code}
15/04/19 16:51:24 INFO BlockManagerMaster: Trying to register BlockManager
15/04/19 16:51:24 INFO BlockManagerMasterActor: Registering block manager localhost:53711 with 1966.1 MB RAM, BlockManagerId(<driver>, localhost, 53711)
15/04/19 16:51:24 INFO BlockManagerMaster: Registered BlockManager
Exception in thread "main" java.lang.StackOverflowError
    at scala.collection.mutable.AbstractSeq.<init>(Seq.scala:47)
    at scala.collection.mutable.AbstractBuffer.<init>(Buffer.scala:48)
    at scala.collection.convert.Wrappers$JListWrapper.<init>(Wrappers.scala:84)
    at scala.collection.convert.WrapAsScala$class.asScalaBuffer(WrapAsScala.scala:127)
    at scala.collection.JavaConversions$.asScalaBuffer(JavaConversions.scala:53)
    at org.apache.spark.sql.SQLContext.createDataFrame(SQLContext.scala:408)
    at org.apache.spark.sql.SQLContext.createDataFrame(SQLContext.scala:408)
    at org.apache.spark.sql.SQLContext.createDataFrame(SQLContext.scala:408)
    at org.apache.spark.sql.SQLContext.createDataFrame(SQLContext.scala:408)
{code}

Here is the code sample I used to reproduce the issue:

{code}
/**
 * @author juang
 */
public final class InfiniteRecursionExample {

    public static void main(String[] args) {
        JavaSparkContext sc = new JavaSparkContext("local", "infinite\_recursion\_example");
        List<Row> rows = Lists.newArrayList();
        JavaRDD<Row> rowRDD = sc.parallelize(rows);

        SQLContext sqlContext = new SQLContext(sc);
        sqlContext.createDataFrame(rowRDD, ImmutableList.of("myCol"));
    }

}
{code}


---

* [SPARK-6998](https://issues.apache.org/jira/browse/SPARK-6998) | *Major* | **Make StreamingKMeans `Serializable`**

If `StreamingKMeans` is not `Serializable`, we cannot do checkpoint for applications that using `StreamingKMeans`. So we should make it `Serializable`.


---

* [SPARK-6996](https://issues.apache.org/jira/browse/SPARK-6996) | *Major* | **DataFrame should support map types when creating DFs from JavaBeans.**

If we have a JavaBean class with fields of map types, SQL throws an exception in {{createDataFrame}} because those types are not matched in {{SQLContext#inferDataType}}.

Similar to SPARK-6475.


---

* [SPARK-6994](https://issues.apache.org/jira/browse/SPARK-6994) | *Minor* | **Allow to fetch field values by name in sql.Row**

It looked weird that up to now there was no way in Spark's Scala API to access fields of `DataFrame/sql.Row` by name, only by their index.

This tries to solve this issue.


---

* [SPARK-6993](https://issues.apache.org/jira/browse/SPARK-6993) | *Minor* | **Adding default max and min methods for JavaDoubleRDD**

The default Scala API allows you when manipulating standard types like Double to simply write 

{code:scala}
val doubles : RDD[Double] = ...
doubles.max()
doubles.min()
{code}

Using the implicit ordering, on the other hand for the Java API you have to specify a Comparator to use : 

{code:java}
JavaDoubleRDD doubles = ...mapToDouble...
doubles.max(Comparator.naturalOrder()) // for example
doubles.min(Comparator.naturalOrder()) // for example
{code}

What is even less consistent is that the *stats* API doesn't ask you for any kind of comparator and uses the default ordering by itself.

This issue, and the associated pull request, is proposing to add default max and min functions to the JavaDoubleRDD that will use the default Comparator.

But as **java.util.Comparator.naturalOrder()** is only a Java 8 API, I used in my PR the Guava - Ordering.natural() method and added the associated test.

This PR does not add any additional dependencies, Guava is already used by core and shaded.

Thank you for your time, 

Olivier.


---

* [SPARK-6992](https://issues.apache.org/jira/browse/SPARK-6992) | *Minor* | **Spark SQL documentation for programmatically adding a Schema is broken for Java API**

The Java example for the documentation is not compiling mainly because Row.create and DataType is used instead of RowFactory and DataTypes.

I'll create the corresponding pull request on branch-1.3

Regards, 

Olivier.


---

* [SPARK-6991](https://issues.apache.org/jira/browse/SPARK-6991) | *Minor* | **Adds support for zipPartitions for SparkR**

Adds support for zipPartitions for SparkR:
zipPartitions(..., func)

This gives user more flexibility for zip multiple RDDs with partition-level management (potential performance improvement).


---

* [SPARK-6988](https://issues.apache.org/jira/browse/SPARK-6988) | *Minor* | **Fix Spark SQL documentation for 1.3.x**

There are a few glitches regarding the DataFrame API usage in Java.
The most important one being how to map a DataFrame result, using the javaRDD method.


---

* [SPARK-6986](https://issues.apache.org/jira/browse/SPARK-6986) | *Major* | **Makes SparkSqlSerializer2 support sort-based shuffle with sort merge**

*Update*: SPARK-4550 has exposed the interfaces. We can safely enable Serializer2 to support sort merge.

*Original description*:
Our existing Java and Kryo serializer are both general-purpose serialize. They treat every object individually and encode the type of an object to underlying stream. For Spark, it is common that we serialize a collection with records having the same types (for example, records of a DataFrame). For these cases, we do not need to write out types of records and we can take advantage the type information to build specialized serializer. To do so, seems we need to extend the interface of SerializationStream/DeserializationStream, so a SerializationStream/DeserializationStream can have more information about objects passed in (for example, if an object is key/value pair, a key, or a value).


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

* [SPARK-6983](https://issues.apache.org/jira/browse/SPARK-6983) | *Major* | **Update ReceiverTrackerActor to use the new Rpc interface**

Title says it all.


---

* [SPARK-6979](https://issues.apache.org/jira/browse/SPARK-6979) | *Minor* | **Replace JobScheduler.eventActor and JobGenerator.eventActor with EventLoop**

JobScheduler.eventActor can be replaced with EventLoop easily.


---

* [SPARK-6975](https://issues.apache.org/jira/browse/SPARK-6975) | *Minor* | **Argument checking conflict in Yarn when dynamic allocation is enabled**

When dynamic allocation is enabled in yarn with default parameter, {{numExecutors}} will be set to 0, but this will be failed in the following {{valideArgs()}}, here {{numExecutors}} must > 0, but for dynamic allocation, this executor number can be 0 (with default setting). The exception is shown as below:

Exception in thread "main" java.lang.IllegalArgumentException: You must specify at least 1 executor!


---

* [SPARK-6971](https://issues.apache.org/jira/browse/SPARK-6971) | *Critical* | **Each Jenkins build should use a distinct Zinc port**

Contamination between the builds causes random compiler crashes. Our Spark packaging scripts now use unique zinc ports for each build:

https://github.com/apache/spark/commit/3980ebdf188d77799b55b407b115cdc82f51d532#diff-c849de7463d08ba5f589d5732ef07061R229

It should be too hard to fix this - we can just set ZINC\_PORT differently in each build, to a specific number or a random number within a range.


---

* [SPARK-6969](https://issues.apache.org/jira/browse/SPARK-6969) | *Critical* | **Refresh the cached table when REFRESH TABLE is used**

Right now, {{REFRESH TABLE}} only invalidate the metadata of a table. If a table is cached and new files are added manually to the table, users still see the cached data after {{REFRESH TABLE}}.


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

* [SPARK-6965](https://issues.apache.org/jira/browse/SPARK-6965) | *Minor* | **StringIndexer should convert input to Strings**

StringIndexer should convert non-String input types to String.  That way, it can handle any basic types such as Int, Double, etc.

It can convert any input type to strings first and store the string labels (instead of an arbitrary type).  That will simplify model export/import.


---

* [SPARK-6963](https://issues.apache.org/jira/browse/SPARK-6963) | *Major* | **Flaky test: o.a.s.ContextCleanerSuite automatically cleanup checkpoint**

Observed on an unrelated streaming PR https://github.com/apache/spark/pull/5428
https://amplab.cs.berkeley.edu/jenkins//job/SparkPullRequestBuilder/30389/

{code}
sbt.ForkMain$ForkError: fs.exists(org.apache.spark.rdd.RDDCheckpointData.rddCheckpointDataPath(ContextCleanerSuite.this.sc, rddId).get) was true
	at org.scalatest.Assertions$class.newAssertionFailedException(Assertions.scala:500)
	at org.scalatest.FunSuite.newAssertionFailedException(FunSuite.scala:1555)
	at org.scalatest.Assertions$AssertionsHelper.macroAssert(Assertions.scala:466)
	at org.apache.spark.ContextCleanerSuite$$anonfun$9.apply$mcV$sp(ContextCleanerSuite.scala:252)
	at org.apache.spark.ContextCleanerSuite$$anonfun$9.apply(ContextCleanerSuite.scala:209)
	at org.apache.spark.ContextCleanerSuite$$anonfun$9.apply(ContextCleanerSuite.scala:209)
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
	at org.apache.spark.ContextCleanerSuiteBase.org$scalatest$BeforeAndAfter$$super$runTest(ContextCleanerSuite.scala:46)
	at org.scalatest.BeforeAndAfter$class.runTest(BeforeAndAfter.scala:200)
	at org.apache.spark.ContextCleanerSuiteBase.org$scalatest$BeforeAndAfterEach$$super$runTest(ContextCleanerSuite.scala:46)
	at org.scalatest.BeforeAndAfterEach$class.runTest(BeforeAndAfterEach.scala:255)
	at org.apache.spark.ContextCleanerSuiteBase.runTest(ContextCleanerSuite.scala:46)
	at org.scalatest.FunSuiteLike$$anonfun$runTests$1.apply(FunSuiteLike.scala:208)
	at org.scalatest.FunSuiteLike$$anonfun$runTests$1.apply(FunSuiteLike.scala:208)
	at org.scalatest.SuperEngine$$anonfun$traverseSubNodes$1$1.apply(Engine.scala:413)
	at org.scalatest.SuperEngine$$anonfun$traverseSubNodes$1$1.apply(Engine.scala:401)
	at scala.collection.immutable.List.foreach(List.scala:318)
	at org.scalatest.SuperEngine.traverseSubNodes$1(Engine.scala:401)
	at org.scalatest.SuperEngine.org$scalatest$SuperEngine$$runTestsInBranch(Engine.scala:396)
{code}


---

* [SPARK-6958](https://issues.apache.org/jira/browse/SPARK-6958) | *Major* | **Add Pandas style sort operator**

Support something like this

{code}
df.sort('A', ascending=True)
df.sort(['A', 'B'], ascending=True)
df.sort(['A', 'B'], ascending=[1, 0])
{code}


---

* [SPARK-6957](https://issues.apache.org/jira/browse/SPARK-6957) | *Major* | **Add Pandas style group by operator**

Alias groupby = groupBy.

Should also make sure we support:

{code}
groupby('col')

groupby(['colA', 'colB'])

groupby([df.colA, df.colB])
{code}


---

* [SPARK-6956](https://issues.apache.org/jira/browse/SPARK-6956) | *Major* | **Improve DataFrame API compatibility with Pandas**

This is not always possible, but whenever possible we should remove or reduce the differences between Pandas and Spark DataFrames in Python.


---

* [SPARK-6955](https://issues.apache.org/jira/browse/SPARK-6955) | *Minor* | **Do not let Yarn Shuffle Server retry its server port.**

 It's better to let the NodeManager get down rather than take a port retry when `spark.shuffle.service.port` has been conflicted during starting the Spark Yarn Shuffle Server, because the retry mechanism will make the inconsistency of shuffle port and also make client fail to find the port.


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

* [SPARK-6953](https://issues.apache.org/jira/browse/SPARK-6953) | *Major* | **Speedup tests of PySpark, reduce logging**

Right now, it take about 30 minutes to complete the PySpark tests with Python 2.6, python 3.4 and PyPy. It's better to decrease it.

Also when run pyspark/tests.py, the logging is pretty scaring (lots of exceptions), it will be nice to mute the exception when it's expected.


---

* [SPARK-6952](https://issues.apache.org/jira/browse/SPARK-6952) | *Minor* | **spark-daemon.sh PID reuse check fails on long classpath**

{{sbin/spark-daemon.sh}} uses {{ps -p "$TARGET\_PID" -o args=}} to figure out whether the process running with the expected PID is actually a Spark daemon. When running with a large classpath, the output of {{ps}} gets truncated and the check fails spuriously.

I think we should weaken the check to see if it's a java command (which is something we do in other parts of the script) rather than looking for the specific main class name. This means that SPARK-4832 might happen under a slightly broader range of circumstances (a *java* program happened to reuse the same PID), but it seems worthwhile compared to failing consistently with a large classpath.


---

* [SPARK-6949](https://issues.apache.org/jira/browse/SPARK-6949) | *Blocker* | **Support Date/Timestamp in Column expression of DataFrame Python API**

Currently, we reply on Py4j to pass the Python object into JVM for Column expression, but Py4j can not pass datatime.date, datetime.datetime to JVM automatically.

One way is to update the py4j to support them (it may slip the 1.4 release), or we handle them ourselves (in short term).


---

* [SPARK-6948](https://issues.apache.org/jira/browse/SPARK-6948) | *Minor* | **VectorAssembler should choose dense/sparse for output based on number of zeros**

Now VectorAssembler only outputs sparse vectors. We should choose dense/sparse format automatically, whichever uses less memory.


---

* [SPARK-6940](https://issues.apache.org/jira/browse/SPARK-6940) | *Critical* | **PySpark CrossValidator**

PySpark doesn't currently have wrappers for any of the ML.Tuning classes: CrossValidator, CrossValidatorModel, ParamGridBuilder


---

* [SPARK-6939](https://issues.apache.org/jira/browse/SPARK-6939) | *Major* | **Refactoring existing batch statistics into the new UI**

Use D3 to render the timelines and distributions, as the proposed Task 3 in https://docs.google.com/document/d/1-ZjvQ\_2thWEQkTxRMHrVdnEI57XTi3wZEBUoqrrDg5c/edit?usp=sharing


---

* [SPARK-6938](https://issues.apache.org/jira/browse/SPARK-6938) | *Trivial* | **Add informative error messages to require statements.**

In the Vectors class there are multiple require statements that do not return any message if the requirement fails. These should instead provide an informative error message.


---

* [SPARK-6937](https://issues.apache.org/jira/browse/SPARK-6937) | *Trivial* | **Tiny bug in PowerIterationClusteringExample in which radius not accepted from command line**

Tiny bug in PowerIterationClusteringExample in which radius not accepted from command line


---

* [SPARK-6934](https://issues.apache.org/jira/browse/SPARK-6934) | *Major* | **Fix the bug that using a wrong configuration for “ask” timeout in RpcEnv**

I just found that I used a wrong configuration for the "ask" timeout in SPARK-5124. It should have been "spark.akka.askTimeout".


---

* [SPARK-6927](https://issues.apache.org/jira/browse/SPARK-6927) | *Major* | **Sorting Error when codegen on**

When code gen is on, some unit test in SqlQuerySuit failed.

 test("sorting") {
    val before = conf.externalSortEnabled
    setConf(SQLConf.EXTERNAL\_SORT, "false")
    sortTest()
    setConf(SQLConf.EXTERNAL\_SORT, before.toString)
  }

  test("external sorting") {
    val before = conf.externalSortEnabled
    setConf(SQLConf.EXTERNAL\_SORT, "true")
    sortTest()
    setConf(SQLConf.EXTERNAL\_SORT, before.toString)
  }

GenerateOrding can't deal BinaryType.


---

* [SPARK-6918](https://issues.apache.org/jira/browse/SPARK-6918) | *Major* | **Secure HBase with Kerberos does not work over YARN**

Attempts to access HBase from Spark executors will fail at the auth to the metastore with: \_GSSException: No valid credentials provided (Mechanism level: Failed to find any Kerberos tgt)\_

This is because HBase Kerberos auth token is not send to the executor. Will need to have something similar to obtainTokensForNamenodes(used for HDFS) in yarn/Client.scala. Storm also needed something similar: https://github.com/apache/storm/pull/226

I've created a patch for this that required an HBase dependency in the YARN module that we've been using successfully at eBay but am working on a version that does not require the HBase dependency by calling the class loader. Should be ready in a few days.


---

* [SPARK-6913](https://issues.apache.org/jira/browse/SPARK-6913) | *Major* | **"No suitable driver found" loading JDBC dataframe using driver added by through SparkContext.addJar**

val sc = new SparkContext(conf)
sc.addJar("J:\mysql-connector-java-5.1.35.jar")

val df = sqlContext.jdbc("jdbc:mysql://localhost:3000/test\_db?user=abc&password=123", "table1")
df.show()

Folloing error:
2015-04-14 17:04:39,541 [task-result-getter-0] WARN  org.apache.spark.scheduler.TaskSetManager - Lost task 0.0 in stage 0.0 (TID 0, dev1.test.dc2.com): java.sql.SQLException: No suitable driver found for jdbc:mysql://localhost:3000/test\_db?user=abc&password=123
	at java.sql.DriverManager.getConnection(DriverManager.java:689)
	at java.sql.DriverManager.getConnection(DriverManager.java:270)
	at org.apache.spark.sql.jdbc.JDBCRDD$$anonfun$getConnector$1.apply(JDBCRDD.scala:158)
	at org.apache.spark.sql.jdbc.JDBCRDD$$anonfun$getConnector$1.apply(JDBCRDD.scala:150)
	at org.apache.spark.sql.jdbc.JDBCRDD$$anon$1.<init>(JDBCRDD.scala:317)
	at org.apache.spark.sql.jdbc.JDBCRDD.compute(JDBCRDD.scala:309)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
	at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:68)
	at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:41)
	at org.apache.spark.scheduler.Task.run(Task.scala:64)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:203)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)


---

* [SPARK-6911](https://issues.apache.org/jira/browse/SPARK-6911) | *Critical* | **API for access MapType in DataFrame**

We should have a API to access items in MapType  in a DataFrame.

Also, we should improve the Python API to access items for ArrayType and StructType.


---

* [SPARK-6905](https://issues.apache.org/jira/browse/SPARK-6905) | *Major* | **Upgrade Snappy Java to 1.1.1.7 to fix bug that resulted in worse compression**

We should upgrade our {{snappy-java}} dependency to 1.1.1.7 in order to include a fix for a bug that resulted in worse compression (see https://github.com/xerial/snappy-java/issues/100).  I believe that this may partially fix SPARK-5081, an issue where the size of shuffle data increased from Spark 1.1.x to 1.2.0.


---

* [SPARK-6899](https://issues.apache.org/jira/browse/SPARK-6899) | *Major* | **Type mismatch when using codegen**

When I run tests in DataFrameSuite with codegen on, some type mismatched error occured.

{code}
test("average") {
    checkAnswer(
      decimalData.agg(avg('a)),
      Row(new java.math.BigDecimal(2.0)))
  }

type mismatch;
 found   : Int(0)
 required: org.apache.spark.sql.types.DecimalType#JvmType
{code}


---

* [SPARK-6898](https://issues.apache.org/jira/browse/SPARK-6898) | *Major* | **Special chars in column names is broken**

This function is added a long time ago, but it's not complete, it will fail if we have "." inside column name.
{code}
test("SPARK-3483 Special chars in column names") {
    val data = sparkContext.parallelize(
      Seq("""{"key?number1": "value1", "key.number2": "value2"}"""))
    jsonRDD(data).registerTempTable("records")
    sql("SELECT `key?number1`, `key.number2` FROM records")
  }
{code}
this test will fail.


---

* [SPARK-6896](https://issues.apache.org/jira/browse/SPARK-6896) | *Major* | **building error because of guava import**

[INFO] compiler plugin: BasicArtifact(org.scalamacros,paradise\_2.10.4,2.0.1,null)
[info] Compiling 8 Scala sources to /root/projects/spark/sql/hive-thriftserver/target/scala-2.10/classes...
[error] bad symbolic reference. A signature in Utils.class refers to term util
[error] in package com.google.common which is not available.
[error] It may be completely missing from the current classpath, or the version on
[error] the classpath might be incompatible with the version used when compiling Utils.class.
[error]
[error] while compiling: /root/projects/spark/sql/hive-thriftserver/src/main/scala/org/apache/spark/sql/hive/thriftserver/SparkSQLEnv.scala
[error] during phase: erasure
[error] library version: version 2.10.4
[error] compiler version: version 2.10.4
[error] reconstructed args: -deprecation -classpath


---

* [SPARK-6894](https://issues.apache.org/jira/browse/SPARK-6894) | *Minor* | **typo spark.executor.extraLibraryOptions =\> spark.executor.extraLibraryPath**

Looks like it's an occasional turnover in rewriting.


---

* [SPARK-6893](https://issues.apache.org/jira/browse/SPARK-6893) | *Major* | **Better handling of pipeline parameters in PySpark**

This is SPARK-5957 for Python.


---

* [SPARK-6890](https://issues.apache.org/jira/browse/SPARK-6890) | *Critical* | **Local cluster mode is broken with SPARK\_PREPEND\_CLASSES**

In master, local cluster mode is broken. If I run `bin/spark-submit --master local-cluster[2,1,512]`, my executors keep failing with class not found exception. It appears that the assembly jar is not added to the executors' class paths. I suspect that this is caused by https://github.com/apache/spark/pull/5085.

{code}
Exception in thread "main" java.lang.NoClassDefFoundError: scala/Option
	at java.lang.Class.getDeclaredMethods0(Native Method)
	at java.lang.Class.privateGetDeclaredMethods(Class.java:2531)
	at java.lang.Class.getMethod0(Class.java:2774)
	at java.lang.Class.getMethod(Class.java:1663)
	at sun.launcher.LauncherHelper.getMainMethod(LauncherHelper.java:494)
	at sun.launcher.LauncherHelper.checkAndLoadMain(LauncherHelper.java:486)
Caused by: java.lang.ClassNotFoundException: scala.Option
	at java.net.URLClassLoader$1.run(URLClassLoader.java:366)
	at java.net.URLClassLoader$1.run(URLClassLoader.java:355)
{code}


---

* [SPARK-6889](https://issues.apache.org/jira/browse/SPARK-6889) | *Major* | **Streamline contribution process with update to Contribution wiki, JIRA rules**

From about 6 months of intimate experience with the Spark JIRA and the reality of the JIRA / PR flow, I've observed some challenges, problems and growing pains that have begun to encumber the project mechanics. In the attached SparkProjectMechanicsChallenges.pdf document, I've collected these observations and a few statistics that summarize much of what I've seen. From side conversations with several of you, I think some of these will resonate. (Read it first for this to make sense.)

I'd like to improve just one aspect to start: the contribution process. A lot of inbound contribution effort gets misdirected, and can burn a lot of cycles for everyone, and that's a barrier to scaling up further and to general happiness. I'd like to propose for discussion a change to the wiki pages, and a change to some JIRA settings. 

*Wiki*

- Replace https://cwiki.apache.org/confluence/display/SPARK/Contributing+to+Spark with proposed text (NewContributingToSpark.pdf)
- Delete https://cwiki.apache.org/confluence/display/SPARK/Reviewing+and+Merging+Patches as it is subsumed by the new text
- Move the "IDE Setup" section to https://cwiki.apache.org/confluence/display/SPARK/Useful+Developer+Tools
- Delete https://cwiki.apache.org/confluence/display/SPARK/Jira+Permissions+Scheme as it's a  bit out of date and not all that useful

*JIRA*

Now: 

Start by removing everyone from the 'Developer' role and add them to 'Contributor'. Right now Developer has no permission that Contributor doesn't. We may reuse Developer later for some level between Committer and Contributor.

Later, with Apache admin assistance:


- Make Component and Affects Version required for new JIRAs
- Set default priority to Minor and type to Question for new JIRAs. If defaults aren't changed, by default it can't be that important
- Only let Committers set Target Version and Fix Version
- Only let Committers set Blocker Priority


---

* [SPARK-6887](https://issues.apache.org/jira/browse/SPARK-6887) | *Major* | **ColumnBuilder misses FloatType**

To reproduce ...
{code}
import org.apache.spark.sql.types.\_
import org.apache.spark.sql.Row

val schema = StructType(StructField("c", FloatType, true) :: Nil)

val rdd = sc.parallelize(1 to 100).map(i => Row(i.toFloat))

sqlContext.createDataFrame(rdd, schema).registerTempTable("test")

sqlContext.sql("cache table test")

sqlContext.table("test").show
{code}
The exception is ...
{code}
15/04/13 15:00:12 INFO DAGScheduler: Job 0 failed: collect at SparkPlan.scala:88, took 0.474392 s
org.apache.spark.SparkException: Job aborted due to stage failure: Task 5 in stage 0.0 failed 1 times, most recent failure: Lost task 5.0 in stage 0.0 (TID 5, localhost): java.lang.ClassCastException: org.apache.spark.sql.catalyst.expressions.MutableFloat cannot be cast to org.apache.spark.sql.catalyst.expressions.MutableLong
	at org.apache.spark.sql.catalyst.expressions.SpecificMutableRow.setLong(SpecificMutableRow.scala:292)
	at org.apache.spark.sql.columnar.compression.LongDelta$Decoder.next(compressionSchemes.scala:539)
	at org.apache.spark.sql.columnar.compression.CompressibleColumnAccessor$class.extractSingle(CompressibleColumnAccessor.scala:37)
	at org.apache.spark.sql.columnar.NativeColumnAccessor.extractSingle(ColumnAccessor.scala:64)
	at org.apache.spark.sql.columnar.BasicColumnAccessor.extractTo(ColumnAccessor.scala:54)
	at org.apache.spark.sql.columnar.NativeColumnAccessor.org$apache$spark$sql$columnar$NullableColumnAccessor$$super$extractTo(ColumnAccessor.scala:64)
	at org.apache.spark.sql.columnar.NullableColumnAccessor$class.extractTo(NullableColumnAccessor.scala:52)
	at org.apache.spark.sql.columnar.NativeColumnAccessor.extractTo(ColumnAccessor.scala:64)
	at org.apache.spark.sql.columnar.InMemoryColumnarTableScan$$anonfun$8$$anonfun$13$$anon$2.next(InMemoryColumnarTableScan.scala:295)
	at org.apache.spark.sql.columnar.InMemoryColumnarTableScan$$anonfun$8$$anonfun$13$$anon$2.next(InMemoryColumnarTableScan.scala:290)
	at scala.collection.Iterator$$anon$13.next(Iterator.scala:372)
	at org.apache.spark.sql.execution.Aggregate$$anonfun$execute$1$$anonfun$6.apply(Aggregate.scala:130)
	at org.apache.spark.sql.execution.Aggregate$$anonfun$execute$1$$anonfun$6.apply(Aggregate.scala:126)
	at org.apache.spark.rdd.RDD$$anonfun$14.apply(RDD.scala:640)
	at org.apache.spark.rdd.RDD$$anonfun$14.apply(RDD.scala:640)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
	at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:68)
	at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:41)
	at org.apache.spark.scheduler.Task.run(Task.scala:64)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:210)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
{code}


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

* [SPARK-6881](https://issues.apache.org/jira/browse/SPARK-6881) | *Trivial* | **Change the checkpoint directory name from checkpoints to checkpoint**

Name "checkpoint" instead of "checkpoints" is included in .gitignore


---

* [SPARK-6880](https://issues.apache.org/jira/browse/SPARK-6880) | *Major* | **Spark Shutdowns with NoSuchElementException when running parallel collect on cachedRDD**

Spark Shutdowns with NoSuchElementException when running parallel collect on cachedRDDs

Below is the stack trace

15/03/27 11:12:43 ERROR DAGSchedulerActorSupervisor: eventProcesserActor failed; shutting down SparkContext
java.util.NoSuchElementException: key not found: 28
        at scala.collection.MapLike$class.default(MapLike.scala:228)
        at scala.collection.AbstractMap.default(Map.scala:58)
        at scala.collection.mutable.HashMap.apply(HashMap.scala:64)
        at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$submitMissingTasks(DAGScheduler.scala:808)
        at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$submitStage(DAGScheduler.scala:778)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$submitStage$4.apply(DAGScheduler.scala:781)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$submitStage$4.apply(DAGScheduler.scala:780)
        at scala.collection.immutable.List.foreach(List.scala:318)
        at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$submitStage(DAGScheduler.scala:780)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$submitStage$4.apply(DAGScheduler.scala:781)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$submitStage$4.apply(DAGScheduler.scala:780)
        at scala.collection.immutable.List.foreach(List.scala:318)
        at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$submitStage(DAGScheduler.scala:780)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$submitStage$4.apply(DAGScheduler.scala:781)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$submitStage$4.apply(DAGScheduler.scala:780)
        at scala.collection.immutable.List.foreach(List.scala:318)
        at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$submitStage(DAGScheduler.scala:780)
        at org.apache.spark.scheduler.DAGScheduler.handleJobSubmitted(DAGScheduler.scala:762)
        at org.apache.spark.scheduler.DAGSchedulerEventProcessActor$$anonfun$receive$2.applyOrElse(DAGScheduler.scala:1389)
        at akka.actor.Actor$class.aroundReceive(Actor.scala:465)
        at org.apache.spark.scheduler.DAGSchedulerEventProcessActor.aroundReceive(DAGScheduler.scala:1375)
        at akka.actor.ActorCell.receiveMessage(ActorCell.scala:516)
        at akka.actor.ActorCell.invoke(ActorCell.scala:487)


---

* [SPARK-6879](https://issues.apache.org/jira/browse/SPARK-6879) | *Major* | **Check if the app is completed before clean it up**

Now history server deletes the directory whichi expires according to its modification time. It is not good for those long-running applicaitons, as they might be deleted before finished.


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

* [SPARK-6876](https://issues.apache.org/jira/browse/SPARK-6876) | *Major* | **DataFrame.na.replace value support for Python**

Scala/Java support is in. We should provide the Python version, similar to what Pandas supports.

http://pandas.pydata.org/pandas-docs/dev/generated/pandas.DataFrame.replace.html


---

* [SPARK-6871](https://issues.apache.org/jira/browse/SPARK-6871) | *Major* | **WITH clause in CTE can not following another WITH clause**

For example, this sql query "WITH q1 AS (SELECT * FROM testData) WITH q2 AS (SELECT * FROM q1) SELECT * FROM q2" should not be successfully parsed.


---

* [SPARK-6870](https://issues.apache.org/jira/browse/SPARK-6870) | *Trivial* | **Catch InterruptedException when yarn application state monitor thread been interrupted**

On PR #5305 we interrupt the monitor thread but forget to catch the InterruptedException, then in the log will print the stack info, so we need to catch it.


---

* [SPARK-6869](https://issues.apache.org/jira/browse/SPARK-6869) | *Blocker* | **Add pyspark archives path to PYTHONPATH**

From SPARK-1920 and SPARK-1520 we know PySpark on Yarn can not work when the assembly jar are package by JDK 1.7+, so ship pyspark archives to executors by Yarn with --py-files. The pyspark archives name must contains "spark-pyspark".

1st: zip pyspark to spark-pyspark\_2.10.zip
2nd:./bin/spark-submit --master yarn-client/yarn-cluster --py-files spark-pyspark\_2.10.zip app.py args


---

* [SPARK-6868](https://issues.apache.org/jira/browse/SPARK-6868) | *Minor* | **Container link broken on Spark UI Executors page when YARN is set to HTTPS\_ONLY**

The stdout and stderr log links on the executor page will use the http:// prefix even if the node manager does not support http and only https via setting yarn.http.policy=HTTPS\_ONLY.

Unfortunately the unencrypted http link in that case does not return a 404 but a binary file containing random binary chars. This causes a lot of confusion for the end user since it seems like the log file exists and is just filled with garbage. (see attached screenshot)

The fix is to prefix container log links with https:// instead of http:// if yarn.http.policy=HTTPS\_ONLY. YARN's job page has this exact logic as seen here: https://github.com/apache/hadoop/blob/e1109fb65608a668cd53dc324dadc6f63a74eeb9/hadoop-mapreduce-project/hadoop-mapreduce-client/hadoop-mapreduce-client-app/src/main/java/org/apache/hadoop/mapreduce/v2/app/webapp/JobBlock.java#L108


---

* [SPARK-6866](https://issues.apache.org/jira/browse/SPARK-6866) | *Trivial* | **Cleanup duplicated dependency in pom.xml**

It turns out launcher/pom.xml has duplicated scalatest dependency. We should remove it in this child pom.xml since it has already inherited the dependency from the parent pom.xml.


---

* [SPARK-6865](https://issues.apache.org/jira/browse/SPARK-6865) | *Blocker* | **Decide on semantics for string identifiers in DataFrame API**

There are two options:
 - Quoted Identifiers: meaning that the strings are treated as though they were in backticks in SQL.  Any weird characters (spaces, or, etc) are considered part of the identifier.  Kind of weird given that `*` is already a special identifier explicitly allowed by the API
 - Unquoted parsed identifiers: would allow users to specify things like tableAlias.*  However, would also require explicit use of `backticks` for identifiers with weird characters in them.


---

* [SPARK-6863](https://issues.apache.org/jira/browse/SPARK-6863) | *Trivial* | **Formatted list broken on Hive compatibility section of SQL programming guide**

Formatted list broken on Hive compatibility section of SQL programming guide. It does not appear as a list.


---

* [SPARK-6861](https://issues.apache.org/jira/browse/SPARK-6861) | *Minor* | **Scalastyle config prevents building Maven child modules alone**

This doesn't work because scalastyle fails to run: {{cd core; mvn package}} It's something that might reasonably be expected to work, and does, except for scalastyle.

scalastyle fails because its config file is declared to be at {{scalastyle-config.xml}}, but this is where it is relative to the project root (parent) only. The fix is to prefix with 

{code}
${project.parent.basedir}
{code}

And while I'm at it:

It's a little funny that {{scalastyle-config.xml}} is at the top level of the project. It should probably live in {{dev/}} with other style-related resources. This requires updating the SBT config too.

The current config writes output in {{scalastyle-output.xml}}, but, this means it ends up in the root directory of every module, where it's not cleaned up. It should go in {{target/}}.

Regarding SPARK-4066, I also note that the config forces scalastyle checks to run in the {{package}} phase, when its default is the later {{verify}} phase. The complaint there was that running something like {{package}} during development with outstanding style problems fails the build. Just letting it default to {{verify}} would push back execution of scalastyle to cases where, say, {{install}} was run (or it was triggered manually).

We can update Scalastyle to 0.7.0, to match the SBT build that actually runs these checks for real.

CC [~rahulsinghal.iitd]


---

* [SPARK-6860](https://issues.apache.org/jira/browse/SPARK-6860) | *Minor* | **Fix the possible inconsistency of StreamingPage**

Because "StreamingPage.render" doesn't hold the "listener" lock when generating the content, the different parts of content may have some inconsistent values if "listener" updates its status at the same time. And it will confuse people.

We should add "listener.synchronized" to make sure we have a consistent view of StreamingJobProgressListener when creating the content.


---

* [SPARK-6858](https://issues.apache.org/jira/browse/SPARK-6858) | *Trivial* | **Register Java HashMap for SparkSqlSerializer**

Since now kyro serializer is used for {{GeneralHashedRelation}} whether kyro is enabled or not, it is better to register Java {{HashMap}} in {{SparkSqlSerializer}}.


---

* [SPARK-6856](https://issues.apache.org/jira/browse/SPARK-6856) | *Minor* | **Make RDD information more useful in SparkR**

Right now in the R console if you have an rdd named say `distData`, then typing `distData` on the console shows something like
{code}
An object of class "RDD"
Slot "env":
<environment: 0x7f9181f52188>

Slot "jrdd":
Java ref type org.apache.spark.api.java.JavaRDD id 86
{code}

We should improve this by showing something like in Python 
{code}
ParallelCollectionRDD[0] at parallelize at PythonRDD.scala:393
{code}


---

* [SPARK-6855](https://issues.apache.org/jira/browse/SPARK-6855) | *Major* | **Set R includes in each file to get right collate order**

Automated packaging tools like `devtools::document` (which we use to generate docs) can otherwise create invalid collate orders.


---

* [SPARK-6852](https://issues.apache.org/jira/browse/SPARK-6852) | *Critical* | **Accept numeric as numPartitions in SparkR**

All the API should accept numeric as numPartitions.


---

* [SPARK-6851](https://issues.apache.org/jira/browse/SPARK-6851) | *Blocker* | **Wrong answers for self joins of converted parquet relations**

From the user list (
/cc [~chinnitv])  When the same relation exists twice in a query plan, our new caching logic replaces both instances with identical replacements.  The bug can be see in the following transformation:

{code}
=== Applying Rule org.apache.spark.sql.hive.HiveMetastoreCatalog$ParquetConversions ===
!Project [state#59,month#60]                                           'Project [state#105,month#106]
! Join Inner, Some(((state#69 = state#59) && (month#70 = month#60)))    'Join Inner, Some(((state#105 = state#105) && (month#106 = month#106)))
!  MetastoreRelation default, orders, None                               Subquery orders
!  Subquery ao                                                            Relation[id#97,category#98,make#99,type#100,price#101,pdate#102,customer#103,city#104,state#105,month#106] org.apache.spark.sql.parquet.ParquetRelation2
!   Distinct                                                             Subquery ao
!    Project [state#69,month#70]                                          Distinct
!     Join Inner, Some((id#81 = id#71))                                    Project [state#105,month#106]
!      MetastoreRelation default, orders, None                              Join Inner, Some((id#115 = id#97))
!      MetastoreRelation default, orderupdates, None                         Subquery orders
!                                                                             Relation[id#97,category#98,make#99,type#100,price#101,pdate#102,customer#103,city#104,state#105,month#106] org.apache.spark.sql.parquet.ParquetRelation2
!                                                                            Subquery orderupdates
!                                                                             Relation[id#115,category#116,make#117,type#118,price#119,pdate#120,customer#121,city#122,state#123,month#124] org.apache.spark.sql.parquet.ParquetRelation2
{code}


---

* [SPARK-6850](https://issues.apache.org/jira/browse/SPARK-6850) | *Blocker* | **SparkR flaky unit tests when run on Jenkins**

From https://amplab.cs.berkeley.edu/jenkins/job/Spark-Master-SBT/2074/AMPLAB\_JENKINS\_BUILD\_PROFILE=hadoop1.0,label=centos/console

1. Failure(@test\_binaryFile.R#33): saveAsObjectFile()/objectFile() following textFile() works 
collect(rdd) not equal to as.list(mockFile)
Component 1: 1 string mismatch
Component 2: 1 string mismatch

2. Failure(@test\_textFile.R#87): textFile() followed by a saveAsTextFile() returns the same content 
collect(rdd) not equal to as.list(mockFile)
Component 1: 1 string mismatch
Component 2: 1 string mismatch


---

* [SPARK-6846](https://issues.apache.org/jira/browse/SPARK-6846) | *Minor* | **Stage kill URL easy to accidentally trigger and possibility for security issue.**

On a similar note: When the kill link is cached in the browser bar, it's easy to accidentally kill a job just by pressing enter. For example:

You press the kill stage button and get the prompt whether you want to kill the stage. You launch a new job and start typing:

http://localhost:4040/

Chrome for example starts auto completing with http://localhost:4040/stages/kill/?id=0&terminate=true 

If you accidentally press enter it will kill the current stage without any prompts.

I think its also a bit of a security issue if from any host you can curl/wget/issue: http://localhost:4040/stages/kill/?id=0&terminate=true and it will kill the current stage without prompting.


---

* [SPARK-6845](https://issues.apache.org/jira/browse/SPARK-6845) | *Minor* | **Add isTranposed flag to DenseMatrix SerDe**

SparseMatrix now has a isTransposed flag which makes sure that the matrix is stored in CSR format. We need to support this in DenseMatrix in order to support MatrixUDT.


---

* [SPARK-6844](https://issues.apache.org/jira/browse/SPARK-6844) | *Major* | **Memory leak occurs when register temp table with cache table on**

There is a memory leak in register temp table with cache on

This is the simple code to reproduce this issue:
{code}
    val sparkConf = new SparkConf().setAppName("LeakTest")
    val sparkContext = new SparkContext(sparkConf)
    val sqlContext = new SQLContext(sparkContext)
    val tableName = "tmp"
    val jsonrdd = sparkContext.textFile("""sample.json""")
    var loopCount = 1L
    while(true) {
      sqlContext.jsonRDD(jsonrdd).registerTempTable(tableName)
      sqlContext.cacheTable(tableName)
      println("L: " +loopCount + " R:" + sqlContext.sql("""select count(*) from tmp""").count())
      sqlContext.uncacheTable(tableName)
      loopCount += 1
    }
{code}

The cause is that the {{InMemoryRelation}}. {{InMemoryColumnarTableScan}} uses the accumulator ({{InMemoryRelation.batchStats}},{{InMemoryColumnarTableScan.readPartitions}}, {{InMemoryColumnarTableScan.readBatches}} ) to get some information from partitions or for test. These accumulators will register itself into a static map in {{Accumulators.originals}} and never get cleaned up.


---

* [SPARK-6841](https://issues.apache.org/jira/browse/SPARK-6841) | *Major* | **Similar to `stats.py` in Python, add support for mean, median, stdev etc.**

Similar to `stats.py` in Python, we should add support for mean, median, stdev etc. More specifically the functions we should support include
1. sum(rdd)
2. histogram(rdd, buckets)
3. mean(rdd)
4. variance(rdd)
5. stdev(rdd) 
6. sampleStdev(rdd)
7. sampleVariance(rdd)


---

* [SPARK-6829](https://issues.apache.org/jira/browse/SPARK-6829) | *Blocker* | **Support math functions in DataFrames**

DataFrames support basic arithmetics between columns. We can generate UDFs that match Java/Scala math functions to expand DataFrames operations.


---

* [SPARK-6827](https://issues.apache.org/jira/browse/SPARK-6827) | *Minor* | **Wrap FPGrowthModel.freqItemsets with namedtuples (or document the return type) in PySpark**

... to be consistent with the Java API.


---

* [SPARK-6824](https://issues.apache.org/jira/browse/SPARK-6824) | *Blocker* | **Fill the docs for DataFrame API in SparkR**

Some of the DataFrame functions in SparkR do not have complete roxygen docs.


---

* [SPARK-6818](https://issues.apache.org/jira/browse/SPARK-6818) | *Major* | **Support column deletion in SparkR DataFrame API**

We should support deleting columns using traditional R syntax i.e. something like df$age <- NULL
should delete the `age` column


---

* [SPARK-6812](https://issues.apache.org/jira/browse/SPARK-6812) | *Blocker* | **filter() on DataFrame does not work as expected**

{code}
> filter(df, df$age > 21)
Error in filter(df, df$age > 21) :
  no method for coercing this S4 class to a vector
{code}


---

* [SPARK-6807](https://issues.apache.org/jira/browse/SPARK-6807) | *Blocker* | **Merge recent changes in SparkR-pkg into Spark**

There are a few of new features happened on SparkR-pkg while merging, we should pull them all in.


---

* [SPARK-6800](https://issues.apache.org/jira/browse/SPARK-6800) | *Major* | **Reading from JDBC with SQLContext, using lower/upper bounds and numPartitions gives incorrect results.**

Having a Derby table with people info (id, name, age) defined like this:

{code}
val jdbcUrl = "jdbc:derby:memory:PeopleDB;create=true"
val conn = DriverManager.getConnection(jdbcUrl)
val stmt = conn.createStatement()
stmt.execute("CREATE TABLE Person (person\_id INT NOT NULL GENERATED ALWAYS AS IDENTITY CONSTRAINT person\_pk PRIMARY KEY, name VARCHAR(50), age INT)")
stmt.execute("INSERT INTO Person(name, age) VALUES('Armando Carvalho', 50)")
stmt.execute("INSERT INTO Person(name, age) VALUES('Lurdes Pereira', 23)")
stmt.execute("INSERT INTO Person(name, age) VALUES('Ana Rita Costa', 12)")
stmt.execute("INSERT INTO Person(name, age) VALUES('Armando Pereira', 32)")
stmt.execute("INSERT INTO Person(name, age) VALUES('Miguel Costa', 15)")
stmt.execute("INSERT INTO Person(name, age) VALUES('Anabela Sintra', 13)")
{code}

If I try to read that table from Spark SQL with lower/upper bounds, like this:

{code}
val people = sqlContext.jdbc(url = jdbcUrl, table = "Person",
      columnName = "age", lowerBound = 0, upperBound = 40, numPartitions = 10)
people.show()
{code}

I get this result:
{noformat}
PERSON\_ID NAME             AGE
3         Ana Rita Costa   12 
5         Miguel Costa     15 
6         Anabela Sintra   13 
2         Lurdes Pereira   23 
4         Armando Pereira  32 
1         Armando Carvalho 50 
{noformat}

Which is wrong, considering the defined upper bound has been ignored (I get a person with age 50!).
Digging the code, I've found that in {{JDBCRelation.columnPartition}} the WHERE clauses it generates are the following:
{code}
(0) age < 4,0
(1) age >= 4  AND age < 8,1
(2) age >= 8  AND age < 12,2
(3) age >= 12 AND age < 16,3
(4) age >= 16 AND age < 20,4
(5) age >= 20 AND age < 24,5
(6) age >= 24 AND age < 28,6
(7) age >= 28 AND age < 32,7
(8) age >= 32 AND age < 36,8
(9) age >= 36,9
{code}

The last condition ignores the upper bound and the other ones may result in repeated rows being read.

Using the JdbcRDD (and converting it to a DataFrame) I would have something like this:
{code}
val jdbcRdd = new JdbcRDD(sc, () => DriverManager.getConnection(jdbcUrl),
      "SELECT * FROM Person WHERE age >= ? and age <= ?", 0, 40, 10,
      rs => (rs.getInt(1), rs.getString(2), rs.getInt(3)))
val people = jdbcRdd.toDF("PERSON\_ID", "NAME", "AGE")
people.show()
{code}

Resulting in:
{noformat}
PERSON\_ID NAME            AGE
3         Ana Rita Costa  12 
5         Miguel Costa    15 
6         Anabela Sintra  13 
2         Lurdes Pereira  23 
4         Armando Pereira 32 
{noformat}

Which is correct!

Confirming the WHERE clauses generated by the JdbcRDD in the {{getPartitions}} I've found it generates the following:
{code}
(0) age >= 0  AND age <= 3
(1) age >= 4  AND age <= 7
(2) age >= 8  AND age <= 11
(3) age >= 12 AND age <= 15
(4) age >= 16 AND age <= 19
(5) age >= 20 AND age <= 23
(6) age >= 24 AND age <= 27
(7) age >= 28 AND age <= 31
(8) age >= 32 AND age <= 35
(9) age >= 36 AND age <= 40
{code}

This is the behaviour I was expecting from the Spark SQL version. Is the Spark SQL version buggy or is this some weird expected behaviour?


---

* [SPARK-6799](https://issues.apache.org/jira/browse/SPARK-6799) | *Critical* | **Add dataframe examples for SparkR**

We should add more data frame usage examples for SparkR . This can be similar to the python examples at https://github.com/apache/spark/blob/1b2aab8d5b9cc2ff702506038bd71aa8debe7ca0/examples/src/main/python/sql.py


---

* [SPARK-6796](https://issues.apache.org/jira/browse/SPARK-6796) | *Major* | **Add the batch list to StreamingPage**

Show the list of active and completed batches the StreamingPage, as the proposed Task 1 in https://docs.google.com/document/d/1-ZjvQ\_2thWEQkTxRMHrVdnEI57XTi3wZEBUoqrrDg5c/edit?usp=sharing


---

* [SPARK-6794](https://issues.apache.org/jira/browse/SPARK-6794) | *Major* | **Speed up default BroadcastHashJoin performance by using kryo-based SparkSerializer**

This won't matter if kryo is already used, but will make a speedup if it's not. I'll submit a PR shortly.


---

* [SPARK-6781](https://issues.apache.org/jira/browse/SPARK-6781) | *Critical* | **sqlCtx -\> sqlContext in pyspark shell**

We should be consistent across languages in the default names of things we add to the shells.


---

* [SPARK-6779](https://issues.apache.org/jira/browse/SPARK-6779) | *Major* | **Move shared params to param.shared and use code gen**

The boilerplate code should be automatically generated.


---

* [SPARK-6773](https://issues.apache.org/jira/browse/SPARK-6773) | *Minor* | **check -license will passed in next time when rat jar download failed.**

In dev/check-license, it will download Rat jar if it not exist. if download failed, it will report error:
**************************
Attempting to fetch rat
Our attempt to download rat locally to /home/spark/hejun/sparkgit/spark/lib/apache-rat-0.10.jar failed. Please install rat manually.
*****************************
but if run it again in next cycle, it will check RAT passed and go on building also an error reported:
**************************
Error: Invalid or corrupt jarfile /home/spark/hejun/sparkgit/spark/lib/apache-rat-0.10.jar
RAT checks passed.
*****************************

This is because:
1. The error tmp rat.jar is not removed when rat jar download failed in last time. So it will go on checking license using the error rat.jar
2. The rat-results.txt is empty because rat.jar run failed, so RAT check passed.


Suggest:
1. Add a clean step when rat.jar download faild.
2. Add a error checking logic after run rat checking.


---

* [SPARK-6769](https://issues.apache.org/jira/browse/SPARK-6769) | *Minor* | **Usage of the ListenerBus in YarnClusterSuite is wrong**

In YarnClusterSuite, a test case uses `SaveExecutorInfo`  to handle ExecutorAddedEvent as follows.

{code}
private class SaveExecutorInfo extends SparkListener {
  val addedExecutorInfos = mutable.Map[String, ExecutorInfo]()

  override def onExecutorAdded(executor: SparkListenerExecutorAdded) {
    addedExecutorInfos(executor.executorId) = executor.executorInfo
  }
}

...

    listener = new SaveExecutorInfo
    val sc = new SparkContext(new SparkConf()
      .setAppName("yarn \"test app\" 'with quotes' and \\back\\slashes and $dollarSigns"))
    sc.addSparkListener(listener)
    val status = new File(args(0))
    var result = "failure"
    try {
      val data = sc.parallelize(1 to 4, 4).collect().toSet
      assert(sc.listenerBus.waitUntilEmpty(WAIT\_TIMEOUT\_MILLIS))
      data should be (Set(1, 2, 3, 4))
      result = "success"
    } finally {
      sc.stop()
      Files.write(result, status, UTF\_8)
    }
{code}

But, the usage is wrong because Executors will spawn during initializing SparkContext and SparkContext#addSparkListener should be invoked after the initialization, thus after Executors spawn, so SaveExecutorInfo cannot handle ExecutorAddedEvent.

Following code refers the result of the handling ExecutorAddedEvent. Because of the reason above, we cannot reach the assertion. 

{code}
    // verify log urls are present
    listener.addedExecutorInfos.values.foreach { info =>
      assert(info.logUrlMap.nonEmpty)
    }
{code}


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

* [SPARK-6765](https://issues.apache.org/jira/browse/SPARK-6765) | *Major* | **Turn scalastyle on for test code**

We should turn scalastyle on for test code. Test code should be as important as main code.


---

* [SPARK-6762](https://issues.apache.org/jira/browse/SPARK-6762) | *Minor* | **Fix potential resource leaks in CheckPoint CheckpointWriter and CheckpointReader**

The close action should be placed within finally block to avoid the potential resource leaks


---

* [SPARK-6758](https://issues.apache.org/jira/browse/SPARK-6758) | *Minor* | **Block jetty's log as we have already shaded it**

As we have already shaded the jetty, its log cannot be quiet down by what we set in log4j "log4j.logger.org.eclipse.jetty=WARN".

Log will shows like:
2015-04-08 17:54:22,990 | INFO  | [main] | jetty-x.y.z | org.spark-project.jetty.server.Server.doStart(Server.java:272)
2015-04-08 17:54:23,082 | INFO  | [main] | Enabled Protocols [SSLv2Hello, TLSv1, TLSv1.1, TLSv1.2] of [SSLv2Hello, SSLv3, TLSv1, TLSv1.1, TLSv1.2] | org.spark-project.jetty.util.ssl.SslContextFactory.doStart(SslContextFactory.java:300)
2015-04-08 17:54:23,100 | INFO  | [main] | Started SslSelectChannelConnector@9.91.11.10:23020 | org.spark-project.jetty.server.AbstractConnector.doStart(AbstractConnector.java:338)

and:

2015-04-08 18:09:29,167 | INFO  | [HistoryServerStopper] | stopped o.s.j.s.ServletContextHandler{/cas,null} | org.spark-project.jetty.server.handler.ContextHandler.doStop(ContextHandler.java:843)
2015-04-08 18:09:29,167 | INFO  | [HistoryServerStopper] | stopped o.s.j.s.ServletContextHandler{/history,null} | org.spark-project.jetty.server.handler.ContextHandler.doStop(ContextHandler.java:843)
2015-04-08 18:09:29,168 | INFO  | [HistoryServerStopper] | stopped o.s.j.s.ServletContextHandler{/static,null} | org.spark-project.jetty.server.handler.ContextHandler.doStop(ContextHandler.java:843)
2015-04-08 18:09:29,168 | INFO  | [HistoryServerStopper] | stopped o.s.j.s.ServletContextHandler{/json,null} | org.spark-project.jetty.server.handler.ContextHandler.doStop(ContextHandler.java:843)
2015-04-08 18:09:29,169 | INFO  | [HistoryServerStopper] | stopped o.s.j.s.ServletContextHandler{/,null} | org.spark-project.jetty.server.handler.ContextHandler.doStop(ContextHandler.java:843)

I will file a PR to fix it.


---

* [SPARK-6756](https://issues.apache.org/jira/browse/SPARK-6756) | *Major* | **Add compress() to Vector**

Add compress to Vector that automatically convert the underlying vector to dense or sparse based on number of non-zeros.


---

* [SPARK-6754](https://issues.apache.org/jira/browse/SPARK-6754) | *Minor* | **TaskContextHelper is not necessary**

The TaskContextHelper was originally necessary because TaskContext was written in Java, which does not have a way to specify that classes are package-private, so TaskContextHelper existed to work around this.  Now that TaskContext has been re-written in Scala, this class is no longer necessary.


---

* [SPARK-6753](https://issues.apache.org/jira/browse/SPARK-6753) | *Minor* | **Unit test for SPARK-3426 (in ShuffleSuite) doesn't correctly clone the SparkConf**

As a result, that test always uses the default shuffle settings, rather than using the shuffle manager / other settings set by tests that extend ShuffleSuite.


---

* [SPARK-6752](https://issues.apache.org/jira/browse/SPARK-6752) | *Critical* | **Allow StreamingContext to be recreated from checkpoint and existing SparkContext**

Currently if you want to create a StreamingContext from checkpoint information, the system will create a new SparkContext. This prevent StreamingContext to be recreated from checkpoints in managed environments where SparkContext is precreated.

Proposed solution: Introduce the following methods on StreamingContext

1. {{new StreamingContext(checkpointDirectory, sparkContext)}}
- Recreate StreamingContext from checkpoint using the provided SparkContext

2. {{new StreamingContext(checkpointDirectory, hadoopConf, sparkContext)}}
- Recreate StreamingContext from checkpoint using the provided SparkContext and hadoop conf to read the checkpoint

3. {{StreamingContext.getOrCreate(checkpointDirectory, sparkContext, createFunction: SparkContext => StreamingContext)}}
- If checkpoint file exists, then recreate StreamingContext using the provided SparkContext (that is, call 1.), else create StreamingContext using the provided createFunction

Also, the corresponding Java and Python API has to be added as well.


---

* [SPARK-6750](https://issues.apache.org/jira/browse/SPARK-6750) | *Major* | **Upgrade ScalaStyle to 0.7**

0.7 fixes a bug that's pretty useful, i.e. inline functions no longer return explicit type definition.


---

* [SPARK-6748](https://issues.apache.org/jira/browse/SPARK-6748) | *Major* | **QueryPlan.schema should be a lazy val to avoid creating excessive duplicate StructType objects**

Spotted this issue while trying to do a simple micro benchmark:
{code}
sc.parallelize(1 to 10000000).
  map(i => (i, s"val\_$i")).
  toDF("key", "value").
  saveAsParquetFile("file:///tmp/src.parquet")

sqlContext.parquetFile("file:///tmp/src.parquet").collect()
{code}
YJP profiling result showed that, *10 million {{StructType}}, 10 million {{StructField \[\]}}, and 20 million {{StructField}} were allocated*.

It turned out that {{DataFrame.collect()}} calls {{SparkPlan.executeCollect()}}, which consists of a single line:
{code}
execute().map(ScalaReflection.convertRowToScala(\_, schema)).collect()
{code}
The problem is that, {{QueryPlan.schema}} is a function, and since 1.3.0, {{convertRowToScala}} starts returning a {{GenericRowWithSchema}}. These two facts result in 10 million rows, each with a separate schema object.


---

* [SPARK-6742](https://issues.apache.org/jira/browse/SPARK-6742) | *Major* | **Spark pushes down filters in old parquet path that reference partitioning columns**

Create a table with multiple fields partitioned on 'market' column. run a query like : 

SELECT start\_sp\_time, end\_sp\_time, imsi, imei,  enb\_common\_enbid FROM csl\_data\_parquet WHERE (((technology = 'FDD') AND (bandclass = '800') AND (region = 'R15') AND (market = 'LA metro')) OR ((technology = 'FDD') AND (bandclass = '1900') AND (region = 'R15') AND (market = 'Indianapolis'))) AND start\_sp\_time >= 1.4158368E9 AND end\_sp\_time < 1.4159232E9 AND dt >= '2014-11-13-00-00' AND dt < '2014-11-14-00-00' ORDER BY end\_sp\_time DESC LIMIT 100

The or filter is pushed down in this case , resulting in column not found exception from parquet


---

* [SPARK-6738](https://issues.apache.org/jira/browse/SPARK-6738) | *Major* | **EstimateSize  is difference with spill file size**

ExternalAppendOnlyMap spill 2.2 GB data to disk:

{code}

15/04/07 20:27:37 INFO collection.ExternalAppendOnlyMap: Thread 54 spilling in-memory map of 2.2 GB to disk (61 times so far)
15/04/07 20:27:37 INFO collection.ExternalAppendOnlyMap: /data11/yarnenv/local/usercache/spark/appcache/application\_1423737010718\_40455651/spark-local-20150407202613-4e80/11/temp\_local\_fdb4a583-5d13-4394-bccb-e1217d5db812
{code}

But the file size is only 2.2M.

{code}
ll -h /data11/yarnenv/local/usercache/spark/appcache/application\_1423737010718\_40455651/spark-local-20150407202613-4e80/11/
total 2.2M
-rw-r----- 1 spark users 2.2M Apr  7 20:27 temp\_local\_fdb4a583-5d13-4394-bccb-e1217d5db812
{code}

The GC log show that the jvm memory is less than 1GB.
{code}
2015-04-07T20:27:08.023+0800: [GC 981981K->55363K(3961344K), 0.0341720 secs]
2015-04-07T20:27:14.483+0800: [GC 987523K->53737K(3961344K), 0.0252660 secs]
2015-04-07T20:27:20.793+0800: [GC 985897K->56370K(3961344K), 0.0606460 secs]
2015-04-07T20:27:27.553+0800: [GC 988530K->59089K(3961344K), 0.0651840 secs]
2015-04-07T20:27:34.067+0800: [GC 991249K->62153K(3961344K), 0.0288460 secs]
2015-04-07T20:27:40.180+0800: [GC 994313K->61344K(3961344K), 0.0388970 secs]
2015-04-07T20:27:46.490+0800: [GC 993504K->59915K(3961344K), 0.0235150 secs]
{code}

The estimateSize  is hugh difference with spill file size, there is a bug in SizeEstimator.visitArray.


---

* [SPARK-6737](https://issues.apache.org/jira/browse/SPARK-6737) | *Critical* | **OutputCommitCoordinator.authorizedCommittersByStage map out of memory**

I am using spark streaming(1.3.1)  as a long time running service and out of memory after running for 7 days. 

I found that the field authorizedCommittersByStage in OutputCommitCoordinator class cause the OOM. 
authorizedCommittersByStage is a map, key is StageId, value is Map[PartitionId, TaskAttemptId]. The OutputCommitCoordinator class has a method stageEnd which will remove stageId from authorizedCommittersByStage. But the method stageEnd is never called by DAGSchedule. And it cause the authorizedCommittersByStage's stage info never be cleaned, which cause OOM.

It happens in my spark streaming program(1.3.1), I am not sure if it will appear in other spark components and other spark version.


---

* [SPARK-6736](https://issues.apache.org/jira/browse/SPARK-6736) | *Minor* | **[GraphX]Example of Graph#aggregateMessages has error**

Example of Graph#aggregateMessages has error.
Since aggregateMessages is a method of Graph, It should be written "rawGraph.aggregateMessages"


---

* [SPARK-6734](https://issues.apache.org/jira/browse/SPARK-6734) | *Major* | **Support GenericUDTF.close for Generate**

Some third-party UDTF extension, will generate more rows in the "GenericUDTF.close()" method, which is supported by Hive.

https://cwiki.apache.org/confluence/display/Hive/DeveloperGuide+UDTF

However, Spark SQL ignores the "GenericUDTF.close()", and it causes bug while porting job from Hive to Spark SQL.


---

* [SPARK-6733](https://issues.apache.org/jira/browse/SPARK-6733) | *Trivial* | **Suppression of usage of Scala existential code should be done**

The inclusion of this statement in the file 

{code:scala}
import scala.language.existentials
{code}

should have suppressed all warnings regarding the use of scala existential code.


---

* [SPARK-6731](https://issues.apache.org/jira/browse/SPARK-6731) | *Minor* | **Upgrade Apache commons-math3 to 3.4.1**

Spark depends on Apache commons-math3 version 3.1.1, which is 2 years old. The current version (3.4.1) includes approximate percentile statistics (among other things).


---

* [SPARK-6730](https://issues.apache.org/jira/browse/SPARK-6730) | *Major* | **Can't have table as identifier in OPTIONS**

The following query fails because there is an  identifier "table" in OPTIONS

{code}
CREATE TEMPORARY TABLE ddlTable
USING org.apache.spark.sql.cassandra
OPTIONS (
 table "test1",
 keyspace "test"
)
{code} 

The following error

{code}

]   java.lang.RuntimeException: [1.2] failure: ``insert'' expected but identifier CREATE found
[info] 
[info]  CREATE TEMPORARY TABLE ddlTable USING org.apache.spark.sql.cassandra OPTIONS (  table "test1",  keyspace "dstest"  )       
[info]  ^
[info]   at scala.sys.package$.error(package.scala:27)
[info]   at org.apache.spark.sql.catalyst.AbstractSparkSQLParser.apply(AbstractSparkSQLParser.scala:40)
[info]   at org.apache.spark.sql.SQLContext$$anonfun$2.apply(SQLContext.scala:130)
[info]   at org.apache.spark.sql.SQLContext$$anonfun$2.apply(SQLContext.scala:130)
[info]   at org.apache.spark.sql.SparkSQLParser$$anonfun$org$apache$spark$sql$SparkSQLParser$$others$1.apply(SparkSQLParser.scala:96)
[info]   at org.apache.spark.sql.SparkSQLParser$$anonfun$org$apache$spark$sql$SparkSQLParser$$others$1.apply(SparkSQLParser.scala:95)
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
[info]   at org.apache.spark.sql.catalyst.AbstractSparkSQLParser.apply(AbstractSparkSQLParser.scala:38)
[info]   at org.apache.spark.sql.SQLContext$$anonfun$parseSql$1.apply(SQLContext.scala:134)
[info]   at org.apache.spark.sql.SQLContext$$anonfun$parseSql$1.apply(SQLContext.scala:134)
[info]   at scala.Option.getOrElse(Option.scala:120)
[info]   at org.apache.spark.sql.SQLContext.parseSql(SQLContext.scala:134)
{code}


---

* [SPARK-6729](https://issues.apache.org/jira/browse/SPARK-6729) | *Minor* | **DriverQuirks get can get OutOfBounds exception is some cases**

The function uses .substring(0, X), which will trigger OutOfBoundsException if string length is less than X. A better way to do this is to use startsWith, which won't error out in this case. I'll propose a patch shortly.


---

* [SPARK-6720](https://issues.apache.org/jira/browse/SPARK-6720) | *Minor* | **PySpark MultivariateStatisticalSummary unit test for normL1 and normL2**

Implement correct normL1 and normL2 test.

continuation: https://github.com/apache/spark/pull/5359


---

* [SPARK-6716](https://issues.apache.org/jira/browse/SPARK-6716) | *Major* | **Change SparkContext.DRIVER\_IDENTIFIER from '\<driver\>' to 'driver'**

Currently, the driver's executorId is set to {{<driver>}}.  This choice of ID was present in older Spark versions, but it has started to cause problems now that executorIds are used in more contexts, such as Ganglia metric names or driver thread-dump links the web UI.  The angle brackets must be escaped when embedding this ID in XML or as part of URLs and this has led to multiple problems:

- https://issues.apache.org/jira/browse/SPARK-6484
- https://issues.apache.org/jira/browse/SPARK-4313

The simplest solution seems to be to change this id to something that does not contain any special characters, such as {{driver}}. 

I'm not sure whether we can perform this change in a patch release, since this ID may be considered a stable API by metrics users, but it's probably okay to do this in a major release as long as we document it in the release notes.


---

* [SPARK-6713](https://issues.apache.org/jira/browse/SPARK-6713) | *Major* | **Iterators in columnSimilarities to allow flatMap spill**

We should use Iterators in columnSimilarities to allow mapPartitionsWithIndex to spill to disk. This could happen in a dense and large column - this way Spark can spill the pairs onto disk instead of building all the pairs before handing them to Spark.


---

* [SPARK-6710](https://issues.apache.org/jira/browse/SPARK-6710) | *Major* | **Wrong initial bias in GraphX SVDPlusPlus**

In the initialization portion of GraphX SVDPlusPluS, the initialization of biases appears to be incorrect. Specifically, in line 
https://github.com/apache/spark/blob/master/graphx/src/main/scala/org/apache/spark/graphx/lib/SVDPlusPlus.scala#L96 
instead of 
(vd.\_1, vd.\_2, msg.get.\_2 / msg.get.\_1, 1.0 / scala.math.sqrt(msg.get.\_1)) 
it should probably be 
(vd.\_1, vd.\_2, msg.get.\_2 / msg.get.\_1 - u, 1.0 / scala.math.sqrt(msg.get.\_1)) 

That is, the biases bu and bi (both represented as the third component of the Tuple4[] above, depending on whether the vertex is a user or an item), described in equation (1) of the Koren paper, are supposed to be small offsets to the mean (represented by the variable u, signifying the Greek letter mu) to account for peculiarities of individual users and items. 

Initializing these biases to wrong values should theoretically not matter given enough iterations of the algorithm, but some quick empirical testing shows it has trouble converging at all, even after many orders of magnitude additional iterations. 

This perhaps could be the source of previously reported trouble with SVDPlusPlus. 
http://apache-spark-user-list.1001560.n3.nabble.com/GraphX-SVDPlusPlus-problem-td12885.html


---

* [SPARK-6708](https://issues.apache.org/jira/browse/SPARK-6708) | *Major* | **Using Hive UDTF may throw ClassNotFoundException**

Spark shell session for reproducing this issue:
{code}
import sqlContext.\_

sql("create table t1 (str string)")
sql("select v.va from t1 lateral view json\_tuple(str, 'a') v as va").queryExecution.analyzed
{code}
Exception thrown:
{noformat}
java.lang.ClassNotFoundException: json\_tuple
        at scala.tools.nsc.interpreter.AbstractFileClassLoader.findClass(AbstractFileClassLoader.scala:83)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:424)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:357)
        at org.apache.spark.sql.hive.HiveFunctionWrapper.createFunction(Shim13.scala:148)
        at org.apache.spark.sql.hive.HiveGenericUdtf.function$lzycompute(hiveUdfs.scala:274)
        at org.apache.spark.sql.hive.HiveGenericUdtf.function(hiveUdfs.scala:274)
        at org.apache.spark.sql.hive.HiveGenericUdtf.outputInspector$lzycompute(hiveUdfs.scala:280)
        at org.apache.spark.sql.hive.HiveGenericUdtf.outputInspector(hiveUdfs.scala:280)
        at org.apache.spark.sql.hive.HiveGenericUdtf.outputDataTypes$lzycompute(hiveUdfs.scala:285)
        at org.apache.spark.sql.hive.HiveGenericUdtf.outputDataTypes(hiveUdfs.scala:285)
        at org.apache.spark.sql.hive.HiveGenericUdtf.makeOutput(hiveUdfs.scala:291)
        at org.apache.spark.sql.catalyst.expressions.Generator.output(generators.scala:60)
        at org.apache.spark.sql.catalyst.plans.logical.Generate$$anonfun$2.apply(basicOperators.scala:60)
        at org.apache.spark.sql.catalyst.plans.logical.Generate$$anonfun$2.apply(basicOperators.scala:60)
        at scala.Option.map(Option.scala:145)
        at org.apache.spark.sql.catalyst.plans.logical.Generate.generatorOutput(basicOperators.scala:60)
        at org.apache.spark.sql.catalyst.plans.logical.Generate.output(basicOperators.scala:70)
        at org.apache.spark.sql.catalyst.plans.logical.LogicalPlan$$anonfun$resolveChildren$1.apply(LogicalPlan.scala:117)
        at org.apache.spark.sql.catalyst.plans.logical.LogicalPlan$$anonfun$resolveChildren$1.apply(LogicalPlan.scala:117)
        at scala.collection.TraversableLike$$anonfun$flatMap$1.apply(TraversableLike.scala:251)
        at scala.collection.TraversableLike$$anonfun$flatMap$1.apply(TraversableLike.scala:251)
        at scala.collection.immutable.List.foreach(List.scala:318)
        at scala.collection.TraversableLike$class.flatMap(TraversableLike.scala:251)
        at scala.collection.AbstractTraversable.flatMap(Traversable.scala:105)
        at org.apache.spark.sql.catalyst.plans.logical.LogicalPlan.resolveChildren(LogicalPlan.scala:117)
        at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveReferences$$anonfun$apply$7$$anonfun$applyOrElse$2$$anonfun$11.apply(Analyzer.scala:292)
        at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveReferences$$anonfun$apply$7$$anonfun$applyOrElse$2$$anonfun$11.apply(Analyzer.scala:292)
        at org.apache.spark.sql.catalyst.analysis.package$.withPosition(package.scala:48)
        at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveReferences$$anonfun$apply$7$$anonfun$applyOrElse$2.applyOrElse(Analyzer.scala:292)
        at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveReferences$$anonfun$apply$7$$anonfun$applyOrElse$2.applyOrElse(Analyzer.scala:284)
        at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$transformUp$1.apply(TreeNode.scala:252)
        at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$transformUp$1.apply(TreeNode.scala:252)
        at org.apache.spark.sql.catalyst.trees.CurrentOrigin$.withOrigin(TreeNode.scala:51)
        at org.apache.spark.sql.catalyst.trees.TreeNode.transformUp(TreeNode.scala:251)
        at org.apache.spark.sql.catalyst.plans.QueryPlan.org$apache$spark$sql$catalyst$plans$QueryPlan$$transformExpressionUp$1(QueryPlan.scala:108)
        at org.apache.spark.sql.catalyst.plans.QueryPlan$$anonfun$2$$anonfun$apply$2.apply(QueryPlan.scala:123)
        at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
        at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
        at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
        at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
        at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
        at scala.collection.AbstractTraversable.map(Traversable.scala:105)
        at org.apache.spark.sql.catalyst.plans.QueryPlan$$anonfun$2.apply(QueryPlan.scala:122)
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
        at org.apache.spark.sql.catalyst.plans.QueryPlan.transformExpressionsUp(QueryPlan.scala:127)
        at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveReferences$$anonfun$apply$7.applyOrElse(Analyzer.scala:284)
        at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveReferences$$anonfun$apply$7.applyOrElse(Analyzer.scala:196)
        at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$transformUp$2.apply(TreeNode.scala:256)
        at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$transformUp$2.apply(TreeNode.scala:256)
        at org.apache.spark.sql.catalyst.trees.CurrentOrigin$.withOrigin(TreeNode.scala:51)
        at org.apache.spark.sql.catalyst.trees.TreeNode.transformUp(TreeNode.scala:255)
        at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveReferences$.apply(Analyzer.scala:196)
        at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveReferences$.apply(Analyzer.scala:195)
        at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1$$anonfun$apply$2.apply(RuleExecutor.scala:61)
        at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1$$anonfun$apply$2.apply(RuleExecutor.scala:59)
        at scala.collection.LinearSeqOptimized$class.foldLeft(LinearSeqOptimized.scala:111)
        at scala.collection.immutable.List.foldLeft(List.scala:84)
        at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1.apply(RuleExecutor.scala:59)
        at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1.apply(RuleExecutor.scala:51)
        at scala.collection.immutable.List.foreach(List.scala:318)
        at org.apache.spark.sql.catalyst.rules.RuleExecutor.apply(RuleExecutor.scala:51)
        at org.apache.spark.sql.SQLContext$QueryExecution.analyzed$lzycompute(SQLContext.scala:1106)
        at org.apache.spark.sql.SQLContext$QueryExecution.analyzed(SQLContext.scala:1106)
        at org.apache.spark.sql.SQLContext$QueryExecution.assertAnalyzed(SQLContext.scala:1104)
        at org.apache.spark.sql.DataFrame.<init>(DataFrame.scala:133)
        at org.apache.spark.sql.DataFrame$.apply(DataFrame.scala:51)
        at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:97)
{noformat}
The problem is that we passed the function name rather than the resolved UDTF class name to {{HiveGenericUdtf}} [here|https://github.com/apache/spark/blob/9b40c17ab161b64933539abeefde443cb4f98673/sql/hive/src/main/scala/org/apache/spark/sql/hive/HiveQl.scala#L1288].


---

* [SPARK-6705](https://issues.apache.org/jira/browse/SPARK-6705) | *Major* | **MLLIB ML Pipeline's Logistic Regression has no intercept term**

Currently, the ML Pipeline's LogisticRegression.scala file does not allow setting whether or not to fit an intercept term. Therefore, the pipeline defers to LogisticRegressionWithLBFGS which does not use an intercept term. This makes sense from a performance point of view because adding an intercept term requires memory allocation.

However, this is undesirable statistically, since the statistical default is usually to include an intercept term, and one needs to have a very strong
reason for not having an intercept term.

Explicitly modeling the intercept by adding a column of all 1s does not
work because LogisticRegressionWithLBFGS forces column normalization, and a column of all 1s has 0 variance and so dividing by 0 kills it.

We should open up the API for the ML Pipeline to explicitly allow controlling whether or not to fit an intercept.


---

* [SPARK-6704](https://issues.apache.org/jira/browse/SPARK-6704) | *Blocker* | **integrate SparkR docs build tool into Spark doc build**

We should integrate the SparkR docs build tool into Spark one.


---

* [SPARK-6703](https://issues.apache.org/jira/browse/SPARK-6703) | *Critical* | **Provide a way to discover existing SparkContext's**

Right now it is difficult to write a Spark application in a way that can be run independently and also be composed with other Spark applications in an environment such as the JobServer, notebook servers, etc where there is a shared SparkContext.

It would be nice to provide a rendez-vous point so that applications can learn whether an existing SparkContext already exists before creating one.

The most simple/surgical way I see to do this is to have an optional static SparkContext singleton that people can be retrieved as follows:

{code}
val sc = SparkContext.getOrCreate(conf = new SparkConf())
{code}

And you could also have a setter where some outer framework/server can set it for use by multiple downstream applications.

A more advanced version of this would have some named registry or something, but since we only support a single SparkContext in one JVM at this point anyways, this seems sufficient and much simpler. Another advanced option would be to allow plugging in some other notion of configuration you'd pass when retrieving an existing context.


---

* [SPARK-6702](https://issues.apache.org/jira/browse/SPARK-6702) | *Blocker* | **Update the Streaming Tab in Spark UI to show more batch information**

Since the Streaming Tab was added to the Spark UI in Spark 1.0, its has proven to be a defacto way to debug Spark Streaming applications at the time of development. However, there is much more we can do to help developers debug their streaming applications. Specifically we would like to show the details of individual batches and link them to the jobs that ran for that batch (similar to job details showing stages in the job). Furthermore we would also like show timelines to see trends over time for processing times data rates etc.

This is the design doc that shows the proposed new Streaming tab in the Spark UI.
https://docs.google.com/document/d/1-ZjvQ\_2thWEQkTxRMHrVdnEI57XTi3wZEBUoqrrDg5c/edit?usp=sharing


---

* [SPARK-6694](https://issues.apache.org/jira/browse/SPARK-6694) | *Critical* | **SparkSQL CLI must be able to specify an option --database on the command line.**

SparkSQL CLI has an option --database as follows.
But, the option --database is ignored.

{code:}
$ spark-sql --help
:
CLI options:
    :
    --database <databasename>     Specify the database to use
```
{code}


---

* [SPARK-6693](https://issues.apache.org/jira/browse/SPARK-6693) | *Minor* | **add toString with max lines and width for matrix**

It's kind of annoying when debugging and found you cannot print out the matrix as you want.

original toString of Matrix only print like following, 
0.17810102596909183    0.5616906241468385    ... (100 total)
0.9692861997823815     0.015558159784155756  ...
0.8513015122819192     0.031523763918528847  ...
0.5396875653953941     0.3267864552779176    ...

The   def toString(maxLines : Int, maxWidth : Int) is useful when debuging, logging and saving matrix to files.


---

* [SPARK-6688](https://issues.apache.org/jira/browse/SPARK-6688) | *Minor* | **EventLoggingListener should always operate on resolved URIs**

A small bug was introduced in 1.3.0, where a check in EventLoggingListener.scala is performed on the non-resolved log path. This means that if "fs.defaultFS" is not the local filesystem, and the user is trying to store logs in the local filesystem by providing a path with no "file:" protocol, thing will fail.


---

* [SPARK-6686](https://issues.apache.org/jira/browse/SPARK-6686) | *Critical* | **toDF column rename does not work when columns contain '.'**

{code}
  test("rename nested groupby") {
    val df = Seq((1,(1,1))).toDF()

    checkAnswer(
      df.groupBy("\_1").agg(col("\_1"), sum("\_2.\_1")).toDF("key", "total"),
      Row(1, 1) :: Nil)
  }
{code}


---

* [SPARK-6677](https://issues.apache.org/jira/browse/SPARK-6677) | *Major* | **pyspark.sql nondeterministic issue with row fields**

The following issue happens only when running pyspark in the python interpreter, it works correctly with spark-submit.

Reading two json files containing objects with a different structure leads sometimes to the definition of wrong Rows, where the fields of a file are used for the other one.

I was able to write a sample code that reproduce this issue one out of three times; the code snippet is available at the following link, together with some (very simple) data samples:

https://gist.github.com/armisael/e08bb4567d0a11efe2db


---

* [SPARK-6673](https://issues.apache.org/jira/browse/SPARK-6673) | *Blocker* | **spark-shell.cmd can't start even when spark was built in Windows**

spark-shell.cmd can't start.

{code}
bin\spark-shell.cmd --master local
{code}
will get
{code}
Failed to find Spark assembly JAR.
You need to build Spark before running this program.
{code}
even when we have built spark.

This is because of the lack of the environment {{SPARK\_SCALA\_VERSION}} which is used in {{spark-class2.cmd}}.
In linux scripts, this value is set as {{2.10}} or {{2.11}} by default in {{load-spark-env.sh}}, but there are no equivalent script in Windows.

As workaround, by executing
{code}
set SPARK\_SCALA\_VERSION=2.10
{code}
before execute spark-shell.cmd, we can successfully start it.


---

* [SPARK-6672](https://issues.apache.org/jira/browse/SPARK-6672) | *Major* | **createDataFrame from RDD[Row] with UDTs cannot be saved**

Reported by Jaonary (https://www.mail-archive.com/user@spark.apache.org/msg25218.html):

{code}
import org.apache.spark.mllib.linalg.\_
import org.apache.spark.mllib.regression.\_
val df0 = sqlContext.createDataFrame(Seq(LabeledPoint(1.0, Vectors.dense(2.0, 3.0))))
df0.save("/tmp/df0") // works
val df1 = sqlContext.createDataFrame(df0.rdd, df0.schema)
df1.save("/tmp/df1") // error
{code}

throws

{code}
15/04/01 23:24:16 INFO DAGScheduler: Job 3 failed: runJob at newParquet.scala:686, took 0.288304 s
org.apache.spark.SparkException: Job aborted due to stage failure: Task 3 in stage 3.0 failed 1 times, most recent failure: Lost task 3.0 in stage 3.0 (TID 15, localhost): java.lang.ClassCastException: org.apache.spark.mllib.linalg.DenseVector cannot be cast to org.apache.spark.sql.Row
	at org.apache.spark.sql.parquet.RowWriteSupport.writeValue(ParquetTableSupport.scala:191)
	at org.apache.spark.sql.parquet.RowWriteSupport.writeValue(ParquetTableSupport.scala:182)
	at org.apache.spark.sql.parquet.RowWriteSupport.write(ParquetTableSupport.scala:171)
	at org.apache.spark.sql.parquet.RowWriteSupport.write(ParquetTableSupport.scala:134)
	at parquet.hadoop.InternalParquetRecordWriter.write(InternalParquetRecordWriter.java:120)
	at parquet.hadoop.ParquetRecordWriter.write(ParquetRecordWriter.java:81)
	at parquet.hadoop.ParquetRecordWriter.write(ParquetRecordWriter.java:37)
	at org.apache.spark.sql.parquet.ParquetRelation2.org$apache$spark$sql$parquet$ParquetRelation2$$writeShard$1(newParquet.scala:668)
	at org.apache.spark.sql.parquet.ParquetRelation2$$anonfun$insert$2.apply(newParquet.scala:686)
	at org.apache.spark.sql.parquet.ParquetRelation2$$anonfun$insert$2.apply(newParquet.scala:686)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:61)
	at org.apache.spark.scheduler.Task.run(Task.scala:64)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:212)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:744)
{code}


---

* [SPARK-6671](https://issues.apache.org/jira/browse/SPARK-6671) | *Minor* | **Add status command for spark daemons**

Currently using the spark-daemon.sh script we can start and stop the spark demons. But we cannot get the status of the daemons. It will be nice to include the status command in the spark-daemon.sh script, through which we can know if the spark demon is alive or not.


---

* [SPARK-6667](https://issues.apache.org/jira/browse/SPARK-6667) | *Blocker* | **hang while collect in PySpark**

PySpark tests hang while collecting:


---

* [SPARK-6663](https://issues.apache.org/jira/browse/SPARK-6663) | *Major* | **Use Literal.create instead of constructor**

In order to do type checking and conversion, we should use Literal.create() instead of constructor to create Literal with DataType.


---

* [SPARK-6662](https://issues.apache.org/jira/browse/SPARK-6662) | *Minor* | **Allow variable substitution in spark.yarn.historyServer.address**

In Spark on YARN, explicit hostname and port number need to be set for "spark.yarn.historyServer.address" in SparkConf to make the HISTORY link. If the history server address is known and static, this is usually not a problem.

But in cloud, that is usually not true. Particularly in EMR, the history server always runs on the same node as with RM. So I could simply set it to {{$\{yarn.resourcemanager.hostname\}:18080}} if variable substitution is allowed.

In fact, Hadoop configuration already implements variable substitution, so if this property is read via YarnConf, this can be easily achievable.


---

* [SPARK-6661](https://issues.apache.org/jira/browse/SPARK-6661) | *Minor* | **Python type errors should print type, not object**

In MLlib PySpark, we sometimes test the type of an object and print an error if the object is of the wrong type.  E.g.:
[https://github.com/apache/spark/blob/f084c5de14eb10a6aba82a39e03e7877926ebb9e/python/pyspark/mllib/regression.py#L173]

These checks should print the type, not the actual object.  E.g., if the object cannot be converted to a string, then the check linked above will give a warning like this:
{code}
TypeError: not all arguments converted during string formatting
{code}
...which is weird for the user.

There may be other places in the codebase where this is an issue, so we need to check through and verify.


---

* [SPARK-6660](https://issues.apache.org/jira/browse/SPARK-6660) | *Critical* | **MLLibPythonAPI.pythonToJava doesn't recognize object arrays**

{code}
points = MLUtils.loadLabeledPoints(sc, "...")
\_to\_java\_object\_rdd(points).count()
{code}

throws exception

{code}
---------------------------------------------------------------------------
Py4JJavaError                             Traceback (most recent call last)
<ipython-input-22-5b481e99a111> in <module>()
----> 1 jrdd.count()

/home/ubuntu/databricks/spark/python/lib/py4j-0.8.2.1-src.zip/py4j/java\_gateway.py in \_\_call\_\_(self, *args)
    536         answer = self.gateway\_client.send\_command(command)
    537         return\_value = get\_return\_value(answer, self.gateway\_client,
--> 538                 self.target\_id, self.name)
    539 
    540         for temp\_arg in temp\_args:

/home/ubuntu/databricks/spark/python/lib/py4j-0.8.2.1-src.zip/py4j/protocol.py in get\_return\_value(answer, gateway\_client, target\_id, name)
    298                 raise Py4JJavaError(
    299                     'An error occurred while calling {0}{1}{2}.\n'.
--> 300                     format(target\_id, '.', name), value)
    301             else:
    302                 raise Py4JError(

Py4JJavaError: An error occurred while calling o510.count.
: org.apache.spark.SparkException: Job aborted due to stage failure: Task 18 in stage 114.0 failed 4 times, most recent failure: Lost task 18.3 in stage 114.0 (TID 1133, ip-10-0-130-35.us-west-2.compute.internal): java.lang.ClassCastException: [Ljava.lang.Object; cannot be cast to java.util.ArrayList
	at org.apache.spark.mllib.api.python.SerDe$$anonfun$pythonToJava$1$$anonfun$apply$1.apply(PythonMLLibAPI.scala:1090)
	at org.apache.spark.mllib.api.python.SerDe$$anonfun$pythonToJava$1$$anonfun$apply$1.apply(PythonMLLibAPI.scala:1087)
	at scala.collection.Iterator$$anon$13.hasNext(Iterator.scala:371)
	at org.apache.spark.util.Utils$.getIteratorSize(Utils.scala:1472)
	at org.apache.spark.rdd.RDD$$anonfun$count$1.apply(RDD.scala:1006)
	at org.apache.spark.rdd.RDD$$anonfun$count$1.apply(RDD.scala:1006)
	at org.apache.spark.SparkContext$$anonfun$runJob$5.apply(SparkContext.scala:1497)
	at org.apache.spark.SparkContext$$anonfun$runJob$5.apply(SparkContext.scala:1497)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:61)
	at org.apache.spark.scheduler.Task.run(Task.scala:64)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:203)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)

Driver stacktrace:
	at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$failJobAndIndependentStages(DAGScheduler.scala:1203)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1192)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1191)
	at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
	at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
	at org.apache.spark.scheduler.DAGScheduler.abortStage(DAGScheduler.scala:1191)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:693)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:693)
	at scala.Option.foreach(Option.scala:236)
	at org.apache.spark.scheduler.DAGScheduler.handleTaskSetFailed(DAGScheduler.scala:693)
	at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1393)
	at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1354)
	at org.apache.spark.util.EventLoop$$anon$1.run(EventLoop.scala:48)
{code}


---

* [SPARK-6657](https://issues.apache.org/jira/browse/SPARK-6657) | *Trivial* | **Fix Python doc build warnings**

Reported by [~rxin]

{code}
/scratch/rxin/spark/python/pyspark/mllib/tree.py:docstring of pyspark.mllib.tree.RandomForest.trainClassifier:15: ERROR: Unexpected indentation.

/scratch/rxin/spark/python/pyspark/mllib/tree.py:docstring of pyspark.mllib.tree.RandomForest.trainClassifier:16: WARNING: Block quote ends without a blank line; unexpected unindent.

/scratch/rxin/spark/python/pyspark/mllib/tree.py:docstring of pyspark.mllib.tree.RandomForest.trainClassifier:18: ERROR: Unexpected indentation.

/scratch/rxin/spark/python/pyspark/mllib/tree.py:docstring of pyspark.mllib.tree.RandomForest.trainClassifier:22: WARNING: Definition list ends without a blank line; unexpected unindent.

/scratch/rxin/spark/python/pyspark/mllib/tree.py:docstring of pyspark.mllib.tree.RandomForest.trainClassifier:28: WARNING: Definition list ends without a blank line; unexpected unindent.

/scratch/rxin/spark/python/pyspark/mllib/tree.py:docstring of pyspark.mllib.tree.RandomForest.trainRegressor:13: ERROR: Unexpected indentation.

/scratch/rxin/spark/python/pyspark/mllib/tree.py:docstring of pyspark.mllib.tree.RandomForest.trainRegressor:14: WARNING: Block quote ends without a blank line; unexpected unindent.

/scratch/rxin/spark/python/pyspark/mllib/tree.py:docstring of pyspark.mllib.tree.RandomForest.trainRegressor:16: ERROR: Unexpected indentation.

/scratch/rxin/spark/python/pyspark/mllib/tree.py:docstring of pyspark.mllib.tree.RandomForest.trainRegressor:18: ERROR: Unexpected indentation.

/scratch/rxin/spark/python/pyspark/sql/\_\_init\_\_.py:docstring of pyspark.sql.DataFrame.collect:1: WARNING: Inline interpreted text or phrase reference start-string without end-string.

/scratch/rxin/spark/python/pyspark/sql/\_\_init\_\_.py:docstring of pyspark.sql.DataFrame.orderBy:3: WARNING: Inline interpreted text or phrase reference start-string without end-string.

/scratch/rxin/spark/python/pyspark/sql/\_\_init\_\_.py:docstring of pyspark.sql.DataFrame.sort:3: WARNING: Inline interpreted text or phrase reference start-string without end-string.

/scratch/rxin/spark/python/pyspark/sql/\_\_init\_\_.py:docstring of pyspark.sql.DataFrame.take:1: WARNING: Inline interpreted text or phrase reference start-string without end-string.

/scratch/rxin/spark/python/docs/pyspark.streaming.rst:13: WARNING: Title underline too short.



pyspark.streaming.kafka module

----------------------------

/scratch/rxin/spark/python/docs/pyspark.streaming.rst:13: WARNING: Title underline too short.



pyspark.streaming.kafka module

----------------------------
{code}


---

* [SPARK-6656](https://issues.apache.org/jira/browse/SPARK-6656) | *Major* | **Allow the application name to be passed in versus pulling from SparkContext.getAppName()**

this is useful for the scenario where Kinesis Spark Streaming is being invoked from the Spark Shell.  in this case, the application name in the SparkContext is pre-set to "Spark Shell".

this isn't a common or recommended use case, but it's best to make this configurable outside of SparkContext.


---

* [SPARK-6653](https://issues.apache.org/jira/browse/SPARK-6653) | *Minor* | **New configuration property to specify port for sparkYarnAM actor system**

In 1.3.0 code line sparkYarnAM actor system is started on random port. See org.apache.spark.deploy.yarn ApplicationMaster.scala:282

actorSystem = AkkaUtils.createActorSystem("sparkYarnAM", Utils.localHostName, 0, conf = sparkConf, securityManager = securityMgr).\_1

This may be issue when ports between Spark client and the Yarn cluster are limited by firewall and not all ports are open between client and Yarn cluster.

Proposal is to introduce new property spark.am.actor.port and change code to

val port = sparkConf.getInt("spark.am.actor.port", 0)
    actorSystem = AkkaUtils.createActorSystem("sparkYarnAM", Utils.localHostName, port,
      conf = sparkConf, securityManager = securityMgr).\_1


---

* [SPARK-6651](https://issues.apache.org/jira/browse/SPARK-6651) | *Major* | **Delegate dense vector arithmetics to the underly numpy array**

It is convenient to delegate dense linear algebra operations to numpy.


---

* [SPARK-6650](https://issues.apache.org/jira/browse/SPARK-6650) | *Major* | **ExecutorAllocationManager never stops**

{{ExecutorAllocationManager}} doesn't even have a stop() method. That means that when the owning SparkContext goes away, the internal thread it uses to schedule its activities remains alive.

That means it constantly spams the logs and does who knows what else that could affect any future contexts that are allocated.

It's particularly evil during unit tests, since it slows down everything else after the suite is run, leaving multiple threads behind.


---

* [SPARK-6647](https://issues.apache.org/jira/browse/SPARK-6647) | *Major* | **Make trait StringComparison as BinaryPredicate and throw error when Predicate can't translate to data source Filter**

Now trait {{StringComparison}} is a {{BinaryExpression}}. In fact, it should be a {{BinaryPredicate}}.

By making {{StringComparison}} as {{BinaryPredicate}}, we can throw error when a {{expressions.Predicate}} can't translate to a data source {{Filter}} in function {{selectFilters}}.

Without this modification, because we will wrap a {{Filter}} outside the scanned results in {{pruneFilterProjectRaw}}, we can't detect about something is wrong in translating predicates to filters in {{selectFilters}}.

The unit test of SPARK-6625 demonstrates such problem. In that pr, even {{expressions.Contains}} is not properly translated to {{sources.StringContains}}, the filtering is still performed by the {{Filter}} and so the test passes.

Of course, by doing this modification, all {{expressions.Predicate}} classes need to have its data source {{Filter}} correspondingly.


---

* [SPARK-6643](https://issues.apache.org/jira/browse/SPARK-6643) | *Minor* | **Python API for StandardScalerModel**

This is the sub-task of SPARK-6254.
Wrap missing method for {{StandardScalerModel}}.


---

* [SPARK-6642](https://issues.apache.org/jira/browse/SPARK-6642) | *Major* | **Change the lambda weight to number of explicit ratings in implicit ALS**

Until SPARK-6637 is resolved, we should switch back to the 1.2 lambda weighting strategy to be consistent.


---

* [SPARK-6640](https://issues.apache.org/jira/browse/SPARK-6640) | *Major* | **Executor may connect to HeartbeartReceiver before it's setup in the driver side**

Here is the current code about starting LocalBackend and creating HeartbeatReceiver:

{code}
  // Create and start the scheduler
  private[spark] var (schedulerBackend, taskScheduler) =
    SparkContext.createTaskScheduler(this, master)
  private val heartbeatReceiver = env.actorSystem.actorOf(
    Props(new HeartbeatReceiver(this, taskScheduler)), "HeartbeatReceiver")
{code}

When creating LocalBackend, it will start `LocalActor`. `LocalActor` will   create Executor, and Executor's constructor will retrieve `HeartbeatReceiver`.

So we should make sure this line:
{code}
private val heartbeatReceiver = env.actorSystem.actorOf(
    Props(new HeartbeatReceiver(this, taskScheduler)), "HeartbeatReceiver")
{code}
happen before "creating LocalActor".

However, current codes can not guarantee that. Sometimes, creating Executor will crash. The issue was reported by sparkdi <shopaddr1234@dubna.us> in http://apache-spark-user-list.1001560.n3.nabble.com/Actor-not-found-td22265.html#a22324


---

* [SPARK-6638](https://issues.apache.org/jira/browse/SPARK-6638) | *Blocker* | **optimize StringType in SQL**

java.lang.String is encoded in UTF-16, it's not efficient for IO. We could change to use Array[Byte] of UTF-8 internally for better performance.


---

* [SPARK-6636](https://issues.apache.org/jira/browse/SPARK-6636) | *Minor* | **Use public DNS hostname everywhere in spark\_ec2.py**

The spark\_ec2.py script uses public\_dns\_name everywhere in the script except for testing ssh availability, which is done using the public ip address of the instances. This breaks the script for users who are deploying the cluster with a private-network-only security group. The fix is to use public\_dns\_name in the remaining place.

I am submitting a pull-request alongside this bug report.


---

* [SPARK-6635](https://issues.apache.org/jira/browse/SPARK-6635) | *Major* | **DataFrame.withColumn can create columns with identical names**

DataFrame lets you create multiple columns with the same name, which causes problems when you try to refer to columns by name.

Proposal: If a column is added to a DataFrame with a column of the same name, then the new column should replace the old column.

{code}
scala> val df = sc.parallelize(Array(1,2,3)).toDF("x")
df: org.apache.spark.sql.DataFrame = [x: int]

scala> val df3 = df.withColumn("x", df("x") + 1)
df3: org.apache.spark.sql.DataFrame = [x: int, x: int]

scala> df3.collect()
res1: Array[org.apache.spark.sql.Row] = Array([1,2], [2,3], [3,4])

scala> df3("x")
org.apache.spark.sql.AnalysisException: Reference 'x' is ambiguous, could be: x, x.;
	at org.apache.spark.sql.catalyst.plans.logical.LogicalPlan.resolve(LogicalPlan.scala:216)
	at org.apache.spark.sql.catalyst.plans.logical.LogicalPlan.resolve(LogicalPlan.scala:121)
	at org.apache.spark.sql.DataFrame.resolve(DataFrame.scala:161)
	at org.apache.spark.sql.DataFrame.col(DataFrame.scala:436)
	at org.apache.spark.sql.DataFrame.apply(DataFrame.scala:426)
	at $iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC.<init>(<console>:26)
	at $iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC.<init>(<console>:31)
	at $iwC$$iwC$$iwC$$iwC$$iwC$$iwC.<init>(<console>:33)
	at $iwC$$iwC$$iwC$$iwC$$iwC.<init>(<console>:35)
	at $iwC$$iwC$$iwC$$iwC.<init>(<console>:37)
	at $iwC$$iwC$$iwC.<init>(<console>:39)
	at $iwC$$iwC.<init>(<console>:41)
	at $iwC.<init>(<console>:43)
	at <init>(<console>:45)
	at .<init>(<console>:49)
	at .<clinit>(<console>)
	at .<init>(<console>:7)
	at .<clinit>(<console>)
	at $print(<console>)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.spark.repl.SparkIMain$ReadEvalPrint.call(SparkIMain.scala:1065)
	at org.apache.spark.repl.SparkIMain$Request.loadAndRun(SparkIMain.scala:1338)
	at org.apache.spark.repl.SparkIMain.loadAndRunReq$1(SparkIMain.scala:840)
	at org.apache.spark.repl.SparkIMain.interpret(SparkIMain.scala:871)
	at org.apache.spark.repl.SparkIMain.interpret(SparkIMain.scala:819)
	at org.apache.spark.repl.SparkILoop.reallyInterpret$1(SparkILoop.scala:856)
	at org.apache.spark.repl.SparkILoop.interpretStartingWith(SparkILoop.scala:901)
	at org.apache.spark.repl.SparkILoop.command(SparkILoop.scala:813)
	at org.apache.spark.repl.SparkILoop.processLine$1(SparkILoop.scala:656)
	at org.apache.spark.repl.SparkILoop.innerLoop$1(SparkILoop.scala:664)
	at org.apache.spark.repl.SparkILoop.org$apache$spark$repl$SparkILoop$$loop(SparkILoop.scala:669)
	at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply$mcZ$sp(SparkILoop.scala:996)
	at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply(SparkILoop.scala:944)
	at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply(SparkILoop.scala:944)
	at scala.tools.nsc.util.ScalaClassLoader$.savingContextLoader(ScalaClassLoader.scala:135)
	at org.apache.spark.repl.SparkILoop.org$apache$spark$repl$SparkILoop$$process(SparkILoop.scala:944)
	at org.apache.spark.repl.SparkILoop.process(SparkILoop.scala:1058)
	at org.apache.spark.repl.Main$.main(Main.scala:31)
	at org.apache.spark.repl.Main.main(Main.scala)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.spark.deploy.SparkSubmit$.org$apache$spark$deploy$SparkSubmit$$runMain(SparkSubmit.scala:569)
	at org.apache.spark.deploy.SparkSubmit$.doRunMain$1(SparkSubmit.scala:166)
	at org.apache.spark.deploy.SparkSubmit$.submit(SparkSubmit.scala:189)
	at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:110)
	at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)
{code}


---

* [SPARK-6629](https://issues.apache.org/jira/browse/SPARK-6629) | *Minor* | **cancelJobGroup() may not work for jobs whose job groups are inherited from parent threads**

When a job is submitted with a job group and that job group is inherited from a parent thread, there are multiple bugs that may prevent this job from being cancelable via SparkContext.cancelJobGroup():

- When filtering jobs based on their job group properties, DAGScheduler calls get() instead of getProperty(), which does not respect inheritance, so it will skip over jobs whose groups were inherited.
- Properties objects are mutable, but we do not make defensive copies / snapshots, so modifications of the parent thread's job group will cause running jobs' groups to change.

Both of these issues are easy to fix: use `getProperty()` and perform defensive copying.


---

* [SPARK-6627](https://issues.apache.org/jira/browse/SPARK-6627) | *Critical* | **Clean up of shuffle code and interfaces**

The shuffle code in Spark is somewhat messy and could use some interface clean-up, especially with some larger changes outstanding. This is a catch all for what may be some small improvements in a few different PR's.


---

* [SPARK-6626](https://issues.apache.org/jira/browse/SPARK-6626) | *Trivial* | **TwitterUtils.createStream documentation error**

At http://spark.apache.org/docs/1.3.0/streaming-programming-guide.html#input-dstreams-and-receivers, under 'Advanced Sources', the documentation provides the following call for Scala:

TwitterUtils.createStream(ssc)

However, with only one parameter to this method it appears a jssc object is required, not a ssc object: http://spark.apache.org/docs/1.3.0/api/java/index.html?org/apache/spark/streaming/twitter/TwitterUtils.html

To make the above call work one must instead provide an option argument, for example:

TwitterUtils.createStream(ssc, None)


---

* [SPARK-6625](https://issues.apache.org/jira/browse/SPARK-6625) | *Major* | **Add common string filters to data sources**

Filters such as startsWith, endsWith, contains will be very useful for data sources that provide search functionality, e.g. Succinct, Elastic Search, Solr.


---

* [SPARK-6623](https://issues.apache.org/jira/browse/SPARK-6623) | *Major* | **Alias DataFrame.na.fill/drop in Python**

To be more consistent with Scala.


---

* [SPARK-6618](https://issues.apache.org/jira/browse/SPARK-6618) | *Blocker* | **HiveMetastoreCatalog.lookupRelation should use fine-grained lock**

Right now the entire method of HiveMetastoreCatalog.lookupRelation has a lock (https://github.com/apache/spark/blob/branch-1.3/sql/hive/src/main/scala/org/apache/spark/sql/hive/HiveMetastoreCatalog.scala#L173) and the scope of lock will cover resolving data source tables (https://github.com/apache/spark/blob/branch-1.3/sql/hive/src/main/scala/org/apache/spark/sql/hive/HiveMetastoreCatalog.scala#L93). So, lookupRelation can be extremely expensive when we are doing expensive operations like parquet schema discovery. So, we should use fine-grained lock for lookupRelation.


---

* [SPARK-6615](https://issues.apache.org/jira/browse/SPARK-6615) | *Minor* | **Add missing methods to Word2Vec's Python API**

This is the sub-task of [SPARK-6254|https://issues.apache.org/jira/browse/SPARK-6254].

Wrap missing method for {{Word2Vec}} and {{Word2VecModel}}.


---

* [SPARK-6614](https://issues.apache.org/jira/browse/SPARK-6614) | *Major* | **OutputCommitCoordinator should clear authorized committers only after authorized committer fails, not after any failure**

In OutputCommitCoordinator, there is some logic to clear the authorized committer's lock on committing in case it fails.  However, it looks like the current code also clears this lock if \_other\_ tasks fail, which is an obvious bug: https://github.com/apache/spark/blob/df3550084c9975f999ed370dd9f7c495181a68ba/core/src/main/scala/org/apache/spark/scheduler/OutputCommitCoordinator.scala#L118.  In theory, it's possible that this could allow a new committer to start, run to completion, and commit output before the authorized committer finished, but it's unlikely that this race occurs often in practice due to the complex combination of failure and timing conditions that would be required to expose it.  Still, we should fix this issue.

This was discovered by [~adav] while reading the OutputCommitCoordinator code.


---

* [SPARK-6612](https://issues.apache.org/jira/browse/SPARK-6612) | *Minor* | **Python KMeans parity**

This is a subtask of [SPARK-6258] for the Python API of KMeans.  These items are missing:

KMeans
* setEpsilon
* setInitializationSteps

KMeansModel
* computeCost
* k


---

* [SPARK-6611](https://issues.apache.org/jira/browse/SPARK-6611) | *Minor* | **Add support for INTEGER as synonym of INT to DDLParser**

Add support for INTEGER as synonym of INT to DDLParser.


---

* [SPARK-6608](https://issues.apache.org/jira/browse/SPARK-6608) | *Minor* | **Make DataFrame.rdd a lazy val**

Before 1.3.0, {{SchemaRDD.id}} works as a unique identifier of each {{SchemaRDD}}. In 1.3.0, unlike {{SchemaRDD}}, {{DataFrame}} is no longer an RDD, and {{DataFrame.rdd}} is actually a function which always return a new RDD instance. Making {{DataFrame.rdd}} a {{lazy val}} should bring the unique identifier back.


---

* [SPARK-6607](https://issues.apache.org/jira/browse/SPARK-6607) | *Major* | **Aggregation attribute name including special chars '(' and ')' should be replaced before generating Parquet schema**

'(' and ')' are special characters used in Parquet schema for type annotation. When we run an aggregation query, we will obtain attribute name such as "MAX(a)".

If we directly store the generated DataFrame as Parquet file, it causes failure when reading and parsing the stored schema string.

Several methods can be adopted to solve this. This pr uses a simplest one to just replace attribute names before generating Parquet schema based on these attributes.

Another possible method might be modifying all aggregation expression names from "func(column)" to "func[column]".


---

* [SPARK-6604](https://issues.apache.org/jira/browse/SPARK-6604) | *Minor* | **Specify ip of python server scoket**

In driver now will start a server socket and use a wildcard ip, use 127.0.0.0 is more reasonable, as we only use it by local Python process


---

* [SPARK-6603](https://issues.apache.org/jira/browse/SPARK-6603) | *Major* | **SQLContext.registerFunction -\> SQLContext.udf.register**

We didn't change the Python implementation to use that. Maybe the best strategy is to deprecate SQLContext.registerFunction, and just add SQLContext.udf.register.


---

* [SPARK-6600](https://issues.apache.org/jira/browse/SPARK-6600) | *Minor* | **Open ports in ec2/spark\_ec2.py to allow HDFS NFS gateway**

Use case: User has set up the hadoop hdfs nfs gateway service on their spark\_ec2.py launched cluster, and wants to mount that on their local machine. 

Requires the following ports to be opened on incoming rule set for MASTER for both UDP and TCP: 111, 2049, 4242.
(I have tried this and it works)

Note that this issue *does not* cover the implementation of a hdfs nfs gateway module in the spark-ec2 project. See linked issue. 

Reference:
https://hadoop.apache.org/docs/r2.4.0/hadoop-project-dist/hadoop-hdfs/HdfsNfsGateway.html


---

* [SPARK-6598](https://issues.apache.org/jira/browse/SPARK-6598) | *Minor* | **Python API for IDFModel**

This is the sub-task of [SPARK-6254|https://issues.apache.org/jira/browse/SPARK-6254].

Wrap IDFModel {{idf}} member function for pyspark.


---

* [SPARK-6597](https://issues.apache.org/jira/browse/SPARK-6597) | *Trivial* | **Replace `input:checkbox` with `input[type="checkbox"] in additional-metrics.js**

In additional-metrics.js, there are some selector notation like `input:checkbox` but JQuery's official document says `input[type="checkbox"]` is better.

https://api.jquery.com/checkbox-selector/


---

* [SPARK-6596](https://issues.apache.org/jira/browse/SPARK-6596) | *Trivial* | **fix the instruction on building scaladoc**

In README.md under docs/ directory, it says that 

You can build just the Spark scaladoc by running build/sbt doc from the SPARK\_PROJECT\_ROOT directory.

I guess the right approach is build/sbt unidoc


---

* [SPARK-6592](https://issues.apache.org/jira/browse/SPARK-6592) | *Critical* | **API of Row trait should be presented in Scala doc**

Currently, the API of Row class is not presented in Scaladoc, though we have many chances to use it 

the reason is that we ignore all files under catalyst directly in SparkBuild.scala when generating Scaladoc, (https://github.com/apache/spark/blob/f75f633b21faaf911f04aeff847f25749b1ecd89/project/SparkBuild.scala#L369)

What's the best approach to fix this? [~rxin]


---

* [SPARK-6585](https://issues.apache.org/jira/browse/SPARK-6585) | *Minor* | **FileServerSuite.test ("HttpFileServer should not work with SSL when the server is untrusted") failed is some evn.**

In my test machine, FileServerSuite.test ("HttpFileServer should not work with SSL when the server is untrusted") case throw SSLException not SSLHandshakeException, suggest change to catch SSLException to  improve test case 's robustness.

[info] - HttpFileServer should not work with SSL when the server is untrusted *** FAILED *** (69 milliseconds)
[info]   Expected exception javax.net.ssl.SSLHandshakeException to be thrown, but javax.net.ssl.SSLException was thrown. (FileServerSuite.scala:231)
[info]   org.scalatest.exceptions.TestFailedException:
[info]   at org.scalatest.Assertions$class.newAssertionFailedException(Assertions.scala:496)
[info]   at org.scalatest.FunSuite.newAssertionFailedException(FunSuite.scala:1555)
[info]   at org.scalatest.Assertions$class.intercept(Assertions.scala:1004)
[info]   at org.scalatest.FunSuite.intercept(FunSuite.scala:1555)
[info]   at org.apache.spark.FileServerSuite$$anonfun$15.apply$mcV$sp(FileServerSuite.scala:231)
[info]   at org.apache.spark.FileServerSuite$$anonfun$15.apply(FileServerSuite.scala:224)
[info]   at org.apache.spark.FileServerSuite$$anonfun$15.apply(FileServerSuite.scala:224)
[info]   at org.scalatest.Transformer$$anonfun$apply$1.apply$mcV$sp(Transformer.scala:22)
[info]   at org.scalatest.OutcomeOf$class.outcomeOf(OutcomeOf.scala:85)
[info]   at org.scalatest.OutcomeOf$.outcomeOf(OutcomeOf.scala:104)
[info]   at org.scalatest.Transformer.apply(Transformer.scala:22)
[info]   at org.scalatest.Transformer.apply(Transformer.scala:20)
[info]   at org.scalatest.FunSuiteLike$$anon$1.apply(FunSuiteLike.scala:166)
[info]   at org.scalatest.Suite$class.withFixture(Suite.scala:1122)
[info]   at org.scalatest.FunSuite.withFixture(FunSuite.scala:1555)
[info]   at org.scalatest.FunSuiteLike$class.invokeWithFixture$1(FunSuiteLike.scala:163)
[info]   at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:175)
[info]   at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:175)
[info]   at org.scalatest.SuperEngine.runTestImpl(Engine.scala:306)
[info]   at org.scalatest.FunSuiteLike$class.runTest(FunSuiteLike.scala:175)
[info]   at org.apache.spark.FileServerSuite.org$scalatest$BeforeAndAfterEach$$super$runTest(FileServerSuite.scala:34)
[info]   at org.scalatest.BeforeAndAfterEach$class.runTest(BeforeAndAfterEach.scala:255)


---

* [SPARK-6580](https://issues.apache.org/jira/browse/SPARK-6580) | *Minor* | **Optimize LogisticRegressionModel.predictPoint**

LogisticRegressionModel.predictPoint could be optimized some.  There are several checks which could be moved outside loops or even outside predictPoint to initialization of the model.

Some include:
{code}
require(numFeatures == weightMatrix.size)
val dataWithBiasSize = weightMatrix.size / (numClasses - 1)
val weightsArray = weightMatrix match { ...
if (dataMatrix.size + 1 == dataWithBiasSize) {...
{code}

Also, for multiclass, the 2 loops (over numClasses and margins) could be combined into 1 loop.


---

* [SPARK-6578](https://issues.apache.org/jira/browse/SPARK-6578) | *Blocker* | **Outbound channel in network library is not thread-safe, can lead to fetch failures**

There is a very narrow race in the outbound channel of the network library. While netty guarantees that the inbound channel is thread-safe, the same is not true for the outbound channel: multiple threads can be writing and running the pipeline at the same time.

This leads to an issue with MessageEncoder and the optimization it performs for zero-copy of file data: since a single RPC can be broken into multiple buffers (for , example when replying to a chunk request), if you have multiple threads writing these RPCs then they can be mixed up in the final socket. That breaks framing and will cause the receiving side to not understand the messages.

Patch coming up shortly.


---

* [SPARK-6575](https://issues.apache.org/jira/browse/SPARK-6575) | *Blocker* | **Converted Parquet Metastore tables no longer cache metadata**

Consider a metastore Parquet table that
# doesn't have schema evolution issue
# has lots of data files and/or partitions

In this case, driver schema merging can be both slow and unnecessary. Would be good to have a configuration to let the use disable schema merging when converting such a metastore Parquet table.


---

* [SPARK-6574](https://issues.apache.org/jira/browse/SPARK-6574) | *Blocker* | **Python Example sql.py not working in version 1.3**

I downloaded spark version spark-1.3.0-bin-hadoop2.4.

When the python version of sql.py is run the following error occurs:

[root@nde-dev8-template python]#
/root/spark-1.3.0-bin-hadoop2.4/bin/spark-submit sql.py
Spark assembly has been built with Hive, including Datanucleus jars on
classpath
Traceback (most recent call last):
  File "/root/spark-1.3.0-bin-hadoop2.4/examples/src/main/python/sql.py",
line 22, in <module>
    from pyspark.sql import Row, StructField, StructType, StringType,
IntegerType
ImportError: cannot import name StructField

----------------------------------------------------------------------
The sql.py version, spark-1.2.1-bin-hadoop2.4, does not throw the error:

[root@nde-dev8-template python]#
/root/spark-1.2.1-bin-hadoop2.4/bin/spark-submit sql.py
Spark assembly has been built with Hive, including Datanucleus jars on
classpath
15/03/27 14:18:44 WARN NativeCodeLoader: Unable to load native-hadoop
library for your platform... using builtin-java classes where applicable
15/03/27 14:19:41 WARN ThreadLocalRandom: Failed to generate a seed from
SecureRandom within 3 seconds. Not enough entrophy?
root
 |-- age: integer (nullable = true)
 |-- name: string (nullable = true)

root
 |-- person\_name: string (nullable = false)
 |-- person\_age: integer (nullable = false)

root
 |-- age: integer (nullable = true)
 |-- name: string (nullable = true)

Justin


-------------------------------------------------

The OS/JAVA environments are:

OS: Linux nde-dev8-template 2.6.32-431.17.1.el6.x86\_64 #1 SMP Fri Apr 11
17:27:00 EDT 2014 x86\_64 x86\_64 x86\_64 GNU/Linux

JAVA: [root@nde-dev8-template bin]# java -version
java version "1.7.0\_51"
Java(TM) SE Runtime Environment (build 1.7.0\_51-b13)
Java HotSpot(TM) 64-Bit Server VM (build 24.51-b03, mixed mode)

The same error occurs when using bin/pyspark shell.

>>> from pyspark.sql import StructField
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
ImportError: cannot import name StructField


---------------------------------------------------

Any advice for resolving? Thanks in advance.

Peter


---

* [SPARK-6571](https://issues.apache.org/jira/browse/SPARK-6571) | *Major* | **MatrixFactorizationModel created by load fails on predictAll**

This code, adapted from the documentation, fails when using a loaded model.
from pyspark.mllib.recommendation import ALS, Rating, MatrixFactorizationModel

r1 = (1, 1, 1.0)
r2 = (1, 2, 2.0)
r3 = (2, 1, 2.0)
ratings = sc.parallelize([r1, r2, r3])
model = ALS.trainImplicit(ratings, 1, seed=10)
print '(2, 2)', model.predict(2, 2)
#    0.43...
testset = sc.parallelize([(1, 2), (1, 1)])
print 'all', model.predictAll(testset).collect()
#    [Rating(user=1, product=1, rating=1.0...), Rating(user=1, product=2, rating=1.9...)]
import os, tempfile
path = tempfile.mkdtemp()
model.save(sc, path)
sameModel = MatrixFactorizationModel.load(sc, path)
print '(2, 2)', sameModel.predict(2,2)
sameModel.predictAll(testset).collect()


This gives
(2, 2) 0.443547642944
all [Rating(user=1, product=1, rating=1.1538351103381217), Rating(user=1, product=2, rating=0.7153473708381739)]
(2, 2) 0.443547642944
---------------------------------------------------------------------------
Py4JError                                 Traceback (most recent call last)
<ipython-input-18-af6612bed9d0> in <module>()
     19 sameModel = MatrixFactorizationModel.load(sc, path)
     20 print '(2, 2)', sameModel.predict(2,2)
---> 21 sameModel.predictAll(testset).collect()
     22 

/home/ubuntu/spark/python/pyspark/mllib/recommendation.pyc in predictAll(self, user\_product)
    104         assert len(first) == 2, "user\_product should be RDD of (user, product)"
    105         user\_product = user\_product.map(lambda (u, p): (int(u), int(p)))
--> 106         return self.call("predict", user\_product)
    107 
    108     def userFeatures(self):

/home/ubuntu/spark/python/pyspark/mllib/common.pyc in call(self, name, *a)
    134     def call(self, name, *a):
    135         """Call method of java\_model"""
--> 136         return callJavaFunc(self.\_sc, getattr(self.\_java\_model, name), *a)
    137 
    138 

/home/ubuntu/spark/python/pyspark/mllib/common.pyc in callJavaFunc(sc, func, *args)
    111     """ Call Java Function """
    112     args = [\_py2java(sc, a) for a in args]
--> 113     return \_java2py(sc, func(*args))
    114 
    115 

/home/ubuntu/spark/python/lib/py4j-0.8.2.1-src.zip/py4j/java\_gateway.py in \_\_call\_\_(self, *args)
    536         answer = self.gateway\_client.send\_command(command)
    537         return\_value = get\_return\_value(answer, self.gateway\_client,
--> 538                 self.target\_id, self.name)
    539 
    540         for temp\_arg in temp\_args:

/home/ubuntu/spark/python/lib/py4j-0.8.2.1-src.zip/py4j/protocol.py in get\_return\_value(answer, gateway\_client, target\_id, name)
    302                 raise Py4JError(
    303                     'An error occurred while calling {0}{1}{2}. Trace:\n{3}\n'.
--> 304                     format(target\_id, '.', name, value))
    305         else:
    306             raise Py4JError(

Py4JError: An error occurred while calling o450.predict. Trace:
py4j.Py4JException: Method predict([class org.apache.spark.api.java.JavaRDD]) does not exist
	at py4j.reflection.ReflectionEngine.getMethod(ReflectionEngine.java:333)
	at py4j.reflection.ReflectionEngine.getMethod(ReflectionEngine.java:342)
	at py4j.Gateway.invoke(Gateway.java:252)
	at py4j.commands.AbstractCommand.invokeMethod(AbstractCommand.java:133)
	at py4j.commands.CallCommand.execute(CallCommand.java:79)
	at py4j.GatewayConnection.run(GatewayConnection.java:207)
	at java.lang.Thread.run(Thread.java:744)


---

* [SPARK-6569](https://issues.apache.org/jira/browse/SPARK-6569) | *Trivial* | **Kafka directInputStream logs what appear to be incorrect warnings**

During what appears to be normal operation of streaming from a Kafka topic, the following log records are observed, logged periodically:

{code}
[Stage 391:==========================================>              (3 + 0) / 4]
2015-03-27 12:49:54 WARN KafkaRDD: Beginning offset ${part.fromOffset} is the same as ending offset skipping raw 0
2015-03-27 12:49:54 WARN KafkaRDD: Beginning offset ${part.fromOffset} is the same as ending offset skipping raw 0
2015-03-27 12:49:54 WARN KafkaRDD: Beginning offset ${part.fromOffset} is the same as ending offset skipping raw 0
{code}

* the part.fromOffset placeholder is not correctly substituted to a value
* is the condition really mandates a warning being logged?


---

* [SPARK-6568](https://issues.apache.org/jira/browse/SPARK-6568) | *Major* | **spark-shell.cmd --jars option does not accept the jar that has space in its path**

spark-shell.cmd --jars option does not accept the jar that has space in its path.
The path of jar sometimes containes space in Windows.

{code}
bin\spark-shell.cmd --jars "C:\Program Files\some\jar1.jar"
{code}
this gets
{code}
Exception in thread "main" java.net.URISyntaxException: Illegal character in path at index 10: C:/Program Files/some/jar1.jar
{code}


---

* [SPARK-6564](https://issues.apache.org/jira/browse/SPARK-6564) | *Blocker* | **SQLContext.emptyDataFrame should contain 0 rows, not 1 row**

Right now emptyDataFrame actually contains 1 row.


---

* [SPARK-6563](https://issues.apache.org/jira/browse/SPARK-6563) | *Major* | **DataFrame.fillna**

Support replacing all null value for a column (or all columns) with a fixed value.

Similar to Pandas' fillna.

http://pandas.pydata.org/pandas-docs/dev/generated/pandas.DataFrame.fillna.html


---

* [SPARK-6562](https://issues.apache.org/jira/browse/SPARK-6562) | *Major* | **DataFrame.na.replace value support in Scala/Java**

Support replacing a set of values with another set of values (i.e. map join), similar to Pandas' replace.

http://pandas.pydata.org/pandas-docs/dev/generated/pandas.DataFrame.replace.html


---

* [SPARK-6560](https://issues.apache.org/jira/browse/SPARK-6560) | *Minor* | **PairRDDFunctions suppresses exceptions in writeFile**

In PairRDDFunctions, saveAsHadoopDataset uses a try/finally to manage SparkHadoopWriter. Briefly:

{code}
try {
  ... writer.write(...)
} finally {
  writer.close()
}
{code}

However, if an exception happens in writer.write, and then writer.close is called, and an exception in writer.close happens, the original (real) exception from writer.write is suppressed.

This makes debugging very painful, as the exception that is shown in the logs (from writer.close) is spurious, and the original, real exception has been lost and not logged.


---

* [SPARK-6558](https://issues.apache.org/jira/browse/SPARK-6558) | *Critical* | **Utils.getCurrentUserName returns the full principal name instead of login name**

Utils.getCurrentUserName returns UserGroupInformation.getCurrentUser().getUserName() when SPARK\_USER isn't set.  It should return UserGroupInformation.getCurrentUser().getShortUserName()

getUserName() returns the users full principal name (ie user1@CORP.COM). getShortUserName() returns just the users login name (user1).

This just happens to work on YARN because the Client code sets:
    env("SPARK\_USER") = UserGroupInformation.getCurrentUser().getShortUserName()


---

* [SPARK-6556](https://issues.apache.org/jira/browse/SPARK-6556) | *Major* | **Fix wrong parsing logic of executorTimeoutMs and checkTimeoutIntervalMs in HeartbeatReceiver**

The current reading logic of "executorTimeoutMs" is:

{code}
private val executorTimeoutMs = sc.conf.getLong("spark.network.timeout", 
    sc.conf.getLong("spark.storage.blockManagerSlaveTimeoutMs", 120)) * 1000
{code}

So if "spark.storage.blockManagerSlaveTimeoutMs" is 10000 and "spark.network.timeout" is not set, executorTimeoutMs will be 10000 * 1000. But the correct value should have been 10000. 

"checkTimeoutIntervalMs" has the same issue.


---

* [SPARK-6555](https://issues.apache.org/jira/browse/SPARK-6555) | *Major* | **Override equals and hashCode in MetastoreRelation**

This is a follow-up of SPARK-6450.

As explained in [this comment|https://issues.apache.org/jira/browse/SPARK-6450?focusedCommentId=14379499&page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel#comment-14379499] of SPARK-6450, we resorted to a more surgical fix due to the upcoming 1.3.1 release. But overriding {{equals}} and {{hashCode}} is the proper fix to that problem.


---

* [SPARK-6554](https://issues.apache.org/jira/browse/SPARK-6554) | *Critical* | **Cannot use partition columns in where clause when Parquet filter push-down is enabled**

I'm having trouble referencing partition columns in my queries with Parquet.  

In the following example, 'probeTypeId' is a partition column.  For example, the directory structure looks like this:
{noformat}
/mydata
    /probeTypeId=1
        ...files...
    /probeTypeId=2
        ...files...
{noformat}
I see the column when I reference load a DF using the /mydata directory and call df.printSchema():
{noformat}
 |-- probeTypeId: integer (nullable = true)
{noformat}
Parquet is also aware of the column:
{noformat}
     optional int32 probeTypeId;
{noformat}
And this works fine:
{code}
sqlContext.sql("select probeTypeId from df limit 1");
{code}
...as does {{df.show()}} - it shows the correct values for the partition column.

However, when I try to use a partition column in a where clause, I get an exception stating that the column was not found in the schema:
{noformat}
sqlContext.sql("select probeTypeId from df where probeTypeId = 1 limit 1");
...
...
org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 0.0 failed 1 times, most recent failure: Lost task 0.0 in stage 0.0 (TID 0, localhost): java.lang.IllegalArgumentException: Column [probeTypeId] was not found in schema!
	at parquet.Preconditions.checkArgument(Preconditions.java:47)
	at parquet.filter2.predicate.SchemaCompatibilityValidator.getColumnDescriptor(SchemaCompatibilityValidator.java:172)
	at parquet.filter2.predicate.SchemaCompatibilityValidator.validateColumn(SchemaCompatibilityValidator.java:160)
	at parquet.filter2.predicate.SchemaCompatibilityValidator.validateColumnFilterPredicate(SchemaCompatibilityValidator.java:142)
	at parquet.filter2.predicate.SchemaCompatibilityValidator.visit(SchemaCompatibilityValidator.java:76)
	at parquet.filter2.predicate.SchemaCompatibilityValidator.visit(SchemaCompatibilityValidator.java:41)
	at parquet.filter2.predicate.Operators$Eq.accept(Operators.java:162)
	at parquet.filter2.predicate.SchemaCompatibilityValidator.validate(SchemaCompatibilityValidator.java:46)
	at parquet.filter2.compat.RowGroupFilter.visit(RowGroupFilter.java:41)
	at parquet.filter2.compat.RowGroupFilter.visit(RowGroupFilter.java:22)
	at parquet.filter2.compat.FilterCompat$FilterPredicateCompat.accept(FilterCompat.java:108)
	at parquet.filter2.compat.RowGroupFilter.filterRowGroups(RowGroupFilter.java:28)
	at parquet.hadoop.ParquetRecordReader.initializeInternalReader(ParquetRecordReader.java:158)
...
...
{noformat}
Here's the full stack trace:
{noformat}
using local[*] for master
06:05:55,675 |-INFO in ch.qos.logback.classic.joran.action.ConfigurationAction - debug attribute not set
06:05:55,683 |-INFO in ch.qos.logback.core.joran.action.AppenderAction - About to instantiate appender of type [ch.qos.logback.core.ConsoleAppender]
06:05:55,694 |-INFO in ch.qos.logback.core.joran.action.AppenderAction - Naming appender as [STDOUT]
06:05:55,721 |-INFO in ch.qos.logback.core.joran.action.NestedComplexPropertyIA - Assuming default type [ch.qos.logback.classic.encoder.PatternLayoutEncoder] for [encoder] property
06:05:55,768 |-INFO in ch.qos.logback.classic.joran.action.RootLoggerAction - Setting level of ROOT logger to INFO
06:05:55,768 |-INFO in ch.qos.logback.core.joran.action.AppenderRefAction - Attaching appender named [STDOUT] to Logger[ROOT]
06:05:55,769 |-INFO in ch.qos.logback.classic.joran.action.ConfigurationAction - End of configuration.
06:05:55,770 |-INFO in ch.qos.logback.classic.joran.JoranConfigurator@6aaceffd - Registering current configuration as safe fallback point

INFO  org.apache.spark.SparkContext Running Spark version 1.3.0
WARN  o.a.hadoop.util.NativeCodeLoader Unable to load native-hadoop library for your platform... using builtin-java classes where applicable
INFO  org.apache.spark.SecurityManager Changing view acls to: jon
INFO  org.apache.spark.SecurityManager Changing modify acls to: jon
INFO  org.apache.spark.SecurityManager SecurityManager: authentication disabled; ui acls disabled; users with view permissions: Set(jon); users with modify permissions: Set(jon)
INFO  akka.event.slf4j.Slf4jLogger Slf4jLogger started
INFO  Remoting Starting remoting
INFO  Remoting Remoting started; listening on addresses :[akka.tcp://sparkDriver@192.168.1.134:62493]
INFO  org.apache.spark.util.Utils Successfully started service 'sparkDriver' on port 62493.
INFO  org.apache.spark.SparkEnv Registering MapOutputTracker
INFO  org.apache.spark.SparkEnv Registering BlockManagerMaster
INFO  o.a.spark.storage.DiskBlockManager Created local directory at /var/folders/x7/9hdp8kw9569864088tsl4jmm0000gn/T/spark-150e23b2-ff19-4a51-8cfc-25fb8e1b3f2b/blockmgr-6eea286c-7473-4bda-8886-7250156b68f4
INFO  org.apache.spark.storage.MemoryStore MemoryStore started with capacity 1966.1 MB
INFO  org.apache.spark.HttpFileServer HTTP File server directory is /var/folders/x7/9hdp8kw9569864088tsl4jmm0000gn/T/spark-cf4687bd-1563-4ddf-b697-21c96fd95561/httpd-6343b9c9-bb66-43ac-ac43-6da80c7a1f95
INFO  org.apache.spark.HttpServer Starting HTTP Server
INFO  o.spark-project.jetty.server.Server jetty-8.y.z-SNAPSHOT
INFO  o.s.jetty.server.AbstractConnector Started SocketConnector@0.0.0.0:62494
INFO  org.apache.spark.util.Utils Successfully started service 'HTTP file server' on port 62494.
INFO  org.apache.spark.SparkEnv Registering OutputCommitCoordinator
INFO  o.spark-project.jetty.server.Server jetty-8.y.z-SNAPSHOT
INFO  o.s.jetty.server.AbstractConnector Started SelectChannelConnector@0.0.0.0:4040
INFO  org.apache.spark.util.Utils Successfully started service 'SparkUI' on port 4040.
INFO  org.apache.spark.ui.SparkUI Started SparkUI at http://192.168.1.134:4040
INFO  org.apache.spark.executor.Executor Starting executor ID <driver> on host localhost
INFO  org.apache.spark.util.AkkaUtils Connecting to HeartbeatReceiver: akka.tcp://sparkDriver@192.168.1.134:62493/user/HeartbeatReceiver
INFO  o.a.s.n.n.NettyBlockTransferService Server created on 62495
INFO  o.a.spark.storage.BlockManagerMaster Trying to register BlockManager
INFO  o.a.s.s.BlockManagerMasterActor Registering block manager localhost:62495 with 1966.1 MB RAM, BlockManagerId(<driver>, localhost, 62495)
INFO  o.a.spark.storage.BlockManagerMaster Registered BlockManager
INFO  o.a.h.conf.Configuration.deprecation mapred.max.split.size is deprecated. Instead, use mapreduce.input.fileinputformat.split.maxsize
INFO  o.a.h.conf.Configuration.deprecation mapred.reduce.tasks.speculative.execution is deprecated. Instead, use mapreduce.reduce.speculative
INFO  o.a.h.conf.Configuration.deprecation mapred.committer.job.setup.cleanup.needed is deprecated. Instead, use mapreduce.job.committer.setup.cleanup.needed
INFO  o.a.h.conf.Configuration.deprecation mapred.min.split.size.per.rack is deprecated. Instead, use mapreduce.input.fileinputformat.split.minsize.per.rack
INFO  o.a.h.conf.Configuration.deprecation mapred.min.split.size is deprecated. Instead, use mapreduce.input.fileinputformat.split.minsize
INFO  o.a.h.conf.Configuration.deprecation mapred.min.split.size.per.node is deprecated. Instead, use mapreduce.input.fileinputformat.split.minsize.per.node
INFO  o.a.h.conf.Configuration.deprecation mapred.reduce.tasks is deprecated. Instead, use mapreduce.job.reduces
INFO  o.a.h.conf.Configuration.deprecation mapred.input.dir.recursive is deprecated. Instead, use mapreduce.input.fileinputformat.input.dir.recursive
INFO  o.a.h.hive.metastore.HiveMetaStore 0: Opening raw store with implemenation class:org.apache.hadoop.hive.metastore.ObjectStore
INFO  o.a.h.hive.metastore.ObjectStore ObjectStore, initialize called
INFO  DataNucleus.Persistence Property hive.metastore.integral.jdo.pushdown unknown - will be ignored
INFO  DataNucleus.Persistence Property datanucleus.cache.level2 unknown - will be ignored
INFO  o.a.h.hive.metastore.ObjectStore Setting MetaStore object pin classes with hive.metastore.cache.pinobjtypes="Table,StorageDescriptor,SerDeInfo,Partition,Database,Type,FieldSchema,Order"
INFO  o.a.h.h.metastore.MetaStoreDirectSql MySQL check failed, assuming we are not on mysql: Lexical error at line 1, column 5.  Encountered: "@" (64), after : "".
INFO  DataNucleus.Datastore The class "org.apache.hadoop.hive.metastore.model.MFieldSchema" is tagged as "embedded-only" so does not have its own datastore table.
INFO  DataNucleus.Datastore The class "org.apache.hadoop.hive.metastore.model.MOrder" is tagged as "embedded-only" so does not have its own datastore table.
INFO  DataNucleus.Datastore The class "org.apache.hadoop.hive.metastore.model.MFieldSchema" is tagged as "embedded-only" so does not have its own datastore table.
INFO  DataNucleus.Datastore The class "org.apache.hadoop.hive.metastore.model.MOrder" is tagged as "embedded-only" so does not have its own datastore table.
INFO  DataNucleus.Query Reading in results for query "org.datanucleus.store.rdbms.query.SQLQuery@0" since the connection used is closing
INFO  o.a.h.hive.metastore.ObjectStore Initialized ObjectStore
INFO  o.a.h.hive.metastore.HiveMetaStore Added admin role in metastore
INFO  o.a.h.hive.metastore.HiveMetaStore Added public role in metastore
INFO  o.a.h.hive.metastore.HiveMetaStore No user is added in admin role, since config is empty
INFO  o.a.h.hive.ql.session.SessionState No Tez session required at this point. hive.execution.engine=mr.
SLF4J: Failed to load class "org.slf4j.impl.StaticLoggerBinder".
SLF4J: Defaulting to no-operation (NOP) logger implementation
SLF4J: See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details.
root
 |-- clientMarketId: integer (nullable = true)
 |-- clientCountryId: integer (nullable = true)
 |-- clientRegionId: integer (nullable = true)
 |-- clientStateId: integer (nullable = true)
 |-- clientAsnId: integer (nullable = true)
 |-- reporterZoneId: integer (nullable = true)
 |-- reporterCustomerId: integer (nullable = true)
 |-- responseCode: integer (nullable = true)
 |-- measurementValue: integer (nullable = true)
 |-- year: integer (nullable = true)
 |-- month: integer (nullable = true)
 |-- day: integer (nullable = true)
 |-- providerOwnerZoneId: integer (nullable = true)
 |-- providerOwnerCustomerId: integer (nullable = true)
 |-- providerId: integer (nullable = true)
 |-- probeTypeId: integer (nullable = true)

======================================================
INFO  hive.ql.parse.ParseDriver Parsing command: select probeTypeId from df where probeTypeId = 1 limit 1
INFO  hive.ql.parse.ParseDriver Parse Completed
==== results for select probeTypeId from df where probeTypeId = 1 limit 1
======================================================
INFO  o.a.s.sql.parquet.ParquetRelation2 Reading 33.33333333333333% of partitions
INFO  org.apache.spark.storage.MemoryStore ensureFreeSpace(191336) called with curMem=0, maxMem=2061647216
INFO  org.apache.spark.storage.MemoryStore Block broadcast\_0 stored as values in memory (estimated size 186.9 KB, free 1966.0 MB)
INFO  org.apache.spark.storage.MemoryStore ensureFreeSpace(27530) called with curMem=191336, maxMem=2061647216
INFO  org.apache.spark.storage.MemoryStore Block broadcast\_0\_piece0 stored as bytes in memory (estimated size 26.9 KB, free 1965.9 MB)
INFO  o.a.spark.storage.BlockManagerInfo Added broadcast\_0\_piece0 in memory on localhost:62495 (size: 26.9 KB, free: 1966.1 MB)
INFO  o.a.spark.storage.BlockManagerMaster Updated info of block broadcast\_0\_piece0
INFO  org.apache.spark.SparkContext Created broadcast 0 from NewHadoopRDD at newParquet.scala:447
INFO  o.a.h.conf.Configuration.deprecation mapred.max.split.size is deprecated. Instead, use mapreduce.input.fileinputformat.split.maxsize
INFO  o.a.h.conf.Configuration.deprecation mapred.min.split.size is deprecated. Instead, use mapreduce.input.fileinputformat.split.minsize
INFO  o.a.s.s.p.ParquetRelation2$$anon$1$$anon$2 Using Task Side Metadata Split Strategy
INFO  org.apache.spark.SparkContext Starting job: runJob at SparkPlan.scala:121
INFO  o.a.spark.scheduler.DAGScheduler Got job 0 (runJob at SparkPlan.scala:121) with 1 output partitions (allowLocal=false)
INFO  o.a.spark.scheduler.DAGScheduler Final stage: Stage 0(runJob at SparkPlan.scala:121)
INFO  o.a.spark.scheduler.DAGScheduler Parents of final stage: List()
INFO  o.a.spark.scheduler.DAGScheduler Missing parents: List()
INFO  o.a.spark.scheduler.DAGScheduler Submitting Stage 0 (MapPartitionsRDD[3] at map at SparkPlan.scala:96), which has no missing parents
INFO  org.apache.spark.storage.MemoryStore ensureFreeSpace(5512) called with curMem=218866, maxMem=2061647216
INFO  org.apache.spark.storage.MemoryStore Block broadcast\_1 stored as values in memory (estimated size 5.4 KB, free 1965.9 MB)
INFO  org.apache.spark.storage.MemoryStore ensureFreeSpace(3754) called with curMem=224378, maxMem=2061647216
INFO  org.apache.spark.storage.MemoryStore Block broadcast\_1\_piece0 stored as bytes in memory (estimated size 3.7 KB, free 1965.9 MB)
INFO  o.a.spark.storage.BlockManagerInfo Added broadcast\_1\_piece0 in memory on localhost:62495 (size: 3.7 KB, free: 1966.1 MB)
INFO  o.a.spark.storage.BlockManagerMaster Updated info of block broadcast\_1\_piece0
INFO  org.apache.spark.SparkContext Created broadcast 1 from broadcast at DAGScheduler.scala:839
INFO  o.a.spark.scheduler.DAGScheduler Submitting 1 missing tasks from Stage 0 (MapPartitionsRDD[3] at map at SparkPlan.scala:96)
INFO  o.a.s.scheduler.TaskSchedulerImpl Adding task set 0.0 with 1 tasks
INFO  o.a.spark.scheduler.TaskSetManager Starting task 0.0 in stage 0.0 (TID 0, localhost, PROCESS\_LOCAL, 1687 bytes)
INFO  org.apache.spark.executor.Executor Running task 0.0 in stage 0.0 (TID 0)
INFO  o.a.s.s.p.ParquetRelation2$$anon$1 Input split: ParquetInputSplit{part: file:/Users/jon/Downloads/sparksql/1partitionsminusgeo/year=2015/month=1/day=14/providerOwnerZoneId=0/providerOwnerCustomerId=0/providerId=287/probeTypeId=1/part-r-00001.parquet start: 0 end: 8851183 length: 8851183 hosts: [] requestedSchema: message root {
  optional int32 probeTypeId;
}
 readSupportMetadata: {org.apache.spark.sql.parquet.row.requested\_schema={"type":"struct","fields":[{"name":"probeTypeId","type":"integer","nullable":true,"metadata":{}}]}, org.apache.spark.sql.parquet.row.metadata={"type":"struct","fields":[{"name":"clientMarketId","type":"integer","nullable":true,"metadata":{}},{"name":"clientCountryId","type":"integer","nullable":true,"metadata":{}},{"name":"clientRegionId","type":"integer","nullable":true,"metadata":{}},{"name":"clientStateId","type":"integer","nullable":true,"metadata":{}},{"name":"clientAsnId","type":"integer","nullable":true,"metadata":{}},{"name":"reporterZoneId","type":"integer","nullable":true,"metadata":{}},{"name":"reporterCustomerId","type":"integer","nullable":true,"metadata":{}},{"name":"responseCode","type":"integer","nullable":true,"metadata":{}},{"name":"measurementValue","type":"integer","nullable":true,"metadata":{}},{"name":"year","type":"integer","nullable":true,"metadata":{}},{"name":"month","type":"integer","nullable":true,"metadata":{}},{"name":"day","type":"integer","nullable":true,"metadata":{}},{"name":"providerOwnerZoneId","type":"integer","nullable":true,"metadata":{}},{"name":"providerOwnerCustomerId","type":"integer","nullable":true,"metadata":{}},{"name":"providerId","type":"integer","nullable":true,"metadata":{}},{"name":"probeTypeId","type":"integer","nullable":true,"metadata":{}}]}}}
ERROR org.apache.spark.executor.Executor Exception in task 0.0 in stage 0.0 (TID 0)
java.lang.IllegalArgumentException: Column [probeTypeId] was not found in schema!
	at parquet.Preconditions.checkArgument(Preconditions.java:47) ~[parquet-common-1.6.0rc3.jar:na]
	at parquet.filter2.predicate.SchemaCompatibilityValidator.getColumnDescriptor(SchemaCompatibilityValidator.java:172) ~[parquet-column-1.6.0rc3.jar:na]
	at parquet.filter2.predicate.SchemaCompatibilityValidator.validateColumn(SchemaCompatibilityValidator.java:160) ~[parquet-column-1.6.0rc3.jar:na]
	at parquet.filter2.predicate.SchemaCompatibilityValidator.validateColumnFilterPredicate(SchemaCompatibilityValidator.java:142) ~[parquet-column-1.6.0rc3.jar:na]
	at parquet.filter2.predicate.SchemaCompatibilityValidator.visit(SchemaCompatibilityValidator.java:76) ~[parquet-column-1.6.0rc3.jar:na]
	at parquet.filter2.predicate.SchemaCompatibilityValidator.visit(SchemaCompatibilityValidator.java:41) ~[parquet-column-1.6.0rc3.jar:na]
	at parquet.filter2.predicate.Operators$Eq.accept(Operators.java:162) ~[parquet-column-1.6.0rc3.jar:na]
	at parquet.filter2.predicate.SchemaCompatibilityValidator.validate(SchemaCompatibilityValidator.java:46) ~[parquet-column-1.6.0rc3.jar:na]
	at parquet.filter2.compat.RowGroupFilter.visit(RowGroupFilter.java:41) ~[parquet-hadoop-1.6.0rc3.jar:na]
	at parquet.filter2.compat.RowGroupFilter.visit(RowGroupFilter.java:22) ~[parquet-hadoop-1.6.0rc3.jar:na]
	at parquet.filter2.compat.FilterCompat$FilterPredicateCompat.accept(FilterCompat.java:108) ~[parquet-column-1.6.0rc3.jar:na]
	at parquet.filter2.compat.RowGroupFilter.filterRowGroups(RowGroupFilter.java:28) ~[parquet-hadoop-1.6.0rc3.jar:na]
	at parquet.hadoop.ParquetRecordReader.initializeInternalReader(ParquetRecordReader.java:158) ~[parquet-hadoop-1.6.0rc3.jar:na]
	at parquet.hadoop.ParquetRecordReader.initialize(ParquetRecordReader.java:138) ~[parquet-hadoop-1.6.0rc3.jar:na]
	at org.apache.spark.rdd.NewHadoopRDD$$anon$1.<init>(NewHadoopRDD.scala:133) ~[spark-core\_2.10-1.3.0.jar:1.3.0]
	at org.apache.spark.rdd.NewHadoopRDD.compute(NewHadoopRDD.scala:104) ~[spark-core\_2.10-1.3.0.jar:1.3.0]
	at org.apache.spark.rdd.NewHadoopRDD.compute(NewHadoopRDD.scala:66) ~[spark-core\_2.10-1.3.0.jar:1.3.0]
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277) ~[spark-core\_2.10-1.3.0.jar:1.3.0]
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:244) ~[spark-core\_2.10-1.3.0.jar:1.3.0]
	at org.apache.spark.rdd.NewHadoopRDD$NewHadoopMapPartitionsWithSplitRDD.compute(NewHadoopRDD.scala:244) ~[spark-core\_2.10-1.3.0.jar:1.3.0]
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277) ~[spark-core\_2.10-1.3.0.jar:1.3.0]
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:244) ~[spark-core\_2.10-1.3.0.jar:1.3.0]
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35) ~[spark-core\_2.10-1.3.0.jar:1.3.0]
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277) ~[spark-core\_2.10-1.3.0.jar:1.3.0]
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:244) ~[spark-core\_2.10-1.3.0.jar:1.3.0]
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35) ~[spark-core\_2.10-1.3.0.jar:1.3.0]
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277) ~[spark-core\_2.10-1.3.0.jar:1.3.0]
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:244) ~[spark-core\_2.10-1.3.0.jar:1.3.0]
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:61) ~[spark-core\_2.10-1.3.0.jar:1.3.0]
	at org.apache.spark.scheduler.Task.run(Task.scala:64) ~[spark-core\_2.10-1.3.0.jar:1.3.0]
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:203) ~[spark-core\_2.10-1.3.0.jar:1.3.0]
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142) [na:1.8.0\_31]
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617) [na:1.8.0\_31]
	at java.lang.Thread.run(Thread.java:745) [na:1.8.0\_31]
WARN  o.a.spark.scheduler.TaskSetManager Lost task 0.0 in stage 0.0 (TID 0, localhost): java.lang.IllegalArgumentException: Column [probeTypeId] was not found in schema!
	at parquet.Preconditions.checkArgument(Preconditions.java:47)
	at parquet.filter2.predicate.SchemaCompatibilityValidator.getColumnDescriptor(SchemaCompatibilityValidator.java:172)
	at parquet.filter2.predicate.SchemaCompatibilityValidator.validateColumn(SchemaCompatibilityValidator.java:160)
	at parquet.filter2.predicate.SchemaCompatibilityValidator.validateColumnFilterPredicate(SchemaCompatibilityValidator.java:142)
	at parquet.filter2.predicate.SchemaCompatibilityValidator.visit(SchemaCompatibilityValidator.java:76)
	at parquet.filter2.predicate.SchemaCompatibilityValidator.visit(SchemaCompatibilityValidator.java:41)
	at parquet.filter2.predicate.Operators$Eq.accept(Operators.java:162)
	at parquet.filter2.predicate.SchemaCompatibilityValidator.validate(SchemaCompatibilityValidator.java:46)
	at parquet.filter2.compat.RowGroupFilter.visit(RowGroupFilter.java:41)
	at parquet.filter2.compat.RowGroupFilter.visit(RowGroupFilter.java:22)
	at parquet.filter2.compat.FilterCompat$FilterPredicateCompat.accept(FilterCompat.java:108)
	at parquet.filter2.compat.RowGroupFilter.filterRowGroups(RowGroupFilter.java:28)
	at parquet.hadoop.ParquetRecordReader.initializeInternalReader(ParquetRecordReader.java:158)
	at parquet.hadoop.ParquetRecordReader.initialize(ParquetRecordReader.java:138)
	at org.apache.spark.rdd.NewHadoopRDD$$anon$1.<init>(NewHadoopRDD.scala:133)
	at org.apache.spark.rdd.NewHadoopRDD.compute(NewHadoopRDD.scala:104)
	at org.apache.spark.rdd.NewHadoopRDD.compute(NewHadoopRDD.scala:66)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
	at org.apache.spark.rdd.NewHadoopRDD$NewHadoopMapPartitionsWithSplitRDD.compute(NewHadoopRDD.scala:244)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:61)
	at org.apache.spark.scheduler.Task.run(Task.scala:64)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:203)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)

ERROR o.a.spark.scheduler.TaskSetManager Task 0 in stage 0.0 failed 1 times; aborting job
INFO  o.a.s.scheduler.TaskSchedulerImpl Removed TaskSet 0.0, whose tasks have all completed, from pool 
INFO  o.a.s.scheduler.TaskSchedulerImpl Cancelling stage 0
INFO  o.a.spark.scheduler.DAGScheduler Job 0 failed: runJob at SparkPlan.scala:121, took 0.132538 s
INFO  o.s.j.server.handler.ContextHandler stopped o.s.j.s.ServletContextHandler{/metrics/json,null}
INFO  o.s.j.server.handler.ContextHandler stopped o.s.j.s.ServletContextHandler{/stages/stage/kill,null}
INFO  o.s.j.server.handler.ContextHandler stopped o.s.j.s.ServletContextHandler{/,null}
INFO  o.s.j.server.handler.ContextHandler stopped o.s.j.s.ServletContextHandler{/static,null}
INFO  o.s.j.server.handler.ContextHandler stopped o.s.j.s.ServletContextHandler{/executors/threadDump/json,null}
INFO  o.s.j.server.handler.ContextHandler stopped o.s.j.s.ServletContextHandler{/executors/threadDump,null}
INFO  o.s.j.server.handler.ContextHandler stopped o.s.j.s.ServletContextHandler{/executors/json,null}
INFO  o.s.j.server.handler.ContextHandler stopped o.s.j.s.ServletContextHandler{/executors,null}
INFO  o.s.j.server.handler.ContextHandler stopped o.s.j.s.ServletContextHandler{/environment/json,null}
INFO  o.s.j.server.handler.ContextHandler stopped o.s.j.s.ServletContextHandler{/environment,null}
INFO  o.s.j.server.handler.ContextHandler stopped o.s.j.s.ServletContextHandler{/storage/rdd/json,null}
INFO  o.s.j.server.handler.ContextHandler stopped o.s.j.s.ServletContextHandler{/storage/rdd,null}
INFO  o.s.j.server.handler.ContextHandler stopped o.s.j.s.ServletContextHandler{/storage/json,null}
INFO  o.s.j.server.handler.ContextHandler stopped o.s.j.s.ServletContextHandler{/storage,null}
INFO  o.s.j.server.handler.ContextHandler stopped o.s.j.s.ServletContextHandler{/stages/pool/json,null}
INFO  o.s.j.server.handler.ContextHandler stopped o.s.j.s.ServletContextHandler{/stages/pool,null}
INFO  o.s.j.server.handler.ContextHandler stopped o.s.j.s.ServletContextHandler{/stages/stage/json,null}
INFO  o.s.j.server.handler.ContextHandler stopped o.s.j.s.ServletContextHandler{/stages/stage,null}
INFO  o.s.j.server.handler.ContextHandler stopped o.s.j.s.ServletContextHandler{/stages/json,null}
INFO  o.s.j.server.handler.ContextHandler stopped o.s.j.s.ServletContextHandler{/stages,null}
INFO  o.s.j.server.handler.ContextHandler stopped o.s.j.s.ServletContextHandler{/jobs/job/json,null}
INFO  o.s.j.server.handler.ContextHandler stopped o.s.j.s.ServletContextHandler{/jobs/job,null}
INFO  o.s.j.server.handler.ContextHandler stopped o.s.j.s.ServletContextHandler{/jobs/json,null}
INFO  o.s.j.server.handler.ContextHandler stopped o.s.j.s.ServletContextHandler{/jobs,null}
INFO  org.apache.spark.ui.SparkUI Stopped Spark web UI at http://192.168.1.134:4040
INFO  o.a.spark.scheduler.DAGScheduler Stopping DAGScheduler
INFO  o.a.s.MapOutputTrackerMasterActor MapOutputTrackerActor stopped!
INFO  org.apache.spark.storage.MemoryStore MemoryStore cleared
INFO  o.apache.spark.storage.BlockManager BlockManager stopped
INFO  o.a.spark.storage.BlockManagerMaster BlockManagerMaster stopped
INFO  o.a.s.s.OutputCommitCoordinator$OutputCommitCoordinatorActor OutputCommitCoordinator stopped!
INFO  org.apache.spark.SparkContext Successfully stopped SparkContext

org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 0.0 failed 1 times, most recent failure: Lost task 0.0 in stage 0.0 (TID 0, localhost): java.lang.IllegalArgumentException: Column [probeTypeId] was not found in schema!
	at parquet.Preconditions.checkArgument(Preconditions.java:47)
	at parquet.filter2.predicate.SchemaCompatibilityValidator.getColumnDescriptor(SchemaCompatibilityValidator.java:172)
	at parquet.filter2.predicate.SchemaCompatibilityValidator.validateColumn(SchemaCompatibilityValidator.java:160)
	at parquet.filter2.predicate.SchemaCompatibilityValidator.validateColumnFilterPredicate(SchemaCompatibilityValidator.java:142)
	at parquet.filter2.predicate.SchemaCompatibilityValidator.visit(SchemaCompatibilityValidator.java:76)
	at parquet.filter2.predicate.SchemaCompatibilityValidator.visit(SchemaCompatibilityValidator.java:41)
	at parquet.filter2.predicate.Operators$Eq.accept(Operators.java:162)
	at parquet.filter2.predicate.SchemaCompatibilityValidator.validate(SchemaCompatibilityValidator.java:46)
	at parquet.filter2.compat.RowGroupFilter.visit(RowGroupFilter.java:41)
	at parquet.filter2.compat.RowGroupFilter.visit(RowGroupFilter.java:22)
	at parquet.filter2.compat.FilterCompat$FilterPredicateCompat.accept(FilterCompat.java:108)
	at parquet.filter2.compat.RowGroupFilter.filterRowGroups(RowGroupFilter.java:28)
	at parquet.hadoop.ParquetRecordReader.initializeInternalReader(ParquetRecordReader.java:158)
	at parquet.hadoop.ParquetRecordReader.initialize(ParquetRecordReader.java:138)
	at org.apache.spark.rdd.NewHadoopRDD$$anon$1.<init>(NewHadoopRDD.scala:133)
	at org.apache.spark.rdd.NewHadoopRDD.compute(NewHadoopRDD.scala:104)
	at org.apache.spark.rdd.NewHadoopRDD.compute(NewHadoopRDD.scala:66)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
	at org.apache.spark.rdd.NewHadoopRDD$NewHadoopMapPartitionsWithSplitRDD.compute(NewHadoopRDD.scala:244)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:61)
	at org.apache.spark.scheduler.Task.run(Task.scala:64)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:203)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)

Driver stacktrace:
	at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$failJobAndIndependentStages(DAGScheduler.scala:1203)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1192)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1191)
	at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
	at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
	at org.apache.spark.scheduler.DAGScheduler.abortStage(DAGScheduler.scala:1191)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:693)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:693)
	at scala.Option.foreach(Option.scala:236)
	at org.apache.spark.scheduler.DAGScheduler.handleTaskSetFailed(DAGScheduler.scala:693)
	at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1393)
	at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1354)
	at org.apache.spark.util.EventLoop$$anon$1.run(EventLoop.scala:48)

Mar 26, 2015 6:06:02 AM INFO: parquet.filter2.compat.FilterCompat: Filtering using predicate: eq(probeTypeId, 1)
Mar 26, 2015 6:06:02 AM WARNING: parquet.hadoop.ParquetRecordReader: Can not initialize counter due to context is not a instance of TaskInputOutputContext, but is org.apache.hadoop.mapreduce.task.TaskAttemptContextImpl
Mar 26, 2015 6:06:02 AM INFO: parquet.filter2.compat.FilterCompat: Filtering using predicate: eq(probeTypeId, 1)

Process finished with exit code 255
{noformat}


---

* [SPARK-6553](https://issues.apache.org/jira/browse/SPARK-6553) | *Major* | **Support for functools.partial as UserDefinedFunction**

Currently {{functools.partial}} s cannot be used as {{UserDefinedFunction}} s for {{DataFrame}} s, as  the {{\\_\\_name\\_\\_}} attribute does not exist. Passing a {{functools.partial}} object will raise an Exception at https://github.com/apache/spark/blob/master/python/pyspark/sql/functions.py#L126. 

{{functools.partial}} is very widely used and should probably be supported, despite its lack of a {{\\_\\_name\\_\\_}}.

My suggestion is to use {{f.\\_\\_repr\\_\\_()}} instead, or check with {{hasattr(f, '\\_\\_name\\_\\_)}} and use {{\\_\\_class\\_\\_}} if {{False}}.


---

* [SPARK-6552](https://issues.apache.org/jira/browse/SPARK-6552) | *Minor* | **expose start-slave.sh to user and update outdated doc**

It would be better to expose start-slave.sh to user to allow starting a worker on single node.

As the description for starting a worker in document is in foregroud way, I alse changed it to backgroud way(using start-slave.sh).


---

* [SPARK-6550](https://issues.apache.org/jira/browse/SPARK-6550) | *Major* | **Add PreAnalyzer to keep logical plan consistent across DataFrame**

h2. Problems

In some cases, the expressions in a logical plan will be modified to new ones during analysis, e.g. the handling for self-join cases. If some expressions are resolved based on the analyzed plan, they are referring to changed expression ids, not original ids.

But the transformation of DataFrame will use logical plan to construct new DataFrame, e.g. {{groupBy}} and aggregation. So in such cases, the expressions in these DataFrames will be inconsistent.

The problems are specified as following:

# Expression ids in logical plan are possibly inconsistent if expression ids are changed during analysis and some expressions are resolved after that

When we try to run the following codes:
{code}
val df = Seq(1,2,3).map(i => (i, i.toString)).toDF("int", "str")
val df2 = df.as('x).join(df.as('y), $"x.str" === $"y.str").groupBy("y.str").min("y.int")
{code}

Because {{groupBy}} and {{min}} will perform resolving based on the analyzed logical plan, their expression ids refer to analyzed plan, instead of logical plan.

So the logical plan of df2 looks like:

{code}
'Aggregate [str#5], [str#5,MIN(int#4) AS MIN(int)#6]
 'Join Inner, Some(('x.str = 'y.str))
  Subquery x
   Project [\_1#0 AS int#2,\_2#1 AS str#3]
    LocalRelation [\_1#0,\_2#1], [[1,1],[2,2],[3,3]]
  Subquery y
   Project [\_1#0 AS int#2,\_2#1 AS str#3]
    LocalRelation [\_1#0,\_2#1], [[1,1],[2,2],[3,3]]
{code}

As you see, the expression ids in {{Aggregate}} are different to the expression ids in {{Subquery y}}. This is the first problem.

# The {{df2}} can't be performed

The showing logical plan of {{df2}} can't be performed. Because the expression ids of {{Subquery y}} will be modified for self-join handling during analysis, the analyzed plan of {{df2}} becomes:

{code}
Aggregate [str#5], [str#5,MIN(int#4) AS MIN(int)#6]
 Join Inner, Some((str#3 = str#8))
  Subquery x
   Project [\_1#0 AS int#2,\_2#1 AS str#3]
    LocalRelation [\_1#0,\_2#1], [[1,1],[2,2],[3,3]]
  Subquery y
   Project [\_1#0 AS int#7,\_2#1 AS str#8]
    LocalRelation [\_1#0,\_2#1], [[1,1],[2,2],[3,3]]
{code}

The expressions referred in {{Aggregate}} are not matching to these in {{Subquery y}}. This is the second problem.

h2. Proposed solution

We try to add a {{PreAnalyzer}}. When a logical plan {{rawPlan}} is given to SQLContext, it uses PreAnalyzer to modify the logical plan before assigning to {{QueryExecution.logical}}. Then later operations will based on the pre-analyzed logical plan, instead of the original {{rawPlan}}.


---

* [SPARK-6546](https://issues.apache.org/jira/browse/SPARK-6546) | *Major* | **Build failure caused by PR #5029 together with #4289**

PR [#4289|https://github.com/apache/spark/pull/4289] was using Guava's {{com.google.common.io.Files}} according to the first commit of that PR, see [here|https://github.com/jeanlyn/spark/blob/3b27af36f82580c2171df965140c9a14e62fd5f0/sql/hive/src/test/scala/org/apache/spark/sql/hive/InsertIntoHiveTableSuite.scala#L22]. However, [PR #5029|https://github.com/apache/spark/pull/5029] was merged earlier, and deprecated Guava {{Files}} by {{Utils.Files}}. These two combined caused this build failure. (There're no conflicts in the eyes of Git, but there do exist semantic conflicts.)


---

* [SPARK-6544](https://issues.apache.org/jira/browse/SPARK-6544) | *Major* | **Problem with Avro and Kryo Serialization**

We're running in to the following bug with Avro 1.7.6 and the Kryo serializer causing jobs to fail

https://issues.apache.org/jira/browse/AVRO-1476?focusedCommentId=13999249&page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel#comment-13999249

PR here
https://github.com/apache/spark/pull/5193


---

* [SPARK-6542](https://issues.apache.org/jira/browse/SPARK-6542) | *Major* | **Add CreateStruct as an Expression**

Similar to CreateArray, we can add CreateStruct as an Expression.


---

* [SPARK-6538](https://issues.apache.org/jira/browse/SPARK-6538) | *Major* | **Add missing nullable Metastore fields when merging a Parquet schema**

When Spark SQL infers a schema for a DataFrame, it will take the union of all field types present in the structured source data (e.g. an RDD of JSON data). When the source data for a row doesn't define a particular field on the DataFrame's schema, a null value will simply be assumed for this field. This workflow makes it very easy to construct tables and query over a set of structured data with a nonuniform schema. However, this behavior is not consistent in some cases when dealing with Parquet files and an external table managed by an external Hive metastore.

In our particular usecase, we use Spark Streaming to parse and transform our input data and then apply a window function to save an arbitrary-sized batch of data as a Parquet file, which itself will be added as a partition to an external Hive table via an "ALTER TABLE... ADD PARTITION..." statement. Since our input data is nonuniform, it is expected that not every partition batch will contain every field present in the table's schema obtained from the Hive metastore. As such, we expect that the schema of some of our Parquet files may not contain the same set fields present in the full metastore schema.

In such cases, it seems natural that Spark SQL would simply assume null values for any missing fields in the partition's Parquet file, assuming these fields are specified as nullable by the metastore schema. This is not the case in the current implementation of ParquetRelation2. The mergeMetastoreParquetSchema() method used to reconcile differences between a Parquet file's schema and a schema retrieved from the Hive metastore will raise an exception if the Parquet file doesn't match the same set of fields specified by the metastore.

I propose altering this implementation in order to allow for any missing metastore fields marked as nullable to be merged in to the Parquet file's schema before continuing with the checks present in mergeMetastoreParquetSchema().

Classifying this as a bug as it exposes inconsistent behavior, IMHO. If you feel this should be an improvement or new feature instead, please feel free to reclassify this issue.


---

* [SPARK-6537](https://issues.apache.org/jira/browse/SPARK-6537) | *Minor* | **UIWorkloadGenerator: The main thread should not stop SparkContext until all jobs finish**

The main thread of UIWorkloadGenerator spawn sub threads to launch jobs but the main thread stop SparkContext without waiting for finishing those threads.


---

* [SPARK-6536](https://issues.apache.org/jira/browse/SPARK-6536) | *Major* | **Add IN to python Column**

In scala you can check for membership in a set using the DSL function {{in}}

{code}
df("column").in(lit(1), lit(2))
{code}

It would be nice to be able to do something similar in python (possibly without the lits (which we might revisit for scala as well) /cc [~rxin]


---

* [SPARK-6532](https://issues.apache.org/jira/browse/SPARK-6532) | *Minor* | **LDAModel.scala fails scalastyle on Windows**

When executing mvn -Pyarn -Phadoop-2.4 -Dhadoop.version=2.5.2 -DskipTests -X clean package, the build fails with the error:
[DEBUG] Configuring mojo org.scalastyle:scalastyle-maven-plugin:0.4.0:check from plugin realm ClassRealm[plugin>org.sca
astyle:scalastyle-maven-plugin:0.4.0, parent: sun.misc.Launcher$AppClassLoader@1174ec5]
[DEBUG] Configuring mojo 'org.scalastyle:scalastyle-maven-plugin:0.4.0:check' with basic configurator -->
[DEBUG]   (f) baseDirectory = C:\Users\u6013553\spark-1.3.0\spark-1.3.0\mllib
[DEBUG]   (f) buildDirectory = C:\Users\u6013553\spark-1.3.0\spark-1.3.0\mllib\target
[DEBUG]   (f) configLocation = scalastyle-config.xml
[DEBUG]   (f) failOnViolation = true
[DEBUG]   (f) failOnWarning = false
[DEBUG]   (f) includeTestSourceDirectory = false
[DEBUG]   (f) outputEncoding = UTF-8
[DEBUG]   (f) outputFile = C:\Users\u6013553\spark-1.3.0\spark-1.3.0\mllib\scalastyle-output.xml
[DEBUG]   (f) quiet = false
[DEBUG]   (f) skip = false
[DEBUG]   (f) sourceDirectory = C:\Users\u6013553\spark-1.3.0\spark-1.3.0\mllib\src\main\scala
[DEBUG]   (f) testSourceDirectory = C:\Users\u6013553\spark-1.3.0\spark-1.3.0\mllib\src\test\scala
[DEBUG]   (f) verbose = false
[DEBUG]   (f) project = MavenProject: org.apache.spark:spark-mllib\_2.10:1.3.0 @ C:\Users\u6013553\spark-1.3.0\spark-1.3
0\mllib\dependency-reduced-pom.xml
[DEBUG] -- end configuration --
[DEBUG] failOnWarning=false
[DEBUG] verbose=false
[DEBUG] quiet=false
[DEBUG] sourceDirectory=C:\Users\u6013553\spark-1.3.0\spark-1.3.0\mllib\src\main\scala
[DEBUG] includeTestSourceDirectory=false
[DEBUG] buildDirectory=C:\Users\u6013553\spark-1.3.0\spark-1.3.0\mllib\target
[DEBUG] baseDirectory=C:\Users\u6013553\spark-1.3.0\spark-1.3.0\mllib
[DEBUG] outputFile=C:\Users\u6013553\spark-1.3.0\spark-1.3.0\mllib\scalastyle-output.xml
[DEBUG] outputEncoding=UTF-8
[DEBUG] inputEncoding=null
[DEBUG] processing sourceDirectory=C:\Users\u6013553\spark-1.3.0\spark-1.3.0\mllib\src\main\scala encoding=null
error file=C:\Users\u6013553\spark-1.3.0\spark-1.3.0\mllib\src\main\scala\org\apache\spark\mllib\clustering\LDAModel.sc
la message=Input length = 1
Saving to outputFile=C:\Users\u6013553\spark-1.3.0\spark-1.3.0\mllib\scalastyle-output.xml
Processed 143 file(s)
Found 1 errors
Found 0 warnings
Found 0 infos
Finished in 1571 ms

scalastyle-output.xml reports
<?xml version="1.0" encoding="UTF-8"?>
<checkstyle version="5.0">
 <file name="C:\Users\u6013553\spark-1.3.0\spark-1.3.0\mllib\src\main\scala\org\apache\spark\mllib\clustering\LDAModel.scala">
  <error severity="error" message="Input length = 1"></error>
 </file>
</checkstyle>


---

* [SPARK-6526](https://issues.apache.org/jira/browse/SPARK-6526) | *Major* | **Add Normalizer transformer**

https://github.com/apache/spark/pull/5181


---

* [SPARK-6515](https://issues.apache.org/jira/browse/SPARK-6515) | *Minor* | **Use while(true) in OpenHashSet.getPos**

Though I don't see any bug in the existing code, using `while (true)` makes the code read better.


---

* [SPARK-6514](https://issues.apache.org/jira/browse/SPARK-6514) | *Major* | **For Kinesis Streaming, use the same region for DynamoDB (KCL checkpoints) as the Kinesis stream itself**

context:  i started the original Kinesis impl with KCL 1.0 (not supported), then finished on KCL 1.1 (supported) without realizing that it's supported.

also, we should upgrade to the latest Kinesis Client Library (KCL) which is currently v1.2 right now, i believe.


---

* [SPARK-6512](https://issues.apache.org/jira/browse/SPARK-6512) | *Minor* | **Add contains to OpenHashMap**

Add `contains` to test whether a key exists in an OpenHashMap.


---

* [SPARK-6510](https://issues.apache.org/jira/browse/SPARK-6510) | *Major* | **Add Graph#minus method to act as Set#difference**

Right now GraphX does not have a Set#difference method to operate on VertexIds. We do however have a {{diff}} method although that works on values. Given the optimizations of tombstoning already present this method can be implemented in a very efficient manner.


---

* [SPARK-6506](https://issues.apache.org/jira/browse/SPARK-6506) | *Major* | **python support yarn cluster mode requires SPARK\_HOME to be set**

We added support for python running in yarn cluster mode in https://issues.apache.org/jira/browse/SPARK-5173, but it requires that SPARK\_HOME be set in the environment variables for application master and executor.  It doesn't have to be set to anything real but it fails if its not set.  See the command at the end of: https://github.com/apache/spark/pull/3976


---

* [SPARK-6505](https://issues.apache.org/jira/browse/SPARK-6505) | *Minor* | **Remove the reflection call in HiveFunctionWrapper**

While trying to fix SPARK-4785, we introduced {{HiveFunctionWrapper}}, and added two not so necessary reflection calls there. These calls had caused some dependency hell problems for MapR distribution of Spark.


---

* [SPARK-6496](https://issues.apache.org/jira/browse/SPARK-6496) | *Major* | **Multinomial Logistic Regression failed when initialWeights is not null**

This bug is easy to reproduce, when use Multinomial Logistic Regression to train multiclass classification model with non-null initialWeights, it will throw an exception.
When you run
{code}
val lr = new LogisticRegressionWithLBFGS().setNumClasses(3)
val model = lr.run(input, initialWeights)
{code}
It will throw
{code}
requirement failed: LogisticRegressionModel.load with numClasses = 3 and numFeatures = -1 expected weights of length -2 (without intercept) or 0 (with intercept), but was given weights of length 10
java.lang.IllegalArgumentException: requirement failed: LogisticRegressionModel.load with numClasses = 3 and numFeatures = -1 expected weights of length -2 (without intercept) or 0 (with intercept), but was given weights of length 10
{code}


---

* [SPARK-6492](https://issues.apache.org/jira/browse/SPARK-6492) | *Critical* | **SparkContext.stop() can deadlock when DAGSchedulerEventProcessLoop dies**

A deadlock can occur when DAGScheduler death causes a SparkContext to be shut down while user code is concurrently racing to stop the SparkContext in a finally block.

For example:

{code}
try {
      sc = new SparkContext("local", "test")
      // start running a job that causes the DAGSchedulerEventProcessor to crash
      someRDD.doStuff()
    }
} finally {
  sc.stop() // stop the sparkcontext once the failure in DAGScheduler causes the above job to fail with an exception
}
{code}

This leads to a deadlock.  The event processor thread tries to lock on the {{SparkContext.SPARK\_CONTEXT\_CONSTRUCTOR\_LOCK}} and becomes blocked because the thread that holds that lock is waiting for the event processor thread to join:

{code}
"dag-scheduler-event-loop" daemon prio=5 tid=0x00007ffa69456000 nid=0x9403 waiting for monitor entry [0x00000001223ad000]
   java.lang.Thread.State: BLOCKED (on object monitor)
	at org.apache.spark.SparkContext.stop(SparkContext.scala:1398)
	- waiting to lock <0x00000007f5037b08> (a java.lang.Object)
	at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onError(DAGScheduler.scala:1412)
	at org.apache.spark.util.EventLoop$$anon$1.run(EventLoop.scala:52)
{code}

{code}
"pool-1-thread-1-ScalaTest-running-SparkContextSuite" prio=5 tid=0x00007ffa69864800 nid=0x5903 in Object.wait() [0x00000001202dc000]
   java.lang.Thread.State: WAITING (on object monitor)
	at java.lang.Object.wait(Native Method)
	- waiting on <0x00000007f4b28000> (a org.apache.spark.util.EventLoop$$anon$1)
	at java.lang.Thread.join(Thread.java:1281)
	- locked <0x00000007f4b28000> (a org.apache.spark.util.EventLoop$$anon$1)
	at java.lang.Thread.join(Thread.java:1355)
	at org.apache.spark.util.EventLoop.stop(EventLoop.scala:79)
	at org.apache.spark.scheduler.DAGScheduler.stop(DAGScheduler.scala:1352)
	at org.apache.spark.SparkContext.stop(SparkContext.scala:1405)
	- locked <0x00000007f5037b08> (a java.lang.Object)
[...]
{code}


---

* [SPARK-6490](https://issues.apache.org/jira/browse/SPARK-6490) | *Major* | **Deprecate configurations for "askWithReply" and use new configuration names**

After we rewrite all Akka "ask" places with RpcEndpointRef.askWithReply, we should deprecate "spark.akka.num.retries", "spark.akka.retry.wait" and "spark.akka.lookupTimeout", and use "spark.rpc.num.retries", "spark.rpc.retry.wait" and "spark.rpc.lookupTimeout".


---

* [SPARK-6483](https://issues.apache.org/jira/browse/SPARK-6483) | *Major* | **Spark SQL udf(ScalaUdf) is very slow**

Test case: 
1. 
register "floor" func with command: 
sqlContext.udf.register("floor", (ts: Int) => ts - ts % 300), 
then run with sql "select chan, floor(ts) as tt, sum(size) from qlogbase3 group by chan, floor(ts)", 

*it takes 17 minutes.*

{quote}
== Physical Plan ==                                                             
Aggregate false, [chan#23015,PartialGroup#23500], [chan#23015,PartialGroup#23500 AS tt#23494,CombineSum(PartialSum#23499L) AS c2#23495L] 
 Exchange (HashPartitioning [chan#23015,PartialGroup#23500], 54) 
  Aggregate true, [chan#23015,scalaUDF(ts#23016)], [chan#23015,*scalaUDF*(ts#23016) AS PartialGroup#23500,SUM(size#23023L) AS PartialSum#23499L] 
   PhysicalRDD [chan#23015,ts#23016,size#23023L], MapPartitionsRDD[115] at map at newParquet.scala:562 
{quote}
2. 
run with sql "select chan, (ts - ts % 300) as tt, sum(size) from qlogbase3 group by chan, (ts - ts % 300)", 

*it takes only 5 minutes.*
{quote}
== Physical Plan == 
Aggregate false, [chan#23015,PartialGroup#23349], [chan#23015,PartialGroup#23349 AS tt#23343,CombineSum(PartialSum#23348L) AS c2#23344L]               
 Exchange (HashPartitioning [chan#23015,PartialGroup#23349], 54)       
  Aggregate true, [chan#23015,(ts#23016 - (ts#23016 % 300))], [chan#23015,*(ts#23016 - (ts#23016 % 300))* AS PartialGroup#23349,SUM(size#23023L) AS PartialSum#23348L] 
   PhysicalRDD [chan#23015,ts#23016,size#23023L], MapPartitionsRDD[83] at map at newParquet.scala:562 
{quote}
3. 
use *HiveContext* with sql "select chan, floor((ts - ts % 300)) as tt, sum(size) from qlogbase3 group by chan, floor((ts - ts % 300))" 

*it takes only 5 minutes too. *
{quote}
== Physical Plan == 
Aggregate false, [chan#23015,PartialGroup#23108L], [chan#23015,PartialGroup#23108L AS tt#23102L,CombineSum(PartialSum#23107L) AS \_c2#23103L] 
 Exchange (HashPartitioning [chan#23015,PartialGroup#23108L], 54) 
  Aggregate true, [chan#23015,HiveGenericUdf#org.apache.hadoop.hive.ql.udf.generic.GenericUDFFloor((ts#23016 - (ts#23016 % 300)))], [chan#23015,*HiveGenericUdf*#org.apache.hadoop.hive.ql.udf.generic.GenericUDFFloor((ts#23016 - (ts#23016 % 300))) AS PartialGroup#23108L,SUM(size#23023L) AS PartialSum#23107L] 
   PhysicalRDD [chan#23015,ts#23016,size#23023L], MapPartitionsRDD[28] at map at newParquet.scala:562 
{quote}

*Why? ScalaUdf is so slow?? How to improve it?*


---

* [SPARK-6480](https://issues.apache.org/jira/browse/SPARK-6480) | *Major* | **histogram() bucket function is wrong in some simple edge cases**

(Credit to a customer report here) This test would fail now: 

{code}
    val rdd = sc.parallelize(Seq(1, 1, 1, 2, 3, 3))
    assert(Array(3, 1, 2) === rdd.map(\_.toDouble).histogram(3).\_2)
{code}

Because it returns 3, 1, 0. The problem ultimately traces to the 'fast' bucket function that judges buckets based on a multiple of the gap between first and second elements. Errors multiply and the end of the final bucket fails to include the max.

Fairly plausible use case actually.

This can be tightened up easily with a slightly better expression. It will also fix this test, which is actually expecting the wrong answer:

{code}
    val rdd = sc.parallelize(6 to 99)
    val (histogramBuckets, histogramResults) = rdd.histogram(9)
    val expectedHistogramResults =
      Array(11, 10, 11, 10, 10, 11, 10, 10, 11)
{code}

(Should be {{Array(11, 10, 10, 11, 10, 10, 11, 10, 11)}})


---

* [SPARK-6479](https://issues.apache.org/jira/browse/SPARK-6479) | *Major* | **Create external block store API**

Would be great to create APIs for external block stores, rather than doing a bunch of if statements everywhere.


---

* [SPARK-6477](https://issues.apache.org/jira/browse/SPARK-6477) | *Minor* | **Run MIMA tests before the Spark test suite**

Right now the MIMA tests are the last thing to run, yet run very quickly and, if they fail, didn't need the entire Spark test suite to have completed first. I propose we move the MIMA tests to run before the full Spark suite so that builds that fail the MIMA checks will return much faster.


---

* [SPARK-6475](https://issues.apache.org/jira/browse/SPARK-6475) | *Major* | **DataFrame should support array types when creating DFs from JavaBeans.**

If we have a JavaBean class with array fields, SQL throws an exception in `createDataFrame` because arrays are not matched in `getSchema` from a JavaBean class.


---

* [SPARK-6473](https://issues.apache.org/jira/browse/SPARK-6473) | *Minor* | **Launcher lib shouldn't try to figure out Scala version when not in dev mode**

Thanks to [~nravi] for pointing this out.

The launcher library currently always tries to figure out what's the build's scala version, even when it's not needed. That code is only used when setting some dev options, and relies on the layout of the build directories, so it doesn't work with the directory layout created by make-distribution.sh.

Right now this works on Linux because bin/load-spark-env.sh sets the Scala version explicitly, but it would break the distribution on Windows, for example.

Fix is pretty straight-forward.


---

* [SPARK-6471](https://issues.apache.org/jira/browse/SPARK-6471) | *Blocker* | **Metastore schema should only be a subset of parquet schema to support dropping of columns using replace columns**

Currently in the parquet relation 2 implementation, error is thrown in case merged schema is not exactly the same as metastore schema. 
But to support cases like deletion of column using replace column command, we can relax the restriction so that even if metastore schema is a subset of merged parquet schema, the query will work.


---

* [SPARK-6469](https://issues.apache.org/jira/browse/SPARK-6469) | *Minor* | **Improving documentation on YARN local directories usage**

According to the [Spark YARN doc page|http://spark.apache.org/docs/latest/running-on-yarn.html#important-notes], Spark executors will use the local directories configured for YARN, not {{spark.local.dir}} which should be ignored.

However it should be noted that in yarn-client mode, though the executors will indeed use the local directories configured for YARN, the driver will not, because it is not running on the YARN cluster; the driver in yarn-client will use the local directories defined in {{spark.local.dir}}

Can this please be clarified in the Spark YARN documentation above?


---

* [SPARK-6468](https://issues.apache.org/jira/browse/SPARK-6468) | *Minor* | **Fix the race condition of subDirs in DiskBlockManager**

There are two race conditions of subDirs in DiskBlockManager:

1. `getAllFiles` does not use correct locks to read the contents in `subDirs`. Although it's designed for testing, it's still worth to add correct locks to eliminate the race condition.

2. The double-check has a race condition in `getFile(filename: String)`. If a thread finds `subDirs(dirId)(subDirId)` is not null out of the `synchronized` block, it may not be able to see the correct content of the File instance pointed by `subDirs(dirId)(subDirId)` according to the Java memory model (there is no volatile variable here).


---

* [SPARK-6465](https://issues.apache.org/jira/browse/SPARK-6465) | *Critical* | **GenericRowWithSchema: KryoException: Class cannot be created (missing no-arg constructor):**

I can not find a issue for this. 

register for GenericRowWithSchema is lost in  org.apache.spark.sql.execution.SparkSqlSerializer.

Is this the only thing we need to do?

Here is the log

{code}
15/03/23 16:21:00 WARN TaskSetManager: Lost task 9.0 in stage 20.0 (TID 31978, datanode06.site): com.esotericsoftware.kryo.KryoException: Class cannot be created (missing no-arg constructor): org.apache.spark.sql.catalyst.expressions.GenericRowWithSchema
        at com.esotericsoftware.kryo.Kryo.newInstantiator(Kryo.java:1050)
        at com.esotericsoftware.kryo.Kryo.newInstance(Kryo.java:1062)
        at com.esotericsoftware.kryo.serializers.FieldSerializer.create(FieldSerializer.java:228)
        at com.esotericsoftware.kryo.serializers.FieldSerializer.read(FieldSerializer.java:217)
        at com.esotericsoftware.kryo.Kryo.readClassAndObject(Kryo.java:732)
        at com.twitter.chill.Tuple2Serializer.read(TupleSerializers.scala:42)
        at com.twitter.chill.Tuple2Serializer.read(TupleSerializers.scala:33)
        at com.esotericsoftware.kryo.Kryo.readClassAndObject(Kryo.java:732)
        at org.apache.spark.serializer.KryoDeserializationStream.readObject(KryoSerializer.scala:138)
        at org.apache.spark.serializer.DeserializationStream$$anon$1.getNext(Serializer.scala:133)
        at org.apache.spark.util.NextIterator.hasNext(NextIterator.scala:71)
        at org.apache.spark.util.CompletionIterator.hasNext(CompletionIterator.scala:32)
        at scala.collection.Iterator$$anon$13.hasNext(Iterator.scala:371)
        at org.apache.spark.util.CompletionIterator.hasNext(CompletionIterator.scala:32)
        at org.apache.spark.InterruptibleIterator.hasNext(InterruptibleIterator.scala:39)
        at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
        at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
        at org.apache.spark.sql.execution.joins.HashJoin$$anon$1.hasNext(HashJoin.scala:66)
        at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
        at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
        at org.apache.spark.util.collection.ExternalSorter.insertAll(ExternalSorter.scala:217)
        at org.apache.spark.shuffle.sort.SortShuffleWriter.write(SortShuffleWriter.scala:63)
        at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:68)
        at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:41)
        at org.apache.spark.scheduler.Task.run(Task.scala:64)
        at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:203)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1110)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:603)
        at java.lang.Thread.run(Thread.java:722)
{code}


---

* [SPARK-6463](https://issues.apache.org/jira/browse/SPARK-6463) | *Critical* | **AttributeSet.equal should compare size**

AttributeSet.equal should compare both member and size, otherwise it could return true when the left is a subset of the right.


---

* [SPARK-6459](https://issues.apache.org/jira/browse/SPARK-6459) | *Critical* | **Warn when Column API is constructing trivially true equality**

Right now its pretty confusing when a user constructs and equality predicate that is going to be use in a self join, where the optimizer cannot distinguish between the attributes in question (e.g.,  [SPARK-6231]).  Since there is really no good reason to do this, lets print a warning.


---

* [SPARK-6458](https://issues.apache.org/jira/browse/SPARK-6458) | *Critical* | **Bad error message for invalid data sources**

Create a table where the datasources is some random class.  The error message is not very helpful:

{code}
Caused by: scala.MatchError: org.postgresql.Driver@2e0d0929 (of class org.postgresql.Driver)
	at org.apache.spark.sql.sources.ResolvedDataSource$.apply(ddl.scala:288)
{code}


---

* [SPARK-6457](https://issues.apache.org/jira/browse/SPARK-6457) | *Minor* | **Error when calling Pyspark RandomForestModel.load**

Reported by [https://github.com/catmonkeylee]:

Summary: PySpark RandomForestModel.load fails in test script.  It appears that the saved model file is empty.

{quote}
When I run the sample code in cluster mode, there is an error.

Traceback (most recent call last):
File "/data1/s/apps/spark-app/app/sample\_rf.py", line 25, in 
sameModel = RandomForestModel.load(sc, model\_path)
File "/home/s/apps/spark/python/pyspark/mllib/util.py", line 254, in load
java\_model = cls.load\_java(sc, path)
File "/home/s/apps/spark/python/pyspark/mllib/util.py", line 250, in \_load\_java
return java\_obj.load(sc.\_jsc.sc(), path)
File "/home/s/apps/spark/python/lib/py4j-0.8.2.1-src.zip/py4j/java\_gateway.py", line 538, in \_\_call
File "/home/s/apps/spark/python/lib/py4j-0.8.2.1-src.zip/py4j/protocol.py", line 300, in get\_return\_value
py4j.protocol.Py4JJavaError: An error occurred while calling z:org.apache.spark.mllib.tree.model.RandomForestModel.load.
: java.lang.UnsupportedOperationException: empty collection
at org.apache.spark.rdd.RDD.first(RDD.scala:1191)
at org.apache.spark.mllib.util.Loader$.loadMetadata(modelSaveLoad.scala:125)
at org.apache.spark.mllib.tree.model.RandomForestModel$.load(treeEnsembleModels.scala:65)
at org.apache.spark.mllib.tree.model.RandomForestModel.load(treeEnsembleModels.scala)
at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
{quote}

{quote}
I run the code on a spark cluster , spark version is 1.3.0

The test code:
===================================
from pyspark import SparkContext, SparkConf
from pyspark.mllib.tree import RandomForest, RandomForestModel
from pyspark.mllib.util import MLUtils

conf = SparkConf().setAppName('LocalTest')
sc = SparkContext(conf=conf)
data = MLUtils.loadLibSVMFile(sc, 'data/mllib/sample\_libsvm\_data.txt')
print data.count()
(trainingData, testData) = data.randomSplit([0.7, 0.3])
model = RandomForest.trainClassifier(trainingData, numClasses=2, categoricalFeaturesInfo={},
                                     numTrees=3, featureSubsetStrategy="auto",
                                     impurity='gini', maxDepth=4, maxBins=32)

# Evaluate model on test instances and compute test error
predictions = model.predict(testData.map(lambda x: x.features))
labelsAndPredictions = testData.map(lambda lp: lp.label).zip(predictions)
testErr = labelsAndPredictions.filter(lambda (v, p): v != p).count() / float(testData.count())
print('Test Error = ' + str(testErr))
print('Learned classification forest model:')
print(model.toDebugString())

# Save and load model
\_model\_path = "/home/s/apps/spark-app/data/myModelPath"
model.save(sc, \_model\_path)
sameModel = RandomForestModel.load(sc, \_model\_path)
sc.stop()

===================
run command:
spark-submit --master spark://t0.q.net:7077 --executor-memory 1G sample\_rf.py

======================
Then I get this error :


Traceback (most recent call last):
  File "/data1/s/apps/spark-app/app/sample\_rf.py", line 25, in <module>
    sameModel = RandomForestModel.load(sc, \_model\_path)
  File "/home/s/apps/spark/python/pyspark/mllib/util.py", line 254, in load
    java\_model = cls.\_load\_java(sc, path)
  File "/home/s/apps/spark/python/pyspark/mllib/util.py", line 250, in \_load\_java
    return java\_obj.load(sc.\_jsc.sc(), path)
  File "/home/s/apps/spark/python/lib/py4j-0.8.2.1-src.zip/py4j/java\_gateway.py", line 538, in \_\_call\_\_
  File "/home/s/apps/spark/python/lib/py4j-0.8.2.1-src.zip/py4j/protocol.py", line 300, in get\_return\_value
py4j.protocol.Py4JJavaError: An error occurred while calling z:org.apache.spark.mllib.tree.model.RandomForestModel.load.
: java.lang.UnsupportedOperationException: empty collection
at org.apache.spark.rdd.RDD.first(RDD.scala:1191)
at org.apache.spark.mllib.util.Loader$.loadMetadata(modelSaveLoad.scala:125)
at org.apache.spark.mllib.tree.model.RandomForestModel$.load(treeEnsembleModels.scala:65)
at org.apache.spark.mllib.tree.model.RandomForestModel.load(treeEnsembleModels.scala)
at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
at java.lang.reflect.Method.invoke(Method.java:606)
at py4j.reflection.MethodInvoker.invoke(MethodInvoker.java:231)
at py4j.reflection.ReflectionEngine.invoke(ReflectionEngine.java:379)
at py4j.Gateway.invoke(Gateway.java:259)
at py4j.commands.AbstractCommand.invokeMethod(AbstractCommand.java:133)
at py4j.commands.CallCommand.execute(CallCommand.java:79)
at py4j.GatewayConnection.run(GatewayConnection.java:207)
at java.lang.Thread.run(Thread.java:724)
{quote}


---

* [SPARK-6455](https://issues.apache.org/jira/browse/SPARK-6455) | *Trivial* | **Correct some mistakes and typos**

Correct some mistakes and typos, especially the one in lib/PageRank.scala: the first implementation uses standalone Graph interface, but the second uses Pregel interface.


---

* [SPARK-6454](https://issues.apache.org/jira/browse/SPARK-6454) | *Minor* | **Fix several broken links in PySpark docs**

See https://github.com/apache/spark/pull/5120

There are actually a number of instances of links to PySpark docs that end in {{-class.html}} which don't work.


---

* [SPARK-6453](https://issues.apache.org/jira/browse/SPARK-6453) | *Trivial* | **Some Mesos*Suite have a different package with their classes**

The name of package of {{MesosSchedulerBackend}} and {{MesosTaskLaunchData}} is {{org.apache.spark.scheduler.cluster.mesos}}, but the one of their testSuite is {{org.apache.spark.scheduler.mesos}}.


---

* [SPARK-6452](https://issues.apache.org/jira/browse/SPARK-6452) | *Major* | **CheckAnalysis should throw when the Aggregate node contains missing input attribute(s)**

Please refer to SPARK-6444 for reproduction steps. The top {{Aggregate}} node in the analyzed plan shown there contains a missing input attribute, but {{CheckAnalysis}} doesn't report it.


---

* [SPARK-6451](https://issues.apache.org/jira/browse/SPARK-6451) | *Blocker* | **Support CombineSum in Code Gen**

Since we are using CombineSum at the reducer side for the SUM function, we need to make it work in code gen. Otherwise, code gen will not convert Aggregates with a SUM function to GeneratedAggregates (the code gen version).


---

* [SPARK-6450](https://issues.apache.org/jira/browse/SPARK-6450) | *Blocker* | **Metastore Parquet table conversion fails when a single metastore Parquet table appears multiple times in the query**

The below query was working fine till 1.3 commit 9a151ce58b3e756f205c9f3ebbbf3ab0ba5b33fd.(Yes it definitely works at this commit although this commit is completely unrelated)

It got broken in 1.3.0 release with an AnalysisException: resolved attributes ... missing from .... (although this list contains the fields which it reports missing)
{code}
at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.run(Shim13.scala:189)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:231)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementAsync(HiveSessionImpl.java:218)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hive.service.cli.session.HiveSessionProxy.invoke(HiveSessionProxy.java:79)
	at org.apache.hive.service.cli.session.HiveSessionProxy.access$000(HiveSessionProxy.java:37)
	at org.apache.hive.service.cli.session.HiveSessionProxy$1.run(HiveSessionProxy.java:64)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:415)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
	at org.apache.hadoop.hive.shims.HadoopShimsSecure.doAs(HadoopShimsSecure.java:493)
	at org.apache.hive.service.cli.session.HiveSessionProxy.invoke(HiveSessionProxy.java:60)
	at com.sun.proxy.$Proxy17.executeStatementAsync(Unknown Source)
	at org.apache.hive.service.cli.CLIService.executeStatementAsync(CLIService.java:233)
	at org.apache.hive.service.cli.thrift.ThriftCLIService.ExecuteStatement(ThriftCLIService.java:344)
	at org.apache.hive.service.cli.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1313)
	at org.apache.hive.service.cli.thrift.TCLIService$Processor$ExecuteStatement.getResult(TCLIService.java:1298)
	at org.apache.thrift.ProcessFunction.process(ProcessFunction.java:39)
	at org.apache.thrift.TBaseProcessor.process(TBaseProcessor.java:39)
	at org.apache.hive.service.auth.TSetIpAddressProcessor.process(TSetIpAddressProcessor.java:55)
	at org.apache.thrift.server.TThreadPoolServer$WorkerProcess.run(TThreadPoolServer.java:206)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
{code}

{code}
select Orders.Country, Orders.ProductCategory,count(1) from Orders join (select Orders.Country, count(1) CountryOrderCount from Orders where to\_date(Orders.PlacedDate) > '2015-01-01' group by Orders.Country order by CountryOrderCount DESC LIMIT 5) Top5Countries on Top5Countries.Country = Orders.Country where to\_date(Orders.PlacedDate) > '2015-01-01' group by Orders.Country,Orders.ProductCategory;
{code}

The temporary workaround is to add explicit alias for the table Orders

{code}
select o.Country, o.ProductCategory,count(1) from Orders o join (select r.Country, count(1) CountryOrderCount from Orders r where to\_date(r.PlacedDate) > '2015-01-01' group by r.Country order by CountryOrderCount DESC LIMIT 5) Top5Countries on Top5Countries.Country = o.Country where to\_date(o.PlacedDate) > '2015-01-01' group by o.Country,o.ProductCategory;
{code}

However this change not only affects self joins, it also seems to affect union queries as well, like the below query which was again working before(commit 9a151ce) got broken

{code}
select Orders.Country,null,count(1) OrderCount from Orders group by Orders.Country,null
union all
select null,Orders.ProductCategory,count(1) OrderCount from Orders group by null, Orders.ProductCategory
{code}
also fails with a Analysis exception.
The workaround is to add different aliases for the tables.


---

* [SPARK-6448](https://issues.apache.org/jira/browse/SPARK-6448) | *Trivial* | **History server doesn't log exception when failing to replay log file**

History server alludes to the existence of an exception when failing to parse log files, but provides no info about the exception, e.g.:

{code}
15/03/21 21:51:44 ERROR FsHistoryProvider: Exception encountered when attempting to load application log file:/Users/ryan/sparklogs/application\_1426705269584\_0056
15/03/21 21:51:54 INFO FsHistoryProvider: Replaying log path: file:/Users/ryan/sparklogs/application\_1426705269584\_0056
15/03/21 21:51:54 ERROR FsHistoryProvider: Exception encountered when attempting to load application log file:/Users/ryan/sparklogs/application\_1426705269584\_0056
15/03/21 21:52:04 INFO FsHistoryProvider: Replaying log path: file:/Users/ryan/sparklogs/application\_1426705269584\_0056
15/03/21 21:52:04 ERROR FsHistoryProvider: Exception encountered when attempting to load application log file:/Users/ryan/sparklogs/application\_1426705269584\_0056
15/03/21 21:52:14 INFO FsHistoryProvider: Replaying log path: file:/Users/ryan/sparklogs/application\_1426705269584\_0056
{code}


---

* [SPARK-6443](https://issues.apache.org/jira/browse/SPARK-6443) | *Major* | **Support HA in standalone cluster mode**

========== EDIT by Andrew ==========

From a quick survey in the code I can confirm that client mode does support this. [This line|https://github.com/apache/spark/blob/e3202aa2e9bd140effbcf2a7a02b90cb077e760b/core/src/main/scala/org/apache/spark/SparkContext.scala#L2162] splits the master URLs by comma and passes these URLs into the AppClient. In standalone cluster mode, there is simply no equivalent logic to even split the master URLs, whether in the old submission gateway (o.a.s.deploy.Client) or in the new one (o.a.s.deploy.rest.StandaloneRestClient).

Thus, this is an unsupported feature, not a bug!

========== Original description from Tao Wang ==========

After digging some codes, I found user could not submit app in standalone cluster mode when HA is enabled. But in client mode it can work.

Haven't try yet. But I will verify this and file a PR to resolve it if the problem exists.

3/23 update:
I started a HA cluster with zk, and tried to submit SparkPi example with command:
./spark-submit  --class org.apache.spark.examples.SparkPi --master spark://doggie153:7077,doggie159:7077 --deploy-mode cluster ../lib/spark-examples-1.2.0-hadoop2.4.0.jar 

and it failed with error message:
Spark assembly has been built with Hive, including Datanucleus jars on classpath
15/03/23 15:24:45 ERROR actor.OneForOneStrategy: Invalid master URL: spark://doggie153:7077,doggie159:7077
akka.actor.ActorInitializationException: exception during creation
        at akka.actor.ActorInitializationException$.apply(Actor.scala:164)
        at akka.actor.ActorCell.create(ActorCell.scala:596)
        at akka.actor.ActorCell.invokeAll$1(ActorCell.scala:456)
        at akka.actor.ActorCell.systemInvoke(ActorCell.scala:478)
        at akka.dispatch.Mailbox.processAllSystemMessages(Mailbox.scala:263)
        at akka.dispatch.Mailbox.run(Mailbox.scala:219)
        at akka.dispatch.ForkJoinExecutorConfigurator$AkkaForkJoinTask.exec(AbstractDispatcher.scala:393)
        at scala.concurrent.forkjoin.ForkJoinTask.doExec(ForkJoinTask.java:260)
        at scala.concurrent.forkjoin.ForkJoinPool$WorkQueue.runTask(ForkJoinPool.java:1339)
        at scala.concurrent.forkjoin.ForkJoinPool.runWorker(ForkJoinPool.java:1979)
        at scala.concurrent.forkjoin.ForkJoinWorkerThread.run(ForkJoinWorkerThread.java:107)
Caused by: org.apache.spark.SparkException: Invalid master URL: spark://doggie153:7077,doggie159:7077
        at org.apache.spark.deploy.master.Master$.toAkkaUrl(Master.scala:830)
        at org.apache.spark.deploy.ClientActor.preStart(Client.scala:42)
        at akka.actor.Actor$class.aroundPreStart(Actor.scala:470)
        at org.apache.spark.deploy.ClientActor.aroundPreStart(Client.scala:35)
        at akka.actor.ActorCell.create(ActorCell.scala:580)
        ... 9 more

But in client mode it ended with correct result. So my guess is right. I will fix it in the related PR.


---

* [SPARK-6440](https://issues.apache.org/jira/browse/SPARK-6440) | *Minor* | **ipv6 URI for HttpServer**

In {{org.apache.spark.HttpServer}} uri is generated as {code:java}"spark://" + localHostname + ":" + masterPort{code}, where {{localHostname}} is {code:java} org.apache.spark.util.Utils.localHostName() = customHostname.getOrElse(localIpAddressHostname){code}. If the host has an ipv6 address then it would be interpolated into invalid URI:  {{spark://fe80:0:0:0:200:f8ff:fe21:67cf:42}} instead of {{spark://[fe80:0:0:0:200:f8ff:fe21:67cf]:42}}.

The solution is to separate uri and hostname entities.


---

* [SPARK-6437](https://issues.apache.org/jira/browse/SPARK-6437) | *Critical* | **SQL ExternalSort should use CompletionIterator to clean up temp files**

Right now, temp files used by SQL ExternalSort are not cleaned up.


---

* [SPARK-6435](https://issues.apache.org/jira/browse/SPARK-6435) | *Major* | **spark-shell --jars option does not add all jars to classpath**

Not all jars supplied via the --jars option will be added to the driver (and presumably executor) classpath.  The first jar(s) will be added, but not all.

To reproduce this, just add a few jars (I tested 5) to the --jars option, and then try to import a class from the last jar.  This fails.  A simple reproducer: 

Create a bunch of dummy jars:
jar cfM jar1.jar log.txt
jar cfM jar2.jar log.txt
jar cfM jar3.jar log.txt
jar cfM jar4.jar log.txt

Start the spark-shell with the dummy jars and guava at the end:
%SPARK\_HOME%\bin\spark-shell --master local --jars jar1.jar,jar2.jar,jar3.jar,jar4.jar,c:\code\lib\guava-14.0.1.jar

In the shell, try importing from guava; you'll get an error:
{code}
scala> import com.google.common.base.Strings
<console>:19: error: object Strings is not a member of package com.google.common.base
       import com.google.common.base.Strings
              ^
{code}


---

* [SPARK-6433](https://issues.apache.org/jira/browse/SPARK-6433) | *Minor* | **hive tests to import spark-sql test JAR for QueryTest access**

The hive module has its own clone of {{org.apache.spark.sql.QueryPlan}} and {{org.apache.spark.sql.catalyst.plans.PlanTest}} which are copied from the spark-sql module because it's "hard to have maven allow one subproject depend on another subprojects test code"

It's actually relatively straightforward
# tell maven to build & publish the test JARs
# import them in your other sub projects

There is one consequence: the JARs will also end being published to mvn central. This is not really a bad thing; it does help downstream projects pick up the JARs too. It does become an issue if a test run depends on a custom file under {{src/test/resources}} containing things like EC2 authentication keys, or even just log4.properties files which can interfere with each other. These need to be excluded -the simplest way is to exclude all of the resources from test JARs.


---

* [SPARK-6431](https://issues.apache.org/jira/browse/SPARK-6431) | *Major* | **Couldn't find leader offsets exception when creating KafkaDirectStream**

When I try to create an InputDStream using the createDirectStream method of the KafkaUtils class and the kafka topic does not have any messages yet am getting the following error:

org.apache.spark.SparkException: Couldn't find leader offsets for Set()
org.apache.spark.SparkException: org.apache.spark.SparkException: Couldn't find leader offsets for Set()
	at org.apache.spark.streaming.kafka.KafkaUtils$$anonfun$createDirectStream$2.apply(KafkaUtils.scala:413)

If I put a message in the topic before creating the DirectStream everything works fine.


---

* [SPARK-6428](https://issues.apache.org/jira/browse/SPARK-6428) | *Major* | **Add to style checker "public method must have explicit type defined"**

Otherwise it is too easy to accidentally leak or define an incorrect return type in user facing APIs.


---

* [SPARK-6426](https://issues.apache.org/jira/browse/SPARK-6426) | *Trivial* | **User could also point the yarn cluster config directory via YARN\_CONF\_DIR**

In script we add both YARN\_CONF\_DIR and HADOOP\_CONF\_DIR to classpath. User can use either of them to point to the hadoop config directory.


---

* [SPARK-6423](https://issues.apache.org/jira/browse/SPARK-6423) | *Minor* | **MemoryUtils should use memoryOverhead if it's set**

In case of Yarn, If it sets memoryOverhead, yarn always uses memoryOverhead. In case of Mesos, if I set memoryOverhead bigger than 384 and less than executorMemory * 0.1, that value is not set.


---

* [SPARK-6421](https://issues.apache.org/jira/browse/SPARK-6421) | *Major* | **\_regression\_train\_wrapper does not test initialWeights correctly**

There is a bug in this line: [https://github.com/apache/spark/blob/f17d43b033d928dbc46aef8e367aa08902e698ad/python/pyspark/mllib/regression.py#L138]

You can reproduce this bug as follows:
{code}
>>> from numpy import array
>>> a = array([1,2,3])
>>> b = a or [1.0] * 3
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
ValueError: The truth value of an array with more than one element is ambiguous. Use a.any() or a.all()
{code}


---

* [SPARK-6418](https://issues.apache.org/jira/browse/SPARK-6418) | *Major* | **Add simple per-stage visualization to the UI**

Visualizing how tasks in a stage spend their time can be very helpful to understanding performance.  Many folks have started using the visualization tools here: https://github.com/kayousterhout/trace-analysis (see the README at the bottom) to analyze their jobs after they've finished running, but it would be great if this functionality were natively integrated into Spark's UI.

I'd propose adding a relatively simple visualization to the stage detail page, that's hidden by default but that users can view by clicking on a drop-down menu.  The plan is to implement this using D3; a mock up of how this would look (that uses D3) is attached.  One change we'll make for the initial implementation, compared to the attached visualization, is tasks will be sorted by start time.

This is intended to be a much simpler and more limited version of SPARK-3468


---

* [SPARK-6414](https://issues.apache.org/jira/browse/SPARK-6414) | *Critical* | **Spark driver failed with NPE on job cancelation**

When a job group is cancelled, we scan through all jobs to determine which are members of the group. This scan assumes that the job group property is always set. If 'properties' is null in an active job, you get an NPE.

We just need to make sure we ignore ones where activeJob.properties is null. We should also make sure it works if the particular property is missing.

https://github.com/apache/spark/blob/branch-1.3/core/src/main/scala/org/apache/spark/scheduler/DAGScheduler.scala#L678


---

* [SPARK-6409](https://issues.apache.org/jira/browse/SPARK-6409) | *Major* | **It is not necessary that avoid old inteface of hive, because this will make some UDAF can not work.**

I run SQL like that 
{code}
CREATE TEMPORARY FUNCTION test\_avg AS 'org.apache.hadoop.hive.ql.udf.generic.GenericUDAFAverage'; 
  
SELECT 
    test\_avg(1), 
    test\_avg(substr(value,5)) 
FROM src; 
{code}


then i get a exception
{code}
15/03/19 09:36:45 ERROR CliDriver: org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 2.0 failed 4 times, most recent failure: Lost task 0.3 in stage 2.0 (TID 6, HPC-3): java.lang.ClassCastException: org.apache.hadoop.hive.ql.udf.generic.GenericUDAFAverage$AverageAggregationBuffer cannot be cast to org.apache.hadoop.hive.ql.udf.generic.GenericUDAFEvaluator$AbstractAggregationBuffer 
        at org.apache.spark.sql.hive.HiveUdafFunction.<init>(hiveUdfs.scala:369) 
        at org.apache.spark.sql.hive.HiveGenericUdaf.newInstance(hiveUdfs.scala:214) 
        at org.apache.spark.sql.hive.HiveGenericUdaf.newInstance(hiveUdfs.scala:188) 
{code}


i find that GenericUDAFAverage used a deprecated interface AggregationBuffer that has been instead by AbstractAggregationBuffer. and spark avoid the old interface AggregationBuffer , so GenericUDAFAverage  can not work.I think it is not necessary.

code in spark
{code}
  // Cast required to avoid type inference selecting a deprecated Hive API.
  private val buffer =
    function.getNewAggregationBuffer.asInstanceOf[GenericUDAFEvaluator.AbstractAggregationBuffer]
{code}


---

* [SPARK-6408](https://issues.apache.org/jira/browse/SPARK-6408) | *Blocker* | **JDBCRDD fails on where clause with string literal**

The generated SQL query string is incorrect on filtering string literals.

{code}where foo='bar'{code} results in {code}where foo=bar{code}

The following snippet reproduce the bug:
{code}
$ SPARK\_CLASSPATH=h2-1.4.186.jar spark/bin/spark-shell

import java.sql.DriverManager
val url = "jdbc:h2:mem:testdb0"
Class.forName("org.h2.Driver")
val conn = DriverManager.getConnection(url)
conn.prepareStatement("create schema test").executeUpdate()
conn.prepareStatement("create table test.people (name TEXT(32) NOT NULL, theid INTEGER NOT NULL)").executeUpdate()
conn.prepareStatement("insert into test.people values ('fred', 1)").executeUpdate()
conn.commit()
sql(s"""
CREATE TEMPORARY TABLE foobar
USING org.apache.spark.sql.jdbc
OPTIONS (url '$url', dbtable 'TEST.PEOPLE')
""")
sql("select * from foobar where NAME='fred'").collect

15/03/19 06:34:38 ERROR Executor: Exception in task 0.0 in stage 1.0 (TID 1)
org.h2.jdbc.JdbcSQLException: Column "FRED" not found; SQL statement:
SELECT NAME,THEID FROM TEST.PEOPLE WHERE NAME = fred [42122-186]
{code}

Note that it is likely that other data types also have similar problem.


---

* [SPARK-6406](https://issues.apache.org/jira/browse/SPARK-6406) | *Minor* | **Launcher backward compatibility issues**

The new launcher library breaks backward compatibility. "hadoop" string in the spark assembly should not be mandatory.


---

* [SPARK-6405](https://issues.apache.org/jira/browse/SPARK-6405) | *Major* | **Spark Kryo buffer should be forced to be max. 2GB**

Kryo buffers used in serialization are backed by Java byte arrays, which have a maximum size of 2GB. However, we blindly set the size without worrying about numeric overflow or regards to the maximum array size. We should enforce the maximum buffer size to be 2GB and warn the user when they have exceeded that amount.

I'm open to the idea of flat-out failing the initialization of the Spark Context if the buffer size is over 2GB, but I'm afraid that could break backwards-compatability... although one can argue that the user had incorrect buffer sizes in the first place.


---

* [SPARK-6397](https://issues.apache.org/jira/browse/SPARK-6397) | *Minor* | **Exclude virtual columns from QueryPlan.missingInput**

Virtual columns like GROUPING\_\_ID should never be considered as missing input, and thus should be execluded from {{QueryPlan.missingInput}}.


---

* [SPARK-6394](https://issues.apache.org/jira/browse/SPARK-6394) | *Minor* | **cleanup BlockManager companion object and improve the getCacheLocs method in DAGScheduler**

The current implementation of getCacheLocs include searching a HashMap many times, we can avoid this.
And BlockManager.blockIdsToExecutorIds isn't called anywhere, we can remove it. Also we can combine BlockManager.blockIdsToHosts and blockIdsToBlockManagers into a single method in order to remove some unnecessary layers of indirection / collection creation.


---

* [SPARK-6389](https://issues.apache.org/jira/browse/SPARK-6389) | *Trivial* | **YARN app diagnostics report doesn't report NPEs**

{{ApplicationMaster.run()}} catches exceptions and calls {{toMessage()}} to get their message included in the YARN diagnostics report visible in the RM UI.

Except, NPEs don't have a message —if one is raised their report becomes {{Uncaught exception: null}}, which isn't that useful. The full text & stack trace is logged correctly in the AM.


---

* [SPARK-6383](https://issues.apache.org/jira/browse/SPARK-6383) | *Trivial* | **Few examples on Dataframe operation give compiler errors**

The below statements give compiler errors as 
a) the select method doesnot accept String, Column 
df.select("name", df("age") + 1).show() // Need to convert String to Column

b) Filtering should be based on "age"  not on "name"  Column
df.filter(df("name") > 21).show()


---

* [SPARK-6379](https://issues.apache.org/jira/browse/SPARK-6379) | *Major* | **Support a functon to call user-defined functions registered in SQLContext**

This is useful for using pre-defined UDFs in SQLContext;

{code}
val df = Seq(("id1", 1), ("id2", 4), ("id3", 5)).toDF("id", "value")
val sqlctx = df.sqlContext
sqlctx.udf.register("simpleUdf", (v: Int) => v * v)
df.select($"id", callUdf("simpleUdf", $"value"))
{code}


---

* [SPARK-6376](https://issues.apache.org/jira/browse/SPARK-6376) | *Critical* | **Subqueries are thrown away too early in dataframes**

Because we throw away aliases as we construct the query plan, you can't reference them later.  For example, this query fails:

{code}
  test("self join with aliases") {
    val df = Seq(1,2,3).map(i => (i, i.toString)).toDF("int", "str")
    checkAnswer(
      df.as('x).join(df.as('y), $"x.str" === $"y.str").groupBy("x.str").count(),
      Row("1", 1) :: Row("2", 1) :: Row("3", 1) :: Nil)
  }
{code}

{code}
[info]   org.apache.spark.sql.AnalysisException: Cannot resolve column name "x.str" among (int, str, int, str);
[info]   at org.apache.spark.sql.DataFrame$$anonfun$resolve$1.apply(DataFrame.scala:162)
[info]   at org.apache.spark.sql.DataFrame$$anonfun$resolve$1.apply(DataFrame.scala:162)
{code}


---

* [SPARK-6375](https://issues.apache.org/jira/browse/SPARK-6375) | *Critical* | **Bad formatting in analysis errors**

{code}
[info]   org.apache.spark.sql.AnalysisException: Ambiguous references to str: (str#3,List()),(str#5,List());
{code}


---

* [SPARK-6374](https://issues.apache.org/jira/browse/SPARK-6374) | *Minor* | **Add getter for GeneralizedLinearAlgorithm**

I find it's better to have getter for NumFeatures and addIntercept within GeneralizedLinearAlgorithm during actual usage, otherwise I 'll have to get the value through debug.


---

* [SPARK-6372](https://issues.apache.org/jira/browse/SPARK-6372) | *Blocker* | **"spark-submit --conf" is not being propagated to child processes**

Thanks to [~irashid] for bringing this up. It seems that the new launcher library is incorrectly handling "--conf" and not passing it down to the child processes. Fix is simple, PR coming up.


---

* [SPARK-6371](https://issues.apache.org/jira/browse/SPARK-6371) | *Critical* | **Update version to 1.4.0-SNAPSHOT**

See summary.


---

* [SPARK-6370](https://issues.apache.org/jira/browse/SPARK-6370) | *Minor* | **Improve documentation of RDD.sample() fraction's effect**

Here's the repl output:

{{code:java}}
scala> uniqueIds.collect
res10: Array[String] = Array(4, 8, 21, 80, 20, 98, 42, 15, 48, 36, 90, 46, 55, 16, 31, 71, 9, 50, 28, 61, 68, 85, 12, 94, 38, 77, 2, 11, 10)

scala> val swr = uniqueIds.sample(true, 0.5)
swr: org.apache.spark.rdd.RDD[String] = PartitionwiseSampledRDD[22] at sample at <console>:27

scala> swr.count
res17: Long = 16

scala> val swr = uniqueIds.sample(true, 0.5)
swr: org.apache.spark.rdd.RDD[String] = PartitionwiseSampledRDD[23] at sample at <console>:27

scala> swr.count
res18: Long = 8

scala> val swr = uniqueIds.sample(true, 0.5)
swr: org.apache.spark.rdd.RDD[String] = PartitionwiseSampledRDD[24] at sample at <console>:27

scala> swr.count
res19: Long = 18

scala> val swr = uniqueIds.sample(true, 0.5)
swr: org.apache.spark.rdd.RDD[String] = PartitionwiseSampledRDD[25] at sample at <console>:27

scala> swr.count
res20: Long = 15

scala> val swr = uniqueIds.sample(true, 0.5)
swr: org.apache.spark.rdd.RDD[String] = PartitionwiseSampledRDD[26] at sample at <console>:27

scala> swr.count
res21: Long = 11

scala> val swr = uniqueIds.sample(true, 0.5)
swr: org.apache.spark.rdd.RDD[String] = PartitionwiseSampledRDD[27] at sample at <console>:27

scala> swr.count
res22: Long = 10
{{code}}


---

* [SPARK-6369](https://issues.apache.org/jira/browse/SPARK-6369) | *Blocker* | **InsertIntoHiveTable and Parquet Relation should use logic from SparkHadoopWriter**

Right now it is possible that we will corrupt the output if there is a race between competing speculative tasks.


---

* [SPARK-6368](https://issues.apache.org/jira/browse/SPARK-6368) | *Critical* | **Build a specialized serializer for Exchange operator.**

Kryo is still pretty slow because it works on individual objects and relative expensive to allocate. For Exchange operator, because the schema for key and value are already defined, we can create a specialized serializer to handle the specific schemas of key and value.


---

* [SPARK-6367](https://issues.apache.org/jira/browse/SPARK-6367) | *Major* | **Use the proper data type for those expressions that are hijacking existing data types.**

For the following expressions, the actual value type does not match the type of our internal representation. 
ApproxCountDistinctPartition
NewSet
AddItemToSet
CombineSets
CollectHashSet

We should create UDTs for data types of these expressions.


---

* [SPARK-6361](https://issues.apache.org/jira/browse/SPARK-6361) | *Major* | **Support adding a column with metadata in DataFrames**

There is no easy way to add a column with metadata in DataFrames. This is required by ML transformers to generate ML attributes.


---

* [SPARK-6352](https://issues.apache.org/jira/browse/SPARK-6352) | *Major* | **Supporting non-default OutputCommitter when using saveAsParquetFile**

SPARK-3595 only handles custom OutputCommitter for saveAsHadoopFile, it can be nice to have similar behavior in saveAsParquetFile. It maybe difficult to have a fully customizable OutputCommitter solution, at least adding something like a DirectParquetOutputCommitter and letting users choose between this and the default should be enough.


---

* [SPARK-6350](https://issues.apache.org/jira/browse/SPARK-6350) | *Minor* | **Make mesosExecutorCores configurable in mesos "fine-grained" mode**

When spark runs in mesos fine-grained mode, mesos slave launches executor with # of cpus and memories. By the way, # of executor's cores is always CPU\_PER\_TASKS as same as spark.task.cpus. If I set that values as 5 for running intensive task, mesos executor always consume 5 cores without any running task. This waste resources. We should set executor core as a configuration variable.


---

* [SPARK-6345](https://issues.apache.org/jira/browse/SPARK-6345) | *Major* | **Model update propagation during prediction in Streaming Regression**

During streaming regression analyses (Streaming Linear Regression and Streaming Logistic Regression), model updates based on training data are not being reflected in subsequent calls to predictOn or predictOnValues, despite updates themselves occurring successfully. It may be due to recent changes to model declaration, and I have a working fix prepared to be submitted ASAP (alongside expanded test coverage).

A temporary workaround is to retrieve and use the updated model within a foreachRDD, as in:

{code}
model.trainOn(trainingData)
testingData.foreachRDD{ rdd =>
    val latest = model.latestModel()
    val predictions = rdd.map(lp => latest.predict(lp.features))
    ...print or other side effects...
}
{code}

Or within a transform, as in:

{code}
model.trainOn(trainingData)
val predictions = testingData.transform { rdd =>
      val latest = model.latestModel()
      rdd.map(lp => (lp.label, latest.predict(lp.features)))
}
{code}

Note that this does not affect Streaming KMeans, which works as expected for combinations of training and prediction.


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

* [SPARK-6341](https://issues.apache.org/jira/browse/SPARK-6341) | *Minor* | **Upgrade breeze from 0.11.1 to 0.11.2 or later**

There is a bug to divide a breeze sparse vector which has any zero values with a scalar value. However, this bug is in breeze's side. I heard that once David fixes it and publishes it to maven, we can upgrade to breeze 0.11.2 or later.


- [Apache Spark Developers List: Is there any bugs to divide a Breeze sparse vector at Spark v1.3.0-rc3](http://apache-spark-developers-list.1001551.n3.nabble.com/mllib-Is-there-any-bugs-to-divide-a-Breeze-sparse-vectors-at-Spark-v1-3-0-rc3-td11056.html)
- [Is there any bugs to divide a sparse vector with `:/` at v0.11.1? · Issue #382 · scalanlp/breeze](https://github.com/scalanlp/breeze/issues/382#issuecomment-80896698)


---

* [SPARK-6338](https://issues.apache.org/jira/browse/SPARK-6338) | *Minor* | **Use standard temp dir mechanisms in tests to avoid orphaned temp files**

Since the last cleanup, a number of new tests have appeared that don't use the standard Utils.createTempDir() mechanism for making temp dirs and files. It makes the code a little simpler in most cases, and in some, helps ensure the temp files aren't stranded after test shutdown.


---

* [SPARK-6337](https://issues.apache.org/jira/browse/SPARK-6337) | *Trivial* | **Spark 1.3 doc fixes**

I'll try to track doc issues to be fixed for the 1.3.1 release in this JIRA.

DataFrame
* [quotes should include "age > 30" | https://github.com/apache/spark/blob/b943f5d907df0607ecffb729f2bccfa436438d7e/sql/core/src/main/scala/org/apache/spark/sql/DataFrame.scala#L92]
* [DeveloperAPI  -> DeveloperApi | https://github.com/apache/spark/blob/c49d156624624a719c0d1262a58933ea3e346963/mllib/src/main/scala/org/apache/spark/ml/Pipeline.scala#L36]
* [SQL Programming Guide: Programmatically Specifying the Schema typo | https://github.com/apache/spark/blob/25e271d9fbb3394931d23822a1b2020e9d9b46b3/docs/sql-programming-guide.md]
** Reported by Vinay: Under the "Programmatically Specifying the Schema" section , it's mentioned that SQL data types are in the following package org.apache.spark.sql, but I guess it has changed to org.apache.spark.sql.types


---

* [SPARK-6336](https://issues.apache.org/jira/browse/SPARK-6336) | *Trivial* | **LBFGS should document what convergenceTol means**

LBFGS uses Breeze's LBFGS, which uses relative convergence tolerance.  We should document that convergenceTol is relative and ensure in a unit test that this behavior does not change in Breeze without us realizing it.


---

* [SPARK-6330](https://issues.apache.org/jira/browse/SPARK-6330) | *Blocker* | **newParquetRelation gets incorrect FileSystem**

Here's a snippet from newParquet.scala:

    def refresh(): Unit = {
      val fs = FileSystem.get(sparkContext.hadoopConfiguration)

      // Support either reading a collection of raw Parquet part-files, or a collection of folders
      // containing Parquet files (e.g. partitioned Parquet table).
      val baseStatuses = paths.distinct.map { p =>
        val qualified = fs.makeQualified(new Path(p))

        if (!fs.exists(qualified) && maybeSchema.isDefined) {
          fs.mkdirs(qualified)
          prepareMetadata(qualified, maybeSchema.get, sparkContext.hadoopConfiguration)
        }

        fs.getFileStatus(qualified)
      }.toArray

If we are running this locally and path points to S3, fs would be incorrect. A fix is to construct fs for each file separately.


---

* [SPARK-6329](https://issues.apache.org/jira/browse/SPARK-6329) | *Trivial* | **Minor doc changes for Mesos and TOC**

Following up from SPARK-1182 there were two more minor doc issues to address:

1. Link to the Mesos configuration table rather than just the Mesos page.
2. If possible, make Mesos/YARN/Standalone appear in the table of contents on top.


---

* [SPARK-6327](https://issues.apache.org/jira/browse/SPARK-6327) | *Critical* | **Run PySpark with python directly is broken**

It works before, but broken now:
{code}
davies@localhost:~/work/spark$ python r.py
NOTE: SPARK\_PREPEND\_CLASSES is set, placing locally compiled Spark classes ahead of assembly.
Usage: spark-submit [options] <app jar | python file> [app arguments]
Usage: spark-submit --kill [submission ID] --master [spark://...]
Usage: spark-submit --status [submission ID] --master [spark://...]

Options:
  --master MASTER\_URL         spark://host:port, mesos://host:port, yarn, or local.
  --deploy-mode DEPLOY\_MODE   Whether to launch the driver program locally ("client") or
                              on one of the worker machines inside the cluster ("cluster")
                              (Default: client).
  --class CLASS\_NAME          Your application's main class (for Java / Scala apps).
  --name NAME                 A name of your application.
  --jars JARS                 Comma-separated list of local jars to include on the driver
                              and executor classpaths.
  --packages                  Comma-separated list of maven coordinates of jars to include
                              on the driver and executor classpaths. Will search the local
                              maven repo, then maven central and any additional remote
                              repositories given by --repositories. The format for the
                              coordinates should be groupId:artifactId:version.
  --repositories              Comma-separated list of additional remote repositories to
                              search for the maven coordinates given with --packages.
  --py-files PY\_FILES         Comma-separated list of .zip, .egg, or .py files to place
                              on the PYTHONPATH for Python apps.
  --files FILES               Comma-separated list of files to be placed in the working
                              directory of each executor.

  --conf PROP=VALUE           Arbitrary Spark configuration property.
  --properties-file FILE      Path to a file from which to load extra properties. If not
                              specified, this will look for conf/spark-defaults.conf.

  --driver-memory MEM         Memory for driver (e.g. 1000M, 2G) (Default: 512M).
  --driver-java-options       Extra Java options to pass to the driver.
  --driver-library-path       Extra library path entries to pass to the driver.
  --driver-class-path         Extra class path entries to pass to the driver. Note that
                              jars added with --jars are automatically included in the
                              classpath.

  --executor-memory MEM       Memory per executor (e.g. 1000M, 2G) (Default: 1G).

  --proxy-user NAME           User to impersonate when submitting the application.

  --help, -h                  Show this help message and exit
  --verbose, -v               Print additional debug output
  --version,                  Print the version of current Spark

 Spark standalone with cluster deploy mode only:
  --driver-cores NUM          Cores for driver (Default: 1).
  --supervise                 If given, restarts the driver on failure.
  --kill SUBMISSION\_ID        If given, kills the driver specified.
  --status SUBMISSION\_ID      If given, requests the status of the driver specified.

 Spark standalone and Mesos only:
  --total-executor-cores NUM  Total cores for all executors.

 YARN-only:
  --driver-cores NUM          Number of cores used by the driver, only in cluster mode
                              (Default: 1).
  --executor-cores NUM        Number of cores per executor (Default: 1).
  --queue QUEUE\_NAME          The YARN queue to submit to (Default: "default").
  --num-executors NUM         Number of executors to launch (Default: 2).
  --archives ARCHIVES         Comma separated list of archives to be extracted into the
                              working directory of each executor.
{code}


---

* [SPARK-6326](https://issues.apache.org/jira/browse/SPARK-6326) | *Minor* | **Improve castStruct to be faster**

Current castStruct should be very slow. This pr slightly improves it.


---

* [SPARK-6325](https://issues.apache.org/jira/browse/SPARK-6325) | *Critical* | **YarnAllocator crash with dynamic allocation on**

Run spark-shell like this:

{noformat}
spark-shell --conf spark.shuffle.service.enabled=true \
--conf spark.dynamicAllocation.enabled=true  \
--conf spark.dynamicAllocation.minExecutors=1  \
--conf spark.dynamicAllocation.maxExecutors=20 \
--conf spark.dynamicAllocation.executorIdleTimeout=10  \
--conf spark.dynamicAllocation.schedulerBacklogTimeout=5  \
--conf spark.dynamicAllocation.sustainedSchedulerBacklogTimeout=5
{noformat}

Then run this simple test:

{code}
scala> val verySmallRdd = sc.parallelize(1 to 10, 10).map { i => 
     |   if (i % 2 == 0) { Thread.sleep(30 * 1000); i } else 0
     | }
verySmallRdd: org.apache.spark.rdd.RDD[Int] = MapPartitionsRDD[1] at map at <console>:21

scala> verySmallRdd.collect()
{code}

When Spark starts ramping down the number of allocated executors, it will hit an assert in YarnAllocator.scala:

{code}
assert(targetNumExecutors >= 0, "Allocator killed more executors than are allocated!")
{code}

This assert will cause the akka backend to die, but not the AM itself. So the app will be in a zombie-like state, where the driver is alive but can't talk to the AM. Sadness ensues.

I have a working fix, just need to add unit tests. Stay tuned.

Thanks to [~wypoon] for finding the problem, and for the test case.


---

* [SPARK-6317](https://issues.apache.org/jira/browse/SPARK-6317) | *Major* | **Interactive HIVE scala console is not starting**

{{build/sbt hive/console}}  is failing  

{noformat}
[info] Starting scala interpreter...
[info] 
<console>:15: error: object Dsl is not a member of package org.apache.spark.sql
       import org.apache.spark.sql.Dsl.\_
                                   ^
{noformat}


---

* [SPARK-6315](https://issues.apache.org/jira/browse/SPARK-6315) | *Blocker* | **SparkSQL 1.3.0 (RC3) fails to read parquet file generated by 1.1.1**

Parquet files generated by Spark 1.1 have a deprecated representation of the schema.  In Spark 1.3 we fail to read these files through the new Parquet code path.  We should continue to read these files until we formally deprecate this representation.

As a workaround:
{code}
SET spark.sql.parquet.useDataSourceApi=false
{code}


---

* [SPARK-6313](https://issues.apache.org/jira/browse/SPARK-6313) | *Critical* | **Fetch File Lock file creation doesnt work when Spark working dir is on a NFS mount**

When running in cluster mode and mounting the spark work dir on a NFS volume (or some volume which doesn't support file locking), the fetchFile (used for downloading JARs etc on the executors) method in Spark Utils class will fail. This file locking was introduced as an improvement with SPARK-2713. 

See https://github.com/apache/spark/blob/master/core/src/main/scala/org/apache/spark/util/Utils.scala#L415 

Introduced in 1.2 in commit; https://github.com/apache/spark/commit/7aacb7bfad4ec73fd8f18555c72ef696 

As this locking is for optimisation for fetching files, could we take a different approach here to create a temp/advisory lock file? 

Typically you would just mount local disks (in say ext4 format) and provide this as a comma separated list however we are trying to run Spark on MapR. With MapR we can do a loop back mount to a volume on the local node and take advantage of MapRs disk pools. This also means we dont need specific mounts for Spark and improves the generic nature of the cluster.


---

* [SPARK-6309](https://issues.apache.org/jira/browse/SPARK-6309) | *Major* | **Add MatrixUDT to support dense/sparse matrices in DataFrames**

This should support both dense and sparse matrices, similar to VectorUDT.


---

* [SPARK-6308](https://issues.apache.org/jira/browse/SPARK-6308) | *Major* | **VectorUDT is displayed as `vecto` in dtypes**

VectorUDT should override simpleString instead of relying on the default implementation.


---

* [SPARK-6306](https://issues.apache.org/jira/browse/SPARK-6306) | *Trivial* | **Readme points to dead link**

The link to "Specifying the Hadoop Version" now points to http://spark.apache.org/docs/latest/building-with-maven.html#specifying-the-hadoop-version.

The correct link is: http://spark.apache.org/docs/latest/building-spark.html#specifying-the-hadoop-version


---

* [SPARK-6303](https://issues.apache.org/jira/browse/SPARK-6303) | *Minor* | **Remove unnecessary Average in GeneratedAggregate**

Because {{Average}} is a {{PartialAggregate}}, we never get a {{Average}} node when reaching {{HashAggregation}} to prepare {{GeneratedAggregate}}.

That is why in SQLQuerySuite there is already a test for {{avg}} with codegen. And it works.

But we can find a case in {{GeneratedAggregate}} to deal with {{Average}}. Based on the above, we actually never execute this case.

So we can remove this case from {{GeneratedAggregate}}.


---

* [SPARK-6300](https://issues.apache.org/jira/browse/SPARK-6300) | *Critical* | **sc.addFile(path) does not support the relative path.**

when i run cmd like that sc.addFile("../test.txt"), it did not work and throw an exception

java.lang.IllegalArgumentException: java.net.URISyntaxException: Relative path in absolute URI: file:../test.txt
at org.apache.hadoop.fs.Path.initialize(Path.java:206)
at org.apache.hadoop.fs.Path.<init>(Path.java:172) 
........
.......
Caused by: java.net.URISyntaxException: Relative path in absolute URI: file:../test.txt
at java.net.URI.checkPath(URI.java:1804)
at java.net.URI.<init>(URI.java:752)
at org.apache.hadoop.fs.Path.initialize(Path.java:203)


---

* [SPARK-6299](https://issues.apache.org/jira/browse/SPARK-6299) | *Major* | **ClassNotFoundException in standalone mode when running groupByKey with class defined in REPL.**

Anyone can reproduce this issue by the code below
(runs well in local mode, got exception with clusters)
(it runs well in Spark 1.1.1)

{code}
case class ClassA(value: String)
val rdd = sc.parallelize(List(("k1", ClassA("v1")), ("k1", ClassA("v2")) ))
rdd.groupByKey.collect
{code}


{code}
org.apache.spark.SparkException: Job aborted due to stage failure: Task 162 in stage 1.0 failed 4 times, most recent failure: Lost task 162.3 in stage 1.0 (TID 1027, ip-172-16-182-27.ap-northeast-1.compute.internal): java.lang.ClassNotFoundException: $iwC$$iwC$$iwC$$iwC$UserRelationshipRow
at java.net.URLClassLoader$1.run(URLClassLoader.java:366)
at java.net.URLClassLoader$1.run(URLClassLoader.java:355)
at java.security.AccessController.doPrivileged(Native Method)
at java.net.URLClassLoader.findClass(URLClassLoader.java:354)
at java.lang.ClassLoader.loadClass(ClassLoader.java:425)
at java.lang.ClassLoader.loadClass(ClassLoader.java:358)
at java.lang.Class.forName0(Native Method)
at java.lang.Class.forName(Class.java:274)
at org.apache.spark.serializer.JavaDeserializationStream$$anon$1.resolveClass(JavaSerializer.scala:59)
at java.io.ObjectInputStream.readNonProxyDesc(ObjectInputStream.java:1612)
at java.io.ObjectInputStream.readClassDesc(ObjectInputStream.java:1517)
at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1771)
at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1350)
at java.io.ObjectInputStream.defaultReadFields(ObjectInputStream.java:1990)
at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1915)
at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1798)
at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1350)
at java.io.ObjectInputStream.readObject(ObjectInputStream.java:370)
at org.apache.spark.serializer.JavaDeserializationStream.readObject(JavaSerializer.scala:62)
at org.apache.spark.serializer.DeserializationStream$$anon$1.getNext(Serializer.scala:133)
at org.apache.spark.util.NextIterator.hasNext(NextIterator.scala:71)
at org.apache.spark.util.CompletionIterator.hasNext(CompletionIterator.scala:32)
at scala.collection.Iterator$$anon$13.hasNext(Iterator.scala:371)
at org.apache.spark.util.CompletionIterator.hasNext(CompletionIterator.scala:32)
at org.apache.spark.InterruptibleIterator.hasNext(InterruptibleIterator.scala:39)
at org.apache.spark.Aggregator.combineCombinersByKey(Aggregator.scala:91)
at org.apache.spark.shuffle.hash.HashShuffleReader.read(HashShuffleReader.scala:44)
at org.apache.spark.rdd.ShuffledRDD.compute(ShuffledRDD.scala:92)
at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:280)
at org.apache.spark.rdd.RDD.iterator(RDD.scala:247)
at org.apache.spark.rdd.MappedRDD.compute(MappedRDD.scala:31)
at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:280)
at org.apache.spark.rdd.RDD.iterator(RDD.scala:247)
at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:280)
at org.apache.spark.rdd.RDD.iterator(RDD.scala:247)
at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:68)
at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:41)
at org.apache.spark.scheduler.Task.run(Task.scala:56)
at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:200)
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


---

* [SPARK-6291](https://issues.apache.org/jira/browse/SPARK-6291) | *Minor* | **GLM toString should not output full weight vector**

GeneralizedLinearModel.toString prints (weights, intercept)
{code}
  override def toString() = "(weights=%s, intercept=%s)".format(weights, intercept)
{code}

This has downsides for large models:
* The output gets truncated, so you cannot see the intercept.
* The long list of weights is not very useful.

Proposal: Follow the example of DecisionTreeModel, where toString prints a small summary, and toDebugString prints the full model.  The summary could have:
* intercept
* numFeatures
* (maybe other stats)


---

* [SPARK-6290](https://issues.apache.org/jira/browse/SPARK-6290) | *Minor* | **spark.ml.param.Params.checkInputColumn bug upon error**

In checkInputColumn, if data types do not match, it tries to print an error message with this in it:
{code}
Column param description: ${getParam(colName)}"
{code}
However, getParam cannot be called on the string colName; it needs the parameter name, which this method is not given.  This causes a weird error which users may find hard to understand.


---

* [SPARK-6288](https://issues.apache.org/jira/browse/SPARK-6288) | *Major* | **Pyrolite calls hashCode to cache previously serialized objects**

https://github.com/irmen/Pyrolite/blob/v2.0/java/src/net/razorvine/pickle/Pickler.java#L140

This operation could be quite expensive, compared to serializing the object directly, because hashCode usually needs to access all data stored in the object. Maybe we should disable this feature by default.


---

* [SPARK-6286](https://issues.apache.org/jira/browse/SPARK-6286) | *Minor* | **Handle TASK\_ERROR in TaskState**

Scala warning:

{code}
match may not be exhaustive. It would fail on the following input: TASK\_ERROR
{code}


---

* [SPARK-6285](https://issues.apache.org/jira/browse/SPARK-6285) | *Major* | **Duplicated code leads to errors**

The following class is duplicated inside [ParquetTestData|https://github.com/apache/spark/blob/master/sql/core/src/main/scala/org/apache/spark/sql/parquet/ParquetTestData.scala#L39] and [ParquetIOSuite|https://github.com/apache/spark/blob/master/sql/core/src/test/scala/org/apache/spark/sql/parquet/ParquetIOSuite.scala#L44], with exact same code and fully qualified name:

{code}
org.apache.spark.sql.parquet.TestGroupWriteSupport
{code}

The second one was introduced in [3b395e10|https://github.com/apache/spark/commit/3b395e10510782474789c9098084503f98ca4830], but even though it mentions that `ParquetTestData` should be removed later, I couldn't find a corresponding Jira ticket.

This duplicate class causes the Eclipse builder to fail (since src/main and src/test are compiled together in Eclipse, unlike Sbt).


---

* [SPARK-6279](https://issues.apache.org/jira/browse/SPARK-6279) | *Trivial* | **Miss expressions flag "s" at logging string**

In KafkaRDD.scala, Miss expressions flag "s" at logging string

In logging file, it print `Beginning offset ${part.fromOffset} is the same as ending offset ` but not `log.warn("Beginning offset 111 is the same as ending offset "`.


---

* [SPARK-6278](https://issues.apache.org/jira/browse/SPARK-6278) | *Major* | **Mention the change of step size in the migration guide**

We changed the objective from 1/n ..  to 1/(2n) ... in 1.3, so using the same step size will lead to different results.


---

* [SPARK-6275](https://issues.apache.org/jira/browse/SPARK-6275) | *Trivial* | **Miss toDF() function in docs/sql-programming-guide.md**

Miss toDF() function in docs/sql-programming-guide.md


---

* [SPARK-6274](https://issues.apache.org/jira/browse/SPARK-6274) | *Major* | **Add streaming examples showing integration with DataFrames and SQL**

Self explanatory


---

* [SPARK-6269](https://issues.apache.org/jira/browse/SPARK-6269) | *Major* | **Using a different implementation of java array reflection for size estimation**

When I use Spark, I notice that estimating the size of my multi-dimensional arrays tends to be significantly slow. I have RDDs that contain items of type List<List<String>>, for example, and YourKit indicates upwards of 15% of an executor's runtime is spent during size estimation of arrays.

There is an open issue in the JDK issue tracker for improving the performance of Java's array reflection. It has not been merged in, but there is a block of sample code there that is purported to be a more performant implementation: https://bugs.openjdk.java.net/browse/JDK-8051447. (It seems like the code is in the public domain explicitly as well - "I've written a simple re-implementation of the methods in pure Java code, pasted below (released into public domain or whatever license you would need if you wanted to use it")).

Spark currently uses java.lang.reflect.Array heavily to estimate the size of arrays. I tried using code from the JDK ticket in Spark's size estimation code in place of java.lang.reflect.Array. I found there to be a performance benefit in the size estimation code when I did the swap.

The benchmark numbers I am posting below will also be posted in the pull request that will be submitted here. But just to get an idea, I did two tests. The first, less convincing, take-with-a-block-of-salt test I did was do a simple groupByKey operation to collect objects in a 4.0 GB text file RDD into 30,000 buckets. I ran 1 Master and 4 Spark Worker JVMs on my mac, fetching the RDD from a text file simply stored on disk, and saving it out to another file located on local disk. The wall clock times I got back before and after the change were:

Before: 352.195s, 343.871s, 359.080s
After: 342.929583s, 329.456623s, 326.151481s

So, there is a bit of an improvement after the change. I also did some YourKit profiling of the executors to get an idea of how much time was spent in size estimation before and after the change. I roughly saw that size estimation took up less of the time after my change, but YourKit's profiling can be inconsistent and who knows if I was profiling the executors that had the same data between runs?

The more convincing test I did was to run the size-estimation logic itself in an isolated unit test. I ran the following code:

{code}
val bigArray = Array.fill(1000)(Array.fill(1000)(java.util.UUID.randomUUID().toString()))
test("String arrays only perf testing") {
  val startTime = System.currentTimeMillis()
  for (i <- 1 to 50000) {
    SizeEstimator.estimate(bigArray)
  }
  println("Runtime: " + (System.currentTimeMillis() - startTime) / 1000.0000)
}
{code}

I wanted to use a 2D array specifically because I wanted to measure the performance of repeatedly calling Array.getLength. I used UUID-Strings to ensure that the strings were randomized (so object re-use doesn't happen), but that they would all be the same size. The results were as follows:

Before change: 209.275s, 190.107s, 185.424s
After change: 160.431s, 149.487s, 151.66s

I will be submitting a pull request with the proposed performance-improving patch.


---

* [SPARK-6268](https://issues.apache.org/jira/browse/SPARK-6268) | *Minor* | **KMeans parameter getter methods**

KMeans has many setters for parameters.  It should have matching getters.


---

* [SPARK-6262](https://issues.apache.org/jira/browse/SPARK-6262) | *Major* | **Python MLlib API missing items: Statistics**

This JIRA lists items missing in the Python API for this sub-package of MLlib.
This list may be incomplete, so please check again when sending a PR to add these features to the Python API.

Also, please check for major disparities between documentation; some parts of the Python API are less well-documented than their Scala counterparts.  Some items may be listed in the umbrella JIRA linked to this task.

MultivariateStatisticalSummary
* normL1
* normL2


---

* [SPARK-6258](https://issues.apache.org/jira/browse/SPARK-6258) | *Major* | **Python MLlib API missing items: Clustering**

This JIRA lists items missing in the Python API for this sub-package of MLlib.
This list may be incomplete, so please check again when sending a PR to add these features to the Python API.

Also, please check for major disparities between documentation; some parts of the Python API are less well-documented than their Scala counterparts.  Some items may be listed in the umbrella JIRA linked to this task.

KMeans
* setEpsilon
* setInitializationSteps

KMeansModel
* computeCost
* k

GaussianMixture
* setInitialModel

GaussianMixtureModel
* k

Completely missing items which should be fixed in separate JIRAs (which have been created and linked to the umbrella JIRA)
* LDA
* PowerIterationClustering
* StreamingKMeans


---

* [SPARK-6257](https://issues.apache.org/jira/browse/SPARK-6257) | *Major* | **Python MLlib API missing items: Recommendation**

This JIRA lists items missing in the Python API for this sub-package of MLlib.
This list may be incomplete, so please check again when sending a PR to add these features to the Python API.

Also, please check for major disparities between documentation; some parts of the Python API are less well-documented than their Scala counterparts.  Some items may be listed in the umbrella JIRA linked to this task.

MatrixFactorizationModel
* rank
* recommendProducts
* recommendUsers
* setProductBlocks
* setUserBlocks


---

* [SPARK-6256](https://issues.apache.org/jira/browse/SPARK-6256) | *Major* | **Python MLlib API missing items: Regression**

This JIRA lists items missing in the Python API for this sub-package of MLlib.
This list may be incomplete, so please check again when sending a PR to add these features to the Python API.

Also, please check for major disparities between documentation; some parts of the Python API are less well-documented than their Scala counterparts.  Some items may be listed in the umbrella JIRA linked to this task.

LassoWithSGD
* setIntercept
* setValidateData

LinearRegressionWithSGD, RidgeRegressionWithSGD
* setValidateData


---

* [SPARK-6255](https://issues.apache.org/jira/browse/SPARK-6255) | *Major* | **Python MLlib API missing items: Classification**

This JIRA lists items missing in the Python API for this sub-package of MLlib.
This list may be incomplete, so please check again when sending a PR to add these features to the Python API.

Also, please check for major disparities between documentation; some parts of the Python API are less well-documented than their Scala counterparts.  Some items may be listed in the umbrella JIRA linked to this task.

LogisticRegressionWithLBFGS
* setNumClasses
* setValidateData

LogisticRegressionModel
* threshold
* numClasses
* numFeatures

SVMWithSGD
* setValidateData

SVMModel
* threshold

(updated to use "threshold" property instead of "getThreshold")


---

* [SPARK-6253](https://issues.apache.org/jira/browse/SPARK-6253) | *Minor* | **Add LassoModel to \_\_all\_\_ in regression.py**

LassoModel does not show up in Python docs

This should be merged into branch-1.3 and master.


---

* [SPARK-6252](https://issues.apache.org/jira/browse/SPARK-6252) | *Trivial* | **Scala NaiveBayes should expose getLambda**

Scala NaiveBayes should expose getLambda  (It has setLambda)


---

* [SPARK-6245](https://issues.apache.org/jira/browse/SPARK-6245) | *Minor* | **jsonRDD() of empty RDD results in exception**

converting an empty RDD to a JSON RDD results in an exception. this case is common when using spark streaming.

{code}
from pyspark import SparkContext
from pyspark.sql import SQLContext
sc = SparkContext()
qsc = SQLContext(sc)
qsc.jsonRDD(sc.parallelize([]))
{code}

exception:

{noformat}
Traceback (most recent call last):                                                                              
  File "/tmp/bug.py", line 5, in <module>
    qsc.jsonRDD(sc.parallelize([]))
  File "/usr/share/spark/python/pyspark/sql.py", line 1605, in jsonRDD
    srdd = self.\_ssql\_ctx.jsonRDD(jrdd.rdd(), samplingRatio)
  File "/usr/share/spark/python/lib/py4j-0.8.2.1-src.zip/py4j/java\_gateway.py", line 538, in \_\_call\_\_
  File "/usr/share/spark/python/lib/py4j-0.8.2.1-src.zip/py4j/protocol.py", line 300, in get\_return\_value
py4j.protocol.Py4JJavaError: An error occurred while calling o27.jsonRDD.
: java.lang.UnsupportedOperationException: empty collection
	at org.apache.spark.rdd.RDD$$anonfun$reduce$1.apply(RDD.scala:886)
	at org.apache.spark.rdd.RDD$$anonfun$reduce$1.apply(RDD.scala:886)
	at scala.Option.getOrElse(Option.scala:120)
	at org.apache.spark.rdd.RDD.reduce(RDD.scala:886)
	at org.apache.spark.sql.json.JsonRDD$.inferSchema(JsonRDD.scala:57)
	at org.apache.spark.sql.SQLContext.jsonRDD(SQLContext.scala:232)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
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

* [SPARK-6243](https://issues.apache.org/jira/browse/SPARK-6243) | *Major* | **The Operation of match did not conside the scenarios that order.dataType does not match NativeType**

It did not conside that order.dataType does not match NativeType.

val comparison = order.dataType match {
     case n: NativeType if order.direction == Ascending =>
            n.ordering.asInstanceOf[Ordering[Any]].compare(left, right)
    case n: NativeType if order.direction == Descending =>
            n.ordering.asInstanceOf[Ordering[Any]].reverse.compare(left, right)
 }


---

* [SPARK-6231](https://issues.apache.org/jira/browse/SPARK-6231) | *Critical* | **Join on two tables (generated from same one) is broken**

If the two column used in joinExpr come from the same table, they have the same id, then the joniExpr is explained in wrong way.

{code}
val df = sqlContext.load(path, "parquet")

val txns = df.groupBy("cust\_id").agg($"cust\_id", countDistinct($"day\_num").as("txns"))

val spend = df.groupBy("cust\_id").agg($"cust\_id", sum($"extended\_price").as("spend"))

val rmJoin = txns.join(spend, txns("cust\_id") === spend("cust\_id"), "inner")

scala> rmJoin.explain
== Physical Plan ==
CartesianProduct
 Filter (cust\_id#0 = cust\_id#0)
  Aggregate false, [cust\_id#0], [cust\_id#0,CombineAndCount(partialSets#25) AS txns#7L]
   Exchange (HashPartitioning [cust\_id#0], 200)
    Aggregate true, [cust\_id#0], [cust\_id#0,AddToHashSet(day\_num#2L) AS partialSets#25]
     PhysicalRDD [cust\_id#0,day\_num#2L], MapPartitionsRDD[1] at map at newParquet.scala:542
 Aggregate false, [cust\_id#17], [cust\_id#17,SUM(PartialSum#38) AS spend#8]
  Exchange (HashPartitioning [cust\_id#17], 200)
   Aggregate true, [cust\_id#17], [cust\_id#17,SUM(extended\_price#20) AS PartialSum#38]
    PhysicalRDD [cust\_id#17,extended\_price#20], MapPartitionsRDD[3] at map at newParquet.scala:542

{code}


---

* [SPARK-6229](https://issues.apache.org/jira/browse/SPARK-6229) | *Major* | **Support SASL encryption in network/common module**

After SASL support has been added to network/common, supporting encryption should be rather simple. Encryption is supported for DIGEST-MD5 and GSSAPI. Since the latter requires a valid kerberos login to work (and so doesn't really work with executors), encryption would require the use of DIGEST-MD5.


---

* [SPARK-6228](https://issues.apache.org/jira/browse/SPARK-6228) | *Minor* | **Move SASL support into network/common module**

Currently, there's support for SASL in network/shuffle, but not in network/common. Moving the SASL code to network/common would enable other applications using that code to also support secure authentication and, later, encryption.


---

* [SPARK-6225](https://issues.apache.org/jira/browse/SPARK-6225) | *Minor* | **Resolve most build warnings, 1.3.0 edition**

Post-1.3.0, I think it would be a good exercise to resolve a number of build warnings that have accumulated recently.

See for example efforts begun at
https://github.com/apache/spark/pull/4948
https://github.com/apache/spark/pull/4900


---

* [SPARK-6222](https://issues.apache.org/jira/browse/SPARK-6222) | *Blocker* | **[STREAMING] All data may not be recovered from WAL when driver is killed**

When testing for our next release, our internal tests written by [~wypoon] caught a regression in Spark Streaming between 1.2.0 and 1.3.0. The test runs FlumePolling stream to read data from Flume, then kills the Application Master. Once YARN restarts it, the test waits until no more data is to be written and verifies the original against the data on HDFS. This was passing in 1.2.0, but is failing now.

Since the test ties into Cloudera's internal infrastructure and build process, it cannot be directly run on an Apache build. But I have been working on isolating the commit that may have caused the regression. I have confirmed that it was caused by SPARK-5147 (PR # [4149|https://github.com/apache/spark/pull/4149]). I confirmed this several times using the test and the failure is consistently reproducible. 

To re-confirm, I reverted just this one commit (and Clock consolidation one to avoid conflicts), and the issue was no longer reproducible.

Since this is a data loss issue, I believe this is a blocker for Spark 1.3.0
/cc [~tdas], [~pwendell]


---

* [SPARK-6219](https://issues.apache.org/jira/browse/SPARK-6219) | *Minor* | **Expand Python lint checks to check for  compilation errors**

An easy lint check for Python would be to make sure the stuff at least compiles. That will catch only the most egregious errors, but it should help.


---

* [SPARK-6211](https://issues.apache.org/jira/browse/SPARK-6211) | *Critical* | **Test Python Kafka API using Python unit tests**

This is tricky in python because the KafkaStreamSuiteBase (which has the functionality of creating embedded kafka clusters) is in the test package, which is not in the python path. To fix that, we have to ways. 

1. Add test jar to classpath in python test. Thats kind of trickier.

2. Bring that into the src package (maybe renamed as KafkaTestUtils), and then wrap that in python to use it from python. 

If (2) does not add any extra test dependencies to the main Kafka pom, then 2 should be simpler to do.


---

* [SPARK-6209](https://issues.apache.org/jira/browse/SPARK-6209) | *Critical* | **ExecutorClassLoader can leak connections after failing to load classes from the REPL class server**

ExecutorClassLoader does not ensure proper cleanup of network connections that it opens.  If it fails to load a class, it may leak partially-consumed InputStreams that are connected to the REPL's HTTP class server, causing that server to exhaust its thread pool, which can cause the entire job to hang.

Here is a simple reproduction:

With

{code}
./bin/spark-shell --master local-cluster[8,8,512] 
{code}

run the following command:

{code}
sc.parallelize(1 to 1000, 1000).map { x =>
  try {
      Class.forName("some.class.that.does.not.Exist")
  } catch {
      case e: Exception => // do nothing
  }
  x
}.count()
{code}

This job will run 253 tasks, then will completely freeze without any errors or failed tasks.

It looks like the driver has 253 threads blocked in socketRead0() calls:

{code}
[joshrosen ~]$ jstack 16765 | grep socketRead0 | wc
     253     759   14674
{code}

e.g.

{code}
"qtp1287429402-13" daemon prio=5 tid=0x00007f868a1c0000 nid=0x5b03 runnable [0x00000001159bd000]
   java.lang.Thread.State: RUNNABLE
    at java.net.SocketInputStream.socketRead0(Native Method)
    at java.net.SocketInputStream.read(SocketInputStream.java:152)
    at java.net.SocketInputStream.read(SocketInputStream.java:122)
    at org.eclipse.jetty.io.ByteArrayBuffer.readFrom(ByteArrayBuffer.java:391)
    at org.eclipse.jetty.io.bio.StreamEndPoint.fill(StreamEndPoint.java:141)
    at org.eclipse.jetty.server.bio.SocketConnector$ConnectorEndPoint.fill(SocketConnector.java:227)
    at org.eclipse.jetty.http.HttpParser.fill(HttpParser.java:1044)
    at org.eclipse.jetty.http.HttpParser.parseNext(HttpParser.java:280)
    at org.eclipse.jetty.http.HttpParser.parseAvailable(HttpParser.java:235)
    at org.eclipse.jetty.server.BlockingHttpConnection.handle(BlockingHttpConnection.java:72)
    at org.eclipse.jetty.server.bio.SocketConnector$ConnectorEndPoint.run(SocketConnector.java:264)
    at org.eclipse.jetty.util.thread.QueuedThreadPool.runJob(QueuedThreadPool.java:608)
    at org.eclipse.jetty.util.thread.QueuedThreadPool$3.run(QueuedThreadPool.java:543)
    at java.lang.Thread.run(Thread.java:745) 
{code}

Jstack on the executors shows blocking in loadClass / findClass, where a single thread is RUNNABLE and waiting to hear back from the driver and other executor threads are BLOCKED on object monitor synchronization at Class.forName0().

Remotely triggering a GC on a hanging executor allows the job to progress and complete more tasks before hanging again.  If I repeatedly trigger GC on all of the executors, then the job runs to completion:

{code}
jps | grep CoarseGra | cut -d ' ' -f 1 | xargs -I {} -n 1 -P100 jcmd {} GC.run
{code}

The culprit is a {{catch}} block that ignores all exceptions and performs no cleanup: https://github.com/apache/spark/blob/v1.2.0/repl/src/main/scala/org/apache/spark/repl/ExecutorClassLoader.scala#L94

This bug has been present since Spark 1.0.0, but I suspect that we haven't seen it before because it's pretty hard to reproduce. Triggering this error requires a job with tasks that trigger ClassNotFoundExceptions yet are still able to run to completion.  It also requires that executors are able to leak enough open connections to exhaust the class server's Jetty thread pool limit, which requires that there are a large number of tasks (253+) and either a large number of executors or a very low amount of GC pressure on those executors (since GC will cause the leaked connections to be closed).

The fix here is pretty simple: add proper resource cleanup to this class.


---

* [SPARK-6207](https://issues.apache.org/jira/browse/SPARK-6207) | *Major* | **YARN secure cluster mode doesn't obtain a hive-metastore token**

When running a spark job, on YARN in secure mode, with "--deploy-mode cluster",  org.apache.spark.deploy.yarn.Client() does not obtain a delegation token to the hive-metastore. Therefore any attempts to talk to the hive-metastore fail with a "GSSException: No valid credentials provided..."


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

* [SPARK-6201](https://issues.apache.org/jira/browse/SPARK-6201) | *Major* | **INSET should coerce types**

Suppose we have the following table:

{code}
sqlc.jsonRDD(sc.parallelize(Seq("{\"a\": \"1\"}}", "{\"a\": \"2\"}}", "{\"a\": \"3\"}}"))).registerTempTable("d")
{code}

The schema is
{noformat}
root
 |-- a: string (nullable = true)
{noformat}

Then,

{code}
sql("select * from d where (d.a = 1 or d.a = 2)").collect
=>
Array([1], [2])
{code}

where d.a and constants 1,2 will be casted to Double first and do the comparison as you can find it out in the plan:

{noformat}
Filter ((CAST(a#155, DoubleType) = CAST(1, DoubleType)) || (CAST(a#155, DoubleType) = CAST(2, DoubleType)))
{noformat}

However, if I use

{code}
sql("select * from d where d.a in (1,2)").collect
{code}

The result is empty.

The physical plan shows it's using INSET:
{noformat}
== Physical Plan ==
Filter a#155 INSET (1,2)
 PhysicalRDD [a#155], MappedRDD[499] at map at JsonRDD.scala:47
{noformat}


*It seems INSET implementation in SparkSQL doesn't coerce type implicitly, where Hive does. We should make SparkSQL conform to Hive's behavior, even though doing implicit coercion here is very confusing for comparing String and Int.*

Jianshi


---

* [SPARK-6199](https://issues.apache.org/jira/browse/SPARK-6199) | *Major* | **Support CTE**

Support CTE in SQLContext and HiveContext


---

* [SPARK-6197](https://issues.apache.org/jira/browse/SPARK-6197) | *Minor* | **handle json parse exception for eventlog file not finished writing**

This is a following JIRA for [SPARK-6107|https://issues.apache.org/jira/browse/SPARK-6107]. In  [SPARK-6107|https://issues.apache.org/jira/browse/SPARK-6107], webUI can display event log files that with suffix *.inprogress*. However, the eventlog file may be not finished writing for some abnormal cases (e.g. Ctrl+C), In which case, the file maybe  truncated in the last line, leading to the line being not in valid Json format. Which will cause Json parse exception when reading the file. 

For this case, we can just ignore the last line content, since the history for abnormal cases showed on web is only a reference for user, it can demonstrate the past status of the app before terminated abnormally (we can not guarantee the history can show exactly the last moment when app encounter the abnormal situation).


---

* [SPARK-6195](https://issues.apache.org/jira/browse/SPARK-6195) | *Major* | **Specialized in-memory column type for fixed-precision decimal**

When building in-memory columnar representation, decimal values are currently serialized via a generic serializer, which is unnecessarily slow. Since some decimals (precision < 19) can be represented as annotated long values, we should add a specialized fixed-precision decimal column type to speed up in-memory decimal serialization.


---

* [SPARK-6194](https://issues.apache.org/jira/browse/SPARK-6194) | *Critical* | **collect() in PySpark will cause memory leak in JVM**

It could be reproduced  by:

{code}
for i in range(40):
    sc.parallelize(range(5000), 10).flatMap(lambda i: range(10000)).collect()
{code}

It will fail after 2 or 3 jobs, and run totally successfully if I add
`gc.collect()` after each job.

We could call \_detach() for the JavaList returned by collect
in Java, will send out a PR for this.

Reported by Michael and commented by Josh：

On Thu, Mar 5, 2015 at 2:39 PM, Josh Rosen <joshrosen@databricks.com> wrote:
> Based on Py4J's Memory Model page
> (http://py4j.sourceforge.net/advanced\_topics.html#py4j-memory-model):
>
>> Because Java objects on the Python side are involved in a circular
>> reference (JavaObject and JavaMember reference each other), these objects
>> are not immediately garbage collected once the last reference to the object
>> is removed (but they are guaranteed to be eventually collected if the Python
>> garbage collector runs before the Python program exits).
>
>
>>
>> In doubt, users can always call the detach function on the Python gateway
>> to explicitly delete a reference on the Java side. A call to gc.collect()
>> also usually works.
>
>
> Maybe we should be manually calling detach() when the Python-side has
> finished consuming temporary objects from the JVM.  Do you have a small
> workload / configuration that reproduces the OOM which we can use to test a
> fix?  I don't think that I've seen this issue in the past, but this might be
> because we mistook Java OOMs as being caused by collecting too much data
> rather than due to memory leaks.
>
> On Thu, Mar 5, 2015 at 10:41 AM, Michael Nazario <mnazario@palantir.com>
> wrote:
>>
>> Hi Josh,
>>
>> I have a question about how PySpark does memory management in the Py4J
>> bridge between the Java driver and the Python driver. I was wondering if
>> there have been any memory problems in this system because the Python
>> garbage collector does not collect circular references immediately and Py4J
>> has circular references in each object it receives from Java.
>>
>> When I dug through the PySpark code, I seemed to find that most RDD
>> actions return by calling collect. In collect, you end up calling the Java
>> RDD collect and getting an iterator from that. Would this be a possible
>> cause for a Java driver OutOfMemoryException because there are resources in
>> Java which do not get freed up immediately?
>>
>> I have also seen that trying to take a lot of values from a dataset twice
>> in a row can cause the Java driver to OOM (while just once works). Are there
>> some other memory considerations that are relevant in the driver?
>>
>> Thanks,
>> Michael


---

* [SPARK-6193](https://issues.apache.org/jira/browse/SPARK-6193) | *Minor* | **Speed up how spark-ec2 searches for clusters**

{{spark-ec2}} currently pulls down [info for all instances|https://github.com/apache/spark/blob/eb48fd6e9d55fb034c00e61374bb9c2a86a82fb8/ec2/spark\_ec2.py#L620] and searches locally for the target cluster. Instead, it should push those filters up when querying EC2.

For AWS accounts with hundreds of active instances, there is a difference of many seconds between the two.


---

* [SPARK-6191](https://issues.apache.org/jira/browse/SPARK-6191) | *Minor* | **Generalize spark-ec2's ability to download libraries from PyPI**

Right now we have a method to specifically download boto. Let's generalize it so it's easy to download additional libraries if we want.

Likely use cases:
* Downloading PyYAML to allow spark-ec2 configs to be persisted as a YAML file. (SPARK-925)
* Downloading argparse to clean up / modernize our option parsing.


---

* [SPARK-6188](https://issues.apache.org/jira/browse/SPARK-6188) | *Minor* | **Instance types can be mislabeled when re-starting cluster with default arguments**

This was discovered when investigating https://issues.apache.org/jira/browse/SPARK-5838.

In short, when restarting a cluster that you launched with an alternative instance type, you have to provide the instance type(s) again in the "/spark-ec2 -i <key-file> --region=<ec2-region> start <cluster-name>" command. Otherwise it gets set to the default m1.large.

This then affects the setup of the machines.

I'll submit a pull request that takes cares of this, without the user needing to provide the instance type(s) again.

EDIT: 

Example case where this becomes a problem:
1. User launches a cluster with instances with 1 disk, ex. m3.large.
2. The user stops the cluster.
3. When the user restarts the cluster with the start command without providing the instance type, the setup is performed using the default instance type, m1.large, which assumes 2 disks present in the machine.
4. The SPARK\_LOCAL\_DIRS is then set to "mnt/spark,mnt2/spark". /mnt2 corresponds to the snapshot partition in a m3.large instance, which is only 8GB in size. When the user runs jobs that shuffle data, this partition fills up quickly, resulting in failed jobs due to "No space left on device" errors.

Apart from this example one could come up with other examples where the setup of the machines is wrong, due to assuming that they are of type m1.large.


---

* [SPARK-6179](https://issues.apache.org/jira/browse/SPARK-6179) | *Major* | **Support "SHOW PRINCIPALS role\_name;"**

SHOW PRINCIPALS role\_name;

Lists all roles and users who belong to this role.
Only the admin role has privilege for this.


---

* [SPARK-6177](https://issues.apache.org/jira/browse/SPARK-6177) | *Trivial* | **Add note in LDA example to remind possible coalesce**

Add comment to introduce coalesce to LDA example to avoid the possible massive partitions from sc.textFile.

sc.textFile will create RDD with one partition for each file, and the possible massive partitions downgrades LDA performance.


---

* [SPARK-6153](https://issues.apache.org/jira/browse/SPARK-6153) | *Minor* | **intellij import from maven cannot debug sparksqlclidriver**

The {{hive-thriftserver}} module depends on Guava indirectly via {{hive}} module. However, the scope of Guava was explicitly set to {{provided}} in the root POM. This makes developers not able to run the Spark SQL CLI tool within IntelliJ IDEA for debugging purposes. Should promote Guava dependency scope to {{runtime}} for {{hive-thriftserver}} module.


---

* [SPARK-6146](https://issues.apache.org/jira/browse/SPARK-6146) | *Critical* | **Support more datatype in SqlParser**

Right now, I cannot do 
{code}
df.selectExpr("cast(a as bigint)")
{code}
because only the following data types are supported in SqlParser
{code}
protected lazy val dataType: Parser[DataType] =
    ( STRING ^^^ StringType
    | TIMESTAMP ^^^ TimestampType
    | DOUBLE ^^^ DoubleType
    | fixedDecimalType
    | DECIMAL ^^^ DecimalType.Unlimited
    | DATE ^^^ DateType
    | INT ^^^ IntegerType
    )
{code}


---

* [SPARK-6145](https://issues.apache.org/jira/browse/SPARK-6145) | *Critical* | **ORDER BY fails to resolve nested fields**

{code}
sqlContext.jsonRDD(sc.parallelize(
  """{"a": {"b": 1}, "c": 1}""" :: Nil)).registerTempTable("nestedOrder")

// Works
sqlContext.sql("SELECT 1 FROM nestedOrder ORDER BY c")

// Fails now
sqlContext.sql("SELECT 1 FROM nestedOrder ORDER BY a.b")

// Fails now
sqlContext.sql("SELECT a.b FROM nestedOrder ORDER BY a.b")
{code}

Relatedly the error message for bad get fields should also include the name of the field in question.


---

* [SPARK-6138](https://issues.apache.org/jira/browse/SPARK-6138) | *Minor* | **Enhance the `toArray` method in `SizeTrackingVector`**

Use array copy instead of `Iterator#toArray` to make it more efficient.


---

* [SPARK-6133](https://issues.apache.org/jira/browse/SPARK-6133) | *Major* | **SparkContext#stop is not idempotent**

If we call sc.stop() twice, the listener bus will attempt to log an event after stop() is called, resulting in a scary error message. This happens if Spark calls sc.stop() internally (it does this on certain error conditions) and the application code calls it again, for instance.


---

* [SPARK-6132](https://issues.apache.org/jira/browse/SPARK-6132) | *Major* | **Context cleaner race condition across SparkContexts**

The context cleaner thread is not stopped properly. If a SparkContext is started immediately after one stops, the context cleaner of the former can clean variables in the latter.

This is because the cleaner.stop() just sets a flag and expects the thread to terminate asynchronously, but the code to clean broadcasts goes through `SparkEnv.get.blockManager`, which could belong to a different SparkContext. This is likely to be the cause of the `JavaAPISuite`, which creates many back-to-back SparkContexts, being flaky.

The right behavior is to wait until all currently running clean up tasks have finished.
{code}
java.io.IOException: org.apache.spark.SparkException: Failed to get broadcast\_0\_piece0 of broadcast\_0
        at org.apache.spark.util.Utils$.tryOrIOException(Utils.scala:1180)
        at org.apache.spark.broadcast.TorrentBroadcast.readBroadcastBlock(TorrentBroadcast.scala:164)
        at org.apache.spark.broadcast.TorrentBroadcast.\_value$lzycompute(TorrentBroadcast.scala:64)
        at org.apache.spark.broadcast.TorrentBroadcast.\_value(TorrentBroadcast.scala:64)
        ...
Caused by: org.apache.spark.SparkException: Failed to get broadcast\_0\_piece0 of broadcast\_0
        at org.apache.spark.broadcast.TorrentBroadcast$$anonfun$org$apache$spark$broadcast$TorrentBroadcast$$readBlocks$1$$anonfun$2.apply(TorrentBroadcast.scala:137)
        at org.apache.spark.broadcast.TorrentBroadcast$$anonfun$org$apache$spark$broadcast$TorrentBroadcast$$readBlocks$1$$anonfun$2.apply(TorrentBroadcast.scala:137)
        at scala.Option.getOrElse(Option.scala:120)
{code}


---

* [SPARK-6130](https://issues.apache.org/jira/browse/SPARK-6130) | *Major* | **support if not exists for insert overwrite into partition in hiveQl**

Standard syntax:
INSERT OVERWRITE TABLE tablename1 [PARTITION (partcol1=val1, partcol2=val2 ...) [IF NOT EXISTS]] select\_statement1 FROM from\_statement;
INSERT INTO TABLE tablename1 [PARTITION (partcol1=val1, partcol2=val2 ...)] select\_statement1 FROM from\_statement;
 
Hive extension (multiple inserts):
FROM from\_statement
INSERT OVERWRITE TABLE tablename1 [PARTITION (partcol1=val1, partcol2=val2 ...) [IF NOT EXISTS]] select\_statement1
[INSERT OVERWRITE TABLE tablename2 [PARTITION ... [IF NOT EXISTS]] select\_statement2]
[INSERT INTO TABLE tablename2 [PARTITION ...] select\_statement2] ...;
FROM from\_statement
INSERT INTO TABLE tablename1 [PARTITION (partcol1=val1, partcol2=val2 ...)] select\_statement1
[INSERT INTO TABLE tablename2 [PARTITION ...] select\_statement2]
[INSERT OVERWRITE TABLE tablename2 [PARTITION ... [IF NOT EXISTS]] select\_statement2] ...;
 
Hive extension (dynamic partition inserts):
INSERT OVERWRITE TABLE tablename PARTITION (partcol1[=val1], partcol2[=val2] ...) select\_statement FROM from\_statement;
INSERT INTO TABLE tablename PARTITION (partcol1[=val1], partcol2[=val2] ...) select\_statement FROM from\_statement;


---

* [SPARK-6124](https://issues.apache.org/jira/browse/SPARK-6124) | *Minor* | **Support jdbc connection properties in OPTIONS part of the query**

We would like to make it possible to specify connection properties in OPTIONS part of the sql query that uses jdbc driver. For example:

CREATE TEMPORARY TABLE abc
USING org.apache.spark.sql.jdbc
OPTIONS (url '$url', dbtable '(SELECT \_ROWID\_ FROM test.people)', user 'testUser', password 'testPass')

To do this, we will do minor changes in JDBCRelation and JDBCRDD.


---

* [SPARK-6119](https://issues.apache.org/jira/browse/SPARK-6119) | *Major* | **DataFrame.dropna support**

Support dropping rows with null values (dropna). Similar to Pandas' dropna

http://pandas.pydata.org/pandas-docs/dev/generated/pandas.DataFrame.dropna.html


---

* [SPARK-6118](https://issues.apache.org/jira/browse/SPARK-6118) | *Minor* | **making package name of deploy.worker.CommandUtils and deploy.CommandUtilsSuite consistent**

I found that the object CommandUtils is placed under deploy.worker package, while CommandUtilsSuite is  under deploy

Conventionally, we put the implementation and unit test class under the same package


---

* [SPARK-6117](https://issues.apache.org/jira/browse/SPARK-6117) | *Major* | **describe function for summary statistics**

DataFrame.describe should return a DataFrame with summary statistics. 

{code}
def describe(cols: String*): DataFrame
{code}

If cols is empty, then run describe on all numeric columns.

The returned DataFrame should have 5 rows (count, mean, stddev, min, max) and n + 1 columns. The 1st column is the name of the aggregate function, and the next n columns are the numeric columns of interest in the input DataFrame.

Similar to Pandas (but removing percentile since accurate percentiles are too expensive to compute for Big Data)
{code}
In [19]: df.describe()
Out[19]: 
              A         B         C         D
count  6.000000  6.000000  6.000000  6.000000
mean   0.073711 -0.431125 -0.687758 -0.233103
std    0.843157  0.922818  0.779887  0.973118
min   -0.861849 -2.104569 -1.509059 -1.135632
max    1.212112  0.567020  0.276232  1.071804
{code}


---

* [SPARK-6113](https://issues.apache.org/jira/browse/SPARK-6113) | *Critical* | **Stabilize DecisionTree and ensembles APIs**

*Issue*: The APIs for DecisionTree and ensembles (RandomForests and GradientBoostedTrees) have been experimental for a long time.  The API has become very convoluted because trees and ensembles have many, many variants, some of which we have added incrementally without a long-term design.

*Proposal*: This JIRA is for discussing changes required to finalize the APIs.  After we discuss, I will make a PR to update the APIs and make them non-Experimental.  This will require making many breaking changes; see the design doc for details.

[Design doc | https://docs.google.com/document/d/1rJ\_DZinyDG3PkYkAKSsQlY0QgCeefn4hUv7GsPkzBP4]: This outlines current issues and the proposed API.


---

* [SPARK-6107](https://issues.apache.org/jira/browse/SPARK-6107) | *Major* | **event log file ends with .inprogress should be able to display on webUI for standalone mode**

when application is finished running abnormally (Ctrl + c for example), the history event log file is still ends with *.inprogress* suffix. And the application state can not be showed on webUI, User can just see "*Application history not foud xxxx, Application xxx is still in progress*".  
User should also can see the status of the abnormal finished applications.


---

* [SPARK-6088](https://issues.apache.org/jira/browse/SPARK-6088) | *Major* | **UI is malformed when tasks fetch remote results**

There are three issues when tasks get remote results:

(1) The status never changes from GET\_RESULT to SUCCEEDED
(2) The time to get the result is shown as the absolute time (resulting in a non-sensical output that says getting the result took >1 million hours) rather than the elapsed time
(3) The getting result time is included as part of the scheduler delay

cc [~shivaram]


---

* [SPARK-6087](https://issues.apache.org/jira/browse/SPARK-6087) | *Major* | **Provide actionable exception if Kryo buffer is not large enough**

Right now if you don't have a large enough Kryo buffer, you get a really confusing exception. I noticed this when using Kryo to serialize broadcasted tables in Spark SQL. We should catch-then-rethrow this in the KryoSerializer, wrapping it in a message that suggests increasing the Kryo buffer size configuration variable.

{code}
com.esotericsoftware.kryo.KryoException: Buffer overflow. Available: 0, required: 3
Serialization trace:
value (org.apache.spark.sql.catalyst.expressions.MutableAny)
values (org.apache.spark.sql.catalyst.expressions.SpecificMutableRow)
	at com.esotericsoftware.kryo.io.Output.require(Output.java:138)
	at com.esotericsoftware.kryo.io.Output.writeAscii\_slow(Output.java:446)
	at com.esotericsoftware.kryo.io.Output.writeString(Output.java:306)
	at com.esotericsoftware.kryo.serializers.DefaultSerializers$StringSerializer.write(DefaultSerializers.java:153)
	at com.esotericsoftware.kryo.serializers.DefaultSerializers$StringSerializer.write(DefaultSerializers.java:146)
	at com.esotericsoftware.kryo.Kryo.writeObject(Kryo.java:501)
	at com.esotericsoftware.kryo.serializers.FieldSerializer$ObjectField.write(FieldSerializer.java:564)
	at com.esotericsoftware.kryo.serializers.FieldSerializer.write(FieldSerializer.java:213)
	at com.esotericsoftware.kryo.Kryo.writeClassAndObject(Kryo.java:568)
	at com.esotericsoftware.kryo.serializers.DefaultArraySerializers$ObjectArraySerializer.write(DefaultArraySerializers.java:318)
	at com.esotericsoftware.kryo.serializers.DefaultArraySerializers$ObjectArraySerializer.write(DefaultArraySerializers.java:293)
	at com.esotericsoftware.kryo.Kryo.writeObject(Kryo.java:501)
	at com.esotericsoftware.kryo.serializers.FieldSerializer$ObjectField.write(FieldSerializer.java:564)
	at com.esotericsoftware.kryo.serializers.FieldSerializer.write(FieldSerializer.java:213)
	at com.esotericsoftware.kryo.Kryo.writeClassAndObject(Kryo.java:568)
	at com.esotericsoftware.kryo.serializers.DefaultArraySerializers$ObjectArraySerializer.write(DefaultArraySerializers.java:318)
	at com.esotericsoftware.kryo.serializers.DefaultArraySerializers$ObjectArraySerializer.write(DefaultArraySerializers.java:293)
	at com.esotericsoftware.kryo.Kryo.writeClassAndObject(Kryo.java:568)
	at org.apache.spark.serializer.KryoSerializerInstance.serialize(KryoSerializer.scala:167)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:234)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
{code}

/cc [~kayousterhout] who helped report his issue


---

* [SPARK-6085](https://issues.apache.org/jira/browse/SPARK-6085) | *Minor* | **Increase default value for memory overhead**

Several users have communicated how current default memory overhead value resulted in failed computation in Spark on YARN.
See this thread:
http://search-hadoop.com/m/JW1q58FDel

Increasing default value for memory overhead would improve out of box user experience.


---

* [SPARK-6081](https://issues.apache.org/jira/browse/SPARK-6081) | *Minor* | **DriverRunner doesn't support pulling HTTP/HTTPS URIs**

Standalone cluster mode according to the docs supports specifying http|https jar urls, but when actually called the urls passed to the driver runner is not able to pull http uris due to the usage of hadoopfs get.


---

* [SPARK-6079](https://issues.apache.org/jira/browse/SPARK-6079) | *Minor* | **Use index to speed up StatusTracker.getJobIdsForGroup()**

{{StatusTracker.getJobIdsForGroup()}} is implemented via a linear scan over a HashMap rather than using an index.  This might be an expensive operation if there are many (e.g. thousands) of retained jobs.  We can add a new index to speed this up.


---

* [SPARK-6077](https://issues.apache.org/jira/browse/SPARK-6077) | *Minor* | **Multiple spark streaming tabs on UI when reuse the same sparkcontext**

Currently we would create a new streaming tab for each streamingContext even if there's already one on the same sparkContext which would cause duplicate StreamingTab created and none of them is taking effect. 

snapshot: https://www.dropbox.com/s/t4gd6hqyqo0nivz/bad%20multiple%20streamings.png?dl=0

How to reproduce:
1)
import org.apache.spark.SparkConf
import org.apache.spark.streaming.{Seconds, StreamingContext}
import org.apache.spark.storage.StorageLevel

val ssc = new StreamingContext(sc, Seconds(1))
val lines = ssc.socketTextStream("localhost", 9999, StorageLevel.MEMORY\_AND\_DISK\_SER)
val words = lines.flatMap(\_.split(" "))
val wordCounts = words.map(x => (x, 1)).reduceByKey(\_ + \_)
wordCounts.print()
ssc.start()
.....

2)
ssc.stop(false)
val ssc = new StreamingContext(sc, Seconds(1))
val lines = ssc.socketTextStream("localhost", 9999, StorageLevel.MEMORY\_AND\_DISK\_SER)
val words = lines.flatMap(\_.split(" "))
val wordCounts = words.map(x => (x, 1)).reduceByKey(\_ + \_)
wordCounts.print()
ssc.start()


---

* [SPARK-6076](https://issues.apache.org/jira/browse/SPARK-6076) | *Minor* | **Fix a potential OOM issue when StorageLevel is MEMORY\_AND\_DISK\_SER**

When StorageLevel is MEMORY\_AND\_DISK\_SER, it will copy the content from file into memory, then put it into MemoryStore. See: https://github.com/apache/spark/blob/dcd1e42d6b6ac08d2c0736bf61a15f515a1f222b/core/src/main/scala/org/apache/spark/storage/BlockManager.scala#L538

However, if the file is bigger than the free memory, OOM will happen. A better approach is testing if there is enough memory. If not, copyForMemory should not be created, since this is an option operation.


---

* [SPARK-6075](https://issues.apache.org/jira/browse/SPARK-6075) | *Blocker* | **After SPARK-3885, some tasks' accumulator updates may be lost**

It looks like some of the AccumulatorSuite tests have started failing nondeterministically on Jenkins.  The errors seem to be due to lost / missing accumulator updates, e.g.

{code}
Set(843, 356, 437, [...], 181, 618, 131) did not contain element 901
{code}

This could somehow be related to SPARK-3885 / https://github.com/apache/spark/pull/4021, a patch to garbage-collect accumulators, which was only merged into master.

https://amplab.cs.berkeley.edu/jenkins/view/Spark/job/Spark-Master-SBT/lastCompletedBuild/AMPLAB\_JENKINS\_BUILD\_PROFILE=hadoop2.0,label=centos/testReport/org.apache.spark/AccumulatorSuite/add\_value\_to\_collection\_accumulators/

I think I've figured it out: consider the lifecycle of an accumulator in a task, say ShuffleMapTask: on the executor, each task deserializes its own copy of the RDD inside of its runTask method, so the strong reference to the RDD disappears at the end of runTask. In Executor.run(), we call Accumulators.values after runTask has exited, so there's a small window in which the tasks's RDD can be GC'd, causing accumulators to be GC'd as well because there are no longer any strong references to them.

The fix is to keep strong references in localAccums, since we clear this at the end of each task anyways. I'm glad that I was able to figure out precisely why this was necessary and sorry that I missed this during review; I'll submit a fix shortly. In terms of preventative measures, it might be a good idea to write up the lifetime / lifecycle of objects' strong references whenever we're using WeakReferences, since the process of explicitly writing that out would prevent these sorts of mistakes in the future.


---

* [SPARK-6065](https://issues.apache.org/jira/browse/SPARK-6065) | *Major* | **Optimize word2vec.findSynonyms speed**

word2vec.findSynonyms iterates through the entire vocabulary to find similar words.  This is really slow relative to the [gcode-hosted word2vec implementation | https://code.google.com/p/word2vec/].  It should be optimized by storing words in a datastructure designed for finding nearest neighbors.

This would require storing a copy of the model (basically an inverted dictionary), which could be a problem if users have a big model (e.g., 100 features x 10M words or phrases = big dictionary).  It might be best to provide a function for converting the model into a model optimized for findSynonyms.


---

* [SPARK-6063](https://issues.apache.org/jira/browse/SPARK-6063) | *Minor* | **MLlib doesn't pass mvn scalastyle check due to UTF chars in LDAModel.scala**

On Windows 8.1, trying to build Spark from source (latest Github pull) produces a failure during MLlib build. The cause appears similar to SPARK-3372: unicode characters in a Scala file.

*Affected file*
spark/mllib/src/main/scala/org/apache/spark/mllib/clustering
LDAModel.scala:133
{code}
   * This is often called “theta” in the literature.
{code}
Note the two \u201D marks around *theta*.

Replacing the \u201D with a standard single apostrophe (\x27) resolves the issue.


---

* [SPARK-6059](https://issues.apache.org/jira/browse/SPARK-6059) | *Minor* | **Add volatile to ApplicationMaster.reporterThread and ApplicationMaster.allocator**

ApplicationMaster.reporterThread and ApplicationMaster.allocator are accessed in multiple threads, so they should be marked as volatile.


---

* [SPARK-6054](https://issues.apache.org/jira/browse/SPARK-6054) | *Blocker* | **SQL UDF returning object of case class; regression from 1.2.0**

The following code fails with a stack trace beginning with:

{code}
15/02/26 23:21:32 ERROR Executor: Exception in task 2.0 in stage 7.0 (TID 422)
org.apache.spark.sql.catalyst.errors.package$TreeNodeException: makeCopy, tree: scalaUDF(sales#2,discounts#3)
	at org.apache.spark.sql.catalyst.errors.package$.attachTree(package.scala:47)
	at org.apache.spark.sql.catalyst.trees.TreeNode.makeCopy(TreeNode.scala:309)
	at org.apache.spark.sql.catalyst.trees.TreeNode.transformChildrenDown(TreeNode.scala:237)
	at org.apache.spark.sql.catalyst.trees.TreeNode.transformDown(TreeNode.scala:192)
	at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$4.apply(TreeNode.scala:207)
{code}

Here is the 1.3.0 version of the code:
{code}
case class SalesDisc(sales: Double, discounts: Double)
def makeStruct(sales: Double, disc:Double) = SalesDisc(sales, disc)
sqlContext.udf.register("makeStruct", makeStruct \_)
val withStruct =
      sqlContext.sql("SELECT id, sd.sales FROM (SELECT id, makeStruct(sales, discounts) AS sd FROM customerTable) AS d")
    withStruct.foreach(println)
{code}

This used to work in 1.2.0. Interestingly, the following simplified version fails similarly, even though it seems to me to be VERY similar to the last test in the UDFSuite:

{code}
SELECT makeStruct(sales, discounts) AS sd FROM customerTable
{code}
The data table is defined thus:
{code}
  val custs = Seq(
      Cust(1, "Widget Co", 120000.00, 0.00, "AZ"),
      Cust(2, "Acme Widgets", 410500.00, 500.00, "CA"),
      Cust(3, "Widgetry", 410500.00, 200.00, "CA"),
      Cust(4, "Widgets R Us", 410500.00, 0.0, "CA"),
      Cust(5, "Ye Olde Widgete", 500.00, 0.0, "MA")
    )
    val customerTable = sc.parallelize(custs, 4).toDF()

    customerTable.registerTempTable("customerTable")
{code}


---

* [SPARK-6046](https://issues.apache.org/jira/browse/SPARK-6046) | *Minor* | **Provide an easier way for developers to handle deprecated configs**

Right now we have code that looks like this:
https://github.com/apache/spark/blob/8942b522d8a3269a2a357e3a274ed4b3e66ebdde/core/src/main/scala/org/apache/spark/deploy/history/FsHistoryProvider.scala#L52

where a random class calls `SparkConf.translateConfKey` to warn the user against a deprecated configs. We should refactor this slightly so we can make `translateConfKey` private instead of calling it from everywhere.


---

* [SPARK-6045](https://issues.apache.org/jira/browse/SPARK-6045) | *Trivial* | **RecordWriter should be checked against null in PairRDDFunctions#saveAsNewAPIHadoopDataset**

gtinside reported in the thread 'NullPointerException in TaskSetManager' with the following stack trace:
{code}
WARN 2015-02-26 14:21:43,217 [task-result-getter-0] TaskSetManager - Lost
task 14.2 in stage 0.0 (TID 29, devntom003.dev.blackrock.com):
java.lang.NullPointerException

org.apache.spark.rdd.PairRDDFunctions.saveAsNewAPIHadoopDataset(PairRDDFunctions.scala:1007)
com.bfm.spark.test.CassandraHadoopMigrator$.main(CassandraHadoopMigrator.scala:77)
com.bfm.spark.test.CassandraHadoopMigrator.main(CassandraHadoopMigrator.scala)
sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
java.lang.reflect.Method.invoke(Method.java:606)
org.apache.spark.deploy.SparkSubmit$.launch(SparkSubmit.scala:358)
org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:75)
org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)
{code}
Looks like the following call in finally block was the cause:
{code}
    writer.close(hadoopContext)
{code}
We should check writer against null before calling close().


---

* [SPARK-6044](https://issues.apache.org/jira/browse/SPARK-6044) | *Major* | **RDD.aggregate() should not use the closure serializer on the zero value**

PairRDDFunctions.aggregateByKey() correctly uses SparkEnv.get.serializer.newInstance() to serialize the zero value. It seems this logic is not mirrored in RDD.aggregate(), which computes the aggregation and returns the aggregation directly at the driver. We should change RDD.aggregate() to make this consistent; I ran into some serialization errors because I was expecting RDD.aggregate() to Kryo serialize the zero value.


---

* [SPARK-6036](https://issues.apache.org/jira/browse/SPARK-6036) | *Major* | **EventLog process logic has race condition with Akka actor system**

when application finished, akka actor system will trigger disassociated event, and Master will rebuild SparkUI on web, in which progress will check whether the eventlog files are still in progress. The current logic in SparkContext is first stop the actorsystem, and then stop enentLogListener. This will cause that the enentLogListener has not finished renaming the eventLog dir name (from app-xxxx.inprogress to app-xxxx)  when Spark Master try to access the dir.


---

* [SPARK-6030](https://issues.apache.org/jira/browse/SPARK-6030) | *Minor* | **SizeEstimator gives wrong result for Integer object on 64bit JVM with UseCompressedOops on**

Integer on 64bit JVM with UseCompressedOops on is 16bytes (verified by a related article http://www.javaworld.com/article/2077496/testing-debugging/java-tip-130--do-you-know-your-data-size-.html, I created a gist for that code https://gist.github.com/advancedxy/2ae7c9cc7629f3aeb679), however SizeEstimator give 24bytes for Integer.

SizeEstimator gives the wrong answer because it alignSize on internal shellSize. For Integer, there is a parent class called Number, which has zero fields. Thus the shellSize for Number is 12bytes but was aligned to 16bytes, which resulted the Integer's shellSize to be 20bytes, aligned to 24bytes.
The right path should be 
1. Object-> shellSize: 12bytes, realSize: 16bytes
2. Number -> shellSize: 12bytes + 0, realSize: 16bytes
3. Integer -> shellSize: 12bytes + 4bytes(the int value), realSize: 16bytes

The fix is rather simple, I will submit a pr later.


---

* [SPARK-6025](https://issues.apache.org/jira/browse/SPARK-6025) | *Minor* | **Helper method for GradientBoostedTrees to compute validation error**

Create a helper method for computing the error at each iteration of boosting.  This should be used post-hoc to compute the error efficiently on a new dataset.

E.g.:
{code}
def evaluateEachIteration(data: RDD[LabeledPoint], evaluator): Array[Double]
{code}

Notes:
* It should run in the same big-O time as predict() by keeping a running total (residual).
* A different method name could be good.
* It could take an evaluator and/or could evaluate using the training metric by default.


---

* [SPARK-6014](https://issues.apache.org/jira/browse/SPARK-6014) | *Minor* | **java.io.IOException: Filesystem is thrown when ctrl+c or ctrl+d spark-sql on YARN**

This is a regression of SPARK-2261. In branch-1.3 and master, {{EventLoggingListener}} throws "{{java.io.IOException: Filesystem closed}}" when ctrl+c or ctrl+d the spark-sql shell.

The root cause is that DFSClient is already shut down before EventLoggingListener invokes the following HDFS methods, and thus, DFSClient.isClientRunning() check fails-
{code}
Line #135: hadoopDataStream.foreach(hadoopFlushMethod.invoke(\_))
Line #187: if (fileSystem.exists(target)) {
{code}
The followings are full stack trace-
{code}
java.lang.reflect.InvocationTargetException
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.spark.scheduler.EventLoggingListener$$anonfun$logEvent$3.apply(EventLoggingListener.scala:135)
	at org.apache.spark.scheduler.EventLoggingListener$$anonfun$logEvent$3.apply(EventLoggingListener.scala:135)
	at scala.Option.foreach(Option.scala:236)
	at org.apache.spark.scheduler.EventLoggingListener.logEvent(EventLoggingListener.scala:135)
	at org.apache.spark.scheduler.EventLoggingListener.onApplicationEnd(EventLoggingListener.scala:170)
	at org.apache.spark.scheduler.SparkListenerBus$class.onPostEvent(SparkListenerBus.scala:54)
	at org.apache.spark.scheduler.LiveListenerBus.onPostEvent(LiveListenerBus.scala:31)
	at org.apache.spark.scheduler.LiveListenerBus.onPostEvent(LiveListenerBus.scala:31)
	at org.apache.spark.util.ListenerBus$class.postToAll(ListenerBus.scala:53)
	at org.apache.spark.util.AsynchronousListenerBus.postToAll(AsynchronousListenerBus.scala:36)
	at org.apache.spark.util.AsynchronousListenerBus$$anon$1$$anonfun$run$1.apply$mcV$sp(AsynchronousListenerBus.scala:76)
	at org.apache.spark.util.AsynchronousListenerBus$$anon$1$$anonfun$run$1.apply(AsynchronousListenerBus.scala:61)
	at org.apache.spark.util.AsynchronousListenerBus$$anon$1$$anonfun$run$1.apply(AsynchronousListenerBus.scala:61)
	at org.apache.spark.util.Utils$.logUncaughtExceptions(Utils.scala:1613)
	at org.apache.spark.util.AsynchronousListenerBus$$anon$1.run(AsynchronousListenerBus.scala:60)
Caused by: java.io.IOException: Filesystem closed
	at org.apache.hadoop.hdfs.DFSClient.checkOpen(DFSClient.java:707)
	at org.apache.hadoop.hdfs.DFSOutputStream.flushOrSync(DFSOutputStream.java:1843)
	at org.apache.hadoop.hdfs.DFSOutputStream.hflush(DFSOutputStream.java:1804)
	at org.apache.hadoop.fs.FSDataOutputStream.hflush(FSDataOutputStream.java:127)
	... 19 more
{code}
{code}
Exception in thread "Thread-3" java.io.IOException: Filesystem closed
	at org.apache.hadoop.hdfs.DFSClient.checkOpen(DFSClient.java:707)
	at org.apache.hadoop.hdfs.DFSClient.getFileInfo(DFSClient.java:1760)
	at org.apache.hadoop.hdfs.DistributedFileSystem$17.doCall(DistributedFileSystem.java:1124)
	at org.apache.hadoop.hdfs.DistributedFileSystem$17.doCall(DistributedFileSystem.java:1120)
	at org.apache.hadoop.fs.FileSystemLinkResolver.resolve(FileSystemLinkResolver.java:81)
	at org.apache.hadoop.hdfs.DistributedFileSystem.getFileStatus(DistributedFileSystem.java:1120)
	at org.apache.hadoop.fs.FileSystem.exists(FileSystem.java:1398)
	at org.apache.spark.scheduler.EventLoggingListener.stop(EventLoggingListener.scala:187)
	at org.apache.spark.SparkContext$$anonfun$stop$4.apply(SparkContext.scala:1379)
	at org.apache.spark.SparkContext$$anonfun$stop$4.apply(SparkContext.scala:1379)
	at scala.Option.foreach(Option.scala:236)
	at org.apache.spark.SparkContext.stop(SparkContext.scala:1379)
	at org.apache.spark.sql.hive.thriftserver.SparkSQLEnv$.stop(SparkSQLEnv.scala:66)
	at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver$$anon$1.run(SparkSQLCLIDriver.scala:107)
{code}


---

* [SPARK-6004](https://issues.apache.org/jira/browse/SPARK-6004) | *Minor* | **Pick the best model when training GradientBoostedTrees with validation**

Since the validation error does not change monotonically, in practice, it should be proper to pick the best model when training GradientBoostedTrees with validation instead of stopping it early.


---

* [SPARK-5995](https://issues.apache.org/jira/browse/SPARK-5995) | *Major* | **Make ML Prediction Developer APIs public**

Previously, some Developer APIs were added to spark.ml for classification and regression to make it easier to add new algorithms and models: [SPARK-4789]  There are ongoing discussions about the best design of the API.  This JIRA is to continue that discussion and try to finalize those Developer APIs so that they can be made public.

Please see [this design doc from SPARK-4789 | https://docs.google.com/document/d/1BH9el33kBX8JiDdgUJXdLW14CA2qhTCWIG46eXZVoJs] for details on the original API design.

Some issues under debate:
* Should there be strongly typed APIs for fit()?
** Proposal: No
* Should the strongly typed API for transform() be public (vs. protected)?
** Proposal: Protected for now
* What transformation methods should the API make developers implement for classification?
** Proposal: See design doc
* Should there be a way to transform a single Row (instead of only DataFrames)?
** Proposal: Not for now


---

* [SPARK-5990](https://issues.apache.org/jira/browse/SPARK-5990) | *Major* | **Model import/export for IsotonicRegression**

Add save/load for IsotonicRegressionModel


---

* [SPARK-5988](https://issues.apache.org/jira/browse/SPARK-5988) | *Major* | **Model import/export for PowerIterationClusteringModel**

Add save/load for PowerIterationClusteringModel


---

* [SPARK-5987](https://issues.apache.org/jira/browse/SPARK-5987) | *Major* | **Model import/export for GaussianMixtureModel**

Support save/load for GaussianMixtureModel


---

* [SPARK-5986](https://issues.apache.org/jira/browse/SPARK-5986) | *Major* | **Model import/export for KMeansModel**

Support save/load for KMeansModel


---

* [SPARK-5983](https://issues.apache.org/jira/browse/SPARK-5983) | *Minor* | **Don't respond to HTTP TRACE in HTTP-based UIs**

This was flagged a while ago during a routine security scan: the HTTP-based Spark services respond to an HTTP TRACE command. This is basically an HTTP verb that has no practical use, and has a pretty theoretical chance of being an exploit vector. It is flagged as a security issue by one common tool, however.

Spark's HTTP services are based on Jetty, which by default does not enable TRACE (like Tomcat). However, the services do reply to TRACE requests. I think it is because the use of Jetty is pretty 'raw' and does not enable much of the default additional configuration you might get by using Jetty as a standalone server.

I know that it is at least possible to stop the reply to TRACE with a few extra lines of code, so I think it is worth shutting off TRACE requests. Although the security risk is quite theoretical, it should be easy to fix and bring the Spark services into line with the common default of HTTP servers today.


---

* [SPARK-5972](https://issues.apache.org/jira/browse/SPARK-5972) | *Minor* | **Cache residuals for GradientBoostedTrees during training**

In gradient boosting, the current model's prediction is re-computed for each training instance on every iteration.  The current residual (cumulative prediction of previously trained trees in the ensemble) should be cached.  That could reduce both computation (only computing the prediction of the most recently trained tree) and communication (only sending the most recently trained tree to the workers).


---

* [SPARK-5970](https://issues.apache.org/jira/browse/SPARK-5970) | *Minor* | **Temporary directories are not removed (but their content is)**

How to reproduce: 
- extract spark-1.2.1-bin-hadoop2.4.tgz
- without any further configuration, run bin/pyspark
- run sc.stop() and close python shell

Expected results:
- no temporary directories are left in /tmp

Actual results:
- four empty temporary directories are created in /tmp, for example after {{ls -d /tmp/spark*}}:{code}
/tmp/spark-1577b13d-4b9a-4e35-bac2-6e84e5605f53
/tmp/spark-96084e69-77fd-42fb-ab10-e1fc74296fe3
/tmp/spark-ab2ea237-d875-485e-b16c-5b0ac31bd753
/tmp/spark-ddeb0363-4760-48a4-a189-81321898b146
{code}

The issue is caused by changes in {{util/Utils.scala}}. Consider the {{createDirectory}}:
{code}  /**
   * Create a directory inside the given parent directory. The directory is guaranteed to be
   * newly created, and is not marked for automatic deletion.
   */
  def createDirectory(root: String, namePrefix: String = "spark"): File = ...
{code}

The {{createDirectory}} is used in two places. The first is in {{createTempDir}}, where it is marked for automatic deletion:
{code}
  def createTempDir(
      root: String = System.getProperty("java.io.tmpdir"),
      namePrefix: String = "spark"): File = {
    val dir = createDirectory(root, namePrefix)
    registerShutdownDeleteDir(dir)
    dir
  }
{code}

Nevertheless, it is also used in {{getOrCreateLocalDirs}} where it is \_not\_ marked for automatic deletion:
{code}
  private[spark] def getOrCreateLocalRootDirs(conf: SparkConf): Array[String] = {
    if (isRunningInYarnContainer(conf)) {
      // If we are in yarn mode, systems can have different disk layouts so we must set it
      // to what Yarn on this system said was available. Note this assumes that Yarn has
      // created the directories already, and that they are secured so that only the
      // user has access to them.
      getYarnLocalDirs(conf).split(",")
    } else {
      // In non-Yarn mode (or for the driver in yarn-client mode), we cannot trust the user
      // configuration to point to a secure directory. So create a subdirectory with restricted
      // permissions under each listed directory.
      Option(conf.getenv("SPARK\_LOCAL\_DIRS"))
        .getOrElse(conf.get("spark.local.dir", System.getProperty("java.io.tmpdir")))
        .split(",")
        .flatMap { root =>
          try {
            val rootDir = new File(root)
            if (rootDir.exists || rootDir.mkdirs()) {
              Some(createDirectory(root).getAbsolutePath())
            } else {
              logError(s"Failed to create dir in $root. Ignoring this directory.")
              None
            }
          } catch {
            case e: IOException =>
            logError(s"Failed to create local root dir in $root. Ignoring this directory.")
            None
          }
        }
        .toArray
    }
  }
{code}

Therefore I think the
{code}
Some(createDirectory(root).getAbsolutePath())
{code}
should be replaced by something like (I am not an experienced Scala programmer):
{code}
val dir = createDirectory(root)
registerShutdownDeleteDir(dir)
Some(dir.getAbsolutePath())
{code}


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

* [SPARK-5960](https://issues.apache.org/jira/browse/SPARK-5960) | *Major* | **Allow AWS credentials to be passed to KinesisUtils.createStream()**

While IAM roles are preferable, we're seeing a lot of cases where we need to pass AWS credentials when creating the KinesisReceiver.

Notes:
* Make sure we don't log the credentials anywhere
* Maintain compatibility with existing KinesisReceiver-based code.


---

* [SPARK-5957](https://issues.apache.org/jira/browse/SPARK-5957) | *Major* | **Better handling of default parameter values.**

We store the default value of a parameter in the Param instance. In many cases, the default value depends on the algorithm and other parameters defined in the same algorithm. We need to think a better approach to handle default parameter values.

The design doc was posted in the parent JIRA: https://issues.apache.org/jira/browse/SPARK-5874


---

* [SPARK-5956](https://issues.apache.org/jira/browse/SPARK-5956) | *Blocker* | **Transformer/Estimator should be copyable.**

In a pipeline, we don't save additional params specified in `fit()` to transformers, because we should not modify them. The current solution is to store training parameters in the pipeline model and apply those parameters at `transform()`. A better solution would be making transformers copyable. Calling `.copy` on a transformer produces a new transformer with a different UID but same parameters. Then we can use the copied transformers in the pipeline model, with additional params stored.

`copy` may not be a good name because it is not an exact copy.


---

* [SPARK-5955](https://issues.apache.org/jira/browse/SPARK-5955) | *Major* | **Add checkpointInterval to ALS**

We should add checkpoint interval to ALS to prevent the following:

1. storing large shuffle files
2. stack overflow (SPARK-1106)


---

* [SPARK-5954](https://issues.apache.org/jira/browse/SPARK-5954) | *Major* | **Add topByKey to pair RDDs**

`topByKey(num: Int): RDD[(K, V)]` finds the top-k values for each key in a pair RDD. This is used, e.g., in computing top recommendations. We can use the Guava implementation of finding top-k from an iterator. See also https://github.com/apache/spark/blob/master/core/src/main/scala/org/apache/spark/util/collection/Utils.scala.


---

* [SPARK-5949](https://issues.apache.org/jira/browse/SPARK-5949) | *Major* | **Driver program has to register roaring bitmap classes used by spark with Kryo when number of partitions is greater than 2000**

When more than 2000 partitions are being used with Kryo, the following classes need to be registered by driver program:
- org.apache.spark.scheduler.HighlyCompressedMapStatus
- org.roaringbitmap.RoaringBitmap
- org.roaringbitmap.RoaringArray
- org.roaringbitmap.ArrayContainer
- org.roaringbitmap.RoaringArray$Element
- org.roaringbitmap.RoaringArray$Element[]
- short[]

Our project doesn't have dependency on roaring bitmap and HighlyCompressedMapStatus is intended for internal spark usage. Spark should take care of this registration when Kryo is used.


---

* [SPARK-5948](https://issues.apache.org/jira/browse/SPARK-5948) | *Blocker* | **Support writing to partitioned table for the Parquet data source**

In 1.3.0, we added support for reading partitioned tables declared in Hive metastore for the Parquet data source. However, writing to partitioned tables is not supported yet. This feature should probably built upon SPARK-5947.


---

* [SPARK-5947](https://issues.apache.org/jira/browse/SPARK-5947) | *Blocker* | **First class partitioning support in data sources API**

For file system based data sources, implementing Hive style partitioning support can be complex and error prone. To be specific, partitioning support include:

# Partition discovery:  Given a directory organized similar to Hive partitions, discover the directory structure and partitioning information automatically, including partition column names, data types, and values.
# Reading from partitioned tables
# Writing to partitioned tables

It would be good to have first class partitioning support in the data sources API. For example, add a {{FileBasedScan}} trait with callbacks and default implementations for these features.


---

* [SPARK-5946](https://issues.apache.org/jira/browse/SPARK-5946) | *Major* | **Add Python API for Kafka direct stream**

Add the Python API for Kafka direct stream. Currently only adds {{createDirectStream}} API, no {{createRDD}} API, since it needs some Python wraps of Java object, will improve this according to the comments.


---

* [SPARK-5941](https://issues.apache.org/jira/browse/SPARK-5941) | *Major* | **Unit Test loads the table `src` twice for leftsemijoin.q**

In leftsemijoin.q, there is a data loading command for table "sales" already, but in TestHive, it also creates/loads the table "sales", which causes duplicated records inserted into the "sales".


---

* [SPARK-5938](https://issues.apache.org/jira/browse/SPARK-5938) | *Minor* | **Generate row from json efficiently**

Generate row from json efficiently in JsonRDD object.


---

* [SPARK-5933](https://issues.apache.org/jira/browse/SPARK-5933) | *Major* | **Centralize deprecated configs in SparkConf**

Deprecated configs are currently all strewn across the code base. It would be good to simplify the handling of the deprecated configs in a central location to avoid duplicating the deprecation logic everywhere.


---

* [SPARK-5932](https://issues.apache.org/jira/browse/SPARK-5932) | *Major* | **Use consistent naming for byte properties**

This is SPARK-5931's sister issue.

The naming of existing byte configs is inconsistent. We currently have the following throughout the code base:
{code}
spark.reducer.maxMbInFlight // megabytes
spark.kryoserializer.buffer.mb // megabytes
spark.shuffle.file.buffer.kb // kilobytes
spark.broadcast.blockSize // kilobytes
spark.executor.logs.rolling.size.maxBytes // bytes
spark.io.compression.snappy.block.size // bytes
{code}
Instead, my proposal is to simplify the config name itself and make everything accept time using the following format: 500b, 2k, 100m, 46g, similar to what we currently use for our memory settings. For instance:
{code}
spark.reducer.maxSizeInFlight = 10m
spark.kryoserializer.buffer = 2m
spark.shuffle.file.buffer = 10k
spark.broadcast.blockSize = 20k
spark.executor.logs.rolling.maxSize = 500b
spark.io.compression.snappy.blockSize = 200b
{code}
All existing configs that are relevant will be deprecated in favor of the new ones. We should do this soon before we keep introducing more time configs.


---

* [SPARK-5931](https://issues.apache.org/jira/browse/SPARK-5931) | *Major* | **Use consistent naming for time properties**

This is SPARK-5932's sister issue.

The naming of existing time configs is inconsistent. We currently have the following throughout the code base:
{code}
spark.network.timeout // seconds
spark.executor.heartbeatInterval // milliseconds
spark.storage.blockManagerSlaveTimeoutMs // milliseconds
spark.yarn.scheduler.heartbeat.interval-ms // milliseconds
{code}
Instead, my proposal is to simplify the config name itself and make everything accept time using the following format: 5s, 2ms, 100us. For instance:
{code}
spark.network.timeout = 5s
spark.executor.heartbeatInterval = 500ms
spark.storage.blockManagerSlaveTimeout = 100ms
spark.yarn.scheduler.heartbeatInterval = 400ms
{code}
All existing configs that are relevant will be deprecated in favor of the new ones. We should do this soon before we keep introducing more time configs.


---

* [SPARK-5924](https://issues.apache.org/jira/browse/SPARK-5924) | *Trivial* | **Add the ability to specify withMean or withStd parameters with StandarScaler**

The current implementation of StandarScaler calls mllib.feature.StandardScaler default constructor directly without offering the ability to specify withMean or withStd parameters


---

* [SPARK-5922](https://issues.apache.org/jira/browse/SPARK-5922) | *Trivial* | **Add diff(other: RDD[VertexId, VD]) in VertexRDD**

Add diff(other: RDD[VertexId, VD]) in VertexRDD and this api is the same with
VertexRDD#leftJoin and VertexRDD#innerJoin.


---

* [SPARK-5914](https://issues.apache.org/jira/browse/SPARK-5914) | *Minor* | **Enable spark-submit to run requiring only user permission on windows**

On windows platform only. 

If slave is executed with user permission, spark-submit fails with java.lang.ClassNotFoundException when attempting to read the cached jar from spark\_home\work folder. 

This is due to the jars do not have read permission set by default on windows. Fix is to add read permission explicitly for owner of the file. 

Having service account running as admin (equivalent of sudo in Linux) is a major security risk for production clusters. This make it easy for hackers to compromise the cluster by taking over the service account.


---

* [SPARK-5913](https://issues.apache.org/jira/browse/SPARK-5913) | *Minor* | **Python API for ChiSqSelector**

Add a Python API for mllib.feature.ChiSqSelector


---

* [SPARK-5909](https://issues.apache.org/jira/browse/SPARK-5909) | *Major* | **Add a clearCache command to Spark SQL's cache manager**

This command will clear all cached data from the in-memory cache, which will be useful when users want to quickly clear the cache or as a workaround of cases like SPARK-5881.


---

* [SPARK-5908](https://issues.apache.org/jira/browse/SPARK-5908) | *Major* | **Hive udtf with single alias should be resolved correctly**

ResolveUdtfsAlias in hiveUdfs only considers the HiveGenericUdtf with multiple alias. When only single alias is used with HiveGenericUdtf, the alias is not working.


---

* [SPARK-5894](https://issues.apache.org/jira/browse/SPARK-5894) | *Major* | **Add PolynomialExpansion**

`PolynomialMapper` takes a vector column and outputs a vector column with polynomial feature mapping.

{code}
val poly = new PolynomialMapper()
  .setInputCol("features")
  .setDegree(2)
  .setOutputCols("polyFeatures")
{code}

It should handle the output feature names properly. Maybe we can make a better name for it instead of calling it `PolynomialMapper`.


---

* [SPARK-5893](https://issues.apache.org/jira/browse/SPARK-5893) | *Major* | **Add Bucketizer**

`Bucketizer` maps a column of continuous features to a column of feature buckets, where the buckets are specified by users.

{code}
val bucketizer = new Bucketizer()
  .setInputCol("age")
  .setBuckets(Array(10, 20, 30, 40, 50))
  .setOutputCol("ageBuckets")
{code}

The output feature names should be automatically generated. We need to discuss the behavior if a value falls out the specified bucket range.


---

* [SPARK-5891](https://issues.apache.org/jira/browse/SPARK-5891) | *Major* | **Add Binarizer**

`Binarizer` takes a column of continuous features and output a column with binary features, where nonzeros (or values below a threshold) become 1 in the output.

{code}
val binarizer = new Binarizer()
  .setInputCol("numVisits")
  .setOutputCol("visited")
{code}

The output column should be marked as binary. We need to discuss whether we should process multiple columns or a vector column.


---

* [SPARK-5888](https://issues.apache.org/jira/browse/SPARK-5888) | *Major* | **Add OneHotEncoder as a Transformer**

`OneHotEncoder` takes a categorical column and output a vector column, which stores the category info in binaries.

{code}
val ohe = new OneHotEncoder()
  .setInputCol("countryIndex")
  .setOutputCol("countries")
{code}

It should read the category info from the metadata and assign feature names properly in the output column. We need to discuss the default naming scheme and whether we should let it process multiple categorical columns at the same time.

One category (the most frequent one) should be removed from the output to make the output columns linear independent. Or this could be an option tuned on by default.


---

* [SPARK-5886](https://issues.apache.org/jira/browse/SPARK-5886) | *Major* | **Add StringIndexer**

`StringIndexer` takes a column of string labels (raw categories) and outputs an integer column with labels indexed by their frequency.

{code}
va li = new StringIndexer()
  .setInputCol("country")
  .setOutputCol("countryIndex")
{code}

In the output column, we should store the label to index map as an ML attribute. The index should be ordered by frequency, where the most frequent label gets index 0, to enhance sparsity.

We can discuss whether this should index multiple columns at the same time.


---

* [SPARK-5885](https://issues.apache.org/jira/browse/SPARK-5885) | *Major* | **Add VectorAssembler**

`VectorAssembler` takes a list of columns (of type double/int/vector) and merge them into a single vector column.

{code}
val va = new VectorAssembler()
  .setInputCols("userFeatures", "dayOfWeek", "timeOfDay")
  .setOutputCol("features")
{code}

In the first version, it should be okay if it doesn't handle ML attributes (SPARK-4588).


---

* [SPARK-5860](https://issues.apache.org/jira/browse/SPARK-5860) | *Minor* | **JdbcRDD: overflow on large range with high number of partitions**

{code}
val jdbcRDD = new JdbcRDD(sc, () =>
      DriverManager.getConnection(url, username, password),
      "SELECT id FROM documents WHERE ? <= id AND id <= ?",
      lowerBound = 1131544775L,
      upperBound = 567279358897692673L,
      numPartitions = 20,
      mapRow = r => (r.getLong("id"))
)
{code}


---

* [SPARK-5854](https://issues.apache.org/jira/browse/SPARK-5854) | *Minor* | **Implement Personalized PageRank with GraphX**

I'm wondering if you would like to add personalized page rank to GraphX? I have implemented it by modifying existing PageRank algorithm in GraphX, and I would like to share it with others.

It is pretty simple and straightforward since the only change I need to make is only teleport to source node. 

I did some google searching and seems there are a few guys want to have it in GraphX :-)


---

* [SPARK-5845](https://issues.apache.org/jira/browse/SPARK-5845) | *Minor* | **Time to cleanup spilled shuffle files not included in shuffle write time**

When the disk is contended, I've observed cases when it takes as long as 7 seconds to clean up all of the intermediate spill files for a shuffle (when using the sort based shuffle, but bypassing merging because there are <=200 shuffle partitions).  This is even when the shuffle data is non-huge (152MB written from one of the tasks where I observed this).  This is effectively part of the shuffle write time (because it's a necessary side effect of writing data to disk) so should be added to the shuffle write time to facilitate debugging.


---

* [SPARK-5843](https://issues.apache.org/jira/browse/SPARK-5843) | *Minor* | **Expose all parameters in JavaPairRDD.combineByKey()**

It would be nice if users of the Java API could specify the map-side-combine and serializer behavior in JavaPairRDD's combineByKey method. This would be a strictly additive API change and not break existing users.


---

* [SPARK-5836](https://issues.apache.org/jira/browse/SPARK-5836) | *Minor* | **Highlight in Spark documentation that by default Spark does not delete its temporary files**

We recently learnt the hard way (in a prod system) that Spark by default does not delete its temporary files until it is stopped. WIthin a relatively short time span of heavy Spark use the disk of our prod machine filled up completely because of multiple shuffle files written to it. We think there should be better documentation around the fact that after a job is finished it leaves a lot of rubbish behind so that this does not come as a surprise.

Probably a good place to highlight that fact would be the documentation of {{spark.local.dir}} property, which controls where Spark temporary files are written.


---

* [SPARK-5821](https://issues.apache.org/jira/browse/SPARK-5821) | *Major* | **JSONRelation and ParquetRelation2 should check if delete is successful for the overwrite operation.**

When you run CTAS command such as
{code:sql}
CREATE TEMPORARY TABLE jsonTable
USING org.apache.spark.sql.json.DefaultSource
OPTIONS (
path /a/b/c/d
) AS
SELECT a, b FROM jt
{code}
you will run into failure if you don't have write permission for directory /a/b/c whether d is a directory or file.
{noformat}
Exception in thread "main" org.apache.hadoop.mapred.FileAlreadyExistsException: Output directory file:/a/b/c/d already exists
        at org.apache.hadoop.mapred.FileOutputFormat.checkOutputSpecs(FileOutputFormat.java:132)
        at org.apache.spark.rdd.PairRDDFunctions.saveAsHadoopDataset(PairRDDFunctions.scala:1053)
        at org.apache.spark.rdd.PairRDDFunctions.saveAsHadoopFile(PairRDDFunctions.scala:954)
        at org.apache.spark.rdd.PairRDDFunctions.saveAsHadoopFile(PairRDDFunctions.scala:863)
        at org.apache.spark.rdd.RDD.saveAsTextFile(RDD.scala:1284)
        at org.apache.spark.sql.json.DefaultSource.createRelation(JSONRelation.scala:81)
        at org.apache.spark.sql.sources.ResolvedDataSource$.apply(ddl.scala:300)
        at org.apache.spark.sql.sources.CreateTempTableUsingAsSelect.run(ddl.scala:388)
        at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult$lzycompute(commands.scala:55)
        at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult(commands.scala:55)
        at org.apache.spark.sql.execution.ExecutedCommand.execute(commands.scala:65)
        at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:927)
        at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:927)
        at org.apache.spark.sql.DataFrameImpl.<init>(DataFrameImpl.scala:71)
        at org.apache.spark.sql.DataFrameImpl.<init>(DataFrameImpl.scala:58)
        at org.apache.spark.sql.DataFrame$.apply(DataFrame.scala:35)
        at org.apache.spark.sql.SQLContext.sql(SQLContext.scala:778)
        at org.apache.spark.sql.Test$.main(Test.scala:149)
        at org.apache.spark.sql.Test.main(Test.scala)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:483)
        at com.intellij.rt.execution.application.AppMain.main(AppMain.java:134)
{noformat}


---

* [SPARK-5817](https://issues.apache.org/jira/browse/SPARK-5817) | *Major* | **UDTF column names didn't set properly**

{code}
createQueryTest("Specify the udtf output", "select d from (select explode(array(1,1)) d from src limit 1) t")
{code}

It throws exception like:
{panel}
org.apache.spark.sql.AnalysisException: cannot resolve 'd' given input columns \_c0; line 1 pos 7
	at org.apache.spark.sql.catalyst.analysis.package$AnalysisErrorAt.failAnalysis(package.scala:42)
	at org.apache.spark.sql.catalyst.analysis.CheckAnalysis$$anonfun$apply$3$$anonfun$apply$1.applyOrElse(CheckAnalysis.scala:48)
	at org.apache.spark.sql.catalyst.analysis.CheckAnalysis$$anonfun$apply$3$$anonfun$apply$1.applyOrElse(CheckAnalysis.scala:45)
	at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$transformUp$1.apply(TreeNode.scala:250)
	at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$transformUp$1.apply(TreeNode.scala:250)
	at org.apache.spark.sql.catalyst.trees.CurrentOrigin$.withOrigin(TreeNode.scala:50)
	at org.apache.spark.sql.catalyst.trees.TreeNode.transformUp(TreeNode.scala:249)
	at org.apache.spark.sql.catalyst.plans.QueryPlan.org$apache$spark$sql$catalyst$plans$QueryPlan$$transformExpressionUp$1(QueryPlan.scala:103)
	at org.apache.spark.sql.catalyst.plans.QueryPlan$$anonfun$2$$anonfun$apply$2.apply(QueryPlan.scala:117)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
	at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
	at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
	at scala.collection.AbstractTraversable.map(Traversable.scala:105)
	at org.apache.spark.sql.catalyst.plans.QueryPlan$$anonfun$2.apply(QueryPlan.scala:116)
	at scala.collection.Iterator$$anon$11.next(Iterator.scala:328)
{panel}


---

* [SPARK-5815](https://issues.apache.org/jira/browse/SPARK-5815) | *Major* | **Deprecate SVDPlusPlus APIs that expose DoubleMatrix from JBLAS**

It is generally bad to expose types defined in a 3rd-party package in Spark public APIs. We should deprecate those methods in SVDPlusPlus and replace them in the next release.


---

* [SPARK-5814](https://issues.apache.org/jira/browse/SPARK-5814) | *Major* | **Remove JBLAS from runtime dependencies**

We are using mixed breeze/netlib-java and jblas code in MLlib. They take different approaches to utilize native libraries and we should keep only one of them. netlib-java has a clear separation between Java implementation and native JNI libraries, while JBLAS packs statically linked binaries that causes license issues (SPARK-5669). So we want to remove JBLAS from Spark runtime.

One issue with this approach is that we have JBLAS' DoubleMatrix exposed (by mistake) in SVDPlusPlus of GraphX. We should deprecate it and replace `DoubleMatrix` by `Array[Double]`.


---

* [SPARK-5808](https://issues.apache.org/jira/browse/SPARK-5808) | *Minor* | **Assembly generated by sbt does not contain pyspark**

When you generate the assembly with sbt, the py4j and pyspark files are not added to it. This makes pyspark not work when you run that assembly with yarn, since SPARK\_HOME is not propagated in Yarn and thus PythonUtils.scala does not add the needed pyspark paths to PYTHONPATH.

This is minor since all released bits are created by maven, so this should only affect developers who build with sbt and try pyspark on yarn.


---

* [SPARK-5801](https://issues.apache.org/jira/browse/SPARK-5801) | *Minor* | **Shuffle creates too many nested directories**

When running Spark on EC2, there are 4 nested shuffle directories before the hashed directory names, for example:

/mnt/spark/spark-5824d912-25af-4187-bc6a-29ae42cd78e5/spark-675133f0-b2c8-44a1-8775-5e394674609b/spark-69c1ea15-4e7f-454a-9f57-19763c7bdd17/spark-b036335c-60fa-48ab-a346-f1b420af2027/0c

My understanding is that this should look like:

/mnt/spark/spark-5824d912-25af-4187-bc6a-29ae42cd78e5/0c

This happened when I was using the sort-based shuffle (all default configurations for Spark on EC2).

This is not a correctness problem (the shuffle still works fine).


---

* [SPARK-5790](https://issues.apache.org/jira/browse/SPARK-5790) | *Minor* | **Add tests for: VertexRDD's won't zip properly for `diff` capability**

For VertexRDD's with differing partition sizes one cannot run commands like `diff` as it will thrown an IllegalArgumentException. The code below provides an example:

{code}
import org.apache.spark.graphx.\_
import org.apache.spark.rdd.\_
val setA: VertexRDD[Int] = VertexRDD(sc.parallelize(0L until 3L).map(id => (id, id.toInt+1)))
setA.collect.foreach(println(\_))
val setB: VertexRDD[Int] = VertexRDD(sc.parallelize(2L until 4L).map(id => (id, id.toInt+2)))
setB.collect.foreach(println(\_))
val diff = setA.diff(setB)
diff.collect.foreach(println(\_))
val setC: VertexRDD[Int] = VertexRDD(sc.parallelize(2L until 4L).map(id => (id, id.toInt+2)) ++ sc.parallelize(6L until 8L).map(id => (id, id.toInt+2)))
setA.diff(setC).collect
// java.lang.IllegalArgumentException: Can't zip RDDs with unequal numbers of partitions
{code}


---

* [SPARK-5776](https://issues.apache.org/jira/browse/SPARK-5776) | *Minor* | **JIRA version not of form x.y.z breaks merge\_spark\_pr.py**

It appears that the version "2+" I added to JIRA breaks the merge script since it expects x.y.z only. I will try to patch the logic quickly. Worst case, we can name the version "2.0.0" if we have to.


---

* [SPARK-5771](https://issues.apache.org/jira/browse/SPARK-5771) | *Minor* | **Number of Cores in Completed Applications of Standalone Master Web Page always be 0 if sc.stop() is called**

In Standalone mode, the number of cores in Completed Applications of the Master Web Page will always be zero, if sc.stop() is called.

But the number will always be right, if sc.stop() is not called.

The reason maybe: 
after sc.stop() is called, the function removeExecutor of class ApplicationInfo will be called, thus reduce the variable coresGranted to zero.  The variable coresGranted is used to display the number of Cores on the Web Page.


---

* [SPARK-5750](https://issues.apache.org/jira/browse/SPARK-5750) | *Minor* | **Document that ordering of elements in shuffled partitions is not deterministic across runs**

The ordering of elements in shuffled partitions is not deterministic across runs.  For instance, consider the following example:

{code}
val largeFiles = sc.textFile(...)
val airlines = largeFiles.repartition(2000).cache()
println(airlines.first)
{code}

If this code is run twice, then each run will output a different result.  There is non-determinism in the shuffle read code that accounts for this:

Spark's shuffle read path processes blocks as soon as they are fetched  Spark uses [ShuffleBlockFetcherIterator|https://github.com/apache/spark/blob/v1.2.1/core/src/main/scala/org/apache/spark/storage/ShuffleBlockFetcherIterator.scala] to fetch shuffle data from mappers.  In this code, requests for multiple blocks from the same host are batched together, so nondeterminism in where tasks are run means that the set of requests can vary across runs.  In addition, there's an [explicit call|https://github.com/apache/spark/blob/v1.2.1/core/src/main/scala/org/apache/spark/storage/ShuffleBlockFetcherIterator.scala#L256] to randomize the order of the batched fetch requests.  As a result, shuffle operations cannot be guaranteed to produce the same ordering of the elements in their partitions.

Therefore, Spark should update its docs to clarify that the ordering of elements in shuffle RDDs' partitions is non-deterministic.  Note, however, that the \_set\_ of elements in each partition will be deterministic: if we used {{mapPartitions}} to sort each partition, then the {{first()}} call above would produce a deterministic result.


---

* [SPARK-5744](https://issues.apache.org/jira/browse/SPARK-5744) | *Minor* | **RDD.isEmpty / take fails for (empty) RDD of Nothing**

The implementation of {{RDD.isEmpty()}} fails if there is empty partitions. It was introduce by https://github.com/apache/spark/pull/4074

Example:
{code}
sc.parallelize(Seq(), 1).isEmpty()
{code}

The above code throws an exception like this:
{code}
org.apache.spark.SparkDriverExecutionException: Execution error
    at org.apache.spark.scheduler.DAGScheduler.handleTaskCompletion(DAGScheduler.scala:977)
    at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1374)
    at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1338)
    at org.apache.spark.util.EventLoop$$anon$1.run(EventLoop.scala:48)
Cause: java.lang.ArrayStoreException: [Ljava.lang.Object;
    at scala.runtime.ScalaRunTime$.array\_update(ScalaRunTime.scala:88)
    at org.apache.spark.SparkContext$$anonfun$runJob$4.apply(SparkContext.scala:1466)
    at org.apache.spark.SparkContext$$anonfun$runJob$4.apply(SparkContext.scala:1466)
    at org.apache.spark.scheduler.JobWaiter.taskSucceeded(JobWaiter.scala:56)
    at org.apache.spark.scheduler.DAGScheduler.handleTaskCompletion(DAGScheduler.scala:973)
    at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1374)
    at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1338)
    at org.apache.spark.util.EventLoop$$anon$1.run(EventLoop.scala:48)
{code}


---

* [SPARK-5727](https://issues.apache.org/jira/browse/SPARK-5727) | *Minor* | **Deprecate, remove Debian packaging**

Per discussion on the mailing list (https://www.mail-archive.com/dev@spark.apache.org/msg07598.html), this JIRA proposes:

- For 1.3.x, deprecate the Debian packaging (the {{deb}} profile) by adding a warning message of some kind when invoking the profile
- For 1.4.x, remove the packaging

Two PRs coming.


---

* [SPARK-5726](https://issues.apache.org/jira/browse/SPARK-5726) | *Major* | **Hadamard Vector Product Transformer**

I originally posted my idea here: http://apache-spark-developers-list.1001551.n3.nabble.com/Any-interest-in-weighting-VectorTransformer-which-does-component-wise-scaling-td10265.html

A draft of this feature is implemented, documented, and tested already.  Code is on a branch on my fork here: https://github.com/ogeagla/spark/compare/spark-mllib-weighting

I'm curious if there is any interest in this feature, in which case I'd appreciate some feedback.  One thing that might be useful is an example/test case using the transformer within the ML pipeline, since there are not any examples which use Vectors.


---

* [SPARK-5724](https://issues.apache.org/jira/browse/SPARK-5724) | *Minor* | **misconfiguration in Akka system**

In AkkaUtil, we set several failure detector related the parameters as following 

{code:title=AkkaUtil.scala|borderStyle=solid}
al akkaConf = ConfigFactory.parseMap(conf.getAkkaConf.toMap[String, String])
      .withFallback(akkaSslConfig).withFallback(ConfigFactory.parseString(
      s"""
      |akka.daemonic = on
      |akka.loggers = [""akka.event.slf4j.Slf4jLogger""]
      |akka.stdout-loglevel = "ERROR"
      |akka.jvm-exit-on-fatal-error = off
      |akka.remote.require-cookie = "$requireCookie"
      |akka.remote.secure-cookie = "$secureCookie"
      |akka.remote.transport-failure-detector.heartbeat-interval = $akkaHeartBeatInterval s
      |akka.remote.transport-failure-detector.acceptable-heartbeat-pause = $akkaHeartBeatPauses s
      |akka.remote.transport-failure-detector.threshold = $akkaFailureDetector
      |akka.actor.provider = "akka.remote.RemoteActorRefProvider"
      |akka.remote.netty.tcp.transport-class = "akka.remote.transport.netty.NettyTransport"
      |akka.remote.netty.tcp.hostname = "$host"
      |akka.remote.netty.tcp.port = $port
      |akka.remote.netty.tcp.tcp-nodelay = on
      |akka.remote.netty.tcp.connection-timeout = $akkaTimeout s
      |akka.remote.netty.tcp.maximum-frame-size = ${akkaFrameSize}B
      |akka.remote.netty.tcp.execution-pool-size = $akkaThreads
      |akka.actor.default-dispatcher.throughput = $akkaBatchSize
      |akka.log-config-on-start = $logAkkaConfig
      |akka.remote.log-remote-lifecycle-events = $lifecycleEvents
      |akka.log-dead-letters = $lifecycleEvents
      |akka.log-dead-letters-during-shutdown = $lifecycleEvents
      """.stripMargin))

{code}

Actually, we do not have any parameter naming "akka.remote.transport-failure-detector.threshold"

see: http://doc.akka.io/docs/akka/2.3.4/general/configuration.html

what we have is "akka.remote.watch-failure-detector.threshold"


---

* [SPARK-5712](https://issues.apache.org/jira/browse/SPARK-5712) | *Minor* | **Semicolon at end of a comment line**

HIVE-3348


---

* [SPARK-5708](https://issues.apache.org/jira/browse/SPARK-5708) | *Minor* | **Add Slf4jSink to Spark Metrics Sink**

Add Slf4jSink to the currently supported metric sinks.

This is convenient for those who want metrics data for telemetry purposes, but want to reuse the pre-setup log4j pipeline.


---

* [SPARK-5692](https://issues.apache.org/jira/browse/SPARK-5692) | *Major* | **Model import/export for Word2Vec**

Supoort save and load for Word2VecModel. We may want to discuss whether we want to be compatible with the original Word2Vec model storage format.


---

* [SPARK-5680](https://issues.apache.org/jira/browse/SPARK-5680) | *Minor* | **Sum function on all null values, should return zero**

SELECT  sum('a'),  avg('a'),  variance('a'),  std('a') FROM src;
Current output:
NULL	NULL	NULL	NULL
Expected output:
0.0	NULL	NULL	NULL

This fixes hive udaf\_number\_format.q


---

* [SPARK-5668](https://issues.apache.org/jira/browse/SPARK-5668) | *Minor* | **spark\_ec2.py region parameter could be either mandatory or its value displayed**

If the region parameter is not specified when invoking spark-ec2 (spark-ec2.py behind the scenes) it defaults to us-east-1. When the cluster doesn't belong to that region, after showing the "Searching for existing cluster Spark..." message, it causes an "ERROR: Could not find any existing cluster" exception because it doesn't find you cluster in the default region.

As it doesn't tell you anything about the region, It can be a small headache for new users.

In http://stackoverflow.com/questions/21171576/why-does-spark-ec2-fail-with-error-could-not-find-any-existing-cluster, Dmitriy Selivanov explains it.

I propose that:

1. Either we make the search message a little bit more informative with something like "Searching for existing cluster Spark in region " + opts.region.

2. Or we remove the us-east-1 as default and make the --region parameter mandatory.


---

* [SPARK-5666](https://issues.apache.org/jira/browse/SPARK-5666) | *Minor* | **Improvements in Mqtt Spark Streaming**

Cleanup the source code related to the Mqtt Spark Streaming to adhere to accept coding standards.


---

* [SPARK-5656](https://issues.apache.org/jira/browse/SPARK-5656) | *Minor* | **NegativeArraySizeException in EigenValueDecomposition.symmetricEigs for large n and/or large k**

Large values of n or k in EigenValueDecomposition.symmetricEigs will fail with a NegativeArraySizeException. Specifically, this occurs when 2*n*k > Integer.MAX\_VALUE. These values are currently unchecked and allow for the array to be initialized to a value greater than Integer.MAX\_VALUE. I have written the below 'require' to fail this condition gracefully. I will submit a pull request. 

require(ncv * n.toLong < Integer.MAX\_VALUE, "Product of 2*k*n must be smaller than " +
      s"Integer.MAX\_VALUE. Found required eigenvalues k = $k and matrix dimension n = $n")


Here is the exception that occurs from computeSVD with large k and/or n: 

Exception in thread "main" java.lang.NegativeArraySizeException
	at org.apache.spark.mllib.linalg.EigenValueDecomposition$.symmetricEigs(EigenValueDecomposition.scala:85)
	at org.apache.spark.mllib.linalg.distributed.RowMatrix.computeSVD(RowMatrix.scala:258)
	at org.apache.spark.mllib.linalg.distributed.RowMatrix.computeSVD(RowMatrix.scala:190)


---

* [SPARK-5654](https://issues.apache.org/jira/browse/SPARK-5654) | *Major* | **Integrate SparkR into Apache Spark**

The SparkR project [1] provides a light-weight frontend to launch Spark jobs from R. The project was started at the AMPLab around a year ago and has been incubated as its own project to make sure it can be easily merged into upstream Spark, i.e. not introduce any external dependencies etc. SparkR’s goals are similar to PySpark and shares a similar design pattern as described in our meetup talk[2], Spark Summit presentation[3].

Integrating SparkR into the Apache project will enable R users to use Spark out of the box and given R’s large user base, it will help the Spark project reach more users.  Additionally, work in progress features like providing R integration with ML Pipelines and Dataframes can be better achieved by development in a unified code base.

SparkR is available under the Apache 2.0 License and does not have any external dependencies other than requiring users to have R and Java installed on their machines.  SparkR’s developers come from many organizations including UC Berkeley, Alteryx, Intel and we will support future development, maintenance after the integration.

[1] https://github.com/amplab-extras/SparkR-pkg
[2] http://files.meetup.com/3138542/SparkR-meetup.pdf
[3] http://spark-summit.org/2014/talk/sparkr-interactive-r-programs-at-scale-2


---

* [SPARK-5651](https://issues.apache.org/jira/browse/SPARK-5651) | *Major* | **Support 'create db.table' in HiveContext**

Now spark version is only support ```create table table\_in\_database\_creation.test1 as select * from src limit 1;``` in HiveContext.
This patch is used to support ```create table `table\_in\_database\_creation.test2` as select * from src limit 1;``` in HiveContext.


---

* [SPARK-5644](https://issues.apache.org/jira/browse/SPARK-5644) | *Minor* | **Delete tmp dir when sc is stop**

When we run driver as a service which will not stop. In this service process we will create SparkContext and run job and then stop it, because we only call sc.stop but not exit this service process so the tmp dirs created by HttpFileServer and SparkEnv will not be deleted after SparkContext is stopped, and this will lead to creating too many tmp dirs if we create many SparkContext to run job in this service process.


---

* [SPARK-5641](https://issues.apache.org/jira/browse/SPARK-5641) | *Minor* | **Allow spark\_ec2.py to copy arbitrary files to cluster**

*Updated - no longer via deploy.generic, no substitutions*

Essentially, give users an easy way to rcp a directory structure to the master's / as part of the cluster launch, at a useful point in the workflow (before setup.sh is called on the master).

Useful if binary files need to be uploaded. E.g. I use this for rpm transfer to install extra stuff at cluster deployment time.

However note that it could also be used to override / add to either:
- what's on the image
- what gets cloned from spark-ec2 (e.g. add new module)


---

* [SPARK-5634](https://issues.apache.org/jira/browse/SPARK-5634) | *Minor* | **History server shows misleading message when there are no incomplete apps**

If you go to the history server, and click on "Show incomplete applications", but there are no incomplete applications, you get a misleading message:

{noformat}
No completed applications found!

Did you specify the correct logging directory? (etc etc)
{noformat}

That's the same message used when no complete applications are found; it should probably be tweaked for the incomplete apps case.


---

* [SPARK-5632](https://issues.apache.org/jira/browse/SPARK-5632) | *Blocker* | **not able to resolve dot('.') in field name**

My cassandra table task\_trace has a field sm.result which contains dot in the name. So SQL tried to look up sm instead of full name 'sm.result'. 

Here is my code: 
{code}
scala> import org.apache.spark.sql.cassandra.CassandraSQLContext
scala> val cc = new CassandraSQLContext(sc)
scala> val task\_trace = cc.jsonFile("/task\_trace.json")
scala> task\_trace.registerTempTable("task\_trace")
scala> cc.setKeyspace("cerberus\_data\_v4")
scala> val res = cc.sql("SELECT received\_datetime, task\_body.cerberus\_id, task\_body.sm.result FROM task\_trace WHERE task\_id = 'fff7304e-9984-4b45-b10c-0423a96745ce'")
res: org.apache.spark.sql.SchemaRDD = 
SchemaRDD[57] at RDD at SchemaRDD.scala:108
== Query Plan ==
== Physical Plan ==
java.lang.RuntimeException: No such struct field sm in cerberus\_batch\_id, cerberus\_id, couponId, coupon\_code, created, description, domain, expires, message\_id, neverShowAfter, neverShowBefore, offerTitle, screenshots, sm.result, sm.task, startDate, task\_id, url, uuid, validationDateTime, validity
{code}

The full schema look like this:
{code}
scala> task\_trace.printSchema()
root
 \|-- received\_datetime: long (nullable = true)
 \|-- task\_body: struct (nullable = true)
 \|    \|-- cerberus\_batch\_id: string (nullable = true)
 \|    \|-- cerberus\_id: string (nullable = true)
 \|    \|-- couponId: integer (nullable = true)
 \|    \|-- coupon\_code: string (nullable = true)
 \|    \|-- created: string (nullable = true)
 \|    \|-- description: string (nullable = true)
 \|    \|-- domain: string (nullable = true)
 \|    \|-- expires: string (nullable = true)
 \|    \|-- message\_id: string (nullable = true)
 \|    \|-- neverShowAfter: string (nullable = true)
 \|    \|-- neverShowBefore: string (nullable = true)
 \|    \|-- offerTitle: string (nullable = true)
 \|    \|-- screenshots: array (nullable = true)
 \|    \|    \|-- element: string (containsNull = false)
 \|    \|-- sm.result: struct (nullable = true)
 \|    \|    \|-- cerberus\_batch\_id: string (nullable = true)
 \|    \|    \|-- cerberus\_id: string (nullable = true)
 \|    \|    \|-- code: string (nullable = true)
 \|    \|    \|-- couponId: integer (nullable = true)
 \|    \|    \|-- created: string (nullable = true)
 \|    \|    \|-- description: string (nullable = true)
 \|    \|    \|-- domain: string (nullable = true)
 \|    \|    \|-- expires: string (nullable = true)
 \|    \|    \|-- message\_id: string (nullable = true)
 \|    \|    \|-- neverShowAfter: string (nullable = true)
 \|    \|    \|-- neverShowBefore: string (nullable = true)
 \|    \|    \|-- offerTitle: string (nullable = true)
 \|    \|    \|-- result: struct (nullable = true)
 \|    \|    \|    \|-- post: struct (nullable = true)
 \|    \|    \|    \|    \|-- alchemy\_out\_of\_stock: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- ci: double (nullable = true)
 \|    \|    \|    \|    \|    \|-- value: boolean (nullable = true)
 \|    \|    \|    \|    \|-- meta: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- None\_tx\_value: array (nullable = true)
 \|    \|    \|    \|    \|    \|    \|-- element: string (containsNull = false)
 \|    \|    \|    \|    \|    \|-- exceptions: array (nullable = true)
 \|    \|    \|    \|    \|    \|    \|-- element: string (containsNull = false)
 \|    \|    \|    \|    \|    \|-- no\_input\_value: array (nullable = true)
 \|    \|    \|    \|    \|    \|    \|-- element: string (containsNull = false)
 \|    \|    \|    \|    \|    \|-- not\_mapped: array (nullable = true)
 \|    \|    \|    \|    \|    \|    \|-- element: string (containsNull = false)
 \|    \|    \|    \|    \|    \|-- not\_transformed: array (nullable = true)
 \|    \|    \|    \|    \|    \|    \|-- element: array (containsNull = false)
 \|    \|    \|    \|    \|    \|    \|    \|-- element: string (containsNull = false)
 \|    \|    \|    \|    \|-- now\_price\_checkout: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- ci: double (nullable = true)
 \|    \|    \|    \|    \|    \|-- value: double (nullable = true)
 \|    \|    \|    \|    \|-- shipping\_price: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- ci: double (nullable = true)
 \|    \|    \|    \|    \|    \|-- value: double (nullable = true)
 \|    \|    \|    \|    \|-- tax: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- ci: double (nullable = true)
 \|    \|    \|    \|    \|    \|-- value: double (nullable = true)
 \|    \|    \|    \|    \|-- total: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- ci: double (nullable = true)
 \|    \|    \|    \|    \|    \|-- value: double (nullable = true)
 \|    \|    \|    \|-- pre: struct (nullable = true)
 \|    \|    \|    \|    \|-- alchemy\_out\_of\_stock: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- ci: double (nullable = true)
 \|    \|    \|    \|    \|    \|-- value: boolean (nullable = true)
 \|    \|    \|    \|    \|-- meta: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- None\_tx\_value: array (nullable = true)
 \|    \|    \|    \|    \|    \|    \|-- element: string (containsNull = false)
 \|    \|    \|    \|    \|    \|-- exceptions: array (nullable = true)
 \|    \|    \|    \|    \|    \|    \|-- element: string (containsNull = false)
 \|    \|    \|    \|    \|    \|-- no\_input\_value: array (nullable = true)
 \|    \|    \|    \|    \|    \|    \|-- element: string (containsNull = false)
 \|    \|    \|    \|    \|    \|-- not\_mapped: array (nullable = true)
 \|    \|    \|    \|    \|    \|    \|-- element: string (containsNull = false)
 \|    \|    \|    \|    \|    \|-- not\_transformed: array (nullable = true)
 \|    \|    \|    \|    \|    \|    \|-- element: array (containsNull = false)
 \|    \|    \|    \|    \|    \|    \|    \|-- element: string (containsNull = false)
 \|    \|    \|    \|    \|-- now\_price\_checkout: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- ci: double (nullable = true)
 \|    \|    \|    \|    \|    \|-- value: double (nullable = true)
 \|    \|    \|    \|    \|-- shipping\_price: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- ci: double (nullable = true)
 \|    \|    \|    \|    \|    \|-- value: double (nullable = true)
 \|    \|    \|    \|    \|-- tax: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- ci: double (nullable = true)
 \|    \|    \|    \|    \|    \|-- value: double (nullable = true)
 \|    \|    \|    \|    \|-- total: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- ci: double (nullable = true)
 \|    \|    \|    \|    \|    \|-- value: double (nullable = true)
 \|    \|    \|-- startDate: string (nullable = true)
 \|    \|    \|-- status: string (nullable = true)
 \|    \|    \|-- task\_id: string (nullable = true)
 \|    \|    \|-- url: string (nullable = true)
 \|    \|    \|-- uuid: string (nullable = true)
 \|    \|    \|-- validationDateTime: string (nullable = true)
 \|    \|    \|-- validity: string (nullable = true)
 \|    \|-- sm.task: struct (nullable = true)
 \|    \|    \|-- cerberus\_batch\_id: string (nullable = true)
 \|    \|    \|-- cerberus\_id: string (nullable = true)
 \|    \|    \|-- couponId: integer (nullable = true)
 \|    \|    \|-- coupon\_code: string (nullable = true)
 \|    \|    \|-- created: string (nullable = true)
 \|    \|    \|-- description: string (nullable = true)
 \|    \|    \|-- domain: string (nullable = true)
 \|    \|    \|-- expires: string (nullable = true)
 \|    \|    \|-- message\_id: string (nullable = true)
 \|    \|    \|-- neverShowAfter: string (nullable = true)
 \|    \|    \|-- neverShowBefore: string (nullable = true)
 \|    \|    \|-- offerTitle: string (nullable = true)
 \|    \|    \|-- result: struct (nullable = true)
 \|    \|    \|    \|-- post: struct (nullable = true)
 \|    \|    \|    \|    \|-- final\_price: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- ci: integer (nullable = true)
 \|    \|    \|    \|    \|    \|-- value: string (nullable = true)
 \|    \|    \|    \|    \|-- merchant\_exception: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- ci: double (nullable = true)
 \|    \|    \|    \|    \|    \|-- value: boolean (nullable = true)
 \|    \|    \|    \|    \|-- now\_price\_checkout: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- ci: double (nullable = true)
 \|    \|    \|    \|    \|    \|-- value: string (nullable = true)
 \|    \|    \|    \|    \|-- orig\_price: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- ci: integer (nullable = true)
 \|    \|    \|    \|    \|    \|-- value: string (nullable = true)
 \|    \|    \|    \|    \|-- out\_of\_stock: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- ci: double (nullable = true)
 \|    \|    \|    \|    \|    \|-- value: boolean (nullable = true)
 \|    \|    \|    \|    \|-- sale\_price: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- ci: integer (nullable = true)
 \|    \|    \|    \|    \|    \|-- value: string (nullable = true)
 \|    \|    \|    \|    \|-- shipping\_price: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- ci: double (nullable = true)
 \|    \|    \|    \|    \|    \|-- value: string (nullable = true)
 \|    \|    \|    \|    \|-- tax: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- ci: double (nullable = true)
 \|    \|    \|    \|    \|    \|-- value: string (nullable = true)
 \|    \|    \|    \|    \|-- total: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- ci: double (nullable = true)
 \|    \|    \|    \|    \|    \|-- value: string (nullable = true)
 \|    \|    \|    \|-- pre: struct (nullable = true)
 \|    \|    \|    \|    \|-- final\_price: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- ci: integer (nullable = true)
 \|    \|    \|    \|    \|    \|-- value: string (nullable = true)
 \|    \|    \|    \|    \|-- merchant\_exception: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- ci: double (nullable = true)
 \|    \|    \|    \|    \|    \|-- value: boolean (nullable = true)
 \|    \|    \|    \|    \|-- now\_price\_checkout: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- ci: double (nullable = true)
 \|    \|    \|    \|    \|    \|-- value: string (nullable = true)
 \|    \|    \|    \|    \|-- orig\_price: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- ci: integer (nullable = true)
 \|    \|    \|    \|    \|    \|-- value: string (nullable = true)
 \|    \|    \|    \|    \|-- out\_of\_stock: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- ci: double (nullable = true)
 \|    \|    \|    \|    \|    \|-- value: boolean (nullable = true)
 \|    \|    \|    \|    \|-- sale\_price: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- ci: integer (nullable = true)
 \|    \|    \|    \|    \|    \|-- value: string (nullable = true)
 \|    \|    \|    \|    \|-- shipping\_price: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- ci: double (nullable = true)
 \|    \|    \|    \|    \|    \|-- value: string (nullable = true)
 \|    \|    \|    \|    \|-- tax: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- ci: double (nullable = true)
 \|    \|    \|    \|    \|    \|-- value: string (nullable = true)
 \|    \|    \|    \|    \|-- total: struct (nullable = true)
 \|    \|    \|    \|    \|    \|-- ci: double (nullable = true)
 \|    \|    \|    \|    \|    \|-- value: string (nullable = true)
 \|    \|    \|-- screenshots: array (nullable = true)
 \|    \|    \|    \|-- element: string (containsNull = false)
 \|    \|    \|-- startDate: string (nullable = true)
 \|    \|    \|-- status: string (nullable = true)
 \|    \|    \|-- task\_id: string (nullable = true)
 \|    \|    \|-- url: string (nullable = true)
 \|    \|    \|-- uuid: string (nullable = true)
 \|    \|    \|-- validationDateTime: string (nullable = true)
 \|    \|    \|-- validity: string (nullable = true)
 \|    \|-- startDate: string (nullable = true)
 \|    \|-- task\_id: string (nullable = true)
 \|    \|-- url: string (nullable = true)
 \|    \|-- uuid: string (nullable = true)
 \|    \|-- validationDateTime: string (nullable = true)
 \|    \|-- validity: string (nullable = true)
 \|-- task\_id: string (nullable = true)
 \|-- task\_step: integer (nullable = true)
 \|-- task\_type: integer (nullable = true)
{code}

I also tried val sqlContext = new org.apache.spark.sql.SQLContext(sc), but it give the same exception.


---

* [SPARK-5628](https://issues.apache.org/jira/browse/SPARK-5628) | *Minor* | **Add option to return spark-ec2 version**

We need a {{--version}} option for {{spark-ec2}}.


---

* [SPARK-5611](https://issues.apache.org/jira/browse/SPARK-5611) | *Minor* | **Allow spark-ec2 repo to be specified in CLI of spark\_ec2.py**


Allows repo and branch of the desired spark-ec2 (and by extension the ami-list) to be specified on the command line.

Helps when trying out different branches or forks of spark-ec2.


---

* [SPARK-5566](https://issues.apache.org/jira/browse/SPARK-5566) | *Major* | **Tokenizer for mllib package**

There exist tokenizer classes in the spark.ml.feature package and in the LDAExample in the spark.examples.mllib package.  The Tokenizer in the LDAExample is more advanced and should be made into a full-fledged public class in spark.mllib.feature.  The spark.ml.feature.Tokenizer class should become a wrapper around the new Tokenizer.


---

* [SPARK-5563](https://issues.apache.org/jira/browse/SPARK-5563) | *Major* | **LDA with online variational inference**

Latent Dirichlet Allocation (LDA) parameters can be inferred using online variational inference, as in Hoffman, Blei and Bach. “Online Learning for Latent Dirichlet Allocation.”  NIPS, 2010.  This algorithm should be very efficient and should be able to handle much larger datasets than batch algorithms for LDA.

This algorithm will also be important for supporting Streaming versions of LDA.

The implementation will ideally use the same API as the existing LDA but use a different underlying optimizer.

This will require hooking in to the existing mllib.optimization frameworks.

This will require some discussion about whether batch versions of online variational inference should be supported, as well as what variational approximation should be used now or in the future.


---

* [SPARK-5559](https://issues.apache.org/jira/browse/SPARK-5559) | *Major* | **Flaky test: o.a.s.streaming.flume.FlumeStreamSuite**

When we run FlumeStreamSuite on Jenkins, sometimes we get error like as follows.

{code}
sbt.ForkMain$ForkError: The code passed to eventually never returned normally. Attempted 52 times over 10.094849836 seconds. Last failure message: Error connecting to localhost/127.0.0.1:23456.
	at org.scalatest.concurrent.Eventually$class.tryTryAgain$1(Eventually.scala:420)
	at org.scalatest.concurrent.Eventually$class.eventually(Eventually.scala:438)
	at org.scalatest.concurrent.Eventually$.eventually(Eventually.scala:478)
	at org.scalatest.concurrent.Eventually$class.eventually(Eventually.scala:307)
	at org.scalatest.concurrent.Eventually$.eventually(Eventually.scala:478)
	at org.apache.spark.streaming.flume.FlumeStreamSuite.writeAndVerify(FlumeStreamSuite.scala:116)
	at org.apache.spark.streaming.flume.FlumeStreamSuite.org$apache$spark$streaming$flume$FlumeStreamSuite$$testFlumeStream(FlumeStreamSuite.scala:74)
	at org.apache.spark.streaming.flume.FlumeStreamSuite$$anonfun$3.apply$mcV$sp(FlumeStreamSuite.scala:66)
	at org.apache.spark.streaming.flume.FlumeStreamSuite$$anonfun$3.apply(FlumeStreamSuite.scala:66)
	at org.apache.spark.streaming.flume.FlumeStreamSuite$$anonfun$3.apply(FlumeStreamSuite.scala:66)
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
{code}

This error is caused by check-then-act logic  when it find free-port .

{code}
  /** Find a free port */
  private def findFreePort(): Int = {
    Utils.startServiceOnPort(23456, (trialPort: Int) => {
      val socket = new ServerSocket(trialPort)
      socket.close()
      (null, trialPort)
    }, conf).\_2
  }
{code}

Removing the check-then-act is not easy but we can reduce the chance of having the error by choosing random value for initial port instead of 23456.


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


---

* [SPARK-5522](https://issues.apache.org/jira/browse/SPARK-5522) | *Major* | **Accelerate the History Server start**

When starting the history server, all the log files will be fetched and parsed in order to get the applications' meta data e.g. App Name, Start Time, Duration, etc. In our production cluster, there exist 2600 log files (160G) in HDFS and it costs 3 hours to restart the history server, which is a little bit too long for us.

It would be better, if the history server can show logs with missing information during start-up and fill the missing information after fetching and parsing a log file.


---

* [SPARK-5521](https://issues.apache.org/jira/browse/SPARK-5521) | *Major* | **PCA wrapper for easy transform vectors**

Implement a simple PCA wrapper for easy transform of vectors by PCA for example LabeledPoint or another complicated structure.

Now all PCA transformation may take only matrix and haven't got any way to take project from vectors.


---

* [SPARK-5498](https://issues.apache.org/jira/browse/SPARK-5498) | *Major* | **[SPARK-SQL]when the partition schema does not match table schema,it throws java.lang.ClassCastException and so on**

when the partition schema does not match table schema,it will thows exception when the task is running.For example,we modify the type of column from int to bigint by the sql *ALTER TABLE table\_with\_partition CHANGE COLUMN key key BIGINT* ,then we query the patition data which was stored before the changing,we would get the exception:
{noformat}
org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 27.0 failed 4 times, most recent failure: Lost task 0.3 in stage 27.0 (TID 30, BJHC-HADOOP-HERA-16950.jeanlyn.local): java.lang.ClassCastException: org.apache.spark.sql.catalyst.expressions.MutableLong cannot be cast to org.apache.spark.sql.catalyst.expressions.MutableInt
        at org.apache.spark.sql.catalyst.expressions.SpecificMutableRow.setInt(SpecificMutableRow.scala:241)
        at org.apache.spark.sql.hive.HadoopTableReader$$anonfun$13$$anonfun$apply$4.apply(TableReader.scala:286)
        at org.apache.spark.sql.hive.HadoopTableReader$$anonfun$13$$anonfun$apply$4.apply(TableReader.scala:286)
        at org.apache.spark.sql.hive.HadoopTableReader$$anonfun$fillObject$1.apply(TableReader.scala:322)
        at org.apache.spark.sql.hive.HadoopTableReader$$anonfun$fillObject$1.apply(TableReader.scala:314)
        at scala.collection.Iterator$$anon$11.next(Iterator.scala:328)
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
        at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:886)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:908)
        at java.lang.Thread.run(Thread.java:662)

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
{noformat}
we can reproduce the bug as follow:
add the code to the unit test *sql/hive/src/test/scala/org/apache/spark/sql/hive/InsertIntoHiveTableSuite.scala*
{noformat}
test("partition schema does not match table schema"){
    val testData = TestHive.sparkContext.parallelize(
      (1 to 10).map(i => TestData(i, i.toString)))

    testData.registerTempTable("testData")
    val tmpDir = Files.createTempDir()

    sql(s"CREATE TABLE table\_with\_partition(key int,value string) PARTITIONED by (ds string) location '${tmpDir.toURI.toString}' ")

    sql("INSERT OVERWRITE TABLE table\_with\_partition  partition (ds='1') SELECT key,value FROM testData")

    sql("ALTER TABLE table\_with\_partition CHANGE COLUMN key key BIGINT")
    checkAnswer(sql("select key,value from table\_with\_partition where ds='1' "),
      testData.toSchemaRDD.collect.toSeq
    )

    sql("DROP TABLE table\_with\_partition")
    
  }
{noformat}
run the test 
{noformat}
mvn -Dhadoop.version=... - DwildcardSuites=org.apache.spark.sql.hive.InsertIntoHiveTableSuite test
{noformat}


---

* [SPARK-5495](https://issues.apache.org/jira/browse/SPARK-5495) | *Major* | **Offer user the ability to kill application in master web UI for standalone mode**

For cluster admins or users who manage the whole cluster need to have the ability to kill the dangling or long-running applications through simple ways. 

For examples, if user started with a spark-shell for a long time but actually is pending without any job running. In this scenario, it is better for the admins to kill that apps to free the resources.

Currently Spark user can kill the stage in driver UI, but not application. So here I'd propose to add a function to kill the application in master web UI for standalone mode.

The snapshot of function shows as below:

!https://dl.dropboxusercontent.com/u/19230832/master\_ui.png!

Add a kill action for each active application, kill action here is to simply stop the specific application.


---

* [SPARK-5470](https://issues.apache.org/jira/browse/SPARK-5470) | *Major* | **use defaultClassLoader of Serializer to load classes of classesToRegister in KryoSerializer**

Now KryoSerializer load classes of classesToRegister at the time of its initialization. when we set spark.kryo.classesToRegister=class1, it will throw  SparkException("Failed to load class to register with Kryo".
because in KryoSerializer's initialization, classLoader cannot include class of user's jars.
we need to use defaultClassLoader of Serializer in newKryo(), because executor will reset defaultClassLoader of Serializer after Serializer's initialization.


---

* [SPARK-5456](https://issues.apache.org/jira/browse/SPARK-5456) | *Blocker* | **Decimal Type comparison issue**

Not quite able to figure this out but here is a junit test to reproduce this, in JavaAPISuite.java

{code:title=DecimalBug.java}
  @Test
  public void decimalQueryTest() {
    List<Row> decimalTable = new ArrayList<Row>();
    decimalTable.add(RowFactory.create(new BigDecimal("1"), new BigDecimal("2")));
    decimalTable.add(RowFactory.create(new BigDecimal("3"), new BigDecimal("4")));
    JavaRDD<Row> rows = sc.parallelize(decimalTable);
    List<StructField> fields = new ArrayList<StructField>(7);
    fields.add(DataTypes.createStructField("a", DataTypes.createDecimalType(), true));
    fields.add(DataTypes.createStructField("b", DataTypes.createDecimalType(), true));
    sqlContext.applySchema(rows.rdd(), DataTypes.createStructType(fields)).registerTempTable("foo");
    Assert.assertEquals(sqlContext.sql("select * from foo where a > 0").collectAsList(), decimalTable);

  }
{code}

Fails with
java.lang.ClassCastException: java.math.BigDecimal cannot be cast to org.apache.spark.sql.types.Decimal


---

* [SPARK-5443](https://issues.apache.org/jira/browse/SPARK-5443) | *Major* | **jsonRDD with schema should ignore sub-objects that are omitted in schema**

Reading the code for jsonRDD, it appears that all fields of a JSON object are read into a ROW independent of the provided schema. I would expect it to be more efficient to only store in the ROW those fields that are explicitly included in the schema. 

For example, assume that I only wish to extract the "id" field of a tweet.  If I provided a schema that simply had one field within a map named "id", then the row object would only store that field within a map.


---

* [SPARK-5436](https://issues.apache.org/jira/browse/SPARK-5436) | *Major* | **Validate GradientBoostedTrees during training**

For Gradient Boosting, it would be valuable to compute test error on a separate validation set during training.  That way, training could stop early based on the test error (or some other metric specified by the user).


---

* [SPARK-5416](https://issues.apache.org/jira/browse/SPARK-5416) | *Minor* | **Initialize Executor.threadPool before ExecutorSource**

I recently saw some NPEs from [{{ExecutorSource:44}}|https://github.com/apache/spark/blob/0497ea51ac345f8057d222a18dbbf8eae78f5b92/core/src/main/scala/org/apache/spark/executor/ExecutorSource.scala#L44] in the first couple seconds of my executors' being initialized.

I think that {{ExecutorSource}} was trying to report these metrics before its threadpool was initialized; there are a few LoC between the source being registered ([Executor.scala:82|https://github.com/apache/spark/blob/0497ea51ac345f8057d222a18dbbf8eae78f5b92/core/src/main/scala/org/apache/spark/executor/Executor.scala#L82]) and the threadpool being initialized ([Executor.scala:106|https://github.com/apache/spark/blob/0497ea51ac345f8057d222a18dbbf8eae78f5b92/core/src/main/scala/org/apache/spark/executor/Executor.scala#L106]).

We should initialize the threapool before the ExecutorSource is registered.


---

* [SPARK-5412](https://issues.apache.org/jira/browse/SPARK-5412) | *Major* | **Cannot bind Master to a specific hostname as per the documentation**

Documentation on http://spark.apache.org/docs/latest/spark-standalone.html indicates:

{quote}
You can start a standalone master server by executing:
./sbin/start-master.sh
...
the following configuration options can be passed to the master and worker:
...
-h HOST, --host HOST	Hostname to listen on
{quote}

The "\-h" or "--host" parameter actually doesn't work with the start-master.sh script. Instead, one has to set the "SPARK\_MASTER\_IP" variable prior to executing the script.

Either the script or the documentation should be updated.


---

* [SPARK-5408](https://issues.apache.org/jira/browse/SPARK-5408) | *Minor* | **MaxPermSize is ignored by ExecutorRunner and DriverRunner**

ExecutorRunner and DriverRunner uses CommandUtils to build the command which runs executor or driver. The problem is that it has hardcoded {{-XX:MaxPermSize=128m}} and uses it regardless it is specified in extraJavaOpts or not.


---

* [SPARK-5404](https://issues.apache.org/jira/browse/SPARK-5404) | *Major* | **Statistic of Logical Plan is too aggresive**

The statistic number of a logical plan is quite helpful while do optimization like join reordering, however, the default algorithm is too aggressive, which probably lead to a totally wrong join order.


---

* [SPARK-5380](https://issues.apache.org/jira/browse/SPARK-5380) | *Minor* | **There will be an ArrayIndexOutOfBoundsException if the format of the source file is wrong**

When I build a graph with a file format error, there will be an ArrayIndexOutOfBoundsException


---

* [SPARK-5371](https://issues.apache.org/jira/browse/SPARK-5371) | *Critical* | **Failure to analyze query with UNION ALL and double aggregation**

This SQL session:

{code}
DROP TABLE
    test1;
DROP TABLE
    test2;
CREATE TABLE
    test1
    (
        c11 INT,
        c12 INT,
        c13 INT,
        c14 INT
    );
CREATE TABLE
    test2
    (
        c21 INT,
        c22 INT,
        c23 INT,
        c24 INT
    );
SELECT
    MIN(t3.c\_1),
    MIN(t3.c\_2),
    MIN(t3.c\_3),
    MIN(t3.c\_4)
FROM
    (
        SELECT
            SUM(t1.c11) c\_1,
            NULL        c\_2,
            NULL        c\_3,
            NULL        c\_4
        FROM
            test1 t1
        UNION ALL
        SELECT
            NULL        c\_1,
            SUM(t2.c22) c\_2,
            SUM(t2.c23) c\_3,
            SUM(t2.c24) c\_4
        FROM
            test2 t2 ) t3; 
{code}

Produces this error:

{code}
15/01/23 00:25:21 INFO thriftserver.SparkExecuteStatementOperation: Running query 'SELECT
    MIN(t3.c\_1),
    MIN(t3.c\_2),
    MIN(t3.c\_3),
    MIN(t3.c\_4)
FROM
    (
        SELECT
            SUM(t1.c11) c\_1,
            NULL        c\_2,
            NULL        c\_3,
            NULL        c\_4
        FROM
            test1 t1
        UNION ALL
        SELECT
            NULL        c\_1,
            SUM(t2.c22) c\_2,
            SUM(t2.c23) c\_3,
            SUM(t2.c24) c\_4
        FROM
            test2 t2 ) t3'
15/01/23 00:25:21 INFO parse.ParseDriver: Parsing command: SELECT
    MIN(t3.c\_1),
    MIN(t3.c\_2),
    MIN(t3.c\_3),
    MIN(t3.c\_4)
FROM
    (
        SELECT
            SUM(t1.c11) c\_1,
            NULL        c\_2,
            NULL        c\_3,
            NULL        c\_4
        FROM
            test1 t1
        UNION ALL
        SELECT
            NULL        c\_1,
            SUM(t2.c22) c\_2,
            SUM(t2.c23) c\_3,
            SUM(t2.c24) c\_4
        FROM
            test2 t2 ) t3
15/01/23 00:25:21 INFO parse.ParseDriver: Parse Completed
15/01/23 00:25:21 ERROR thriftserver.SparkExecuteStatementOperation: Error executing query:
java.util.NoSuchElementException: key not found: c\_2#23488
	at scala.collection.MapLike$class.default(MapLike.scala:228)
	at org.apache.spark.sql.catalyst.expressions.AttributeMap.default(AttributeMap.scala:29)
	at scala.collection.MapLike$class.apply(MapLike.scala:141)
	at org.apache.spark.sql.catalyst.expressions.AttributeMap.apply(AttributeMap.scala:29)
	at org.apache.spark.sql.catalyst.optimizer.UnionPushdown$$anonfun$1.applyOrElse(Optimizer.scala:77)
	at org.apache.spark.sql.catalyst.optimizer.UnionPushdown$$anonfun$1.applyOrElse(Optimizer.scala:76)
	at org.apache.spark.sql.catalyst.trees.TreeNode.transformDown(TreeNode.scala:144)
	at org.apache.spark.sql.catalyst.trees.TreeNode.transform(TreeNode.scala:135)
	at org.apache.spark.sql.catalyst.optimizer.UnionPushdown$.pushToRight(Optimizer.scala:76)
	at org.apache.spark.sql.catalyst.optimizer.UnionPushdown$$anonfun$apply$1$$anonfun$applyOrElse$6.apply(Optimizer.scala:98)
	at org.apache.spark.sql.catalyst.optimizer.UnionPushdown$$anonfun$apply$1$$anonfun$applyOrElse$6.apply(Optimizer.scala:98)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
	at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
	at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
	at scala.collection.AbstractTraversable.map(Traversable.scala:105)
	at org.apache.spark.sql.catalyst.optimizer.UnionPushdown$$anonfun$apply$1.applyOrElse(Optimizer.scala:98)
	at org.apache.spark.sql.catalyst.optimizer.UnionPushdown$$anonfun$apply$1.applyOrElse(Optimizer.scala:85)
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
	at org.apache.spark.sql.catalyst.optimizer.UnionPushdown$.apply(Optimizer.scala:85)
	at org.apache.spark.sql.catalyst.optimizer.UnionPushdown$.apply(Optimizer.scala:59)
	at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1$$anonfun$apply$2.apply(RuleExecutor.scala:61)
	at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1$$anonfun$apply$2.apply(RuleExecutor.scala:59)
	at scala.collection.IndexedSeqOptimized$class.foldl(IndexedSeqOptimized.scala:51)
	at scala.collection.IndexedSeqOptimized$class.foldLeft(IndexedSeqOptimized.scala:60)
	at scala.collection.mutable.WrappedArray.foldLeft(WrappedArray.scala:34)
	at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1.apply(RuleExecutor.scala:59)
	at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1.apply(RuleExecutor.scala:51)
	at scala.collection.immutable.List.foreach(List.scala:318)
	at org.apache.spark.sql.catalyst.rules.RuleExecutor.apply(RuleExecutor.scala:51)
	at org.apache.spark.sql.SQLContext$QueryExecution.optimizedPlan$lzycompute(SQLContext.scala:462)
	at org.apache.spark.sql.SQLContext$QueryExecution.optimizedPlan(SQLContext.scala:462)
	at org.apache.spark.sql.SQLContext$QueryExecution.sparkPlan$lzycompute(SQLContext.scala:467)
	at org.apache.spark.sql.SQLContext$QueryExecution.sparkPlan(SQLContext.scala:465)
	at org.apache.spark.sql.SQLContext$QueryExecution.executedPlan$lzycompute(SQLContext.scala:471)
	at org.apache.spark.sql.SQLContext$QueryExecution.executedPlan(SQLContext.scala:471)
	at org.apache.spark.sql.SchemaRDD.collect(SchemaRDD.scala:463)
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.run(Shim13.scala:178)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:231)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatement(HiveSessionImpl.java:212)
	at sun.reflect.GeneratedMethodAccessor61.invoke(Unknown Source)
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
	at com.sun.proxy.$Proxy18.executeStatement(Unknown Source)
	at org.apache.hive.service.cli.CLIService.executeStatement(CLIService.java:220)
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
15/01/23 00:25:22 WARN thrift.ThriftCLIService: Error executing statement:
org.apache.hive.service.cli.HiveSQLException: java.util.NoSuchElementException: key not found: c\_2#23488
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.run(Shim13.scala:189)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:231)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatement(HiveSessionImpl.java:212)
	at sun.reflect.GeneratedMethodAccessor61.invoke(Unknown Source)
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
	at com.sun.proxy.$Proxy18.executeStatement(Unknown Source)
	at org.apache.hive.service.cli.CLIService.executeStatement(CLIService.java:220)
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

Some similar queries work. For example:

{code}
SELECT
    MIN(t3.c\_1),
    MIN(t3.c\_2),
    MIN(t3.c\_3),
    MIN(t3.c\_4)
FROM
    (
        SELECT
            SUM(t1.c11) c\_1,
            SUM(t1.c12) c\_2,
            SUM(t1.c13) c\_3,
            SUM(t1.c14) c\_4
        FROM
            test1 t1
        UNION ALL
        SELECT
            SUM(t2.c21) c\_1,
            SUM(t2.c22) c\_2,
            SUM(t2.c23) c\_3,
            SUM(t2.c24) c\_4
        FROM
            test2 t2 ) t3; 
{code}

Works fine. Notice the only difference is the {{null}}.


---

* [SPARK-5366](https://issues.apache.org/jira/browse/SPARK-5366) | *Minor* | **check for mode of private key file**

check the mode for the private key. User should set it to 600.


---

* [SPARK-5363](https://issues.apache.org/jira/browse/SPARK-5363) | *Blocker* | **Spark 1.2 freeze without error notification**

After a number of calls to a map().collect() statement Spark freezes without reporting any error.  Within the map a large broadcast variable is used.

The freezing can be avoided by setting 'spark.python.worker.reuse = false' (Spark 1.2) or using an earlier version, however, at the prize of low speed.


---

* [SPARK-5360](https://issues.apache.org/jira/browse/SPARK-5360) | *Minor* | **For CoGroupedRDD, rdds for narrow dependencies and shuffle handles are included twice in serialized task**

CoGroupPartition, part of CoGroupedRDD, includes references to each RDD that the CoGroupedRDD narrowly depends on, and a reference to the ShuffleHandle.  The partition is serialized separately from the RDD, so when the RDD and partition arrive on the worker, the references in the partition and in the RDD no longer point to the same object.

This is a relatively minor performance issue (the closure can be 2x larger than it needs to be because the rdds and partitions are serialized twice; see numbers below) but is more annoying as a developer issue (this is where I ran into): if any state is stored in the RDD or ShuffleHandle on the worker side, subtle bugs can appear due to the fact that the references to the RDD / ShuffleHandle in the RDD and in the partition point to separate objects.  I'm not sure if this is enough of a potential future problem to fix this old and central part of the code, so hoping to get input from others here.

I did some simple experiments to see how much this effects closure size.  For this example: 
$ val a = sc.parallelize(1 to 10).map((\_, 1))
$ val b = sc.parallelize(1 to 2).map(x => (x, 2*x))
$ a.cogroup(b).collect()

the closure was 1902 bytes with current Spark, and 1129 bytes after my change.  The difference comes from eliminating duplicate serialization of the shuffle handle.

For this example:
$ val sortedA = a.sortByKey()
$ val sortedB = b.sortByKey()
$ sortedA.cogroup(sortedB).collect()

the closure was 3491 bytes with current Spark, and 1333 bytes after my change. Here, the difference comes from eliminating duplicate serialization of the two RDDs for the narrow dependencies.

The ShuffleHandle includes the ShuffleDependency, so this difference will get larger if a ShuffleDependency includes a serializer, a key ordering, or an aggregator (all set to None by default).  However, the difference is not affected by the size of the function the user specifies, which (based on my understanding) is typically the source of large task closures.


---

* [SPARK-5342](https://issues.apache.org/jira/browse/SPARK-5342) | *Major* | **Allow long running Spark apps to run on secure YARN/HDFS**

Currently, Spark apps cannot write to HDFS after the delegation tokens reach their expiry, which maxes out at 7 days. We must find a way to ensure that we can run applications for longer - for example, spark streaming apps are expected to run forever.


---

* [SPARK-5338](https://issues.apache.org/jira/browse/SPARK-5338) | *Major* | **Support cluster mode with Mesos**

Currently using Spark with Mesos, the only supported deployment is client mode.

It is also useful to have a cluster mode deployment that can be shared and long running.


---

* [SPARK-5320](https://issues.apache.org/jira/browse/SPARK-5320) | *Major* | **Joins on simple table created using select gives error**

Register "select 0 as a, 1 as b" as table zeroone
Register "select 0 as x, 1 as y" as table zeroone2

The following sql 
"select * from zeroone ta join zeroone2 tb on ta.a = tb.x"

gives error 
java.lang.UnsupportedOperationException: LeafNode NoRelation$ must implement statistics.


---

* [SPARK-5313](https://issues.apache.org/jira/browse/SPARK-5313) | *Minor* | **Create simple framework for highlighting changes introduced in a PR**

For any given PR, we may want to run a bunch of checks along the following lines: 
* Show property X of {{master}}
* Show the same property X of this PR
* Call out any differences on the GitHub page

It might be helpful to write a simple function that takes any check -- itself represented as a function -- as input, runs the check on master and the PR, and outputs the diff.


---

* [SPARK-5283](https://issues.apache.org/jira/browse/SPARK-5283) | *Major* | **ML sharedParams should be private**

The many shared Params implemented in sharedParams.scala should be made public.

Cons:
* Shared params discourage developers from documenting parameters and from making algorithm-specific checks.


---

* [SPARK-5281](https://issues.apache.org/jira/browse/SPARK-5281) | *Critical* | **Registering table on RDD is giving MissingRequirementError**

Application crashes on this line  {{rdd.registerTempTable("temp")}}  in 1.2 version when using sbt or Eclipse SCALA IDE

Stacktrace:

{code}
Exception in thread "main" scala.reflect.internal.MissingRequirementError: class org.apache.spark.sql.catalyst.ScalaReflection in JavaMirror with primordial classloader with boot classpath [C:\sar\scala\scala-ide\eclipse\plugins\org.scala-ide.scala210.jars\_4.0.0.201407240952\target\jars\scala-library.jar;C:\sar\scala\scala-ide\eclipse\plugins\org.scala-ide.scala210.jars\_4.0.0.201407240952\target\jars\scala-reflect.jar;C:\sar\scala\scala-ide\eclipse\plugins\org.scala-ide.scala210.jars\_4.0.0.201407240952\target\jars\scala-actor.jar;C:\sar\scala\scala-ide\eclipse\plugins\org.scala-ide.scala210.jars\_4.0.0.201407240952\target\jars\scala-swing.jar;C:\sar\scala\scala-ide\eclipse\plugins\org.scala-ide.scala210.jars\_4.0.0.201407240952\target\jars\scala-compiler.jar;C:\Program Files\Java\jre7\lib\resources.jar;C:\Program Files\Java\jre7\lib\rt.jar;C:\Program Files\Java\jre7\lib\sunrsasign.jar;C:\Program Files\Java\jre7\lib\jsse.jar;C:\Program Files\Java\jre7\lib\jce.jar;C:\Program Files\Java\jre7\lib\charsets.jar;C:\Program Files\Java\jre7\lib\jfr.jar;C:\Program Files\Java\jre7\classes] not found.
	at scala.reflect.internal.MissingRequirementError$.signal(MissingRequirementError.scala:16)
	at scala.reflect.internal.MissingRequirementError$.notFound(MissingRequirementError.scala:17)
	at scala.reflect.internal.Mirrors$RootsBase.getModuleOrClass(Mirrors.scala:48)
	at scala.reflect.internal.Mirrors$RootsBase.getModuleOrClass(Mirrors.scala:61)
	at scala.reflect.internal.Mirrors$RootsBase.staticModuleOrClass(Mirrors.scala:72)
	at scala.reflect.internal.Mirrors$RootsBase.staticClass(Mirrors.scala:119)
	at scala.reflect.internal.Mirrors$RootsBase.staticClass(Mirrors.scala:21)
	at org.apache.spark.sql.catalyst.ScalaReflection$$typecreator1$1.apply(ScalaReflection.scala:115)
	at scala.reflect.api.TypeTags$WeakTypeTagImpl.tpe$lzycompute(TypeTags.scala:231)
	at scala.reflect.api.TypeTags$WeakTypeTagImpl.tpe(TypeTags.scala:231)
	at scala.reflect.api.TypeTags$class.typeOf(TypeTags.scala:335)
	at scala.reflect.api.Universe.typeOf(Universe.scala:59)
	at org.apache.spark.sql.catalyst.ScalaReflection$class.schemaFor(ScalaReflection.scala:115)
	at org.apache.spark.sql.catalyst.ScalaReflection$.schemaFor(ScalaReflection.scala:33)
	at org.apache.spark.sql.catalyst.ScalaReflection$class.schemaFor(ScalaReflection.scala:100)
	at org.apache.spark.sql.catalyst.ScalaReflection$.schemaFor(ScalaReflection.scala:33)
	at org.apache.spark.sql.catalyst.ScalaReflection$class.attributesFor(ScalaReflection.scala:94)
	at org.apache.spark.sql.catalyst.ScalaReflection$.attributesFor(ScalaReflection.scala:33)
	at org.apache.spark.sql.SQLContext.createSchemaRDD(SQLContext.scala:111)
	at com.sar.spark.dq.poc.SparkPOC$delayedInit$body.apply(SparkPOC.scala:43)
	at scala.Function0$class.apply$mcV$sp(Function0.scala:40)
	at scala.runtime.AbstractFunction0.apply$mcV$sp(AbstractFunction0.scala:12)
	at scala.App$$anonfun$main$1.apply(App.scala:71)
	at scala.App$$anonfun$main$1.apply(App.scala:71)
	at scala.collection.immutable.List.foreach(List.scala:318)
	at scala.collection.generic.TraversableForwarder$class.foreach(TraversableForwarder.scala:32)
	at scala.App$class.main(App.scala:71)
{code}


---

* [SPARK-5277](https://issues.apache.org/jira/browse/SPARK-5277) | *Major* | **SparkSqlSerializer does not register user specified KryoRegistrators**

Although the SparkSqlSerializer class extends the KryoSerializer in core, it's overridden newKryo() does not call super.newKryo(). This results in inconsistent serializer behaviors depending on whether a KryoSerializer instance or a SparkSqlSerializer instance is used. This may also be related to the TODO in KryoResourcePool, which uses KryoSerializer instead of SparkSqlSerializer due to yet-to-be-investigated test failures.

An example of the divergence in behavior: The Exchange operator creates a new SparkSqlSerializer instance (with an empty conf; another issue) when it is constructed, whereas the GENERIC ColumnType pulls a KryoSerializer out of the resource pool (see above). The result is that the serialized in-memory columns are created using the user provided serializers / registrators, while serialization during exchange does not.


---

* [SPARK-5242](https://issues.apache.org/jira/browse/SPARK-5242) | *Major* | **"ec2/spark\_ec2.py lauch" does not work with VPC if no public DNS or IP is available**

How to reproduce: user starting cluster in VPC needs to wait forever:
{code}
./spark-ec2 -k key20141114 -i ~/aws/key.pem -s 1 --region=eu-west-1 --spark-version=1.2.0 --instance-type=m1.large --vpc-id=vpc-2e71dd46 --subnet-id=subnet-2571dd4d --zone=eu-west-1a  launch SparkByScript
Setting up security groups...
Searching for existing cluster SparkByScript...
Spark AMI: ami-1ae0166d
Launching instances...
Launched 1 slaves in eu-west-1a, regid = r-e70c5502
Launched master in eu-west-1a, regid = r-bf0f565a
Waiting for cluster to enter 'ssh-ready' state..........{forever}
{code}

Problem is that current code makes wrong assumption that VPC instance has public\_dns\_name or public ip\_address. Actually more common is that VPC instance has only private\_ip\_address.


The bug is already fixed in my fork, I am going to submit pull request


---

* [SPARK-5213](https://issues.apache.org/jira/browse/SPARK-5213) | *Major* | **Pluggable SQL Parser Support**

Currently, the SQL Parser dialect is hard code in SQLContext, which is not easy to extend, we need the features like:

bin/spark-sql --driver-class-path customizedSQL92.jar

-- switch to "hiveql" dialect
   spark-sql>SET spark.sql.dialect=hiveql;
   spark-sql>SELECT * FROM src LIMIT 1;

-- switch to "sql" dialect
   spark-sql>SET spark.sql.dialect=sql;
   spark-sql>SELECT * FROM src LIMIT 1;

-- register the new SQL dialect
   spark-sql> SET spark.sql.dialect.sql99=com.xxx.xxx.SQL99Dialect;
   spark-sql> SET spark.sql.dialect=sql99;
   spark-sql> SELECT * FROM src LIMIT 1;

-- register the non-exist SQL dialect
   spark-sql> SET spark.sql.dialect.sql92=NotExistedClass;
   spark-sql> SET spark.sql.dialect=sql92;
   spark-sql> SELECT * FROM src LIMIT 1;
-- Exception will be thrown and switch to dialect "sql" (for SQLContext) or "hiveql" (for HiveContext)


---

* [SPARK-5203](https://issues.apache.org/jira/browse/SPARK-5203) | *Major* | **union with different decimal type report error**

Test case like this:
{code:sql}
create table test (a decimal(10,1));
select a from test union all select a*2 from test;
{code}
Exception thown:
{noformat}
15/01/12 16:28:54 ERROR SparkSQLDriver: Failed in [select a from test union all select a*2 from test]
org.apache.spark.sql.catalyst.errors.package$TreeNodeException: Unresolved attributes: *, tree:
'Project [*]
 'Subquery \_u1
  'Union 
   Project [a#1]
    MetastoreRelation default, test, None
   Project [CAST((CAST(a#2, DecimalType()) * CAST(CAST(2, DecimalType(10,0)), DecimalType())), DecimalType(21,1)) AS \_c0#0]
    MetastoreRelation default, test, None

	at org.apache.spark.sql.catalyst.analysis.Analyzer$CheckResolution$$anonfun$1.applyOrElse(Analyzer.scala:85)
	at org.apache.spark.sql.catalyst.analysis.Analyzer$CheckResolution$$anonfun$1.applyOrElse(Analyzer.scala:83)
	at org.apache.spark.sql.catalyst.trees.TreeNode.transformDown(TreeNode.scala:144)
	at org.apache.spark.sql.catalyst.trees.TreeNode.transform(TreeNode.scala:135)
	at org.apache.spark.sql.catalyst.analysis.Analyzer$CheckResolution$.apply(Analyzer.scala:83)
	at org.apache.spark.sql.catalyst.analysis.Analyzer$CheckResolution$.apply(Analyzer.scala:81)
	at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1$$anonfun$apply$2.apply(RuleExecutor.scala:61)
	at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1$$anonfun$apply$2.apply(RuleExecutor.scala:59)
	at scala.collection.IndexedSeqOptimized$class.foldl(IndexedSeqOptimized.scala:51)
	at scala.collection.IndexedSeqOptimized$class.foldLeft(IndexedSeqOptimized.scala:60)
	at scala.collection.mutable.WrappedArray.foldLeft(WrappedArray.scala:34)
	at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1.apply(RuleExecutor.scala:59)
	at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1.apply(RuleExecutor.scala:51)
	at scala.collection.immutable.List.foreach(List.scala:318)
	at org.apache.spark.sql.catalyst.rules.RuleExecutor.apply(RuleExecutor.scala:51)
	at org.apache.spark.sql.SQLContext$QueryExecution.analyzed$lzycompute(SQLContext.scala:410)
	at org.apache.spark.sql.SQLContext$QueryExecution.analyzed(SQLContext.scala:410)
	at org.apache.spark.sql.SQLContext$QueryExecution.withCachedData$lzycompute(SQLContext.scala:411)
	at org.apache.spark.sql.SQLContext$QueryExecution.withCachedData(SQLContext.scala:411)
	at org.apache.spark.sql.SQLContext$QueryExecution.optimizedPlan$lzycompute(SQLContext.scala:412)
	at org.apache.spark.sql.SQLContext$QueryExecution.optimizedPlan(SQLContext.scala:412)
	at org.apache.spark.sql.SQLContext$QueryExecution.sparkPlan$lzycompute(SQLContext.scala:417)
	at org.apache.spark.sql.SQLContext$QueryExecution.sparkPlan(SQLContext.scala:415)
	at org.apache.spark.sql.SQLContext$QueryExecution.executedPlan$lzycompute(SQLContext.scala:421)
	at org.apache.spark.sql.SQLContext$QueryExecution.executedPlan(SQLContext.scala:421)
	at org.apache.spark.sql.hive.HiveContext$QueryExecution.stringResult(HiveContext.scala:369)
	at org.apache.spark.sql.hive.thriftserver.AbstractSparkSQLDriver.run(AbstractSparkSQLDriver.scala:58)
	at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver.processCmd(SparkSQLCLIDriver.scala:275)
	at org.apache.hadoop.hive.cli.CliDriver.processLine(CliDriver.java:423)
	at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver$.main(SparkSQLCLIDriver.scala:211)
	at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver.main(SparkSQLCLIDriver.scala)
{noformat}


---

* [SPARK-5157](https://issues.apache.org/jira/browse/SPARK-5157) | *Trivial* | **Configure more JVM options properly when we use ConcMarkSweepGC for AM.**

When we set `SPARK\_USE\_CONC\_INCR\_GC`, ConcurrentMarkSweepGC works on the AM.
Actually, if ConcurrentMarkSweepGC is set for the JVM, following JVM options are set automatically and implicitly.

* MaxTenuringThreshold=0
* SurvivorRatio=1024

Those can not be proper value for most cases.
See also http://www.oracle.com/technetwork/java/tuning-139912.html


---

* [SPARK-5134](https://issues.apache.org/jira/browse/SPARK-5134) | *Minor* | **Bump default Hadoop version to 2+**

[~srowen] and I discussed bumping [the default hadoop version in the parent POM|https://github.com/apache/spark/blob/bb38ebb1abd26b57525d7d29703fd449e40cd6de/pom.xml#L122] from {{1.0.4}} to something more recent.

There doesn't seem to be a good reason that it was set/kept at {{1.0.4}}.


---

* [SPARK-5124](https://issues.apache.org/jira/browse/SPARK-5124) | *Major* | **Standardize internal RPC interface**

In Spark we use Akka as the RPC layer. It would be great if we can standardize the internal RPC interface to facilitate testing. This will also provide the foundation to try other RPC implementations in the future.


---

* [SPARK-5112](https://issues.apache.org/jira/browse/SPARK-5112) | *Minor* | **Expose SizeEstimator as a developer API**

"The best way to size the amount of memory consumption your dataset will require is to create an RDD, put it into cache, and look at the SparkContext logs on your driver program. The logs will tell you how much memory each partition is consuming, which you can aggregate to get the total size of the RDD."
-the Tuning Spark page

This is a pain.  It would be much nicer to expose simply functionality for understanding the memory footprint of a Java object.


---

* [SPARK-5100](https://issues.apache.org/jira/browse/SPARK-5100) | *Critical* | **Spark Thrift server monitor page**

In the latest Spark release, there is a Spark Streaming tab on the driver web UI, which shows information about running streaming application. It should be helpful for providing a monitor page in Thrift server, because both streaming and Thrift server are long-term applications, and the details of the application do not show on stage page or job page.


---

* [SPARK-5074](https://issues.apache.org/jira/browse/SPARK-5074) | *Critical* | **Flaky test: o.a.s.scheduler.DAGSchedulerSuite**

fix the following non-deterministic test in org.apache.spark.scheduler.DAGSchedulerSuite

{noformat}
[info] DAGSchedulerSuite:
[info] - [SPARK-3353] parent stage should have lower stage id *** FAILED *** (27 milliseconds)
[info]   1 did not equal 2 (DAGSchedulerSuite.scala:242)
[info]   org.scalatest.exceptions.TestFailedException:
[info]   at org.scalatest.Assertions$class.newAssertionFailedException(Assertions.scala:500)
[info]   at org.scalatest.FunSuite.newAssertionFailedException(FunSuite.scala:1555)
[info]   at org.scalatest.Assertions$AssertionsHelper.macroAssert(Assertions.scala:466)
[info]   at org.apache.spark.scheduler.DAGSchedulerSuite$$anonfun$2.apply$mcV$sp(DAGSchedulerSuite.scala:242)
[info]   at org.apache.spark.scheduler.DAGSchedulerSuite$$anonfun$2.apply(DAGSchedulerSuite.scala:239)
[info]   at org.apache.spark.scheduler.DAGSchedulerSuite$$anonfun$2.apply(DAGSchedulerSuite.scala:239)
[info]   at org.scalatest.Transformer$$anonfun$apply$1.apply$mcV$sp(Transformer.scala:22)
[info]   at org.scalatest.OutcomeOf$class.outcomeOf(OutcomeOf.scala:85)
[info]   at org.scalatest.OutcomeOf$.outcomeOf(OutcomeOf.scala:104)
[info]   at org.scalatest.Transformer.apply(Transformer.scala:22)
[info]   at org.scalatest.Transformer.apply(Transformer.scala:20)
[info]   at org.scalatest.FunSuiteLike$$anon$1.apply(FunSuiteLike.scala:166)
[info]   at org.scalatest.Suite$class.withFixture(Suite.scala:1122)
[info]   at org.scalatest.FunSuite.withFixture(FunSuite.scala:1555)
[info]   at org.scalatest.FunSuiteLike$class.invokeWithFixture$1(FunSuiteLike.scala:163)
[info]   at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:175)
[info]   at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:175)
[info]   at org.scalatest.SuperEngine.runTestImpl(Engine.scala:306)
[info]   at org.scalatest.FunSuiteLike$class.runTest(FunSuiteLike.scala:175)
[info]   at org.apache.spark.scheduler.DAGSchedulerSuite.org$scalatest$BeforeAndAfter$$super$runTest(DAGSchedulerSuite.scala:60)
{noformat}


---

* [SPARK-5068](https://issues.apache.org/jira/browse/SPARK-5068) | *Major* | **When the path not found in the hdfs,we can't get the result**

when the partion path was found in the metastore but not found in the hdfs,it will casue some problems as follow:
{noformat}
hive> show partitions partition\_test;
OK
dt=1
dt=2
dt=3
dt=4
Time taken: 0.168 seconds, Fetched: 4 row(s)
{noformat}

{noformat}
hive> dfs -ls /user/jeanlyn/warehouse/partition\_test;
Found 3 items
drwxr-xr-x   - jeanlyn supergroup          0 2014-12-02 16:29 /user/jeanlyn/warehouse/partition\_test/dt=1
drwxr-xr-x   - jeanlyn supergroup          0 2014-12-02 16:29 /user/jeanlyn/warehouse/partition\_test/dt=3
drwxr-xr-x   - jeanlyn supergroup          0 2014-12-02 17:42 /user/jeanlyn/warehouse/partition\_test/dt=4
{noformat}
when i run the sql 
{noformat}
select * from partition\_test limit 10
{noformat} in  *hive*,i got no problem,but when i run in *spark-sql* i get the error as follow:

{noformat}
Exception in thread "main" org.apache.hadoop.mapred.InvalidInputException: Input path does not exist: hdfs://jeanlyn:9000/user/jeanlyn/warehouse/partition\_test/dt=2
    at org.apache.hadoop.mapred.FileInputFormat.listStatus(FileInputFormat.java:251)
    at org.apache.hadoop.mapred.FileInputFormat.getSplits(FileInputFormat.java:270)
    at org.apache.spark.rdd.HadoopRDD.getPartitions(HadoopRDD.scala:201)
    at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:205)
    at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:203)
    at scala.Option.getOrElse(Option.scala:120)
    at org.apache.spark.rdd.RDD.partitions(RDD.scala:203)
    at org.apache.spark.rdd.MappedRDD.getPartitions(MappedRDD.scala:28)
    at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:205)
    at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:203)
    at scala.Option.getOrElse(Option.scala:120)
    at org.apache.spark.rdd.RDD.partitions(RDD.scala:203)
    at org.apache.spark.rdd.MapPartitionsRDD.getPartitions(MapPartitionsRDD.scala:32)
    at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:205)
    at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:203)
    at scala.Option.getOrElse(Option.scala:120)
    at org.apache.spark.rdd.RDD.partitions(RDD.scala:203)
    at org.apache.spark.rdd.UnionRDD$$anonfun$1.apply(UnionRDD.scala:66)
    at org.apache.spark.rdd.UnionRDD$$anonfun$1.apply(UnionRDD.scala:66)
    at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
    at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
    at scala.collection.immutable.List.foreach(List.scala:318)
    at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
    at scala.collection.AbstractTraversable.map(Traversable.scala:105)
    at org.apache.spark.rdd.UnionRDD.getPartitions(UnionRDD.scala:66)
    at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:205)
    at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:203)
    at scala.Option.getOrElse(Option.scala:120)
    at org.apache.spark.rdd.RDD.partitions(RDD.scala:203)
    at org.apache.spark.rdd.MappedRDD.getPartitions(MappedRDD.scala:28)
    at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:205)
    at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:203)
    at scala.Option.getOrElse(Option.scala:120)
    at org.apache.spark.rdd.RDD.partitions(RDD.scala:203)
    at org.apache.spark.SparkContext.runJob(SparkContext.scala:1328)
    at org.apache.spark.rdd.RDD.collect(RDD.scala:780)
    at org.apache.spark.sql.execution.SparkPlan.executeCollect(SparkPlan.scala:84)
    at org.apache.spark.sql.SchemaRDD.collect(SchemaRDD.scala:444)
    at org.apache.spark.sql.hive.testpartition$.main(test.scala:23)
    at org.apache.spark.sql.hive.testpartition.main(test.scala)
    at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
    at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    at java.lang.reflect.Method.invoke(Method.java:606)
    at com.intellij.rt.execution.application.AppMain.main(AppMain.java:134)
{noformat}


---

* [SPARK-4985](https://issues.apache.org/jira/browse/SPARK-4985) | *Major* | **Parquet support for date type**

Parquet serde support for DATE type


---

* [SPARK-4949](https://issues.apache.org/jira/browse/SPARK-4949) | *Minor* | **shutdownCallback in SparkDeploySchedulerBackend should be enclosed by synchronized block.**

A variable `shutdownCallback` in SparkDeploySchedulerBackend can be accessed from multiple threads so it should be enclosed by synchronized block.


---

* [SPARK-4925](https://issues.apache.org/jira/browse/SPARK-4925) | *Critical* | **Publish Spark SQL hive-thriftserver maven artifact**

The hive-thriftserver maven artifact is needed for integrating Spark SQL with Cassandra.

Can we publish it to maven?


---

* [SPARK-4924](https://issues.apache.org/jira/browse/SPARK-4924) | *Major* | **Factor out code to launch Spark applications into a separate library**

One of the questions we run into rather commonly is "how to start a Spark application from my Java/Scala program?". There currently isn't a good answer to that:

- Instantiating SparkContext has limitations (e.g., you can only have one active context at the moment, plus you lose the ability to submit apps in cluster mode)
- Calling SparkSubmit directly is doable but you lose a lot of the logic handled by the shell scripts
- Calling the shell script directly is doable,  but sort of ugly from an API point of view.

I think it would be nice to have a small library that handles that for users. On top of that, this library could be used by Spark itself to replace a lot of the code in the current shell scripts, which have a lot of duplication.


---

* [SPARK-4897](https://issues.apache.org/jira/browse/SPARK-4897) | *Blocker* | **Python 3 support**

It would be nice to have Python 3 support in PySpark, provided that we can do it in a way that maintains backwards-compatibility with Python 2.6.

I started looking into porting this; my WIP work can be found at https://github.com/JoshRosen/spark/compare/python3

I was able to use the [futurize|http://python-future.org/futurize.html#forwards-conversion-stage1] tool to handle the basic conversion of things like {{print}} statements, etc. and had to manually fix up a few imports for packages that moved / were renamed, but the major blocker that I hit was {{cloudpickle}}:

{code}
[joshrosen python (python3)]$ PYSPARK\_PYTHON=python3 ../bin/pyspark
Python 3.4.2 (default, Oct 19 2014, 17:52:17)
[GCC 4.2.1 Compatible Apple LLVM 6.0 (clang-600.0.51)] on darwin
Type "help", "copyright", "credits" or "license" for more information.
Traceback (most recent call last):
  File "/Users/joshrosen/Documents/Spark/python/pyspark/shell.py", line 28, in <module>
    import pyspark
  File "/Users/joshrosen/Documents/spark/python/pyspark/\_\_init\_\_.py", line 41, in <module>
    from pyspark.context import SparkContext
  File "/Users/joshrosen/Documents/spark/python/pyspark/context.py", line 26, in <module>
    from pyspark import accumulators
  File "/Users/joshrosen/Documents/spark/python/pyspark/accumulators.py", line 97, in <module>
    from pyspark.cloudpickle import CloudPickler
  File "/Users/joshrosen/Documents/spark/python/pyspark/cloudpickle.py", line 120, in <module>
    class CloudPickler(pickle.Pickler):
  File "/Users/joshrosen/Documents/spark/python/pyspark/cloudpickle.py", line 122, in CloudPickler
    dispatch = pickle.Pickler.dispatch.copy()
AttributeError: type object '\_pickle.Pickler' has no attribute 'dispatch'
{code}

This code looks like it will be hard difficult to port to Python 3, so this might be a good reason to switch to [Dill|https://github.com/uqfoundation/dill] for Python serialization.


---

* [SPARK-4894](https://issues.apache.org/jira/browse/SPARK-4894) | *Major* | **Add Bernoulli-variant of Naive Bayes**

MLlib only supports the multinomial-variant of Naive Bayes.  The Bernoulli version of Naive Bayes is more useful for situations where the features are binary values.


---

* [SPARK-4848](https://issues.apache.org/jira/browse/SPARK-4848) | *Major* | **Allow different Worker configurations in standalone cluster**

On a stand-alone spark cluster, much of the determination of worker specifics, especially one has multiple instances per node, is done only on the master.

The master loops over instances, and starts a worker per instance on each node.

This means, if your workers have different values of SPARK\_WORKER\_INSTANCES or SPARK\_WORKER\_WEBUI\_PORT from each other (or from the master), all values are ignored except the one on the master.

SPARK\_WORKER\_PORT looks like it is unread in scripts, but read in code - I'm not sure how it will behave, since all instances will read the same value from the environment.


---

* [SPARK-4820](https://issues.apache.org/jira/browse/SPARK-4820) | *Minor* | **Spark build encounters "File name too long" on some encrypted filesystems**

This was reported by Luchesar Cekov on github along with a proposed fix. The fix has some potential downstream issues (it will modify the classnames) so until we understand better how many users are affected we aren't going to merge it. However, I'd like to include the issue and workaround here. If you encounter this issue please comment on the JIRA so we can assess the frequency.

The issue produces this error:
{code}
[error] == Expanded type of tree ==
[error] 
[error] ConstantType(value = Constant(Throwable))
[error] 
[error] uncaught exception during compilation: java.io.IOException
[error] File name too long
[error] two errors found
{code}

The workaround is in maven under the compile options add: 

{code}
+              <arg>-Xmax-classfile-name</arg>
+              <arg>128</arg>
{code}

In SBT add:

{code}
+    scalacOptions in Compile ++= Seq("-Xmax-classfile-name", "128"),
{code}


---

* [SPARK-4783](https://issues.apache.org/jira/browse/SPARK-4783) | *Minor* | **System.exit() calls in SparkContext disrupt applications embedding Spark**

A common architectural choice for integrating Spark within a larger application is to employ a gateway to handle Spark jobs. The gateway is a server which contains one or more long-running sparkcontexts.

A typical server is created with the following pseudo code:

var continue = true
while (continue){
 try {
    server.run() 
  } catch (e) {
  continue = log\_and\_examine\_error(e)
}

The problem is that sparkcontext frequently calls System.exit when it encounters a problem which means the server can only be re-spawned at the process level, which is much more messy than the simple code above.

Therefore, I believe it makes sense to replace all System.exit calls in sparkcontext with the throwing of a fatal error.


---

* [SPARK-4777](https://issues.apache.org/jira/browse/SPARK-4777) | *Major* | **Some block memory after unrollSafely not count into used memory(memoryStore.entrys or unrollMemory)**

Some memory not count into memory used by memoryStore or unrollMemory.

Thread A after unrollsafely memory, it will release 40MB unrollMemory(40MB will used by other threads). then ThreadA wait get accountingLock to tryToPut blockA(30MB). before Thread A get accountingLock, blockA memory size is not counting into unrollMemory or memoryStore.currentMemory.
  
 IIUC, freeMemory should minus that block memory


---

* [SPARK-4705](https://issues.apache.org/jira/browse/SPARK-4705) | *Major* | **Driver retries in cluster mode always fail if event logging is enabled**

yarn-cluster mode will retry to run the driver in certain failure modes. If even logging is enabled, this will most probably fail, because:

{noformat}
Exception in thread "Driver" java.io.IOException: Log directory hdfs://vanzin-krb-1.vpc.cloudera.com:8020/user/spark/applicationHistory/application\_1417554558066\_0003 already exists!
        at org.apache.spark.util.FileLogger.createLogDir(FileLogger.scala:129)
        at org.apache.spark.util.FileLogger.start(FileLogger.scala:115)
        at org.apache.spark.scheduler.EventLoggingListener.start(EventLoggingListener.scala:74)
        at org.apache.spark.SparkContext.<init>(SparkContext.scala:353)
{noformat}

The even log path should be "more unique". Or perhaps retries of the same app should clean up the old logs first.


---

* [SPARK-4704](https://issues.apache.org/jira/browse/SPARK-4704) | *Major* | **SparkSubmitDriverBootstrap doesn't flush output**

When running spark-submit with a job that immediately blows up (say due to init errors in the job code), there is no error output from spark-submit on the console.

When I ran spark-class directly, then I do see the error/stack trace on the console.

I believe the issue is in SparkSubmitDriverBootstrapper (I had spark.driver.memory set in spark-defaults.conf) not waiting for the  RedirectThreads to flush/complete before exiting.

E.g. here:

https://github.com/apache/spark/blob/master/core/src/main/scala/org/apache/spark/deploy/SparkSubmitDriverBootstrapper.scala#L143

I believe around line 165 or so, stdoutThread.join() and
stderrThread.join() calls are necessary to make sure the other threads
have had a chance to flush process.getInputStream/getErrorStream to
System.out/err before the process exits.

I've been tripped up by this in similar RedirectThread/process code, hence suspecting this is the problem.


---

* [SPARK-4699](https://issues.apache.org/jira/browse/SPARK-4699) | *Major* | **Make caseSensitive configurable in Analyzer.scala**

Currently, case sensitivity is true by default in Analyzer. It should be configurable by setting SQLConf in the client application


---

* [SPARK-4687](https://issues.apache.org/jira/browse/SPARK-4687) | *Major* | **SparkContext#addFile doesn't keep file folder information**

Files added with SparkContext#addFile are loaded with Utils#fetchFile before a task starts. However, Utils#fetchFile puts all files under the Spart root on the worker node. We should have an option to keep the folder information.


---

* [SPARK-4655](https://issues.apache.org/jira/browse/SPARK-4655) | *Major* | **Split Stage into ShuffleMapStage and ResultStage subclasses**

The scheduler's {{Stage}} class has many fields which are only applicable to result stages or shuffle map stages.  As a result, I think that it makes sense to make {{Stage}} into an abstract base class with two subclasses, {{ResultStage}} and {{ShuffleMapStage}}.  This would improve the understandability of the DAGScheduler code.


---

* [SPARK-4600](https://issues.apache.org/jira/browse/SPARK-4600) | *Minor* | **org.apache.spark.graphx.VertexRDD.diff does not work**

VertexRDD.diff doesn't work.

For example : 

val setA: VertexRDD[Int] = VertexRDD(sc.parallelize(0L until 2L).map(id => (id, id.toInt)))
setA.collect.foreach(println(\_))
// (0,0)
// (1,1)

val setB: VertexRDD[Int] = VertexRDD(sc.parallelize(1L until 3L).map(id => (id, id.toInt)))
setB.collect.foreach(println(\_))
// (1,1)
// (2,2)

val diff = setA.diff(setB)
diff.collect.foreach(println(\_))
// printed none


---

* [SPARK-4588](https://issues.apache.org/jira/browse/SPARK-4588) | *Critical* | **Add API for feature attributes**

Feature attributes, e.g., continuous/categorical, feature names, feature dimension, number of categories, number of nonzeros (support) could be useful for ML algorithms.

In SPARK-3569, we added metadata to schema, which can be used to store feature attributes along with the dataset. We need to provide a wrapper over the Metadata class for ML usage.

The design doc is available at https://docs.google.com/document/d/1796XfSzFbZvGWFs0ky99AJhlqkOBRG1O2bUxK2N4Grk/edit?usp=sharing


---

* [SPARK-4556](https://issues.apache.org/jira/browse/SPARK-4556) | *Minor* | **Document that make-distribution.sh is required to make a runnable distribution**

After building the binary distribution assembly, the resultant tarball can't be used for local mode.

{code}
busbey2-MBA:spark busbey$ mvn -Pbigtop-dist -DskipTests=true package
[INFO] Scanning for projects...
...SNIP...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary:
[INFO] 
[INFO] Spark Project Parent POM ........................... SUCCESS [ 32.227 s]
[INFO] Spark Project Networking ........................... SUCCESS [ 31.402 s]
[INFO] Spark Project Shuffle Streaming Service ............ SUCCESS [  8.864 s]
[INFO] Spark Project Core ................................. SUCCESS [15:39 min]
[INFO] Spark Project Bagel ................................ SUCCESS [ 29.470 s]
[INFO] Spark Project GraphX ............................... SUCCESS [05:20 min]
[INFO] Spark Project Streaming ............................ SUCCESS [11:02 min]
[INFO] Spark Project Catalyst ............................. SUCCESS [11:26 min]
[INFO] Spark Project SQL .................................. SUCCESS [11:33 min]
[INFO] Spark Project ML Library ........................... SUCCESS [14:27 min]
[INFO] Spark Project Tools ................................ SUCCESS [ 40.980 s]
[INFO] Spark Project Hive ................................. SUCCESS [11:45 min]
[INFO] Spark Project REPL ................................. SUCCESS [03:15 min]
[INFO] Spark Project Assembly ............................. SUCCESS [04:22 min]
[INFO] Spark Project External Twitter ..................... SUCCESS [ 43.567 s]
[INFO] Spark Project External Flume Sink .................. SUCCESS [ 50.367 s]
[INFO] Spark Project External Flume ....................... SUCCESS [01:41 min]
[INFO] Spark Project External MQTT ........................ SUCCESS [ 40.973 s]
[INFO] Spark Project External ZeroMQ ...................... SUCCESS [ 54.878 s]
[INFO] Spark Project External Kafka ....................... SUCCESS [01:23 min]
[INFO] Spark Project Examples ............................. SUCCESS [10:19 min]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 01:47 h
[INFO] Finished at: 2014-11-22T02:13:51-06:00
[INFO] Final Memory: 79M/2759M
[INFO] ------------------------------------------------------------------------
busbey2-MBA:spark busbey$ cd assembly/target/
busbey2-MBA:target busbey$ mkdir dist-temp
busbey2-MBA:target busbey$ tar -C dist-temp -xzf spark-assembly\_2.10-1.3.0-SNAPSHOT-dist.tar.gz 
busbey2-MBA:target busbey$ cd dist-temp/
busbey2-MBA:dist-temp busbey$ ./bin/spark-shell
ls: /Users/busbey/projects/spark/assembly/target/dist-temp/assembly/target/scala-2.10: No such file or directory
Failed to find Spark assembly in /Users/busbey/projects/spark/assembly/target/dist-temp/assembly/target/scala-2.10
You need to build Spark before running this program.
{code}

It looks like the classpath calculations in {{bin/compute\_classpath.sh}} don't handle it.

If I move all of the spark-*.jar files from the top level into the lib folder and touch the RELEASE file, then the spark shell launches in local mode normally.


---

* [SPARK-4550](https://issues.apache.org/jira/browse/SPARK-4550) | *Critical* | **In sort-based shuffle, store map outputs in serialized form**

One drawback with sort-based shuffle compared to hash-based shuffle is that it ends up storing many more java objects in memory.  If Spark could store map outputs in serialized form, it could
* spill less often because the serialized form is more compact
* reduce GC pressure

This will only work when the serialized representations of objects are independent from each other and occupy contiguous segments of memory.  E.g. when Kryo reference tracking is left on, objects may contain pointers to objects farther back in the stream, which means that the sort can't relocate objects without corrupting them.


---

* [SPARK-4423](https://issues.apache.org/jira/browse/SPARK-4423) | *Minor* | **Improve foreach() documentation to avoid confusion between local- and cluster-mode behavior**

{{foreach}} seems to be a common source of confusion for new users: in {{local}} mode, {{foreach}} can be used to update local variables on the driver, but programs that do this will not work properly when executed on clusters, since the {{foreach}} will update per-executor variables (note that this \_will\_ work correctly for accumulators, but not for other types of mutable objects).

Similarly, I've seen users become confused when {{.foreach(println)}} doesn't print to the driver's standard output.

At a minimum, we should improve the documentation to warn users against unsafe uses of {{foreach}} that won't work properly when transitioning from local mode to a real cluster.

We might also consider changes to local mode so that its behavior more closely matches the cluster modes; this will require some discussion, though, since any change of behavior here would technically be a user-visible backwards-incompatible change (I don't think that we made any explicit guarantees about the current local-mode behavior, but someone might be relying on the current implicit behavior).


---

* [SPARK-4346](https://issues.apache.org/jira/browse/SPARK-4346) | *Major* | **YarnClientSchedulerBack.asyncMonitorApplication should be common with Client.monitorApplication**

The YarnClientSchedulerBackend.asyncMonitorApplication routine should move into ClientBase and be made common with monitorApplication.  Make sure stop is handled properly.

See discussion on https://github.com/apache/spark/pull/3143


---

* [SPARK-4300](https://issues.apache.org/jira/browse/SPARK-4300) | *Minor* | **Race condition during SparkWorker shutdown**

When a shark job is done. there are some error message as following show in the log

{code}
INFO 22:10:41,635 SparkMaster: akka.tcp://sparkDriver@ip-172-31-11-204.us-west-1.compute.internal:57641 got disassociated, removing it.
 INFO 22:10:41,640 SparkMaster: Removing app app-20141106221014-0000
 INFO 22:10:41,687 SparkMaster: Removing application Shark::ip-172-31-11-204.us-west-1.compute.internal
 INFO 22:10:41,710 SparkWorker: Asked to kill executor app-20141106221014-0000/0
 INFO 22:10:41,712 SparkWorker: Runner thread for executor app-20141106221014-0000/0 interrupted
 INFO 22:10:41,714 SparkWorker: Killing process!
ERROR 22:10:41,738 SparkWorker: Error writing stream to file /var/lib/spark/work/app-20141106221014-0000/0/stdout
ERROR 22:10:41,739 SparkWorker: java.io.IOException: Stream closed
ERROR 22:10:41,739 SparkWorker: 	at java.io.BufferedInputStream.getBufIfOpen(BufferedInputStream.java:162)
ERROR 22:10:41,740 SparkWorker: 	at java.io.BufferedInputStream.read1(BufferedInputStream.java:272)
ERROR 22:10:41,740 SparkWorker: 	at java.io.BufferedInputStream.read(BufferedInputStream.java:334)
ERROR 22:10:41,740 SparkWorker: 	at java.io.FilterInputStream.read(FilterInputStream.java:107)
ERROR 22:10:41,741 SparkWorker: 	at org.apache.spark.util.logging.FileAppender.appendStreamToFile(FileAppender.scala:70)
ERROR 22:10:41,741 SparkWorker: 	at org.apache.spark.util.logging.FileAppender$$anon$1$$anonfun$run$1.apply$mcV$sp(FileAppender.scala:39)
ERROR 22:10:41,741 SparkWorker: 	at org.apache.spark.util.logging.FileAppender$$anon$1$$anonfun$run$1.apply(FileAppender.scala:39)
ERROR 22:10:41,742 SparkWorker: 	at org.apache.spark.util.logging.FileAppender$$anon$1$$anonfun$run$1.apply(FileAppender.scala:39)
ERROR 22:10:41,742 SparkWorker: 	at org.apache.spark.util.Utils$.logUncaughtExceptions(Utils.scala:1311)
ERROR 22:10:41,742 SparkWorker: 	at org.apache.spark.util.logging.FileAppender$$anon$1.run(FileAppender.scala:38)
 INFO 22:10:41,838 SparkMaster: Connected to Cassandra cluster: 4299
 INFO 22:10:41,839 SparkMaster: Adding host 172.31.11.204 (Analytics)
 INFO 22:10:41,840 SparkMaster: New Cassandra host /172.31.11.204:9042 added
 INFO 22:10:41,841 SparkMaster: Adding host 172.31.11.204 (Analytics)
 INFO 22:10:41,842 SparkMaster: Adding host 172.31.11.204 (Analytics)
 INFO 22:10:41,852 SparkMaster: akka.tcp://sparkDriver@ip-172-31-11-204.us-west-1.compute.internal:57641 got disassociated, removing it.
 INFO 22:10:41,853 SparkMaster: akka.tcp://sparkDriver@ip-172-31-11-204.us-west-1.compute.internal:57641 got disassociated, removing it.
 INFO 22:10:41,853 SparkMaster: akka.tcp://sparkDriver@ip-172-31-11-204.us-west-1.compute.internal:57641 got disassociated, removing it.
 INFO 22:10:41,857 SparkMaster: akka.tcp://sparkDriver@ip-172-31-11-204.us-west-1.compute.internal:57641 got disassociated, removing it.
 INFO 22:10:41,862 SparkMaster: Adding host 172.31.11.204 (Analytics)
 WARN 22:10:42,200 SparkMaster: Got status update for unknown executor app-20141106221014-0000/0
 INFO 22:10:42,211 SparkWorker: Executor app-20141106221014-0000/0 finished with state KILLED exitStatus 143
{code}

/var/lib/spark/work/app-20141106221014-0000/0/stdout is on the disk. It is trying to write to a close IO stream. 

Spark worker shuts down by {code}
 private def killProcess(message: Option[String]) {
    var exitCode: Option[Int] = None
    logInfo("Killing process!")
    process.destroy()
    process.waitFor()
    if (stdoutAppender != null) {
      stdoutAppender.stop()
    }
    if (stderrAppender != null) {
      stderrAppender.stop()
    }
    if (process != null) {
    exitCode = Some(process.waitFor())
    }
    worker ! ExecutorStateChanged(appId, execId, state, message, exitCode)
 
{code}

But stdoutAppender concurrently writes to output log file, which creates race condition.


---

* [SPARK-4286](https://issues.apache.org/jira/browse/SPARK-4286) | *Major* | **Support External Shuffle Service with Mesos integration**

With the new external shuffle service added, we need to also make the Mesos integration able to launch the shuffle service and support the auto scaling executors.

Mesos executor will launch the external shuffle service and leave it running, while have spark executors scalable.


---

* [SPARK-4194](https://issues.apache.org/jira/browse/SPARK-4194) | *Critical* | **Exceptions thrown during SparkContext or SparkEnv construction might lead to resource leaks or corrupted global state**

The SparkContext and SparkEnv constructors instantiate a bunch of objects that may need to be cleaned up after they're no longer needed.  If an exception is thrown during SparkContext or SparkEnv construction (e.g. due to a bad configuration setting), then objects created earlier in the constructor may not be properly cleaned up.

This is unlikely to cause problems for batch jobs submitted through {{spark-submit}}, since failure to construct SparkContext will probably cause the JVM to exit, but it is a potentially serious issue in interactive environments where a user might attempt to create SparkContext with some configuration, fail due to an error, and re-attempt the creation with new settings.  In this case, resources from the previous creation attempt might not have been cleaned up and could lead to confusing errors (especially if the old, leaked resources share global state with the new SparkContext).


---

* [SPARK-4081](https://issues.apache.org/jira/browse/SPARK-4081) | *Minor* | **Categorical feature indexing**

**Updated Description**

Decision Trees and tree ensembles require that categorical features be indexed 0,1,2....  There is currently no code to aid with indexing a dataset.  This is a proposal for a helper class for computing indices (and also deciding which features to treat as categorical).

Proposed functionality:
* This helps process a dataset of unknown vectors into a dataset with some continuous features and some categorical features. The choice between continuous and categorical is based upon a maxCategories parameter.
* This can also map categorical feature values to 0-based indices.

This is implemented in the spark.ml package for the Pipelines API, and it stores the indexes as column metadata.


---

* [SPARK-4012](https://issues.apache.org/jira/browse/SPARK-4012) | *Major* | **Uncaught OOM in ContextCleaner**

When running an "might-be-memory-intensive"  application locally, I received the following exception


Exception: java.lang.OutOfMemoryError thrown from the UncaughtExceptionHandler in thread "Spark Context Cleaner"

Java HotSpot(TM) 64-Bit Server VM warning: Exception java.lang.OutOfMemoryError occurred dispatching signal SIGINT to handler- the VM may need to be forcibly terminated

Exception: java.lang.OutOfMemoryError thrown from the UncaughtExceptionHandler in thread "Driver Heartbeater"

Java HotSpot(TM) 64-Bit Server VM warning: Exception java.lang.OutOfMemoryError occurred dispatching signal SIGINT to handler- 
the VM may need to be forcibly terminated

Java HotSpot(TM) 64-Bit Server VM warning: Exception java.lang.OutOfMemoryError occurred dispatching signal SIGINT to handler- the VM may need to be forcibly terminated
Java HotSpot(TM) 64-Bit Server VM warning: Exception java.lang.OutOfMemoryError occurred dispatching signal SIGINT to handler- the VM may need to be forcibly terminated
Java HotSpot(TM) 64-Bit Server VM warning: Exception java.lang.OutOfMemoryError occurred dispatching signal SIGINT to handler- the VM may need to be forcibly terminated
Java HotSpot(TM) 64-Bit Server VM warning: Exception java.lang.OutOfMemoryError occurred dispatching signal SIGINT to handler- the VM may need to be forcibly terminated
Java HotSpot(TM) 64-Bit Server VM warning: Exception java.lang.OutOfMemoryError occurred dispatching signal SIGINT to handler- the VM may need to be forcibly terminated


I looked at the code, we might want to call Utils.tryOrExit instead of Utils.logUncaughtExceptions


---

* [SPARK-4011](https://issues.apache.org/jira/browse/SPARK-4011) | *Minor* | **tighten the visibility of the members in Master/Worker class**

Currently, most of the members in Master/Worker are with public accessibility

we might wish to tighten the accessibility of them 

a bit more discussion is here:

https://github.com/apache/spark/pull/2828


---

* [SPARK-3885](https://issues.apache.org/jira/browse/SPARK-3885) | *Major* | **Provide mechanism to remove accumulators once they are no longer used**

Spark does not currently provide any mechanism to delete accumulators after they are no longer used.  This can lead to OOMs for long-lived SparkContexts that create many large accumulators.

Part of the problem is that accumulators are registered in a global {{Accumulators}} registry.  Maybe the fix would be as simple as using weak references in the Accumulators registry so that accumulators can be GC'd once they can no longer be used.

In the meantime, here's a workaround that users can try:

Accumulators have a public setValue() method that can be called (only by the driver) to change an accumulator’s value.  You might be able to use this to reset accumulators’ values to smaller objects (e.g. the “zero” object of whatever your accumulator type is, or ‘null’ if you’re sure that the accumulator will never be accessed again).

This issue was originally reported by [~nkronenfeld] on the dev mailing list: http://apache-spark-developers-list.1001551.n3.nabble.com/Fwd-Accumulator-question-td8709.html


---

* [SPARK-3596](https://issues.apache.org/jira/browse/SPARK-3596) | *Major* | **Support changing the yarn client monitor interval**

Right now spark on yarn has a monitor interval that can be configured by spark.yarn.report.interval.  This is how often the client checks with the RM to get status on the running application in cluster mode.   We should allow users to set this interval as some may not need to check so often.   There is another jira filed to make it so the client doesn't have to stay around for cluster mode.

With the changes in https://github.com/apache/spark/pull/2350, it further extends that to affect client mode. 

We may want to add in specific configs for that since the monitorApplication function is now used in multiple different scenarios it actually might make sense for it to take the timeout as a parameter. You could want different timeout for different situations.

for instance how quickly we poll on client side and print information (cluster mode) vs how quickly we recognize the application quit and we want to terminate (client mode), I want the latter to happen quickly where as in cluster mode I might not care as much about how often it is printing updated info to the screen. I guess its private so we could leave it as is and change if we add support for that later.

my suggestion for name would be something like spark.yarn.client.progress.pollinterval. If we were to add separate ones in the future then they could be something like spark.yarn.app.ready.pollinterval and spark.yarn.app.completion.pollinterval


---

* [SPARK-3591](https://issues.apache.org/jira/browse/SPARK-3591) | *Major* | **Provide "fire and forget" option for YARN cluster mode**

After launching an application through yarn-cluster mode, the SparkSubmit process sticks around and enters a monitoring loop to track the application's status. This is really a responsibility that belongs to a different process, such that SparkSubmit can run yarn-cluster applications in a fire-and-forget mode. We currently already do this for standalone-cluster mode. we should do it for yarn-cluster mode too.


---

* [SPARK-3570](https://issues.apache.org/jira/browse/SPARK-3570) | *Major* | **Shuffle write time does not include time to open shuffle files**

Currently, the reported shuffle write time does not include time to open the shuffle files.  This time can be very significant when the disk is highly utilized and many shuffle files exist on the machine (I'm not sure how severe this is in 1.0 onward -- since shuffle files are automatically deleted, this may be less of an issue because there are fewer old files sitting around).  In experiments I did, in extreme cases, adding the time to open files can increase the shuffle write time from 5ms (of a 2 second task) to 1 second.  We should fix this for better performance debugging.

Thanks [~shivaram] for helping to diagnose this problem.  cc [~pwendell]


---

* [SPARK-3562](https://issues.apache.org/jira/browse/SPARK-3562) | *Major* | **Periodic cleanup event logs**

 If we run spark application frequently, it will write many spark event log into spark.eventLog.dir. After a long time later, there will be many spark event log that we do not concern in the spark.eventLog.dir.Periodic cleanups will ensure that logs older than this duration will be forgotten. It is no need to clean logs by hands.


---

* [SPARK-3524](https://issues.apache.org/jira/browse/SPARK-3524) | *Major* | **remove workaround to pickle array of float for Pyrolite**

After Pyrolite release a new version with PR https://github.com/irmen/Pyrolite/pull/11, we should remove the workaround introduced in PR https://github.com/apache/spark/pull/2365


---

* [SPARK-3468](https://issues.apache.org/jira/browse/SPARK-3468) | *Major* | **Provide timeline view in Job UI pages**

I sometimes trouble-shoot and analyse the cause of long time spending job.

At the time, I find the stages which spends long time or fails, then I find the tasks which spends long time or fails, next I analyse the proportion of each phase in a task.

Another case, I find executors which spends long time for running a task and analyse the details of a task.

In such situation, I think it's helpful to visualize timeline view of stages / tasks / executors and visualize details of proportion of activity for each task.

Now I'm developing prototypes like captures I attached.
I'll integrate these viewer into WebUI.


---

* [SPARK-3454](https://issues.apache.org/jira/browse/SPARK-3454) | *Major* | **Expose JSON representation of data shown in WebUI**

If WebUI support to JSON format extracting, it's helpful for user who want to analyse stage / task / executor information.

Fortunately, WebUI has renderJson method so we can implement the method in each subclass.


---

* [SPARK-3444](https://issues.apache.org/jira/browse/SPARK-3444) | *Minor* | **Provide a way to easily change the log level in the Spark shell while running**

Right now its difficult to change the log level while running. Our log messages can be quite verbose at the more detailed levels, and some users want to run at WARN until they encounter an issue and then increase the logging level to debug without restarting the shell.


---

* [SPARK-3381](https://issues.apache.org/jira/browse/SPARK-3381) | *Trivial* | **DecisionTree: eliminate bins for unordered features**

Code simplification: DecisionTree currently allocates bins for unordered features (in findSplitsBins).  However, those bins are not needed; only the splits are required.  This change will require modifying findSplitsBins, as well as modifying a few other functions to use splits instead of bins.


---

* [SPARK-3357](https://issues.apache.org/jira/browse/SPARK-3357) | *Minor* | **Internal log messages should be set at DEBUG level instead of INFO**

spark-shell shows INFO by default, so we should carefully choose what to show at INFO level. For example, if I run

{code}
sc.parallelize(0 until 100).count()
{code}

and wait for one minute or so. I will see messages that mix with the current input box, which is annoying:

{code}
scala> 14/09/02 17:09:00 INFO BlockManager: Removing broadcast 0
14/09/02 17:09:00 INFO BlockManager: Removing block broadcast\_0
14/09/02 17:09:00 INFO MemoryStore: Block broadcast\_0 of size 1088 dropped from memory (free 278019440)
14/09/02 17:09:00 INFO ContextCleaner: Cleaned broadcast 0
{code}

Does a user need to know when a broadcast variable is removed? Maybe not.


---

* [SPARK-3355](https://issues.apache.org/jira/browse/SPARK-3355) | *Major* | **Allow running maven tests in run-tests**

We should have a variable called AMPLAB\_JENKINS\_BUILD\_TOOL that decides whether to run sbt or maven.

This would allow us to simplify our build matrix in Jenkins... currently the maven builds run a totally different thing than the normal run-tests builds.

The maven build currently does something like this:

{code}
mvn -DskipTests -Pprofile1 -Pprofile2 ... clean package
mvn test -Pprofile1 -Pprofile2 ... --fail-at-end
{code}


---

* [SPARK-3276](https://issues.apache.org/jira/browse/SPARK-3276) | *Minor* | **Provide a API to specify MIN\_REMEMBER\_DURATION for files to consider as input in streaming**

Currently, only one API called textFileStream in StreamingContext to specify the text file dstream, which ignores the old files always. On some times, the old files is still useful.
Need a API to let user choose whether the old files need to be ingored or not .

The API currently in StreamingContext:
def textFileStream(directory: String): DStream[String] = {
    fileStream[LongWritable, Text, TextInputFormat](directory).map(\_.\_2.toString)
  }


---

* [SPARK-3266](https://issues.apache.org/jira/browse/SPARK-3266) | *Major* | **JavaDoubleRDD doesn't contain max()**

While I can compile my code, I see:

Caused by: java.lang.NoSuchMethodError: org.apache.spark.api.java.JavaDoubleRDD.max(Ljava/util/Comparator;)Ljava/lang/Double;

When I try to execute my Spark code. Stepping into the JavaDoubleRDD class, I don't notice max()
although it is clearly listed in the documentation.


---

* [SPARK-3090](https://issues.apache.org/jira/browse/SPARK-3090) | *Major* | ** Avoid not stopping SparkContext with YARN Client mode**

When we use YARN Cluster mode, ApplicationMaser register a shutdown hook, stopping SparkContext.
Thanks to this, SparkContext can stop even if Application forgets to stop SparkContext itself.

But, unfortunately, YARN Client mode doesn't have such mechanism.


---

* [SPARK-3066](https://issues.apache.org/jira/browse/SPARK-3066) | *Major* | **Support recommendAll in matrix factorization model**

ALS returns a matrix factorization model, which we can use to predict ratings for individual queries as well as small batches. In practice, users may want to compute top-k recommendations offline for all users. It is very expensive but a common problem. We can do some optimization like

1) collect one side (either user or product) and broadcast it as a matrix
2) use level-3 BLAS to compute inner products
3) use Utils.takeOrdered to find top-k


---

* [SPARK-2808](https://issues.apache.org/jira/browse/SPARK-2808) | *Major* | **update kafka to version 0.8.2**

First kafka\_2.11 0.8.1 has to be released


---

* [SPARK-2691](https://issues.apache.org/jira/browse/SPARK-2691) | *Major* | **Allow Spark on Mesos to be launched with Docker**

Currently to launch Spark with Mesos one must upload a tarball and specifiy the executor URI to be passed in that is to be downloaded on each slave or even each execution depending coarse mode or not.

We want to make Spark able to support launching Executors via a Docker image that utilizes the recent Docker and Mesos integration work. 

With the recent integration Spark can simply specify a Docker image and options that is needed and it should continue to work as-is.


---

* [SPARK-2669](https://issues.apache.org/jira/browse/SPARK-2669) | *Major* | **Hadoop configuration is not localised when submitting job in yarn-cluster mode**

I'd like to propose a fix for a problem when Hadoop configuration is not localized when job is submitted in yarn-cluster mode. Here is a description from github pull request https://github.com/apache/spark/pull/1574

This patch fixes a problem when Spark driver is run in the container
managed by YARN ResourceManager it inherits configuration from a
NodeManager process, which can be different from the Hadoop
configuration present on the client (submitting machine). Problem is
most vivid when fs.defaultFS property differs between these two.

Hadoop MR solves it by serializing client's Hadoop configuration into
job.xml in application staging directory and then making Application
Master to use it. That guarantees that regardless of execution nodes
configurations all application containers use same config identical to
one on the client side.

This patch uses similar approach. YARN ClientBase serializes
configuration and adds it to ClientDistributedCacheManager under
"job.xml" link name. ClientDistributedCacheManager is then utilizes
Hadoop localizer to deliver it to whatever container is started by this
application, including the one running Spark driver.

YARN ClientBase also adds "SPARK\_LOCAL\_HADOOPCONF" env variable to AM
container request which is then used by SparkHadoopUtil.newConfiguration
to trigger new behavior when machine-wide hadoop configuration is merged
with application specific job.xml (exactly how it is done in Hadoop MR).

SparkContext is then follows same approach, adding
SPARK\_LOCAL\_HADOOPCONF env to all spawned containers to make them use
client-side Hadopo configuration.

Also all the references to "new Configuration()" which might be executed
on YARN cluster side are changed to use SparkHadoopUtil.get.conf

Please note that it fixes only core Spark, the part which I am
comfortable to test and verify the result. I didn't descend into
steaming/shark directories, so things might need to be changed there too.


---

* [SPARK-2312](https://issues.apache.org/jira/browse/SPARK-2312) | *Trivial* | **Spark Actors do not handle unknown messages in their receive methods**

Per akka documentation - an actor should provide a pattern match for all messages including \_ otherwise akka.actor.UnhandledMessage will be propagated. 
Noted actors:
MapOutputTrackerMasterActor, ClientActor, Master, Worker...
Should minimally do a 
logWarning(s"Received unexpected actor system event: $\_") so message info is logged in correct actor.


---

* [SPARK-2155](https://issues.apache.org/jira/browse/SPARK-2155) | *Minor* | **Support effectful / non-deterministic key expressions in CASE WHEN statements**

Currently we translate CASE KEY WHEN to CASE WHEN, hence incurring redundant evaluations of the key expression. Relevant discussions here: https://github.com/apache/spark/pull/1055/files#r13784248

If we are very in need of support for effectful key expressions, at least we can resort to the baseline approach of having both CaseWhen and CaseKeyWhen as expressions, which seem to introduce much code duplication (e.g. see https://github.com/concretevitamin/spark/blob/47d406a58d129e5bba68bfadf9dd1faa9054d834/sql/catalyst/src/main/scala/org/apache/spark/sql/catalyst/expressions/predicates.scala#L216 for a sketch implementation).


---

* [SPARK-2087](https://issues.apache.org/jira/browse/SPARK-2087) | *Minor* | **Clean Multi-user semantics for thrift JDBC/ODBC server.**

Configuration and temporary tables should exist per-user.  Cached tables should be shared across users.


---

* [SPARK-2033](https://issues.apache.org/jira/browse/SPARK-2033) | *Major* | **Automatically cleanup checkpoint**

Now we use ContextCleaner asynchronous cleanup RDD, shuffle, and broadcast. But no checkpoint.


---

* [SPARK-2018](https://issues.apache.org/jira/browse/SPARK-2018) | *Major* | **Big-Endian (IBM Power7)  Spark Serialization issue**

We have an application run on Spark on Power7 System .
But we meet an important issue about serialization.
The example HdfsWordCount can meet the problem.
./bin/run-example      org.apache.spark.examples.streaming.HdfsWordCount localdir
We used Power7 (Big-Endian arch) and Redhat  6.4.
Big-Endian  is the main cause since the example ran successfully in another Power-based Little Endian setup.

here is the exception stack and log:

Spark Executor Command: "/opt/ibm/java-ppc64-70//bin/java" "-cp" "/home/test1/spark-1.0.0-bin-hadoop2/lib::/home/test1/src/spark-1.0.0-bin-hadoop2/conf:/home/test1/src/spark-1.0.0-bin-hadoop2/lib/spark-assembly-1.0.0-hadoop2.2.0.jar:/home/test1/src/spark-1.0.0-bin-hadoop2/lib/datanucleus-rdbms-3.2.1.jar:/home/test1/src/spark-1.0.0-bin-hadoop2/lib/datanucleus-api-jdo-3.2.1.jar:/home/test1/src/spark-1.0.0-bin-hadoop2/lib/datanucleus-core-3.2.2.jar:/home/test1/src/hadoop-2.3.0-cdh5.0.0/etc/hadoop/:/home/test1/src/hadoop-2.3.0-cdh5.0.0/etc/hadoop/" "-XX:MaxPermSize=128m"  "-Xdebug" "-Xrunjdwp:transport=dt\_socket,address=99999,server=y,suspend=n" "-Xms512M" "-Xmx512M" "org.apache.spark.executor.CoarseGrainedExecutorBackend" "akka.tcp://spark@9.186.105.141:60253/user/CoarseGrainedScheduler" "2" "p7hvs7br16" "4" "akka.tcp://sparkWorker@p7hvs7br16:59240/user/Worker" "app-20140604023054-0000"
========================================

14/06/04 02:31:20 WARN util.NativeCodeLoader: Unable to load native-hadoop library for your platform... using builtin-java classes where applicable
14/06/04 02:31:21 INFO spark.SecurityManager: Changing view acls to: test1,yifeng
14/06/04 02:31:21 INFO spark.SecurityManager: SecurityManager: authentication disabled; ui acls disabled; users with view permissions: Set(test1, yifeng)
14/06/04 02:31:22 INFO slf4j.Slf4jLogger: Slf4jLogger started
14/06/04 02:31:22 INFO Remoting: Starting remoting
14/06/04 02:31:22 INFO Remoting: Remoting started; listening on addresses :[akka.tcp://sparkExecutor@p7hvs7br16:39658]
14/06/04 02:31:22 INFO Remoting: Remoting now listens on addresses: [akka.tcp://sparkExecutor@p7hvs7br16:39658]
14/06/04 02:31:22 INFO executor.CoarseGrainedExecutorBackend: Connecting to driver: akka.tcp://spark@9.186.105.141:60253/user/CoarseGrainedScheduler
14/06/04 02:31:22 INFO worker.WorkerWatcher: Connecting to worker akka.tcp://sparkWorker@p7hvs7br16:59240/user/Worker
14/06/04 02:31:23 INFO worker.WorkerWatcher: Successfully connected to akka.tcp://sparkWorker@p7hvs7br16:59240/user/Worker
14/06/04 02:31:24 INFO executor.CoarseGrainedExecutorBackend: Successfully registered with driver
14/06/04 02:31:24 INFO spark.SecurityManager: Changing view acls to: test1,yifeng
14/06/04 02:31:24 INFO spark.SecurityManager: SecurityManager: authentication disabled; ui acls disabled; users with view permissions: Set(test1, yifeng)
14/06/04 02:31:24 INFO slf4j.Slf4jLogger: Slf4jLogger started
14/06/04 02:31:24 INFO Remoting: Starting remoting
14/06/04 02:31:24 INFO Remoting: Remoting started; listening on addresses :[akka.tcp://spark@p7hvs7br16:58990]
14/06/04 02:31:24 INFO Remoting: Remoting now listens on addresses: [akka.tcp://spark@p7hvs7br16:58990]
14/06/04 02:31:24 INFO spark.SparkEnv: Connecting to MapOutputTracker: akka.tcp://spark@9.186.105.141:60253/user/MapOutputTracker
14/06/04 02:31:25 INFO spark.SparkEnv: Connecting to BlockManagerMaster: akka.tcp://spark@9.186.105.141:60253/user/BlockManagerMaster
14/06/04 02:31:25 INFO storage.DiskBlockManager: Created local directory at /tmp/spark-local-20140604023125-3f61
14/06/04 02:31:25 INFO storage.MemoryStore: MemoryStore started with capacity 307.2 MB.
14/06/04 02:31:25 INFO network.ConnectionManager: Bound socket to port 39041 with id = ConnectionManagerId(p7hvs7br16,39041)
14/06/04 02:31:25 INFO storage.BlockManagerMaster: Trying to register BlockManager
14/06/04 02:31:25 INFO storage.BlockManagerMaster: Registered BlockManager
14/06/04 02:31:25 INFO spark.HttpFileServer: HTTP File server directory is /tmp/spark-7bce4e43-2833-4666-93af-bd97c327497b
14/06/04 02:31:25 INFO spark.HttpServer: Starting HTTP Server
14/06/04 02:31:25 INFO server.Server: jetty-8.y.z-SNAPSHOT
14/06/04 02:31:26 INFO server.AbstractConnector: Started SocketConnector@0.0.0.0:39958
14/06/04 02:31:26 INFO executor.CoarseGrainedExecutorBackend: Got assigned task 2
14/06/04 02:31:26 INFO executor.Executor: Running task ID 2
14/06/04 02:31:26 ERROR executor.Executor: Exception in task ID 2
java.io.InvalidClassException: scala.reflect.ClassTag$$anon$1; local class incompatible: stream classdesc serialVersionUID = -8102093212602380348, local class serialVersionUID = -4937928798201944954
        at java.io.ObjectStreamClass.initNonProxy(ObjectStreamClass.java:678)
        at java.io.ObjectInputStream.readNonProxyDesc(ObjectInputStream.java:1678)
        at java.io.ObjectInputStream.readClassDesc(ObjectInputStream.java:1573)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1827)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.defaultReadFields(ObjectInputStream.java:2047)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1971)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.defaultReadFields(ObjectInputStream.java:2047)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1971)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.readObject(ObjectInputStream.java:409)
        at scala.collection.immutable.$colon$colon.readObject(List.scala:362)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:76)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:607)
        at java.io.ObjectStreamClass.invokeReadObject(ObjectStreamClass.java:1078)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1949)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.defaultReadFields(ObjectInputStream.java:2047)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1971)

at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.readObject(ObjectInputStream.java:409)
        at scala.collection.immutable.$colon$colon.readObject(List.scala:362)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:76)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:607)
        at java.io.ObjectStreamClass.invokeReadObject(ObjectStreamClass.java:1078)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1949)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.defaultReadFields(ObjectInputStream.java:2047)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1971)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.defaultReadFields(ObjectInputStream.java:2047)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1971)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.readObject(ObjectInputStream.java:409)
        at scala.collection.immutable.$colon$colon.readObject(List.scala:362)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:76)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:607)
        at java.io.ObjectStreamClass.invokeReadObject(ObjectStreamClass.java:1078)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1949)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.defaultReadFields(ObjectInputStream.java:2047)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1971)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.defaultReadFields(ObjectInputStream.java:2047)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1971)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.readObject(ObjectInputStream.java:409)
        at scala.collection.immutable.$colon$colon.readObject(List.scala:362)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:76)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:607)
        at java.io.ObjectStreamClass.invokeReadObject(ObjectStreamClass.java:1078)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1949)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.defaultReadFields(ObjectInputStream.java:2047)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1971)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.defaultReadFields(ObjectInputStream.java:2047)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1971)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.readObject(ObjectInputStream.java:409)
        at scala.collection.immutable.$colon$colon.readObject(List.scala:362)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:76)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:607)

   at java.lang.reflect.Method.invoke(Method.java:607)
        at java.io.ObjectStreamClass.invokeReadObject(ObjectStreamClass.java:1078)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1949)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.defaultReadFields(ObjectInputStream.java:2047)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1971)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.readObject(ObjectInputStream.java:409)
        at org.apache.spark.serializer.JavaDeserializationStream.readObject(JavaSerializer.scala:63)
        at org.apache.spark.scheduler.ResultTask$.deserializeInfo(ResultTask.scala:61)
        at org.apache.spark.scheduler.ResultTask.readExternal(ResultTask.scala:141)
        at java.io.ObjectInputStream.readExternalData(ObjectInputStream.java:1893)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1852)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.readObject(ObjectInputStream.java:409)
        at org.apache.spark.serializer.JavaDeserializationStream.readObject(JavaSerializer.scala:63)
        at org.apache.spark.serializer.JavaSerializerInstance.deserialize(JavaSerializer.scala:85)
        at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:169)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:781)
14/06/04 02:31:26 ERROR executor.CoarseGrainedExecutorBackend: Driver Disassociated [akka.tcp://sparkExecutor@p7hvs7br16:39658] -> [akka.tcp://spark@9.186.105.141:60253] disassociated! Shutting down.


---

* [SPARK-1965](https://issues.apache.org/jira/browse/SPARK-1965) | *Minor* | **Spark UI throws NPE on trying to load the app page for non-existent app**

If you try to load the Spark UI for an application that doesn't exist:

sparkHost:8080/app/?appId=foobar

The UI throws a NPE.  The problem is in ApplicationPage.scala -- Spark proceeds even if the "app" variable is null.  We should handle this more gracefully.


---

* [SPARK-1805](https://issues.apache.org/jira/browse/SPARK-1805) | *Minor* | **Error launching cluster when master and slave machines are of different virtualization types**

In the current EC2 script, the AMI image object is loaded only once. This is OK when the master and slave machines are of the same virtualization type (pv or hvm). But this won't work if, say, the master is pv and the slaves are hvm since the AMI is not compatible across these two kinds of virtualization.


---

* [SPARK-1706](https://issues.apache.org/jira/browse/SPARK-1706) | *Major* | **Allow multiple executors per worker in Standalone mode**

Right now if people want to launch multiple executors on each machine they need to start multiple standalone workers. This is not too difficult, but it means you have extra JVM's sitting around.

We should just allow users to set a number of cores they want per-executor in standalone mode and then allow packing multiple executors on each node. This would make standalone mode more consistent with YARN in the way you request resources.

It's not too big of a change as far as I can see. You'd need to:

1. Introduce a configuration for how many cores you want per executor.
2. Change the scheduling logic in Master.scala to take this into account.
3. Change CoarseGrainedSchedulerBackend to not assume a 1<->1 correspondence between hosts and executors.

And maybe modify a few other places.


---

* [SPARK-1684](https://issues.apache.org/jira/browse/SPARK-1684) | *Minor* | **Merge script should standardize SPARK-XXX prefix**

If users write "[SPARK-XXX] Issue" or "SPARK-XXX. Issue" or "SPARK XXX: Issue" we should convert it to "SPARK-XXX: Issue"


---

* [SPARK-1442](https://issues.apache.org/jira/browse/SPARK-1442) | *Blocker* | **Add Window function support**

similiar to Hive, add window function support for catalyst.
https://issues.apache.org/jira/browse/HIVE-4197
https://issues.apache.org/jira/browse/HIVE-896


---

* [SPARK-1406](https://issues.apache.org/jira/browse/SPARK-1406) | *Major* | **PMML model evaluation support via MLib**

It would be useful if spark would provide support the evaluation of PMML models (http://www.dmg.org/v4-2/GeneralStructure.html).

This would allow to use analytical models that were created with a statistical modeling tool like R, SAS, SPSS, etc. with Spark (MLib) which would perform the actual model evaluation for a given input tuple. The PMML model would then just contain the "parameterization" of an analytical model.

Other projects like JPMML-Evaluator do a similar thing.
https://github.com/jpmml/jpmml/tree/master/pmml-evaluator


---

* [SPARK-984](https://issues.apache.org/jira/browse/SPARK-984) | *Minor* | **SPARK\_TOOLS\_JAR not set if multiple tools jars exists**

If you have multiple tools assemblies (e.g., if you assembled on 0.8.1 and 0.9.0 before, for instance), then this error is thrown in spark-class:
{noformat}./spark-class: line 115: [: /home/aaron/spark/tools/target/scala-2.9.3/spark-tools-assembly-0.8.1-incubating-SNAPSHOT.jar: binary operator expected{noformat}

This is because of a flaw in the bash script:
{noformat}if [ -e "$TOOLS\_DIR"/target/scala-$SCALA\_VERSION/*assembly*[0-9Tg].jar ]; then{noformat}
which does not parse correctly if the path resolves to multiple files.

The error is non-fatal, but a nuisance and presumably breaks whatever SPARK\_TOOLS\_JAR is used for.

Currently, we error if multiple Spark assemblies are found, so we could do something similar for tools assemblies. The only issue is that means that the user will always have to go through both errors (clean the assembly/ jars then tools/ jar) when it appears that the tools/ jar is not actually important for normal operation. The second possibility is to infer the correct tools jar using the single available assembly jar, but this is slightly complicated by the code path if $FWDIR/RELEASE exists.

Since I'm not 100% on what SPARK\_TOOLS\_JAR is even for, I'm assigning this to Josh who wrote the code initially.


---

* [SPARK-911](https://issues.apache.org/jira/browse/SPARK-911) | *Major* | **Support map pruning on sorted (K, V) RDD's**

If someone has sorted a (K, V) rdd, we should offer them a way to filter a range of the partitions that employs map pruning. This would be simple using a small range index within the rdd itself. A good example is I sort my dataset by time and then I want to serve queries that are restricted to a certain time range.



