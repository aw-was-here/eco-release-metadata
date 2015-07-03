
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
#  1.4.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [SPARK-8715](https://issues.apache.org/jira/browse/SPARK-8715) | *Major* | **ArrayOutOfBoundsException for DataFrameStatSuite.crosstab**

columnNames may turn out to be less than 9 elements. Use columnNames.length in the for loop instead.


---

* [SPARK-8710](https://issues.apache.org/jira/browse/SPARK-8710) | *Major* | **ScalaReflection.mirror should be a def**

Right now, it is a val (https://github.com/apache/spark/blob/master/sql/catalyst/src/main/scala/org/apache/spark/sql/catalyst/ScalaReflection.scala#L31). This introduces problems when we trigger the creation of ScalaReflection in one thread and use it in another thread.


---

* [SPARK-8678](https://issues.apache.org/jira/browse/SPARK-8678) | *Major* | **Default values in Pipeline API should be immutable**

If the default params are mutable, then if the function or method is called again without any value for the default params, then the changed values are used.


---

* [SPARK-8662](https://issues.apache.org/jira/browse/SPARK-8662) | *Major* | **[SparkR] SparkSQL tests fail in R 3.2**

SparkR tests for equality using `all.equal` on environments fail in R 3.2.

This is due to a change in how equality between environments is handled in the new version of R.

This should most likely not be a huge problem, we'll just have to rewrite some of the tests to be more fine-grained instead of testing equality on entire environments.


---

* [SPARK-8634](https://issues.apache.org/jira/browse/SPARK-8634) | *Critical* | **Fix flaky test StreamingListenerSuite "receiver info reporting"**

As per the unit test log in https://amplab.cs.berkeley.edu/jenkins/job/SparkPullRequestBuilder/35754/

{code}
15/06/24 23:09:10.210 Thread-3495 INFO ReceiverTracker: Starting 1 receivers
15/06/24 23:09:10.270 Thread-3495 INFO SparkContext: Starting job: apply at Transformer.scala:22
...
15/06/24 23:09:14.259 ForkJoinPool-4-worker-29 INFO StreamingListenerSuiteReceiver: Started receiver and sleeping
15/06/24 23:09:14.270 ForkJoinPool-4-worker-29 INFO StreamingListenerSuiteReceiver: Reporting error and sleeping
{code}

it needs at least 4 seconds to receive all receiver events in this slow machine, but `timeout` for `eventually` is only 2 seconds.

We can increase `timeout` to make this test stable.


---

* [SPARK-8630](https://issues.apache.org/jira/browse/SPARK-8630) | *Major* | **Prevent from checkpointing QueueInputDStream**

It's better to prevent from checkpointing QueueInputDStream rather than failing the application when recovering `QueueInputDStream`, so that people can find the issue as soon as possible. See SPARK-8553 for example.


---

* [SPARK-8619](https://issues.apache.org/jira/browse/SPARK-8619) | *Major* | **Can't find the keytab file when recovering the streaming application.**

In a streaming application, I use *--keytab /root/spark.keytab* to get the token.
But when the streaming application failed and I wanted to recover it from checkpoint file, there was an error:
{quote}
java.io.IOException: Login failure for spark/hadoop.hadoop.com@HADOOP.COM from keytab spark.keytab-1fd8f7bb-0d3c-4f65-990a-9ae09055cc8d: javax.security.auth.login.LoginException: Unable to obtain password from user
{quote}

Spark had changed the configuration, so the checkpoint can't find the file:
{code:title=Client.java @ Function: setupCredentials |borderStyle=solid}
      val keytabFileName = f.getName + "-" + UUID.randomUUID().toString
      UserGroupInformation.loginUserFromKeytab(args.principal, args.keytab)
      loginFromKeytab = true
      sparkConf.set("spark.yarn.keytab", keytabFileName)
{code}

So when recovering the application, we should ignore this configurations.


---

* [SPARK-8607](https://issues.apache.org/jira/browse/SPARK-8607) | *Critical* | **SparkR - Third party jars are not being added to classpath in SparkRBackend**

Getting a ClassNotFound exception when using the --jars flag in the SparkR shell, as well as when creating a sparkContext with sparkR.init.

Related to https://issues.apache.org/jira/browse/SPARK-5185


---

* [SPARK-8606](https://issues.apache.org/jira/browse/SPARK-8606) | *Critical* | **Exceptions in RDD.getPreferredLocations() and getPartitions() should not be able to crash DAGScheduler**

RDD.getPreferredLocations() and RDD.getPartitions() may throw exceptions but the DAGScheduler does not guard against this, leaving it vulnerable to crashing and stopping the SparkContext if exceptions occur there.

We should fix this by adding more try blocks around these calls in DAGScheduler.


---

* [SPARK-8541](https://issues.apache.org/jira/browse/SPARK-8541) | *Minor* | **sumApprox and meanApprox doctests are incorrect**

The doctests for sumApprox and meanApprox methods test against an upper bound but not a lower bound. If there was a regression in the underlying code that caused things to go wrong the doctest may not fail. For example if sumApprox returned 0 the doctest would return -1 which is less than 0.05. Solution is to use the abs() function to test that the approximate answer is within 5% of the exact answer.


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

* [SPARK-8475](https://issues.apache.org/jira/browse/SPARK-8475) | *Minor* | **SparkSubmit with Ivy jars is very slow to load with no internet access**

Spark Submit adds maven central & spark bintray to the ChainResolver before it adds any external resolvers. 

https://github.com/apache/spark/blob/branch-1.4/core/src/main/scala/org/apache/spark/deploy/SparkSubmit.scala#L821

When running on a cluster without internet access, this means the spark shell takes forever to launch as it tries these two remote repos before the ones specified in the --repositories list. In our case we have a proxy which the cluster can access it and supply it via --repositories.

This is also a problem for users who maintain a proxy for maven/ivy repos with something like Nexus/Artifactory. Having a repo proxy is popular at many organisations so I'd say this would be a useful change for these users as well. In the current state even if a maven central proxy is supplied, it will still try and hit central. 

I see two options for a fix;

* Change the order repos are added to the ChainResolver, making the --repositories supplied repos come before anything else. https://github.com/apache/spark/blob/branch-1.4/core/src/main/scala/org/apache/spark/deploy/SparkSubmit.scala#L843 
* Have a config option (like spark.jars.ivy.useDefaultRemoteRepos, default true) which when false wont add the maven central & bintry to the ChainResolver. 

Happy to do a PR for this fix.


---

* [SPARK-8437](https://issues.apache.org/jira/browse/SPARK-8437) | *Minor* | **Using directory path without wildcard for filename slow for large number of files with wholeTextFiles and binaryFiles**

When calling wholeTextFiles or binaryFiles with a directory path with 10,000s of files in it, Spark hangs for a few minutes before processing the files.

If you add a * to the end of the path, there is no delay.

This happens for me on Spark 1.3.1 and 1.4 on the local filesystem, HDFS, and on S3.

To reproduce, create a directory with 50,000 files in it, then run:


val a = sc.binaryFiles("file:/path/to/files/")
a.count()

val b = sc.binaryFiles("file:/path/to/files/*")
b.count()

and monitor the different startup times.

For example, in the spark-shell these commands are pasted in together, so the delay at f.count() is from 10:11:08 t- 10:13:29 to output "Total input paths to process : 49999", then until 10:15:42 to being processing files:

scala> val f = sc.binaryFiles("file:/home/ewan/large/")
15/06/18 10:11:07 INFO MemoryStore: ensureFreeSpace(160616) called with curMem=0, maxMem=278019440
15/06/18 10:11:07 INFO MemoryStore: Block broadcast\_0 stored as values in memory (estimated size 156.9 KB, free 265.0 MB)
15/06/18 10:11:08 INFO MemoryStore: ensureFreeSpace(17282) called with curMem=160616, maxMem=278019440
15/06/18 10:11:08 INFO MemoryStore: Block broadcast\_0\_piece0 stored as bytes in memory (estimated size 16.9 KB, free 265.0 MB)
15/06/18 10:11:08 INFO BlockManagerInfo: Added broadcast\_0\_piece0 in memory on localhost:40430 (size: 16.9 KB, free: 265.1 MB)
15/06/18 10:11:08 INFO SparkContext: Created broadcast 0 from binaryFiles at <console>:21
f: org.apache.spark.rdd.RDD[(String, org.apache.spark.input.PortableDataStream)] = file:/home/ewan/large/ BinaryFileRDD[0] at binaryFiles at <console>:21

scala> f.count()
15/06/18 10:13:29 INFO FileInputFormat: Total input paths to process : 49999
15/06/18 10:15:42 INFO FileInputFormat: Total input paths to process : 49999
15/06/18 10:15:42 INFO CombineFileInputFormat: DEBUG: Terminated node allocation with : CompletedNodes: 1, size left: 0
15/06/18 10:15:42 INFO SparkContext: Starting job: count at <console>:24
15/06/18 10:15:42 INFO DAGScheduler: Got job 0 (count at <console>:24) with 49999 output partitions (allowLocal=false)
15/06/18 10:15:42 INFO DAGScheduler: Final stage: ResultStage 0(count at <console>:24)
15/06/18 10:15:42 INFO DAGScheduler: Parents of final stage: List()

Adding a * to the end of the path removes the delay:


scala> val f = sc.binaryFiles("file:/home/ewan/large/*")
15/06/18 10:08:29 INFO MemoryStore: ensureFreeSpace(160616) called with curMem=0, maxMem=278019440
15/06/18 10:08:29 INFO MemoryStore: Block broadcast\_0 stored as values in memory (estimated size 156.9 KB, free 265.0 MB)
15/06/18 10:08:29 INFO MemoryStore: ensureFreeSpace(17309) called with curMem=160616, maxMem=278019440
15/06/18 10:08:29 INFO MemoryStore: Block broadcast\_0\_piece0 stored as bytes in memory (estimated size 16.9 KB, free 265.0 MB)
15/06/18 10:08:29 INFO BlockManagerInfo: Added broadcast\_0\_piece0 in memory on localhost:42825 (size: 16.9 KB, free: 265.1 MB)
15/06/18 10:08:29 INFO SparkContext: Created broadcast 0 from binaryFiles at <console>:21
f: org.apache.spark.rdd.RDD[(String, org.apache.spark.input.PortableDataStream)] = file:/home/ewan/large/* BinaryFileRDD[0] at binaryFiles at <console>:21

scala> f.count()
15/06/18 10:08:32 INFO FileInputFormat: Total input paths to process : 49999
15/06/18 10:08:33 INFO FileInputFormat: Total input paths to process : 49999
15/06/18 10:08:35 INFO CombineFileInputFormat: DEBUG: Terminated node allocation with : CompletedNodes: 1, size left: 0
15/06/18 10:08:35 INFO SparkContext: Starting job: count at <console>:24
15/06/18 10:08:35 INFO DAGScheduler: Got job 0 (count at <console>:24) with 49999 output partitions


---

* [SPARK-8410](https://issues.apache.org/jira/browse/SPARK-8410) | *Minor* | **Hive VersionsSuite RuntimeException**

While testing Spark Project Hive, there are RuntimeExceptions as follows,

VersionsSuite:
- success sanity check *** FAILED ***
  java.lang.RuntimeException: [download failed: org.jboss.netty#netty;3.2.2.Final!netty.jar(bundle), download failed: org.codehaus.groovy#groovy-all;2.1.6!groovy-all.jar, download failed: asm#asm;3.2!asm.jar]
  at org.apache.spark.deploy.SparkSubmitUtils$.resolveMavenCoordinates(SparkSubmit.scala:978)
  at org.apache.spark.sql.hive.client.IsolatedClientLoader$$anonfun$3.apply(IsolatedClientLoader.scala:62)
  at org.apache.spark.sql.hive.client.IsolatedClientLoader$$anonfun$3.apply(IsolatedClientLoader.scala:62)
  at org.apache.spark.sql.catalyst.util.package$.quietly(package.scala:38)
  at org.apache.spark.sql.hive.client.IsolatedClientLoader$.org$apache$spark$sql$hive$client$IsolatedClientLoader$$downloadVersion(IsolatedClientLoader.scala:61)
  at org.apache.spark.sql.hive.client.IsolatedClientLoader$$anonfun$1.apply(IsolatedClientLoader.scala:44)
  at org.apache.spark.sql.hive.client.IsolatedClientLoader$$anonfun$1.apply(IsolatedClientLoader.scala:44)
  at scala.collection.mutable.MapLike$class.getOrElseUpdate(MapLike.scala:189)
  at scala.collection.mutable.AbstractMap.getOrElseUpdate(Map.scala:91)
  at org.apache.spark.sql.hive.client.IsolatedClientLoader$.forVersion(IsolatedClientLoader.scala:44)
  ...

The tests are executed with the following set of options,

build/mvn --pl sql/hive --fail-never -Pyarn -Phadoop-2.4 -Dhadoop.version=2.6.0 test

Adding the following dependencies in the "spark/sql/hive/pom.xml"  file solves this issue,

< 	<dependency>
< 		<groupId>org.jboss.netty</groupId>
< 		<artifactId>netty</artifactId>
< 		<version>3.2.2.Final</version>
< 	        <scope>test</scope>
< 	</dependency>
< 	<dependency>
< 		<groupId>org.codehaus.groovy</groupId>
< 		<artifactId>groovy-all</artifactId>
< 		<version>2.1.6</version>
< 		<scope>test</scope>
< 	</dependency>
< 
< 	<dependency>
< 		<groupId>asm</groupId>
< 		<artifactId>asm</artifactId>
< 		<version>3.2</version>
< 	        <scope>test</scope>
< 	</dependency>
< 

The question is, Is this the correct way to fix this runtimeException ?
If yes, Can a pull request fix this issue permanently ?
If not, suggestions please.

Updates:
The above mentioned quick fix is not working with the latest 1.4 because of
this pull commits :
 [SPARK-8095] Resolve dependencies of --packages in local ivy cache #6788 
https://github.com/apache/spark/pull/6788

Due to this above commit, now the lookup directories during testing phase
has changed as follows,
:: problems summary ::
:::: WARNINGS
		[NOT FOUND  ] org.jboss.netty#netty;3.2.2.Final!netty.jar(bundle) (2ms)

	==== local-m2-cache: tried

	  file:/home/joe/sparkibmsoe/spark/sql/hive/dummy/.m2/repository/org/jboss/netty/netty/3.2.2.Final/netty-3.2.2.Final.jar

		[NOT FOUND  ] org.codehaus.groovy#groovy-all;2.1.6!groovy-all.jar (0ms)

	==== local-m2-cache: tried

	  file:/home/joe/sparkibmsoe/spark/sql/hive/dummy/.m2/repository/org/codehaus/groovy/groovy-all/2.1.6/groovy-all-2.1.6.jar

		[NOT FOUND  ] asm#asm;3.2!asm.jar (0ms)

	==== local-m2-cache: tried

	  file:/home/joe/sparkibmsoe/spark/sql/hive/dummy/.m2/repository/asm/asm/3.2/asm-3.2.jar

		::::::::::::::::::::::::::::::::::::::::::::::

		::              FAILED DOWNLOADS            ::

		:: ^ see resolution messages for details  ^ ::

		::::::::::::::::::::::::::::::::::::::::::::::

		:: org.jboss.netty#netty;3.2.2.Final!netty.jar(bundle)

		:: org.codehaus.groovy#groovy-all;2.1.6!groovy-all.jar

		:: asm#asm;3.2!asm.jar

		::::::::::::::::::::::::::::::::::::::::::::::


---

* [SPARK-8399](https://issues.apache.org/jira/browse/SPARK-8399) | *Minor* | **Overlap between histograms and axis' name in Spark Streaming UI**

If you have an histogram skewed towards the maximum of the displayed values as is the case with the number of messages processed per batchInterval with the Kafka direct API (since it's a constant) for example, the histogram will overlap with the name of the X axis (#batches).

Unfortunately, I don't have any screenshots available.


---

* [SPARK-8355](https://issues.apache.org/jira/browse/SPARK-8355) | *Critical* | **Python DataFrameReader/Writer should mirror scala**

All the functions that I can run in scala should also work in python.  At least {{ctx.read.option}} is missing, but we should also audit to make sure there aren't others.


---

* [SPARK-7810](https://issues.apache.org/jira/browse/SPARK-7810) | *Major* | **rdd.py "\_load\_from\_socket" cannot load data from jvm socket if ipv6 is used**

Method "\_load\_from\_socket" in rdd.py cannot load data from jvm socket if ipv6 is used. The current method only works well with ipv4. New modification should work around both two protocols.



