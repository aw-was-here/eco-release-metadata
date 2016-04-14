
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
# Apache Spark  1.6.1 Release Notes

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



