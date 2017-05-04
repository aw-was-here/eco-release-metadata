
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
# Apache Spark  2.0.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [SPARK-12016](https://issues.apache.org/jira/browse/SPARK-12016) | *Major* | **word2vec load model can't use findSynonyms to get words**

I use word2vec.fit to train a word2vecModel and then save the model to file system. when I load the model from file system, I found I can use transform('a') to get a vector, but I can't use findSynonyms('a', 2) to get some words.

I use the fellow code to test word2vec

from pyspark import SparkContext
from pyspark.mllib.feature import Word2Vec, Word2VecModel

import os, tempfile
from shutil import rmtree

if \_\_name\_\_ == '\_\_main\_\_':
    sc = SparkContext('local', 'test')
    sentence = "a b " \* 100 + "a c " \* 10
    localDoc = [sentence, sentence]
    doc = sc.parallelize(localDoc).map(lambda line: line.split(" "))
    model = Word2Vec().setVectorSize(10).setSeed(42).fit(doc)

    syms = model.findSynonyms("a", 2)
    print [s[0] for s in syms]
    path = tempfile.mkdtemp()
    model.save(sc, path)
    sameModel = Word2VecModel.load(sc, path)
    print model.transform("a") == sameModel.transform("a")
    syms = sameModel.findSynonyms("a", 2)
    print [s[0] for s in syms]
    try:
        rmtree(path)
    except OSError:
        pass

I got "[u'b', u'c']" when the first printf
then the “True” and " [u'\_\_class\_\_'] "
I don't know how to get 'b' or 'c' with sameModel.findSynonyms("a", 2)


---

* [SPARK-13195](https://issues.apache.org/jira/browse/SPARK-13195) | *Major* | **PairDStreamFunctions.mapWithState fails in case timeout is set without updating State[S]**

Using the new spark mapWithState API, I've encountered a bug when setting a timeout for mapWithState but no explicit state handling.

h1. Steps to reproduce:

1. Create a method which conforms to the StateSpec signature, make sure to not update any state inside it using \*state.update\*. Simply create a "pass through" method, may even be empty.
2. Create a StateSpec object with method from step 1, which explicitly sets a timeout using \*StateSpec.timeout\* method.
3. Create a DStream pipeline that uses mapWithState with the given StateSpec.
4. Run code using spark-submit. You'll see that the method ends up throwing the following exception:

{code}
org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 136.0 failed 4 times, most recent failure: Lost task 0.3 in stage 136.0 (TID 176, \*\*\*\*): java.util.NoSuchElementException: State is not set
	at org.apache.spark.streaming.StateImpl.get(State.scala:150)
	at org.apache.spark.streaming.rdd.MapWithStateRDDRecord$$anonfun$updateRecordWithData$1.apply(MapWithStateRDD.scala:61)
	at org.apache.spark.streaming.rdd.MapWithStateRDDRecord$$anonfun$updateRecordWithData$1.apply(MapWithStateRDD.scala:55)
	at scala.collection.Iterator$class.foreach(Iterator.scala:727)
	at org.apache.spark.InterruptibleIterator.foreach(InterruptibleIterator.scala:28)
	at org.apache.spark.streaming.rdd.MapWithStateRDDRecord$.updateRecordWithData(MapWithStateRDD.scala:55)
	at org.apache.spark.streaming.rdd.MapWithStateRDD.compute(MapWithStateRDD.scala:154)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:306)
	at org.apache.spark.CacheManager.getOrCompute(CacheManager.scala:69)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:268)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:38)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:306)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:270)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:66)
	at org.apache.spark.scheduler.Task.run(Task.scala:89)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:213)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)
{code}

h1. Sample code to reproduce the issue:

{code:Title=MainObject}
import org.apache.spark.streaming.\_
import org.apache.spark.{SparkConf, SparkContext}
/\*\*
  \* Created by yuvali on 04/02/2016.
  \*/
object Program {

  def main(args: Array[String]): Unit = {
    
    val sc = new SparkConf().setAppName("mapWithState bug reproduce")
    val sparkContext = new SparkContext(sc)

    val ssc = new StreamingContext(sparkContext, Seconds(4))
    val stateSpec = StateSpec.function(trackStateFunc \_).timeout(Seconds(60))

    // Create a stream that generates 1000 lines per second
    val stream = ssc.receiverStream(new DummySource(10))

    // Split the lines into words, and create a paired (key-value) dstream
    val wordStream = stream.flatMap {
      \_.split(" ")
    }.map(word =\> (word, 1))

    // This represents the emitted stream from the trackStateFunc. Since we emit every input record with the updated value,
    // this stream will contain the same # of records as the input dstream.
    val wordCountStateStream = wordStream.mapWithState(stateSpec)
    wordCountStateStream.print()

    ssc.remember(Minutes(1)) // To make sure data is not deleted by the time we query it interactively

    // Don't forget to set checkpoint directory
    ssc.checkpoint("")
    ssc.start()
    ssc.awaitTermination()
  }

  def trackStateFunc(batchTime: Time, key: String, value: Option[Int], state: State[Long]): Option[(String, Long)] = {
    val sum = value.getOrElse(0).toLong + state.getOption.getOrElse(0L)
    val output = (key, sum)
    Some(output)
  }
}
{code}

{code:Title=DummySource}

/\*\*
  \* Created by yuvali on 04/02/2016.
  \*/

import org.apache.spark.storage.StorageLevel
import scala.util.Random
import org.apache.spark.streaming.receiver.\_

class DummySource(ratePerSec: Int) extends Receiver[String](StorageLevel.MEMORY\_AND\_DISK\_2) {

  def onStart() {
    // Start the thread that receives data over a connection
    new Thread("Dummy Source") {
      override def run() { receive() }
    }.start()
  }

  def onStop() {
    // There is nothing much to do as the thread calling receive()
    // is designed to stop by itself isStopped() returns false
  }

  /\*\* Create a socket connection and receive data until receiver is stopped \*/
  private def receive() {
    while(!isStopped()) {
      store("I am a dummy source " + Random.nextInt(10))
      Thread.sleep((1000.toDouble / ratePerSec).toInt)
    }
  }
}
{code}

The given issue resides in the following \*MapWithStateRDDRecord.updateRecordWithData\*, starting line 55, in the following code block:

{code}
dataIterator.foreach { case (key, value) =\>
      wrappedState.wrap(newStateMap.get(key))
      val returned = mappingFunction(batchTime, key, Some(value), wrappedState)
      if (wrappedState.isRemoved) {
        newStateMap.remove(key)
      } else if (wrappedState.isUpdated \|\| timeoutThresholdTime.isDefined) /\* \<--- problem is here \*/ {
        newStateMap.put(key, wrappedState.get(), batchTime.milliseconds)
      }
      mappedData ++= returned
}
{code}

In case the stream has a timeout set, but the state wasn't set at all, the "else-if" will still follow through because the timeout is defined but "wrappedState" is empty and wasn't set.

If it is mandatory to update state for each entry of \*mapWithState\*, then this code should throw a better exception than "NoSuchElementException", which doesn't really saw anything to the developer.

I haven't provided a fix myself because I'm not familiar with the spark implementation, but it seems to be there needs to either be an extra check if the state is set, or as previously stated a better exception message.


---

* [SPARK-12555](https://issues.apache.org/jira/browse/SPARK-12555) | *Major* | **Datasets: data is corrupted when input data is reordered**

Testcase
-----------
{code}
import org.apache.spark.sql.expressions.Aggregator
import org.apache.spark.{SparkConf, SparkContext}
import org.apache.spark.sql.SQLContext
import org.apache.spark.sql.Dataset

case class people(age: Int, name: String)

object nameAgg extends Aggregator[people, String, String] {
      def zero: String = ""
      def reduce(b: String, a: people): String = a.name + b
      def merge(b1: String, b2: String): String = b1 + b2
      def finish(r: String): String = r
}

object DataSetAgg {
  def main(args: Array[String]) {
    val conf = new SparkConf().setAppName("DataSetAgg")
    val spark = new SparkContext(conf)
    val sqlContext = new SQLContext(spark)
    import sqlContext.implicits.\_

    val peopleds: Dataset[people] = sqlContext.sql("SELECT 'Tim Preece' AS name, 1279869254 AS age").as[people]
    peopleds.groupBy(\_.age).agg(nameAgg.toColumn).show()
  }
}
{code}

Result ( on a Little Endian Platform )
--------
{noformat}
+----------+----------+
\|        \_1\|        \_2\|
+----------+----------+
\|1279869254\|FAILTi\|
+----------+----------+
{noformat}

Explanation
---------------
Internally the String variable in the unsafe row is not updated after an unsafe row join operation.
The displayed string is corrupted and shows part of the integer ( interpreted as a string ) along with "Ti"
The column names also look different on a Little Endian platform.

Result ( on a Big Endian Platform )
{noformat}
+----------+------------------+
\|     value\|nameAgg$(name,age)\|
+----------+------------------+
\|1279869254\|        LIAFTi\|
+----------+------------------+
{noformat}

The following Unit test also fails ( but only explicitly on a Big Endian platorm )

{code}
org.apache.spark.sql.DatasetAggregatorSuite

- typed aggregation: class input with reordering \*\*\* FAILED \*\*\*
  Results do not match for query:
  == Parsed Logical Plan ==
  Aggregate [value#748], [value#748,(ClassInputAgg$(b#650,a#651),mode=Complete,isDistinct=false) AS ClassInputAgg$(b,a)#762]
  +- AppendColumns \<function1\>, class[a[0]: int, b[0]: string], class[value[0]: string], [value#748]
     +- Project [one AS b#650,1 AS a#651]
        +- OneRowRelation$
  
  == Analyzed Logical Plan ==
  value: string, ClassInputAgg$(b,a): int
  Aggregate [value#748], [value#748,(ClassInputAgg$(b#650,a#651),mode=Complete,isDistinct=false) AS ClassInputAgg$(b,a)#762]
  +- AppendColumns \<function1\>, class[a[0]: int, b[0]: string], class[value[0]: string], [value#748]
     +- Project [one AS b#650,1 AS a#651]
        +- OneRowRelation$
  
  == Optimized Logical Plan ==
  Aggregate [value#748], [value#748,(ClassInputAgg$(b#650,a#651),mode=Complete,isDistinct=false) AS ClassInputAgg$(b,a)#762]
  +- AppendColumns \<function1\>, class[a[0]: int, b[0]: string], class[value[0]: string], [value#748]
     +- Project [one AS b#650,1 AS a#651]
        +- OneRowRelation$
  
  == Physical Plan ==
  TungstenAggregate(key=[value#748], functions=[(ClassInputAgg$(b#650,a#651),mode=Final,isDistinct=false)], output=[value#748,ClassInputAgg$(b,a)#762])
  +- TungstenExchange hashpartitioning(value#748,5), None
     +- TungstenAggregate(key=[value#748], functions=[(ClassInputAgg$(b#650,a#651),mode=Partial,isDistinct=false)], output=[value#748,value#758])
        +- !AppendColumns \<function1\>, class[a[0]: int, b[0]: string], class[value[0]: string], [value#748]
           +- Project [one AS b#650,1 AS a#651]
              +- Scan OneRowRelation[]
  == Results ==
  !== Correct Answer - 1 ==   == Spark Answer - 1 ==
  ![one,1]                    [one,9] (QueryTest.scala:127)
{code}


---

* [SPARK-14897](https://issues.apache.org/jira/browse/SPARK-14897) | *Major* | **Upgrade Jetty to latest version of 8/9**

It looks like the head/master branch of Spark uses quite an old version of Jetty: 8.1.14.v20131031

There have been some announcement of security vulnerabilities, notably in 2015 and there are versions of both 8 and 9 that address those. We recently left a web-ui port open and had the server compromised within days. Albeit, this upgrade shouldn't be the only security improvement made, the current version is clearly vulnerable, as-is.


---

* [SPARK-15652](https://issues.apache.org/jira/browse/SPARK-15652) | *Critical* | **Missing org.apache.spark.launcher.SparkAppHandle.Listener notification if SparkSubmit JVM shutsdown**

h6. Problem
In case SparkSubmit JVM goes down even before sending the job complete notification; the \_org.apache.spark.launcher.SparkAppHandle.Listener\_ will not receive any notification which may lead to the client using SparkLauncher hang indefinitely.
h6. Root Cause
No proper exception handling at org.apache.spark.launcher.LauncherConnection#run when an EOFException is encountered while reading over Socket Stream. Mostly EOFException will be thrown at the suggested point(\_org.apache.spark.launcher.LauncherConnection.run(LauncherConnection.java:58)\_) if the SparkSubmit JVM is shutdown. 
Probably, it was assumed that SparkSubmit JVM can shut down only with normal healthy completion but, there could be scenarios where this is not the case:
# OS kill the SparkSubmit process using OOM Killer.
# Exception while SparkSubmit submits the job, even before it starts monitoring the application. This can happen if SparkLauncher is not configured properly. There might be no exception handling in org.apache.spark.deploy.yarn.Client#submitApplication(), which may lead to any exception/throwable at this point lead to shutting down of JVM without proper finalisation

h6. Possible Solutions
# In case of EOFException or any other exception notify the listeners that job has failed
# Better exception handling on the SparkSubmit JVM side (though this may not resolve the problem completely)


---

* [SPARK-15851](https://issues.apache.org/jira/browse/SPARK-15851) | *Major* | **Spark 2.0 does not compile in Windows 7**

Spark does not compile in Windows 7.
"mvn compile" fails on spark-core due to trying to execute a bash script spark-build-info.

Work around:
1)Install win-bash and put in path
2)Change line 350 of core/pom.xml
                \<exec executable="bash"\>
                  \<arg value="${project.basedir}/../build/spark-build-info"/\>
                  \<arg value="${project.build.directory}/extra-resources"/\>
                  \<arg value="${pom.version}"/\>
                \</exec\>

Error trace:
[ERROR] Failed to execute goal org.apache.maven.plugins:maven-antrun-plugin:1.8:run (default) on project spark-core\_2.11: An Ant BuildException has occured: Execute failed: java.io.IOException: Cannot run program "C:\\dev\\spark\\core\\..\\build\\spark-build-info" (in directory "C:\\dev\\spark\\core"): CreateProcess error=193, %1 is not a valid Win32 application
[ERROR] around Ant part ...\<exec executable="C:\\dev\\spark\\core/../build/spark-build-info"\>... @ 4:73 in C:\\dev\\spark\\core\\target\\antrun\\build-main.xml


---

* [SPARK-13709](https://issues.apache.org/jira/browse/SPARK-13709) | *Major* | **Spark unable to decode Avro when partitioned**

There is a problem decoding Avro data with SparkSQL when partitioned. The schema and encoded data are valid -- I'm able to decode the data with the avro-tools CLI utility. I'm also able to decode the data with non-partitioned SparkSQL tables, Hive, other tools as well... except partitioned SparkSQL schemas.

For a simple example, I took the example schema and data found in the Oracle documentation here:

\*Schema\*
{code:javascript}
{
  "type": "record",
  "name": "MemberInfo",
  "namespace": "avro",
  "fields": [
    {"name": "name", "type": {
      "type": "record",
      "name": "FullName",
      "fields": [
        {"name": "first", "type": "string"},
        {"name": "last", "type": "string"}
      ]
    }},
    {"name": "age", "type": "int"},
    {"name": "address", "type": {
      "type": "record",
      "name": "Address",
      "fields": [
        {"name": "street", "type": "string"},
        {"name": "city", "type": "string"},
        {"name": "state", "type": "string"},
        {"name": "zip", "type": "int"}
      ]
    }}
  ]
} 
{code}

\*Data\*
{code:javascript}
{
  "name": {
    "first": "Percival",
    "last":  "Lowell"
  },
  "age": 156,
  "address": {
    "street": "Mars Hill Rd",
    "city": "Flagstaff",
    "state": "AZ",
    "zip": 86001
  }
}
{code}

\*Create\* (no partitions - works)
If I create with no partitions, I'm able to query the data just fine.

{code:sql}
CREATE EXTERNAL TABLE IF NOT EXISTS foo
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe'
STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat'
OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat'
LOCATION '/path/to/data/dir'
TBLPROPERTIES ('avro.schema.url'='/path/to/schema.avsc');
{code}

\*Create\* (partitions -- does NOT work)
If I create with no partitions, and then manually add a partition, all of my queries return an error. (I need to manually add partitions because I cannot control the structure of the data directories, so dynamic partitioning is not an option.)

{code:sql}
CREATE EXTERNAL TABLE IF NOT EXISTS foo
PARTITIONED BY (ds STRING)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe'
STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat'
OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat'
TBLPROPERTIES ('avro.schema.url'='/path/to/schema.avsc');

ALTER TABLE foo ADD PARTITION (ds='1') LOCATION '/path/to/data/dir';
{code}

The error:

{code}
spark-sql\> SELECT \* FROM foo WHERE ds = '1';

Driver stacktrace:
    at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$failJobAndIndependentStages(DAGScheduler.scala:1431)
    at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1419)
    at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1418)
    at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
    at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
    at org.apache.spark.scheduler.DAGScheduler.abortStage(DAGScheduler.scala:1418)
    at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:799)
    at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:799)
    at scala.Option.foreach(Option.scala:236)
    at org.apache.spark.scheduler.DAGScheduler.handleTaskSetFailed(DAGScheduler.scala:799)
    at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.doOnReceive(DAGScheduler.scala:1640)
    at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1599)
    at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1588)
    at org.apache.spark.util.EventLoop$$anon$1.run(EventLoop.scala:48)
    at org.apache.spark.scheduler.DAGScheduler.runJob(DAGScheduler.scala:620)
    at org.apache.spark.SparkContext.runJob(SparkContext.scala:1832)
    at org.apache.spark.SparkContext.runJob(SparkContext.scala:1845)
    at org.apache.spark.SparkContext.runJob(SparkContext.scala:1858)
    at org.apache.spark.SparkContext.runJob(SparkContext.scala:1929)
    at org.apache.spark.rdd.RDD$$anonfun$collect$1.apply(RDD.scala:927)
    at org.apache.spark.rdd.RDDOperationScope$.withScope(RDDOperationScope.scala:150)
    at org.apache.spark.rdd.RDDOperationScope$.withScope(RDDOperationScope.scala:111)
    at org.apache.spark.rdd.RDD.withScope(RDD.scala:316)
    at org.apache.spark.rdd.RDD.collect(RDD.scala:926)
    at org.apache.spark.sql.execution.SparkPlan.executeCollect(SparkPlan.scala:166)
    at org.apache.spark.sql.execution.SparkPlan.executeCollectPublic(SparkPlan.scala:174)
    at org.apache.spark.sql.hive.HiveContext$QueryExecution.stringResult(HiveContext.scala:635)
    at org.apache.spark.sql.hive.thriftserver.SparkSQLDriver.run(SparkSQLDriver.scala:64)
    at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver.processCmd(SparkSQLCLIDriver.scala:308)
    at org.apache.hadoop.hive.cli.CliDriver.processLine(CliDriver.java:376)
    at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver$.main(SparkSQLCLIDriver.scala:226)
    at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver.main(SparkSQLCLIDriver.scala)
    at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    at java.lang.reflect.Method.invoke(Method.java:483)
    at org.apache.spark.deploy.SparkSubmit$.org$apache$spark$deploy$SparkSubmit$$runMain(SparkSubmit.scala:731)
    at org.apache.spark.deploy.SparkSubmit$.doRunMain$1(SparkSubmit.scala:181)
    at org.apache.spark.deploy.SparkSubmit$.submit(SparkSubmit.scala:206)
    at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:121)
    at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)
Caused by: org.apache.avro.AvroTypeException: Found avro.FullName, expecting union
    at org.apache.avro.io.ResolvingDecoder.doAction(ResolvingDecoder.java:292)
    at org.apache.avro.io.parsing.Parser.advance(Parser.java:88)
    at org.apache.avro.io.ResolvingDecoder.readIndex(ResolvingDecoder.java:267)
    at org.apache.avro.generic.GenericDatumReader.read(GenericDatumReader.java:155)
    at org.apache.avro.generic.GenericDatumReader.readField(GenericDatumReader.java:193)
    at org.apache.avro.generic.GenericDatumReader.readRecord(GenericDatumReader.java:183)
    at org.apache.avro.generic.GenericDatumReader.read(GenericDatumReader.java:151)
    at org.apache.avro.generic.GenericDatumReader.read(GenericDatumReader.java:142)
    at org.apache.hadoop.hive.serde2.avro.AvroDeserializer$SchemaReEncoder.reencode(AvroDeserializer.java:111)
    at org.apache.hadoop.hive.serde2.avro.AvroDeserializer.deserialize(AvroDeserializer.java:175)
    at org.apache.hadoop.hive.serde2.avro.AvroSerDe.deserialize(AvroSerDe.java:201)
    at org.apache.spark.sql.hive.HadoopTableReader$$anonfun$fillObject$2.apply(TableReader.scala:409)
    at org.apache.spark.sql.hive.HadoopTableReader$$anonfun$fillObject$2.apply(TableReader.scala:408)
    at scala.collection.Iterator$$anon$11.next(Iterator.scala:328)
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
    at org.apache.spark.rdd.RDD$$anonfun$collect$1$$anonfun$12.apply(RDD.scala:927)
    at org.apache.spark.rdd.RDD$$anonfun$collect$1$$anonfun$12.apply(RDD.scala:927)
    at org.apache.spark.SparkContext$$anonfun$runJob$5.apply(SparkContext.scala:1858)
    at org.apache.spark.SparkContext$$anonfun$runJob$5.apply(SparkContext.scala:1858)
    at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:66)
    at org.apache.spark.scheduler.Task.run(Task.scala:89)
    at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:213)
    at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
    at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
    at java.lang.Thread.run(Thread.java:745)
{code}

\*Additional Info\*
For what it's worth, I found an issue (DRILL-957) reported in Apache Drill and related fix that look very simliar to this. I'll look that to this issue.

Originally [posted here\|http://stackoverflow.com/questions/35826850/spark-unable-to-decode-avro-when-partitioned] on StackOverflow as a question, but I felt strongly that this is indeed a bug so I created this issue.


---

* [SPARK-18709](https://issues.apache.org/jira/browse/SPARK-18709) | *Major* | **Automatic null conversion bug (instead of throwing error) when creating a Spark Datarame with incompatible types for fields.**

When converting an RDD with a \`float\` type field to a spark dataframe with an \`IntegerType\` / \`LongType\` schema field, spark 1.6.2 and 1.6.3 silently convert the field values to nulls instead of throwing an error like \`LongType can not accept object \_\_\_ in type \<type 'float'\>\`. However, this seems to be fixed in Spark 2.0.2.


The following example should make the problem clear:
{code}
from pyspark.sql.types import StructField, StructType, LongType, DoubleType

schema = StructType([
        StructField("0", LongType(), True),
        StructField("1", DoubleType(), True),
    ])

data = [[1.0, 1.0], [nan, 2.0]]
spark\_df = sqlContext.createDataFrame(sc.parallelize(data), schema)
spark\_df.show()
{code}

Instead of throwing an error like:
{code}
LongType can not accept object 1.0 in type \<type 'float'\>
{code}

Spark converts all the values in the first column to nulls

Running \`spark\_df.show()\` gives:
{code}
+----+---+
\|   0\|  1\|
+----+---+
\|null\|1.0\|
\|null\|1.0\|
+----+---+
{code}

For the purposes of my computation, I'm doing a \`mapPartitions\` on a spark data frame, and for each partition, converting it into a pandas data frame, doing a few computations on this pandas dataframe and the return value will be a list of lists, which is converted to an RDD while being returned from 'mapPartitions' (for all partitions). This RDD is then converted into a spark dataframe similar to the example above, using \`sqlContext.createDataFrame(rdd, schema)\`. The rdd has a column that should be converted to a \`LongType\` in the spark data frame, but since it has missing values, it is a \`float\` type. When spark tries to create the data frame, it converts all the values in that column to nulls instead of throwing an error that there is a type mismatch.


---

* [SPARK-7661](https://issues.apache.org/jira/browse/SPARK-7661) | *Major* | **Support for dynamic allocation of resources in Kinesis Spark Streaming**

Currently the no. of cores is (N + 1), where N is no. of shards in a Kinesis Stream.

My Requirement is that if I use this Resharding util for Amazon Kinesis :

Amazon Kinesis Resharding : https://github.com/awslabs/amazon-kinesis-scaling-utils

Then there should be some way to allocate executors on the basis of no. of shards directly (for Spark Streaming only).



