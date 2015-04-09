
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
#  1.2.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [SPARK-6667](https://issues.apache.org/jira/browse/SPARK-6667) | *Blocker* | **hang while collect in PySpark**

PySpark tests hang while collecting:


---

* [SPARK-6578](https://issues.apache.org/jira/browse/SPARK-6578) | *Blocker* | **Outbound channel in network library is not thread-safe, can lead to fetch failures**

There is a very narrow race in the outbound channel of the network library. While netty guarantees that the inbound channel is thread-safe, the same is not true for the outbound channel: multiple threads can be writing and running the pipeline at the same time.

This leads to an issue with MessageEncoder and the optimization it performs for zero-copy of file data: since a single RPC can be broken into multiple buffers (for , example when replying to a chunk request), if you have multiple threads writing these RPCs then they can be mixed up in the final socket. That breaks framing and will cause the receiving side to not understand the messages.

Patch coming up shortly.


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

* [SPARK-6414](https://issues.apache.org/jira/browse/SPARK-6414) | *Critical* | **Spark driver failed with NPE on job cancelation**

When a job group is cancelled, we scan through all jobs to determine which are members of the group. This scan assumes that the job group property is always set. If 'properties' is null in an active job, you get an NPE.

We just need to make sure we ignore ones where activeJob.properties is null. We should also make sure it works if the particular property is missing.

https://github.com/apache/spark/blob/branch-1.3/core/src/main/scala/org/apache/spark/scheduler/DAGScheduler.scala#L678


---

* [SPARK-6313](https://issues.apache.org/jira/browse/SPARK-6313) | *Critical* | **Fetch File Lock file creation doesnt work when Spark working dir is on a NFS mount**

When running in cluster mode and mounting the spark work dir on a NFS volume (or some volume which doesn't support file locking), the fetchFile (used for downloading JARs etc on the executors) method in Spark Utils class will fail. This file locking was introduced as an improvement with SPARK-2713. 

See https://github.com/apache/spark/blob/master/core/src/main/scala/org/apache/spark/util/Utils.scala#L415 

Introduced in 1.2 in commit; https://github.com/apache/spark/commit/7aacb7bfad4ec73fd8f18555c72ef696 

As this locking is for optimisation for fetching files, could we take a different approach here to create a temp/advisory lock file? 

Typically you would just mount local disks (in say ext4 format) and provide this as a comma separated list however we are trying to run Spark on MapR. With MapR we can do a loop back mount to a volume on the local node and take advantage of MapRs disk pools. This also means we dont need specific mounts for Spark and improves the generic nature of the cluster.


---

* [SPARK-6294](https://issues.apache.org/jira/browse/SPARK-6294) | *Critical* | **PySpark task may hang while call take() on in Java/Scala**

{code}
>>> rdd = sc.parallelize(range(1<<20)).map(lambda x: str(x))
>>> rdd.\_jrdd.first()
{code}

There is the stacktrace while hanging:

{code}
"Executor task launch worker-5" daemon prio=10 tid=0x00007f8fd01a9800 nid=0x566 in Object.wait() [0x00007f90481d7000]
   java.lang.Thread.State: WAITING (on object monitor)
	at java.lang.Object.wait(Native Method)
	- waiting on <0x0000000630929340> (a org.apache.spark.api.python.PythonRDD$WriterThread)
	at java.lang.Thread.join(Thread.java:1281)
	- locked <0x0000000630929340> (a org.apache.spark.api.python.PythonRDD$WriterThread)
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

* [SPARK-6167](https://issues.apache.org/jira/browse/SPARK-6167) | *Minor* | **Previous Commit Broke BroadcastTest**

Commit associated with SPARK-1010 spell class names incorrectly (BroaddcastFactory instead of BroadcastFactory).  As a result, the BroadcastTest doesn't work.


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

* [SPARK-6055](https://issues.apache.org/jira/browse/SPARK-6055) | *Blocker* | **Memory leak in pyspark sql due to incorrect equality check**

The \_\_eq\_\_ of DataType is not correct, class cache is not used correctly (created class can not be find by dataType), then it will create lots of classes (saved in \_cached\_cls), never released.

Also, all same DataType have same hash code, there will be many object in a dict with the same hash code, end with hash attach, it's very slow to access this dict (depends on the implementation of CPython).


---

* [SPARK-6033](https://issues.apache.org/jira/browse/SPARK-6033) | *Minor* | **the description abou the "spark.worker.cleanup.enabled" is not matched with the code**

Some error about the section \_Cluster Launch Scripts\_ in the http://spark.apache.org/docs/latest/spark-standalone.html

In the description about the property spark.worker.cleanup.enabled, it states that *all the directory* under the work dir will be removed whether the application is running or not.

After checking the implementation in the code level, I found that +only the stopped application+ dirs would be removed. So the description in the document is incorrect.

the code implementation in worker.scala
{code: title=WorkDirCleanup}
case WorkDirCleanup =>
      // Spin up a separate thread (in a future) to do the dir cleanup; don't tie up worker actor
      val cleanupFuture = concurrent.future {
        val appDirs = workDir.listFiles()
        if (appDirs == null) {
          throw new IOException("ERROR: Failed to list files in " + appDirs)
        }
        appDirs.filter { dir =>
          // the directory is used by an application - check that the application is not running
          // when cleaning up
          val appIdFromDir = dir.getName
          val isAppStillRunning = executors.values.map(\_.appId).contains(appIdFromDir)
          dir.isDirectory && !isAppStillRunning &&
          !Utils.doesDirectoryContainAnyNewFiles(dir, APP\_DATA\_RETENTION\_SECS)
        }.foreach { dir => 
          logInfo(s"Removing directory: ${dir.getPath}")
          Utils.deleteRecursively(dir)
        }
      }

      cleanupFuture onFailure {
        case e: Throwable =>
          logError("App dir cleanup failed: " + e.getMessage, e)
      }
{code}


---

* [SPARK-6018](https://issues.apache.org/jira/browse/SPARK-6018) | *Minor* | **NoSuchMethodError in Spark app is swallowed by YARN AM**

I discovered this bug while testing 1.3 RC with old 1.2 Spark job that I had. Due to changes in DF and SchemaRDD, my app failed with {{java.lang.NoSuchMethodError}}. However, AM was marked as succeeded, and the error was silently swallowed.

The problem is that pattern matching in Spark AM fails to catch NoSuchMethodError-
{code}
15/02/25 20:13:27 INFO cluster.YarnClusterScheduler: YarnClusterScheduler.postStartHook done
Exception in thread "Driver" scala.MatchError: java.lang.NoSuchMethodError: org.apache.spark.sql.hive.HiveContext.table(Ljava/lang/String;)Lorg/apache/spark/sql/SchemaRDD; (of class java.lang.NoSuchMethodError)
	at org.apache.spark.deploy.yarn.ApplicationMaster$$anon$2.run(ApplicationMaster.scala:485)
{code}


---

* [SPARK-6015](https://issues.apache.org/jira/browse/SPARK-6015) | *Minor* | **Backport Python doc source code link fix to 1.2**

The Python docs display {code}[source]{code} links which should link to source code, but none work in the documentation provided on the Apache Spark website.  E.g., go here [https://spark.apache.org/docs/latest/api/python/pyspark.mllib.html#module-pyspark.mllib.regression] and click a source code link on the right.

The PR for [SPARK-5994] included a fix of this for 1.3 which should be backported to 1.2.


---

* [SPARK-5973](https://issues.apache.org/jira/browse/SPARK-5973) | *Blocker* | **zip two rdd with AutoBatchedSerializer will fail**

zip two rdd with AutoBatchedSerializer will fail, this bug was introduced by SPARK-4841

{code}
>> a.zip(b).count()
15/02/24 12:11:56 ERROR PythonRDD: Python worker exited unexpectedly (crashed)
org.apache.spark.api.python.PythonException: Traceback (most recent call last):
  File "/Users/davies/work/spark/python/pyspark/worker.py", line 101, in main
    process()
  File "/Users/davies/work/spark/python/pyspark/worker.py", line 96, in process
    serializer.dump\_stream(func(split\_index, iterator), outfile)
  File "/Users/davies/work/spark/python/pyspark/rdd.py", line 2249, in pipeline\_func
    return func(split, prev\_func(split, iterator))
  File "/Users/davies/work/spark/python/pyspark/rdd.py", line 2249, in pipeline\_func
    return func(split, prev\_func(split, iterator))
  File "/Users/davies/work/spark/python/pyspark/rdd.py", line 270, in func
    return f(iterator)
  File "/Users/davies/work/spark/python/pyspark/rdd.py", line 933, in <lambda>
    return self.mapPartitions(lambda i: [sum(1 for \_ in i)]).sum()
  File "/Users/davies/work/spark/python/pyspark/rdd.py", line 933, in <genexpr>
    return self.mapPartitions(lambda i: [sum(1 for \_ in i)]).sum()
  File "/Users/davies/work/spark/python/pyspark/serializers.py", line 306, in load\_stream
    " in pair: (%d, %d)" % (len(keys), len(vals)))
ValueError: Can not deserialize RDD with different number of items in pair: (123, 64)
{code}


---

* [SPARK-5967](https://issues.apache.org/jira/browse/SPARK-5967) | *Blocker* | **JobProgressListener.stageIdToActiveJobIds never cleared**

The hashmap stageIdToActiveJobIds in JobProgressListener is never cleared. So the hashmap keep increasing in size indefinitely. This is a blocker for 24/7 running applications like Spark Streaming apps.


---

* [SPARK-5889](https://issues.apache.org/jira/browse/SPARK-5889) | *Minor* | **remove pid file in spark-daemon.sh after killing the process.**

Currently, if the thriftserver/history server are stopped. The pid file is not deleted. The fix is trial, but it is important for some service checking relying on the file.


---

* [SPARK-5846](https://issues.apache.org/jira/browse/SPARK-5846) | *Critical* | **Spark SQL does not correctly set job description and scheduler pool**

Spark SQL current sets the scheduler pool and job description AFTER jobs run (see https://github.com/apache/spark/blob/master/sql/hive-thriftserver/v0.13.1/src/main/scala/org/apache/spark/sql/hive/thriftserver/Shim13.scala#L168 -- which happens after calling hiveContext.sql).  As a result, the description for a SQL job ends up being the SQL query corresponding to the previous job.  This should be done before the job is run so the description is correct.


---

* [SPARK-5825](https://issues.apache.org/jira/browse/SPARK-5825) | *Blocker* | **Failure stopping Services while command line argument is too long**

Stopping service in `spark-daemon.sh` will confirm the process id by fuzzy matching the class name, however, it will fail if the java process arguments is very long (greater than 4096).


---

* [SPARK-5805](https://issues.apache.org/jira/browse/SPARK-5805) | *Minor* | **Fix the type error in the final example given in MLlib - Clustering documentation**

The final example in [MLlib - Clustering|http://spark.apache.org/docs/1.2.0/mllib-clustering.html] documentation has a code line that leads to a type error. 

The problematic line reads as:

{code}
model.predictOnValues(testData).print()
{code}

but it should be

{code}
model.predictOnValues(testData.map(lp => (lp.label, lp.features))).print()
{code}


---

* [SPARK-5788](https://issues.apache.org/jira/browse/SPARK-5788) | *Blocker* | **Capture exceptions in Python write thread**

The exception in Python writer thread will shutdown executor.


---

* [SPARK-5765](https://issues.apache.org/jira/browse/SPARK-5765) | *Major* | **word split problem in run-example and compute-classpath**

Work split problem in spark directory path in scripts
run-example and compute-classpath.sh

This was introduced in defect fix SPARK-4504


---

* [SPARK-5749](https://issues.apache.org/jira/browse/SPARK-5749) | *Major* | **Fix Bash word splitting bugs in compute-classpath.sh**

For example [this line|https://github.com/apache/spark/blob/fa6bdc6e819f9338248b952ec578bcd791ddbf6d/bin/compute-classpath.sh#L79] has a word splitting bug.

{code}
for f in ${assembly\_folder}/spark-assembly*hadoop*.jar; do
  if [[ ! -e "$f" ]]; then
    echo "Failed to find Spark assembly in $assembly\_folder" 1>&2
    echo "You need to build Spark before running this program." 1>&2
    exit 1
  fi
  ASSEMBLY\_JAR="$f"
  num\_jars=$((num\_jars+1))
done
{code}

If {{assembly\_folder}} contains a space, this block of code will fail.


---

* [SPARK-5728](https://issues.apache.org/jira/browse/SPARK-5728) | *Trivial* | **MQTTStreamSuite leaves behind ActiveMQ database files**

I've seen this several times and finally wanted to fix it: {{MQTTStreamSuite}} uses a local ActiveMQ broker, that creates a working dir for its database in the {{external/mqtt}} directory called {{activemq}}. This doesn't get cleaned up, at least often it does not for me. It's trivial to set it to use a temp directory which the test harness does clean up.


---

* [SPARK-5722](https://issues.apache.org/jira/browse/SPARK-5722) | *Major* | **Infer\_schema\_type incorrect for Integers in pyspark**

The Integers datatype in Python does not match what a Scala/Java integer is defined as.   This causes inference of data types and schemas to fail when data is larger than 2^32 and it is inferred incorrectly as an Integer.

Since the range of valid Python integers is wider than Java Integers, this causes problems when inferring Integer vs. Long datatypes.  This will cause problems when attempting to save SchemaRDD as Parquet or JSON.

Here's an example:
{code}
>>> sqlCtx = SQLContext(sc)
>>> from pyspark.sql import Row
>>> rdd = sc.parallelize([Row(f1='a', f2=100000000000000)])
>>> srdd = sqlCtx.inferSchema(rdd)
>>> srdd.schema()
StructType(List(StructField(f1,StringType,true),StructField(f2,IntegerType,true)))
{code}
That number is a LongType in Java, but an Integer in python.  We need to check the value to see if it should really by a LongType when a IntegerType is initially inferred.

More tests:
{code}
>>> from pyspark.sql import \_infer\_type
# OK
>>> print \_infer\_type(1)
IntegerType
# OK
>>> print \_infer\_type(2**31-1)
IntegerType
#WRONG
>>> print \_infer\_type(2**31)
#WRONG
IntegerType
>>> print \_infer\_type(2**61 )
#OK
IntegerType
>>> print \_infer\_type(2**71 )
LongType
{code}

Java Primitive Types defined:
http://docs.oracle.com/javase/tutorial/java/nutsandbolts/datatypes.html

Python Built-in Types:
https://docs.python.org/2/library/stdtypes.html#typesnumeric


---

* [SPARK-5703](https://issues.apache.org/jira/browse/SPARK-5703) | *Critical* | **AllJobsPage throws empty.max error**

In JobProgressListener, if you have a JobEnd that does not have a corresponding JobStart, AND you render the AllJobsPage, then you'll run into the empty.max exception.

I ran into this when trying to replay parts of an event log after trimming a few events. Not a common use case I agree, but I'd argue that it should never fail on empty.max.


---

* [SPARK-5698](https://issues.apache.org/jira/browse/SPARK-5698) | *Critical* | **Dynamic allocation: do not allow user to request a negative delta**

If the user calls the following in series:

sc.requestExecutors(-5)
sc.killExecutor(...)

Then we might crash the ApplicationMaster. Why?

Well, if we request a negative number of additional executors, then the YarnAllocator will lower the target number of executors it is trying to achieve by 5. This might shoot the target number past 0. Then, if so, when we try to kill an executor it will fail the assertion that the target number must be >=0.


---

* [SPARK-5691](https://issues.apache.org/jira/browse/SPARK-5691) | *Major* | **Preventing duplicate registering of an application has incorrect logic**

If an application registers twice with the Master, the Master accepts both copies and they both show up in the UI and consume resources. This is incorrect behavior.

This happens inadvertently in regular usage when the Master is under high load, but it boils down to: when an application times out registering with the master and sends a second registration message, but the Master is still alive, it processes the first registration message for the application but also erroneously processes the second registration message instead of discarding it.


---

* [SPARK-5679](https://issues.apache.org/jira/browse/SPARK-5679) | *Critical* | **Flaky tests in o.a.s.metrics.InputOutputMetricsSuite: input metrics with interleaved reads and input metrics with mixed read method**

Please audit these and see if there are any assumptions with respect to File IO that might not hold in all cases. I'm happy to help if you can't find anything.

These both failed in the same run:
https://amplab.cs.berkeley.edu/jenkins/view/Spark/job/Spark-1.3-SBT/38/AMPLAB\_JENKINS\_BUILD\_PROFILE=hadoop2.2,label=centos/#showFailuresLink

{code}
org.apache.spark.metrics.InputOutputMetricsSuite.input metrics with mixed read method

Failing for the past 13 builds (Since Failed#26 )
Took 48 sec.
Error Message

20300000 did not equal 6496
Stacktrace

sbt.ForkMain$ForkError: 20300000 did not equal 6496
	at org.scalatest.Assertions$class.newAssertionFailedException(Assertions.scala:500)
	at org.scalatest.FunSuite.newAssertionFailedException(FunSuite.scala:1555)
	at org.scalatest.Assertions$AssertionsHelper.macroAssert(Assertions.scala:466)
	at org.apache.spark.metrics.InputOutputMetricsSuite$$anonfun$9.apply$mcV$sp(InputOutputMetricsSuite.scala:135)
	at org.apache.spark.metrics.InputOutputMetricsSuite$$anonfun$9.apply(InputOutputMetricsSuite.scala:113)
	at org.apache.spark.metrics.InputOutputMetricsSuite$$anonfun$9.apply(InputOutputMetricsSuite.scala:113)
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
	at org.apache.spark.metrics.InputOutputMetricsSuite.org$scalatest$BeforeAndAfter$$super$runTest(InputOutputMetricsSuite.scala:46)
	at org.scalatest.BeforeAndAfter$class.runTest(BeforeAndAfter.scala:200)
	at org.apache.spark.metrics.InputOutputMetricsSuite.runTest(InputOutputMetricsSuite.scala:46)
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
	at org.apache.spark.metrics.InputOutputMetricsSuite.org$scalatest$BeforeAndAfterAll$$super$run(InputOutputMetricsSuite.scala:46)
	at org.scalatest.BeforeAndAfterAll$class.liftedTree1$1(BeforeAndAfterAll.scala:257)
	at org.scalatest.BeforeAndAfterAll$class.run(BeforeAndAfterAll.scala:256)
	at org.apache.spark.metrics.InputOutputMetricsSuite.org$scalatest$BeforeAndAfter$$super$run(InputOutputMetricsSuite.scala:46)
	at org.scalatest.BeforeAndAfter$class.run(BeforeAndAfter.scala:241)
	at org.apache.spark.metrics.InputOutputMetricsSuite.run(InputOutputMetricsSuite.scala:46)
	at org.scalatest.tools.Framework.org$scalatest$tools$Framework$$runSuite(Framework.scala:462)
	at org.scalatest.tools.Framework$ScalaTestTask.execute(Framework.scala:671)
	at sbt.ForkMain$Run$2.call(ForkMain.java:294)
	at sbt.ForkMain$Run$2.call(ForkMain.java:284)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
{code}

Second one:

{code}
org.apache.spark.metrics.InputOutputMetricsSuite.input metrics with interleaved reads

Failing for the past 13 builds (Since Failed#26 )
Took 19 sec.
Error Message

2125000 did not equal 2000040
Stacktrace

sbt.ForkMain$ForkError: 2125000 did not equal 2000040
	at org.scalatest.Assertions$class.newAssertionFailedException(Assertions.scala:500)
	at org.scalatest.FunSuite.newAssertionFailedException(FunSuite.scala:1555)
	at org.scalatest.Assertions$AssertionsHelper.macroAssert(Assertions.scala:466)
	at org.apache.spark.metrics.InputOutputMetricsSuite$$anonfun$31.apply$mcV$sp(InputOutputMetricsSuite.scala:289)
	at org.apache.spark.metrics.InputOutputMetricsSuite$$anonfun$31.apply(InputOutputMetricsSuite.scala:254)
	at org.apache.spark.metrics.InputOutputMetricsSuite$$anonfun$31.apply(InputOutputMetricsSuite.scala:254)
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
	at org.apache.spark.metrics.InputOutputMetricsSuite.org$scalatest$BeforeAndAfter$$super$runTest(InputOutputMetricsSuite.scala:46)
	at org.scalatest.BeforeAndAfter$class.runTest(BeforeAndAfter.scala:200)
	at org.apache.spark.metrics.InputOutputMetricsSuite.runTest(InputOutputMetricsSuite.scala:46)
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
	at org.apache.spark.metrics.InputOutputMetricsSuite.org$scalatest$BeforeAndAfterAll$$super$run(InputOutputMetricsSuite.scala:46)
	at org.scalatest.BeforeAndAfterAll$class.liftedTree1$1(BeforeAndAfterAll.scala:257)
	at org.scalatest.BeforeAndAfterAll$class.run(BeforeAndAfterAll.scala:256)
	at org.apache.spark.metrics.InputOutputMetricsSuite.org$scalatest$BeforeAndAfter$$super$run(InputOutputMetricsSuite.scala:46)
	at org.scalatest.BeforeAndAfter$class.run(BeforeAndAfter.scala:241)
	at org.apache.spark.metrics.InputOutputMetricsSuite.run(InputOutputMetricsSuite.scala:46)
	at org.scalatest.tools.Framework.org$scalatest$tools$Framework$$runSuite(Framework.scala:462)
	at org.scalatest.tools.Framework$ScalaTestTask.execute(Framework.scala:671)
	at sbt.ForkMain$Run$2.call(ForkMain.java:294)
	at sbt.ForkMain$Run$2.call(ForkMain.java:284)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
{code}


---

* [SPARK-5655](https://issues.apache.org/jira/browse/SPARK-5655) | *Critical* | **YARN Auxiliary Shuffle service can't access shuffle files on Hadoop cluster configured in secure mode**

When running a Spark job on a YARN cluster which doesn't run containers under the same user as the nodemanager, and also when using the YARN auxiliary shuffle service, jobs fail with something similar to:
{code:java}
java.io.FileNotFoundException: /data/9/yarn/nm/usercache/username/appcache/application\_1423069181231\_0032/spark-c434a703-7368-4a05-9e99-41e77e564d1d/3e/shuffle\_0\_0\_0.index (Permission denied)
{code}

The root cause of this here: https://github.com/apache/spark/blob/branch-1.2/core/src/main/scala/org/apache/spark/util/Utils.scala#L287

Spark will attempt to chmod 700 any application directories it creates during the job, which includes files created in the nodemanager's usercache directory. The owner of these files is the container UID, which on a secure cluster is the name of the user creating the job, and on an nonsecure cluster but with the yarn.nodemanager.container-executor.class configured is the value of yarn.nodemanager.linux-container-executor.nonsecure-mode.local-user.

The problem with this is that the auxiliary shuffle manager runs as part of the nodemanager, which is typically running as the user 'yarn'. This can't access these files that are only owner-readable.

YARN already attempts to secure files created under appcache but keep them readable by the nodemanager, by setting the group of the appcache directory to 'yarn' and also setting the setgid flag. This means that files and directories created under this should also have the 'yarn' group. Normally this means that the nodemanager should also be able to read these files, but Spark setting chmod700 wipes this out.

I'm not sure what the right approach is here. Commenting out the chmod700 functionality makes this work on YARN, and still makes the application files only readable by the owner and the group:

{code}
/data/1/yarn/nm/usercache/username/appcache/application\_1423247249655\_0001/spark-c7a6fc0f-e5df-49cf-a8f5-e51a1ca087df/0c # ls -lah
total 206M
drwxr-s---  2 nobody yarn 4.0K Feb  6 18:30 .
drwxr-s--- 12 nobody yarn 4.0K Feb  6 18:30 ..
-rw-r-----  1 nobody yarn 206M Feb  6 18:30 shuffle\_0\_0\_0.data
{code}
But this may not be the right approach on non-YARN. Perhaps an additional step to see if this chmod700 step is necessary (ie non-YARN) is required. Sadly, I don't have a non-YARN environment to test, otherwise I'd be able to suggest a patch.

I believe this is a related issue in the MapReduce framwork: https://issues.apache.org/jira/browse/MAPREDUCE-3728


---

* [SPARK-5628](https://issues.apache.org/jira/browse/SPARK-5628) | *Minor* | **Add option to return spark-ec2 version**

We need a {{--version}} option for {{spark-ec2}}.


---

* [SPARK-5613](https://issues.apache.org/jira/browse/SPARK-5613) | *Minor* | **YarnClientSchedulerBackend fails to get application report when yarn restarts**

Steps to Reproduce
1) Run any spark job
2) Stop yarn while the spark job is running (an application id has been generated by now)
3) Restart yarn now
4) AsyncMonitorApplication thread fails due to ApplicationNotFoundException exception. This leads to termination of thread. 







Here is the StackTrace

15/02/05 05:22:37 INFO Client: Retrying connect to server: nn1/192.168.173.176:8032. Already tried 6 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=10, sleepTime=1000 MILLISECONDS)
15/02/05 05:22:38 INFO Client: Retrying connect to server: nn1/192.168.173.176:8032. Already tried 7 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=10, sleepTime=1000 MILLISECONDS)
15/02/05 05:22:39 INFO Client: Retrying connect to server: nn1/192.168.173.176:8032. Already tried 8 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=10, sleepTime=1000 MILLISECONDS)
15/02/05 05:22:40 INFO Client: Retrying connect to server: nn1/192.168.173.176:8032. Already tried 9 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=10, sleepTime=1000 MILLISECONDS)
5/02/05 05:22:40 INFO Client: Retrying connect to server: nn1/192.168.173.176:8032. Already tried 9 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=10, sleepTime=1000 MILLISECONDS)

Exception in thread "Yarn application state monitor" org.apache.hadoop.yarn.exceptions.ApplicationNotFoundException: Application with id 'application\_1423113179043\_0003' doesn't exist in RM.
	at org.apache.hadoop.yarn.server.resourcemanager.ClientRMService.getApplicationReport(ClientRMService.java:284)
	at org.apache.hadoop.yarn.api.impl.pb.service.ApplicationClientProtocolPBServiceImpl.getApplicationReport(ApplicationClientProtocolPBServiceImpl.java:145)
	at org.apache.hadoop.yarn.proto.ApplicationClientProtocol$ApplicationClientProtocolService$2.callBlockingMethod(ApplicationClientProtocol.java:321)
	at org.apache.hadoop.ipc.ProtobufRpcEngine$Server$ProtoBufRpcInvoker.call(ProtobufRpcEngine.java:585)
	at org.apache.hadoop.ipc.RPC$Server.call(RPC.java:928)
	at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2013)
	at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2009)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Unknown Source)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
	at org.apache.hadoop.ipc.Server$Handler.run(Server.java:2007)

	at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)
	at sun.reflect.NativeConstructorAccessorImpl.newInstance(Unknown Source)
	at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(Unknown Source)
	at java.lang.reflect.Constructor.newInstance(Unknown Source)
	at org.apache.hadoop.yarn.ipc.RPCUtil.instantiateException(RPCUtil.java:53)
	at org.apache.hadoop.yarn.ipc.RPCUtil.unwrapAndThrowException(RPCUtil.java:101)
	at org.apache.hadoop.yarn.api.impl.pb.client.ApplicationClientProtocolPBClientImpl.getApplicationReport(ApplicationClientProtocolPBClientImpl.java:166)
	at sun.reflect.GeneratedMethodAccessor18.invoke(Unknown Source)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)
	at java.lang.reflect.Method.invoke(Unknown Source)
	at org.apache.hadoop.io.retry.RetryInvocationHandler.invokeMethod(RetryInvocationHandler.java:190)
	at org.apache.hadoop.io.retry.RetryInvocationHandler.invoke(RetryInvocationHandler.java:103)
	at com.sun.proxy.$Proxy12.getApplicationReport(Unknown Source)
	at org.apache.hadoop.yarn.client.api.impl.YarnClientImpl.getApplicationReport(YarnClientImpl.java:291)
	at org.apache.spark.deploy.yarn.Client.getApplicationReport(Client.scala:116)
	at org.apache.spark.scheduler.cluster.YarnClientSchedulerBackend$$anon$1.run(YarnClientSchedulerBackend.scala:120)
Caused by: org.apache.hadoop.ipc.RemoteException(org.apache.hadoop.yarn.exceptions.ApplicationNotFoundException): Application with id 'application\_1423113179043\_0003' doesn't exist in RM.
	at org.apache.hadoop.yarn.server.resourcemanager.ClientRMService.getApplicationReport(ClientRMService.java:284)
	at org.apache.hadoop.yarn.api.impl.pb.service.ApplicationClientProtocolPBServiceImpl.getApplicationReport(ApplicationClientProtocolPBServiceImpl.java:145)
	at org.apache.hadoop.yarn.proto.ApplicationClientProtocol$ApplicationClientProtocolService$2.callBlockingMethod(ApplicationClientProtocol.java:321)
	at org.apache.hadoop.ipc.ProtobufRpcEngine$Server$ProtoBufRpcInvoker.call(ProtobufRpcEngine.java:585)
	at org.apache.hadoop.ipc.RPC$Server.call(RPC.java:928)
	at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2013)
	at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2009)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Unknown Source)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
	at org.apache.hadoop.ipc.Server$Handler.run(Server.java:2007)

	at org.apache.hadoop.ipc.Client.call(Client.java:1410)
	at org.apache.hadoop.ipc.Client.call(Client.java:1363)
	at org.apache.hadoop.ipc.ProtobufRpcEngine$Invoker.invoke(ProtobufRpcEngine.java:206)
	at com.sun.proxy.$Proxy11.getApplicationReport(Unknown Source)
	at org.apache.hadoop.yarn.api.impl.pb.client.ApplicationClientProtocolPBClientImpl.getApplicationReport(ApplicationClientProtocolPBClientImpl.java:163)
	... 9 more


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

* [SPARK-5441](https://issues.apache.org/jira/browse/SPARK-5441) | *Major* | **SerDeUtil Pair RDD to python conversion doesn't accept empty RDDs**

SerDeUtil.pairRDDToPython and SerDeUtil.pythonToPairRDD rely on rdd.first() which throws an exception if the RDD is empty. We should be able to handle the empty RDD case because this doesn't prevent a valid RDD from being created.


---

* [SPARK-5434](https://issues.apache.org/jira/browse/SPARK-5434) | *Minor* | **Preserve spaces in path to spark-ec2**

If the path to {{spark-ec2}} contains spaces, the script won't run.


---

* [SPARK-5425](https://issues.apache.org/jira/browse/SPARK-5425) | *Major* | **ConcurrentModificationException during SparkConf creation**

This fragment of code:

{code}
  if (loadDefaults) {
    // Load any spark.* system properties
    for ((k, v) <- System.getProperties.asScala if k.startsWith("spark.")) {
      settings(k) = v
    }
  }
{code}

causes 

{noformat}
ERROR 09:43:15  SparkMaster service caused error in state STARTINGjava.util.ConcurrentModificationException: null
	at java.util.Hashtable$Enumerator.next(Hashtable.java:1167) ~[na:1.7.0\_60]
	at scala.collection.convert.Wrappers$JPropertiesWrapper$$anon$3.next(Wrappers.scala:458) ~[scala-library-2.10.4.jar:na]
	at scala.collection.convert.Wrappers$JPropertiesWrapper$$anon$3.next(Wrappers.scala:454) ~[scala-library-2.10.4.jar:na]
	at scala.collection.Iterator$class.foreach(Iterator.scala:727) ~[scala-library-2.10.4.jar:na]
	at scala.collection.AbstractIterator.foreach(Iterator.scala:1157) ~[scala-library-2.10.4.jar:na]
	at scala.collection.IterableLike$class.foreach(IterableLike.scala:72) ~[scala-library-2.10.4.jar:na]
	at scala.collection.AbstractIterable.foreach(Iterable.scala:54) ~[scala-library-2.10.4.jar:na]
	at scala.collection.TraversableLike$WithFilter.foreach(TraversableLike.scala:771) ~[scala-library-2.10.4.jar:na]
	at org.apache.spark.SparkConf.<init>(SparkConf.scala:53) ~[spark-core\_2.10-1.2.1\_dse-20150121.075638-2.jar:1.2.1\_dse-SNAPSHOT]
	at org.apache.spark.SparkConf.<init>(SparkConf.scala:47) ~[spark-core\_2.10-1.2.1\_dse-20150121.075638-2.jar:1.2.1\_dse-SNAPSHOT]
{noformat}

when there is another thread which modifies system properties at the same time. 

This bug https://issues.scala-lang.org/browse/SI-7775 is somehow related to the issue and shows that the problem has been also found elsewhere.


---

* [SPARK-5417](https://issues.apache.org/jira/browse/SPARK-5417) | *Minor* | **Remove redundant executor-ID set() call**

{{spark.executor.id}} no longer [needs to be set in Executor.scala|https://github.com/apache/spark/blob/0497ea51ac345f8057d222a18dbbf8eae78f5b92/core/src/main/scala/org/apache/spark/executor/Executor.scala#L79], as of [#4194|https://github.com/apache/spark/pull/4194]; it is set upstream in [SparkEnv|https://github.com/apache/spark/blob/0497ea51ac345f8057d222a18dbbf8eae78f5b92/core/src/main/scala/org/apache/spark/SparkEnv.scala#L332]. Might as well remove the redundant set() in Executor.scala.


---

* [SPARK-5395](https://issues.apache.org/jira/browse/SPARK-5395) | *Major* | **Large number of Python workers causing resource depletion**

During job execution a large number of Python worker accumulates eventually causing YARN to kill containers for being over their memory allocation (in the case below that is about 8G for executors plus 6G for overhead per container). 

In this instance, at the time of killing the container 97 pyspark.daemon processes had accumulated.

{noformat}
2015-01-23 15:36:53,654 INFO [Reporter] yarn.YarnAllocationHandler (Logging.scala:logInfo(59)) - Container marked as failed: container\_1421692415636\_0052\_01\_000030. Exit status: 143. Diagnostics: Container [pid=35211,containerID=container\_1421692415636\_0052\_01\_000030] is running beyond physical memory limits. Current usage: 14.9 GB of 14.5 GB physical memory used; 41.3 GB of 72.5 GB virtual memory used. Killing container.
Dump of the process-tree for container\_1421692415636\_0052\_01\_000030 :
|- PID PPID PGRPID SESSID CMD\_NAME USER\_MODE\_TIME(MILLIS) SYSTEM\_TIME(MILLIS) VMEM\_USAGE(BYTES) RSSMEM\_USAGE(PAGES) FULL\_CMD\_LINE
|- 54101 36625 36625 35211 (python) 78 1 332730368 16834 python -m pyspark.daemon
|- 52140 36625 36625 35211 (python) 58 1 332730368 16837 python -m pyspark.daemon
|- 36625 35228 36625 35211 (python) 65 604 331685888 17694 python -m pyspark.daemon
	[...]
{noformat}

The configuration used uses 64 containers with 2 cores each.

Full output here: https://gist.github.com/skrasser/e3e2ee8dede5ef6b082c

Mailinglist discussion: https://www.mail-archive.com/user@spark.apache.org/msg20102.html


---

* [SPARK-5363](https://issues.apache.org/jira/browse/SPARK-5363) | *Blocker* | **Spark 1.2 freeze without error notification**

After a number of calls to a map().collect() statement Spark freezes without reporting any error.  Within the map a large broadcast variable is used.

The freezing can be avoided by setting 'spark.python.worker.reuse = false' (Spark 1.2) or using an earlier version, however, at the prize of low speed.


---

* [SPARK-5361](https://issues.apache.org/jira/browse/SPARK-5361) | *Major* | **Multiple Java RDD \<-\> Python RDD conversions not working correctly**

This is found through reading RDD from `sc.newAPIHadoopRDD` and writing it back using `rdd.saveAsNewAPIHadoopFile` in pyspark.

It turns out that whenever there are multiple RDD conversions from JavaRDD to PythonRDD then back to JavaRDD, the exception below happens:

{noformat}
15/01/16 10:28:31 ERROR Executor: Exception in task 0.0 in stage 3.0 (TID 7)
java.lang.ClassCastException: [Ljava.lang.Object; cannot be cast to java.util.ArrayList
	at org.apache.spark.api.python.SerDeUtil$$anonfun$pythonToJava$1$$anonfun$apply$1.apply(SerDeUtil.scala:157)
	at org.apache.spark.api.python.SerDeUtil$$anonfun$pythonToJava$1$$anonfun$apply$1.apply(SerDeUtil.scala:153)
	at scala.collection.Iterator$$anon$13.hasNext(Iterator.scala:371)
	at scala.collection.Iterator$$anon$10.hasNext(Iterator.scala:308)
{noformat}

The test case code below reproduces it:

{noformat}
from pyspark.rdd import RDD

dl = [
    (u'2', {u'director': u'David Lean'}), 
    (u'7', {u'director': u'Andrew Dominik'})
]

dl\_rdd = sc.parallelize(dl)
tmp = dl\_rdd.\_to\_java\_object\_rdd()
tmp2 = sc.\_jvm.SerDe.javaToPython(tmp)
t = RDD(tmp2, sc)
t.count()

tmp = t.\_to\_java\_object\_rdd()
tmp2 = sc.\_jvm.SerDe.javaToPython(tmp)
t = RDD(tmp2, sc)
t.count() # it blows up here during the 2nd time of conversion
{noformat}


---

* [SPARK-5335](https://issues.apache.org/jira/browse/SPARK-5335) | *Major* | **Destroying cluster in VPC with "--delete-groups" fails to remove security groups**

When I try to remove security groups using option of the script, it fails because in VPC one should remove security groups by id, not name as it is now.


{code}
$ ./spark-ec2 -k key20141114 -i ~/key.pem --region=eu-west-1 --delete-groups destroy SparkByScript
Are you sure you want to destroy the cluster SparkByScript?
The following instances will be terminated:
Searching for existing cluster SparkByScript...
ALL DATA ON ALL NODES WILL BE LOST!!
Destroy cluster SparkByScript (y/N): y
Terminating master...
Terminating slaves...
Deleting security groups (this will take some time)...
Waiting for cluster to enter 'terminated' state.
Cluster is now in 'terminated' state. Waited 0 seconds.
Attempt 1
Deleting rules in security group SparkByScript-slaves
Deleting rules in security group SparkByScript-master
ERROR:boto:400 Bad Request
ERROR:boto:<?xml version="1.0" encoding="UTF-8"?>
<Response><Errors><Error><Code>InvalidParameterValue</Code><Message>Invalid value 'SparkByScript-slaves' for groupName. You may not reference Amazon VPC security groups by name. Please use the corresponding id for this operation.</Message></Error></Errors><RequestID>60313fac-5d47-48dd-a8bf-e9832948c0a6</RequestID></Response>
Failed to delete security group SparkByScript-slaves
ERROR:boto:400 Bad Request
ERROR:boto:<?xml version="1.0" encoding="UTF-8"?>
<Response><Errors><Error><Code>InvalidParameterValue</Code><Message>Invalid value 'SparkByScript-master' for groupName. You may not reference Amazon VPC security groups by name. Please use the corresponding id for this operation.</Message></Error></Errors><RequestID>74ff8431-c0c1-4052-9ecb-c0adfa7eeeac</RequestID></Response>
Failed to delete security group SparkByScript-master
Attempt 2
....
{code}


---

* [SPARK-5227](https://issues.apache.org/jira/browse/SPARK-5227) | *Blocker* | **InputOutputMetricsSuite "input metrics when reading text file with multiple splits" test fails in branch-1.2 SBT Jenkins build w/hadoop1.0 and hadoop2.0 profiles**

The InputOutputMetricsSuite " input metrics when reading text file with multiple splits" test has been failing consistently in our new {{branch-1.2}} Jenkins SBT build: https://amplab.cs.berkeley.edu/jenkins/job/Spark-1.2-SBT/14/AMPLAB\_JENKINS\_BUILD\_PROFILE=hadoop2.0,label=centos/testReport/junit/org.apache.spark.metrics/InputOutputMetricsSuite/input\_metrics\_when\_reading\_text\_file\_with\_multiple\_splits/

Here's the error message

{code}
ArrayBuffer(32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 16) had length 3438 instead of expected length 2
{code}

I can't reproduce this issue by running the test in isolation and it also seems to be passing in the pull request builder.  I \_was\_ able to reproduce the error by modifying that test to add a call to

{code}
sc.hadoopConfiguration.setLong("fs.local.block.size", 32)
{code}

It turns out that there's a call to this in WholeTextFileRecordReaderSuite and the execution of that suite happens before the failing InputOutputMetricsSuite test.  I've looked through the code and it doesn't look like we have any shared state between those test suites, so I suspect that there could be some Hadoop bug in older versions that's impacting us here (such as global shared state in a Hadoop class that's configured from the first test run and not cleared for the second test).

I don't have the cycles to fix this right now, but it would be great if a Hadoop expert could take a look and see if they can come up with a workaround (or spot a bug in our code).


---

* [SPARK-5186](https://issues.apache.org/jira/browse/SPARK-5186) | *Major* | **Vector.equals  and Vector.hashCode are very inefficient and fail on SparseVectors with large size**

The implementation of Vector.equals and Vector.hashCode are correct but slow for SparseVectors that are truly sparse.


---

* [SPARK-5153](https://issues.apache.org/jira/browse/SPARK-5153) | *Critical* | **Flaky test: o.a.s.streaming.kafka.ReliableKafkaStreamSuite**

I have seen several irrelevant PR failed on this test

https://amplab.cs.berkeley.edu/jenkins/job/SparkPullRequestBuilder/25254/consoleFull

https://amplab.cs.berkeley.edu/jenkins/job/SparkPullRequestBuilder/25248/

https://amplab.cs.berkeley.edu/jenkins/job/SparkPullRequestBuilder/25251/console


---

* [SPARK-4986](https://issues.apache.org/jira/browse/SPARK-4986) | *Blocker* | **Graceful shutdown for Spark Streaming does not work in Standalone cluster mode**

When using the graceful stop API of Spark Streaming in Spark Standalone cluster the stop signal never reaches the receivers. I have tested this with Spark 1.2 and Kafka receivers. 

ReceiverTracker will send StopReceiver message to ReceiverSupervisorImpl.
In local mode ReceiverSupervisorImpl receives this message but in Standalone cluster mode the message seems to be lost.

(I have modified the code to send my own string message as a stop signal from ReceiverTracker to ReceiverSupervisorImpl and it works as a workaround.)


---

* [SPARK-4983](https://issues.apache.org/jira/browse/SPARK-4983) | *Minor* | **Add sleep() before tagging EC2 instances to allow instance metadata to propagate**

We launch EC2 instances in {{spark-ec2}} and then immediately tag them in a separate boto call. Sometimes, EC2 doesn't get enough time to propagate information about the just-launched instances, so when we go to tag them we get a server that doesn't know about them yet.

This yields the following type of error:

{code}
Launching instances...
Launched 1 slaves in us-east-1b, regid = r-cf780321
Launched master in us-east-1b, regid = r-da7e0534
Traceback (most recent call last):
  File "./ec2/spark\_ec2.py", line 1284, in <module>
    main()
  File "./ec2/spark\_ec2.py", line 1276, in main
    real\_main()
  File "./ec2/spark\_ec2.py", line 1122, in real\_main
    (master\_nodes, slave\_nodes) = launch\_cluster(conn, opts, cluster\_name)
  File "./ec2/spark\_ec2.py", line 646, in launch\_cluster
    value='{cn}-master-{iid}'.format(cn=cluster\_name, iid=master.id))
  File ".../spark/ec2/lib/boto-2.34.0/boto/ec2/ec2object.py", line 80, in add\_tag
    self.add\_tags({key: value}, dry\_run)
  File ".../spark/ec2/lib/boto-2.34.0/boto/ec2/ec2object.py", line 97, in add\_tags
    dry\_run=dry\_run
  File ".../spark/ec2/lib/boto-2.34.0/boto/ec2/connection.py", line 4202, in create\_tags
    return self.get\_status('CreateTags', params, verb='POST')
  File ".../spark/ec2/lib/boto-2.34.0/boto/connection.py", line 1223, in get\_status
    raise self.ResponseError(response.status, response.reason, body)
boto.exception.EC2ResponseError: EC2ResponseError: 400 Bad Request
<?xml version="1.0" encoding="UTF-8"?>
<Response><Errors><Error><Code>InvalidInstanceID.NotFound</Code><Message>The instance ID 'i-585219a6' does not exist</Message></Error></Errors><RequestID>b9f1ad6e-59b9-47fd-a693-527be1f779eb</RequestID></Response>
{code}

The solution is to tag the instances in the same call that launches them, or less desirably, tag the instances after some short wait.


---

* [SPARK-4905](https://issues.apache.org/jira/browse/SPARK-4905) | *Critical* | **Flaky test: o.a.s.streaming.flume.FlumeStreamSuite.flume input stream**

It looks like the "org.apache.spark.streaming.flume.FlumeStreamSuite.flume input stream" test might be flaky ([link|https://amplab.cs.berkeley.edu/jenkins//job/SparkPullRequestBuilder/24647/testReport/junit/org.apache.spark.streaming.flume/FlumeStreamSuite/flume\_input\_stream/]):

{code}
Error Message

The code passed to eventually never returned normally. Attempted 106 times over 10.045097243 seconds. Last failure message: ArrayBuffer("", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "") was not equal to Vector("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100").
Stacktrace

sbt.ForkMain$ForkError: The code passed to eventually never returned normally. Attempted 106 times over 10.045097243 seconds. Last failure message: ArrayBuffer("", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "") was not equal to Vector("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100").
	at org.scalatest.concurrent.Eventually$class.tryTryAgain$1(Eventually.scala:420)
	at org.scalatest.concurrent.Eventually$class.eventually(Eventually.scala:438)
	at org.scalatest.concurrent.Eventually$.eventually(Eventually.scala:478)
	at org.scalatest.concurrent.Eventually$class.eventually(Eventually.scala:307)
	at org.scalatest.concurrent.Eventually$.eventually(Eventually.scala:478)
	at org.apache.spark.streaming.flume.FlumeStreamSuite.writeAndVerify(FlumeStreamSuite.scala:142)
	at org.apache.spark.streaming.flume.FlumeStreamSuite.org$apache$spark$streaming$flume$FlumeStreamSuite$$testFlumeStream(FlumeStreamSuite.scala:74)
	at org.apache.spark.streaming.flume.FlumeStreamSuite$$anonfun$2.apply$mcV$sp(FlumeStreamSuite.scala:62)
	at org.apache.spark.streaming.flume.FlumeStreamSuite$$anonfun$2.apply(FlumeStreamSuite.scala:62)
	at org.apache.spark.streaming.flume.FlumeStreamSuite$$anonfun$2.apply(FlumeStreamSuite.scala:62)
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
	at org.apache.spark.streaming.flume.FlumeStreamSuite.org$scalatest$BeforeAndAfter$$super$runTest(FlumeStreamSuite.scala:46)
	at org.scalatest.BeforeAndAfter$class.runTest(BeforeAndAfter.scala:200)
	at org.apache.spark.streaming.flume.FlumeStreamSuite.runTest(FlumeStreamSuite.scala:46)
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
	at org.apache.spark.streaming.flume.FlumeStreamSuite.org$scalatest$BeforeAndAfter$$super$run(FlumeStreamSuite.scala:46)
	at org.scalatest.BeforeAndAfter$class.run(BeforeAndAfter.scala:241)
	at org.apache.spark.streaming.flume.FlumeStreamSuite.run(FlumeStreamSuite.scala:46)
	at org.scalatest.tools.Framework.org$scalatest$tools$Framework$$runSuite(Framework.scala:462)
	at org.scalatest.tools.Framework$ScalaTestTask.execute(Framework.scala:671)
	at sbt.ForkMain$Run$2.call(ForkMain.java:294)
	at sbt.ForkMain$Run$2.call(ForkMain.java:284)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
Caused by: sbt.ForkMain$ForkError: ArrayBuffer("", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "") was not equal to Vector("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100")
	at org.scalatest.MatchersHelper$.newTestFailedException(MatchersHelper.scala:160)
	at org.scalatest.Matchers$ShouldMethodHelper$.shouldMatcher(Matchers.scala:6231)
	at org.scalatest.Matchers$AnyShouldWrapper.should(Matchers.scala:6265)
	at org.apache.spark.streaming.flume.FlumeStreamSuite$$anonfun$writeAndVerify$2.apply$mcV$sp(FlumeStreamSuite.scala:149)
	at org.apache.spark.streaming.flume.FlumeStreamSuite$$anonfun$writeAndVerify$2.apply(FlumeStreamSuite.scala:142)
	at org.apache.spark.streaming.flume.FlumeStreamSuite$$anonfun$writeAndVerify$2.apply(FlumeStreamSuite.scala:142)
	at org.scalatest.concurrent.Eventually$class.makeAValiantAttempt$1(Eventually.scala:394)
	at org.scalatest.concurrent.Eventually$class.tryTryAgain$1(Eventually.scala:408)
	... 52 more
{code}


---

* [SPARK-4832](https://issues.apache.org/jira/browse/SPARK-4832) | *Minor* | **some other processes might take the daemon pid**

Some other processes might use the pid saved in pid file. In that case we should ignore it and launch daemons.


---

* [SPARK-4814](https://issues.apache.org/jira/browse/SPARK-4814) | *Major* | **Enable assertions in SBT, Maven tests / AssertionError from Hive's LazyBinaryInteger**

Follow up to SPARK-4159, wherein we noticed that Java tests weren't running in Maven, in part because a Java test actually fails with {{AssertionError}}. That code/test was fixed in SPARK-4850.

The reason it wasn't caught by SBT tests was that they don't run with assertions on, and Maven's surefire does.

Turning on assertions in the SBT build is trivial, adding one line:

{code}
    javaOptions in Test += "-ea",
{code}

This reveals a test failure in Scala test suites though:

{code}
[info] - alter\_merge\_2 *** FAILED *** (1 second, 305 milliseconds)
[info]   Failed to execute query using catalyst:
[info]   Error: Job aborted due to stage failure: Task 1 in stage 551.0 failed 1 times, most recent failure: Lost task 1.0 in stage 551.0 (TID 1532, localhost): java.lang.AssertionError
[info]   	at org.apache.hadoop.hive.serde2.lazybinary.LazyBinaryInteger.init(LazyBinaryInteger.java:51)
[info]   	at org.apache.hadoop.hive.serde2.columnar.ColumnarStructBase$FieldInfo.uncheckedGetField(ColumnarStructBase.java:110)
[info]   	at org.apache.hadoop.hive.serde2.columnar.ColumnarStructBase.getField(ColumnarStructBase.java:171)
[info]   	at org.apache.hadoop.hive.serde2.objectinspector.ColumnarStructObjectInspector.getStructFieldData(ColumnarStructObjectInspector.java:166)
[info]   	at org.apache.spark.sql.hive.HadoopTableReader$$anonfun$fillObject$1.apply(TableReader.scala:318)
[info]   	at org.apache.spark.sql.hive.HadoopTableReader$$anonfun$fillObject$1.apply(TableReader.scala:314)
[info]   	at scala.collection.Iterator$$anon$11.next(Iterator.scala:328)
[info]   	at org.apache.spark.sql.execution.Aggregate$$anonfun$execute$1$$anonfun$6.apply(Aggregate.scala:132)
[info]   	at org.apache.spark.sql.execution.Aggregate$$anonfun$execute$1$$anonfun$6.apply(Aggregate.scala:128)
[info]   	at org.apache.spark.rdd.RDD$$anonfun$13.apply(RDD.scala:615)
[info]   	at org.apache.spark.rdd.RDD$$anonfun$13.apply(RDD.scala:615)
[info]   	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
[info]   	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:264)
[info]   	at org.apache.spark.rdd.RDD.iterator(RDD.scala:231)
[info]   	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
[info]   	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:264)
[info]   	at org.apache.spark.rdd.RDD.iterator(RDD.scala:231)
[info]   	at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:68)
[info]   	at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:41)
[info]   	at org.apache.spark.scheduler.Task.run(Task.scala:56)
[info]   	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:195)
[info]   	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
[info]   	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
[info]   	at java.lang.Thread.run(Thread.java:745)
{code}

The items for this JIRA are therefore:

- Enable assertions in SBT
- Fix this failure
- Figure out why Maven scalatest didn't trigger it - may need assertions explicitly turned on too.


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

* [SPARK-4631](https://issues.apache.org/jira/browse/SPARK-4631) | *Critical* | **Add real unit test for MQTT**

A real unit test that actually transfers data to ensure that the MQTTUtil is functional


---

* [SPARK-4579](https://issues.apache.org/jira/browse/SPARK-4579) | *Major* | **Scheduling Delay appears negative**

!https://cloud.githubusercontent.com/assets/455755/5174438/23d08604-73ff-11e4-9a76-97233b610544.png!


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

* [SPARK-4267](https://issues.apache.org/jira/browse/SPARK-4267) | *Blocker* | **Failing to launch jobs on Spark on YARN with Hadoop 2.5.0 or later**

Currently we're trying Spark on YARN included in Hadoop 2.5.1. Hadoop 2.5 uses protobuf 2.5.0 so I compiled with protobuf 2.5.1 like this:

{code}
 ./make-distribution.sh --name spark-1.1.1 --tgz -Pyarn -Dhadoop.version=2.5.1 -Dprotobuf.version=2.5.0
{code}

Then Spark on YARN fails to launch jobs with NPE.

{code}
$ bin/spark-shell --master yarn-client
scala>     sc.textFile("hdfs:///user/ozawa/wordcountInput20G").flatMap(line => line.split(" ")).map(word => (word, 1)).persist().reduceByKey((a, b) => a + b, 16).saveAsTextFile("hdfs:///user/ozawa/sparkWordcountOutNew2");
java.lang.NullPointerException                                                                                                                                                                                                                                
        at org.apache.spark.SparkContext.defaultParallelism(SparkContext.scala:1284)
        at org.apache.spark.SparkContext.defaultMinPartitions(SparkContext.scala:1291)                                                                                                                                                                        
        at org.apache.spark.SparkContext.textFile$default$2(SparkContext.scala:480)
        at $iwC$$iwC$$iwC$$iwC.<init>(<console>:13)                                                                                                                                                                                                           
        at $iwC$$iwC$$iwC.<init>(<console>:18)
        at $iwC$$iwC.<init>(<console>:20)                                                                                                                                                                                                                     
        at $iwC.<init>(<console>:22)
        at <init>(<console>:24)                                                                                                                                                                                                                               
        at .<init>(<console>:28)
        at .<clinit>(<console>)                                                                                                                                                                                                                               
        at .<init>(<console>:7)
        at .<clinit>(<console>)                                                                                                                                                                                                                               
        at $print(<console>)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)                                                                                                                                                                                        
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)                                                                                                                                                              
        at java.lang.reflect.Method.invoke(Method.java:606)
        at org.apache.spark.repl.SparkIMain$ReadEvalPrint.call(SparkIMain.scala:789)                                                                                                                                                                          
        at org.apache.spark.repl.SparkIMain$Request.loadAndRun(SparkIMain.scala:1062)
        at org.apache.spark.repl.SparkIMain.loadAndRunReq$1(SparkIMain.scala:615)                                                                                                                                                                             
        at org.apache.spark.repl.SparkIMain.interpret(SparkIMain.scala:646)
        at org.apache.spark.repl.SparkIMain.interpret(SparkIMain.scala:610)                                                                                                                                                                                   
        at org.apache.spark.repl.SparkILoop.reallyInterpret$1(SparkILoop.scala:823)
        at org.apache.spark.repl.SparkILoop.interpretStartingWith(SparkILoop.scala:868)                                                                                                                                                                       
        at org.apache.spark.repl.SparkILoop.command(SparkILoop.scala:780)
        at org.apache.spark.repl.SparkILoop.processLine$1(SparkILoop.scala:625)                                                                                                                                                                               
        at org.apache.spark.repl.SparkILoop.innerLoop$1(SparkILoop.scala:633)
        at org.apache.spark.repl.SparkILoop.loop(SparkILoop.scala:638)                                                                                                                                                                                        
        at org.apache.spark.repl.SparkILoop$$anonfun$process$1.apply$mcZ$sp(SparkILoop.scala:963)
        at org.apache.spark.repl.SparkILoop$$anonfun$process$1.apply(SparkILoop.scala:911)                                                                                                                                                                    
        at org.apache.spark.repl.SparkILoop$$anonfun$process$1.apply(SparkILoop.scala:911)
        at scala.tools.nsc.util.ScalaClassLoader$.savingContextLoader(ScalaClassLoader.scala:135)                                                                                                                                                             
        at org.apache.spark.repl.SparkILoop.process(SparkILoop.scala:911)
        at org.apache.spark.repl.SparkILoop.process(SparkILoop.scala:1006)                                                                                                                                                                                    
        at org.apache.spark.repl.Main$.main(Main.scala:31)
        at org.apache.spark.repl.Main.main(Main.scala)                                                                                                                                                                                                        
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)                                                                                                                                                                      
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:606)                                                                                                                                                                                                   
        at org.apache.spark.deploy.SparkSubmit$.launch(SparkSubmit.scala:329)
        at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:75)                                                                                                                                                                                    
        at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)
{code}


---

* [SPARK-3266](https://issues.apache.org/jira/browse/SPARK-3266) | *Major* | **JavaDoubleRDD doesn't contain max()**

While I can compile my code, I see:

Caused by: java.lang.NoSuchMethodError: org.apache.spark.api.java.JavaDoubleRDD.max(Ljava/util/Comparator;)Ljava/lang/Double;

When I try to execute my Spark code. Stepping into the JavaDoubleRDD class, I don't notice max()
although it is clearly listed in the documentation.


---

* [SPARK-2472](https://issues.apache.org/jira/browse/SPARK-2472) | *Minor* | **Spark SQL Thrift server sometimes assigns wrong job group name**

Sample beeline session used to reproduce this issue:

{code}
0: jdbc:hive2://localhost:10000> drop table test;
+---------+
| result  |
+---------+
+---------+
No rows selected (0.614 seconds)
0: jdbc:hive2://localhost:10000> create table hive\_table\_copy as select * from hive\_table;
+------+--------+
| key  | value  |
+------+--------+
+------+--------+
No rows selected (0.493 seconds)
0
{code}

The second statement results in two stages, the first stage is labeled with the first {{drop table}} statement rather than the CTAS statement.


---

* [SPARK-1955](https://issues.apache.org/jira/browse/SPARK-1955) | *Minor* | **VertexRDD can incorrectly assume index sharing**

Many VertexRDD operations (diff, leftJoin, innerJoin) can use a fast zip join if both operands are VertexRDDs sharing the same index (i.e., one operand is derived from the other). This check is implemented by matching on the operand type and using the fast join strategy if both are VertexRDDs.

This is clearly fine when both do in fact share the same index. It is also fine when the two VertexRDDs have the same partitioner but different indexes, because each VertexPartition will detect the index mismatch and fall back to the slow but correct local join strategy.

However, when they have different numbers of partitions or different partition functions, an exception or even silently incorrect results can occur.

For example:

{code}
import org.apache.spark.\_
import org.apache.spark.graphx.\_

// Construct VertexRDDs with different numbers of partitions
val a = VertexRDD(sc.parallelize(List((0L, 1), (1L, 2)), 1))
val b = VertexRDD(sc.parallelize(List((0L, 5)), 8))
// Try to join them. Appears to work...
val c = a.innerJoin(b) { (vid, x, y) => x + y }
// ... but then fails with java.lang.IllegalArgumentException: Can't zip RDDs with unequal numbers of partitions
c.collect

// Construct VertexRDDs with different partition functions
val a = VertexRDD(sc.parallelize(List((0L, 1), (1L, 2))).partitionBy(new HashPartitioner(2)))
val bVerts = sc.parallelize(List((1L, 5)))
val b = VertexRDD(bVerts.partitionBy(new RangePartitioner(2, bVerts)))
// Try to join them. We expect (1L, 7).
val c = a.innerJoin(b) { (vid, x, y) => x + y }
// Silent failure: we get an empty set!
c.collect
{code}

VertexRDD should check equality of partitioners before using the fast zip join. If the partitioners are different, the two datasets should be automatically co-partitioned.


---

* [SPARK-1911](https://issues.apache.org/jira/browse/SPARK-1911) | *Major* | **Warn users if their assembly jars are not built with Java 6**

The root cause of the problem is detailed in: https://issues.apache.org/jira/browse/SPARK-1520.

In short, an assembly jar built with Java 7+ is not always accessible by Python or other versions of Java (especially Java 6). If the assembly jar is not built on the cluster itself, this problem may manifest itself in strange exceptions that are not trivial to debug. This is an issue especially for PySpark on YARN, which relies on the python files included within the assembly jar.

Currently we warn users only in make-distribution.sh, but most users build the jars directly. At the very least we need to emphasize this in the docs (currently missing entirely). The next step is to add a warning prompt in the mvn scripts whenever Java 7+ is detected.


---

* [SPARK-1600](https://issues.apache.org/jira/browse/SPARK-1600) | *Major* | **flaky "recovery with file input stream" test in streaming.CheckpointSuite**

the case "recovery with file input stream.recovery with file input stream  " sometimes fails when the Jenkins is very busy with an unrelated change 

I have met it for 3 times, I also saw it in other places, 

the latest example is in 

https://amplab.cs.berkeley.edu/jenkins/job/SparkPullRequestBuilder/14397/

where the modification is just in YARN related files....

I once reported in dev mail list: http://apache-spark-developers-list.1001551.n3.nabble.com/a-weird-test-case-in-Streaming-td6116.html


---

* [SPARK-794](https://issues.apache.org/jira/browse/SPARK-794) | *Major* | **Remove sleep() in ClusterScheduler.stop**

This temporary change made a while back slows down the unit tests quite a bit.



