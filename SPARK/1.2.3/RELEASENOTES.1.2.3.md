
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



