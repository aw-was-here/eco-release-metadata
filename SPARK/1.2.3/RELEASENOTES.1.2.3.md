
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
#  1.2.3 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [SPARK-8525](https://issues.apache.org/jira/browse/SPARK-8525) | *Minor* | **Bug in Streaming k-means documentation**

The expected input format is wrong in Streaming K-means documentation.
https://spark.apache.org/docs/latest/mllib-clustering.html#streaming-k-means

It might be a bug in implementation though, not sure.

There shouldn't be any spaces in test data points. I.e. instead of 
(y, [x1, x2, x3]) it should be
(y,[x1,x2,x3])

The exception thrown 
org.apache.spark.SparkException: Cannot parse a double from:  
	at org.apache.spark.mllib.util.NumericParser$.parseDouble(NumericParser.scala:118)
	at org.apache.spark.mllib.util.NumericParser$.parseTuple(NumericParser.scala:103)
	at org.apache.spark.mllib.util.NumericParser$.parse(NumericParser.scala:41)
	at org.apache.spark.mllib.regression.LabeledPoint$.parse(LabeledPoint.scala:49)


Also I would improve documentation saying explicitly that expected data types for both 'x' and 'y' is Double. At the moment it's not obvious especially for 'y'.


---

* [SPARK-8062](https://issues.apache.org/jira/browse/SPARK-8062) | *Major* | **NullPointerException in SparkHadoopUtil.getFileSystemThreadStatistics**

I received the following error report from a user:

While running a Spark Streaming job that reads from MapRfs and writes to HBase using Spark 1.2.1, the job intermittently experiences a total job failure due to the following errors:

{code}
15/05/28 10:35:50 ERROR executor.Executor: Exception in task 1.1 in stage 6.0 (TID 24) 
java.lang.NullPointerException 
at org.apache.spark.deploy.SparkHadoopUtil$$anonfun$4.apply(SparkHadoopUtil.scala:178) 
at org.apache.spark.deploy.SparkHadoopUtil$$anonfun$4.apply(SparkHadoopUtil.scala:178) 
at scala.collection.TraversableLike$$anonfun$filter$1.apply(TraversableLike.scala:264) 
at scala.collection.Iterator$class.foreach(Iterator.scala:727) 
at scala.collection.AbstractIterator.foreach(Iterator.scala:1157) 
at scala.collection.IterableLike$class.foreach(IterableLike.scala:72) 
at scala.collection.AbstractIterable.foreach(Iterable.scala:54) 
at scala.collection.TraversableLike$class.filter(TraversableLike.scala:263) 
at scala.collection.AbstractTraversable.filter(Traversable.scala:105) 
at org.apache.spark.deploy.SparkHadoopUtil.getFileSystemThreadStatistics(SparkHadoopUtil.scala:178) 
at org.apache.spark.deploy.SparkHadoopUtil.getFSBytesReadOnThreadCallback(SparkHadoopUtil.scala:139) 
at org.apache.spark.rdd.NewHadoopRDD$$anon$1.<init>(NewHadoopRDD.scala:116) 
at org.apache.spark.rdd.NewHadoopRDD.compute(NewHadoopRDD.scala:107) 
at org.apache.spark.rdd.NewHadoopRDD.compute(NewHadoopRDD.scala:69) 
at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:280) 
at org.apache.spark.rdd.RDD.iterator(RDD.scala:247) 
at org.apache.spark.rdd.MappedRDD.compute(MappedRDD.scala:31) 
at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:280) 
at org.apache.spark.rdd.RDD.iterator(RDD.scala:247) 
at org.apache.spark.rdd.FlatMappedRDD.compute(FlatMappedRDD.scala:33) 
at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:280) 
at org.apache.spark.rdd.RDD.iterator(RDD.scala:247) 
at org.apache.spark.rdd.FilteredRDD.compute(FilteredRDD.scala:34) 
at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:280) 
at org.apache.spark.rdd.RDD.iterator(RDD.scala:247) 
at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:68) 
at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:41) 
at org.apache.spark.scheduler.Task.run(Task.scala:56) 
at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:200) 
at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145) 
at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615) 
at java.lang.Thread.run(Thread.java:744) 
15/05/28 10:35:50 INFO executor.CoarseGrainedExecutorBackend: Got assigned task 25 
15/05/28 10:35:50 INFO executor.Executor: Running task 2.1 in stage 6.0 (TID 25) 
15/05/28 10:35:50 INFO rdd.NewHadoopRDD: Input split: hdfs:/[REDACTED] 
15/05/28 10:35:50 ERROR executor.Executor: Exception in task 2.1 in stage 6.0 (TID 25) 
java.lang.NullPointerException 
at org.apache.spark.deploy.SparkHadoopUtil$$anonfun$4.apply(SparkHadoopUtil.scala:178) 
at org.apache.spark.deploy.SparkHadoopUtil$$anonfun$4.apply(SparkHadoopUtil.scala:178) 
at scala.collection.TraversableLike$$anonfun$filter$1.apply(TraversableLike.scala:264) 
at scala.collection.Iterator$class.foreach(Iterator.scala:727) 
at scala.collection.AbstractIterator.foreach(Iterator.scala:1157) 
at scala.collection.IterableLike$class.foreach(IterableLike.scala:72) 
{code}

Diving into the code here:

The NPE is occurring on this line of SparkHadoopUtil (in 1.2.1.): https://github.com/apache/spark/blob/v1.2.1/core/src/main/scala/org/apache/spark/deploy/SparkHadoopUtil.scala#L178

Here's that block of code from 1.2.1 (it's the same in 1.2.2):

{code}
  private def getFileSystemThreadStatistics(path: Path, conf: Configuration): Seq[AnyRef] = {
    val qualifiedPath = path.getFileSystem(conf).makeQualified(path)
    val scheme = qualifiedPath.toUri().getScheme()
    val stats = FileSystem.getAllStatistics().filter(\_.getScheme().equals(scheme))   // <--- exception occurs at this line
    stats.map(Utils.invoke(classOf[Statistics], \_, "getThreadStatistics"))
  }
{code}

Since the top call on the stack was {{org.apache.spark.deploy.SparkHadoopUtil$$anonfun$4}}, I'm assuming that the \_.getScheme().equals(scheme) call here is failing because FileSystem.getAllStatistics() is returning a collection that has a null element or that \_.getScheme() is null.

Diving into the Hadoop source, it looks like FileSystem.getAllStatistics() accesses some synchronized static state to return statistics for all Hadoop filesystems created within the JVM. I wonder if it's possible that some code is nondeterministically creating a new FIleSystem instance for a FileSystem that lacks a scheme, causing entires to be stored in the statistics map that will return null when we call getScheme() on them.

I am unable to reproduce this issue myself, but I think that we can fix it for the user by adding try-catch blocks to prevent errors in metrics collection from leading to task failures.


---

* [SPARK-8032](https://issues.apache.org/jira/browse/SPARK-8032) | *Major* | **Make NumPy version checking in mllib/\_\_init\_\_.py**

The current checking does version `1.x' is less than `1.4' this will fail if x has greater than 1 digit, since x > 4, however `1.x` < `1.4`


---

* [SPARK-7883](https://issues.apache.org/jira/browse/SPARK-7883) | *Trivial* | **Fixing broken trainImplicit example in MLlib Collaborative Filtering documentation.**

The trainImplicit Scala example near the end of the MLlib Collaborative Filtering documentation refers to an ALS.trainImplicit function signature that does not exist.  Rather than add an extra function, let's just fix the example.

Currently, the example refers to a function that would have the following signature: 
def trainImplicit(ratings: RDD[Rating], rank: Int, iterations: Int, alpha: Double) : MatrixFactorizationModel

Instead, let's change the example to refer to this function, which does exist (notice the addition of the lambda parameter):
def trainImplicit(ratings: RDD[Rating], rank: Int, iterations: Int, lambda: Double, alpha: Double) : MatrixFactorizationModel


---

* [SPARK-7660](https://issues.apache.org/jira/browse/SPARK-7660) | *Blocker* | **Snappy-java buffer-sharing bug leads to data corruption / test failures**

snappy-java contains a bug that can lead to situations where separate SnappyOutputStream instances end up sharing the same input and output buffers, which can lead to data corruption issues.  See https://github.com/xerial/snappy-java/issues/107 for my upstream bug report and https://github.com/xerial/snappy-java/pull/108 for my patch to fix this issue.

I discovered this issue because the buffer-sharing was leading to a test failure in JavaAPISuite: one of the repartition-and-sort tests was returning the wrong answer because both tasks wrote their output using the same compression buffers and one task won the race, causing its output to be written to both shuffle output files. As a result, the test returned the result of collecting one partition twice (see https://github.com/apache/spark/pull/5868#issuecomment-101954962 for more details).

The buffer-sharing can only occur if {{close()}} is called twice on the same SnappyOutputStream \_and\_ the JVM experiences little GC / memory pressure (for a more precise description of when this issue may occur, see my upstream tickets).  I think that this double-close happens somewhere in some test code that was added as part of my Tungsten shuffle patch, exposing this bug (to see this, download a recent build of master and run https://gist.github.com/JoshRosen/eb3257a75c16597d769f locally in order to force the test execution order that triggers the bug).

I think that it's rare that this bug would lead to silent failures like this. In more realistic workloads that aren't writing only a handful of bytes per task, I would expect this issue to lead to stream corruption issues like SPARK-4105.


---

* [SPARK-7522](https://issues.apache.org/jira/browse/SPARK-7522) | *Minor* | **ML Examples option for dataFormat should not be enclosed in angle brackets**

Some ML examples include an option for specifying the data format, such as DecisionTreeExample, but the option is enclosed in angle brackets like "opt[String]("<dataFormat>")."  This is probably just a typo but makes it awkward to use the option.


---

* [SPARK-7331](https://issues.apache.org/jira/browse/SPARK-7331) | *Minor* | **Create HiveConf per application instead of per query in HiveQl.scala**

A new HiveConf is created per query in getAst method in HiveQl.scala

  def getAst(sql: String): ASTNode = {

    /*
     * Context has to be passed in hive0.13.1.
     * Otherwise, there will be Null pointer exception,
     * when retrieving properties form HiveConf.
     */

    val hContext = new Context(new HiveConf())

    val node = ParseUtils.findRootNonNullToken((new ParseDriver).parse(sql, hContext))

    hContext.clear()

    node

  }

Creating hiveConf adds a minimum of 90ms delay per query. So moving its creation in Object such that it gets created once.


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

* [SPARK-6998](https://issues.apache.org/jira/browse/SPARK-6998) | *Major* | **Make StreamingKMeans `Serializable`**

If `StreamingKMeans` is not `Serializable`, we cannot do checkpoint for applications that using `StreamingKMeans`. So we should make it `Serializable`.


---

* [SPARK-6952](https://issues.apache.org/jira/browse/SPARK-6952) | *Minor* | **spark-daemon.sh PID reuse check fails on long classpath**

{{sbin/spark-daemon.sh}} uses {{ps -p "$TARGET\_PID" -o args=}} to figure out whether the process running with the expected PID is actually a Spark daemon. When running with a large classpath, the output of {{ps}} gets truncated and the check fails spuriously.

I think we should weaken the check to see if it's a java command (which is something we do in other parts of the script) rather than looking for the specific main class name. This means that SPARK-4832 might happen under a slightly broader range of circumstances (a *java* program happened to reuse the same PID), but it seems worthwhile compared to failing consistently with a large classpath.


---

* [SPARK-6905](https://issues.apache.org/jira/browse/SPARK-6905) | *Major* | **Upgrade Snappy Java to 1.1.1.7 to fix bug that resulted in worse compression**

We should upgrade our {{snappy-java}} dependency to 1.1.1.7 in order to include a fix for a bug that resulted in worse compression (see https://github.com/xerial/snappy-java/issues/100).  I believe that this may partially fix SPARK-5081, an issue where the size of shuffle data increased from Spark 1.1.x to 1.2.0.


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

* [SPARK-6753](https://issues.apache.org/jira/browse/SPARK-6753) | *Minor* | **Unit test for SPARK-3426 (in ShuffleSuite) doesn't correctly clone the SparkConf**

As a result, that test always uses the default shuffle settings, rather than using the shuffle manager / other settings set by tests that extend ShuffleSuite.


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



