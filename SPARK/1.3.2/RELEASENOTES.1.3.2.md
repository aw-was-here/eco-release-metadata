
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
#  1.3.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [SPARK-6998](https://issues.apache.org/jira/browse/SPARK-6998) | *Major* | **Make StreamingKMeans `Serializable`**

If `StreamingKMeans` is not `Serializable`, we cannot do checkpoint for applications that using `StreamingKMeans`. So we should make it `Serializable`.


---

* [SPARK-6992](https://issues.apache.org/jira/browse/SPARK-6992) | *Minor* | **Spark SQL documentation for programmatically adding a Schema is broken for Java API**

The Java example for the documentation is not compiling mainly because Row.create and DataType is used instead of RowFactory and DataTypes.

I'll create the corresponding pull request on branch-1.3

Regards, 

Olivier.


---

* [SPARK-6988](https://issues.apache.org/jira/browse/SPARK-6988) | *Minor* | **Fix Spark SQL documentation for 1.3.x**

There are a few glitches regarding the DataFrame API usage in Java.
The most important one being how to map a DataFrame result, using the javaRDD method.


---

* [SPARK-6975](https://issues.apache.org/jira/browse/SPARK-6975) | *Minor* | **Argument checking conflict in Yarn when dynamic allocation is enabled**

When dynamic allocation is enabled in yarn with default parameter, {{numExecutors}} will be set to 0, but this will be failed in the following {{valideArgs()}}, here {{numExecutors}} must > 0, but for dynamic allocation, this executor number can be 0 (with default setting). The exception is shown as below:

Exception in thread "main" java.lang.IllegalArgumentException: You must specify at least 1 executor!


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

* [SPARK-6868](https://issues.apache.org/jira/browse/SPARK-6868) | *Minor* | **Container link broken on Spark UI Executors page when YARN is set to HTTPS\_ONLY**

The stdout and stderr log links on the executor page will use the http:// prefix even if the node manager does not support http and only https via setting yarn.http.policy=HTTPS\_ONLY.

Unfortunately the unencrypted http link in that case does not return a 404 but a binary file containing random binary chars. This causes a lot of confusion for the end user since it seems like the log file exists and is just filled with garbage. (see attached screenshot)

The fix is to prefix container log links with https:// instead of http:// if yarn.http.policy=HTTPS\_ONLY. YARN's job page has this exact logic as seen here: https://github.com/apache/hadoop/blob/e1109fb65608a668cd53dc324dadc6f63a74eeb9/hadoop-mapreduce-project/hadoop-mapreduce-client/hadoop-mapreduce-client-app/src/main/java/org/apache/hadoop/mapreduce/v2/app/webapp/JobBlock.java#L108


---

* [SPARK-6860](https://issues.apache.org/jira/browse/SPARK-6860) | *Minor* | **Fix the possible inconsistency of StreamingPage**

Because "StreamingPage.render" doesn't hold the "listener" lock when generating the content, the different parts of content may have some inconsistent values if "listener" updates its status at the same time. And it will confuse people.

We should add "listener.synchronized" to make sure we have a consistent view of StreamingJobProgressListener when creating the content.


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

* [SPARK-6766](https://issues.apache.org/jira/browse/SPARK-6766) | *Major* | **StreamingListenerBatchSubmitted isn't sent and StreamingListenerBatchStarted.batchInfo.processingStartTime is a wrong value**

1. Now there is no place posting StreamingListenerBatchSubmitted. It should be post when JobSet is submitted.
2. Call JobSet.handleJobStart before posting StreamingListenerBatchStarted will set StreamingListenerBatchStarted.batchInfo.processingStartTime to None, which should have been set to a correct value.


---

* [SPARK-6753](https://issues.apache.org/jira/browse/SPARK-6753) | *Minor* | **Unit test for SPARK-3426 (in ShuffleSuite) doesn't correctly clone the SparkConf**

As a result, that test always uses the default shuffle settings, rather than using the shuffle manager / other settings set by tests that extend ShuffleSuite.


---

* [SPARK-6636](https://issues.apache.org/jira/browse/SPARK-6636) | *Minor* | **Use public DNS hostname everywhere in spark\_ec2.py**

The spark\_ec2.py script uses public\_dns\_name everywhere in the script except for testing ssh availability, which is done using the public ip address of the instances. This breaks the script for users who are deploying the cluster with a private-network-only security group. The fix is to use public\_dns\_name in the remaining place.

I am submitting a pull-request alongside this bug report.


---

* [SPARK-6506](https://issues.apache.org/jira/browse/SPARK-6506) | *Major* | **python support yarn cluster mode requires SPARK\_HOME to be set**

We added support for python running in yarn cluster mode in https://issues.apache.org/jira/browse/SPARK-5173, but it requires that SPARK\_HOME be set in the environment variables for application master and executor.  It doesn't have to be set to anything real but it fails if its not set.  See the command at the end of: https://github.com/apache/spark/pull/3976


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

* [SPARK-5634](https://issues.apache.org/jira/browse/SPARK-5634) | *Minor* | **History server shows misleading message when there are no incomplete apps**

If you go to the history server, and click on "Show incomplete applications", but there are no incomplete applications, you get a misleading message:

{noformat}
No completed applications found!

Did you specify the correct logging directory? (etc etc)
{noformat}

That's the same message used when no complete applications are found; it should probably be tweaked for the incomplete apps case.



