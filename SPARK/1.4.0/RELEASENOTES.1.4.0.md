
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
# Hadoop  1.4.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


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

* [SPARK-6754](https://issues.apache.org/jira/browse/SPARK-6754) | *Minor* | **TaskContextHelper is not necessary**

The TaskContextHelper was originally necessary because TaskContext was written in Java, which does not have a way to specify that classes are package-private, so TaskContextHelper existed to work around this.  Now that TaskContext has been re-written in Scala, this class is no longer necessary.


---

* [SPARK-6753](https://issues.apache.org/jira/browse/SPARK-6753) | *Minor* | **Unit test for SPARK-3426 (in ShuffleSuite) doesn't correctly clone the SparkConf**

As a result, that test always uses the default shuffle settings, rather than using the shuffle manager / other settings set by tests that extend ShuffleSuite.


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

* [SPARK-6733](https://issues.apache.org/jira/browse/SPARK-6733) | *Trivial* | **Suppression of usage of Scala existential code should be done**

The inclusion of this statement in the file 

{code:scala}
import scala.language.existentials
{code}

should have suppressed all warnings regarding the use of scala existential code.


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

* [SPARK-6667](https://issues.apache.org/jira/browse/SPARK-6667) | *Blocker* | **hang while collect in PySpark**

PySpark tests hang while collecting:


---

* [SPARK-6663](https://issues.apache.org/jira/browse/SPARK-6663) | *Major* | **Use Literal.create instead of constructor**

In order to do type checking and conversion, we should use Literal.create() instead of constructor to create Literal with DataType.


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

* [SPARK-6636](https://issues.apache.org/jira/browse/SPARK-6636) | *Minor* | **Use public DNS hostname everywhere in spark\_ec2.py**

The spark\_ec2.py script uses public\_dns\_name everywhere in the script except for testing ssh availability, which is done using the public ip address of the instances. This breaks the script for users who are deploying the cluster with a private-network-only security group. The fix is to use public\_dns\_name in the remaining place.

I am submitting a pull-request alongside this bug report.


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

* [SPARK-6608](https://issues.apache.org/jira/browse/SPARK-6608) | *Minor* | **Make DataFrame.rdd a lazy val**

Before 1.3.0, {{SchemaRDD.id}} works as a unique identifier of each {{SchemaRDD}}. In 1.3.0, unlike {{SchemaRDD}}, {{DataFrame}} is no longer an RDD, and {{DataFrame.rdd}} is actually a function which always return a new RDD instance. Making {{DataFrame.rdd}} a {{lazy val}} should bring the unique identifier back.


---

* [SPARK-6607](https://issues.apache.org/jira/browse/SPARK-6607) | *Major* | **Aggregation attribute name including special chars '(' and ')' should be replaced before generating Parquet schema**

'(' and ')' are special characters used in Parquet schema for type annotation. When we run an aggregation query, we will obtain attribute name such as "MAX(a)".

If we directly store the generated DataFrame as Parquet file, it causes failure when reading and parsing the stored schema string.

Several methods can be adopted to solve this. This pr uses a simplest one to just replace attribute names before generating Parquet schema based on these attributes.

Another possible method might be modifying all aggregation expression names from "func(column)" to "func[column]".


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

* [SPARK-6564](https://issues.apache.org/jira/browse/SPARK-6564) | *Blocker* | **SQLContext.emptyDataFrame should contain 0 rows, not 1 row**

Right now emptyDataFrame actually contains 1 row.


---

* [SPARK-6563](https://issues.apache.org/jira/browse/SPARK-6563) | *Major* | **DataFrame.fillna**

Support replacing all null value for a column (or all columns) with a fixed value.

Similar to Pandas' fillna.

http://pandas.pydata.org/pandas-docs/dev/generated/pandas.DataFrame.fillna.html


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

* [SPARK-6512](https://issues.apache.org/jira/browse/SPARK-6512) | *Minor* | **Add contains to OpenHashMap**

Add `contains` to test whether a key exists in an OpenHashMap.


---

* [SPARK-6510](https://issues.apache.org/jira/browse/SPARK-6510) | *Major* | **Add Graph#minus method to act as Set#difference**

Right now GraphX does not have a Set#difference method to operate on VertexIds. We do however have a {{diff}} method although that works on values. Given the optimizations of tombstoning already present this method can be implemented in a very efficient manner.


---

* [SPARK-6506](https://issues.apache.org/jira/browse/SPARK-6506) | *Major* | **python support yarn cluster mode requires SPARK\_HOME to be set**

We added support for python running in yarn cluster mode in https://issues.apache.org/jira/browse/SPARK-5173, but it requires that SPARK\_HOME be set in the environment variables for application master and executor.  It doesn't have to be set to anything real but it fails if its not set.  See the command at the end of: https://github.com/apache/spark/pull/3976


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

* [SPARK-6437](https://issues.apache.org/jira/browse/SPARK-6437) | *Critical* | **SQL ExternalSort should use CompletionIterator to clean up temp files**

Right now, temp files used by SQL ExternalSort are not cleaned up.


---

* [SPARK-6433](https://issues.apache.org/jira/browse/SPARK-6433) | *Minor* | **hive tests to import spark-sql test JAR for QueryTest access**

The hive module has its own clone of {{org.apache.spark.sql.QueryPlan}} and {{org.apache.spark.sql.catalyst.plans.PlanTest}} which are copied from the spark-sql module because it's "hard to have maven allow one subproject depend on another subprojects test code"

It's actually relatively straightforward
# tell maven to build & publish the test JARs
# import them in your other sub projects

There is one consequence: the JARs will also end being published to mvn central. This is not really a bad thing; it does help downstream projects pick up the JARs too. It does become an issue if a test run depends on a custom file under {{src/test/resources}} containing things like EC2 authentication keys, or even just log4.properties files which can interfere with each other. These need to be excluded -the simplest way is to exclude all of the resources from test JARs.


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

* [SPARK-6361](https://issues.apache.org/jira/browse/SPARK-6361) | *Major* | **Support adding a column with metadata in DataFrames**

There is no easy way to add a column with metadata in DataFrames. This is required by ML transformers to generate ML attributes.


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

* [SPARK-6004](https://issues.apache.org/jira/browse/SPARK-6004) | *Minor* | **Pick the best model when training GradientBoostedTrees with validation**

Since the validation error does not change monotonically, in practice, it should be proper to pick the best model when training GradientBoostedTrees with validation instead of stopping it early.


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

* [SPARK-5909](https://issues.apache.org/jira/browse/SPARK-5909) | *Major* | **Add a clearCache command to Spark SQL's cache manager**

This command will clear all cached data from the in-memory cache, which will be useful when users want to quickly clear the cache or as a workaround of cases like SPARK-5881.


---

* [SPARK-5908](https://issues.apache.org/jira/browse/SPARK-5908) | *Major* | **Hive udtf with single alias should be resolved correctly**

ResolveUdtfsAlias in hiveUdfs only considers the HiveGenericUdtf with multiple alias. When only single alias is used with HiveGenericUdtf, the alias is not working.


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

* [SPARK-5815](https://issues.apache.org/jira/browse/SPARK-5815) | *Major* | **Deprecate SVDPlusPlus APIs that expose DoubleMatrix from JBLAS**

It is generally bad to expose types defined in a 3rd-party package in Spark public APIs. We should deprecate those methods in SVDPlusPlus and replace them in the next release.


---

* [SPARK-5814](https://issues.apache.org/jira/browse/SPARK-5814) | *Major* | **Remove JBLAS from runtime dependencies**

We are using mixed breeze/netlib-java and jblas code in MLlib. They take different approaches to utilize native libraries and we should keep only one of them. netlib-java has a clear separation between Java implementation and native JNI libraries, while JBLAS packs statically linked binaries that causes license issues (SPARK-5669). So we want to remove JBLAS from Spark runtime.

One issue with this approach is that we have JBLAS' DoubleMatrix exposed (by mistake) in SVDPlusPlus of GraphX. We should deprecate it and replace `DoubleMatrix` by `Array[Double]`.


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

* [SPARK-5436](https://issues.apache.org/jira/browse/SPARK-5436) | *Major* | **Validate GradientBoostedTrees during training**

For Gradient Boosting, it would be valuable to compute test error on a separate validation set during training.  That way, training could stop early based on the test error (or some other metric specified by the user).


---

* [SPARK-5416](https://issues.apache.org/jira/browse/SPARK-5416) | *Minor* | **Initialize Executor.threadPool before ExecutorSource**

I recently saw some NPEs from [{{ExecutorSource:44}}|https://github.com/apache/spark/blob/0497ea51ac345f8057d222a18dbbf8eae78f5b92/core/src/main/scala/org/apache/spark/executor/ExecutorSource.scala#L44] in the first couple seconds of my executors' being initialized.

I think that {{ExecutorSource}} was trying to report these metrics before its threadpool was initialized; there are a few LoC between the source being registered ([Executor.scala:82|https://github.com/apache/spark/blob/0497ea51ac345f8057d222a18dbbf8eae78f5b92/core/src/main/scala/org/apache/spark/executor/Executor.scala#L82]) and the threadpool being initialized ([Executor.scala:106|https://github.com/apache/spark/blob/0497ea51ac345f8057d222a18dbbf8eae78f5b92/core/src/main/scala/org/apache/spark/executor/Executor.scala#L106]).

We should initialize the threapool before the ExecutorSource is registered.


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

* [SPARK-4985](https://issues.apache.org/jira/browse/SPARK-4985) | *Major* | **Parquet support for date type**

Parquet serde support for DATE type


---

* [SPARK-4949](https://issues.apache.org/jira/browse/SPARK-4949) | *Minor* | **shutdownCallback in SparkDeploySchedulerBackend should be enclosed by synchronized block.**

A variable `shutdownCallback` in SparkDeploySchedulerBackend can be accessed from multiple threads so it should be enclosed by synchronized block.


---

* [SPARK-4924](https://issues.apache.org/jira/browse/SPARK-4924) | *Major* | **Factor out code to launch Spark applications into a separate library**

One of the questions we run into rather commonly is "how to start a Spark application from my Java/Scala program?". There currently isn't a good answer to that:

- Instantiating SparkContext has limitations (e.g., you can only have one active context at the moment, plus you lose the ability to submit apps in cluster mode)
- Calling SparkSubmit directly is doable but you lose a lot of the logic handled by the shell scripts
- Calling the shell script directly is doable,  but sort of ugly from an API point of view.

I think it would be nice to have a small library that handles that for users. On top of that, this library could be used by Spark itself to replace a lot of the code in the current shell scripts, which have a lot of duplication.


---

* [SPARK-4894](https://issues.apache.org/jira/browse/SPARK-4894) | *Major* | **Add Bernoulli-variant of Naive Bayes**

MLlib only supports the multinomial-variant of Naive Bayes.  The Bernoulli version of Naive Bayes is more useful for situations where the features are binary values.


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

* [SPARK-4777](https://issues.apache.org/jira/browse/SPARK-4777) | *Major* | **Some block memory after unrollSafely not count into used memory(memoryStore.entrys or unrollMemory)**

Some memory not count into memory used by memoryStore or unrollMemory.

Thread A after unrollsafely memory, it will release 40MB unrollMemory(40MB will used by other threads). then ThreadA wait get accountingLock to tryToPut blockA(30MB). before Thread A get accountingLock, blockA memory size is not counting into unrollMemory or memoryStore.currentMemory.
  
 IIUC, freeMemory should minus that block memory


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

* [SPARK-4123](https://issues.apache.org/jira/browse/SPARK-4123) | *Critical* | **Show dependency changes in pull requests**

We should inspect the classpath of Spark's assembly jar for every pull request. This only takes a few seconds in Maven and it will help weed out dependency changes from the master branch. Ideally we'd post any dependency changes in the pull request message.

{code}
$ mvn -Phive -Phadoop-2.4 dependency:build-classpath -pl assembly  | grep -v INFO | tr : "\n" | awk -F/ '{print $NF}' | sort > my-classpath
$ git checkout apache/master
$ mvn -Phive -Phadoop-2.4 dependency:build-classpath -pl assembly  | grep -v INFO | tr : "\n" | awk -F/ '{print $NF}' | sort > master-classpath
$ diff my-classpath master-classpath
< chill-java-0.3.6.jar
< chill\_2.10-0.3.6.jar
---
> chill-java-0.5.0.jar
> chill\_2.10-0.5.0.jar
{code}


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

* [SPARK-3266](https://issues.apache.org/jira/browse/SPARK-3266) | *Major* | **JavaDoubleRDD doesn't contain max()**

While I can compile my code, I see:

Caused by: java.lang.NoSuchMethodError: org.apache.spark.api.java.JavaDoubleRDD.max(Ljava/util/Comparator;)Ljava/lang/Double;

When I try to execute my Spark code. Stepping into the JavaDoubleRDD class, I don't notice max()
although it is clearly listed in the documentation.


---

* [SPARK-2087](https://issues.apache.org/jira/browse/SPARK-2087) | *Minor* | **Clean Multi-user semantics for thrift JDBC/ODBC server.**

Configuration and temporary tables should exist per-user.  Cached tables should be shared across users.


---

* [SPARK-1965](https://issues.apache.org/jira/browse/SPARK-1965) | *Minor* | **Spark UI throws NPE on trying to load the app page for non-existent app**

If you try to load the Spark UI for an application that doesn't exist:

sparkHost:8080/app/?appId=foobar

The UI throws a NPE.  The problem is in ApplicationPage.scala -- Spark proceeds even if the "app" variable is null.  We should handle this more gracefully.


---

* [SPARK-1805](https://issues.apache.org/jira/browse/SPARK-1805) | *Minor* | **Error launching cluster when master and slave machines are of different virtualization types**

In the current EC2 script, the AMI image object is loaded only once. This is OK when the master and slave machines are of the same virtualization type (pv or hvm). But this won't work if, say, the master is pv and the slaves are hvm since the AMI is not compatible across these two kinds of virtualization.


---

* [SPARK-911](https://issues.apache.org/jira/browse/SPARK-911) | *Major* | **Support map pruning on sorted (K, V) RDD's**

If someone has sorted a (K, V) rdd, we should offer them a way to filter a range of the partitions that employs map pruning. This would be simple using a small range index within the rdd itself. A good example is I sort my dataset by time and then I want to serve queries that are restricted to a certain time range.



