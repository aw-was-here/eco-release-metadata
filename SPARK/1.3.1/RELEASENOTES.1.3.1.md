
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
# Apache Spark  1.3.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [SPARK-6937](https://issues.apache.org/jira/browse/SPARK-6937) | *Trivial* | **Tiny bug in PowerIterationClusteringExample in which radius not accepted from command line**

Tiny bug in PowerIterationClusteringExample in which radius not accepted from command line


---

* [SPARK-6863](https://issues.apache.org/jira/browse/SPARK-6863) | *Trivial* | **Formatted list broken on Hive compatibility section of SQL programming guide**

Formatted list broken on Hive compatibility section of SQL programming guide. It does not appear as a list.


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
(0) age \< 4,0
(1) age \>= 4  AND age \< 8,1
(2) age \>= 8  AND age \< 12,2
(3) age \>= 12 AND age \< 16,3
(4) age \>= 16 AND age \< 20,4
(5) age \>= 20 AND age \< 24,5
(6) age \>= 24 AND age \< 28,6
(7) age \>= 28 AND age \< 32,7
(8) age \>= 32 AND age \< 36,8
(9) age \>= 36,9
{code}

The last condition ignores the upper bound and the other ones may result in repeated rows being read.

Using the JdbcRDD (and converting it to a DataFrame) I would have something like this:
{code}
val jdbcRdd = new JdbcRDD(sc, () =\> DriverManager.getConnection(jdbcUrl),
      "SELECT \* FROM Person WHERE age \>= ? and age \<= ?", 0, 40, 10,
      rs =\> (rs.getInt(1), rs.getString(2), rs.getInt(3)))
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
(0) age \>= 0  AND age \<= 3
(1) age \>= 4  AND age \<= 7
(2) age \>= 8  AND age \<= 11
(3) age \>= 12 AND age \<= 15
(4) age \>= 16 AND age \<= 19
(5) age \>= 20 AND age \<= 23
(6) age \>= 24 AND age \<= 27
(7) age \>= 28 AND age \<= 31
(8) age \>= 32 AND age \<= 35
(9) age \>= 36 AND age \<= 40
{code}

This is the behaviour I was expecting from the Spark SQL version. Is the Spark SQL version buggy or is this some weird expected behaviour?


---

* [SPARK-6737](https://issues.apache.org/jira/browse/SPARK-6737) | *Critical* | **OutputCommitCoordinator.authorizedCommittersByStage map out of memory**

I am using spark streaming(1.3.1)  as a long time running service and out of memory after running for 7 days. 

I found that the field authorizedCommittersByStage in OutputCommitCoordinator class cause the OOM. 
authorizedCommittersByStage is a map, key is StageId, value is Map[PartitionId, TaskAttemptId]. The OutputCommitCoordinator class has a method stageEnd which will remove stageId from authorizedCommittersByStage. But the method stageEnd is never called by DAGSchedule. And it cause the authorizedCommittersByStage's stage info never be cleaned, which cause OOM.

It happens in my spark streaming program(1.3.1), I am not sure if it will appear in other spark components and other spark version.


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

* [SPARK-6660](https://issues.apache.org/jira/browse/SPARK-6660) | *Critical* | **MLLibPythonAPI.pythonToJava doesn't recognize object arrays**

{code}
points = MLUtils.loadLabeledPoints(sc, "...")
\_to\_java\_object\_rdd(points).count()
{code}

throws exception

{code}
---------------------------------------------------------------------------
Py4JJavaError                             Traceback (most recent call last)
\<ipython-input-22-5b481e99a111\> in \<module\>()
----\> 1 jrdd.count()

/home/ubuntu/databricks/spark/python/lib/py4j-0.8.2.1-src.zip/py4j/java\_gateway.py in \_\_call\_\_(self, \*args)
    536         answer = self.gateway\_client.send\_command(command)
    537         return\_value = get\_return\_value(answer, self.gateway\_client,
--\> 538                 self.target\_id, self.name)
    539 
    540         for temp\_arg in temp\_args:

/home/ubuntu/databricks/spark/python/lib/py4j-0.8.2.1-src.zip/py4j/protocol.py in get\_return\_value(answer, gateway\_client, target\_id, name)
    298                 raise Py4JJavaError(
    299                     'An error occurred while calling {0}{1}{2}.\n'.
--\> 300                     format(target\_id, '.', name), value)
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

* [SPARK-6642](https://issues.apache.org/jira/browse/SPARK-6642) | *Major* | **Change the lambda weight to number of explicit ratings in implicit ALS**

Until SPARK-6637 is resolved, we should switch back to the 1.2 lambda weighting strategy to be consistent.


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

* [SPARK-6614](https://issues.apache.org/jira/browse/SPARK-6614) | *Major* | **OutputCommitCoordinator should clear authorized committers only after authorized committer fails, not after any failure**

In OutputCommitCoordinator, there is some logic to clear the authorized committer's lock on committing in case it fails.  However, it looks like the current code also clears this lock if \_other\_ tasks fail, which is an obvious bug: https://github.com/apache/spark/blob/df3550084c9975f999ed370dd9f7c495181a68ba/core/src/main/scala/org/apache/spark/scheduler/OutputCommitCoordinator.scala#L118.  In theory, it's possible that this could allow a new committer to start, run to completion, and commit output before the authorized committer finished, but it's unlikely that this race occurs often in practice due to the complex combination of failure and timing conditions that would be required to expose it.  Still, we should fix this issue.

This was discovered by [~adav] while reading the OutputCommitCoordinator code.


---

* [SPARK-6603](https://issues.apache.org/jira/browse/SPARK-6603) | *Major* | **SQLContext.registerFunction -\> SQLContext.udf.register**

We didn't change the Python implementation to use that. Maybe the best strategy is to deprecate SQLContext.registerFunction, and just add SQLContext.udf.register.


---

* [SPARK-6592](https://issues.apache.org/jira/browse/SPARK-6592) | *Critical* | **API of Row trait should be presented in Scala doc**

Currently, the API of Row class is not presented in Scaladoc, though we have many chances to use it 

the reason is that we ignore all files under catalyst directly in SparkBuild.scala when generating Scaladoc, (https://github.com/apache/spark/blob/f75f633b21faaf911f04aeff847f25749b1ecd89/project/SparkBuild.scala#L369)

What's the best approach to fix this? [~rxin]


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
line 22, in \<module\>
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
 \|-- age: integer (nullable = true)
 \|-- name: string (nullable = true)

root
 \|-- person\_name: string (nullable = false)
 \|-- person\_age: integer (nullable = false)

root
 \|-- age: integer (nullable = true)
 \|-- name: string (nullable = true)

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

\>\>\> from pyspark.sql import StructField
Traceback (most recent call last):
  File "\<stdin\>", line 1, in \<module\>
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
\<ipython-input-18-af6612bed9d0\> in \<module\>()
     19 sameModel = MatrixFactorizationModel.load(sc, path)
     20 print '(2, 2)', sameModel.predict(2,2)
---\> 21 sameModel.predictAll(testset).collect()
     22 

/home/ubuntu/spark/python/pyspark/mllib/recommendation.pyc in predictAll(self, user\_product)
    104         assert len(first) == 2, "user\_product should be RDD of (user, product)"
    105         user\_product = user\_product.map(lambda (u, p): (int(u), int(p)))
--\> 106         return self.call("predict", user\_product)
    107 
    108     def userFeatures(self):

/home/ubuntu/spark/python/pyspark/mllib/common.pyc in call(self, name, \*a)
    134     def call(self, name, \*a):
    135         """Call method of java\_model"""
--\> 136         return callJavaFunc(self.\_sc, getattr(self.\_java\_model, name), \*a)
    137 
    138 

/home/ubuntu/spark/python/pyspark/mllib/common.pyc in callJavaFunc(sc, func, \*args)
    111     """ Call Java Function """
    112     args = [\_py2java(sc, a) for a in args]
--\> 113     return \_java2py(sc, func(\*args))
    114 
    115 

/home/ubuntu/spark/python/lib/py4j-0.8.2.1-src.zip/py4j/java\_gateway.py in \_\_call\_\_(self, \*args)
    536         answer = self.gateway\_client.send\_command(command)
    537         return\_value = get\_return\_value(answer, self.gateway\_client,
--\> 538                 self.target\_id, self.name)
    539 
    540         for temp\_arg in temp\_args:

/home/ubuntu/spark/python/lib/py4j-0.8.2.1-src.zip/py4j/protocol.py in get\_return\_value(answer, gateway\_client, target\_id, name)
    302                 raise Py4JError(
    303                     'An error occurred while calling {0}{1}{2}. Trace:\n{3}\n'.
--\> 304                     format(target\_id, '.', name, value))
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

* [SPARK-6564](https://issues.apache.org/jira/browse/SPARK-6564) | *Blocker* | **SQLContext.emptyDataFrame should contain 0 rows, not 1 row**

Right now emptyDataFrame actually contains 1 row.


---

* [SPARK-6563](https://issues.apache.org/jira/browse/SPARK-6563) | *Major* | **DataFrame.fillna**

Support replacing all null value for a column (or all columns) with a fixed value.

Similar to Pandas' fillna.

http://pandas.pydata.org/pandas-docs/dev/generated/pandas.DataFrame.fillna.html


---

* [SPARK-6558](https://issues.apache.org/jira/browse/SPARK-6558) | *Critical* | **Utils.getCurrentUserName returns the full principal name instead of login name**

Utils.getCurrentUserName returns UserGroupInformation.getCurrentUser().getUserName() when SPARK\_USER isn't set.  It should return UserGroupInformation.getCurrentUser().getShortUserName()

getUserName() returns the users full principal name (ie user1@CORP.COM). getShortUserName() returns just the users login name (user1).

This just happens to work on YARN because the Client code sets:
    env("SPARK\_USER") = UserGroupInformation.getCurrentUser().getShortUserName()


---

* [SPARK-6555](https://issues.apache.org/jira/browse/SPARK-6555) | *Major* | **Override equals and hashCode in MetastoreRelation**

This is a follow-up of SPARK-6450.

As explained in [this comment\|https://issues.apache.org/jira/browse/SPARK-6450?focusedCommentId=14379499&page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel#comment-14379499] of SPARK-6450, we resorted to a more surgical fix due to the upcoming 1.3.1 release. But overriding {{equals}} and {{hashCode}} is the proper fix to that problem.


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
 \|-- probeTypeId: integer (nullable = true)
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
using local[\*] for master
06:05:55,675 \|-INFO in ch.qos.logback.classic.joran.action.ConfigurationAction - debug attribute not set
06:05:55,683 \|-INFO in ch.qos.logback.core.joran.action.AppenderAction - About to instantiate appender of type [ch.qos.logback.core.ConsoleAppender]
06:05:55,694 \|-INFO in ch.qos.logback.core.joran.action.AppenderAction - Naming appender as [STDOUT]
06:05:55,721 \|-INFO in ch.qos.logback.core.joran.action.NestedComplexPropertyIA - Assuming default type [ch.qos.logback.classic.encoder.PatternLayoutEncoder] for [encoder] property
06:05:55,768 \|-INFO in ch.qos.logback.classic.joran.action.RootLoggerAction - Setting level of ROOT logger to INFO
06:05:55,768 \|-INFO in ch.qos.logback.core.joran.action.AppenderRefAction - Attaching appender named [STDOUT] to Logger[ROOT]
06:05:55,769 \|-INFO in ch.qos.logback.classic.joran.action.ConfigurationAction - End of configuration.
06:05:55,770 \|-INFO in ch.qos.logback.classic.joran.JoranConfigurator@6aaceffd - Registering current configuration as safe fallback point

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
INFO  org.apache.spark.executor.Executor Starting executor ID \<driver\> on host localhost
INFO  org.apache.spark.util.AkkaUtils Connecting to HeartbeatReceiver: akka.tcp://sparkDriver@192.168.1.134:62493/user/HeartbeatReceiver
INFO  o.a.s.n.n.NettyBlockTransferService Server created on 62495
INFO  o.a.spark.storage.BlockManagerMaster Trying to register BlockManager
INFO  o.a.s.s.BlockManagerMasterActor Registering block manager localhost:62495 with 1966.1 MB RAM, BlockManagerId(\<driver\>, localhost, 62495)
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
 \|-- clientMarketId: integer (nullable = true)
 \|-- clientCountryId: integer (nullable = true)
 \|-- clientRegionId: integer (nullable = true)
 \|-- clientStateId: integer (nullable = true)
 \|-- clientAsnId: integer (nullable = true)
 \|-- reporterZoneId: integer (nullable = true)
 \|-- reporterCustomerId: integer (nullable = true)
 \|-- responseCode: integer (nullable = true)
 \|-- measurementValue: integer (nullable = true)
 \|-- year: integer (nullable = true)
 \|-- month: integer (nullable = true)
 \|-- day: integer (nullable = true)
 \|-- providerOwnerZoneId: integer (nullable = true)
 \|-- providerOwnerCustomerId: integer (nullable = true)
 \|-- providerId: integer (nullable = true)
 \|-- probeTypeId: integer (nullable = true)

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
	at org.apache.spark.rdd.NewHadoopRDD$$anon$1.\<init\>(NewHadoopRDD.scala:133) ~[spark-core\_2.10-1.3.0.jar:1.3.0]
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
	at org.apache.spark.rdd.NewHadoopRDD$$anon$1.\<init\>(NewHadoopRDD.scala:133)
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
	at org.apache.spark.rdd.NewHadoopRDD$$anon$1.\<init\>(NewHadoopRDD.scala:133)
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

* [SPARK-6550](https://issues.apache.org/jira/browse/SPARK-6550) | *Major* | **Add PreAnalyzer to keep logical plan consistent across DataFrame**

h2. Problems

In some cases, the expressions in a logical plan will be modified to new ones during analysis, e.g. the handling for self-join cases. If some expressions are resolved based on the analyzed plan, they are referring to changed expression ids, not original ids.

But the transformation of DataFrame will use logical plan to construct new DataFrame, e.g. {{groupBy}} and aggregation. So in such cases, the expressions in these DataFrames will be inconsistent.

The problems are specified as following:

# Expression ids in logical plan are possibly inconsistent if expression ids are changed during analysis and some expressions are resolved after that

When we try to run the following codes:
{code}
val df = Seq(1,2,3).map(i =\> (i, i.toString)).toDF("int", "str")
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

* [SPARK-6544](https://issues.apache.org/jira/browse/SPARK-6544) | *Major* | **Problem with Avro and Kryo Serialization**

We're running in to the following bug with Avro 1.7.6 and the Kryo serializer causing jobs to fail

https://issues.apache.org/jira/browse/AVRO-1476?focusedCommentId=13999249&page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel#comment-13999249

PR here
https://github.com/apache/spark/pull/5193


---

* [SPARK-6538](https://issues.apache.org/jira/browse/SPARK-6538) | *Major* | **Add missing nullable Metastore fields when merging a Parquet schema**

When Spark SQL infers a schema for a DataFrame, it will take the union of all field types present in the structured source data (e.g. an RDD of JSON data). When the source data for a row doesn't define a particular field on the DataFrame's schema, a null value will simply be assumed for this field. This workflow makes it very easy to construct tables and query over a set of structured data with a nonuniform schema. However, this behavior is not consistent in some cases when dealing with Parquet files and an external table managed by an external Hive metastore.

In our particular usecase, we use Spark Streaming to parse and transform our input data and then apply a window function to save an arbitrary-sized batch of data as a Parquet file, which itself will be added as a partition to an external Hive table via an "ALTER TABLE... ADD PARTITION..." statement. Since our input data is nonuniform, it is expected that not every partition batch will contain every field present in the table's schema obtained from the Hive metastore. As such, we expect that the schema of some of our Parquet files may not contain the same set fields present in the full metastore schema.

In such cases, it seems natural that Spark SQL would simply assume null values for any missing fields in the partition's Parquet file, assuming these fields are specified as nullable by the metastore schema. This is not the case in the current implementation of ParquetRelation2. The mergeMetastoreParquetSchema() method used to reconcile differences between a Parquet file's schema and a schema retrieved from the Hive metastore will raise an exception if the Parquet file doesn't match the same set of fields specified by the metastore.

I propose altering this implementation in order to allow for any missing metastore fields marked as nullable to be merged in to the Parquet file's schema before continuing with the checks present in mergeMetastoreParquetSchema().

Classifying this as a bug as it exposes inconsistent behavior, IMHO. If you feel this should be an improvement or new feature instead, please feel free to reclassify this issue.


---

* [SPARK-6536](https://issues.apache.org/jira/browse/SPARK-6536) | *Major* | **Add IN to python Column**

In scala you can check for membership in a set using the DSL function {{in}}

{code}
df("column").in(lit(1), lit(2))
{code}

It would be nice to be able to do something similar in python (possibly without the lits (which we might revisit for scala as well) /cc [~rxin]


---

* [SPARK-6504](https://issues.apache.org/jira/browse/SPARK-6504) | *Major* | **Cannot read Parquet files generated from different versions at once**

When trying to read Parquet files generated by Spark 1.1.1 and 1.2.1 at the same time via `sqlContext.parquetFile("fileFrom1.1.parqut,fileFrom1.2.parquet")` an exception occurs:

could not merge metadata: key org.apache.spark.sql.parquet.row.metadata has conflicting values: [{"type":"struct","fields":[{"name":"date","type":"string","nullable":true,"metadata":{}},{"name":"account","type":"string","nullable":true,"metadata":{}},{"name":"impressions","type":"long","nullable":false,"metadata":{}},{"name":"cost","type":"double","nullable":false,"metadata":{}},{"name":"clicks","type":"long","nullable":false,"metadata":{}},{"name":"conversions","type":"long","nullable":false,"metadata":{}},{"name":"orderValue","type":"double","nullable":false,"metadata":{}}]}, StructType(List(StructField(date,StringType,true), StructField(account,StringType,true), StructField(impressions,LongType,false), StructField(cost,DoubleType,false), StructField(clicks,LongType,false), StructField(conversions,LongType,false), StructField(orderValue,DoubleType,false)))]

The Schema is exactly equal.


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

* [SPARK-6491](https://issues.apache.org/jira/browse/SPARK-6491) | *Major* | **Spark will put the current working dir to the CLASSPATH**

When running "bin/computer-classpath.sh", the output will be:

:/spark/conf:/spark/assembly/target/scala-2.10/spark-assembly-1.3.0-hadoop2.5.0-cdh5.2.0.jar:/spark/lib\_managed/jars/datanucleus-rdbms-3.2.9.jar:/spark/lib\_managed/jars/datanucleus-api-jdo-3.2.6.jar:/spark/lib\_managed/jars/datanucleus-core-3.2.10.jar

Java will add the current working dir to the CLASSPATH, if the first ":" exists, which is not expected by spark users.

For example, if I call spark-shell in the folder /root. And there exists a "core-site.xml" under /root/. Spark will use this file as HADOOP CONF file, even if I have already set HADOOP\_CONF\_DIR=/etc/hadoop/conf.


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

* [SPARK-6471](https://issues.apache.org/jira/browse/SPARK-6471) | *Blocker* | **Metastore schema should only be a subset of parquet schema to support dropping of columns using replace columns**

Currently in the parquet relation 2 implementation, error is thrown in case merged schema is not exactly the same as metastore schema. 
But to support cases like deletion of column using replace column command, we can relax the restriction so that even if metastore schema is a subset of merged parquet schema, the query will work.


---

* [SPARK-6469](https://issues.apache.org/jira/browse/SPARK-6469) | *Minor* | **Improving documentation on YARN local directories usage**

According to the [Spark YARN doc page\|http://spark.apache.org/docs/latest/running-on-yarn.html#important-notes], Spark executors will use the local directories configured for YARN, not {{spark.local.dir}} which should be ignored.

However it should be noted that in yarn-client mode, though the executors will indeed use the local directories configured for YARN, the driver will not, because it is not running on the YARN cluster; the driver in yarn-client will use the local directories defined in {{spark.local.dir}}

Can this please be clarified in the Spark YARN documentation above?


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
  File "/data1/s/apps/spark-app/app/sample\_rf.py", line 25, in \<module\>
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

* [SPARK-6454](https://issues.apache.org/jira/browse/SPARK-6454) | *Minor* | **Fix several broken links in PySpark docs**

See https://github.com/apache/spark/pull/5120

There are actually a number of instances of links to PySpark docs that end in {{-class.html}} which don't work.


---

* [SPARK-6452](https://issues.apache.org/jira/browse/SPARK-6452) | *Major* | **CheckAnalysis should throw when the Aggregate node contains missing input attribute(s)**

Please refer to SPARK-6444 for reproduction steps. The top {{Aggregate}} node in the analyzed plan shown there contains a missing input attribute, but {{CheckAnalysis}} doesn't report it.


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
select Orders.Country, Orders.ProductCategory,count(1) from Orders join (select Orders.Country, count(1) CountryOrderCount from Orders where to\_date(Orders.PlacedDate) \> '2015-01-01' group by Orders.Country order by CountryOrderCount DESC LIMIT 5) Top5Countries on Top5Countries.Country = Orders.Country where to\_date(Orders.PlacedDate) \> '2015-01-01' group by Orders.Country,Orders.ProductCategory;
{code}

The temporary workaround is to add explicit alias for the table Orders

{code}
select o.Country, o.ProductCategory,count(1) from Orders o join (select r.Country, count(1) CountryOrderCount from Orders r where to\_date(r.PlacedDate) \> '2015-01-01' group by r.Country order by CountryOrderCount DESC LIMIT 5) Top5Countries on Top5Countries.Country = o.Country where to\_date(o.PlacedDate) \> '2015-01-01' group by o.Country,o.ProductCategory;
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

* [SPARK-6437](https://issues.apache.org/jira/browse/SPARK-6437) | *Critical* | **SQL ExternalSort should use CompletionIterator to clean up temp files**

Right now, temp files used by SQL ExternalSort are not cleaned up.


---

* [SPARK-6421](https://issues.apache.org/jira/browse/SPARK-6421) | *Major* | **\_regression\_train\_wrapper does not test initialWeights correctly**

There is a bug in this line: [https://github.com/apache/spark/blob/f17d43b033d928dbc46aef8e367aa08902e698ad/python/pyspark/mllib/regression.py#L138]

You can reproduce this bug as follows:
{code}
\>\>\> from numpy import array
\>\>\> a = array([1,2,3])
\>\>\> b = a or [1.0] \* 3
Traceback (most recent call last):
  File "\<stdin\>", line 1, in \<module\>
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
        at org.apache.spark.sql.hive.HiveUdafFunction.\<init\>(hiveUdfs.scala:369) 
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
sql("select \* from foobar where NAME='fred'").collect

15/03/19 06:34:38 ERROR Executor: Exception in task 0.0 in stage 1.0 (TID 1)
org.h2.jdbc.JdbcSQLException: Column "FRED" not found; SQL statement:
SELECT NAME,THEID FROM TEST.PEOPLE WHERE NAME = fred [42122-186]
{code}

Note that it is likely that other data types also have similar problem.


---

* [SPARK-6397](https://issues.apache.org/jira/browse/SPARK-6397) | *Minor* | **Exclude virtual columns from QueryPlan.missingInput**

Virtual columns like GROUPING\_\_ID should never be considered as missing input, and thus should be execluded from {{QueryPlan.missingInput}}.


---

* [SPARK-6383](https://issues.apache.org/jira/browse/SPARK-6383) | *Trivial* | **Few examples on Dataframe operation give compiler errors**

The below statements give compiler errors as 
a) the select method doesnot accept String, Column 
df.select("name", df("age") + 1).show() // Need to convert String to Column

b) Filtering should be based on "age"  not on "name"  Column
df.filter(df("name") \> 21).show()


---

* [SPARK-6376](https://issues.apache.org/jira/browse/SPARK-6376) | *Critical* | **Subqueries are thrown away too early in dataframes**

Because we throw away aliases as we construct the query plan, you can't reference them later.  For example, this query fails:

{code}
  test("self join with aliases") {
    val df = Seq(1,2,3).map(i =\> (i, i.toString)).toDF("int", "str")
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

* [SPARK-6369](https://issues.apache.org/jira/browse/SPARK-6369) | *Blocker* | **InsertIntoHiveTable and Parquet Relation should use logic from SparkHadoopWriter**

Right now it is possible that we will corrupt the output if there is a race between competing speculative tasks.


---

* [SPARK-6366](https://issues.apache.org/jira/browse/SPARK-6366) | *Blocker* | **In Python API, the default save mode for save and saveAsTable should be "error" instead of "append".**

If a user want to append data, he/she should explicitly specify the save mode. Also, in Scala and Java, the default save mode is ErrorIfExists.


---

* [SPARK-6365](https://issues.apache.org/jira/browse/SPARK-6365) | *Trivial* | **jetty-security needed for SPARK\_PREPEND\_CLASSES to work**

For {{SPARK\_PREPEND\_CLASSES}} to work, we need the jetty-security jar to also get dumped into the unshaded dir.  Otherwise you get an exception like:

{noformat}
Exception in thread "main" java.lang.NoClassDefFoundError: org/eclipse/jetty/security/LoginService
        at org.apache.spark.repl.SparkIMain.\<init\>(SparkIMain.scala:118)
        at org.apache.spark.repl.SparkILoop$SparkILoopInterpreter.\<init\>(SparkILoop.scala:187)
        at org.apache.spark.repl.SparkILoop.createInterpreter(SparkILoop.scala:216)
        at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply$mcZ$sp(SparkILoop.scala:948)
        at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply(SparkILoop.scala:944)
        at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply(SparkILoop.scala:944)
        at scala.tools.nsc.util.ScalaClassLoader$.savingContextLoader(ScalaClassLoader.scala:135)
        at org.apache.spark.repl.SparkILoop.org$apache$spark$repl$SparkILoop$$process(SparkILoop.scala:944)
        at org.apache.spark.repl.SparkILoop.process(SparkILoop.scala:1058)
        at org.apache.spark.repl.Main$.main(Main.scala:31)
        at org.apache.spark.repl.Main.main(Main.scala)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:483)
        at org.apache.spark.deploy.SparkSubmit$.org$apache$spark$deploy$SparkSubmit$$runMain(SparkSubmit.scala:569)
        at org.apache.spark.deploy.SparkSubmit$.doRunMain$1(SparkSubmit.scala:166)
        at org.apache.spark.deploy.SparkSubmit$.submit(SparkSubmit.scala:189)
        at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:110)
        at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)
Caused by: java.lang.ClassNotFoundException: org.eclipse.jetty.security.LoginService
        at java.net.URLClassLoader$1.run(URLClassLoader.java:372)
        at java.net.URLClassLoader$1.run(URLClassLoader.java:361)
        at java.security.AccessController.doPrivileged(Native Method)
        at java.net.URLClassLoader.findClass(URLClassLoader.java:360)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:424)
        at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:308)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:357)
        ... 20 more
{noformat}

PR is on the way ...


---

* [SPARK-6345](https://issues.apache.org/jira/browse/SPARK-6345) | *Major* | **Model update propagation during prediction in Streaming Regression**

During streaming regression analyses (Streaming Linear Regression and Streaming Logistic Regression), model updates based on training data are not being reflected in subsequent calls to predictOn or predictOnValues, despite updates themselves occurring successfully. It may be due to recent changes to model declaration, and I have a working fix prepared to be submitted ASAP (alongside expanded test coverage).

A temporary workaround is to retrieve and use the updated model within a foreachRDD, as in:

{code}
model.trainOn(trainingData)
testingData.foreachRDD{ rdd =\>
    val latest = model.latestModel()
    val predictions = rdd.map(lp =\> latest.predict(lp.features))
    ...print or other side effects...
}
{code}

Or within a transform, as in:

{code}
model.trainOn(trainingData)
val predictions = testingData.transform { rdd =\>
      val latest = model.latestModel()
      rdd.map(lp =\> (lp.label, latest.predict(lp.features)))
}
{code}

Note that this does not affect Streaming KMeans, which works as expected for combinations of training and prediction.


---

* [SPARK-6341](https://issues.apache.org/jira/browse/SPARK-6341) | *Minor* | **Upgrade breeze from 0.11.1 to 0.11.2 or later**

There is a bug to divide a breeze sparse vector which has any zero values with a scalar value. However, this bug is in breeze's side. I heard that once David fixes it and publishes it to maven, we can upgrade to breeze 0.11.2 or later.


- [Apache Spark Developers List: Is there any bugs to divide a Breeze sparse vector at Spark v1.3.0-rc3](http://apache-spark-developers-list.1001551.n3.nabble.com/mllib-Is-there-any-bugs-to-divide-a-Breeze-sparse-vectors-at-Spark-v1-3-0-rc3-td11056.html)
- [Is there any bugs to divide a sparse vector with `:/` at v0.11.1? · Issue #382 · scalanlp/breeze](https://github.com/scalanlp/breeze/issues/382#issuecomment-80896698)


---

* [SPARK-6337](https://issues.apache.org/jira/browse/SPARK-6337) | *Trivial* | **Spark 1.3 doc fixes**

I'll try to track doc issues to be fixed for the 1.3.1 release in this JIRA.

DataFrame
\* [quotes should include "age \> 30" \| https://github.com/apache/spark/blob/b943f5d907df0607ecffb729f2bccfa436438d7e/sql/core/src/main/scala/org/apache/spark/sql/DataFrame.scala#L92]
\* [DeveloperAPI  -\> DeveloperApi \| https://github.com/apache/spark/blob/c49d156624624a719c0d1262a58933ea3e346963/mllib/src/main/scala/org/apache/spark/ml/Pipeline.scala#L36]
\* [SQL Programming Guide: Programmatically Specifying the Schema typo \| https://github.com/apache/spark/blob/25e271d9fbb3394931d23822a1b2020e9d9b46b3/docs/sql-programming-guide.md]
\*\* Reported by Vinay: Under the "Programmatically Specifying the Schema" section , it's mentioned that SQL data types are in the following package org.apache.spark.sql, but I guess it has changed to org.apache.spark.sql.types


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
      val baseStatuses = paths.distinct.map { p =\>
        val qualified = fs.makeQualified(new Path(p))

        if (!fs.exists(qualified) && maybeSchema.isDefined) {
          fs.mkdirs(qualified)
          prepareMetadata(qualified, maybeSchema.get, sparkContext.hadoopConfiguration)
        }

        fs.getFileStatus(qualified)
      }.toArray

If we are running this locally and path points to S3, fs would be incorrect. A fix is to construct fs for each file separately.


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
scala\> val verySmallRdd = sc.parallelize(1 to 10, 10).map { i =\> 
     \|   if (i % 2 == 0) { Thread.sleep(30 \* 1000); i } else 0
     \| }
verySmallRdd: org.apache.spark.rdd.RDD[Int] = MapPartitionsRDD[1] at map at \<console\>:21

scala\> verySmallRdd.collect()
{code}

When Spark starts ramping down the number of allocated executors, it will hit an assert in YarnAllocator.scala:

{code}
assert(targetNumExecutors \>= 0, "Allocator killed more executors than are allocated!")
{code}

This assert will cause the akka backend to die, but not the AM itself. So the app will be in a zombie-like state, where the driver is alive but can't talk to the AM. Sadness ensues.

I have a working fix, just need to add unit tests. Stay tuned.

Thanks to [~wypoon] for finding the problem, and for the test case.


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

* [SPARK-6300](https://issues.apache.org/jira/browse/SPARK-6300) | *Critical* | **sc.addFile(path) does not support the relative path.**

when i run cmd like that sc.addFile("../test.txt"), it did not work and throw an exception

java.lang.IllegalArgumentException: java.net.URISyntaxException: Relative path in absolute URI: file:../test.txt
at org.apache.hadoop.fs.Path.initialize(Path.java:206)
at org.apache.hadoop.fs.Path.\<init\>(Path.java:172) 
........
.......
Caused by: java.net.URISyntaxException: Relative path in absolute URI: file:../test.txt
at java.net.URI.checkPath(URI.java:1804)
at java.net.URI.\<init\>(URI.java:752)
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

* [SPARK-6294](https://issues.apache.org/jira/browse/SPARK-6294) | *Critical* | **PySpark task may hang while call take() on in Java/Scala**

{code}
\>\>\> rdd = sc.parallelize(range(1\<\<20)).map(lambda x: str(x))
\>\>\> rdd.\_jrdd.first()
{code}

There is the stacktrace while hanging:

{code}
"Executor task launch worker-5" daemon prio=10 tid=0x00007f8fd01a9800 nid=0x566 in Object.wait() [0x00007f90481d7000]
   java.lang.Thread.State: WAITING (on object monitor)
	at java.lang.Object.wait(Native Method)
	- waiting on \<0x0000000630929340\> (a org.apache.spark.api.python.PythonRDD$WriterThread)
	at java.lang.Thread.join(Thread.java:1281)
	- locked \<0x0000000630929340\> (a org.apache.spark.api.python.PythonRDD$WriterThread)
	at java.lang.Thread.join(Thread.java:1355)
	at org.apache.spark.api.python.PythonRDD$$anonfun$compute$1.apply(PythonRDD.scala:78)
	at org.apache.spark.api.python.PythonRDD$$anonfun$compute$1.apply(PythonRDD.scala:76)
	at org.apache.spark.TaskContextImpl$$anon$1.onTaskCompletion(TaskContextImpl.scala:49)
	at org.apache.spark.TaskContextImpl$$anonfun$markTaskCompleted$1.apply(TaskContextImpl.scala:68)
	at org.apache.spark.TaskContextImpl$$anonfun$markTaskCompleted$1.apply(TaskContextImpl.scala:66)
	at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
	at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
	at org.apache.spark.TaskContextImpl.markTaskCompleted(TaskContextImpl.scala:66)
	at org.apache.spark.scheduler.Task.run(Task.scala:58)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:196)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
{code}


---

* [SPARK-6286](https://issues.apache.org/jira/browse/SPARK-6286) | *Minor* | **Handle TASK\_ERROR in TaskState**

Scala warning:

{code}
match may not be exhaustive. It would fail on the following input: TASK\_ERROR
{code}


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

* [SPARK-6253](https://issues.apache.org/jira/browse/SPARK-6253) | *Minor* | **Add LassoModel to \_\_all\_\_ in regression.py**

LassoModel does not show up in Python docs

This should be merged into branch-1.3 and master.


---

* [SPARK-6248](https://issues.apache.org/jira/browse/SPARK-6248) | *Major* | **LocalRelation needs to implement statistics**

We need to implement statistics for LocalRelation. Otherwise, we cannot join a LocalRelation with other tables. The following exception will be thrown.

{code}
java.lang.UnsupportedOperationException: LeafNode LocalRelation must implement statistics.
{code}


---

* [SPARK-6247](https://issues.apache.org/jira/browse/SPARK-6247) | *Blocker* | **Certain self joins cannot be analyzed**

When you try the following code
{code}
val df =
   (1 to 10)
      .map(i =\> (i, i.toDouble, i.toLong, i.toString, i.toString))
      .toDF("intCol", "doubleCol", "longCol", "stringCol1", "stringCol2")

df.registerTempTable("test")

sql(
  """
  \|SELECT x.stringCol2, avg(y.intCol), sum(x.doubleCol)
  \|FROM test x JOIN test y ON (x.stringCol1 = y.stringCol1)
  \|GROUP BY x.stringCol2
  """.stripMargin).explain()
{code}

The following exception will be thrown.
{code}
[info]   java.util.NoSuchElementException: next on empty iterator
[info]   at scala.collection.Iterator$$anon$2.next(Iterator.scala:39)
[info]   at scala.collection.Iterator$$anon$2.next(Iterator.scala:37)
[info]   at scala.collection.IndexedSeqLike$Elements.next(IndexedSeqLike.scala:64)
[info]   at scala.collection.IterableLike$class.head(IterableLike.scala:91)
[info]   at scala.collection.mutable.ArrayBuffer.scala$collection$IndexedSeqOptimized$$super$head(ArrayBuffer.scala:47)
[info]   at scala.collection.IndexedSeqOptimized$class.head(IndexedSeqOptimized.scala:120)
[info]   at scala.collection.mutable.ArrayBuffer.head(ArrayBuffer.scala:47)
[info]   at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveReferences$$anonfun$apply$7.applyOrElse(Analyzer.scala:247)
[info]   at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveReferences$$anonfun$apply$7.applyOrElse(Analyzer.scala:197)
[info]   at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$transformUp$1.apply(TreeNode.scala:250)
[info]   at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$transformUp$1.apply(TreeNode.scala:250)
[info]   at org.apache.spark.sql.catalyst.trees.CurrentOrigin$.withOrigin(TreeNode.scala:50)
[info]   at org.apache.spark.sql.catalyst.trees.TreeNode.transformUp(TreeNode.scala:249)
[info]   at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$5.apply(TreeNode.scala:263)
[info]   at scala.collection.Iterator$$anon$11.next(Iterator.scala:328)
[info]   at scala.collection.Iterator$class.foreach(Iterator.scala:727)
[info]   at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
[info]   at scala.collection.generic.Growable$class.$plus$plus$eq(Growable.scala:48)
[info]   at scala.collection.mutable.ArrayBuffer.$plus$plus$eq(ArrayBuffer.scala:103)
[info]   at scala.collection.mutable.ArrayBuffer.$plus$plus$eq(ArrayBuffer.scala:47)
[info]   at scala.collection.TraversableOnce$class.to(TraversableOnce.scala:273)
[info]   at scala.collection.AbstractIterator.to(Iterator.scala:1157)
[info]   at scala.collection.TraversableOnce$class.toBuffer(TraversableOnce.scala:265)
[info]   at scala.collection.AbstractIterator.toBuffer(Iterator.scala:1157)
[info]   at scala.collection.TraversableOnce$class.toArray(TraversableOnce.scala:252)
[info]   at scala.collection.AbstractIterator.toArray(Iterator.scala:1157)
[info]   at org.apache.spark.sql.catalyst.trees.TreeNode.transformChildrenUp(TreeNode.scala:292)
[info]   at org.apache.spark.sql.catalyst.trees.TreeNode.transformUp(TreeNode.scala:247)
[info]   at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveReferences$.apply(Analyzer.scala:197)
[info]   at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveReferences$.apply(Analyzer.scala:196)
[info]   at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1$$anonfun$apply$2.apply(RuleExecutor.scala:61)
[info]   at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1$$anonfun$apply$2.apply(RuleExecutor.scala:59)
[info]   at scala.collection.LinearSeqOptimized$class.foldLeft(LinearSeqOptimized.scala:111)
[info]   at scala.collection.immutable.List.foldLeft(List.scala:84)
[info]   at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1.apply(RuleExecutor.scala:59)
[info]   at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1.apply(RuleExecutor.scala:51)
[info]   at scala.collection.immutable.List.foreach(List.scala:318)
[info]   at org.apache.spark.sql.catalyst.rules.RuleExecutor.apply(RuleExecutor.scala:51)
[info]   at org.apache.spark.sql.SQLContext$QueryExecution.analyzed$lzycompute(SQLContext.scala:1071)
[info]   at org.apache.spark.sql.SQLContext$QueryExecution.analyzed(SQLContext.scala:1071)
[info]   at org.apache.spark.sql.SQLContext$QueryExecution.assertAnalyzed(SQLContext.scala:1069)
[info]   at org.apache.spark.sql.DataFrame.\<init\>(DataFrame.scala:133)
[info]   at org.apache.spark.sql.DataFrame$.apply(DataFrame.scala:51)
[info]   at org.apache.spark.sql.SQLContext.sql(SQLContext.scala:915)
[info]   at org.apache.spark.serializer.SparkSqlSerializer2Suite$$anonfun$2.apply$mcV$sp(SparkSqlSerializer2Suite.scala:66)
[info]   at org.apache.spark.serializer.SparkSqlSerializer2Suite$$anonfun$2.apply(SparkSqlSerializer2Suite.scala:48)
[info]   at org.apache.spark.serializer.SparkSqlSerializer2Suite$$anonfun$2.apply(SparkSqlSerializer2Suite.scala:48)
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
[info]   at org.scalatest.FunSuite.runTest(FunSuite.scala:1555)
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
[info]   at org.scalatest.FunSuite.run(FunSuite.scala:1555)
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
  File "/tmp/bug.py", line 5, in \<module\>
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

* [SPARK-6222](https://issues.apache.org/jira/browse/SPARK-6222) | *Blocker* | **[STREAMING] All data may not be recovered from WAL when driver is killed**

When testing for our next release, our internal tests written by [~wypoon] caught a regression in Spark Streaming between 1.2.0 and 1.3.0. The test runs FlumePolling stream to read data from Flume, then kills the Application Master. Once YARN restarts it, the test waits until no more data is to be written and verifies the original against the data on HDFS. This was passing in 1.2.0, but is failing now.

Since the test ties into Cloudera's internal infrastructure and build process, it cannot be directly run on an Apache build. But I have been working on isolating the commit that may have caused the regression. I have confirmed that it was caused by SPARK-5147 (PR # [4149\|https://github.com/apache/spark/pull/4149]). I confirmed this several times using the test and the failure is consistently reproducible. 

To re-confirm, I reverted just this one commit (and Clock consolidation one to avoid conflicts), and the issue was no longer reproducible.

Since this is a data loss issue, I believe this is a blocker for Spark 1.3.0
/cc [~tdas], [~pwendell]


---

* [SPARK-6210](https://issues.apache.org/jira/browse/SPARK-6210) | *Critical* | **Generated column name should not include id of column in it.**

{code}
        \>\>\> df.groupBy().max('age').collect()
        [Row(MAX(age#0)=5)]
        \>\>\> df3.groupBy().max('age', 'height').collect()
        [Row(MAX(age#4L)=5, MAX(height#5L)=85)]
{code}


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
sc.parallelize(1 to 1000, 1000).map { x =\>
  try {
      Class.forName("some.class.that.does.not.Exist")
  } catch {
      case e: Exception =\> // do nothing
  }
  x
}.count()
{code}

This job will run 253 tasks, then will completely freeze without any errors or failed tasks.

It looks like the driver has 253 threads blocked in socketRead0() calls:

{code}
[joshrosen ~]$ jstack 16765 \| grep socketRead0 \| wc
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
jps \| grep CoarseGra \| cut -d ' ' -f 1 \| xargs -I {} -n 1 -P100 jcmd {} GC.run
{code}

The culprit is a {{catch}} block that ignores all exceptions and performs no cleanup: https://github.com/apache/spark/blob/v1.2.0/repl/src/main/scala/org/apache/spark/repl/ExecutorClassLoader.scala#L94

This bug has been present since Spark 1.0.0, but I suspect that we haven't seen it before because it's pretty hard to reproduce. Triggering this error requires a job with tasks that trigger ClassNotFoundExceptions yet are still able to run to completion.  It also requires that executors are able to leak enough open connections to exhaust the class server's Jetty thread pool limit, which requires that there are a large number of tasks (253+) and either a large number of executors or a very low amount of GC pressure on those executors (since GC will cause the leaked connections to be closed).

The fix here is pretty simple: add proper resource cleanup to this class.


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

On Thu, Mar 5, 2015 at 2:39 PM, Josh Rosen \<joshrosen@databricks.com\> wrote:
\> Based on Py4J's Memory Model page
\> (http://py4j.sourceforge.net/advanced\_topics.html#py4j-memory-model):
\>
\>\> Because Java objects on the Python side are involved in a circular
\>\> reference (JavaObject and JavaMember reference each other), these objects
\>\> are not immediately garbage collected once the last reference to the object
\>\> is removed (but they are guaranteed to be eventually collected if the Python
\>\> garbage collector runs before the Python program exits).
\>
\>
\>\>
\>\> In doubt, users can always call the detach function on the Python gateway
\>\> to explicitly delete a reference on the Java side. A call to gc.collect()
\>\> also usually works.
\>
\>
\> Maybe we should be manually calling detach() when the Python-side has
\> finished consuming temporary objects from the JVM.  Do you have a small
\> workload / configuration that reproduces the OOM which we can use to test a
\> fix?  I don't think that I've seen this issue in the past, but this might be
\> because we mistook Java OOMs as being caused by collecting too much data
\> rather than due to memory leaks.
\>
\> On Thu, Mar 5, 2015 at 10:41 AM, Michael Nazario \<mnazario@palantir.com\>
\> wrote:
\>\>
\>\> Hi Josh,
\>\>
\>\> I have a question about how PySpark does memory management in the Py4J
\>\> bridge between the Java driver and the Python driver. I was wondering if
\>\> there have been any memory problems in this system because the Python
\>\> garbage collector does not collect circular references immediately and Py4J
\>\> has circular references in each object it receives from Java.
\>\>
\>\> When I dug through the PySpark code, I seemed to find that most RDD
\>\> actions return by calling collect. In collect, you end up calling the Java
\>\> RDD collect and getting an iterator from that. Would this be a possible
\>\> cause for a Java driver OutOfMemoryException because there are resources in
\>\> Java which do not get freed up immediately?
\>\>
\>\> I have also seen that trying to take a lot of values from a dataset twice
\>\> in a row can cause the Java driver to OOM (while just once works). Are there
\>\> some other memory considerations that are relevant in the driver?
\>\>
\>\> Thanks,
\>\> Michael


---

* [SPARK-6180](https://issues.apache.org/jira/browse/SPARK-6180) | *Minor* | **Error logged into log4j when use the HiveMetastoreCatalog::tableExists**

When using {{HiveMetastoreCatalog.tableExists}} to check a table that does not exist in hive store, there is one error message like this logged into log file, the function returns {{false}} as desired. 

To avoid this error log, one way is to use {{Hive.getTable(databaseName, tblName, false)}} instead of {{Hive.getTable(databaseName, tblName)}}

{quote}
15/02/13 17:24:34 [Sql Query events] ERROR hive.ql.metadata.Hive: NoSuchObjectException(message:default.demotable table not found)
	at org.apache.hadoop.hive.metastore.HiveMetaStore$HMSHandler.get\_table(HiveMetaStore.java:1560)
	at sun.reflect.GeneratedMethodAccessor12.invoke(Unknown Source)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.hive.metastore.RetryingHMSHandler.invoke(RetryingHMSHandler.java:105)
	at com.sun.proxy.$Proxy15.get\_table(Unknown Source)
	at org.apache.hadoop.hive.metastore.HiveMetaStoreClient.getTable(HiveMetaStoreClient.java:997)

	at sun.reflect.GeneratedMethodAccessor11.invoke(Unknown Source)

	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.hive.metastore.RetryingMetaStoreClient.invoke(RetryingMetaStoreClient.java:89)
	at com.sun.proxy.$Proxy16.getTable(Unknown Source)
	at org.apache.hadoop.hive.ql.metadata.Hive.getTable(Hive.java:976)
	at org.apache.hadoop.hive.ql.metadata.Hive.getTable(Hive.java:950)
	at org.apache.spark.sql.hive.HiveMetastoreCatalog.lookupRelation(HiveMetastoreCatalog.scala:70)
	at org.apache.spark.sql.hive.HiveContext$$anon$1.org$apache$spark$sql$catalyst$analysis$OverrideCatalog$$super$lookupRelation(HiveContext.scala:253)
	at org.apache.spark.sql.catalyst.analysis.OverrideCatalog$$anonfun$lookupRelation$3.apply(Catalog.scala:141)
	at org.apache.spark.sql.catalyst.analysis.OverrideCatalog$$anonfun$lookupRelation$3.apply(Catalog.scala:141)
	at scala.Option.getOrElse(Option.scala:120)
	at org.apache.spark.sql.catalyst.analysis.OverrideCatalog$class.lookupRelation(Catalog.scala:141)
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
	at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveRelations$.apply(Analyzer.scala:138)
	at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveRelations$.apply(Analyzer.scala:137)
	at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1$$anonfun$apply$2.apply(RuleExecutor.scala:61)
	at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1$$anonfun$apply$2.apply(RuleExecutor.scala:59)
	at scala.collection.LinearSeqOptimized$class.foldLeft(LinearSeqOptimized.scala:111)
	at scala.collection.immutable.List.foldLeft(List.scala:84)
	at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1.apply(RuleExecutor.scala:59)
	at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1.apply(RuleExecutor.scala:51)
	at scala.collection.immutable.List.foreach(List.scala:318)
	at org.apache.spark.sql.catalyst.rules.RuleExecutor.apply(RuleExecutor.scala:51)
	at org.apache.spark.sql.SQLContext$QueryExecution.analyzed$lzycompute(SQLContext.scala:411)
	at org.apache.spark.sql.SQLContext$QueryExecution.analyzed(SQLContext.scala:411)
	at org.apache.spark.sql.SQLContext$QueryExecution.withCachedData$lzycompute(SQLContext.scala:412)
	at org.apache.spark.sql.SQLContext$QueryExecution.withCachedData(SQLContext.scala:412)
	at org.apache.spark.sql.SQLContext$QueryExecution.optimizedPlan$lzycompute(SQLContext.scala:413)
	at org.apache.spark.sql.SQLContext$QueryExecution.optimizedPlan(SQLContext.scala:413)
	at org.apache.spark.sql.SQLContext$QueryExecution.sparkPlan$lzycompute(SQLContext.scala:418)
	at org.apache.spark.sql.SQLContext$QueryExecution.sparkPlan(SQLContext.scala:416)
	at org.apache.spark.sql.SQLContext$QueryExecution.executedPlan$lzycompute(SQLContext.scala:422)
	at org.apache.spark.sql.SQLContext$QueryExecution.executedPlan(SQLContext.scala:422)
	at org.apache.spark.sql.SchemaRDD.collect(SchemaRDD.scala:444)
       at com.vitria.poc.SqlProductDemo$$anon$1$$anonfun$run$1.apply$mcV$sp(SqlProductDemo.scala:57)
	at com.vitria.poc.SqlProductDemo$$anon$1$$anonfun$run$1.apply(SqlProductDemo.scala:57)
	at com.vitria.poc.SqlProductDemo$$anon$1$$anonfun$run$1.apply(SqlProductDemo.scala:57)
	at scala.util.Try$.apply(Try.scala:161)
	at com.vitria.poc.SqlProductDemo$$anon$1.run(SqlProductDemo.scala:57)
{quote}


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
    \| TIMESTAMP ^^^ TimestampType
    \| DOUBLE ^^^ DoubleType
    \| fixedDecimalType
    \| DECIMAL ^^^ DecimalType.Unlimited
    \| DATE ^^^ DateType
    \| INT ^^^ IntegerType
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

* [SPARK-6117](https://issues.apache.org/jira/browse/SPARK-6117) | *Major* | **describe function for summary statistics**

DataFrame.describe should return a DataFrame with summary statistics. 

{code}
def describe(cols: String\*): DataFrame
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

* [SPARK-6088](https://issues.apache.org/jira/browse/SPARK-6088) | *Major* | **UI is malformed when tasks fetch remote results**

There are three issues when tasks get remote results:

(1) The status never changes from GET\_RESULT to SUCCEEDED
(2) The time to get the result is shown as the absolute time (resulting in a non-sensical output that says getting the result took \>1 million hours) rather than the elapsed time
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
val wordCounts = words.map(x =\> (x, 1)).reduceByKey(\_ + \_)
wordCounts.print()
ssc.start()
.....

2)
ssc.stop(false)
val ssc = new StreamingContext(sc, Seconds(1))
val lines = ssc.socketTextStream("localhost", 9999, StorageLevel.MEMORY\_AND\_DISK\_SER)
val words = lines.flatMap(\_.split(" "))
val wordCounts = words.map(x =\> (x, 1)).reduceByKey(\_ + \_)
wordCounts.print()
ssc.start()


---

* [SPARK-6063](https://issues.apache.org/jira/browse/SPARK-6063) | *Minor* | **MLlib doesn't pass mvn scalastyle check due to UTF chars in LDAModel.scala**

On Windows 8.1, trying to build Spark from source (latest Github pull) produces a failure during MLlib build. The cause appears similar to SPARK-3372: unicode characters in a Scala file.

\*Affected file\*
spark/mllib/src/main/scala/org/apache/spark/mllib/clustering
LDAModel.scala:133
{code}
   \* This is often called “theta” in the literature.
{code}
Note the two \u201D marks around \*theta\*.

Replacing the \u201D with a standard single apostrophe (\x27) resolves the issue.


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

* [SPARK-6036](https://issues.apache.org/jira/browse/SPARK-6036) | *Major* | **EventLog process logic has race condition with Akka actor system**

when application finished, akka actor system will trigger disassociated event, and Master will rebuild SparkUI on web, in which progress will check whether the eventlog files are still in progress. The current logic in SparkContext is first stop the actorsystem, and then stop enentLogListener. This will cause that the enentLogListener has not finished renaming the eventLog dir name (from app-xxxx.inprogress to app-xxxx)  when Spark Master try to access the dir.


---

* [SPARK-5955](https://issues.apache.org/jira/browse/SPARK-5955) | *Major* | **Add checkpointInterval to ALS**

We should add checkpoint interval to ALS to prevent the following:

1. storing large shuffle files
2. stack overflow (SPARK-1106)


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
        at org.apache.spark.sql.DataFrameImpl.\<init\>(DataFrameImpl.scala:71)
        at org.apache.spark.sql.DataFrameImpl.\<init\>(DataFrameImpl.scala:58)
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

* [SPARK-5750](https://issues.apache.org/jira/browse/SPARK-5750) | *Minor* | **Document that ordering of elements in shuffled partitions is not deterministic across runs**

The ordering of elements in shuffled partitions is not deterministic across runs.  For instance, consider the following example:

{code}
val largeFiles = sc.textFile(...)
val airlines = largeFiles.repartition(2000).cache()
println(airlines.first)
{code}

If this code is run twice, then each run will output a different result.  There is non-determinism in the shuffle read code that accounts for this:

Spark's shuffle read path processes blocks as soon as they are fetched  Spark uses [ShuffleBlockFetcherIterator\|https://github.com/apache/spark/blob/v1.2.1/core/src/main/scala/org/apache/spark/storage/ShuffleBlockFetcherIterator.scala] to fetch shuffle data from mappers.  In this code, requests for multiple blocks from the same host are batched together, so nondeterminism in where tasks are run means that the set of requests can vary across runs.  In addition, there's an [explicit call\|https://github.com/apache/spark/blob/v1.2.1/core/src/main/scala/org/apache/spark/storage/ShuffleBlockFetcherIterator.scala#L256] to randomize the order of the batched fetch requests.  As a result, shuffle operations cannot be guaranteed to produce the same ordering of the elements in their partitions.

Therefore, Spark should update its docs to clarify that the ordering of elements in shuffle RDDs' partitions is non-deterministic.  Note, however, that the \_set\_ of elements in each partition will be deterministic: if we used {{mapPartitions}} to sort each partition, then the {{first()}} call above would produce a deterministic result.


---

* [SPARK-5680](https://issues.apache.org/jira/browse/SPARK-5680) | *Minor* | **Sum function on all null values, should return zero**

SELECT  sum('a'),  avg('a'),  variance('a'),  std('a') FROM src;
Current output:
NULL	NULL	NULL	NULL
Expected output:
0.0	NULL	NULL	NULL

This fixes hive udaf\_number\_format.q


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
  /\*\* Find a free port \*/
  private def findFreePort(): Int = {
    Utils.startServiceOnPort(23456, (trialPort: Int) =\> {
      val socket = new ServerSocket(trialPort)
      socket.close()
      (null, trialPort)
    }, conf).\_2
  }
{code}

Removing the check-then-act is not easy but we can reduce the chance of having the error by choosing random value for initial port instead of 23456.


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

* [SPARK-5320](https://issues.apache.org/jira/browse/SPARK-5320) | *Major* | **Joins on simple table created using select gives error**

Register "select 0 as a, 1 as b" as table zeroone
Register "select 0 as x, 1 as y" as table zeroone2

The following sql 
"select \* from zeroone ta join zeroone2 tb on ta.a = tb.x"

gives error 
java.lang.UnsupportedOperationException: LeafNode NoRelation$ must implement statistics.


---

* [SPARK-4985](https://issues.apache.org/jira/browse/SPARK-4985) | *Major* | **Parquet support for date type**

Parquet serde support for DATE type


---

* [SPARK-4925](https://issues.apache.org/jira/browse/SPARK-4925) | *Critical* | **Publish Spark SQL hive-thriftserver maven artifact**

The hive-thriftserver maven artifact is needed for integrating Spark SQL with Cassandra.

Can we publish it to maven?


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

* [SPARK-4044](https://issues.apache.org/jira/browse/SPARK-4044) | *Major* | **Thriftserver fails to start when JAVA\_HOME points to JRE instead of JDK**

If {{JAVA\_HOME}} points to a JRE instead of a JDK, e.g.

{code}
JAVA\_HOME=/usr/lib/jvm/java-7-oracle/jre/ 
{code}

instead of 

{code}
JAVA\_HOME=/usr/lib/jvm/java-7-oracle/
{code}

Then start-thriftserver.sh will fail with Datanucleus JAR errors:

{code}
Caused by: java.lang.ClassNotFoundException: org.datanucleus.api.jdo.JDOPersistenceManagerFactory
	at java.net.URLClassLoader$1.run(URLClassLoader.java:366)
	at java.net.URLClassLoader$1.run(URLClassLoader.java:355)
	at java.security.AccessController.doPrivileged(Native Method)
	at java.net.URLClassLoader.findClass(URLClassLoader.java:354)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:425)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:358)
	at java.lang.Class.forName0(Native Method)
	at java.lang.Class.forName(Class.java:270)
	at javax.jdo.JDOHelper$18.run(JDOHelper.java:2018)
	at javax.jdo.JDOHelper$18.run(JDOHelper.java:2016)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.jdo.JDOHelper.forName(JDOHelper.java:2015)
	at javax.jdo.JDOHelper.invokeGetPersistenceManagerFactoryOnImplementation(JDOHelper.java:1162)
{code}

The root problem seems to be that {{compute-classpath.sh}} uses {{JAVA\_HOME}} to find the path to the {{jar}} command, which isn't present in JRE directories.  This leads to silent failures when adding the Datanucleus JARs to the classpath.

This same issue presumably affects the command that checks whether Spark was built on Java 7 but run on Java 6.

We should probably add some error-handling that checks whether the {{jar}} command is actually present and throws an error otherwise, and also update the documentation to say that `JAVA\_HOME` must point to a JDK and not a JRE.


---

* [SPARK-3619](https://issues.apache.org/jira/browse/SPARK-3619) | *Major* | **Upgrade to Mesos 0.21 to work around MESOS-1688**

The Mesos 0.21 release has a fix for https://issues.apache.org/jira/browse/MESOS-1688, which affects Spark jobs.


---

* [SPARK-3570](https://issues.apache.org/jira/browse/SPARK-3570) | *Major* | **Shuffle write time does not include time to open shuffle files**

Currently, the reported shuffle write time does not include time to open the shuffle files.  This time can be very significant when the disk is highly utilized and many shuffle files exist on the machine (I'm not sure how severe this is in 1.0 onward -- since shuffle files are automatically deleted, this may be less of an issue because there are fewer old files sitting around).  In experiments I did, in extreme cases, adding the time to open files can increase the shuffle write time from 5ms (of a 2 second task) to 1 second.  We should fix this for better performance debugging.

Thanks [~shivaram] for helping to diagnose this problem.  cc [~pwendell]


---

* [SPARK-3266](https://issues.apache.org/jira/browse/SPARK-3266) | *Major* | **JavaDoubleRDD doesn't contain max()**

While I can compile my code, I see:

Caused by: java.lang.NoSuchMethodError: org.apache.spark.api.java.JavaDoubleRDD.max(Ljava/util/Comparator;)Ljava/lang/Double;

When I try to execute my Spark code. Stepping into the JavaDoubleRDD class, I don't notice max()
although it is clearly listed in the documentation.


---

* [SPARK-677](https://issues.apache.org/jira/browse/SPARK-677) | *Major* | **PySpark should not collect results through local filesystem**

Py4J is slow when transferring large arrays, so PySpark currently dumps data to the disk and reads it back in order to collect() RDDs.  On large enough datasets, this data will spill from the buffer cache and write to the physical disk, resulting in terrible performance.

Instead, we should stream the data from Java to Python over a local socket or a FIFO.



