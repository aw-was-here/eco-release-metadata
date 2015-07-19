
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
# Apache Spark  1.4.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [SPARK-9087](https://issues.apache.org/jira/browse/SPARK-9087) | *Critical* | **Broken SQL on where condition involving timestamp and time string.**

Suppose mytable has a field called greenwich, which is in  timestamp type.  The table is registered through a java bean. The following code used to work in 1.3 and 1.3.1, now it is broken: there are records having time newer 01/14/2015 , but it now returns nothing. This is a block issue for us. Is there any workaround? 

SELECT *  FROM mytable  WHERE    greenwich >  '2015-01-14'


---

* [SPARK-8909](https://issues.apache.org/jira/browse/SPARK-8909) | *Trivial* | **Nice to have all the examples in scala, java,python, R to be same in sql-programming-guide**

in the sql-programming-guide. in the section manually specifying the options. Our scala example is not in sync with the  java, python, R examples.

So to be consistent it would be nice to have format as parquest for scala code section


---

* [SPARK-8903](https://issues.apache.org/jira/browse/SPARK-8903) | *Blocker* | **Fix NPE when cross tab elements contain nulls (branch 1.4)**

The backport of SPARK-8803 to branch-1.4 contains an error:

It calls 

{code}
countsRow.setString(0, cleanElement(col1Item.toString))
{code}

instead of 

{code}
countsRow.setString(0, cleanElement(col1Item))
{code}

which leads to a NullPointerException when col1Item == null.'

This caused a test failure in DataFrameStatSuite:

{code}
- special crosstab elements (., '', null, ``) *** FAILED ***
  java.lang.NullPointerException:
  at org.apache.spark.sql.execution.stat.StatFunctions$$anonfun$4.apply(StatFunctions.scala:131)
  at org.apache.spark.sql.execution.stat.StatFunctions$$anonfun$4.apply(StatFunctions.scala:121)
  at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
  at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
  at scala.collection.immutable.Map$Map4.foreach(Map.scala:181)
  at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
  at scala.collection.AbstractTraversable.map(Traversable.scala:105)
  at org.apache.spark.sql.execution.stat.StatFunctions$.crossTabulate(StatFunctions.scala:121)
  at org.apache.spark.sql.DataFrameStatFunctions.crosstab(DataFrameStatFunctions.scala:94)
  at org.apache.spark.sql.DataFrameStatSuite$$anonfun$5.apply$mcV$sp(DataFrameStatSuite.scala:97)
 {code}


---

* [SPARK-8902](https://issues.apache.org/jira/browse/SPARK-8902) | *Trivial* | **Hostname missing in spark-ec2 error message**

When SSH to a machine fails, the following message is printed:

{noformat}
Failed to SSH to remote host {0}.
Please check that you have provided the correct --identity-file and --key-pair parameters and try again.
{noformat}

The intention is to print the host name, but instead {0} is printed.

I have a pull request for this: https://github.com/apache/spark/pull/7288


---

* [SPARK-8900](https://issues.apache.org/jira/browse/SPARK-8900) | *Major* | **sparkPackages flag name is wrong in the documentation**

The SparkR documentation example in http://people.apache.org/~pwendell/spark-releases/latest/sparkr.html is incorrect.

    sc <- sparkR.init(packages="com.databricks:spark-csv\_2.11:1.0.3")
should be
    sc <- sparkR.init(sparkPackages="com.databricks:spark-csv\_2.11:1.0.3")


---

* [SPARK-8894](https://issues.apache.org/jira/browse/SPARK-8894) | *Major* | **Example code errors in SparkR documentation**

There are errors in SparkR related documentation.
1. in https://spark.apache.org/docs/latest/sql-programming-guide.html#hive-tables, for R part, 
{code}
results = sqlContext.sql("FROM src SELECT key, value").collect()
{code}
should be
{code}
results <- collect(sql(sqlContext, "FROM src SELECT key, value"))
{code}

2. in https://spark.apache.org/docs/latest/sparkr.html#from-hive-tables, 
{code}
results <- hiveContext.sql("FROM src SELECT key, value")
{code}
should be
{code}
results <- sql(hiveContext, "FROM src SELECT key, value")
{code}


---

* [SPARK-8868](https://issues.apache.org/jira/browse/SPARK-8868) | *Minor* | **SqlSerializer2 can go into infinite loop when row consists only of NullType columns**

The following SQL query will cause an infinite loop in SqlSerializer2 code:

{code}
val df = sqlContext.sql("select null where 1 = 1")
df.unionAll(df).sort("\_c0").collect()
{code}

The same problem occurs if we add more null-literals, but does not occur as long as there is a column of any other type (e.g. {{select 1, null where 1 == 1}}).

I think that what's happening here is that if you have a row that consists only of columns of NullType (not columns of other types which happen to only contain null values, but only columns of null literals), SqlSerializer will end up writing / reading no data for rows of this type.  Since the deserialization stream will never try to read any data but nevertheless will be able to return an empty row, DeserializationStream.asIterator will go into an infinite loop since there will never be a read to trigger an EOF exception.


---

* [SPARK-8821](https://issues.apache.org/jira/browse/SPARK-8821) | *Major* | **The ec2 script doesn't run on python 3 with an utf8 env**

Otherwise the script will crash with

 - Downloading boto...
Traceback (most recent call last):
  File "ec2/spark\_ec2.py", line 148, in <module>
    setup\_external\_libs(external\_libs)
  File "ec2/spark\_ec2.py", line 128, in setup\_external\_libs
    if hashlib.md5(tar.read()).hexdigest() != lib["md5"]:
  File "/usr/lib/python3.4/codecs.py", line 319, in decode
    (result, consumed) = self.\_buffer\_decode(data, self.errors, final)
UnicodeDecodeError: 'utf-8' codec can't decode byte 0x8b in position 1: invalid start byte

In case of an utf8 env setting.


---

* [SPARK-8819](https://issues.apache.org/jira/browse/SPARK-8819) | *Blocker* | **Spark doesn't compile with maven 3.3.x**

Simple reproduction: Install maven 3.3.3 and run "build/mvn clean package -DskipTests"

This works just fine for maven 3.2.1 but not for 3.3.x. The result is an infinite loop caused by MSHADE-148:
{code}
[INFO] Replacing /Users/andrew/Documents/dev/spark/andrew-spark/bagel/target/spark-bagel\_2.10-1.5.0-SNAPSHOT.jar with /Users/andrew/Documents/dev/spark/andrew-spark/bagel/target/spark-bagel\_2.10-1.5.0-SNAPSHOT-shaded.jar
[INFO] Dependency-reduced POM written at: /Users/andrew/Documents/dev/spark/andrew-spark/bagel/dependency-reduced-pom.xml
[INFO] Dependency-reduced POM written at: /Users/andrew/Documents/dev/spark/andrew-spark/bagel/dependency-reduced-pom.xml
...
{code}

This is ultimately caused by SPARK-7558 (master 9eb222c13991c2b4a22db485710dc2e27ccf06dd) but is recently revealed through SPARK-8781 (master 82cf3315e690f4ac15b50edea6a3d673aa5be4c0).


---

* [SPARK-8804](https://issues.apache.org/jira/browse/SPARK-8804) | *Blocker* | ** order of UTF8String is wrong if there is any non-ascii character in it**

We compare the UTF8String byte by byte, but byte in JVM is signed, it should be compared as unsigned.


---

* [SPARK-8803](https://issues.apache.org/jira/browse/SPARK-8803) | *Major* | **Crosstab element's can't contain null's and back ticks**

Having back ticks or null as elements causes problems. 

Since elements become column names, we have to drop them from the element as back ticks are special characters.

Having null throws exceptions, we could replace them with empty strings.


---

* [SPARK-8787](https://issues.apache.org/jira/browse/SPARK-8787) | *Trivial* | **Change the parameter  order of @deprecated in package object sql**

Parameter order of @deprecated annotation  in package object sql is wrong 
deprecated("1.3.0", "use DataFrame") .

This has to be changed to  deprecated("use DataFrame", "1.3.0")


---

* [SPARK-8781](https://issues.apache.org/jira/browse/SPARK-8781) | *Blocker* | **Published POMs are no longer effective POMs**

Published to maven repository POMs are no longer effective POMs. E.g. 

In https://repository.apache.org/content/repositories/snapshots/org/apache/spark/spark-core\_2.11/1.4.2-SNAPSHOT/spark-core\_2.11-1.4.2-20150702.043114-52.pom:

{noformat}
...
<dependency>
<groupId>org.apache.spark</groupId>
<artifactId>spark-launcher\_${scala.binary.version}</artifactId>
<version>${project.version}</version>
</dependency>
...
{noformat}

while it should be

{noformat}
...
<dependency>
<groupId>org.apache.spark</groupId>
<artifactId>spark-launcher\_2.11</artifactId>
<version>${project.version}</version>
</dependency>
...
{noformat}


The following commits are most likely the cause of it:
- for branch-1.3: https://github.com/apache/spark/commit/ce137b8ed3b240b7516046699ac96daa55ddc129
- for branch-1.4: https://github.com/apache/spark/commit/84da653192a2d9edb82d0dbe50f577c4dc6a0c78
- for master: https://github.com/apache/spark/commit/984ad60147c933f2d5a2040c87ae687c14eb1724

On branch-1.4 reverting the commit fixed the issue.

See SPARK-3812 for additional details


---

* [SPARK-8776](https://issues.apache.org/jira/browse/SPARK-8776) | *Major* | **Increase the default MaxPermSize**

Since 1.4.0, Spark SQL has isolated class loaders for seperating hive dependencies on metastore and execution, which increases the memory consumption of PermGen. How about we increase the default size from 128m to 256m? Seems the change we need to make is https://github.com/apache/spark/blob/3c0156899dc1ec1f7dfe6d7c8af47fa6dc7d00bf/launcher/src/main/java/org/apache/spark/launcher/AbstractCommandBuilder.java#L139.


---

* [SPARK-8769](https://issues.apache.org/jira/browse/SPARK-8769) | *Trivial* | **toLocalIterator should mention it results in many jobs**

toLocalIterator on RDDs should mention that it results in mutliple jobs, and that to avoid re-computing, if the input was the result of a wide-transformation, the input should be cached.


---

* [SPARK-8754](https://issues.apache.org/jira/browse/SPARK-8754) | *Minor* | **YarnClientSchedulerBackend doesn't stop gracefully in failure conditions**

{code:xml}
java.lang.NullPointerException
        at org.apache.spark.scheduler.cluster.YarnClientSchedulerBackend.stop(YarnClientSchedulerBackend.scala:151)
        at org.apache.spark.scheduler.TaskSchedulerImpl.stop(TaskSchedulerImpl.scala:421)
        at org.apache.spark.scheduler.DAGScheduler.stop(DAGScheduler.scala:1447)
        at org.apache.spark.SparkContext.stop(SparkContext.scala:1651)
        at org.apache.spark.SparkContext.<init>(SparkContext.scala:572)
        at org.apache.spark.examples.SparkPi$.main(SparkPi.scala:28)
        at org.apache.spark.examples.SparkPi.main(SparkPi.scala)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:606)
        at org.apache.spark.deploy.SparkSubmit$.org$apache$spark$deploy$SparkSubmit$$runMain(SparkSubmit.scala:621)
        at org.apache.spark.deploy.SparkSubmit$.doRunMain$1(SparkSubmit.scala:170)
        at org.apache.spark.deploy.SparkSubmit$.submit(SparkSubmit.scala:193)
        at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:112)
        at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)
{code}

If the application has FINISHED/FAILED/KILLED or failed to launch application master, monitorThread is not getting initialized but monitorThread.interrupt() is getting invoked as part of stop() without any check and It is causing to throw NPE and also it is preventing to stop the client.


---

* [SPARK-8746](https://issues.apache.org/jira/browse/SPARK-8746) | *Trivial* | **Need to update download link for Hive 0.13.1 jars (HiveComparisonTest)**

The Spark SQL documentation (https://github.com/apache/spark/tree/master/sql) describes how to generate golden answer files for new hive comparison test cases. However the download link for the Hive 0.13.1 jars points to https://hive.apache.org/downloads.html but none of the linked mirror sites still has the 0.13.1 version.

We need to update the link to https://archive.apache.org/dist/hive/hive-0.13.1/


---

* [SPARK-8736](https://issues.apache.org/jira/browse/SPARK-8736) | *Critical* | **GBTRegressionModel thresholds prediction but should not**

It outputs 0/1 as though it is doing classification.  It should not.


---

* [SPARK-8720](https://issues.apache.org/jira/browse/SPARK-8720) | *Critical* | **PR #7036 breaks branch-1.4 because of a malformed comment**

There's an unfortunate {{/*}} in [this line|https://github.com/apache/spark/pull/7036/files#diff-364713d7776956cb8b0a771e9b62f82dR826] and thus started another unclosed comment block.


---

* [SPARK-8715](https://issues.apache.org/jira/browse/SPARK-8715) | *Major* | **ArrayOutOfBoundsException for DataFrameStatSuite.crosstab**

columnNames may turn out to be less than 9 elements. Use columnNames.length in the for loop instead.


---

* [SPARK-8710](https://issues.apache.org/jira/browse/SPARK-8710) | *Major* | **ScalaReflection.mirror should be a def**

Right now, it is a val (https://github.com/apache/spark/blob/master/sql/catalyst/src/main/scala/org/apache/spark/sql/catalyst/ScalaReflection.scala#L31). This introduces problems when we trigger the creation of ScalaReflection in one thread and use it in another thread.


---

* [SPARK-8687](https://issues.apache.org/jira/browse/SPARK-8687) | *Major* | **Spark on yarn-client mode can't send `spark.yarn.credentials.file` to executor.**

Yarn will set +spark.yarn.credentials.file+ after *DriverEndpoint* initialized. So executor will fetch the old configuration and will cause the problem.


---

* [SPARK-8678](https://issues.apache.org/jira/browse/SPARK-8678) | *Major* | **Default values in Pipeline API should be immutable**

If the default params are mutable, then if the function or method is called again without any value for the default params, then the changed values are used.


---

* [SPARK-8662](https://issues.apache.org/jira/browse/SPARK-8662) | *Major* | **[SparkR] SparkSQL tests fail in R 3.2**

SparkR tests for equality using `all.equal` on environments fail in R 3.2.

This is due to a change in how equality between environments is handled in the new version of R.

This should most likely not be a huge problem, we'll just have to rewrite some of the tests to be more fine-grained instead of testing equality on entire environments.


---

* [SPARK-8657](https://issues.apache.org/jira/browse/SPARK-8657) | *Minor* | **Fail to upload conf archive to viewfs**

When I run in spark-1.4 yarn-client mode, I throws the following Exception when trying to upload conf archive to viewfs:

15/06/26 17:56:37 INFO yarn.Client: Uploading resource file:/tmp/spark-095ec3d2-5dad-468c-8d46-2c813457404d/\_\_hadoop\_conf\_\_8436284925771788661
.zip -> viewfs://nsX/user/ultraman/.sparkStaging/application\_1434370929997\_191242/\_\_hadoop\_conf\_\_8436284925771788661.zip
15/06/26 17:56:38 INFO yarn.Client: Deleting staging directory .sparkStaging/application\_1434370929997\_191242
15/06/26 17:56:38 ERROR spark.SparkContext: Error initializing SparkContext.
java.lang.IllegalArgumentException: Wrong FS: hdfs://SunshineNameNode2:8020/user/ultraman/.sparkStaging/application\_1434370929997\_191242/\_\_had
oop\_conf\_\_8436284925771788661.zip, expected: viewfs://nsX/
        at org.apache.hadoop.fs.FileSystem.checkPath(FileSystem.java:645)
        at org.apache.hadoop.fs.viewfs.ViewFileSystem.getUriPath(ViewFileSystem.java:117)
        at org.apache.hadoop.fs.viewfs.ViewFileSystem.getFileStatus(ViewFileSystem.java:346)
        at org.apache.spark.deploy.yarn.ClientDistributedCacheManager.addResource(ClientDistributedCacheManager.scala:67)
        at org.apache.spark.deploy.yarn.Client$$anonfun$prepareLocalResources$5.apply(Client.scala:341)
        at org.apache.spark.deploy.yarn.Client$$anonfun$prepareLocalResources$5.apply(Client.scala:338)
        at scala.Option.foreach(Option.scala:236)
        at org.apache.spark.deploy.yarn.Client.prepareLocalResources(Client.scala:338)
        at org.apache.spark.deploy.yarn.Client.createContainerLaunchContext(Client.scala:559)
        at org.apache.spark.deploy.yarn.Client.submitApplication(Client.scala:115)
        at org.apache.spark.scheduler.cluster.YarnClientSchedulerBackend.start(YarnClientSchedulerBackend.scala:58)
        at org.apache.spark.scheduler.TaskSchedulerImpl.start(TaskSchedulerImpl.scala:141)
        at org.apache.spark.SparkContext.<init>(SparkContext.scala:497)
        at org.apache.spark.repl.SparkILoop.createSparkContext(SparkILoop.scala:1017)
        at $line3.$read$$iwC$$iwC.<init>(<console>:9)
        at $line3.$read$$iwC.<init>(<console>:18)
        at $line3.$read.<init>(<console>:20)
        at $line3.$read$.<init>(<console>:24)
        at $line3.$read$.<clinit>(<console>)
        at $line3.$eval$.<init>(<console>:7)
        at $line3.$eval$.<clinit>(<console>)
        at $line3.$eval.$print(<console>)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:606)
        at org.apache.spark.repl.SparkIMain$ReadEvalPrint.call(SparkIMain.scala:1065)
        at org.apache.spark.repl.SparkIMain$Request.loadAndRun(SparkIMain.scala:1338)
        at org.apache.spark.repl.SparkIMain.loadAndRunReq$1(SparkIMain.scala:840)

The bug is easy to fix, we should pass the correct file system object to addResource. The similar issure is: https://github.com/apache/spark/pull/1483. I will attach my bug fix PR very soon.


---

* [SPARK-8639](https://issues.apache.org/jira/browse/SPARK-8639) | *Trivial* | **Instructions for executing jekyll in docs/README.md could be slightly more clear, typo in docs/api.md**

In docs/README.md, the text states around line 31

Execute 'jekyll' from the 'docs/' directory. Compiling the site with Jekyll will create a directory called '\_site' containing index.html as well as the rest of the compiled files.

It might be more clear if we said

Execute 'jekyll build' from the 'docs/' directory to compile the site. Compiling the site with Jekyll will create a directory called '\_site' containing index.html as well as the rest of the compiled files.



In docs/api.md: "Here you can API docs for Spark and its submodules."
should be something like: "Here you can read API docs for Spark and its submodules."


---

* [SPARK-8637](https://issues.apache.org/jira/browse/SPARK-8637) | *Blocker* | **Packages argument is wrong in sparkR.init**

This was a bug introduced in https://github.com/apache/spark/pull/6928 and affects branch-1.4 and master branch


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

* [SPARK-8628](https://issues.apache.org/jira/browse/SPARK-8628) | *Critical* | **Race condition in AbstractSparkSQLParser.parse**

SPARK-5009 introduced the following code in AbstractSparkSQLParser:

{code}
def parse(input: String): LogicalPlan = {
    // Initialize the Keywords.
    lexical.initialize(reservedWords)
    phrase(start)(new lexical.Scanner(input)) match {
      case Success(plan, \_) => plan
      case failureOrError => sys.error(failureOrError.toString)
    }
  }
{code}

The corresponding initialize method in SqlLexical is not thread-safe:

{code}
  /* This is a work around to support the lazy setting */
  def initialize(keywords: Seq[String]): Unit = {
    reserved.clear()
    reserved ++= keywords
  }
{code}

I'm hitting this when parsing multiple SQL queries concurrently. When one query parsing starts, it empties the reserved keyword list, then a race-condition occurs and other queries fail to parse because they recognize keywords as identifiers.


---

* [SPARK-8621](https://issues.apache.org/jira/browse/SPARK-8621) | *Critical* | **crosstab exception when one of the value is empty**

I think this happened because some value is empty.

{code}
scala> df1.stat.crosstab("role", "lang")
org.apache.spark.sql.AnalysisException: syntax error in attribute name: ;
	at org.apache.spark.sql.catalyst.plans.logical.LogicalPlan.parseAttributeName(LogicalPlan.scala:145)
	at org.apache.spark.sql.catalyst.plans.logical.LogicalPlan.resolveQuoted(LogicalPlan.scala:135)
	at org.apache.spark.sql.DataFrame.resolve(DataFrame.scala:157)
	at org.apache.spark.sql.DataFrame.col(DataFrame.scala:603)
	at org.apache.spark.sql.DataFrameNaFunctions.org$apache$spark$sql$DataFrameNaFunctions$$fillCol(DataFrameNaFunctions.scala:394)
	at org.apache.spark.sql.DataFrameNaFunctions$$anonfun$2.apply(DataFrameNaFunctions.scala:160)
	at org.apache.spark.sql.DataFrameNaFunctions$$anonfun$2.apply(DataFrameNaFunctions.scala:157)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:33)
	at scala.collection.mutable.ArrayOps$ofRef.foreach(ArrayOps.scala:108)
	at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
	at scala.collection.mutable.ArrayOps$ofRef.map(ArrayOps.scala:108)
	at org.apache.spark.sql.DataFrameNaFunctions.fill(DataFrameNaFunctions.scala:157)
	at org.apache.spark.sql.DataFrameNaFunctions.fill(DataFrameNaFunctions.scala:147)
	at org.apache.spark.sql.DataFrameNaFunctions.fill(DataFrameNaFunctions.scala:132)
	at org.apache.spark.sql.execution.stat.StatFunctions$.crossTabulate(StatFunctions.scala:132)
	at org.apache.spark.sql.DataFrameStatFunctions.crosstab(DataFrameStatFunctions.scala:91)
{code}


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

* [SPARK-8604](https://issues.apache.org/jira/browse/SPARK-8604) | *Major* | **Parquet data source doesn't write summary file while doing appending**

Currently, Parquet and ORC data sources don't set their output format class, as we override the output committer in Spark SQL. However, SPARK-8678 ignores user defined output committer class while doing appending to avoid potential issues brought by direct output committers (e.g. {{DirectParquetOutputCommitter}}). This makes both of these data sources fallback to the default output committer retrieved from {{TextOutputFormat}}, which is {{FileOutputCommitter}}. For ORC, it's totally fine since ORC itself just uses {{FileOutputCommitter}}. But for Parquet, {{ParquetOutputCommitter}} also writes the summary files while committing the job.


---

* [SPARK-8578](https://issues.apache.org/jira/browse/SPARK-8578) | *Major* | **Should ignore user defined output committer when appending data**

When appending data to a file system via Hadoop API, it's safer to ignore user defined output committer classes like {{DirectParquetOutputCommitter}}. Because it's relatively hard to handle task failure in this case.  For example, {{DirectParquetOutputCommitter}} directly writes to the output directory to boost write performance when working with S3. However, there's no general way to determine task output file path of a specific task in Hadoop API, thus we don't know to revert a failed append job. (When doing overwrite, we can just remove the whole output directory.)


---

* [SPARK-8574](https://issues.apache.org/jira/browse/SPARK-8574) | *Major* | **org/apache/spark/unsafe doesn't honor the java source/target versions**

I built spark using jdk8 and the default source compatibility in the pom is 1.6 so I expected to be able to run Spark with jdk7, but if fails because the unsafe code doesn't seem to be honoring the source/target compatibility options set in the top level pom.

Exception in thread "main" java.lang.UnsupportedClassVersionError: org/apache/spark/unsafe/memory/MemoryAllocator : Unsupported major.minor version 52.0
        at java.lang.ClassLoader.defineClass1(Native Method)
        at java.lang.ClassLoader.defineClass(ClassLoader.java:791)
        at java.security.SecureClassLoader.defineClass(SecureClassLoader.java:142)
        at java.net.URLClassLoader.defineClass(URLClassLoader.java:449)
        at java.net.URLClassLoader.access$100(URLClassLoader.java:71)
        at java.net.URLClassLoader$1.run(URLClassLoader.java:361)
        at java.net.URLClassLoader$1.run(URLClassLoader.java:355)
        at java.security.AccessController.doPrivileged(Native Method)
        at java.net.URLClassLoader.findClass(URLClassLoader.java:354)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:423)
        at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:308)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:356)
        at org.apache.spark.SparkEnv$.create(SparkEnv.scala:392)
        at org.apache.spark.SparkEnv$.createExecutorEnv(SparkEnv.scala:211)
        at org.apache.spark.executor.CoarseGrainedExecutorBackend$$anonfun$run$1.apply$mcV$sp(CoarseGrainedExecutorBackend.scala:180)
        at org.apache.spark.deploy.SparkHadoopUtil.runAsSparkUser(SparkHadoopUtil.scala:74)
        at org.apache.spark.executor.CoarseGrainedExecutorBackend$.run(CoarseGrainedExecutorBackend.scala:146)
        at org.apache.spark.executor.CoarseGrainedExecutorBackend$.main(CoarseGrainedExecutorBackend.scala:245)
        at org.apache.spark.executor.CoarseGrainedExecutorBackend.main(CoarseGrainedExecutorBackend.scala)
15/06/23 19:48:24 INFO storage.DiskBlockManager: Shutdown hook called


---

* [SPARK-8568](https://issues.apache.org/jira/browse/SPARK-8568) | *Critical* | **Prevent accidental use of "and" and "or" to build invalid expressions in Python**

In Spark DataFrames (and in Pandas as well), the correct way to construct a conjunctive expression is to use the bitwise and operator, i.e.: "(x > 5) & (y > 6)". 

However, a lot of users assume that they should be using the Python "and" keyword, i.e. doing "x > 5 and y > 6". Python's boolean evaluation logic converts "x > 5 and y > 6" into just "y > 6" (since "x > 5" is not None). This is super confusing & error prone.

We should override \_\_bool\_\_ and \_\_nonzero\_\_ for Column to throw an exception if users call "and" and "or" on Column expressions.

Background: see this blog post http://www.nodalpoint.com/unexpected-behavior-of-spark-dataframe-filter-method/


---

* [SPARK-8567](https://issues.apache.org/jira/browse/SPARK-8567) | *Critical* | **Flaky test: o.a.s.sql.hive.HiveSparkSubmitSuite --jars**

Seems tests in HiveSparkSubmitSuite fail with timeout pretty frequently.


---

* [SPARK-8563](https://issues.apache.org/jira/browse/SPARK-8563) | *Major* | **Bug that IndexedRowMatrix.computeSVD() yields the U with wrong numCols**

IndexedRowMatrix.computeSVD() yields a wrong U which *U.numCols() = self.nCols*.

It should have been *U.numCols() = k = svd.U.numCols()*

{code}
self = U * sigma * V.transpose
(m x n) = (m x n) * (k x k) * (k x n)
-->
(m x n) = (m x k) * (k x k) * (k x n)
{code}


Proposed fix: https://github.com/apache/spark/pull/6953


---

* [SPARK-8548](https://issues.apache.org/jira/browse/SPARK-8548) | *Major* | **Remove the trailing whitespaces from the SparkR files**

On the {{lint-r}}'s advice, remove the trailing whiltespace from the SparkR files.


---

* [SPARK-8541](https://issues.apache.org/jira/browse/SPARK-8541) | *Minor* | **sumApprox and meanApprox doctests are incorrect**

The doctests for sumApprox and meanApprox methods test against an upper bound but not a lower bound. If there was a regression in the underlying code that caused things to go wrong the doctest may not fail. For example if sumApprox returned 0 the doctest would return -1 which is less than 0.05. Solution is to use the abs() function to test that the approximate answer is within 5% of the exact answer.


---

* [SPARK-8535](https://issues.apache.org/jira/browse/SPARK-8535) | *Major* | **PySpark : Can't create DataFrame from Pandas dataframe with no explicit column name**

Trying to create a Spark DataFrame from a pandas dataframe with no explicit column name : 

pandasDF = pd.DataFrame([[1, 2], [5, 6]])
sparkDF = sqlContext.createDataFrame(pandasDF)

***********

----> 1 sparkDF = sqlContext.createDataFrame(pandasDF)

/usr/local/Cellar/apache-spark/1.4.0/libexec/python/pyspark/sql/context.pyc in createDataFrame(self, data, schema, samplingRatio)
    344 
    345         jrdd = self.\_jvm.SerDeUtil.toJavaArray(rdd.\_to\_java\_object\_rdd())
--> 346         df = self.\_ssql\_ctx.applySchemaToPythonRDD(jrdd.rdd(), schema.json())
    347         return DataFrame(df, self)
    348 

/usr/local/Cellar/apache-spark/1.4.0/libexec/python/lib/py4j-0.8.2.1-src.zip/py4j/java\_gateway.py in \_\_call\_\_(self, *args)
    536         answer = self.gateway\_client.send\_command(command)
    537         return\_value = get\_return\_value(answer, self.gateway\_client,
--> 538                 self.target\_id, self.name)
    539 
    540         for temp\_arg in temp\_args:

/usr/local/Cellar/apache-spark/1.4.0/libexec/python/lib/py4j-0.8.2.1-src.zip/py4j/protocol.py in get\_return\_value(answer, gateway\_client, target\_id, name)
    298                 raise Py4JJavaError(
    299                     'An error occurred while calling {0}{1}{2}.\n'.
--> 300                     format(target\_id, '.', name), value)
    301             else:
    302                 raise Py4JError(

Py4JJavaError: An error occurred while calling o87.applySchemaToPythonRDD.


---

* [SPARK-8532](https://issues.apache.org/jira/browse/SPARK-8532) | *Blocker* | **In Python's DataFrameWriter, save/saveAsTable/json/parquet/jdbc always override mode**

Although users can use {{df.write.mode("overwrite")}} to specify the mode, when save/saveAsTable/json/parquet/jdbc is called, this mode will be overridden. For example, the implementation of json method is 
{code}
def json(self, path, mode="error"):
  self.\_jwrite.mode(mode).json(path)
{code}
If users only call {{json("path")}}, the mode will be "error" instead of the mode specified in the mode method.


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

* [SPARK-8511](https://issues.apache.org/jira/browse/SPARK-8511) | *Major* | **Modify ML Python tests to remove saved models**

According to the reference of python, {{os.removedirs}} doesn't work if there are any files in the directory we want to remove.
https://docs.python.org/3/library/os.html#os.removedirs

Instead of that, using {{shutil.rmtree()}} would be better to remove a temporary directory to test for saving model.
https://github.com/apache/spark/blob/branch-1.4/python%2Fpyspark%2Fmllib%2Fregression.py#L137


---

* [SPARK-8506](https://issues.apache.org/jira/browse/SPARK-8506) | *Minor* | **SparkR does not provide an easy way to depend on Spark Packages when performing init from inside of R**

While packages can be specified when using the sparkR or sparkSubmit scripts, the programming guide tells people to create their spark context using the R shell + init. The init does have a parameter for jars but no parameter for packages. Setting the SPARKR\_SUBMIT\_ARGS overwrites some necessary information. I think a good solution would just be adding another field to the init function to allow people to specify packages in the same way as jars.


---

* [SPARK-8489](https://issues.apache.org/jira/browse/SPARK-8489) | *Critical* | **Add regression tests for SPARK-8470**

See SPARK-8470 for more detail. Basically the Spark Hive code silently overwrites the context class loader populated in SparkSubmit, resulting in certain classes missing when we do reflection in `SQLContext#createDataFrame`.

That issue is already resolved in https://github.com/apache/spark/pull/6891, but we should add a regression test for the specific manifestation of the bug in SPARK-8470.


---

* [SPARK-8483](https://issues.apache.org/jira/browse/SPARK-8483) | *Major* | **Remove commons-lang3 depedency from flume-sink**

flume-sink module uses only one method from commons-lang3. Since the build would become complex if we create an assembly and would likely make it more difficult for customers, let's just remove the dependency altogether.


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

* [SPARK-8468](https://issues.apache.org/jira/browse/SPARK-8468) | *Blocker* | **Cross-validation with RegressionEvaluator prefers higher RMSE**

Please correct me if I'm wrong, but RegressionEvaluator seems to implement the evaluate() method backwards. The interface expects higher return values from evaluate() to indicate better models. RegressionEvaluator returns RMSE by default - a value we should try to minimize.


---

* [SPARK-8463](https://issues.apache.org/jira/browse/SPARK-8463) | *Major* | **No suitable driver found for write.jdbc**

I am getting a java.sql.SQLException: No suitable driver found for jdbc:mysql://dbhost/test when using df.write.jdbc.

I do not get this error when reading from the same database. 

This simple script can repeat the problem.
First one must create a database called test with a table called table1 and insert some rows in it. The user test:secret must have read/write permissions.

*testJDBC.scala:*
import java.util.Properties
import org.apache.spark.sql.Row
import java.sql.Struct
import org.apache.spark.sql.types.\{StructField, StructType, IntegerType, StringType}
import org.apache.spark.\{SparkConf, SparkContext}
import org.apache.spark.sql.SQLContext

val properties = new Properties()
properties.setProperty("user", "test")
properties.setProperty("password", "secret")
val readTable = sqlContext.read.jdbc("jdbc:mysql://dbhost/test", "table1", properties)

print(readTable.show())

val rows = sc.parallelize(List(Row(1, "write"), Row(2, "me")))
val writeTable = sqlContext.createDataFrame(rows, StructType(List(StructField("id", IntegerType), StructField("name", StringType))))
writeTable.write.jdbc("jdbc:mysql://dbhost/test", "table2", properties)}}

This is run using:
{{spark-shell --conf spark.executor.extraClassPath=/path/to/mysql-connector-java-5.1.35-bin.jar --driver-class-path /path/to/mysql-connector-java-5.1.35-bin.jar --jars /path/to/mysql-connector-java-5.1.35-bin.jar -i:testJDBC.scala}}

The read works fine and will print the rows in the table. The write fails with {{java.sql.SQLException: No suitable driver found for jdbc:mysql://dbhost/test}}. The new table is successfully created but it is empty.

I have tested this on a Mesos cluster with Spark 1.4.0 and the current master branch as of June 18th.

In the executor logs I do see before the error:
INFO Utils: Fetching http://146.203.54.236:50624/jars/mysql-connector-java-5.1.35-bin.jar
INFO Executor: Adding file:/tmp/mesos/slaves/.../mysql-connector-java-5.1.35-bin.jar to class loader

A workaround is to add the mysql-connector-java-5.1.35-bin.jar to the same location on each executor node as defined in spark.executor.extraClassPath.


---

* [SPARK-8462](https://issues.apache.org/jira/browse/SPARK-8462) | *Minor* | **Documentation fixes for Spark SQL**

This fixes various minor documentation issues on the Spark SQL page


---

* [SPARK-8452](https://issues.apache.org/jira/browse/SPARK-8452) | *Major* | **expose jobGroup API in SparkR**

Following job management calls are missing in SparkR:
{code}
setJobGroup()
cancelJobGroup()
clearJobGroup()
{code}


---

* [SPARK-8451](https://issues.apache.org/jira/browse/SPARK-8451) | *Major* | **SparkSubmitSuite never checks for process exit code**

We just never did. If the subprocess throws an exception we just ignore it.


---

* [SPARK-8446](https://issues.apache.org/jira/browse/SPARK-8446) | *Major* | **Add helper functions for testing physical SparkPlan operators**

SparkSQL has a nice {{QueryTest}} class for writing tests that run queries; I think we should add an analogous test utility for directly unit testing the physical SparkPlan operators.


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

* [SPARK-8420](https://issues.apache.org/jira/browse/SPARK-8420) | *Blocker* | **Inconsistent behavior with Dataframe Timestamp between 1.3.1 and 1.4.0**

I am trying out 1.4.0 and notice there are some differences in behavior with Timestamp between 1.3.1 and 1.4.0. 

In 1.3.1, I can compare a Timestamp with string.
{code}
scala> val df = sqlContext.createDataFrame(Seq((1, Timestamp.valueOf("2015-01-01 00:00:00")), (2, Timestamp.valueOf("2014-01-01 00:00:00"))))
...
scala> df.filter($"\_2" <= "2014-06-01").show
...
\_1 \_2                  
2  2014-01-01 00:00:...
{code}

However, in 1.4.0, the filter is always false:
{code}
scala> val df = sqlContext.createDataFrame(Seq((1, Timestamp.valueOf("2015-01-01 00:00:00")), (2, Timestamp.valueOf("2014-01-01 00:00:00"))))
df: org.apache.spark.sql.DataFrame = [\_1: int, \_2: timestamp]

scala> df.filter($"\_2" <= "2014-06-01").show
+--+--+
|\_1|\_2|
+--+--+
+--+--+
{code}


Not sure if that is intended, but I cannot find any doc mentioning these inconsistencies.


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

* [SPARK-8408](https://issues.apache.org/jira/browse/SPARK-8408) | *Minor* | **Python OR operator is not considered while creating a column of boolean type**

h3. Given

{code}
    d = [{'name': 'Alice', 'age': 1},{'name': 'Bob', 'age': 2}]
    person\_df = sqlContext.createDataFrame(d)
{code}
h3. When
{code}
    person\_df.filter(person\_df.age==1 or person\_df.age==2).collect()
{code}
h3. Expected

[Row(age=1, name=u'Alice'), Row(age=2, name=u'Bob')]

h3. Actual

[Row(age=1, name=u'Alice')]

h3. While
{code}
    person\_df.filter("age = 1 or age = 2").collect()
{code}
yields the correct result:

[Row(age=1, name=u'Alice'), Row(age=2, name=u'Bob')]


---

* [SPARK-8406](https://issues.apache.org/jira/browse/SPARK-8406) | *Blocker* | **Race condition when writing Parquet files**

To support appending, the Parquet data source tries to find out the max part number of part-files in the destination directory (the <id> in output file name "part-r-<id>.gz.parquet") at the beginning of the write job. In 1.3.0, this step happens on driver side before any files are written. However, in 1.4.0, this is moved to task side. Thus, for tasks scheduled later, they may see wrong max part number generated by newly written files by other finished tasks within the same job. This actually causes a race condition. In most cases, this only causes nonconsecutive IDs in output file names. But when the DataFrame contains thousands of RDD partitions, it's likely that two tasks may choose the same part number, thus one of them gets overwritten by the other.

The following Spark shell snippet can reproduce nonconsecutive part numbers:
{code}
sqlContext.range(0, 128).repartition(16).write.mode("overwrite").parquet("foo")
{code}
"16" can be replaced with any integer that is greater than the default parallelism on your machine (usually it means core number, on my machine it's 8).
{noformat}
-rw-r--r--   3 lian supergroup          0 2015-06-17 00:06 /user/lian/foo/\_SUCCESS
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00001.gz.parquet
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00002.gz.parquet
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00003.gz.parquet
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00004.gz.parquet
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00005.gz.parquet
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00006.gz.parquet
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00007.gz.parquet
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00008.gz.parquet
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00017.gz.parquet
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00018.gz.parquet
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00019.gz.parquet
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00020.gz.parquet
-rw-r--r--   3 lian supergroup        352 2015-06-17 00:06 /user/lian/foo/part-r-00021.gz.parquet
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00022.gz.parquet
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00023.gz.parquet
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00024.gz.parquet
{noformat}

And here is another Spark shell snippet for reproducing overwriting:
{code}
sqlContext.range(0, 10000).repartition(500).write.mode("overwrite").parquet("foo")
sqlContext.read.parquet("foo").count()
{code}
Expected answer should be {{10000}}, but you may see a number like {{9960}} due to overwriting. The actual number varies for different runs and different nodes.

Notice that the newly added ORC data source is less likely to hit this issue because it uses task ID and {{System.currentTimeMills()}} to generate the output file name. Thus, the ORC data source may hit this issue only when two tasks with the same task ID (which means they are in two concurrent jobs) are writing to the same location within the same millisecond.


---

* [SPARK-8399](https://issues.apache.org/jira/browse/SPARK-8399) | *Minor* | **Overlap between histograms and axis' name in Spark Streaming UI**

If you have an histogram skewed towards the maximum of the displayed values as is the case with the number of messages processed per batchInterval with the Kafka direct API (since it's a constant) for example, the histogram will overlap with the name of the X axis (#batches).

Unfortunately, I don't have any screenshots available.


---

* [SPARK-8395](https://issues.apache.org/jira/browse/SPARK-8395) | *Minor* | **spark-submit documentation is incorrect**

Using a fresh checkout of 1.4.0-bin-hadoop2.6

if you run 
./start-slave.sh  1 spark://localhost:7077

you get
failed to launch org.apache.spark.deploy.worker.Worker:
                             Default is conf/spark-defaults.conf.
  15/06/16 13:11:08 INFO Utils: Shutdown hook called

it seems the worker number is not being accepted  as desccribed here:
https://spark.apache.org/docs/latest/spark-standalone.html

The documentation says:
./sbin/start-slave.sh <worker#> <master-spark-URL>

but the start.slave-sh script states:
usage="Usage: start-slave.sh <spark-master-URL> where <spark-master-URL> is like spark://localhost:7077"

I have checked for similar issues using :
https://issues.apache.org/jira/browse/SPARK-6552?jql=text%20~%20%22start-slave%22

and found nothing similar so am raising this as an issue.


---

* [SPARK-8392](https://issues.apache.org/jira/browse/SPARK-8392) | *Minor* | **RDDOperationGraph: getting cached nodes is slow**

def getAllNodes: Seq[RDDOperationNode] = {
    \_childNodes ++ \_childClusters.flatMap(\_.childNodes)
  }
when the \_childClusters has so many nodes, the process will hang on. I think we can improve the efficiency here.


---

* [SPARK-8379](https://issues.apache.org/jira/browse/SPARK-8379) | *Major* | **LeaseExpiredException when using dynamic partition with speculative execution**

when inserting to table using dynamic partitions with *spark.speculation=true*  and there is a skew data of some partitions trigger the speculative tasks ,it will throws the exception like
{code}
org.apache.hadoop.ipc.RemoteException(org.apache.hadoop.hdfs.server.namenode.LeaseExpiredException): Lease mismatch on /tmp/hive-jeanlyn/hive\_2015-06-15\_15-20-44\_734\_8801220787219172413-1/-ext-10000/ds=2015-06-15/type=2/part-00301.lzo owned by DFSClient\_attempt\_201506031520\_0011\_m\_000189\_0\_-1513487243\_53 but is accessed by DFSClient\_attempt\_201506031520\_0011\_m\_000042\_0\_-1275047721\_57
{code}


---

* [SPARK-8376](https://issues.apache.org/jira/browse/SPARK-8376) | *Minor* | **Commons Lang 3 is one of the required JAR of Spark Flume Sink but is missing in the docs**

Commons Lang 3 is added as one of the dependencies of Spark Flume Sink since https://github.com/apache/spark/pull/5703. However, the docs has not yet updated.


---

* [SPARK-8373](https://issues.apache.org/jira/browse/SPARK-8373) | *Minor* | **When an RDD has no partition, Python sum will throw "Can not reduce() empty RDD"**

The issue is because "sum" uses "reduce". Replacing it with "fold" will fix it.


---

* [SPARK-8372](https://issues.apache.org/jira/browse/SPARK-8372) | *Minor* | **History server shows incorrect information for application not started**

The history server may show an incorrect App ID for an incomplete application like <App ID>.inprogress. This app info will never disappear even after the app is completed.


---

* [SPARK-8368](https://issues.apache.org/jira/browse/SPARK-8368) | *Blocker* | **ClassNotFoundException in closure for map**

After upgraded the cluster from spark 1.3.0 to 1.4.0(rc4), I encountered the following exception:
======begin exception========
{quote}
Exception in thread "main" java.lang.ClassNotFoundException: com.yhd.ycache.magic.Model$$anonfun$9$$anonfun$10
	at java.net.URLClassLoader$1.run(URLClassLoader.java:366)
	at java.net.URLClassLoader$1.run(URLClassLoader.java:355)
	at java.security.AccessController.doPrivileged(Native Method)
	at java.net.URLClassLoader.findClass(URLClassLoader.java:354)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:425)
	at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:308)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:358)
	at java.lang.Class.forName0(Native Method)
	at java.lang.Class.forName(Class.java:278)
	at org.apache.spark.util.InnerClosureFinder$$anon$4.visitMethodInsn(ClosureCleaner.scala:455)
	at com.esotericsoftware.reflectasm.shaded.org.objectweb.asm.ClassReader.accept(Unknown Source)
	at com.esotericsoftware.reflectasm.shaded.org.objectweb.asm.ClassReader.accept(Unknown Source)
	at org.apache.spark.util.ClosureCleaner$.getInnerClosureClasses(ClosureCleaner.scala:101)
	at org.apache.spark.util.ClosureCleaner$.org$apache$spark$util$ClosureCleaner$$clean(ClosureCleaner.scala:197)
	at org.apache.spark.util.ClosureCleaner$.clean(ClosureCleaner.scala:132)
	at org.apache.spark.SparkContext.clean(SparkContext.scala:1891)
	at org.apache.spark.rdd.RDD$$anonfun$map$1.apply(RDD.scala:294)
	at org.apache.spark.rdd.RDD$$anonfun$map$1.apply(RDD.scala:293)
	at org.apache.spark.rdd.RDDOperationScope$.withScope(RDDOperationScope.scala:148)
	at org.apache.spark.rdd.RDDOperationScope$.withScope(RDDOperationScope.scala:109)
	at org.apache.spark.rdd.RDD.withScope(RDD.scala:286)
	at org.apache.spark.rdd.RDD.map(RDD.scala:293)
	at org.apache.spark.sql.DataFrame.map(DataFrame.scala:1210)
	at com.yhd.ycache.magic.Model$.main(SSExample.scala:239)
	at com.yhd.ycache.magic.Model.main(SSExample.scala)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.spark.deploy.SparkSubmit$.org$apache$spark$deploy$SparkSubmit$$runMain(SparkSubmit.scala:664)
	at org.apache.spark.deploy.SparkSubmit$.doRunMain$1(SparkSubmit.scala:169)
	at org.apache.spark.deploy.SparkSubmit$.submit(SparkSubmit.scala:192)
	at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:111)
	at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)
{quote}
===============end exception===========

I simplify the code that cause this issue, as following:
==========begin code==================
{noformat}
object Model extends Serializable{
  def main(args: Array[String]) {
    val Array(sql) = args
    val sparkConf = new SparkConf().setAppName("Mode Example")
    val sc = new SparkContext(sparkConf)
    val hive = new HiveContext(sc)
    //get data by hive sql
    val rows = hive.sql(sql)

    val data = rows.map(r => { 
      val arr = r.toSeq.toArray
      val label = 1.0
      def fmap = ( input: Any ) => 1.0
      val feature = arr.map(\_=>1.0)
      LabeledPoint(label, Vectors.dense(feature))
    })

    data.count()
  }
}
{noformat}
=====end code===========
This code can run pretty well on spark-shell, but error when submit it to spark cluster (standalone or local mode).  I try the same code on spark 1.3.0(local mode), and no exception is encountered.


---

* [SPARK-8367](https://issues.apache.org/jira/browse/SPARK-8367) | *Major* | **ReliableKafka will loss data when `spark.streaming.blockInterval` was 0**

{code:title=BlockGenerator.scala|borderStyle=solid}
  /** Change the buffer to which single records are added to. */
  private def updateCurrentBuffer(time: Long): Unit = synchronized {
    try {
      val newBlockBuffer = currentBuffer
      currentBuffer = new ArrayBuffer[Any]
      if (newBlockBuffer.size > 0) {

       val blockId = StreamBlockId(receiverId, time - blockIntervalMs)

        val newBlock = new Block(blockId, newBlockBuffer)
        listener.onGenerateBlock(blockId)
        blocksForPushing.put(newBlock)  // put is blocking when queue is full
        logDebug("Last element in " + blockId + " is " + newBlockBuffer.last)
      }
    } catch {
      case ie: InterruptedException =>
        logInfo("Block updating timer thread was interrupted")
      case e: Exception =>
        reportError("Error in block updating thread", e)
    }
  }
{code}

If *spark.streaming.blockInterval* was 0, the *blockId* in the code will always be the same because of  *time* was 0 and *blockIntervalMs* was 0 too.

{code:title=ReliableKafkaReceiver.scala|borderStyle=solid}
   private def rememberBlockOffsets(blockId: StreamBlockId): Unit = {
    // Get a snapshot of current offset map and store with related block id.
    val offsetSnapshot = topicPartitionOffsetMap.toMap
    blockOffsetMap.put(blockId, offsetSnapshot)
    topicPartitionOffsetMap.clear()
  }
{code}
If the *blockId* was the same,  Streaming will commit the  *offset*  before the really data comsumed(data was waitting to be commit but the offset had updated and commit by previous commit)
So when exception occures, the *offset* had commit but the data will loss since the data was in memory and not comsumed yet.


---

* [SPARK-8358](https://issues.apache.org/jira/browse/SPARK-8358) | *Blocker* | **DataFrame explode with alias and \* fails**

{code}
scala> Seq((Array("a"), 1)).toDF("a", "b").select(explode($"a").as("a"), $"*")
org.apache.spark.sql.catalyst.analysis.UnresolvedException: Invalid call to dataType on unresolved object, tree: 'a
        at org.apache.spark.sql.catalyst.analysis.UnresolvedAttribute.dataType(unresolved.scala:60)
        at org.apache.spark.sql.catalyst.expressions.Explode.elementTypes(generators.scala:107)
        at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveGenerate$AliasedGenerator$.unapply(Analyzer.scala:577)
        at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveGenerate$$anonfun$apply$16$$anonfun$22.apply(Analyzer.scala:535)
        at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveGenerate$$anonfun$apply$16$$anonfun$22.apply(Analyzer.scala:534)
        at scala.collection.TraversableLike$$anonfun$flatMap$1.apply(TraversableLike.scala:251)
        at scala.collection.TraversableLike$$anonfun$flatMap$1.apply(TraversableLike.scala:251)
...
{code}


---

* [SPARK-8355](https://issues.apache.org/jira/browse/SPARK-8355) | *Critical* | **Python DataFrameReader/Writer should mirror scala**

All the functions that I can run in scala should also work in python.  At least {{ctx.read.option}} is missing, but we should also audit to make sure there aren't others.


---

* [SPARK-8354](https://issues.apache.org/jira/browse/SPARK-8354) | *Major* | **Fix off-by-factor-of-8 error when allocating scratch space in UnsafeFixedWidthAggregationMap**

UnsafeFixedWidthAggregationMap contains an off-by-factor-of-8 error when allocating row conversion scratch space: we take a size requirement, measured in bytes, then allocate a long array of that size.  This means that we end up allocating 8x too much conversion space.


---

* [SPARK-8353](https://issues.apache.org/jira/browse/SPARK-8353) | *Major* | **Show anchor links when hovering over documentation headers**

When hovering over documentation headers, we should show clickable links that allow users to deep-link to specific sections of the documentation, similar to GitHub and Bootstrap docs.


---

* [SPARK-8343](https://issues.apache.org/jira/browse/SPARK-8343) | *Minor* | **Improve the Spark Streaming Guides**

Improve the Spark Streaming Guides by fixing broken links, rewording confusing sections, fixing typos, adding missing words, etc.


---

* [SPARK-8339](https://issues.apache.org/jira/browse/SPARK-8339) | *Minor* | **Itertools islice requires an integer for the stop argument.**

Itertools islice requires an integer for the stop argument.  The bug is in serializers.py and can prevent and rdd from being written to disk.


---

* [SPARK-8336](https://issues.apache.org/jira/browse/SPARK-8336) | *Major* | **Fix NullPointerException with functions.rand()**

The problem was first reported by Justin Yip in the thread 'NullPointerException with functions.rand()'

Here is how to reproduce the problem:
{code}
sqlContext.createDataFrame(Seq((1,2), (3, 100))).withColumn("index", rand(30)).show()
{code}


---

* [SPARK-8330](https://issues.apache.org/jira/browse/SPARK-8330) | *Major* | **DAG visualization: trim whitespace from input**

Just as a safeguard against DOM rewriting.


---

* [SPARK-8329](https://issues.apache.org/jira/browse/SPARK-8329) | *Blocker* | **DataSource options parser no longer accepts '\_'**

This is a regression from 1.3.1


---

* [SPARK-8322](https://issues.apache.org/jira/browse/SPARK-8322) | *Major* | **EC2 script not fully updated for 1.4.0 release**

In the spark\_ec2.py script, the "1.4.0" spark version hasn't been added to the VALID\_SPARK\_VERSIONS map or the SPARK\_TACHYON\_MAP, causing the script to break for the latest release.


---

* [SPARK-8310](https://issues.apache.org/jira/browse/SPARK-8310) | *Critical* | **Spark EC2 branch in 1.4 is wrong**

It points to `branch-1.3` of spark-ec2 right now while it should point to `branch-1.4`

cc [~brdwrd] [~pwendell]


---

* [SPARK-8309](https://issues.apache.org/jira/browse/SPARK-8309) | *Critical* | **OpenHashMap doesn't work with more than 12M items**

The problem might be demonstrated with the following testcase:

{code}
  test("support for more than 12M items") {
    val cnt = 12000000 // 12M
    val map = new OpenHashMap[Int, Int](cnt)
    for (i <- 0 until cnt) {
      map(i) = 1
    }
    val numInvalidValues = map.iterator.count(\_.\_2 == 0)
    assertResult(0)(numInvalidValues)
  }

{code}


---

* [SPARK-8306](https://issues.apache.org/jira/browse/SPARK-8306) | *Major* | **AddJar command needs to set the new class loader to the HiveConf inside executionHive.state.**

In {{AddJar}} command, we are using {{org.apache.hadoop.hive.ql.metadata.Hive.get().getConf().setClassLoader(newClassLoader)}}. However, the conf returned by {{Hive.get().getConf()}} is not necessary the one set in {{executionHive.state}}. Thus, we may fail to set the correct class loader to {{executionHive}} in some cases.


---

* [SPARK-8289](https://issues.apache.org/jira/browse/SPARK-8289) | *Major* | **Provide a specific stack size with all Java implementations to prevent stack overflows with certain tests**

Default stack sizes differ per Java implementation - so tests can pass for those with higher stack sizes (OpenJDK) but will fail with Oracle or IBM Java owing to lower default sizes. In particular we can see this happening with the JavaALSSuite - with 15 iterations, we get stackoverflow errors with Oracle and IBM Java. We don't with OpenJDK. This JIRA aims to address such an issue by providing a default specified stack size to be used for all Java distributions: 4096k specified for both SBT test args and for Maven test args (changing project/ScalaBuild.scala and pom.xml respectively).


---

* [SPARK-8285](https://issues.apache.org/jira/browse/SPARK-8285) | *Trivial* | **CombineSum should be calculated as unlimited decimal first**

{code:title=GeneratedAggregate.scala}
case cs @ CombineSum(expr) =>
        val calcType = expr.dataType
          expr.dataType match {
            case DecimalType.Fixed(\_, \_) =>
              DecimalType.Unlimited
            case \_ =>
              expr.dataType
          }
{code}
calcType is always expr.dataType. credits are all belong to IntelliJ


---

* [SPARK-8282](https://issues.apache.org/jira/browse/SPARK-8282) | *Major* | **Make number of threads used in RBackend configurable**

RBackend starts a netty server which uses two threads. The number of threads is hardcoded. It is useful to have it configurable.


---

* [SPARK-8274](https://issues.apache.org/jira/browse/SPARK-8274) | *Trivial* | **Fix wrong URLs in MLlib Frequent Pattern Mining Documentation**

There is a mistake in the URLs of the Scala section of FP-Growth in the MLlib Frequent Pattern Mining documentation. The URL points to https://spark.apache.org/docs/latest/api/java/org/apache/spark/mllib/fpm/FPGrowth.html which is the Java's API, the link should point to the Scala API https://spark.apache.org/docs/latest/api/scala/index.html#org.apache.spark.mllib.fpm.FPGrowth

There's another mistake in the FP-GrowthModel in the same section, the link points, again, to the Java's API https://spark.apache.org/docs/latest/api/java/org/apache/spark/mllib/fpm/FPGrowthModel.html, the link should point to the Scala API https://spark.apache.org/docs/latest/api/scala/index.html#org.apache.spark.mllib.fpm.FPGrowthModel


---

* [SPARK-8202](https://issues.apache.org/jira/browse/SPARK-8202) | *Critical* | **PySpark: infinite loop during external sort**

The batch size during external sort will grow up to max 10000, then shrink down to zero, causing infinite loop.

Given the assumption that the items usually have similar size, so we don't need to adjust the batch size after first spill.


---

* [SPARK-8200](https://issues.apache.org/jira/browse/SPARK-8200) | *Minor* | **Exception in StreamingLinearAlgorithm on Stream with Empty RDD.**

When training a streaming logistic regression model or a streaming linear regression model, any empty RDDs in a stream will cause an exception.

  java.lang.UnsupportedOperationException: empty collection
  at org.apache.spark.rdd.RDD$$anonfun$first$1.apply(RDD.scala:1288)
  at org.apache.spark.rdd.RDDOperationScope$.withScope(RDDOperationScope.scala:148)
  at org.apache.spark.rdd.RDDOperationScope$.withScope(RDDOperationScope.scala:109)
  at org.apache.spark.rdd.RDD.withScope(RDD.scala:286)
  at org.apache.spark.rdd.RDD.first(RDD.scala:1285)
  at org.apache.spark.mllib.regression.GeneralizedLinearAlgorithm.run(GeneralizedLinearAlgorithm.scala:215)
  at org.apache.spark.mllib.regression.StreamingLinearAlgorithm$$anonfun$trainOn$1.apply(StreamingLinearAlgorithm.scala:91)
  at org.apache.spark.mllib.regression.StreamingLinearAlgorithm$$anonfun$trainOn$1.apply(StreamingLinearAlgorithm.scala:85)
  at org.apache.spark.streaming.dstream.ForEachDStream$$anonfun$1$$anonfun$apply$mcV$sp$1.apply$mcV$sp(ForEachDStream.scala:42)
  at org.apache.spark.streaming.dstream.ForEachDStream$$anonfun$1$$anonfun$apply$mcV$sp$1.apply(ForEachDStream.scala:40)


---

* [SPARK-8162](https://issues.apache.org/jira/browse/SPARK-8162) | *Blocker* | **Run spark-shell cause NullPointerException**

run spark-shell on latest master branch, then failed, details are:

{noformat}
Welcome to
      \_\_\_\_              \_\_
     / \_\_/\_\_  \_\_\_ \_\_\_\_\_/ /\_\_
    \_\ \/ \_ \/ \_ `/ \_\_/  '\_/
   /\_\_\_/ .\_\_/\\_,\_/\_/ /\_/\\_\   version 1.5.0-SNAPSHOT
      /\_/

Using Scala version 2.10.4 (Java HotSpot(TM) 64-Bit Server VM, Java 1.8.0\_40)
Type in expressions to have them evaluated.
Type :help for more information.
error: error while loading JobProgressListener, Missing dependency 'bad symbolic reference. A signature in JobProgressListener.class refers to term annotations
in package com.google.common which is not available.
It may be completely missing from the current classpath, or the version on
the classpath might be incompatible with the version used when compiling JobProgressListener.class.', required by /opt/apache/spark/lib/spark-assembly-1.5.0-SNAPSHOT-hadoop2.7.0.jar(org/apache/spark/ui/jobs/JobProgressListener.class)
java.lang.NullPointerException
	at org.apache.spark.sql.SQLContext.<init>(SQLContext.scala:193)
	at org.apache.spark.sql.hive.HiveContext.<init>(HiveContext.scala:68)
	at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)
	at sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)
	at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)
	at java.lang.reflect.Constructor.newInstance(Constructor.java:422)
	at org.apache.spark.repl.SparkILoop.createSQLContext(SparkILoop.scala:1028)
	at $iwC$$iwC.<init>(<console>:9)
	at $iwC.<init>(<console>:18)
	at <init>(<console>:20)
	at .<init>(<console>:24)
	at .<clinit>(<console>)
	at .<init>(<console>:7)
	at .<clinit>(<console>)
	at $print(<console>)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:497)
	at org.apache.spark.repl.SparkIMain$ReadEvalPrint.call(SparkIMain.scala:1065)
	at org.apache.spark.repl.SparkIMain$Request.loadAndRun(SparkIMain.scala:1338)
	at org.apache.spark.repl.SparkIMain.loadAndRunReq$1(SparkIMain.scala:840)
	at org.apache.spark.repl.SparkIMain.interpret(SparkIMain.scala:871)
	at org.apache.spark.repl.SparkIMain.interpret(SparkIMain.scala:819)
	at org.apache.spark.repl.SparkILoop.reallyInterpret$1(SparkILoop.scala:857)
	at org.apache.spark.repl.SparkILoop.interpretStartingWith(SparkILoop.scala:902)
	at org.apache.spark.repl.SparkILoop.command(SparkILoop.scala:814)
	at org.apache.spark.repl.SparkILoopInit$$anonfun$initializeSpark$1.apply(SparkILoopInit.scala:130)
	at org.apache.spark.repl.SparkILoopInit$$anonfun$initializeSpark$1.apply(SparkILoopInit.scala:122)
	at org.apache.spark.repl.SparkIMain.beQuietDuring(SparkIMain.scala:324)
	at org.apache.spark.repl.SparkILoopInit$class.initializeSpark(SparkILoopInit.scala:122)
	at org.apache.spark.repl.SparkILoop.initializeSpark(SparkILoop.scala:64)
	at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1$$anonfun$apply$mcZ$sp$5.apply$mcV$sp(SparkILoop.scala:974)
	at org.apache.spark.repl.SparkILoopInit$class.runThunks(SparkILoopInit.scala:157)
	at org.apache.spark.repl.SparkILoop.runThunks(SparkILoop.scala:64)
	at org.apache.spark.repl.SparkILoopInit$class.postInitialization(SparkILoopInit.scala:106)
	at org.apache.spark.repl.SparkILoop.postInitialization(SparkILoop.scala:64)
	at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply$mcZ$sp(SparkILoop.scala:991)
	at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply(SparkILoop.scala:945)
	at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply(SparkILoop.scala:945)
	at scala.tools.nsc.util.ScalaClassLoader$.savingContextLoader(ScalaClassLoader.scala:135)
	at org.apache.spark.repl.SparkILoop.org$apache$spark$repl$SparkILoop$$process(SparkILoop.scala:945)
	at org.apache.spark.repl.SparkILoop.process(SparkILoop.scala:1059)
	at org.apache.spark.repl.Main$.main(Main.scala:31)
	at org.apache.spark.repl.Main.main(Main.scala)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:497)
	at org.apache.spark.deploy.SparkSubmit$.org$apache$spark$deploy$SparkSubmit$$runMain(SparkSubmit.scala:663)
	at org.apache.spark.deploy.SparkSubmit$.doRunMain$1(SparkSubmit.scala:169)
	at org.apache.spark.deploy.SparkSubmit$.submit(SparkSubmit.scala:192)
	at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:111)
	at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)

<console>:10: error: not found: value sqlContext
       import sqlContext.implicits.\_
              ^
<console>:10: error: not found: value sqlContext
       import sqlContext.sql
              ^
{noformat}

JDK: 1.8.0\_40
Hadoop: 2.7.0


---

* [SPARK-8161](https://issues.apache.org/jira/browse/SPARK-8161) | *Major* | **externalBlockStoreInitialized is never set to be true**

externalBlockStoreInitialized is never set to be true, which causes the blocks stored in ExternalBlockStore can not be removed.


---

* [SPARK-8151](https://issues.apache.org/jira/browse/SPARK-8151) | *Blocker* | **Pipeline components should correctly implement copy**

Some pipeline components (models and meta-algorithms) should correctly implement copy in order to work properly in pipeline fitting.


---

* [SPARK-8146](https://issues.apache.org/jira/browse/SPARK-8146) | *Major* | **DataFrame Python API: Alias replace in DataFrameNaFunctions**

We missed aliasing it in na.replace.


---

* [SPARK-8141](https://issues.apache.org/jira/browse/SPARK-8141) | *Major* | **Precompute datatypes for partition columns and reuse it**

spec.partitionColumns.map(\_.dataType) re-runs for each Partition in HadoopFsRelation. When there are many partitions, it costs too much unnecessary time.


---

* [SPARK-8126](https://issues.apache.org/jira/browse/SPARK-8126) | *Minor* | **Use temp directory under build dir for unit tests**

Spark's unit tests leave a lot of garbage in /tmp after a run, making it hard to clean things up. Let's place those files under the build dir so that "mvn|sbt|git clean" can do their job.


---

* [SPARK-8121](https://issues.apache.org/jira/browse/SPARK-8121) | *Major* | **When using with Hadoop 1.x, "spark.sql.parquet.output.committer.class" is overriden by "spark.sql.sources.outputCommitterClass"**

When using Spark with Hadoop 1.x (the version I tested is 1.2.0) and {{spark.sql.sources.outputCommitterClass}} is configured, {{spark.sql.parquet.output.committer.class}} will be overriden. 

For example, if {{spark.sql.parquet.output.committer.class}} is set to {{FileOutputCommitter}}, while {{spark.sql.sources.outputCommitterClass}} is set to {{DirectParquetOutputCommitter}}, neither {{\_metadata}} nor {{\_common\_metadata}} will be written because {{FileOutputCommitter}} overrides {{DirectParquetOutputCommitter}}.

The reason is that, {{InsertIntoHadoopFsRelation}} initializes the {{TaskAttemptContext}} before calling {{ParquetRelation2.prepareForWriteJob()}}, which sets up Parquet output committer class. In the meanwhile, in Hadoop 1.x, {{TaskAttempContext}} constructor clones the job configuration, thus doesn't share the job configuration passed to {{ParquetRelation2.prepareForWriteJob()}}.

This issue can be fixed by simply [switching these two lines|https://github.com/apache/spark/blob/master/sql/core/src/main/scala/org/apache/spark/sql/sources/commands.scala#L285-L286].

Here is a Spark shell snippet for reproducing this issue:
{code}
import sqlContext.\_

sc.hadoopConfiguration.set(
  "spark.sql.sources.outputCommitterClass",
  "org.apache.hadoop.mapreduce.lib.output.FileOutputCommitter")

sc.hadoopConfiguration.set(
  "spark.sql.parquet.output.committer.class",
  "org.apache.spark.sql.parquet.DirectParquetOutputCommitter")

range(0, 1).write.mode("overwrite").parquet("file:///tmp/foo")
{code}
Then check {{/tmp/foo}}, Parquet summary files are missing:
{noformat}
/tmp/foo
├── \_SUCCESS
├── part-r-00001.gz.parquet
├── part-r-00002.gz.parquet
├── part-r-00003.gz.parquet
├── part-r-00004.gz.parquet
├── part-r-00005.gz.parquet
├── part-r-00006.gz.parquet
├── part-r-00007.gz.parquet
└── part-r-00008.gz.parquet
{noformat}


---

* [SPARK-8116](https://issues.apache.org/jira/browse/SPARK-8116) | *Minor* | **sc.range() doesn't match python range()**

Python's built-in range() and xrange() functions can take 1, 2, or 3 arguments. Ranges with just 1 argument are probably used the most frequently, e.g.:
for i in range(len(myList)): ...

However, in pyspark, the SparkContext range() method throws an error when called with a single argument, due to the way its arguments get passed into python's range function.

There's no good reason that I can think of not to support the same syntax as the built-in function. To fix this, we can set the default of the sc.range() method's `stop` argument to None, and then inside the method, if it is None, replace `stop` with `start` and set `start` to 0, which is what the c implementation of range() does:
https://github.com/python/cpython/blob/master/Objects/rangeobject.c#L87


---

* [SPARK-8098](https://issues.apache.org/jira/browse/SPARK-8098) | *Minor* | **Show correct length of bytes on log page**

The log page should only show desired length of bytes. Currently it shows bytes from the startIndex to the end of the file. The "Next" button on the page is always disabled.


---

* [SPARK-8095](https://issues.apache.org/jira/browse/SPARK-8095) | *Major* | **Spark package dependencies not resolved when package is in local-ivy-cache**

Given a dependency expressed with '--packages', the transitive dependencies are supposed to be automatically included. This is true for most repository types including local-m2-cache, Spark Packages, and central.   For ivy-local-cache, it is not.


---

* [SPARK-8093](https://issues.apache.org/jira/browse/SPARK-8093) | *Critical* | **Spark 1.4 branch's new JSON schema inference has changed the behavior of handling inner empty JSON object.**

This is similar to SPARK-3365. Sample json is attached. Code to reproduce
{code}
var jsonDF = read.json("/tmp/t1.json")
jsonDF.write.parquet("/tmp/t1.parquet")
{code}

The 'integration' object is empty in the json.
StackTrace:
{code}
....
Caused by: java.io.IOException: Could not read footer: java.lang.IllegalStateException: Cannot build an empty group
	at parquet.hadoop.ParquetFileReader.readAllFootersInParallel(ParquetFileReader.java:238)
	at org.apache.spark.sql.parquet.ParquetRelation2$MetadataCache.refresh(newParquet.scala:369)
	at org.apache.spark.sql.parquet.ParquetRelation2.org$apache$spark$sql$parquet$ParquetRelation2$$metadataCache$lzycompute(newParquet.scala:154)
	at org.apache.spark.sql.parquet.ParquetRelation2.org$apache$spark$sql$parquet$ParquetRelation2$$metadataCache(newParquet.scala:152)
	at org.apache.spark.sql.parquet.ParquetRelation2.refresh(newParquet.scala:197)
	at org.apache.spark.sql.sources.InsertIntoHadoopFsRelation.insert(commands.scala:134)
	... 69 more
Caused by: java.lang.IllegalStateException: Cannot build an empty group
{code}


---

* [SPARK-8091](https://issues.apache.org/jira/browse/SPARK-8091) | *Major* | **SerializationDebugger does not handle classes with writeObject method**

SerializationDebugger skips testing an object whose class has writeObject(), as it was not trivial to test the serializability all the arbitrary stuff that writeObject() could write.


---

* [SPARK-8090](https://issues.apache.org/jira/browse/SPARK-8090) | *Major* | **SerializationDebugger does not handle classes with writeReplace correctly**

The following class with not serializable object used through writeReplace will not be caught correctly by the SerializationDebugger
{code}
class SerializableClassWithWriteReplace()
  extends Serializable {
  private def writeReplace(): Object = {
    new NotSerializableObjectI()
  }
}
{code}

The reason is that SerializationDebugger does not check the type of the replaced object (whether serializable or not).


---

* [SPARK-8088](https://issues.apache.org/jira/browse/SPARK-8088) | *Major* | **ExecutionAllocationManager spamming INFO logs about "Lowering target number of executors"**

I am running a {{spark-shell}} built at 1.4.0-rc4, with:

{code}
  --conf spark.dynamicAllocation.enabled=true \
  --conf spark.dynamicAllocation.minExecutors=5 \
  --conf spark.dynamicAllocation.maxExecutors=300 \
  --conf spark.dynamicAllocation.schedulerBacklogTimeout=3 \
  --conf spark.dynamicAllocation.executorIdleTimeout=600 \
{code}

I can't really type any commands because I am getting 10 of these per second:

{code}
15/06/03 20:49:09 INFO spark.ExecutorAllocationManager: Lowering target number of executors to 5 because not all requests are actually needed (previously 5)
15/06/03 20:49:09 INFO spark.ExecutorAllocationManager: Lowering target number of executors to 5 because not all requests are actually needed (previously 5)
15/06/03 20:49:09 INFO spark.ExecutorAllocationManager: Lowering target number of executors to 5 because not all requests are actually needed (previously 5)
15/06/03 20:49:09 INFO spark.ExecutorAllocationManager: Lowering target number of executors to 5 because not all requests are actually needed (previously 5)
15/06/03 20:49:09 INFO spark.ExecutorAllocationManager: Lowering target number of executors to 5 because not all requests are actually needed (previously 5)
15/06/03 20:49:09 INFO spark.ExecutorAllocationManager: Lowering target number of executors to 5 because not all requests are actually needed (previously 5)
{code}

It should not print anything if it is not in fact lowering the number of executors / is already at the minimum, right?


---

* [SPARK-8087](https://issues.apache.org/jira/browse/SPARK-8087) | *Blocker* | **PipelineModel.copy didn't copy the stages**

So extra params in transform do not work.


---

* [SPARK-8085](https://issues.apache.org/jira/browse/SPARK-8085) | *Major* | **Pass in user-specified schema in read.df**

This will help cases where we use the CSV reader and want each column to be of a specific type


---

* [SPARK-8084](https://issues.apache.org/jira/browse/SPARK-8084) | *Major* | **SparkR install script should fail with error if any packages required are not found**

This is to avoid cases where the script fails but the build is green

https://amplab.cs.berkeley.edu/jenkins/job/Spark-Master-Package/73/console


---

* [SPARK-8083](https://issues.apache.org/jira/browse/SPARK-8083) | *Major* | **Fix return to drivers link in Mesos driver page**

The current path is set to "/" but this doesn't work with a proxy. We need to prepend the proxy base uri if it's set.


---

* [SPARK-8080](https://issues.apache.org/jira/browse/SPARK-8080) | *Minor* | **Custom Receiver.store with Iterator type do not give correct count at Spark UI**

In Custom receiver if I call store with Iterator type (store(dataIterator: Iterator[T]): Unit ) , Spark UI does not show the correct count of records in block which leads to wrong value for Input Rate, Scheduling Delay and Input SIze.


---

* [SPARK-8079](https://issues.apache.org/jira/browse/SPARK-8079) | *Major* | **NPE when HadoopFsRelation.prepareForWriteJob throws exception**

Take {{ParquetRelation2}} as an example, the following Spark shell code may cause an unexpected NPE:
{code}
import sqlContext.\_
import sqlContext.implicits.\_

range(1, 3).select($"id" as "a b").write.format("parquet").save("file:///tmp/foo")
{code}
Exceptions thrown:
{noformat}
import sqlContext.\_
import sqlContext.implicits.\_

range(1, 3).select($"id" as "a b").write.format("parquet").save("file:///tmp/foo")

java.lang.RuntimeException: Attribute name "a b" contains invalid character(s) among " ,;{}()   =". Please use alias to rename it.
        at scala.sys.package$.error(package.scala:27)
        at org.apache.spark.sql.parquet.ParquetTypesConverter$$anonfun$checkSpecialCharacters$2.apply(ParquetTypes.scala:414)
        at org.apache.spark.sql.parquet.ParquetTypesConverter$$anonfun$checkSpecialCharacters$2.apply(ParquetTypes.scala:412)
        at scala.collection.immutable.List.foreach(List.scala:318)
        at org.apache.spark.sql.parquet.ParquetTypesConverter$.checkSpecialCharacters(ParquetTypes.scala:412)
        at org.apache.spark.sql.parquet.ParquetTypesConverter$.convertToString(ParquetTypes.scala:423)
        at org.apache.spark.sql.parquet.RowWriteSupport$.setSchema(ParquetTableSupport.scala:383)
        at org.apache.spark.sql.parquet.ParquetRelation2.prepareJobForWrite(newParquet.scala:230)
        ...
java.lang.NullPointerException
        at org.apache.spark.sql.sources.BaseWriterContainer.abortJob(commands.scala:372)
        at org.apache.spark.sql.sources.InsertIntoHadoopFsRelation.insert(commands.scala:137)
        at org.apache.spark.sql.sources.InsertIntoHadoopFsRelation.run(commands.scala:114)
        at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult$lzycompute(commands.scala:57)
        at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult(commands.scala:57)
        ...
{noformat}
Note that the first {{RuntimeException}} is expected, while the following NPE is not.

The reason of the NPE is that, {{BaseWriterContainer.driverSideSetup()}} calls {{relation.prepareForWriteJob()}} AND initializes the {{OutputCommitter}} used for the subsequent write job. However, if the former throws an exception, the latter is not properly initialized, thus an NPE is thrown when aborting the job because the {{OutputCommitter}} is still null.


---

* [SPARK-8074](https://issues.apache.org/jira/browse/SPARK-8074) | *Major* | **Parquet should throw AnalysisException during setup for data type/name related failures**

Change sys.error/RuntimeException to AnalysisException.


---

* [SPARK-8063](https://issues.apache.org/jira/browse/SPARK-8063) | *Major* | **Spark master URL conflict between MASTER env variable and --master command line option**

Currently, Spark supports several ways to specify the Spark master URL, like --master option for spark-submit, spark.master configuration option, MASTER env variable. They have different precedences, for example, --master overrides MASTER if both are specified.

However, for SparkR shell, it always use the master URL specified by MASTER, not honoring --master.


---

* [SPARK-8054](https://issues.apache.org/jira/browse/SPARK-8054) | *Major* | **Java compatibility fixes for MLlib 1.4**

See [SPARK-7529]


---

* [SPARK-8051](https://issues.apache.org/jira/browse/SPARK-8051) | *Major* | **StringIndexerModel (and other models) shouldn't complain if the input column is missing.**

If a transformer is not used during transformation, it should keep silent if the input column is missing.


---

* [SPARK-8049](https://issues.apache.org/jira/browse/SPARK-8049) | *Major* | **OneVsRest's output includes a temp column**

The temp accumulator column "mbc$acc" is included in the output which should be removed with withoutColumn.


---

* [SPARK-8043](https://issues.apache.org/jira/browse/SPARK-8043) | *Minor* | **update NaiveBayes and SVM examples in doc**

I found some issues during testing the save/load examples in markdown Documents, as a part of 1.4 QA plan


---

* [SPARK-8032](https://issues.apache.org/jira/browse/SPARK-8032) | *Major* | **Make NumPy version checking in mllib/\_\_init\_\_.py**

The current checking does version `1.x' is less than `1.4' this will fail if x has greater than 1 digit, since x > 4, however `1.x` < `1.4`


---

* [SPARK-8004](https://issues.apache.org/jira/browse/SPARK-8004) | *Major* | **Spark does not enclose column names when fetchting from jdbc sources**

Spark failes to load tables that have a keyword as column names

Sample error:
{code}

org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 157.0 failed 1 times, most recent failure: Lost task 0.0 in stage 157.0 (TID 4322, localhost): com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'key,value FROM [XXXXXX]'
{code}

A correct query would have been
{code}
SELECT `key`.`value` FROM ....
{code}


---

* [SPARK-8001](https://issues.apache.org/jira/browse/SPARK-8001) | *Minor* | **Make AsynchronousListenerBus.waitUntilEmpty throw TimeoutException if timeout**

TimeoutException is a more explicit failure. In addition, the caller may forget to call {{assert}} to check the return value of {{AsynchronousListenerBus.waitUntilEmpty}}.


---

* [SPARK-7991](https://issues.apache.org/jira/browse/SPARK-7991) | *Major* | **Python DataFrame: support passing a list into describe**

DataFrame.describe in Python takes a vararg, i.e. it can be invoked this way:
{code}
df.describe('col1', 'col2', 'col3')
{code}

Most of our DataFrame functions accept a list in addition to varargs. describe should do the same, i.e. it should also accept a Python list:
{code}
df.describe(['col1', 'col2', 'col3'])
{code}


---

* [SPARK-7989](https://issues.apache.org/jira/browse/SPARK-7989) | *Major* | **Fix flaky tests in ExternalShuffleServiceSuite and SparkListenerWithClusterSuite**

The flaky tests in ExternalShuffleServiceSuite and SparkListenerWithClusterSuite will fail if there are not enough executors up before running the jobs.


---

* [SPARK-7980](https://issues.apache.org/jira/browse/SPARK-7980) | *Major* | **Support SQLContext.range(end)**

SQLContext.range should also allow only specifying the end position, similar to Python's own range.


---

* [SPARK-7969](https://issues.apache.org/jira/browse/SPARK-7969) | *Minor* | **Drop method on Dataframes should handle Column**

For now the drop method available on Dataframe since Spark 1.4.0 only accepts a column name (as a string), it should also accept a Column as input.


---

* [SPARK-7955](https://issues.apache.org/jira/browse/SPARK-7955) | *Major* | **Dynamic allocation: longer timeout for executors with cached blocks**

When dynamic allocation is enabled, executor idle time is currently the only parameter considered. This can be annoying if executors get removed but have cached blocks. This can cause sever performance degradation.


---

* [SPARK-7916](https://issues.apache.org/jira/browse/SPARK-7916) | *Major* | **MLlib Python doc parity check for classification and regression.**

Check then make the MLlib Python classification and regression doc to be as complete as the Scala doc.


---

* [SPARK-7859](https://issues.apache.org/jira/browse/SPARK-7859) | *Major* | **Collect\_SET behaves different under different version of JDK**

To reproduce 
{code}
JAVA\_HOME=/home/hcheng/Java/jdk1.8.0\_45 | build/sbt -Phadoop-2.3 -Phive  'test-only org.apache.spark.sql.hive.execution.HiveWindowFunctionQueryWithoutCodeGenSuite'
{code}

{panel}
- windowing.q -- 20. testSTATs *** FAILED ***
  Results do not match for windowing.q -- 20. testSTATs:
...

Manufacturer#1	almond antique burnished rose metallic	2	258.10677784349235	258.10677784349235	[34,2,6]	66619.10876874991	0.811328754177887	2801.7074999999995               
Manufacturer#1	almond antique burnished rose metallic	2	258.10677784349235	258.10677784349235	[2,34,6]	66619.10876874991	0.811328754177887	2801.7074999999995
{panel}


---

* [SPARK-7820](https://issues.apache.org/jira/browse/SPARK-7820) | *Critical* | **Java8-tests suite compile error under SBT**

Lots of compilation error is shown when java 8 test suite is enabled in SBT:

{{JAVA\_HOME=/usr/java/jdk1.8.0\_45 ./sbt/sbt -Pyarn -Phadoop-2.4 -Dhadoop.version=2.6.0 -Pjava8-tests}}

{code}
[error] /mnt/data/project/apache-spark/extras/java8-tests/src/test/java/org/apache/spark/streaming/Java8APISuite.java:43: error: cannot find symbol
[error] public class Java8APISuite extends LocalJavaStreamingContext implements Serializable {
[error]                                    ^
[error]   symbol: class LocalJavaStreamingContext
[error] /mnt/data/project/apache-spark/extras/java8-tests/src/test/java/org/apache/spark/streaming/Java8APISuite.java:55: error: cannot find symbol
[error]     JavaDStream<String> stream = JavaTestUtils.attachTestInputStream(ssc, inputData, 1);
[error]                                                                      ^
[error]   symbol:   variable ssc
[error]   location: class Java8APISuite
[error] /mnt/data/project/apache-spark/extras/java8-tests/src/test/java/org/apache/spark/streaming/Java8APISuite.java:55: error: cannot find symbol
[error]     JavaDStream<String> stream = JavaTestUtils.attachTestInputStream(ssc, inputData, 1);
[error]                                  ^
[error]   symbol:   variable JavaTestUtils
[error]   location: class Java8APISuite
[error] /mnt/data/project/apache-spark/extras/java8-tests/src/test/java/org/apache/spark/streaming/Java8APISuite.java:57: error: cannot find symbol
[error]     JavaTestUtils.attachTestOutputStream(letterCount);
[error]     ^
[error]   symbol:   variable JavaTestUtils
[error]   location: class Java8APISuite
[error] /mnt/data/project/apache-spark/extras/java8-tests/src/test/java/org/apache/spark/streaming/Java8APISuite.java:58: error: cannot find symbol
[error]     List<List<Integer>> result = JavaTestUtils.runStreams(ssc, 2, 2);
[error]                                                           ^
[error]   symbol:   variable ssc
[error]   location: class Java8APISuite
[error] /mnt/data/project/apache-spark/extras/java8-tests/src/test/java/org/apache/spark/streaming/Java8APISuite.java:58: error: cannot find symbol
[error]     List<List<Integer>> result = JavaTestUtils.runStreams(ssc, 2, 2);
[error]                                  ^
[error]   symbol:   variable JavaTestUtils
[error]   location: class Java8APISuite
[error] /mnt/data/project/apache-spark/extras/java8-tests/src/test/java/org/apache/spark/streaming/Java8APISuite.java:73: error: cannot find symbol
[error]     JavaDStream<String> stream = JavaTestUtils.attachTestInputStream(ssc, inputData, 1);
[error]                                                                      ^
[error]   symbol:   variable ssc
[error]   location: class Java8APISuite
{code}

The class {{JavaAPISuite}} relies on {{LocalJavaStreamingContext}} which exists in streaming test jar. It is OK for maven compile, since it will generate test jar, but will be failed in sbt test compile, sbt do not generate test jar by default.


---

* [SPARK-7810](https://issues.apache.org/jira/browse/SPARK-7810) | *Major* | **rdd.py "\_load\_from\_socket" cannot load data from jvm socket if ipv6 is used**

Method "\_load\_from\_socket" in rdd.py cannot load data from jvm socket if ipv6 is used. The current method only works well with ipv4. New modification should work around both two protocols.


---

* [SPARK-7781](https://issues.apache.org/jira/browse/SPARK-7781) | *Major* | **GradientBoostedTrees is missing maxBins parameter in pyspark**

I'm running Spark v1.3.1 and when I run the following against my dataset:

{code}
model = GradientBoostedTrees.trainRegressor(trainingData, categoricalFeaturesInfo=catFeatures, maxDepth=6, numIterations=3)

The job will fail with the following message:
Traceback (most recent call last):
  File "/Users/drake/fd/spark/mltest.py", line 73, in <module>
    model = GradientBoostedTrees.trainRegressor(trainingData, categoricalFeaturesInfo=catFeatures, maxDepth=6, numIterations=3)
  File "/Users/drake/spark/spark-1.3.1-bin-hadoop2.6/python/pyspark/mllib/tree.py", line 553, in trainRegressor
    loss, numIterations, learningRate, maxDepth)
  File "/Users/drake/spark/spark-1.3.1-bin-hadoop2.6/python/pyspark/mllib/tree.py", line 438, in \_train
    loss, numIterations, learningRate, maxDepth)
  File "/Users/drake/spark/spark-1.3.1-bin-hadoop2.6/python/pyspark/mllib/common.py", line 120, in callMLlibFunc
    return callJavaFunc(sc, api, *args)
  File "/Users/drake/spark/spark-1.3.1-bin-hadoop2.6/python/pyspark/mllib/common.py", line 113, in callJavaFunc
    return \_java2py(sc, func(*args))
  File "/Users/drake/spark/spark-1.3.1-bin-hadoop2.6/python/lib/py4j-0.8.2.1-src.zip/py4j/java\_gateway.py", line 538, in \_\_call\_\_
  File "/Users/drake/spark/spark-1.3.1-bin-hadoop2.6/python/lib/py4j-0.8.2.1-src.zip/py4j/protocol.py", line 300, in get\_return\_value
15/05/20 16:40:12 INFO BlockManager: Removing block rdd\_32\_95
py4j.protocol.Py4JJavaError: An error occurred while calling o69.trainGradientBoostedTreesModel.
: java.lang.IllegalArgumentException: requirement failed: DecisionTree requires maxBins (= 32) >= max categories in categorical features (= 1895)
	at scala.Predef$.require(Predef.scala:233)
	at org.apache.spark.mllib.tree.impl.DecisionTreeMetadata$.buildMetadata(DecisionTreeMetadata.scala:128)
	at org.apache.spark.mllib.tree.RandomForest.run(RandomForest.scala:138)
	at org.apache.spark.mllib.tree.DecisionTree.run(DecisionTree.scala:60)
	at org.apache.spark.mllib.tree.GradientBoostedTrees$.org$apache$spark$mllib$tree$GradientBoostedTrees$$boost(GradientBoostedTrees.scala:150)
	at org.apache.spark.mllib.tree.GradientBoostedTrees.run(GradientBoostedTrees.scala:63)
	at org.apache.spark.mllib.tree.GradientBoostedTrees$.train(GradientBoostedTrees.scala:96)
	at org.apache.spark.mllib.api.python.PythonMLLibAPI.trainGradientBoostedTreesModel(PythonMLLibAPI.scala:595)
{code}

So, it's complaining about the maxBins, if I provide maxBins=1900 and re-run it:

{code}
model = GradientBoostedTrees.trainRegressor(trainingData, categoricalFeaturesInfo=catFeatures, maxDepth=6, numIterations=3, maxBins=1900)

Traceback (most recent call last):
  File "/Users/drake/fd/spark/mltest.py", line 73, in <module>
    model = GradientBoostedTrees.trainRegressor(trainingData, categoricalFeaturesInfo=catF
eatures, maxDepth=6, numIterations=3, maxBins=1900)
TypeError: trainRegressor() got an unexpected keyword argument 'maxBins'
{code}

It now says it knows nothing of maxBins.

If I run the same command against DecisionTree or RandomForest (with maxBins=1900) it works just fine.

Seems like a bug in GradientBoostedTrees.


---

* [SPARK-7715](https://issues.apache.org/jira/browse/SPARK-7715) | *Major* | **Update MLlib Programming Guide for 1.4**

Before the release, we need to update the MLlib Programming Guide.  Updates will include:
* Add migration guide subsection.
** Use the results of the QA audit JIRAs.
* Check phrasing, especially in main sections (for outdated items such as "In this release, ..."


---

* [SPARK-7705](https://issues.apache.org/jira/browse/SPARK-7705) | *Minor* | **Cleanup of .sparkStaging directory fails if application is killed**

When a streaming application is killed while running on YARN the .sparkStaging directory is not cleaned up. Setting spark.yarn.preserve.staging.files=false does not help and still leaves the files around.

The changes in SPARK-7503 do not catch this case since there is no exception in the shutdown. When the application gets killed the AM gets told to shutdown and the shutdown hook is run but the clean up is not triggered.


---

* [SPARK-7666](https://issues.apache.org/jira/browse/SPARK-7666) | *Major* | **MLlib Python doc parity check**

Check then make the MLlib Python doc to be as complete as the Scala doc.


---

* [SPARK-7558](https://issues.apache.org/jira/browse/SPARK-7558) | *Major* | **Log test name when starting and finishing each test**

Right now it's really tough to interpret testing output because logs for different tests are interspersed in the same unit-tests.log file. This makes it particularly hard to diagnose flaky tests. This would be much easier if we logged the test name before and after every test (e.g. "Starting test XX", "Finished test XX"). Then you could get right to the logs.

I think one way to do this might be to create a custom test fixture that logs the test class name and then mix that into every test suite /cc [~joshrosen] for his superb knowledge of Scalatest.


---

* [SPARK-7515](https://issues.apache.org/jira/browse/SPARK-7515) | *Minor* | **Update documentation for PySpark on YARN with cluster mode**

Now PySpark on YARN with cluster mode is supported so let's update doc.


---

* [SPARK-7387](https://issues.apache.org/jira/browse/SPARK-7387) | *Minor* | **CrossValidator example code in Python**

We should add example code for CrossValidator after SPARK-6940 is merged. This should be similar to the CrossValidator example in Scala/Java.


---

* [SPARK-7287](https://issues.apache.org/jira/browse/SPARK-7287) | *Critical* | **Flaky test: o.a.s.deploy.SparkSubmitSuite --packages**

Error message was not helpful (did not complete within 60 seconds or something).

Observed only in master:

https://amplab.cs.berkeley.edu/jenkins/job/Spark-Master-SBT/AMPLAB\_JENKINS\_BUILD\_PROFILE=hadoop1.0,label=centos/2239/
https://amplab.cs.berkeley.edu/jenkins/job/Spark-Master-SBT/AMPLAB\_JENKINS\_BUILD\_PROFILE=hadoop2.0,label=centos/2238/
https://amplab.cs.berkeley.edu/jenkins/job/Spark-Master-Maven-pre-YARN/hadoop.version=1.0.4,label=centos/2163/
...


---

* [SPARK-7284](https://issues.apache.org/jira/browse/SPARK-7284) | *Critical* | **Update streaming documentation for Spark 1.4.0 release**

Things to update (continuously updated list)
- Python API for Kafka Direct
- Pointers to the new Streaming UI
- Update Kafka version to 0.8.2.1
- Add ref to RDD.foreachPartitionWithIndex (if merged)


---

* [SPARK-7180](https://issues.apache.org/jira/browse/SPARK-7180) | *Major* | **SerializationDebugger fails with ArrayOutOfBoundsException**

Simple reproduction:
{code}
class Parent extends Serializable {
  val a = "a"
  val b = "b"
}

class Child extends Parent with Serializable {
  val c = Array(1)
  val d = Array(2)
  val e = Array(3)
  val f = Array(4)
  val g = Array(5)
  val o = new Object
}

// ArrayOutOfBoundsException
SparkEnv.get.closureSerializer.newInstance().serialize(new Child)
{code}

I dug into this a little and found that we are trying to fill the fields of `Parent` with the values of `Child`. See the following output I generated by adding println's everywhere:
{code}
* Visiting object org.apache.spark.serializer.Child@2c3299f6 of type org.apache.spark.serializer.Child
  - Found 2 class data slot descriptions
  - Looking at desc #1: org.apache.spark.serializer.Parent: static final long serialVersionUID = 3254964199136071914L;
    - Found 2 fields
      - Ljava/lang/String; a
      - Ljava/lang/String; b
    - getObjFieldValues: 
      - [I@23faa614
      - [I@1cad7d80
      - [I@420a6d35
      - [I@3a87d472
      - [I@2b8ca663
      - java.lang.Object@1effc3eb
{code}
SerializationDebugger#visitSerializable found two fields that belong to the parents, but it tried to cram the child's values into these two fields. The mismatch of number of fields here throws the ArrayOutOfBoundExceptions as a result. The culprit is this line: https://github.com/apache/spark/blob/4d9e560b5470029143926827b1cb9d72a0bfbeff/core/src/main/scala/org/apache/spark/serializer/SerializationDebugger.scala#L150, which runs reflection on the object `Child` even when it's considering the description for `Parent`.

I ran into this when trying to serialize a test suite that extends `FunSuite` (don't ask why).


---

* [SPARK-6820](https://issues.apache.org/jira/browse/SPARK-6820) | *Critical* | **Convert NAs to null type in SparkR DataFrames**

While converting RDD or local R DataFrame to a SparkR DataFrame we need to handle missing values or NAs.
We should convert NAs to SparkSQL's null type to handle the conversion correctly


---

* [SPARK-5768](https://issues.apache.org/jira/browse/SPARK-5768) | *Trivial* | **Spark UI Shows incorrect memory under Yarn**

I am running Spark on Yarn with 2 executors.  The executors are running on separate physical machines.

I have spark.executor.memory set to '40g'.  This is because I want to have 40g of memory used on each machine.  I have one executor per machine.

When I run my application I see from 'top' that both my executors are using the full 40g of memory I allocated to them.

The 'Executors' tab in the Spark UI shows something different.  It shows the memory used as a total of 20GB per executor e.g. x / 20.3GB.  This makes it look like I only have 20GB available per executor when really I have 40GB available.


---

* [SPARK-3629](https://issues.apache.org/jira/browse/SPARK-3629) | *Minor* | **Improvements to YARN doc**

Right now this doc starts off with a big list of config options, and only then tells you how to submit an app. It would be better to put that part and the packaging part first, and the config options only at the end.

In addition, the doc mentions yarn-cluster vs yarn-client as separate masters, which is inconsistent with the help output from spark-submit (which says to always use "yarn").


---

* [SPARK-3444](https://issues.apache.org/jira/browse/SPARK-3444) | *Minor* | **Provide a way to easily change the log level in the Spark shell while running**

Right now its difficult to change the log level while running. Our log messages can be quite verbose at the more detailed levels, and some users want to run at WARN until they encounter an issue and then increase the logging level to debug without restarting the shell.



