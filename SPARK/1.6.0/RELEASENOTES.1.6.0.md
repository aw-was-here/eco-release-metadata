
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
# Apache Spark  1.6.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [SPARK-11180](https://issues.apache.org/jira/browse/SPARK-11180) | *Minor* | **Support BooleanType in DataFrame.na.fill**

Currently  DataFrame.na.fill does not support  Boolean primitive type. We have use cases where while data massaging/preparation we want to fill boolean columns with false/true value. 
Ex: 
{code}
val empDf = sqlContext.createDataFrame(Seq[(Integer,String,java.lang.Boolean)]
((1,null,null),(2,"SVP",true),(3,"Dir",false)))
.toDF("EmpId","Designation","isOfficer")
empDf: org.apache.spark.sql.DataFrame = [EmpId: int, Designation: string, isOfficer: boolean]

scala\> empDf.show

\|EmpId\|Designation\|isOfficer\|
\|    1\|       null\|     null\|
\|    2\|        SVP\|     true\|
\|    3\|        Dir\|    false\|
{code}


We want to set "isOfficer" false whenever there is null. 

{code}
scala\> empDf.na.fill(Map("isOfficer"-\>false))
throws exception 
java.lang.IllegalArgumentException: Unsupported value type java.lang.Boolean (false).
	at org.apache.spark.sql.DataFrameNaFunctions$$anonfun$fill0$1.apply(DataFrameNaFunctions.scala:370)
...........

{code}
Can you add support for Boolean into na.fill function.


---

* [SPARK-11174](https://issues.apache.org/jira/browse/SPARK-11174) | *Trivial* | **Typo in the GraphX programming guide**

There is a small typo in the GraphX documentation. In the EdgeRDD description it says "Revere" but should say "Reverse".


---

* [SPARK-11172](https://issues.apache.org/jira/browse/SPARK-11172) | *Trivial* | **Close JsonParser/Generator in test**

JsonParser / Generator created in test should be closed.

This is in continuation to SPARK-11124


---

* [SPARK-11169](https://issues.apache.org/jira/browse/SPARK-11169) | *Trivial* | **Remove the extra spaces in merge script**

Our merge script now turns 

{code}
[SPARK-1234][SPARK-1235][SPARK-1236][SQL] description
{code}

into 

{code}
[SPARK-1234] [SPARK-1235] [SPARK-1236] [SQL] description
{code}

The extra spaces are more annoying in git since the first line of a git commit is supposed to be very short.


---

* [SPARK-11165](https://issues.apache.org/jira/browse/SPARK-11165) | *Major* | **Logging trait should be private - not DeveloperApi**

The classdoc says:

{code}
 \* NOTE: DO NOT USE this class outside of Spark. It is intended as an internal utility.
 \*       This will likely be changed or removed in future releases.
{code}


---

* [SPARK-11153](https://issues.apache.org/jira/browse/SPARK-11153) | *Blocker* | **Turns off Parquet filter push-down for string and binary columns**

Due to PARQUET-251, {{BINARY}} columns in existing Parquet files may be written with corrupted statistics information. This information is used by filter push-down optimization. Since Spark 1.5 turns on Parquet filter push-down by default, we may end up with wrong query results. PARQUET-251 has been fixed in parquet-mr 1.8.1, but Spark 1.5 is still using 1.7.0.

Note that this kind of corrupted Parquet files could be produced by any Parquet data models.

This affects all Spark SQL data types that can be mapped to Parquet {{BINARY}}, namely:

- {{StringType}}
- {{BinaryType}}
- {{DecimalType}} (but Spark SQL doesn't support pushing down {{DecimalType}} columns for now.)

To avoid wrong query results, we should disable filter push-down for columns of {{StringType}} and {{BinaryType}} until we upgrade to parquet-mr 1.8.


---

* [SPARK-11149](https://issues.apache.org/jira/browse/SPARK-11149) | *Major* | **Improve performance of primitive types in columnar cache**

Improve performance of primitive types in columnar cache


---

* [SPARK-11135](https://issues.apache.org/jira/browse/SPARK-11135) | *Blocker* | **Exchange sort-planning logic incorrectly avoid sorts when existing ordering is non-empty subset of required ordering**

In Spark SQL, the Exchange planner tries to avoid unnecessary sorts in cases where the data has already been sorted by a superset of the requested sorting columns. For instance, let's say that a query calls for an operator's input to be sorted by `a.asc` and the input happens to already be sorted by `[a.asc, b.asc]`. In this case, we do not need to re-sort the input. The converse, however, is not true: if the query calls for `[a.asc, b.asc]`, then `a.asc` alone will not satisfy the ordering requirements, requiring an additional sort to be planned by Exchange.

However, the current Exchange code gets this wrong and incorrectly skips sorting when the existing output ordering is a subset of the required ordering. This is simple to fix, however.

This bug was introduced in https://github.com/apache/spark/pull/7458, so it affects 1.5.0+.


---

* [SPARK-11129](https://issues.apache.org/jira/browse/SPARK-11129) | *Major* | **Link Spark WebUI in Mesos WebUI**

Mesos can directly link into WebUIs provided by frameworks running on top of Mesos. Spark currently doesn't make use of this feature.

This ticket aims to provide the necessary information to Mesos in order to link back to the Spark WebUI.


---

* [SPARK-11126](https://issues.apache.org/jira/browse/SPARK-11126) | *Blocker* | **A memory leak in SQLListener.\_stageIdToStageMetrics**

SQLListener adds all stage infos to \_stageIdToStageMetrics, but only removes  stage infos belonging to SQL executions.

Reported by Terry Hoo in https://www.mail-archive.com/user@spark.apache.org/msg38810.html


---

* [SPARK-11124](https://issues.apache.org/jira/browse/SPARK-11124) | *Trivial* | **JsonParser/Generator should be closed for resource recycle**

Some json parsers are not closed. parser in JacksonParser#parseJson, for example.


---

* [SPARK-11122](https://issues.apache.org/jira/browse/SPARK-11122) | *Minor* | **Fatal warnings in sbt are not displayed as such**

The sbt script treats warnings (except dependency warnings) as errors, however there is no visual difference between errors and fatal warnings, thus leading to very confusing debugging.


---

* [SPARK-11120](https://issues.apache.org/jira/browse/SPARK-11120) | *Minor* | **maxNumExecutorFailures defaults to 3 under dynamic allocation**

With dynamic allocation, the {{spark.executor.instances}} config is 0, meaning [this line\|https://github.com/apache/spark/blob/4ace4f8a9c91beb21a0077e12b75637a4560a542/yarn/src/main/scala/org/apache/spark/deploy/yarn/ApplicationMaster.scala#L66-L68] ends up with {{maxNumExecutorFailures}} equal to {{3}}, which for me has resulted in large dynamicAllocation jobs with hundreds of executors dying due to one bad node serially failing executors that are allocated on it.

I think that using {{spark.dynamicAllocation.maxExecutors}} would make most sense in this case; I frequently run shells that vary between 1 and 1000 executors, so using {{s.dA.minExecutors}} or {{s.dA.initialExecutors}} would still leave me with a value that is lower than makes sense.


---

* [SPARK-11114](https://issues.apache.org/jira/browse/SPARK-11114) | *Major* | **Add getOrCreate for SparkContext/SQLContext for Python**

Also SQLContext.newSession()


---

* [SPARK-11113](https://issues.apache.org/jira/browse/SPARK-11113) | *Major* | **Remove DeveloperApi annotation from private classes**

For a variety of reasons, we tagged a bunch of internal classes in the execution package in SQL as DeveloperApi.


---

* [SPARK-11111](https://issues.apache.org/jira/browse/SPARK-11111) | *Major* | **Fast null-safe join**

Today, null safe joins are executed with a Cartesian product.
{code}
scala\> sqlContext.sql("select \* from t a join t b on (a.i \<=\> b.i)").explain
== Physical Plan ==
TungstenProject [i#2,j#3,i#7,j#8]
 Filter (i#2 \<=\> i#7)
  CartesianProduct
   LocalTableScan [i#2,j#3], [[1,1]]
   LocalTableScan [i#7,j#8], [[1,1]]
{code}
One option is to add this rewrite to the optimizer:
{code}
select \* 
from t a 
join t b 
  on coalesce(a.i, \<default\>) = coalesce(b.i, \<default\>) AND (a.i \<=\> b.i)
{code}
Acceptance criteria: joins with only null safe equality should not result in a Cartesian product.


---

* [SPARK-11110](https://issues.apache.org/jira/browse/SPARK-11110) | *Critical* | **Scala 2.11 build fails due to compiler errors**

Right now the 2.11 build is failing due to compiler errors in SBT (though not in Maven). I have updated our 2.11 compile test harness to catch this.

https://amplab.cs.berkeley.edu/jenkins/view/Spark-QA-Compile/job/Spark-Master-Scala211-Compile/1667/consoleFull

{code}
[error] /home/jenkins/workspace/Spark-Master-Scala211-Compile/core/src/main/scala/org/apache/spark/rpc/netty/NettyRpcEnv.scala:308: no valid targets for annotation on value conf - it is discarded unused. You may specify targets with meta-annotations, e.g. @(transient @param)
[error] private[netty] class NettyRpcEndpointRef(@transient conf: SparkConf)
[error] 
{code}

This is one error, but there may be others past this point (the compile fails fast).


---

* [SPARK-11109](https://issues.apache.org/jira/browse/SPARK-11109) | *Minor* | **move FsHistoryProvider off import org.apache.hadoop.fs.permission.AccessControlException**

{{FsHistoryProvider}} imports and uses {{org.apache.hadoop.fs.permission.AccessControlException}}; this has been superceded by its subclass {{org.apache.hadoop.security.AccessControlException}} since ~2011. Moving to that subclass would remove a deprecation warning and ensure that were the Hadoop team to remove that old method (as HADOOP-11356 has currently done to trunk), everything still compiles and links


---

* [SPARK-11105](https://issues.apache.org/jira/browse/SPARK-11105) | *Minor* | **Disitribute the log4j.properties files from the client to the executors**

The log4j.properties file from the client is not distributed to the executors. This means that the client settings are not applied to the executors and they run with the default settings.
This affects troubleshooting and data gathering.
The workaround is to use the --files option for spark-submit to propagate the log4j.properties file


---

* [SPARK-11104](https://issues.apache.org/jira/browse/SPARK-11104) | *Major* | **A potential deadlock in StreamingContext.stop and stopOnShutdown**

When the shutdown hook of StreamingContext and StreamingContext.stop are running at the same time (e.g., press CTRL-C when StreamingContext.stop is running), the following deadlock may happen:

{code}
Java stack information for the threads listed above:
===================================================
"Thread-2":
	at org.apache.spark.streaming.StreamingContext.stop(StreamingContext.scala:699)
	- waiting to lock \<0x00000005405a1680\> (a org.apache.spark.streaming.StreamingContext)
	at org.apache.spark.streaming.StreamingContext.org$apache$spark$streaming$StreamingContext$$stopOnShutdown(StreamingContext.scala:729)
	at org.apache.spark.streaming.StreamingContext$$anonfun$start$1.apply$mcV$sp(StreamingContext.scala:625)
	at org.apache.spark.util.SparkShutdownHook.run(ShutdownHookManager.scala:266)
	at org.apache.spark.util.SparkShutdownHookManager$$anonfun$runAll$1$$anonfun$apply$mcV$sp$1.apply$mcV$sp(ShutdownHookManager.scala:236)
	at org.apache.spark.util.SparkShutdownHookManager$$anonfun$runAll$1$$anonfun$apply$mcV$sp$1.apply(ShutdownHookManager.scala:236)
	at org.apache.spark.util.SparkShutdownHookManager$$anonfun$runAll$1$$anonfun$apply$mcV$sp$1.apply(ShutdownHookManager.scala:236)
	at org.apache.spark.util.Utils$.logUncaughtExceptions(Utils.scala:1697)
	at org.apache.spark.util.SparkShutdownHookManager$$anonfun$runAll$1.apply$mcV$sp(ShutdownHookManager.scala:236)
	at org.apache.spark.util.SparkShutdownHookManager$$anonfun$runAll$1.apply(ShutdownHookManager.scala:236)
	at org.apache.spark.util.SparkShutdownHookManager$$anonfun$runAll$1.apply(ShutdownHookManager.scala:236)
	at scala.util.Try$.apply(Try.scala:161)
	at org.apache.spark.util.SparkShutdownHookManager.runAll(ShutdownHookManager.scala:236)
	- locked \<0x00000005405b6a00\> (a org.apache.spark.util.SparkShutdownHookManager)
	at org.apache.spark.util.SparkShutdownHookManager$$anon$2.run(ShutdownHookManager.scala:216)
	at org.apache.hadoop.util.ShutdownHookManager$1.run(ShutdownHookManager.java:54)
"main":
	at org.apache.spark.util.SparkShutdownHookManager.remove(ShutdownHookManager.scala:248)
	- waiting to lock \<0x00000005405b6a00\> (a org.apache.spark.util.SparkShutdownHookManager)
	at org.apache.spark.util.ShutdownHookManager$.removeShutdownHook(ShutdownHookManager.scala:199)
	at org.apache.spark.streaming.StreamingContext.stop(StreamingContext.scala:712)
	- locked \<0x00000005405a1680\> (a org.apache.spark.streaming.StreamingContext)
	at org.apache.spark.streaming.StreamingContext.stop(StreamingContext.scala:684)
	- locked \<0x00000005405a1680\> (a org.apache.spark.streaming.StreamingContext)
	at org.apache.spark.streaming.SessionByKeyBenchmark$.main(SessionByKeyBenchmark.scala:108)
	at org.apache.spark.streaming.SessionByKeyBenchmark.main(SessionByKeyBenchmark.scala)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:497)
	at org.apache.spark.deploy.SparkSubmit$.org$apache$spark$deploy$SparkSubmit$$runMain(SparkSubmit.scala:680)
	at org.apache.spark.deploy.SparkSubmit$.doRunMain$1(SparkSubmit.scala:180)
	at org.apache.spark.deploy.SparkSubmit$.submit(SparkSubmit.scala:205)
	at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:120)
	at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)
{code}


---

* [SPARK-11099](https://issues.apache.org/jira/browse/SPARK-11099) | *Critical* | **Default conf property file is not loaded**

spark.driver.extraClassPath doesn't take effect in the latest code, and find the root cause is due to the default conf property file is not loaded 

The bug is caused by this code snippet in AbstractCommandBuilder
{code}
  Map\<String, String\> getEffectiveConfig() throws IOException {
    if (effectiveConfig == null) {
      if (propertiesFile == null) {
        effectiveConfig = conf;       // return from here if no propertyFile is provided
      } else {
        effectiveConfig = new HashMap\<\>(conf);
        Properties p = loadPropertiesFile();        // default propertyFile will load here
        for (String key : p.stringPropertyNames()) {
          if (!effectiveConfig.containsKey(key)) {
            effectiveConfig.put(key, p.getProperty(key));
          }
        }
      }
    }
    return effectiveConfig;
  }
{code}


---

* [SPARK-11094](https://issues.apache.org/jira/browse/SPARK-11094) | *Minor* | **Test runner script fails to parse Java version.**

Running {{dev/run-tests}} fails when the local Java version has an extra string appended to the version.
For example, in Debian Stretch (currently testing distribution), {{java -version}} yields "1.8.0\_66-internal" where the extra part "-internal" causes the script to fail.


---

* [SPARK-11093](https://issues.apache.org/jira/browse/SPARK-11093) | *Major* | **ChildFirstURLClassLoader#getResources should return all found resources, not just those in the child classloader**

Currently when using a child-first classloader (spark.driver\|executor.userClassPathFirst = true), the getResources method does not return any matching resources from the parent classloader if the child classloader contains any. This is not child-first, it's child-only and is inconsistent with how the default parent-first classloaders work in the JDK (all found resources are returned from both classloaders). It is also inconsistent with how child-first classloaders work in other environments (Servlet containers, for example). 
ChildFirstURLClassLoader#getResources() should return resources found from both the child and the parent classloaders, placing any found from the child classloader first. 

For reference, the specific use case where I encountered this problem was running Spark on AWS EMR in a child-first arrangement (due to guava version conflicts), where Akka's configuration file (reference.conf) was made available in the parent classloader, but was not visible to the Typesafe config library which uses Classloader.getResources() on the Thread's context classloader to find them. This resulted in a fatal error from the Config library: "com.typesafe.config.ConfigException$Missing: No configuration setting found for key 'akka.version'" .


---

* [SPARK-11092](https://issues.apache.org/jira/browse/SPARK-11092) | *Trivial* | **Add source URLs to API documentation.**

It would be nice to have source URLs in the Spark scaladoc, similar to the standard library (e.g. http://www.scala-lang.org/api/current/index.html#scala.collection.immutable.List).

The fix should be really simple, just adding a line to the sbt unidoc settings.
I'll use the github repo url 
bq. https://github.com/apache/spark/tree/v${version}/${FILE\_PATH}
Feel free to tell me if I should use something else as base url.


---

* [SPARK-11091](https://issues.apache.org/jira/browse/SPARK-11091) | *Major* | **Change the flag of spark.sql.canonicalizeView to spark.sql.nativeView**

The meaning of this flag is exactly the opposite. Let's change it.


---

* [SPARK-11088](https://issues.apache.org/jira/browse/SPARK-11088) | *Major* | **Optimize DataSourceStrategy.mergeWithPartitionValues**

This method is essentially a projection, but it's implemented in an pretty inefficient way and causes significant boxing cost.


---

* [SPARK-11084](https://issues.apache.org/jira/browse/SPARK-11084) | *Minor* | **SparseVector.\_\_getitem\_\_ should check if value can be non-zero before executing searchsorted**

At this moment SparseVector.\\_\\_getitem\\_\\_ executes np.searchsorted first and checks if result is in an expected range after that:

{code}
insert\_index = np.searchsorted(inds, index)
if insert\_index \>= inds.size:
    return 0.

row\_ind = inds[insert\_index]
...
{code}

See: https://issues.apache.org/jira/browse/SPARK-10973

It is possible to check if index can contain non-zero value before binary search: 

{code}
if (inds.size == 0) or (index \> inds.item(-1)):
    return 0.

insert\_index = np.searchsorted(inds, index)
row\_ind = inds[insert\_index]
...
{code}

It is not a huge improvement but should save some work on large vectors.


---

* [SPARK-11083](https://issues.apache.org/jira/browse/SPARK-11083) | *Major* | **insert overwrite table failed when beeline reconnect**

1. Start Thriftserver
2. Use beeline connect to thriftserver, then execute "insert overwrite table\_name ..." clause -- success
3. Exit beelin
4. Reconnect to thriftserver, and then execute "insert overwrite table\_name ..." clause. -- failed
{noformat}
15/10/13 18:44:35 ERROR SparkExecuteStatementOperation: Error executing query, currentState RUNNING, 
java.lang.reflect.InvocationTargetException
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.spark.sql.hive.client.Shim\_v1\_2.loadDynamicPartitions(HiveShim.scala:520)
	at org.apache.spark.sql.hive.client.ClientWrapper$$anonfun$loadDynamicPartitions$1.apply$mcV$sp(ClientWrapper.scala:506)
	at org.apache.spark.sql.hive.client.ClientWrapper$$anonfun$loadDynamicPartitions$1.apply(ClientWrapper.scala:506)
	at org.apache.spark.sql.hive.client.ClientWrapper$$anonfun$loadDynamicPartitions$1.apply(ClientWrapper.scala:506)
	at org.apache.spark.sql.hive.client.ClientWrapper$$anonfun$withHiveState$1.apply(ClientWrapper.scala:256)
	at org.apache.spark.sql.hive.client.ClientWrapper.retryLocked(ClientWrapper.scala:211)
	at org.apache.spark.sql.hive.client.ClientWrapper.withHiveState(ClientWrapper.scala:248)
	at org.apache.spark.sql.hive.client.ClientWrapper.loadDynamicPartitions(ClientWrapper.scala:505)
	at org.apache.spark.sql.hive.execution.InsertIntoHiveTable.sideEffectResult$lzycompute(InsertIntoHiveTable.scala:225)
	at org.apache.spark.sql.hive.execution.InsertIntoHiveTable.sideEffectResult(InsertIntoHiveTable.scala:127)
	at org.apache.spark.sql.hive.execution.InsertIntoHiveTable.doExecute(InsertIntoHiveTable.scala:276)
	at org.apache.spark.sql.execution.SparkPlan$$anonfun$execute$5.apply(SparkPlan.scala:140)
	at org.apache.spark.sql.execution.SparkPlan$$anonfun$execute$5.apply(SparkPlan.scala:138)
	at org.apache.spark.rdd.RDDOperationScope$.withScope(RDDOperationScope.scala:150)
	at org.apache.spark.sql.execution.SparkPlan.execute(SparkPlan.scala:138)
	at org.apache.spark.sql.execution.QueryExecution.toRdd$lzycompute(QueryExecution.scala:58)
	at org.apache.spark.sql.execution.QueryExecution.toRdd(QueryExecution.scala:58)
	at org.apache.spark.sql.DataFrame.\<init\>(DataFrame.scala:144)
	at org.apache.spark.sql.DataFrame.\<init\>(DataFrame.scala:129)
	at org.apache.spark.sql.DataFrame$.apply(DataFrame.scala:51)
	at org.apache.spark.sql.SQLContext.sql(SQLContext.scala:739)
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.runInternal(SparkExecuteStatementOperation.scala:224)
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation$$anon$1$$anon$2.run(SparkExecuteStatementOperation.scala:171)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:415)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1657)
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation$$anon$1.run(SparkExecuteStatementOperation.scala:182)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:471)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:744)
Caused by: org.apache.hadoop.hive.ql.metadata.HiveException: Unable to move source hdfs://9.91.8.214:9000/user/hive/warehouse/tpcds\_bin\_partitioned\_orc\_2.db/catalog\_returns/.hive-staging\_hive\_2015-10-13\_18-44-17\_606\_2400736035447406540-2/-ext-10000/cr\_returned\_date=2003-08-27/part-00048 to destination hdfs://9.91.8.214:9000/user/hive/warehouse/tpcds\_bin\_partitioned\_orc\_2.db/catalog\_returns/cr\_returned\_date=2003-08-27/part-00048
	at org.apache.hadoop.hive.ql.metadata.Hive.moveFile(Hive.java:2644)
	at org.apache.hadoop.hive.ql.metadata.Hive.replaceFiles(Hive.java:2892)
	at org.apache.hadoop.hive.ql.metadata.Hive.loadPartition(Hive.java:1398)
	at org.apache.hadoop.hive.ql.metadata.Hive.loadDynamicPartitions(Hive.java:1593)
	... 36 more
Caused by: java.io.IOException: Filesystem closed
	at org.apache.hadoop.hdfs.DFSClient.checkOpen(DFSClient.java:808)
	at org.apache.hadoop.hdfs.DFSClient.getEZForPath(DFSClient.java:3296)
	at org.apache.hadoop.hdfs.DistributedFileSystem.getEZForPath(DistributedFileSystem.java:2093)
	at org.apache.hadoop.hdfs.client.HdfsAdmin.getEncryptionZoneForPath(HdfsAdmin.java:289)
	at org.apache.hadoop.hive.shims.Hadoop23Shims$HdfsEncryptionShim.isPathEncrypted(Hadoop23Shims.java:1221)
	at org.apache.hadoop.hive.ql.metadata.Hive.moveFile(Hive.java:2607)
	... 39 more
{noformat}

I have analyse this, and found  we only have 1 FileSystem.Cache, so when close session will close the fs. May be SPARK-9596, [PR#7931\|https://github.com/apache/spark/pull/7931] will cause this issue.


---

* [SPARK-11080](https://issues.apache.org/jira/browse/SPARK-11080) | *Major* | **Incorporate per-JVM id into ExprId to prevent unsafe cross-JVM comparisions**

In the current implementation of named expressions' ExprIds, we rely on a per-JVM AtomicLong to ensure that expression ids are unique within a JVM. However, these expression ids will not be globally unique. This opens the potential for id collisions if new expression ids happen to be created inside of tasks rather than on the driver.

There are currently a few cases where tasks allocate expression ids, which happen to be safe because those expressions are never compared to expressions created on the driver. In order to guard against the introduction of invalid comparisons between driver-created and executor-created expression ids, this patch extends ExprId to incorporate a UUID to identify the JVM that created the id, which prevents collisions.


---

* [SPARK-11079](https://issues.apache.org/jira/browse/SPARK-11079) | *Major* | **Post-hoc review Netty based RPC implementation - round 1**

This is a task for Reynold to review the existing implementation done by 
[~shixiong@databricks.com].


---

* [SPARK-11076](https://issues.apache.org/jira/browse/SPARK-11076) | *Major* | **Decimal Support for Ceil/Floor**

Currently, Ceil & Floor doesn't support decimal, but Hive does.


---

* [SPARK-11071](https://issues.apache.org/jira/browse/SPARK-11071) | *Major* | **Flaky test: o.a.s.launcher.LauncherServerSuite**

This test has failed a few times on jenkins, e.g.:
https://amplab.cs.berkeley.edu/jenkins/job/Spark-Master-Maven-with-YARN/lastCompletedBuild/HADOOP\_PROFILE=hadoop-2.4,label=spark-test/testReport/


---

* [SPARK-11066](https://issues.apache.org/jira/browse/SPARK-11066) | *Minor* | **Flaky test o.a.scheduler.DAGSchedulerSuite.misbehavedResultHandler occasionally fails due to j.l.UnsupportedOperationException concerning a finished JobWaiter**

The DAGSchedulerSuite test for the "misbehaved ResultHandler" has an inherent problem: it creates a job for the DAGScheduler comprising multiple (2) tasks, but whilst the job will fail and a SparkDriverExecutionException will be returned, a race condition exists as to whether the first task's (deliberately) thrown exception causes the job to fail - and having its causing exception set to the DAGSchedulerSuiteDummyException that was thrown as the setup of the misbehaving test - or second (and subsequent) tasks who equally end, but have instead the DAGScheduler's legitimate UnsupportedOperationException (a subclass of RuntimeException) returned instead as their causing exception.  This race condition is likely associated with the vagaries of processing quanta, and expense of throwing two exceptions (under interpreter execution) per thread of control; this race is usually 'won' by the first task throwing the DAGSchedulerDummyException, as desired (and expected)... but not always.

The problem for the testcase is that the first assertion is largely concerning the test setup, and doesn't (can't? Sorry, still not a ScalaTest expert) capture all the causes of SparkDriverExecutionException that can legitimately arise from a correctly working (not crashed) DAGScheduler.  Arguably, this assertion might test something of the DAGScheduler... but not all the possible outcomes for a working DAGScheduler.  Nevertheless, this test - when comprising a multiple task job - will report as a failure when in fact the DAGScheduler is working-as-designed (and not crashed ;-).  Furthermore, the test is already failed before it actually tries to use the SparkContext a second time (for an arbitrary processing task), which I think is the real subject of the test?

The solution, I submit, is to ensure that the job is composed of just one task, and that single task will result in the call to the compromised ResultHandler causing the test's deliberate exception to be thrown and exercising the relevant (DAGScheduler) code paths.  Given tasks are scoped by the number of partitions of an RDD, this could be achieved with a single partitioned RDD (indeed, doing so seems to exercise/would test some default parallelism support of the TaskScheduler?); the pull request offered, however, is based on the minimal change of just using a single partition of the 2 (or more) partition parallelized RDD.  This will result in scheduling a job of just one task, one successful task calling the user-supplied compromised ResultHandler function, which results in failing the job and unambiguously wrapping our DAGSchedulerSuiteException inside a SparkDriverExecutionException; there are no other tasks that on running successfully will find the job failed causing the 'undesired' UnsupportedOperationException to be thrown instead.  This, then, satisfies the test's setup assertion.

I have tested this hypothesis having parametised the number of partitions, N, used by the "misbehaved ResultHandler" job and have observed the 1 x DAGSchedulerSuiteException first, followed by the legitimate N-1 x UnsupportedOperationExceptions ... what propagates back from the job seems to simply become the result of the race between task threads and the intermittent failures observed.


---

* [SPARK-11063](https://issues.apache.org/jira/browse/SPARK-11063) | *Critical* | **Spark TaskSetManager doesn't use Receiver's scheduling executors**

The format of RDD's preferredLocations must be hostname but the format of Streaming Receiver's scheduling executors is hostport. So it doesn't work.


---

* [SPARK-11060](https://issues.apache.org/jira/browse/SPARK-11060) | *Minor* | **Fix some potential NPEs in DStream transformation**

Guard out some potential NPEs when input stream returns None instead of empty RDD.


---

* [SPARK-11059](https://issues.apache.org/jira/browse/SPARK-11059) | *Minor* | **ML: change range of quantile probabilities in AFTSurvivalRegression**

Values of the quantile probabilities array should be in the range (0, 1) instead of \[0,1\]
[AFTSurvivalRegression.scala#L62\|https://github.com/apache/spark/blob/master/mllib/src/main/scala/org/apache/spark/ml/regression/AFTSurvivalRegression.scala#L62] according to [Discussion \| https://github.com/apache/spark/pull/8926#discussion-diff-40698242]


---

* [SPARK-11056](https://issues.apache.org/jira/browse/SPARK-11056) | *Minor* | **Improve documentation on how to build Spark efficiently**

Slow build times are a common pain point for new Spark developers.  We should improve the main documentation on building Spark to describe how to make building Spark less painful.


---

* [SPARK-11053](https://issues.apache.org/jira/browse/SPARK-11053) | *Major* | **Remove use of KVIterator in SortBasedAggregationIterator**

SortBasedAggregationIterator uses a KVIterator interface in order to process input rows as key-value pairs, but this use of KVIterator is unnecessary, slightly complicates the code, and might harm performance. We should refactor this code to remove this use of KVIterator. I'll submit a PR to do this.


---

* [SPARK-11052](https://issues.apache.org/jira/browse/SPARK-11052) | *Minor* | **Spaces in the build dir causes failures in the build/mvn script**

If you are running make-distribution in a path that contains a space in it the build/mvn script will fail:

{code}
mkdir /tmp/test\ spaces
cd /tmp/test\ spaces
git clone https://github.com/apache/spark.git
cd spark
./make-distribution.sh --name spark-1.5-test4 --tgz -Pyarn -Phive-thriftserver -Phive
{code}

You will get the following errors
{code}
/tmp/test spaces/spark/build/mvn: line 107: cd: /../lib: No such file or directory
usage: dirname path
/tmp/test spaces/spark/build/mvn: line 108: cd: /../lib: No such file or directory
/tmp/test spaces/spark/build/mvn: line 138: /tmp/test: No such file or directory
/tmp/test spaces/spark/build/mvn: line 140: /tmp/test: No such file or directory
{code}


---

* [SPARK-11051](https://issues.apache.org/jira/browse/SPARK-11051) | *Critical* | **NullPointerException when action called on localCheckpointed RDD (that was checkpointed before)**

While toying with {{RDD.checkpoint}} and {{RDD.localCheckpoint}} methods, the following NullPointerException was thrown:

{code}
scala\> lines.count
java.lang.NullPointerException
  at org.apache.spark.rdd.RDD.firstParent(RDD.scala:1587)
  at org.apache.spark.rdd.MapPartitionsRDD.getPartitions(MapPartitionsRDD.scala:35)
  at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:239)
  at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:237)
  at scala.Option.getOrElse(Option.scala:121)
  at org.apache.spark.rdd.RDD.partitions(RDD.scala:237)
  at org.apache.spark.SparkContext.runJob(SparkContext.scala:1927)
  at org.apache.spark.rdd.RDD.count(RDD.scala:1115)
  ... 48 elided
{code}

To reproduce the issue do the following:

{code}
$ ./bin/spark-shell
Welcome to
      \_\_\_\_              \_\_
     / \_\_/\_\_  \_\_\_ \_\_\_\_\_/ /\_\_
    \_\ \/ \_ \/ \_ `/ \_\_/  '\_/
   /\_\_\_/ .\_\_/\\_,\_/\_/ /\_/\\_\   version 1.6.0-SNAPSHOT
      /\_/

Using Scala version 2.11.7 (Java HotSpot(TM) 64-Bit Server VM, Java 1.8.0\_60)
Type in expressions to have them evaluated.
Type :help for more information.

scala\> val lines = sc.textFile("README.md")
lines: org.apache.spark.rdd.RDD[String] = MapPartitionsRDD[1] at textFile at \<console\>:24

scala\> sc.setCheckpointDir("checkpoints")

scala\> lines.checkpoint

scala\> lines.count
res2: Long = 98

scala\> lines.localCheckpoint
15/10/10 22:59:20 WARN MapPartitionsRDD: RDD was already marked for reliable checkpointing: overriding with local checkpoint.
res4: lines.type = MapPartitionsRDD[1] at textFile at \<console\>:24

scala\> lines.count
java.lang.NullPointerException
  at org.apache.spark.rdd.RDD.firstParent(RDD.scala:1587)
  at org.apache.spark.rdd.MapPartitionsRDD.getPartitions(MapPartitionsRDD.scala:35)
  at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:239)
  at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:237)
  at scala.Option.getOrElse(Option.scala:121)
  at org.apache.spark.rdd.RDD.partitions(RDD.scala:237)
  at org.apache.spark.SparkContext.runJob(SparkContext.scala:1927)
  at org.apache.spark.rdd.RDD.count(RDD.scala:1115)
  ... 48 elided
{code}


---

* [SPARK-11050](https://issues.apache.org/jira/browse/SPARK-11050) | *Trivial* | **PySpark SparseVector can return wrong index in error message**

PySpark {{SparseVector.\_\_getitem\_\_}} returns an error message if given a bad index here:
[https://github.com/apache/spark/blob/a16396df76cc27099011bfb96b28cbdd7f964ca8/python/pyspark/mllib/linalg/\_\_init\_\_.py#L770]

But the index it complains about could have been modified (if negative), meaning the index in the error message could be wrong.  This should be corrected.


---

* [SPARK-11047](https://issues.apache.org/jira/browse/SPARK-11047) | *Critical* | **Internal accumulators miss the internal flag when replaying events in the history server**

Internal accumulators don't write the internal flag to event log. So on the history server Web UI, all accumulators are not internal. This causes incorrect peak execution memory and unwanted accumulator table displayed on the stage page.


---

* [SPARK-11042](https://issues.apache.org/jira/browse/SPARK-11042) | *Major* | **Introduce a mechanism to ban creating new root SQLContexts in a JVM**

For some use cases, it will be useful to explicitly ban creating multiple root SQLContexts/HiveContexts. At here root SQLContext means the first SQLContext that gets created.


---

* [SPARK-11040](https://issues.apache.org/jira/browse/SPARK-11040) | *Major* | **SaslRpcHandler does not delegate all methods to underlying handler**

{{SaslRpcHandler}} only delegates {{receive}} and {{getStreamManager}}, so when SASL is enabled, other events will be missed by apps.

This affects other version too, but I think these events aren't actually used there. They'll be used by the new rpc backend in 1.6, though.


---

* [SPARK-11039](https://issues.apache.org/jira/browse/SPARK-11039) | *Trivial* | **Document all UI "retained\*" configurations**

Most are documented except these:
- spark.sql.ui.retainedExecutions
- spark.streaming.ui.retainedBatches

They are really helpful for managing the memory usage of the driver application.


---

* [SPARK-11032](https://issues.apache.org/jira/browse/SPARK-11032) | *Blocker* | **Failure to resolve having correctly**

This is a regression from Spark 1.4

{code}
Seq(("michael", 30)).toDF("name", "age").registerTempTable("people")
sql("SELECT MIN(t0.age) FROM (SELECT \* FROM PEOPLE WHERE age \> 0) t0 HAVING(COUNT(1) \> 0)").explain(true)
== Parsed Logical Plan ==
'Filter cast(('COUNT(1) \> 0) as boolean)
 'Project [unresolvedalias('MIN('t0.age))]
  'Subquery t0
   'Project [unresolvedalias(\*)]
    'Filter ('age \> 0)
     'UnresolvedRelation [PEOPLE], None

== Analyzed Logical Plan ==
\_c0: int
Filter cast((count(1) \> cast(0 as bigint)) as boolean)
 Aggregate [min(age#6) AS \_c0#9]
  Subquery t0
   Project [name#5,age#6]
    Filter (age#6 \> 0)
     Subquery people
      Project [\_1#3 AS name#5,\_2#4 AS age#6]
       LocalRelation [\_1#3,\_2#4], [[michael,30]]

== Optimized Logical Plan ==
Filter (count(1) \> 0)
 Aggregate [min(age#6) AS \_c0#9]
  Project [\_2#4 AS age#6]
   Filter (\_2#4 \> 0)
    LocalRelation [\_1#3,\_2#4], [[michael,30]]

== Physical Plan ==
Filter (count(1) \> 0)
 TungstenAggregate(key=[], functions=[(min(age#6),mode=Final,isDistinct=false)], output=[\_c0#9])
  TungstenExchange SinglePartition
   TungstenAggregate(key=[], functions=[(min(age#6),mode=Partial,isDistinct=false)], output=[min#12])
    TungstenProject [\_2#4 AS age#6]
     Filter (\_2#4 \> 0)
      LocalTableScan [\_1#3,\_2#4], [[michael,30]]

Code Generation: true
{code}

{code}
Caused by: java.lang.UnsupportedOperationException: Cannot evaluate expression: count(1)
	at org.apache.spark.sql.catalyst.expressions.Unevaluable$class.eval(Expression.scala:188)
	at org.apache.spark.sql.catalyst.expressions.Count.eval(aggregates.scala:156)
	at org.apache.spark.sql.catalyst.expressions.BinaryExpression.eval(Expression.scala:327)
	at org.apache.spark.sql.catalyst.expressions.InterpretedPredicate$$anonfun$create$2.apply(predicates.scala:38)
	at org.apache.spark.sql.catalyst.expressions.InterpretedPredicate$$anonfun$create$2.apply(predicates.scala:38)
	at org.apache.spark.sql.execution.Filter$$anonfun$4$$anonfun$apply$4.apply(basicOperators.scala:117)
	at org.apache.spark.sql.execution.Filter$$anonfun$4$$anonfun$apply$4.apply(basicOperators.scala:115)
	at scala.collection.Iterator$$anon$14.hasNext(Iterator.scala:390)
	at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
{code}


---

* [SPARK-11030](https://issues.apache.org/jira/browse/SPARK-11030) | *Major* | **SQLTab should be shared by across sessions**

We should share the SQLTab across sessions.


---

* [SPARK-11029](https://issues.apache.org/jira/browse/SPARK-11029) | *Major* | **Add computeCost to KMeansModel in spark.ml**

We should add a method analogous to spark.mllib.clustering.KMeansModel.computeCost to spark.ml.clustering.KMeansModel.

This will be a temp fix until we have proper evaluators defined for clustering.


---

* [SPARK-11026](https://issues.apache.org/jira/browse/SPARK-11026) | *Major* | **spark.yarn.user.classpath.first does work for 'spark-submit --jars hdfs://user/foo.jar'**

when spark.yarn.user.classpath.first=true and addJars is on hdfs path, need to add the yarn's linkName of addJars to the system classpath.


---

* [SPARK-11023](https://issues.apache.org/jira/browse/SPARK-11023) | *Major* | **Error initializing SparkContext. java.net.URISyntaxException**

Simliar to SPARK-10326. [https://issues.apache.org/jira/browse/SPARK-10326?page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel&focusedCommentId=14949470#comment-14949470]


C:\WINDOWS\system32\>pyspark --master yarn-client
Python 2.7.10 \|Anaconda 2.3.0 (64-bit)\| (default, Sep 15 2015, 14:26:14) [MSC v.1500 64 bit (AMD64)]
Type "copyright", "credits" or "license" for more information.
IPython 4.0.0 – An enhanced Interactive Python.
? -\> Introduction and overview of IPython's features.
%quickref -\> Quick reference.
help -\> Python's own help system.
object? -\> Details about 'object', use 'object??' for extra details.
15/10/08 09:28:05 WARN MetricsSystem: Using default name DAGScheduler for source because spark.app.id is not set.
15/10/08 09:28:06 WARN : Your hostname, PC-509512 resolves to a loopback/non-reachable address: fe80:0:0:0:0:5efe:a5f:c318%net3, but we couldn't find any external IP address!
15/10/08 09:28:08 WARN BlockReaderLocal: The short-circuit local reads feature cannot be used because UNIX Domain sockets are not available on Windows.
15/10/08 09:28:08 ERROR SparkContext: Error initializing SparkContext.
java.net.URISyntaxException: Illegal character in opaque part at index 2: C:\spark\bin\..\python\lib\pyspark.zip
at java.net.URI$Parser.fail(Unknown Source)
at java.net.URI$Parser.checkChars(Unknown Source)
at java.net.URI$Parser.parse(Unknown Source)
at java.net.URI.\<init\>(Unknown Source)
at org.apache.spark.deploy.yarn.Client$$anonfun$setupLaunchEnv$7.apply(Client.scala:558)
at org.apache.spark.deploy.yarn.Client$$anonfun$setupLaunchEnv$7.apply(Client.scala:557)
at scala.collection.immutable.List.foreach(List.scala:318)
at org.apache.spark.deploy.yarn.Client.setupLaunchEnv(Client.scala:557)
at org.apache.spark.deploy.yarn.Client.createContainerLaunchContext(Client.scala:628)
at org.apache.spark.deploy.yarn.Client.submitApplication(Client.scala:119)
at org.apache.spark.scheduler.cluster.YarnClientSchedulerBackend.start(YarnClientSchedulerBackend.scala:56)
at org.apache.spark.scheduler.TaskSchedulerImpl.start(TaskSchedulerImpl.scala:144)
at org.apache.spark.SparkContext.\<init\>(SparkContext.scala:523)
at org.apache.spark.api.java.JavaSparkContext.\<init\>(JavaSparkContext.scala:61)
at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)
at sun.reflect.NativeConstructorAccessorImpl.newInstance(Unknown Source)
at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(Unknown Source)
at java.lang.reflect.Constructor.newInstance(Unknown Source)
at py4j.reflection.MethodInvoker.invoke(MethodInvoker.java:234)
at py4j.reflection.ReflectionEngine.invoke(ReflectionEngine.java:379)
at py4j.Gateway.invoke(Gateway.java:214)
at py4j.commands.ConstructorCommand.invokeConstructor(ConstructorCommand.java:79)
at py4j.commands.ConstructorCommand.execute(ConstructorCommand.java:68)
at py4j.GatewayConnection.run(GatewayConnection.java:207)
at java.lang.Thread.run(Unknown Source)
15/10/08 09:28:08 ERROR Utils: Uncaught exception in thread Thread-2
java.lang.NullPointerException
at org.apache.spark.network.netty.NettyBlockTransferService.close(NettyBlockTransferService.scala:152)
at org.apache.spark.storage.BlockManager.stop(BlockManager.scala:1228)
at org.apache.spark.SparkEnv.stop(SparkEnv.scala:100)
at org.apache.spark.SparkContext$$anonfun$stop$12.apply$mcV$sp(SparkContext.scala:1749)
at org.apache.spark.util.Utils$.tryLogNonFatalError(Utils.scala:1185)
at org.apache.spark.SparkContext.stop(SparkContext.scala:1748)
at org.apache.spark.SparkContext.\<init\>(SparkContext.scala:593)
at org.apache.spark.api.java.JavaSparkContext.\<init\>(JavaSparkContext.scala:61)
at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)
at sun.reflect.NativeConstructorAccessorImpl.newInstance(Unknown Source)
at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(Unknown Source)
at java.lang.reflect.Constructor.newInstance(Unknown Source)
at py4j.reflection.MethodInvoker.invoke(MethodInvoker.java:234)
at py4j.reflection.ReflectionEngine.invoke(ReflectionEngine.java:379)
at py4j.Gateway.invoke(Gateway.java:214)
at py4j.commands.ConstructorCommand.invokeConstructor(ConstructorCommand.java:79)
at py4j.commands.ConstructorCommand.execute(ConstructorCommand.java:68)
at py4j.GatewayConnection.run(GatewayConnection.java:207)
at java.lang.Thread.run(Unknown Source)
---------------------------------------------------------------------------
Py4JJavaError Traceback (most recent call last)
C:\spark\bin\..\python\pyspark\shell.py in \<module\>()
41 SparkContext.setSystemProperty("spark.executor.uri", os.environ["SPARK\_EXECUTOR\_URI"])
42
---\> 43 sc = SparkContext(pyFiles=add\_files)
44 atexit.register(lambda: sc.stop())
45
C:\spark\python\pyspark\context.pyc in \_init\_(self, master, appName, sparkHome, pyFiles, environment, batchSize, serializer, conf, gateway, jsc, profiler\_cls)
111 try:
112 self.\_do\_init(master, appName, sparkHome, pyFiles, environment, batchSize, serializer,
--\> 113 conf, jsc, profiler\_cls)
114 except:
115 # If an error occurs, clean up in order to allow future SparkContext creation:
C:\spark\python\pyspark\context.pyc in \_do\_init(self, master, appName, sparkHome, pyFiles, environment, batchSize, serializer, conf, jsc, profiler\_cls)
168
169 # Create the Java SparkContext through Py4J
--\> 170 self.\_jsc = jsc or self.\_initialize\_context(self.\_conf.\_jconf)
171
172 # Create a single Accumulator in Java that we'll send all our updates through;
C:\spark\python\pyspark\context.pyc in \_initialize\_context(self, jconf)
222 Initialize SparkContext in function to allow subclass specific initialization
223 """
--\> 224 return self.\_jvm.JavaSparkContext(jconf)
225
226 @classmethod
C:\spark\python\lib\py4j-0.8.2.1-src.zip\py4j\java\_gateway.py in \_call\_(self, \*args)
699 answer = self.\_gateway\_client.send\_command(command)
700 return\_value = get\_return\_value(answer, self.\_gateway\_client, None,
--\> 701 self.\_fqn)
702
703 for temp\_arg in temp\_args:
C:\spark\python\lib\py4j-0.8.2.1-src.zip\py4j\protocol.py in get\_return\_value(answer, gateway\_client, target\_id, name)
298 raise Py4JJavaError(
299 'An error occurred while calling
{0} {1} {2}
.\n'.
--\> 300 format(target\_id, '.', name), value)
301 else:
302 raise Py4JError(
Py4JJavaError: An error occurred while calling None.org.apache.spark.api.java.JavaSparkContext.
: java.net.URISyntaxException: Illegal character in opaque part at index 2: C:\spark\bin\..\python\lib\pyspark.zip
at java.net.URI$Parser.fail(Unknown Source)
at java.net.URI$Parser.checkChars(Unknown Source)
at java.net.URI$Parser.parse(Unknown Source)
at java.net.URI.\<init\>(Unknown Source)
at org.apache.spark.deploy.yarn.Client$$anonfun$setupLaunchEnv$7.apply(Client.scala:558)
at org.apache.spark.deploy.yarn.Client$$anonfun$setupLaunchEnv$7.apply(Client.scala:557)
at scala.collection.immutable.List.foreach(List.scala:318)
at org.apache.spark.deploy.yarn.Client.setupLaunchEnv(Client.scala:557)
at org.apache.spark.deploy.yarn.Client.createContainerLaunchContext(Client.scala:628)
at org.apache.spark.deploy.yarn.Client.submitApplication(Client.scala:119)
at org.apache.spark.scheduler.cluster.YarnClientSchedulerBackend.start(YarnClientSchedulerBackend.scala:56)
at org.apache.spark.scheduler.TaskSchedulerImpl.start(TaskSchedulerImpl.scala:144)
at org.apache.spark.SparkContext.\<init\>(SparkContext.scala:523)
at org.apache.spark.api.java.JavaSparkContext.\<init\>(JavaSparkContext.scala:61)
at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)
at sun.reflect.NativeConstructorAccessorImpl.newInstance(Unknown Source)
at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(Unknown Source)
at java.lang.reflect.Constructor.newInstance(Unknown Source)
at py4j.reflection.MethodInvoker.invoke(MethodInvoker.java:234)
at py4j.reflection.ReflectionEngine.invoke(ReflectionEngine.java:379)
at py4j.Gateway.invoke(Gateway.java:214)
at py4j.commands.ConstructorCommand.invokeConstructor(ConstructorCommand.java:79)
at py4j.commands.ConstructorCommand.execute(ConstructorCommand.java:68)
at py4j.GatewayConnection.run(GatewayConnection.java:207)
at java.lang.Thread.run(Unknown Source)
In [1]:
Reply
  
Marcelo Vanzin added a comment - 10 hours ago
Ah, that's similar but not the same bug; it's a different part of the code that only affects pyspark. Could you file a separate bug for that? This is the 

{code}
    (pySparkArchives ++ pyArchives).foreach { path =\>
      val uri = new URI(path)
{code}


---

* [SPARK-11019](https://issues.apache.org/jira/browse/SPARK-11019) | *Major* | **[streaming] [flume] Gracefully shutdown Flume receiver threads**

Currently, we kill the executor fetching data from Flume by interrupting the threads. We should wait for a bit before interrupting the threads. This is more graceful and we avoid some nasty exceptions in the logs


---

* [SPARK-11018](https://issues.apache.org/jira/browse/SPARK-11018) | *Blocker* | **Support UDT in codegen and unsafe projection**

UDT is not handled correctly in codegen:

{code}
failed to compile: org.codehaus.commons.compiler.CompileException: File 'generated.java', Line 41, Column 30: No applicable constructor/method found for actual parameters "int, java.lang.Object"; candidates are: "public void org.apache.spark.sql.catalyst.expressions.codegen.UnsafeRowWriter.write(int, org.apache.spark.unsafe.types.CalendarInterval)", "public void org.apache.spark.sql.catalyst.expressions.codegen.UnsafeRowWriter.write(int, org.apache.spark.sql.types.Decimal, int, int)", "public void org.apache.spark.sql.catalyst.expressions.codegen.UnsafeRowWriter.write(int, org.apache.spark.unsafe.types.UTF8String)", "public void org.apache.spark.sql.catalyst.expressions.codegen.UnsafeRowWriter.write(int, byte[])"
{code}


---

* [SPARK-11017](https://issues.apache.org/jira/browse/SPARK-11017) | *Major* | **Support ImperativeAggregates in TungstenAggregate**

The TungstenAggregate operator currently only supports DeclarativeAggregate functions (i.e. expression-based aggregates); we should extend it to also support ImperativeAggregate functions.


---

* [SPARK-11009](https://issues.apache.org/jira/browse/SPARK-11009) | *Blocker* | **RowNumber in HiveContext returns negative values in cluster mode**

This issue happens when submitting the job into a standalone cluster. Have not tried YARN or MESOS. Repartition df into 1 piece or default parallelism=1 does not fix the issue. Also tried having only one node in the cluster, with same result. Other shuffle configuration changes do not alter the results either.

The issue does NOT happen in --master local[\*].

        val ws = Window.
            partitionBy("client\_id").
            orderBy("date")
 
        val nm = "repeatMe"
        df.select(df.col("\*"), rowNumber().over(ws).as(nm))
 
        df.filter(df("repeatMe").isNotNull).orderBy("repeatMe").take(50).foreach(println(\_))
 
---\>
 
Long, DateType, Int
[219483904822,2006-06-01,-1863462909]
[219483904822,2006-09-01,-1863462909]
[219483904822,2007-01-01,-1863462909]
[219483904822,2007-08-01,-1863462909]
[219483904822,2007-07-01,-1863462909]
[192489238423,2007-07-01,-1863462774]
[192489238423,2007-02-01,-1863462774]
[192489238423,2006-11-01,-1863462774]
[192489238423,2006-08-01,-1863462774]
[192489238423,2007-08-01,-1863462774]
[192489238423,2006-09-01,-1863462774]
[192489238423,2007-03-01,-1863462774]
[192489238423,2006-10-01,-1863462774]
[192489238423,2007-05-01,-1863462774]
[192489238423,2006-06-01,-1863462774]
[192489238423,2006-12-01,-1863462774]


---

* [SPARK-11007](https://issues.apache.org/jira/browse/SPARK-11007) | *Major* | **Add dictionary support for CatalystDecimalConverter**

Currently {{CatalystDecimalConverter}} doesn't explicitly support dictionary encoding. The consequence is that, the underlying Parquet {{ColumnReader}} always sends raw {{Int}}/{{Long}}/{{Binary}} values decoded from the dictionary to {{CatalystDecimalConverter}} even if the column is encoded using a dictionary. By adding explicit dictionary support (similar to what {{CatalystStringConverter}} does), we can avoid constructing decimals repeatedly. This should be especially effective for binary backed decimals.


---

* [SPARK-11006](https://issues.apache.org/jira/browse/SPARK-11006) | *Trivial* | **Rename NullColumnAccess as NullColumnAccessor**

In sql/core/src/main/scala/org/apache/spark/sql/columnar/ColumnAccessor.scala , NullColumnAccess should be renmaed as NullColumnAccessor so that same convention is adhered to for the accessors.


---

* [SPARK-11000](https://issues.apache.org/jira/browse/SPARK-11000) | *Major* | **Derby have booted the database twice in yarn security mode.**

\*bin/spark-shell --master yarn-client\*
If spark was build with hive, this simple command will also have a problem: \_Another instance of Derby may have already booted the database\_
{code:title=Exeception\|borderStyle=solid}
Caused by: java.sql.SQLException: Another instance of Derby may have already booted the database /opt/client/Spark/spark/metastore\_db.
        at org.apache.derby.impl.jdbc.SQLExceptionFactory.getSQLException(Unknown Source)
        at org.apache.derby.impl.jdbc.SQLExceptionFactory40.wrapArgsForTransportAcrossDRDA(Unknown Source)
        at org.apache.derby.impl.jdbc.SQLExceptionFactory40.getSQLException(Unknown Source)
        at org.apache.derby.impl.jdbc.Util.generateCsSQLException(Unknown Source)
        ... 130 more
Caused by: ERROR XSDB6: Another instance of Derby may have already booted the database /opt/client/Spark/spark/metastore\_db.
{code}


---

* [SPARK-10999](https://issues.apache.org/jira/browse/SPARK-10999) | *Minor* | **Physical plan node Coalesce should be able to handle UnsafeRow**

The following PySpark snippet shows the problem:
{noformat}
\>\>\> sqlContext.range(10).selectExpr('id AS a').coalesce(1).explain(True)
...
== Physical Plan ==
Coalesce 1
 ConvertToSafe
  TungstenProject [id#3L AS a#4L]
   Scan PhysicalRDD[id#3L]
{noformat}
The {{ConvertToSafe}} is unnecessary.


---

* [SPARK-10990](https://issues.apache.org/jira/browse/SPARK-10990) | *Major* | **Avoid the serialization multiple times during unrolling of complex types**

The serialize() will be called by actualSize() and append(), we should use UnsafeProjection before unrolling,


---

* [SPARK-10988](https://issues.apache.org/jira/browse/SPARK-10988) | *Major* | **Reduce duplication in Aggregate2's expression rewriting logic**

In `aggregate/utils.scala`, there is a substantial amount of duplication in the expression-rewriting logic. As a prerequisite to supporting imperative aggregate functions in `TungstenAggregate`, we should refactor this file so that the same expression-rewriting logic is used for both `SortAggregate` and `TungstenAggregate`.


---

* [SPARK-10987](https://issues.apache.org/jira/browse/SPARK-10987) | *Blocker* | **yarn-client mode misbehaving with netty-based RPC backend**

YARN running in cluster deploy mode seems to be having issues with the new RPC backend; if you look at unit test runs, tests that run in cluster mode are taking several minutes to run, instead of the more usual 20-30 seconds.

For example, https://amplab.cs.berkeley.edu/jenkins/job/SparkPullRequestBuilder/43349/consoleFull:

{noformat}
[info] YarnClusterSuite:
[info] - run Spark in yarn-client mode (13 seconds, 953 milliseconds)
[info] - run Spark in yarn-cluster mode (6 minutes, 50 seconds)
[info] - run Spark in yarn-cluster mode unsuccessfully (1 minute, 53 seconds)
[info] - run Python application in yarn-client mode (21 seconds, 842 milliseconds)
[info] - run Python application in yarn-cluster mode (7 minutes, 0 seconds)
[info] - user class path first in client mode (1 minute, 58 seconds)
[info] - user class path first in cluster mode (4 minutes, 49 seconds)
{noformat}


---

* [SPARK-10983](https://issues.apache.org/jira/browse/SPARK-10983) | *Critical* | **Implement unified memory manager**

This builds on top of the MemoryManager interface introduced in SPARK-10956. That issue implemented a StaticMemoryManager which implemented legacy behavior. This issue is concerned with implementing a UnifiedMemoryManager (or whatever we call it) according to the design doc posted in SPARK-10000.

Note: the scope of this issue is limited to implementing this new mode without significant refactoring. If necessary, any such refactoring should come later (or earlier) in a separate issue.


---

* [SPARK-10982](https://issues.apache.org/jira/browse/SPARK-10982) | *Major* | **Rename ExpressionAggregate -\> DeclarativeAggregate**

Matches more closely with ImperativeAggregate.


---

* [SPARK-10981](https://issues.apache.org/jira/browse/SPARK-10981) | *Minor* | **R semijoin leads to Java errors, R leftsemi leads to Spark errors**

I am using SparkR from RStudio, and I ran into an error with the join function that I recreated with a smaller example:

{code:title=joinTest.R\|borderStyle=solid}
Sys.setenv(SPARK\_HOME="/Users/liumo1/Applications/spark/")
.libPaths(c(file.path(Sys.getenv("SPARK\_HOME"), "R", "lib"), .libPaths()))
library(SparkR)
sc \<- sparkR.init("local[4]")
sqlContext \<- sparkRSQL.init(sc) 

n = c(2, 3, 5)
s = c("aa", "bb", "cc")
b = c(TRUE, FALSE, TRUE)
df = data.frame(n, s, b)
df1= createDataFrame(sqlContext, df)
showDF(df1)

x = c(2, 3, 10)
t = c("dd", "ee", "ff")
c = c(FALSE, FALSE, TRUE)
dff = data.frame(x, t, c)
df2 = createDataFrame(sqlContext, dff)
showDF(df2)
res = join(df1, df2, df1$n == df2$x, "semijoin")
showDF(res)
{code}

Running this code, I encountered the error:
{panel}
Error in invokeJava(isStatic = FALSE, objId$id, methodName, ...) : 
  java.lang.IllegalArgumentException: Unsupported join type 'semijoin'. Supported join types include: 'inner', 'outer', 'full', 'fullouter', 'leftouter', 'left', 'rightouter', 'right', 'leftsemi'.
{panel}

However, if I changed the joinType to "leftsemi", 
{code}
res = join(df1, df2, df1$n == df2$x, "leftsemi")
{code}

I would get the error:
{panel}
Error in .local(x, y, ...) : 
  joinType must be one of the following types: 'inner', 'outer', 'left\_outer', 'right\_outer', 'semijoin'
{panel}

Since the join function in R appears to invoke a Java method, I went into DataFrame.R and changed the code on line 1374 and line 1378 to change the "semijoin" to "leftsemi" to match the Java function's parameters. These also make the R joinType accepted values match those of Scala's. 

semijoin:
{code:title=DataFrame.R: join(x, y, joinExpr, joinType)\|borderStyle=solid}
if (joinType %in% c("inner", "outer", "left\_outer", "right\_outer", "semijoin")) {
    sdf \<- callJMethod(x@sdf, "join", y@sdf, joinExpr@jc, joinType)
} 
else {
     stop("joinType must be one of the following types: ",
             "'inner', 'outer', 'left\_outer', 'right\_outer', 'semijoin'")
}
{code}

leftsemi:
{code:title=DataFrame.R: join(x, y, joinExpr, joinType)\|borderStyle=solid}
if (joinType %in% c("inner", "outer", "left\_outer", "right\_outer", "leftsemi")) {
    sdf \<- callJMethod(x@sdf, "join", y@sdf, joinExpr@jc, joinType)
} 
else {
     stop("joinType must be one of the following types: ",
             "'inner', 'outer', 'left\_outer', 'right\_outer', 'leftsemi'")
}
{code}

This fixed the issue, but I'm not sure if this solution breaks hive compatibility or causes other issues, but I can submit a pull request to change this


---

* [SPARK-10980](https://issues.apache.org/jira/browse/SPARK-10980) | *Major* | **Create wrong decimal if unscaled \> 1e18 and scale \> 0**

Decimal(1000000000000000000L, 20, 2) will become 1000000000000000000 instead of 10000000000000000.00


---

* [SPARK-10973](https://issues.apache.org/jira/browse/SPARK-10973) | *Major* | **\_\_gettitem\_\_ method throws IndexError exception when we try to access index after the last non-zero entry.**

\\_\\_gettitem\\_\\_ method throws IndexError exception when we try to access  index  after the last non-zero entry.

{code}
from pyspark.mllib.linalg import Vectors
sv = Vectors.sparse(5, {1: 3})
sv[0]
## 0.0
sv[1]
## 3.0
sv[2]
## Traceback (most recent call last):
##   File "\<stdin\>", line 1, in \<module\>
##   File "/python/pyspark/mllib/linalg/\_\_init\_\_.py", line 734, in \_\_getitem\_\_
##     row\_ind = inds[insert\_index]
## IndexError: index out of bounds
{code}


---

* [SPARK-10966](https://issues.apache.org/jira/browse/SPARK-10966) | *Major* | **Code-generation framework cleanup**

 - Add lines numbers to error
 - Use a variable for input row
 - primitive -\> value (since its often actually an object)


---

* [SPARK-10960](https://issues.apache.org/jira/browse/SPARK-10960) | *Major* | **SQL with windowing function cannot reference column in inner select block**

There seems to be a bug in the Spark SQL parser when I use windowing functions. Specifically, when the SELECT refers to a column from an inner select block, the parser throws an error.

Here is an example:
--------------------------
When I use a windowing function and add a '1' constant to the result, 
{code}
   select Rank() OVER ( ORDER BY D1.c3 ) + 1 as c1
{code}

The Spark SQL parser works. The whole SQL is:
{code}
select Rank() OVER ( ORDER BY D1.c3 ) + 1 as c1,
                         D1.c3 as c3,
                         D1.c4 as c4,
                         D1.c5 as c5
                    from 
                         (select T3671.ROW\_WID as c3,
                                   T3671.CAL\_MONTH as c4,
                                   T3671.CAL\_YEAR as c5,
                                   1 as c6
                              from 
                                   W\_DAY\_D T3671
                         ) D1
{code}

However, if I change the projection so that it refers to a column in an inner select block, D1.C6, whose value is itself a '1' literal, so it is functionally equivalent to the SQL above, Spark SQL will throw an error:
{code}
select Rank() OVER ( ORDER BY D1.c3 ) + D1.C6 as c1,
                         D1.c3 as c3,
                         D1.c4 as c4,
                         D1.c5 as c5
                    from 
                         (select T3671.ROW\_WID as c3,
                                   T3671.CAL\_MONTH as c4,
                                   T3671.CAL\_YEAR as c5,
                                   1 as c6
                              from 
                                   W\_DAY\_D T3671
                         ) D1
{code}

The error message is:
{code}
. . . . . . . . . . . . . . . .\> java.lang.NullPointerException
Error: org.apache.spark.sql.AnalysisException: resolved attribute(s) c6#3386 missing from c5#3390
,c3#3383,c4#3389,\_we0#3461,c3#3388 in operator !Project [c3#3388,c4#3389,c5#3390,c3#3383,\_we0#346
1,(\_we0#3461 + c6#3386) AS c1#3387]; (state=,code=0)
{code}

The above example is a simplified version of the SQL I was testing. The full SQL I was using, which fails with a similar error, is as follows:

{code}
select Case when case D1.c6 when 1 then D1.c3 else NULL end  is not null then Rank() OVER ( ORDER BY case when ( case D1.c6 when 1 then D1.c3 else NULL end  ) is null then 1 else 0 end, case D1.c6 when 1 then D1.c3 else NULL end ) end as c1,
                         Case when case D1.c7 when 1 then D1.c3 else NULL end  is not null then Rank() OVER ( PARTITION BY D1.c4, D1.c5 ORDER BY case when ( case D1.c7 when 1 then D1.c3 else NULL end  ) is null then 1 else 0 end, case D1.c7 when 1 then D1.c3 else NULL end ) end as c2,
                         D1.c3 as c3,
                         D1.c4 as c4,
                         D1.c5 as c5
                    from 
                         (select T3671.ROW\_WID as c3,
                                   T3671.CAL\_MONTH as c4,
                                   T3671.CAL\_YEAR as c5,
                                   ROW\_NUMBER() OVER (PARTITION BY T3671.CAL\_MONTH, T3671.CAL\_YEAR ORDER BY T3671.CAL\_MONTH DESC, T3671.CAL\_YEAR DESC) as c6,
                                   ROW\_NUMBER() OVER (PARTITION BY T3671.CAL\_MONTH, T3671.CAL\_YEAR, T3671.ROW\_WID ORDER BY T3671.CAL\_MONTH DESC, T3671.CAL\_YEAR DESC, T3671.ROW\_WID DESC) as c7
                              from 
                                   W\_DAY\_D T3671
                         ) D1
{code}

Hopefully when fixed, both these sample SQLs should work!


---

* [SPARK-10959](https://issues.apache.org/jira/browse/SPARK-10959) | *Critical* | **PySpark StreamingLogisticRegressionWithSGD does not train with given regParam and convergenceTol parameters**

These parameters are passed into the StreamingLogisticRegressionWithSGD constructor, but do not get transferred to the model to use when training.  Same problem with StreamingLinearRegressionWithSGD and the intercept param is in the wrong  argument place where it is being used as regularization value.


---

* [SPARK-10957](https://issues.apache.org/jira/browse/SPARK-10957) | *Major* | **setParams changes quantileProbabilities unexpectly in PySpark's AFTSurvivalRegression**

This happens when user doesn't specify quantileProbabilities.


---

* [SPARK-10956](https://issues.apache.org/jira/browse/SPARK-10956) | *Major* | **Introduce common memory management interface for execution and storage**

The first step towards implementing a solution for SPARK-10000 is to refactor the existing code to go through a common MemoryManager interface. \*This issue is concerned only with the introduction of this interface, preserving the existing behavior as much as possible.\* In the near future, we will implement an alternate MemoryManager that shares memory between storage and execution more efficiently.

For a high level design doc, see SPARK-10000.


---

* [SPARK-10955](https://issues.apache.org/jira/browse/SPARK-10955) | *Major* | **Warn if dynamic allocation is enabled for Streaming jobs**

Spark streaming can be tricky with dynamic allocation and can lose data if not used properly (with WAL, or with WAL-free solutions like Direct Kafka and Kinesis since 1.5). If dynamic allocation is enabled, we should issue a log4j warning.


---

* [SPARK-10941](https://issues.apache.org/jira/browse/SPARK-10941) | *Major* | **.Refactor AggregateFunction2 and AlgebraicAggregate interfaces to improve code clarity**

Spark SQL's new AlgebraicAggregate interface is confusingly named.

AlgebraicAggregate inherits from AggregateFunction2, adds a new set of methods, then effectively bans the use of the inherited methods. This is really confusing. I think that it's an anti-pattern / bad code smell if you end up inheriting and wanting to remove methods inherited from the superclass.

I think that we should re-name this class and should refactor the class hierarchy so that there's a clear distinction between which parts of the code work with imperative aggregate functions vs. expression-based aggregates.


---

* [SPARK-10938](https://issues.apache.org/jira/browse/SPARK-10938) | *Major* | **Remove typeId in columnar cache**

typeId is not needed in columnar cache, it's confusing to having them.


---

* [SPARK-10932](https://issues.apache.org/jira/browse/SPARK-10932) | *Major* | **Port two minor changes to release packaging scripts back into Spark repo**

Spark's release packaging scripts used to live in separate repositories. Although these scripts are now part of the Spark repo, there are some patches against the old repos that are missing in Spark's copy of the script. As part of the deprecation of those other repos, we should port those changes into Spark's copy of the script. I'll open a PR to do this.


---

* [SPARK-10921](https://issues.apache.org/jira/browse/SPARK-10921) | *Minor* | **Completely remove the use of SparkContext.preferredNodeLocationData**

SPARK-8949 obsoleted the use of {{SparkContext.preferredNodeLocationData}} yet the code makes it less obvious as it says (see https://github.com/apache/spark/blob/master/core/src/main/scala/org/apache/spark/SparkContext.scala#L93-L96):

{code}
  // This is used only by YARN for now, but should be relevant to other cluster types (Mesos,
  // etc) too. This is typically generated from InputFormatInfo.computePreferredLocations. It
  // contains a map from hostname to a list of input format splits on the host.
  private[spark] var preferredNodeLocationData: Map[String, Set[SplitInfo]] = Map()
{code}

It turns out that there are places where the initialization does take place that only adds up to the confusion.

When you search for the use of {{SparkContext.preferredNodeLocationData}},
you'll find 3 places - one constructor marked {{@deprecated}}, the other with
{{logWarning}} telling us that \_"Passing in preferred locations has no
effect at all, see SPARK-8949"\_, and in
{{org.apache.spark.deploy.yarn.ApplicationMaster.registerAM}} method.

There is no consistent approach to deal with it given it's no longer used in theory.

[org.apache.spark.deploy.yarn.ApplicationMaster.registerAM\|https://github.com/apache/spark/blob/master/yarn/src/main/scala/org/apache/spark/deploy/yarn/ApplicationMaster.scala#L234-L265] method
caught my eye and I found that it does the following in
client.register:

{code}
if (sc != null) sc.preferredNodeLocationData else Map()
{code}

However, {{client.register}} [ignores the input parameter completely\|https://github.com/apache/spark/blob/master/yarn/src/main/scala/org/apache/spark/deploy/yarn/YarnRMClient.scala#L47-L78], but the scaladoc says (note {{preferredNodeLocations}} param):

{code}
  /\*\*
   \* Registers the application master with the RM.
   \*
   \* @param conf The Yarn configuration.
   \* @param sparkConf The Spark configuration.
   \* @param preferredNodeLocations Map with hints about where to allocate containers.
   \* @param uiAddress Address of the SparkUI.
   \* @param uiHistoryAddress Address of the application on the History Server.
   \*/
{code}


---

* [SPARK-10917](https://issues.apache.org/jira/browse/SPARK-10917) | *Major* | **Improve performance of complex types in columnar cache**

Complex types are really really slow in columnar cache, because of kryo serializer.


---

* [SPARK-10916](https://issues.apache.org/jira/browse/SPARK-10916) | *Major* | **YARN executors are launched with the default perm gen size**

Unlike other backends, the YARN one does not explicitly set the perm gen size for the executor process. That means that, unless the user has explicitly changed it by adding extra java options, executors on YARN are running with 64m of perm gen (I believe) instead of 256m like the other backends.


---

* [SPARK-10914](https://issues.apache.org/jira/browse/SPARK-10914) | *Major* | **UnsafeRow serialization breaks when two machines have different Oops size**

\*Updated description (by rxin on Oct 8, 2015)\*

To reproduce, launch Spark using
{code}
MASTER=local-cluster[2,1,1024] bin/spark-shell --conf "spark.executor.extraJavaOptions=-XX:-UseCompressedOops"
{code}

And then run the following
{code}
scala\> sql("select 1 xx").collect()
{code}

The problem is that UnsafeRow contains 3 pieces of information when pointing to some data in memory (an object, a base offset, and length). When the row is serialized with Java/Kryo serialization, the object layout in memory can change if two machines have different pointer width (Oops in JVM).



\*Original bug report description\*:

Using an inner join, to match together two integer columns, I generally get no results when there should be matches.  But the results vary and depend on whether the dataframes are coming from SQL, JSON, or cached, as well as the order in which I cache things and query them.

This minimal example reproduces it consistently for me in the spark-shell, on new installs of both 1.5.0 and 1.5.1 (pre-built against Hadoop 2.6 from http://spark.apache.org/downloads.html.)

{code}
/\* x is {"xx":1}{"xx":2} and y is just {"yy":1}{"yy:2} \*/
val x = sql("select 1 xx union all select 2") 
val y = sql("select 1 yy union all select 2")

x.join(y, $"xx" === $"yy").count() /\* expect 2, get 0 \*/
/\* If I cache both tables it works: \*/
x.cache()
y.cache()
x.join(y, $"xx" === $"yy").count() /\* expect 2, get 2 \*/

/\* but this still doesn't work: \*/
x.join(y, $"xx" === $"yy").filter("yy=1").count() /\* expect 1, get 0 \*/
{code}


---

* [SPARK-10913](https://issues.apache.org/jira/browse/SPARK-10913) | *Minor* | **Add attach() function for DataFrame**

Need a R-like attach() API: "Attach Set of R Objects to Search Path"


---

* [SPARK-10905](https://issues.apache.org/jira/browse/SPARK-10905) | *Minor* | **Export freqItems() for DataFrameStatFunctions in SparkR**

Currently only crosstab is implemented. This subtask is about adding freqItems() API to sparkR


---

* [SPARK-10904](https://issues.apache.org/jira/browse/SPARK-10904) | *Major* | **  select(df, c("col1", "col2")) fails**

The help page for 'select' gives an example of 
  select(df, c("col1", "col2"))

However, this fails with assertion:

java.lang.AssertionError: assertion failed
	at scala.Predef$.assert(Predef.scala:165)
	at org.apache.spark.api.r.SerDe$.readStringBytes(SerDe.scala:92)
	at org.apache.spark.api.r.SerDe$.readString(SerDe.scala:99)
	at org.apache.spark.api.r.SerDe$.readTypedObject(SerDe.scala:63)
	at org.apache.spark.api.r.SerDe$.readObject(SerDe.scala:52)
	at org.apache.spark.api.r.RBackendHandler$$anonfun$readArgs$1.apply(RBackendHandler.scala:182)
	at org.apache.spark.api.r.RBackendHandler$$anonfun$readArgs$1.apply(RBackendHandler.scala:181)

And then none of the functions will work with following error:
\> head(df)
 Error in if (returnStatus != 0) { : argument is of length zero


---

* [SPARK-10902](https://issues.apache.org/jira/browse/SPARK-10902) | *Critical* | **Hive UDF current\_database() does not work**

Hive UDF current\_database() is foldable, it need to access the SessionState in metadataHive to evaluate it, but this not accessible while optimizing the query plan.


---

* [SPARK-10901](https://issues.apache.org/jira/browse/SPARK-10901) | *Critical* | **spark.yarn.user.classpath.first doesn't work**

spark.yarn.user.classpath.first doesn't properly add the app jar to the system class path first.  It has some logic there that i believe works for local files but running on yarn using distributed cache to distribute the app jar doesn't put \_\_app\_\_.jar into the classpath at all.

This is a break in backwards compatibility.

Note that in this case the user is trying to use different version of kryo (which used to work in spark 1.2) and the new configs for this: spark.{driver, executor}.userClassPathFirst don't allow this as it errors out with:

User class threw exception: java.lang.LinkageError: loader constraint violation: loader (instance of org/apache/spark/util/ChildFirstURLClassLoader) previously initiated loading for a different type with name "com/esotericsoftware/kryo/Kryo"


---

* [SPARK-10889](https://issues.apache.org/jira/browse/SPARK-10889) | *Minor* | **Upgrade Kinesis Client Library**

Kinesis Client Library added a custom cloudwatch metric in 1.3.0 called MillisBehindLatest. This is very important for capacity planning and alerting.


---

* [SPARK-10888](https://issues.apache.org/jira/browse/SPARK-10888) | *Minor* | **Add as.DataFrame as a synonym for createDataFrame**

as.DataFrame is more a R-style like signature. 
Also, I'd like to know if we could make the context, e.g. sqlContext global, so that we do not have to specify it as an argument, when we each time create a dataframe.


---

* [SPARK-10887](https://issues.apache.org/jira/browse/SPARK-10887) | *Major* | **Build HashedRelation outside of HashJoinNode**

Right now, HashJoinNode builds a HashRelation for the build side. We can take this process out. So, we can use HashJoinNode for both Broadcast join and shuffled join.


---

* [SPARK-10885](https://issues.apache.org/jira/browse/SPARK-10885) | *Major* | **Display the failed output op in Streaming UI**

Now if an output operation failed because of an error in the closure of `foreachRDD`, such as, 
{code}
    wordCounts.foreachRDD { rdd =\>
      if (Random.nextInt(2) == 0) {
        throw new RuntimeException("xxx")
      }
    }
{code}

we cannot display the error information.


---

* [SPARK-10883](https://issues.apache.org/jira/browse/SPARK-10883) | *Trivial* | **Document building each module individually**

Right now, due to the location of the scalastyle-config.xml location, it's not possible to build an individual module.


---

* [SPARK-10876](https://issues.apache.org/jira/browse/SPARK-10876) | *Minor* | **display total application time in spark history UI**

The history file has an application start and application end events.  It would be nice if we could use these to display the total run time for the application in the history UI.

Could be displayed similar to "Total Uptime" for a running application.


---

* [SPARK-10875](https://issues.apache.org/jira/browse/SPARK-10875) | *Minor* | **RowMatrix.computeCovariance() result is not exactly symmetric**

For some matrices, I have seen that the computed covariance matrix is not exactly symmetric, most likely due to some numerical rounding errors. This is problematic when trying to construct an instance of {{MultivariateGaussian}}, because it requires an exactly symmetric covariance matrix. See reproducible example below.

I would suggest modifying the implementation so that {{G(i, j)}} and {{G(j, i)}} are set at the same time, with the same value.

{code}
val rdd = RandomRDDs.normalVectorRDD(sc, 100, 10, 0, 0)
val matrix = new RowMatrix(rdd)
val mean = matrix.computeColumnSummaryStatistics().mean
val cov = matrix.computeCovariance()
val dist = new MultivariateGaussian(mean, cov) //throws breeze.linalg.MatrixNotSymmetricException
{code}


---

* [SPARK-10871](https://issues.apache.org/jira/browse/SPARK-10871) | *Minor* | **Specify number of failed executors in ApplicationMaster error message**

I ran in to [this\|https://github.com/apache/spark/blob/9b9fe5f7bf55257269d8febcd64e95677075dfb6/yarn/src/main/scala/org/apache/spark/deploy/yarn/ApplicationMaster.scala#L346-L348] error message today while debugging a failed app:

{code}
15/09/29 00:33:20 INFO yarn.ApplicationMaster: Final app status: FAILED, exitCode: 11, (reason: Max number of executor failures reached)
15/09/29 00:33:23 INFO util.ShutdownHookManager: Shutdown hook called
{code}

This app ran with dynamic allocation and I'm not sure what limit was used as the "maximum allowable number of failed executors"; in any case, the error message may as well specify this.


---

* [SPARK-10866](https://issues.apache.org/jira/browse/SPARK-10866) | *Major* | **[Spark SQL] [UDF] the floor function got wrong return value type**



As per floor definition,it should get BIGINT return value
-floor(DOUBLE a)
-Returns the maximum BIGINT value that is equal to or less than a.

But in current Spark implementation, it got wrong value type.
e.g.,
select floor(2642.12) from udf\_test\_web\_sales limit 1;
2642.0

In hive implementation, it got return value type like below:
hive\> select ceil(2642.12) from udf\_test\_web\_sales limit 1;
OK
2642


---

* [SPARK-10865](https://issues.apache.org/jira/browse/SPARK-10865) | *Major* | **[Spark SQL] [UDF] the ceil/ceiling function got wrong return value type**

As per ceil/ceiling definition,it should get BIGINT return value
-ceil(DOUBLE a), ceiling(DOUBLE a)
-Returns the minimum BIGINT value that is equal to or greater than a.

But in current Spark implementation, it got wrong value type.
e.g., 
select ceil(2642.12) from udf\_test\_web\_sales limit 1;
2643.0

In hive implementation, it got return value type like below:
hive\> select ceil(2642.12) from udf\_test\_web\_sales limit 1;
OK
2643


---

* [SPARK-10859](https://issues.apache.org/jira/browse/SPARK-10859) | *Blocker* | **Predicates pushed to InmemoryColumnarTableScan are not evaluated correctly**

{code}
var data01 = sqlContext.sql("select 1 as id, \"{\\\"animal\\\":{\\\"type\\\": \\\"cat\\\"}},{\\\"animal\\\":{\\\"type\\\": \\\"dog\\\"}},{\\\"animal\\\":{\\\"type\\\": \\\"donkey\\\"}},{\\\"animal\\\":{\\\"type\\\": \\\"turkey\\\"}},{\\\"animal\\\":{\\\"type\\\": \\\"cat\\\"}},{\\\"animal\\\":{\\\"NOTANIMAL\\\": \\\"measuring tape\\\"}}\" as field")
case class SubField(fieldling: String)
var data02 = data01.explode(data01("field")){ case Row(field: String) =\> field.split(",").map(SubField(\_))}
  .selectExpr("id","fieldling","get\_json\_object(fieldling,\"$.animal.type\") as animal") 
var data03 = data01.explode(data01("field")){ case Row(field: String) =\> field.split(",").map(SubField(\_))}
  .selectExpr("id","fieldling","get\_json\_object(fieldling,\"$.animal.type\") as animal")
data02.cache()

data02.select($"animal" === "cat").explain
== Physical Plan ==
Project [(animal#25 = cat) AS (animal = cat)#263]
 InMemoryColumnarTableScan [animal#25], (InMemoryRelation [id#20,fieldling#24,animal#25], true, 10000, StorageLevel(true, true, false, true, 1), (TungstenProject [id#20,fieldling#24,get\_json\_object(fieldling#24,$.animal.type) AS animal#25]), None)

data02.select($"animal" === "cat").show
+--------------+
\|(animal = cat)\|
+--------------+
\|          true\|
\|         false\|
\|         false\|
\|         false\|
\|          true\|
\|          null\|
+--------------+

data02.filter($"animal" === "cat").explain
== Physical Plan ==
Filter (animal#25 = cat)
 InMemoryColumnarTableScan [id#20,fieldling#24,animal#25], [(animal#25 = cat)], (InMemoryRelation [id#20,fieldling#24,animal#25], true, 10000, StorageLevel(true, true, false, true, 1), (TungstenProject [id#20,fieldling#24,get\_json\_object(fieldling#24,$.animal.type) AS animal#25]), None)

data02.filter($"animal" === "cat").show
+---+---------+------+
\| id\|fieldling\|animal\|
+---+---------+------+
+---+---------+------+
{code}


---

* [SPARK-10858](https://issues.apache.org/jira/browse/SPARK-10858) | *Minor* | **YARN: archives/jar/files rename with # doesn't work unless scheme given**

The YARN distributed cache feature with --jars, --archives, --files where you can rename the file/archive using a # symbol only works if you explicitly include the scheme in the path:

works:
--jars file:///home/foo/my.jar#renamed.jar

doesn't work:
--jars /home/foo/my.jar#renamed.jar

Exception in thread "main" java.io.FileNotFoundException: File file:/home/foo/my.jar#renamed.jar does not exist
        at org.apache.hadoop.fs.RawLocalFileSystem.deprecatedGetFileStatus(RawLocalFileSystem.java:534)
        at org.apache.hadoop.fs.RawLocalFileSystem.getFileLinkStatusInternal(RawLocalFileSystem.java:747)
        at org.apache.hadoop.fs.RawLocalFileSystem.getFileStatus(RawLocalFileSystem.java:524)
        at org.apache.hadoop.fs.FilterFileSystem.getFileStatus(FilterFileSystem.java:416)
        at org.apache.hadoop.fs.FileUtil.copy(FileUtil.java:337)
        at org.apache.hadoop.fs.FileUtil.copy(FileUtil.java:289)
        at org.apache.spark.deploy.yarn.Client.copyFileToRemote(Client.scala:240)
        at org.apache.spark.deploy.yarn.Client.org$apache$spark$deploy$yarn$Client$$distribute$1(Client.scala:329)
        at org.apache.spark.deploy.yarn.Client$$anonfun$prepareLocalResources$6$$anonfun$apply$2.apply(Client.scala:393)
        at org.apache.spark.deploy.yarn.Client$$anonfun$prepareLocalResources$6$$anonfun$apply$2.apply(Client.scala:392)
        at scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:33)
        at scala.collection.mutable.ArrayOps$ofRef.foreach(ArrayOps.scala:108)


---

* [SPARK-10856](https://issues.apache.org/jira/browse/SPARK-10856) | *Major* | **SQL Server dialect needs to map java.sql.Timestamp to DATETIME instead of TIMESTAMP**

When saving a DataFrame to MS SQL Server, en error is thrown if there is more than one TIMESTAMP column:

df.printSchema

root
 \|-- Id: string (nullable = false)
 \|-- TypeInformation\_CreatedBy: string (nullable = false)
 \|-- TypeInformation\_ModifiedBy: string (nullable = true)
 \|-- TypeInformation\_TypeStatus: integer (nullable = false)
 \|-- TypeInformation\_CreatedAtDatabase: timestamp (nullable = false)
 \|-- TypeInformation\_ModifiedAtDatabase: timestamp (nullable = true)

df.write.mode("overwrite").jdbc(url, tablename, props)

com.microsoft.sqlserver.jdbc.SQLServerException: A table can only have one timestamp column. Because table 'DebtorTypeSet1' already has one, the column 'TypeInformation\_ModifiedAtDatabase' cannot be added.
        at com.microsoft.sqlserver.jdbc.SQLServerException.makeFromDatabaseError
(SQLServerException.java:217)
        at com.microsoft.sqlserver.jdbc.SQLServerStatement.getNextResult(SQLServ
erStatement.java:1635)
        at com.microsoft.sqlserver.jdbc.SQLServerPreparedStatement.doExecutePrep
aredStatement(SQLServerPreparedStatement.java:426)
        at com.microsoft.sqlserver.jdbc.SQLServerPreparedStatement$PrepStmtExecC
md.doExecute(SQLServerPreparedStatement.java:372)
        at com.microsoft.sqlserver.jdbc.TDSCommand.execute(IOBuffer.java:6276)
        at com.microsoft.sqlserver.jdbc.SQLServerConnection.executeCommand(SQLSe
rverConnection.java:1793)
        at com.microsoft.sqlserver.jdbc.SQLServerStatement.executeCommand(SQLSer
verStatement.java:184)
        at com.microsoft.sqlserver.jdbc.SQLServerStatement.executeStatement(SQLS
erverStatement.java:159)
        at com.microsoft.sqlserver.jdbc.SQLServerPreparedStatement.executeUpdate
(SQLServerPreparedStatement.java:315)

I tested this on Windows and SQL Server 12 using Spark 1.4.1.

I think this can be fixed in a similar way to Spark-10419.

As a refererence, here is the type mapping according to the SQL Server JDBC driver (basicDT.java, extracted from sqljdbc\_4.2.6420.100\_enu.exe):

   private static void displayRow(String title, ResultSet rs) {
      try {
         System.out.println(title);
         System.out.println(rs.getInt(1) + " , " +  		// SQL integer type.
               rs.getString(2) + " , " +            		// SQL char type.
               rs.getString(3) + " , " +            		// SQL varchar type.
               rs.getBoolean(4) + " , " +           		// SQL bit type.
               rs.getDouble(5) + " , " +            		// SQL decimal type.
               rs.getDouble(6) + " , " +            		// SQL money type.
               rs.getTimestamp(7) + " , " +        		// SQL datetime type.
               rs.getDate(8) + " , " +              		// SQL date type.
               rs.getTime(9) + " , " +              		// SQL time type.
               rs.getTimestamp(10) + " , " +            	// SQL datetime2 type.
               ((SQLServerResultSet)rs).getDateTimeOffset(11)); // SQL datetimeoffset type.


---

* [SPARK-10855](https://issues.apache.org/jira/browse/SPARK-10855) | *Minor* | **Add a JDBC dialect for Apache  Derby**

In particular, it would be good if the dialect could handle Derby's user-defined types. The following script fails:

{noformat}
import org.apache.spark.sql.\_
import org.apache.spark.sql.types.\_

// the following script was used to create a Derby table
// which has a column of user-defined type:
// 
// create type properties external name 'java.util.Properties' language java;
// 
// create function systemProperties() returns properties
// language java parameter style java no sql
// external name 'java.lang.System.getProperties';
// 
// create table propertiesTable( props properties );
// 
// insert into propertiesTable values ( null ), ( systemProperties() );
// 
// select \* from propertiesTable;

// cannot handle a table which has a column of type java.sql.Types.JAVA\_OBJECT:
//
// java.sql.SQLException: Unsupported type 2000
//
val df = sqlContext.read.format("jdbc").options( 
  Map("url" -\> "jdbc:derby:/Users/rhillegas/derby/databases/derby1",
  "dbtable" -\> "app.propertiesTable")).load()

// shutdown the Derby engine
val shutdown = sqlContext.read.format("jdbc").options( 
  Map("url" -\> "jdbc:derby:;shutdown=true",
  "dbtable" -\> "")).load()

exit()
{noformat}

The inability to handle user-defined types probably affects other databases besides Derby.


---

* [SPARK-10851](https://issues.apache.org/jira/browse/SPARK-10851) | *Major* | **Exception not failing R applications (in yarn cluster mode)**

The bug is the R version of SPARK-7736. The R script fails with an exception but the Yarn application status is SUCCEEDED.


---

* [SPARK-10845](https://issues.apache.org/jira/browse/SPARK-10845) | *Major* | **SQL option "spark.sql.hive.version" doesn't show up in the result of "SET -v"**

When refactoring SQL options from plain strings to the strongly typed {{SQLConfEntry}}, {{spark.sql.hive.version}} wasn't migrated, and doesn't show up in the result of {{SET -v}}, as {{SET -v}} only shows public {{SQLConfEntry}} instances.

This affects compatibility with Simba ODBC driver.


---

* [SPARK-10836](https://issues.apache.org/jira/browse/SPARK-10836) | *Minor* | **SparkR: Add sort function to dataframe**

Hi everyone,

the sort function can be used as an alternative to arrange(... ).
As arguments it accepts x - dataframe, decreasing - TRUE/FALSE, a list of orderings for columns and the list of columns, represented as string names

for example: 
 sort(df, TRUE, "col1","col2","col3","col5") # for example, if we want to sort some of the columns in the same order

 sort(df, decreasing=TRUE, "col1")
 sort(df, decreasing=c(TRUE,FALSE), "col1","col2")


Thanks,
Narine


---

* [SPARK-10833](https://issues.apache.org/jira/browse/SPARK-10833) | *Major* | **Inline, organize BSD/MIT licenses in LICENSE**

In the course of https://issues.apache.org/jira/browse/LEGAL-226 it came to light that the guidance at http://www.apache.org/dev/licensing-howto.html#permissive-deps means that permissively-licensed dependencies has a different interpretation than we (er, I) had been operating under. "pointer ... to the license within the source tree" specifically means a copy of the license within Spark's distribution, whereas at the moment, Spark's LICENSE has a pointer to the project's license in the \*other project's\* source tree.

The remedy is simply to inline all such license references (i.e. BSD/MIT licenses) or include their text in "licenses" subdirectory and point to that.

Along the way, we can also treat other BSD/MIT licenses, whose text has been inlined into LICENSE, in the same way.

The LICENSE file can continue to provide a helpful list of BSD/MIT licensed projects and a pointer to their sites. This would be over and above including license text in the distro, which is the essential thing.

I do not think this blocks a current release, since there's a good-faith argument that the current practice satisfies the terms of the third-party licenses as well. (If it didn't, this would be a blocker for any further release.) However, of course it's better to follow the best practice going forward.


---

* [SPARK-10829](https://issues.apache.org/jira/browse/SPARK-10829) | *Critical* | **Scan DataSource with predicate expression combine partition key and attributes doesn't work**

To reproduce that with the code:
{code}
withSQLConf(SQLConf.PARQUET\_FILTER\_PUSHDOWN\_ENABLED.key -\> "true") {
      withTempPath { dir =\>
        val path = s"${dir.getCanonicalPath}/part=1"
        (1 to 3).map(i =\> (i, i.toString)).toDF("a", "b").write.parquet(path)

        // If the "part = 1" filter gets pushed down, this query will throw an exception since
        // "part" is not a valid column in the actual Parquet file
        checkAnswer(
          sqlContext.read.parquet(path).filter("a \> 0 and (part = 0 or a \> 1)"),
          (2 to 3).map(i =\> Row(i, i.toString, 1)))
      }
    }
{code}
We expect the result as:
{code}
2, 1
3, 1
{code}
But we got:
{code}
1, 1
2, 1
3, 1
{code}


---

* [SPARK-10825](https://issues.apache.org/jira/browse/SPARK-10825) | *Critical* | **Flaky test: StandaloneDynamicAllocationSuite**

There are some race conditions in StandaloneDynamicAllocationSuite.
1. It should not assume master and workers start in order.
2. It should not assume master and workers get ready at once
3. It should not assume the application is already registered with master after creating SparkContext.
4. It should not access Master.app which is not thread safe.


---

* [SPARK-10812](https://issues.apache.org/jira/browse/SPARK-10812) | *Minor* | **Spark Hadoop Util does not support stopping a non-yarn Spark Context & starting a Yarn spark context.**

While this is likely not a huge issue for real production systems, for test systems which may setup a Spark Context and tear it down and stand up a Spark Context with a different master (e.g. some local mode & some yarn mode) tests this cane be an issue. Discovered during work on spark-testing-base on Spark 1.4.1, but seems like the logic that triggers it is present in master (see SparkHadoopUtil object). A valid work around for users encountering this issue is to fork a different JVM, however this can be heavy weight.

{quote}
[info] SampleMiniClusterTest:
[info] Exception encountered when attempting to run a suite with class name: com.holdenkarau.spark.testing.SampleMiniClusterTest \*\*\* ABORTED \*\*\*
[info]   java.lang.ClassCastException: org.apache.spark.deploy.SparkHadoopUtil cannot be cast to org.apache.spark.deploy.yarn.YarnSparkHadoopUtil
[info]   at org.apache.spark.deploy.yarn.YarnSparkHadoopUtil$.get(YarnSparkHadoopUtil.scala:163)
[info]   at org.apache.spark.deploy.yarn.Client.prepareLocalResources(Client.scala:257)
[info]   at org.apache.spark.deploy.yarn.Client.createContainerLaunchContext(Client.scala:561)
[info]   at org.apache.spark.deploy.yarn.Client.submitApplication(Client.scala:115)
[info]   at org.apache.spark.scheduler.cluster.YarnClientSchedulerBackend.start(YarnClientSchedulerBackend.scala:57)
[info]   at org.apache.spark.scheduler.TaskSchedulerImpl.start(TaskSchedulerImpl.scala:141)
[info]   at org.apache.spark.SparkContext.\<init\>(SparkContext.scala:497)
[info]   at com.holdenkarau.spark.testing.SharedMiniCluster$class.setup(SharedMiniCluster.scala:186)
[info]   at com.holdenkarau.spark.testing.SampleMiniClusterTest.setup(SampleMiniClusterTest.scala:26)
[info]   at com.holdenkarau.spark.testing.SharedMiniCluster$class.beforeAll(SharedMiniCluster.scala:103)
{quote}


---

* [SPARK-10811](https://issues.apache.org/jira/browse/SPARK-10811) | *Major* | **Minimize array copying cost in Parquet converters**

When converting Parquet {{Binary}} values to {{UTF8String}} and {{Decimal}} values, there exists unnecessary array copying costs ({{Binary.getBytes()}}), which can be eliminated for better performance.


---

* [SPARK-10810](https://issues.apache.org/jira/browse/SPARK-10810) | *Blocker* | **Improve session management for SQL**

Currently, we try to support multiple sessions in SQL within a Spark Context, but it's broken and not complete.

We should isolate these for each session :

1) current database of Hive
2) SQLConf
3) UDF/UDAF/UDTF
4) temporary table

For added jar and cached tables, they should be accessible for all sessions.


---

* [SPARK-10790](https://issues.apache.org/jira/browse/SPARK-10790) | *Major* | **Dynamic Allocation does not request any executors if first stage needs less than or equal to spark.dynamicAllocation.initialExecutors**

If you set spark.dynamicAllocation.initialExecutors \> 0 (or spark.dynamicAllocation.minExecutors, since spark.dynamicAllocation.initialExecutors defaults to spark.dynamicAllocation.minExecutors), and the number of tasks in the first stage of your job is less than or equal to this min/init number of executors, dynamic allocation won't actually request any executors and will just hang indefinitely with the warning "Initial job has not accepted any resources; check your cluster UI to ensure that workers are registered and have sufficient resources".

The cause appears to be that ExecutorAllocationManager does not request any executors while the application is still initializing, but it still sets the initial value of numExecutorsTarget to spark.dynamicAllocation.initialExecutors. Once the job is running and has submitted its first task, if the first task does not need more than spark.dynamicAllocation.initialExecutors, ExecutorAllocationManager.updateAndSyncNumExecutorsTarget() does not think that it needs to request any executors, so it doesn't.


---

* [SPARK-10782](https://issues.apache.org/jira/browse/SPARK-10782) | *Trivial* | **Duplicate examples for drop\_duplicates and DropDuplicates**

In documentation for pyspark.sql, the source code examples for DropDuplicates and drop\_duplicates are identical with each other.  It appears that the example for DropDuplicates was copy/pasted for drop\_duplicates and not edited.

https://spark.apache.org/docs/latest/api/python/pyspark.sql.html#pyspark.sql.DataFrame.dropDuplicates


---

* [SPARK-10779](https://issues.apache.org/jira/browse/SPARK-10779) | *Major* | **Set initialModel for KMeans model in PySpark (spark.mllib)**

Provide initialModel param for pyspark.mllib.clustering.KMeans


---

* [SPARK-10778](https://issues.apache.org/jira/browse/SPARK-10778) | *Trivial* | **Implement toString for AssociationRules.Rule**

pretty print for association rules, e.g.

{code}
{a, b, c} =\> {d}: 0.8
{code}


---

* [SPARK-10772](https://issues.apache.org/jira/browse/SPARK-10772) | *Minor* | **NullPointerException when transform function in DStream returns NULL**

NullPointerException raises when transform function returns NULL:

{quote}
java.lang.NullPointerException
	at org.apache.spark.streaming.dstream.DStream$$anonfun$clearMetadata$3.apply(DStream.scala:442)
	at org.apache.spark.streaming.dstream.DStream$$anonfun$clearMetadata$3.apply(DStream.scala:441)
	at scala.collection.mutable.HashMap$$anon$2$$anonfun$foreach$3.apply(HashMap.scala:107)
	at scala.collection.mutable.HashMap$$anon$2$$anonfun$foreach$3.apply(HashMap.scala:107)
	at scala.collection.mutable.HashTable$class.foreachEntry(HashTable.scala:226)
	at scala.collection.mutable.HashMap.foreachEntry(HashMap.scala:39)
	at scala.collection.mutable.HashMap$$anon$2.foreach(HashMap.scala:107)
	at org.apache.spark.streaming.dstream.DStream.clearMetadata(DStream.scala:441)
	at org.apache.spark.streaming.dstream.DStream$$anonfun$clearMetadata$5.apply(DStream.scala:454)
	at org.apache.spark.streaming.dstream.DStream$$anonfun$clearMetadata$5.apply(DStream.scala:454)
	at scala.collection.immutable.List.foreach(List.scala:318)
	at org.apache.spark.streaming.dstream.DStream.clearMetadata(DStream.scala:454)
	at org.apache.spark.streaming.DStreamGraph$$anonfun$clearMetadata$2.apply(DStreamGraph.scala:129)
	at org.apache.spark.streaming.DStreamGraph$$anonfun$clearMetadata$2.apply(DStreamGraph.scala:129)
	at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
	at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
	at org.apache.spark.streaming.DStreamGraph.clearMetadata(DStreamGraph.scala:129)
	at org.apache.spark.streaming.scheduler.JobGenerator.clearMetadata(JobGenerator.scala:257)
	at org.apache.spark.streaming.scheduler.JobGenerator.org$apache$spark$streaming$scheduler$JobGenerator$$processEvent(JobGenerator.scala:178)
	at org.apache.spark.streaming.scheduler.JobGenerator$$anon$1.onReceive(JobGenerator.scala:83)
	at org.apache.spark.streaming.scheduler.JobGenerator$$anon$1.onReceive(JobGenerator.scala:82)
	at org.apache.spark.util.EventLoop$$anon$1.run(EventLoop.scala:48)
{quote}

The code is very simple: 
{code}
        val sc = new SparkContext(conf)
        val sqlContext = new HiveContext(sc)
        import sqlContext.implicits.\_
        println("\>\>\> create streamingContext.")
        val ssc = new StreamingContext(sc, Seconds(1))
        ssc.queueStream(
            Queue(
                sc.makeRDD(Seq(1)), 
                sc.makeRDD(Seq[Int]()), 
                sc.makeRDD(Seq(2))
                ), true).transform(rdd =\> if (rdd.isEmpty()) rdd else null).print
        ssc.start()
{code}


---

* [SPARK-10769](https://issues.apache.org/jira/browse/SPARK-10769) | *Major* | **Fix o.a.s.streaming.CheckpointSuite.maintains rate controller**

Fixed the following failure in https://amplab.cs.berkeley.edu/jenkins/job/NewSparkPullRequestBuilder/1787/testReport/junit/org.apache.spark.streaming/CheckpointSuite/recovery\_maintains\_rate\_controller/

{code}
sbt.ForkMain$ForkError: The code passed to eventually never returned normally. Attempted 660 times over 10.000044392000001 seconds. Last failure message: 9223372036854775807 did not equal 200.
	at org.scalatest.concurrent.Eventually$class.tryTryAgain$1(Eventually.scala:420)
	at org.scalatest.concurrent.Eventually$class.eventually(Eventually.scala:438)
	at org.scalatest.concurrent.Eventually$.eventually(Eventually.scala:478)
	at org.scalatest.concurrent.Eventually$class.eventually(Eventually.scala:336)
	at org.scalatest.concurrent.Eventually$.eventually(Eventually.scala:478)
	at org.apache.spark.streaming.CheckpointSuite$$anonfun$15.apply$mcV$sp(CheckpointSuite.scala:413)
	at org.apache.spark.streaming.CheckpointSuite$$anonfun$15.apply(CheckpointSuite.scala:396)
	at org.apache.spark.streaming.CheckpointSuite$$anonfun$15.apply(CheckpointSuite.scala:396)
	at org.scalatest.Transformer$$anonfun$apply$1.apply$mcV$sp(Transformer.scala:22)
	at org.scalatest.OutcomeOf$class.outcomeOf(OutcomeOf.scala:85)
	at org.scalatest.OutcomeOf$.outcomeOf(OutcomeOf.scala:104)
	at org.scalatest.Transformer.apply(Transformer.scala:22)
{code}


---

* [SPARK-10767](https://issues.apache.org/jira/browse/SPARK-10767) | *Minor* | **Make pyspark shared params codegen more consistent**

Namely "." shows up in some places in the template when using the param docstring and not in others


---

* [SPARK-10763](https://issues.apache.org/jira/browse/SPARK-10763) | *Minor* | **Update Java MLLIB/ML tests to use simplified dataframe construction**

As introduced in https://issues.apache.org/jira/browse/SPARK-10630 we now have an easier way to create dataframes from local Java lists. Lets update the tests to use those.


---

* [SPARK-10761](https://issues.apache.org/jira/browse/SPARK-10761) | *Minor* | **Refactor DiskBlockObjectWriter to not require BlockId**

The DiskBlockObjectWriter constructor takes a BlockId parameter but never uses it internally. We should try to clean this up.


---

* [SPARK-10760](https://issues.apache.org/jira/browse/SPARK-10760) | *Minor* | **SparkR glm: the documentation in examples - family argument is missing**

Hi everyone,

Since the family argument is required for the glm function, the execution of:

model \<- glm(Sepal\_Length ~ Sepal\_Width, df) 

is failing.

I've fixed the documentation by adding the family argument and also added the summay(model) which will show the coefficients for the model. 

Thanks,
Narine


---

* [SPARK-10750](https://issues.apache.org/jira/browse/SPARK-10750) | *Minor* | **ML Param validate should print better error information**

Currently when you set illegal value for params of array type (such as IntArrayParam, DoubleArrayParam, StringArrayParam), it will throw IllegalArgumentException but with incomprehensible error information.
For example:

val vectorSlicer = new VectorSlicer().setInputCol("features").setOutputCol("result")
vectorSlicer.setIndices(Array.empty).setNames(Array("f1", "f4", "f1"))

It will throw IllegalArgumentException as:
vectorSlicer\_b3b4d1a10f43 parameter names given invalid value [Ljava.lang.String;@798256c5.
java.lang.IllegalArgumentException: vectorSlicer\_b3b4d1a10f43 parameter names given invalid value [Ljava.lang.String;@798256c5.

Users can not understand which params were set incorrectly.


---

* [SPARK-10742](https://issues.apache.org/jira/browse/SPARK-10742) | *Minor* | **Add the ability to embed HTML relative links in job descriptions**

This is to allow embedding links to other Spark UI tabs within the job description. For example, streaming jobs could set descriptions with links pointing to the corresponding details page of the batch that the job belongs to.


---

* [SPARK-10741](https://issues.apache.org/jira/browse/SPARK-10741) | *Major* | **Hive Query Having/OrderBy against Parquet table is not working**

Failed Query with Having Clause
{code}
  def testParquetHaving() {
    val ddl =
      """CREATE TABLE IF NOT EXISTS test ( c1 string, c2 int ) STORED AS PARQUET"""
    val failedHaving =
      """ SELECT c1, avg ( c2 ) as c\_avg
        \| FROM test
        \| GROUP BY c1
        \| HAVING ( avg ( c2 ) \> 5)  ORDER BY c1""".stripMargin
    TestHive.sql(ddl)
    TestHive.sql(failedHaving).collect
  }

org.apache.spark.sql.AnalysisException: resolved attribute(s) c2#16 missing from c1#17,c2#18 in operator !Aggregate [c1#17], [cast((avg(cast(c2#16 as bigint)) \> cast(5 as double)) as boolean) AS havingCondition#12,c1#17,avg(cast(c2#18 as bigint)) AS c\_avg#9];
	at org.apache.spark.sql.catalyst.analysis.CheckAnalysis$class.failAnalysis(CheckAnalysis.scala:37)
	at org.apache.spark.sql.catalyst.analysis.Analyzer.failAnalysis(Analyzer.scala:44)
	at org.apache.spark.sql.catalyst.analysis.CheckAnalysis$$anonfun$checkAnalysis$1.apply(CheckAnalysis.scala:154)
	at org.apache.spark.sql.catalyst.analysis.CheckAnalysis$$anonfun$checkAnalysis$1.apply(CheckAnalysis.scala:49)

{code}

Failed Query with OrderBy
{code}
  def testParquetOrderBy() {
    val ddl =
      """CREATE TABLE IF NOT EXISTS test ( c1 string, c2 int ) STORED AS PARQUET"""
    val failedOrderBy =
      """ SELECT c1, avg ( c2 ) c\_avg
        \| FROM test
        \| GROUP BY c1
        \| ORDER BY avg ( c2 )""".stripMargin
    TestHive.sql(ddl)
    TestHive.sql(failedOrderBy).collect
  }

org.apache.spark.sql.AnalysisException: resolved attribute(s) c2#33 missing from c1#34,c2#35 in operator !Aggregate [c1#34], [avg(cast(c2#33 as bigint)) AS aggOrder#31,c1#34,avg(cast(c2#35 as bigint)) AS c\_avg#28];
	at org.apache.spark.sql.catalyst.analysis.CheckAnalysis$class.failAnalysis(CheckAnalysis.scala:37)
	at org.apache.spark.sql.catalyst.analysis.Analyzer.failAnalysis(Analyzer.scala:44)
{code}


---

* [SPARK-10740](https://issues.apache.org/jira/browse/SPARK-10740) | *Blocker* | **handle nondeterministic expressions correctly for set operations**

We should only push down deterministic filter condition to set operator.
For Union, let's say we do a non-deterministic filter on 1...5 union 1...5, and we may get 1,3 for the left side and 2,4 for the right side, then the result should be 1,3,2,4. If we push down this filter, we get 1,3 for both side(we create a new random object with same seed in each side) and the result would be 1,3,1,3.
For Intersect, let's say there is a non-deterministic condition with a 0.5 possibility to accept a row and we have a row that presents in both sides of an Intersect. Once we push down this condition, the possibility to accept this row will be 0.25.
For Except, let's say there is a row that presents in both sides of an Except. This row should not be in the final output. However, if we pushdown a non-deterministic condition, it is possible that this row is rejected from one side and then we output a row that should not be a part of the result.

 We should only push down deterministic projection to Union.


---

* [SPARK-10739](https://issues.apache.org/jira/browse/SPARK-10739) | *Minor* | **Add attempt window for long running Spark application on Yarn**

Currently Spark on Yarn uses max attempts to control the failure number, if application's failure number reaches to the max attempts, application will not be recovered by RM, it is not very effective for long running applications, since it will easily exceed the max number at a long time period, also setting a very large max attempts will hide the real problem.

So here introduce an attempt window to control the application attempt times, this will ignore the out of window attempts, it is introduced in Hadoop 2.6+ to support long running application, it is quite useful for Spark Streaming, Spark shell like applications.


---

* [SPARK-10738](https://issues.apache.org/jira/browse/SPARK-10738) | *Major* | **Refactoring `Instance` out from LOR and LIR, and also cleaning up some code**

Refactoring `Instance` case class out from LOR and LIR, and also cleaning up some code.


---

* [SPARK-10737](https://issues.apache.org/jira/browse/SPARK-10737) | *Blocker* | **When using UnsafeRows, SortMergeJoin may return wrong results**

{code}
val df1 = (1 to 10).map(i =\> (s"str\_$i", i)).toDF("i", "j")
val df2 =
  df1
  .join(df1.select(df1("i")), "i")
  .select(df1("i"), df1("j"))

val df3 = df2.withColumnRenamed("i", "i1").withColumnRenamed("j", "j1")
val df4 =
  df2
  .join(df3, df2("i") === df3("i1"))
  .withColumn("diff", $"j" - $"j1")

df4.show(100, false)

+------+---+------+---+----+
\|i     \|j  \|i1    \|j1 \|diff\|
+------+---+------+---+----+
\|str\_2 \|2  \|str\_2 \|2  \|0   \|
\|str\_7 \|7  \|str\_2 \|2  \|5   \|
\|str\_10\|10 \|str\_10\|10 \|0   \|
\|str\_3 \|3  \|str\_3 \|3  \|0   \|
\|str\_8 \|8  \|str\_3 \|3  \|5   \|
\|str\_4 \|4  \|str\_4 \|4  \|0   \|
\|str\_9 \|9  \|str\_4 \|4  \|5   \|
\|str\_5 \|5  \|str\_5 \|5  \|0   \|
\|str\_1 \|1  \|str\_1 \|1  \|0   \|
\|str\_6 \|6  \|str\_1 \|1  \|5   \|
+------+---+------+---+----+

{code}


---

* [SPARK-10736](https://issues.apache.org/jira/browse/SPARK-10736) | *Minor* | **Use 1 for all ratings if $(ratingCol) = ""**

For some implicit dataset, ratings may not exist in the training data. In this case, we can assume all observed pairs to be positive and treat their ratings as 1. This should happen when users set ratingCol to an empty string.


---

* [SPARK-10731](https://issues.apache.org/jira/browse/SPARK-10731) | *Major* | **The head() implementation of dataframe is very slow**

{code}
df=sqlContext.read.parquet("someparquetfiles")
df.head()
{code}

The above lines take over 15 minutes. It seems the dataframe requires 3 stages to return the first row. It reads all data (which is about 1 billion rows) and run Limit twice. The take(1) implementation in the RDD performs much better.


---

* [SPARK-10721](https://issues.apache.org/jira/browse/SPARK-10721) | *Minor* | **Log warning when file deletion fails**

There're several places in the code base where return value from File.delete() is ignored.

This issue adds checking for the boolean return value and logs warning when deletion fails.


---

* [SPARK-10720](https://issues.apache.org/jira/browse/SPARK-10720) | *Minor* | **Add a java wrapper to create dataframe from a local list of Java Beans.**

Similar to SPARK-10630 it would be nice if Java users didn't have to parallelize there data explicitly (as Scala users already can skip). Issue came up in http://stackoverflow.com/questions/32613413/apache-spark-machine-learning-cant-get-estimator-example-to-work?answertab=active#tab-top


---

* [SPARK-10718](https://issues.apache.org/jira/browse/SPARK-10718) | *Minor* | **Update License on conf files and corresponding excludes file**

Update License on conf files and corresponding excludes file update.
{code}
Apache license header missing from multiple script and required files
Could not find Apache license headers in the following files:
 !????? \<\>spark/conf/spark-defaults.conf
[error] running \<\>spark/dev/check-license ; received return code 1
{code}


---

* [SPARK-10716](https://issues.apache.org/jira/browse/SPARK-10716) | *Minor* | **spark-1.5.0-bin-hadoop2.6.tgz file doesn't uncompress on OS X due to hidden file**

Directly downloaded prebuilt binaries of http://d3kbcqa49mib13.cloudfront.net/spark-1.5.0-bin-hadoop2.6.tgz 
got error when tar xvzf it.  Tried download twice and extract twice.

error log:
......
x spark-1.5.0-bin-hadoop2.6/lib/
x spark-1.5.0-bin-hadoop2.6/lib/datanucleus-core-3.2.10.jar
x spark-1.5.0-bin-hadoop2.6/lib/datanucleus-api-jdo-3.2.6.jar
x spark-1.5.0-bin-hadoop2.6/lib/datanucleus-rdbms-3.2.9.jar
x spark-1.5.0-bin-hadoop2.6/lib/spark-examples-1.5.0-hadoop2.6.0.jar
x spark-1.5.0-bin-hadoop2.6/lib/spark-assembly-1.5.0-hadoop2.6.0.jar
x spark-1.5.0-bin-hadoop2.6/lib/spark-1.5.0-yarn-shuffle.jar
x spark-1.5.0-bin-hadoop2.6/README.md
tar: copyfile unpack (spark-1.5.0-bin-hadoop2.6/python/test\_support/sql/orc\_partitioned/SUCCESS.crc) failed: No such file or directory
~ :\>


---

* [SPARK-10715](https://issues.apache.org/jira/browse/SPARK-10715) | *Trivial* | **Duplicate initialzation flag in WeightedLeastSquare**

There are duplicate set of initialization flag in {{WeightedLeastSquares#add}}.


---

* [SPARK-10714](https://issues.apache.org/jira/browse/SPARK-10714) | *Major* | **Refactor PythonRDD to decouple iterator computation from PythonRDD**

The idea is that most of the logic of calling Python actually has nothing to do with RDD (it is really just communicating with a socket -- there is nothing distributed about it), and it is only currently depending on RDD because it was written this way.

If we extract that functionality out, we can apply it to area of the code that doesn't depend on RDDs, and also make it easier to test.


---

* [SPARK-10711](https://issues.apache.org/jira/browse/SPARK-10711) | *Critical* | **Do not assume spark.submit.deployMode is always set**

in RRDD.createRProcess() we call RUtils.sparkRPackagePath(), which assumes "... that Spark properties `spark.master` and `spark.submit.deployMode` are set."

It is better to assume safe defaults if they are not set.


---

* [SPARK-10710](https://issues.apache.org/jira/browse/SPARK-10710) | *Major* | **Remove ability to set spark.shuffle.spill=false and spark.sql.planner.externalSort=false**

The {{spark.shuffle.spill=false}} configuration doesn't make much sense nowadays: I think that this configuration was only added as an escape-hatch to guard against bugs when spilling was first added. Similarly, setting {{spark.sql.planner.externalSort=false}} doesn't make sense in newer releases: many new implementations, such as Tungsten, completely ignore this flag, so it's not applied in a consistent way.

In order to reduce complexity, I think that we should remove the ability to disable spilling. Note that the {{tungsten-shuffle}} manager already does not respect this setting, so removing this configuration is a blocker to being able to unify the two sort-shuffle implementations.


---

* [SPARK-10706](https://issues.apache.org/jira/browse/SPARK-10706) | *Minor* | **Add java wrapper for random vector rdd**

Similar to SPARK-3136 also wrap the random vector API to make it callable easily from Java.


---

* [SPARK-10705](https://issues.apache.org/jira/browse/SPARK-10705) | *Major* | **Stop converting internal rows to external rows in DataFrame.toJSON**

{{DataFrame.toJSON}} uses {{DataFrame.mapPartitions}}, which converts internal rows to external rows. We can use {{queryExecution.toRdd.mapPartitions}} instead for better performance.

Another issue is that, for UDT values, {{serialize}} produces internal types. So currently we must deal with both internal and external types within {{toJSON}} (see [here\|https://github.com/apache/spark/pull/8806/files#diff-0f04c36e499d4dcf6931fbd62b3aa012R77]), which is pretty weird.


---

* [SPARK-10704](https://issues.apache.org/jira/browse/SPARK-10704) | *Major* | **Rename HashShufflereader to BlockStoreShuffleReader**

The current shuffle code has an interface named ShuffleReader with only one implementation, HashShuffleReader. This naming is confusing, since the same read path code is used for both sort- and hash-based shuffle. -We should consolidate these classes.- We should rename HashShuffleReader.

--In addition, there are aspects of ShuffleManager.getReader()'s API which don't make a lot of sense: it exposes the ability to request a contiguous range of shuffle partitions, but this feature isn't supported by any ShuffleReader implementations and isn't used anywhere in the existing code. We should clean this up, too.--


---

* [SPARK-10699](https://issues.apache.org/jira/browse/SPARK-10699) | *Minor* | **Support checkpointInterval can be disabled**

Currently use can set checkpointInterval to specify how often should the cache be checkpointed. But we also need the function that users can disable it.


---

* [SPARK-10695](https://issues.apache.org/jira/browse/SPARK-10695) | *Critical* | **spark.mesos.constraints documentation uses "=" to separate value instead ":" as parser and mesos expects.**

Incorrect documentation which leads to exception when using constraints value as specified in documentation.


---

* [SPARK-10692](https://issues.apache.org/jira/browse/SPARK-10692) | *Critical* | **Failed batches are never reported through the StreamingListener interface**

If an output operation fails, then corresponding batch is never marked as completed, as the data structure are not updated properly.

https://github.com/apache/spark/blob/master/streaming/src/main/scala/org/apache/spark/streaming/scheduler/JobScheduler.scala#L183


---

* [SPARK-10688](https://issues.apache.org/jira/browse/SPARK-10688) | *Major* | **Python API for AFTSurvivalRegression**

After SPARK-10686, we should add Python API for AFTSurvivalRegression.


---

* [SPARK-10686](https://issues.apache.org/jira/browse/SPARK-10686) | *Major* | **Add quantileCol to AFTSurvivalRegression**

By default `quantileCol` should be empty. If both `quantileProbabilities` and `quantileCol` are set, we should append quantiles as a new column (of type Vector).


---

* [SPARK-10685](https://issues.apache.org/jira/browse/SPARK-10685) | *Blocker* | **Misaligned data with RDD.zip and DataFrame.withColumn after repartition**

Here's a weird behavior where {{RDD.zip}} or {{DataFrame.withColumn}} after a {{repartition}} produces "misaligned" data, meaning different column values in the same row aren't matched, as if a zip shuffled the collections before zipping them. It's difficult to reproduce because it's nondeterministic, doesn't occur in local mode, and requires ≥2 workers (≥3 in one case). I was able to repro it using pyspark 1.3.0 (cdh5.4.5), 1.4.1 (bin-without-hadoop), and 1.5.0 (bin-without-hadoop).

Here's the most similar issue I was able to find. It appears to not have been repro'd and then closed optimistically, and it smells like it could have been the same underlying cause that was never fixed:

- https://issues.apache.org/jira/browse/SPARK-9131

Also, this {{DataFrame.zip}} issue is related in spirit, since we were trying to build it ourselves when we ran into this problem. Let me put in my vote for reopening the issue and supporting {{DataFrame.zip}} in the standard lib.

- https://issues.apache.org/jira/browse/SPARK-7460

h3. Brief repro

Fail: withColumn(udf) after DataFrame.repartition
{code}
df = sqlCtx.createDataFrame(Row(a=a) for a in xrange(10000))
df = df.repartition(100)
df = df.withColumn('b', udf(lambda r: r, IntegerType())(df.a))
[r for r in df.collect() if r.a != r.b][:3] # Should be []
{code}

Sample outputs (nondeterministic):
{code}
[Row(a=39, b=639), Row(a=139, b=739), Row(a=239, b=839)]
[Row(a=639, b=39), Row(a=739, b=139), Row(a=839, b=239)]
[]
[Row(a=641, b=41), Row(a=741, b=141), Row(a=841, b=241)]
[Row(a=641, b=1343), Row(a=741, b=1443), Row(a=841, b=1543)]
[Row(a=639, b=39), Row(a=739, b=139), Row(a=839, b=239)]
{code}

Fail: RDD.zip after DataFrame.repartition
{code}
df  = sqlCtx.createDataFrame(Row(a=a) for a in xrange(10000))
df  = df.repartition(100)
rdd = df.rdd.zip(df.map(lambda r: Row(b=r.a))).map(lambda (x,y): Row(a=x.a, b=y.b))
[r for r in rdd.collect() if r.a != r.b][:3] # Should be []
{code}

Sample outputs (nondeterministic):
{code}
[]
[Row(a=50, b=6947), Row(a=150, b=7047), Row(a=250, b=7147)]
[]
[]
[Row(a=44, b=644), Row(a=144, b=744), Row(a=244, b=844)]
[]
{code}

Test setup:

- local\[8]: {{MASTER=local\[8]}}
- dist\[N]: 1 driver + 1 master + N workers

{code}
"Fail" tests pass?  cluster mode  spark version
----------------------------------------------------
yes                 local[8]      1.3.0-cdh5.4.5
no                  dist[4]       1.3.0-cdh5.4.5
yes                 local[8]      1.4.1
yes                 dist[1]       1.4.1
no                  dist[2]       1.4.1
no                  dist[4]       1.4.1
yes                 local[8]      1.5.0
yes                 dist[1]       1.5.0
no                  dist[2]       1.5.0
no                  dist[4]       1.5.0
{code}

h3. Detailed repro

Start `pyspark` and run these imports:
{code}
from pyspark.sql import Row
from pyspark.sql.functions import udf
from pyspark.sql.types import IntegerType, StructType, StructField
{code}

Fail: withColumn(udf) after DataFrame.repartition
{code}
df = sqlCtx.createDataFrame(Row(a=a) for a in xrange(10000))
df = df.repartition(100)
df = df.withColumn('b', udf(lambda r: r, IntegerType())(df.a))
len([r for r in df.collect() if r.a != r.b]) # Should be 0
{code}

Ok: withColumn(udf) after DataFrame.repartition(100) after 1 starting partition
{code}
df = sqlCtx.createDataFrame(sc.parallelize((Row(a=a) for a in xrange(10000)), numSlices=1))
df = df.repartition(100)
df = df.withColumn('b', udf(lambda r: r, IntegerType())(df.a))
len([r for r in df.collect() if r.a != r.b]) # Should be 0
{code}

Fail: withColumn(udf) after DataFrame.repartition(100) after 100 starting partitions
{code}
df = sqlCtx.createDataFrame(sc.parallelize((Row(a=a) for a in xrange(10000)), numSlices=100))
df = df.repartition(100)
df = df.withColumn('b', udf(lambda r: r, IntegerType())(df.a))
len([r for r in df.collect() if r.a != r.b]) # Should be 0
{code}

Fail: withColumn(udf) after DataFrame.repartition(1) after 100 starting partitions
{code}
df = sqlCtx.createDataFrame(sc.parallelize((Row(a=a) for a in xrange(10000)), numSlices=100))
df = df.repartition(1)
df = df.withColumn('b', udf(lambda r: r, IntegerType())(df.a))
len([r for r in df.collect() if r.a != r.b]) # Should be 0
{code}

Ok: withColumn(udf) after DataFrame.coalesce(10) after 100 starting partitions
{code}
df = sqlCtx.createDataFrame(sc.parallelize((Row(a=a) for a in xrange(10000)), numSlices=100))
df = df.coalesce(10)
df = df.withColumn('b', udf(lambda r: r, IntegerType())(df.a))
len([r for r in df.collect() if r.a != r.b]) # Should be 0
{code}

Ok: withColumn without udf
{code}
df = sqlCtx.createDataFrame(Row(a=a) for a in xrange(10000))
df = df.repartition(100)
df = df.withColumn('b', df.a)
len([r for r in df.collect() if r.a != r.b]) # Should be 0
{code}

Ok: createDataFrame(RDD.map) instead of withColumn(udf)
{code}
df  = sqlCtx.createDataFrame(Row(a=a) for a in xrange(10000))
df  = df.repartition(100)
rdd = df.map(lambda r: Row(a=r.a, b=r.a))
df  = sqlCtx.createDataFrame(rdd, StructType(df.schema.fields + [StructField('b', IntegerType())]))
len([r for r in df.collect() if r.a != r.b]) # Should be 0
{code}

Fail: createDataFrame(RDD.zip) instead of withColumn(udf)
{code}
df  = sqlCtx.createDataFrame(Row(a=a) for a in xrange(10000))
df  = df.repartition(100)
rdd = df.rdd.zip(df.map(lambda r: Row(b=r.a))).map(lambda (x,y): Row(a=x.a, b=y.b))
df  = sqlCtx.createDataFrame(rdd, StructType(df.schema.fields + [StructField('b', IntegerType())]))
len([r for r in df.collect() if r.a != r.b]) # Should be 0
{code}

Fail: RDD.zip after DataFrame.repartition
{code}
df  = sqlCtx.createDataFrame(Row(a=a) for a in xrange(10000))
df  = df.repartition(100)
rdd = df.rdd.zip(df.map(lambda r: Row(b=r.a))).map(lambda (x,y): Row(a=x.a, b=y.b))
len([d for d in rdd.collect() if d.a != d.b]) # Should be 0
{code}

Fail: RDD.zip after RDD.repartition after 100 starting partitions

- Failure requires ≥3 workers (whether dist or pseudo-dist)

{code}
rdd = sc.parallelize((Row(a=a) for a in xrange(10000)), numSlices=100)
rdd = rdd.repartition(100)
rdd = rdd.zip(rdd.map(lambda a: a)).map(lambda (a,b): Row(a=a,b=b))
len([d for d in rdd.collect() if d.a != d.b]) # Should be 0
{code}

Ok: RDD.zip after RDD.repartition after 1 starting partition
{code}
rdd = sc.parallelize((Row(a=a) for a in xrange(10000)), numSlices=1)
rdd = rdd.repartition(100)
rdd = rdd.zip(rdd.map(lambda a: a)).map(lambda (a,b): Row(a=a,b=b))
len([d for d in rdd.collect() if d.a != d.b]) # Should be 0
{code}

Test setup:

- local\[8]: {{MASTER=local\[8]}}
- pseudo-dist\[N]: 1 driver + 1 master + N workers; master and workers all on same OS
- dist\[N]: 1 driver + 1 master + N workers; master and workers all on separate OS's
- Spark 1.3.0-cdh5.4.5 with dist\[4] didn't trip any of the {{withColumn}} failures, but did trip the {{zip}} failures
- {{-}} indicates a configuration I didn't try

{code}
"Ok" tests pass?  "Fail" tests pass?        platform  cluster mode    spark version
----------------------------------------------------------------
yes               yes                       ubuntu    local[8]        1.3.0-cdh5.4.5
-                 -                         ubuntu    pseudo-dist[1]  1.3.0-cdh5.4.5
-                 -                         ubuntu    pseudo-dist[2]  1.3.0-cdh5.4.5
yes               no[zip], yes[withColumn]  ubuntu    dist[4]         1.3.0-cdh5.4.5
yes               yes                       osx       local[8]        1.4.1
yes               yes                       ubuntu    local[8]        1.4.1
yes               yes                       osx       pseudo-dist[1]  1.4.1
-                 -                         ubuntu    pseudo-dist[1]  1.4.1
yes               no                        osx       pseudo-dist[2]  1.4.1
-                 -                         ubuntu    pseudo-dist[2]  1.4.1
-                 -                         osx       dist[4]         1.4.1
yes               no                        ubuntu    dist[4]         1.4.1
yes               yes                       osx       local[8]        1.5.0
yes               yes                       ubuntu    local[8]        1.5.0
yes               yes                       osx       pseudo-dist[1]  1.5.0
yes               yes                       ubuntu    pseudo-dist[1]  1.5.0
yes               no                        osx       pseudo-dist[2]  1.5.0
yes               no                        ubuntu    pseudo-dist[2]  1.5.0
-                 -                         osx       dist[4]         1.5.0
yes               no                        ubuntu    dist[4]         1.5.0
{code}


---

* [SPARK-10684](https://issues.apache.org/jira/browse/SPARK-10684) | *Minor* | **StructType.interpretedOrdering need not to be serialized**

Kryo fails with buffer overflow even with max value (2G).

{noformat}
org.apache.spark.SparkException: Kryo serialization failed: Buffer overflow. Available: 0, required: 1
Serialization trace:
containsChild (org.apache.spark.sql.catalyst.expressions.BoundReference)
child (org.apache.spark.sql.catalyst.expressions.SortOrder)
array (scala.collection.mutable.ArraySeq)
ordering (org.apache.spark.sql.catalyst.expressions.InterpretedOrdering)
interpretedOrdering (org.apache.spark.sql.types.StructType)
schema (org.apache.spark.sql.catalyst.expressions.GenericRowWithSchema). To avoid this, increase spark.kryoserializer.buffer.max value.
        at org.apache.spark.serializer.KryoSerializerInstance.serialize(KryoSerializer.scala:263)
        at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:240)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:745)
{noformat}


---

* [SPARK-10679](https://issues.apache.org/jira/browse/SPARK-10679) | *Minor* | **javax.jdo.JDOFatalUserException in executor**

HadoopRDD throws exception in executor, something like below.
{noformat}
5/09/17 18:51:21 INFO metastore.HiveMetaStore: 0: Opening raw store with implemenation class:org.apache.hadoop.hive.metastore.ObjectStore
15/09/17 18:51:21 INFO metastore.ObjectStore: ObjectStore, initialize called
15/09/17 18:51:21 WARN metastore.HiveMetaStore: Retrying creating default database after error: Class org.datanucleus.api.jdo.JDOPersistenceManagerFactory was not found.
javax.jdo.JDOFatalUserException: Class org.datanucleus.api.jdo.JDOPersistenceManagerFactory was not found.
	at javax.jdo.JDOHelper.invokeGetPersistenceManagerFactoryOnImplementation(JDOHelper.java:1175)
	at javax.jdo.JDOHelper.getPersistenceManagerFactory(JDOHelper.java:808)
	at javax.jdo.JDOHelper.getPersistenceManagerFactory(JDOHelper.java:701)
	at org.apache.hadoop.hive.metastore.ObjectStore.getPMF(ObjectStore.java:365)
	at org.apache.hadoop.hive.metastore.ObjectStore.getPersistenceManager(ObjectStore.java:394)
	at org.apache.hadoop.hive.metastore.ObjectStore.initialize(ObjectStore.java:291)
	at org.apache.hadoop.hive.metastore.ObjectStore.setConf(ObjectStore.java:258)
	at org.apache.hadoop.util.ReflectionUtils.setConf(ReflectionUtils.java:73)
	at org.apache.hadoop.util.ReflectionUtils.newInstance(ReflectionUtils.java:133)
	at org.apache.hadoop.hive.metastore.RawStoreProxy.\<init\>(RawStoreProxy.java:57)
	at org.apache.hadoop.hive.metastore.RawStoreProxy.getProxy(RawStoreProxy.java:66)
	at org.apache.hadoop.hive.metastore.HiveMetaStore$HMSHandler.newRawStore(HiveMetaStore.java:593)
	at org.apache.hadoop.hive.metastore.HiveMetaStore$HMSHandler.getMS(HiveMetaStore.java:571)
	at org.apache.hadoop.hive.metastore.HiveMetaStore$HMSHandler.createDefaultDB(HiveMetaStore.java:620)
	at org.apache.hadoop.hive.metastore.HiveMetaStore$HMSHandler.init(HiveMetaStore.java:461)
	at org.apache.hadoop.hive.metastore.RetryingHMSHandler.\<init\>(RetryingHMSHandler.java:66)
	at org.apache.hadoop.hive.metastore.RetryingHMSHandler.getProxy(RetryingHMSHandler.java:72)
	at org.apache.hadoop.hive.metastore.HiveMetaStore.newRetryingHMSHandler(HiveMetaStore.java:5762)
	at org.apache.hadoop.hive.metastore.HiveMetaStoreClient.\<init\>(HiveMetaStoreClient.java:199)
	at org.apache.hadoop.hive.ql.metadata.SessionHiveMetaStoreClient.\<init\>(SessionHiveMetaStoreClient.java:74)
	at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)
	at sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:57)
	at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)
	at java.lang.reflect.Constructor.newInstance(Constructor.java:526)
	at org.apache.hadoop.hive.metastore.MetaStoreUtils.newInstance(MetaStoreUtils.java:1521)
	at org.apache.hadoop.hive.metastore.RetryingMetaStoreClient.\<init\>(RetryingMetaStoreClient.java:86)
	at org.apache.hadoop.hive.metastore.RetryingMetaStoreClient.getProxy(RetryingMetaStoreClient.java:132)
	at org.apache.hadoop.hive.metastore.RetryingMetaStoreClient.getProxy(RetryingMetaStoreClient.java:104)
	at org.apache.hadoop.hive.ql.metadata.Hive.createMetaStoreClient(Hive.java:3005)
	at org.apache.hadoop.hive.ql.metadata.Hive.getMSC(Hive.java:3024)
	at org.apache.hadoop.hive.ql.metadata.Hive.getAllDatabases(Hive.java:1234)
	at org.apache.hadoop.hive.ql.metadata.Hive.reloadFunctions(Hive.java:174)
	at org.apache.hadoop.hive.ql.metadata.Hive.\<clinit\>(Hive.java:166)
	at org.apache.hadoop.hive.ql.plan.PlanUtils.configureJobPropertiesForStorageHandler(PlanUtils.java:803)
	at org.apache.hadoop.hive.ql.plan.PlanUtils.configureInputJobPropertiesForStorageHandler(PlanUtils.java:782)
	at org.apache.spark.sql.hive.HadoopTableReader$.initializeLocalJobConfFunc(TableReader.scala:298)
	at org.apache.spark.sql.hive.HadoopTableReader$$anonfun$12.apply(TableReader.scala:274)
	at org.apache.spark.sql.hive.HadoopTableReader$$anonfun$12.apply(TableReader.scala:274)
	at org.apache.spark.rdd.HadoopRDD$$anonfun$getJobConf$6.apply(HadoopRDD.scala:176)
	at org.apache.spark.rdd.HadoopRDD$$anonfun$getJobConf$6.apply(HadoopRDD.scala:176)
	at scala.Option.map(Option.scala:145)
	at org.apache.spark.rdd.HadoopRDD.getJobConf(HadoopRDD.scala:176)
	at org.apache.spark.rdd.HadoopRDD$$anon$1.\<init\>(HadoopRDD.scala:220)
	at org.apache.spark.rdd.HadoopRDD.compute(HadoopRDD.scala:216)
	at org.apache.spark.rdd.HadoopRDD.compute(HadoopRDD.scala:101)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:297)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:264)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:38)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:297)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:264)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:38)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:297)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:264)
	at org.apache.spark.rdd.UnionRDD.compute(UnionRDD.scala:87)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:297)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:264)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:38)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:297)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:264)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:38)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:297)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:264)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:66)
	at org.apache.spark.scheduler.Task.run(Task.scala:88)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:214)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
{noformat}


---

* [SPARK-10676](https://issues.apache.org/jira/browse/SPARK-10676) | *Major* | **Update documentation with instructions to enable block manager wire encryption**

See SPARK-6229. The code was added but the docs were never updated.


---

* [SPARK-10674](https://issues.apache.org/jira/browse/SPARK-10674) | *Critical* | **Flaky test: network.sasl.SaslIntegrationSuite.testNoSaslClient**

Saw many failures of this test recently, e.g.:

https://amplab.cs.berkeley.edu/jenkins/view/Spark-QA-Test/job/Spark-Master-SBT/3542/AMPLAB\_JENKINS\_BUILD\_PROFILE=hadoop1.0,label=spark-test/testReport/junit/org.apache.spark.network.sasl/SaslIntegrationSuite/testNoSaslClient/

{code}
org.apache.spark.network.sasl.SaslIntegrationSuite.testNoSaslClient

Failing for the past 1 build (Since Failed#3542 )
Took -1 ms.
Error Message

java.util.concurrent.TimeoutException: Timeout waiting for task.
Stacktrace

sbt.ForkMain$ForkError: java.util.concurrent.TimeoutException: Timeout waiting for task.
	at org.junit.Assert.fail(Assert.java:93)
	at org.junit.Assert.assertTrue(Assert.java:43)
	at org.apache.spark.network.sasl.SaslIntegrationSuite.testNoSaslClient(SaslIntegrationSuite.java:137)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.junit.runners.model.FrameworkMethod$1.runReflectiveCall(FrameworkMethod.java:45)
	at org.junit.internal.runners.model.ReflectiveCallable.run(ReflectiveCallable.java:15)
	at org.junit.runners.model.FrameworkMethod.invokeExplosively(FrameworkMethod.java:42)
	at org.junit.internal.runners.statements.InvokeMethod.evaluate(InvokeMethod.java:20)
	at org.junit.internal.runners.statements.RunAfters.evaluate(RunAfters.java:30)
	at org.junit.runners.ParentRunner.runLeaf(ParentRunner.java:263)
	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:68)
	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:47)
	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)
	at org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:60)
	at org.junit.runners.ParentRunner.runChildren(ParentRunner.java:229)
	at org.junit.runners.ParentRunner.access$000(ParentRunner.java:50)
	at org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:222)
	at org.junit.internal.runners.statements.RunBefores.evaluate(RunBefores.java:28)
	at org.junit.internal.runners.statements.RunAfters.evaluate(RunAfters.java:30)
	at org.junit.runners.ParentRunner.run(ParentRunner.java:300)
	at org.junit.runners.Suite.runChild(Suite.java:128)
	at org.junit.runners.Suite.runChild(Suite.java:24)
	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)
	at org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:60)
	at org.junit.runners.ParentRunner.runChildren(ParentRunner.java:229)
	at org.junit.runners.ParentRunner.access$000(ParentRunner.java:50)
	at org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:222)
	at org.junit.runners.ParentRunner.run(ParentRunner.java:300)
	at org.junit.runner.JUnitCore.run(JUnitCore.java:157)
	at org.junit.runner.JUnitCore.run(JUnitCore.java:136)
	at com.novocode.junit.JUnitRunner.run(JUnitRunner.java:90)
	at sbt.RunnerWrapper$1.runRunner2(FrameworkWrapper.java:223)
	at sbt.RunnerWrapper$1.execute(FrameworkWrapper.java:236)
	at sbt.ForkMain$Run$2.call(ForkMain.java:294)
	at sbt.ForkMain$Run$2.call(ForkMain.java:284)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
{code}


---

* [SPARK-10672](https://issues.apache.org/jira/browse/SPARK-10672) | *Blocker* | **We should not fail to create a table If we cannot persist metadata of a data source table to metastore in a Hive compatible way**

It is possible that Hive has some internal restrictions on what kinds of metadata of a table it accepts (e.g. Hive 0.13 does not support decimal stored in parquet). If it is the case, we should not fail when we try to store the metadata in a Hive compatible way. We should just save it in the Spark SQL specific format.


---

* [SPARK-10671](https://issues.apache.org/jira/browse/SPARK-10671) | *Major* | **Calling a UDF with insufficient number of input arguments should throw an analysis error**

{code}
import org.apache.spark.sql.functions.\_
Seq((1,2)).toDF("a", "b").select(callUDF("percentile", $"a"))
{code}

This should throws an Analysis Exception.


---

* [SPARK-10670](https://issues.apache.org/jira/browse/SPARK-10670) | *Major* | **Link to each language's API in codetabs in ML docs: spark.ml**

In the Markdown docs for the spark.ml Programming Guide, we have code examples with codetabs for each language. We should link to each language's API docs within the corresponding codetab, but we are inconsistent about this. For an example of what we want to do, see the "Word2Vec" section in https://github.com/apache/spark/blob/64743870f23bffb8d96dcc8a0181c1452782a151/docs/ml-features.md

This JIRA is just for spark.ml, not spark.mllib


---

* [SPARK-10669](https://issues.apache.org/jira/browse/SPARK-10669) | *Major* | **Link to each language's API in codetabs in ML docs: spark.mllib**

In the Markdown docs for the spark.mllib Programming Guide, we have code examples with codetabs for each language.  We should link to each language's API docs within the corresponding codetab, but we are inconsistent about this.  For an example of what we want to do, see the "ChiSqSelector" section in [https://github.com/apache/spark/blob/64743870f23bffb8d96dcc8a0181c1452782a151/docs/mllib-feature-extraction.md]

This JIRA is just for spark.mllib, not spark.ml


---

* [SPARK-10668](https://issues.apache.org/jira/browse/SPARK-10668) | *Critical* | **Use WeightedLeastSquares in LinearRegression with L2 regularization if the number of features is small**

If the number of features is small (\<=4096) and the regularization is L2, we should use WeightedLeastSquares to solve the problem rather than L-BFGS. The former requires only one pass to the data.


---

* [SPARK-10663](https://issues.apache.org/jira/browse/SPARK-10663) | *Trivial* | **Change test.toDF to test in Spark ML Programming Guide**

Spark 1.5.0 \> Spark ML Programming Guide \> Example: Pipeline

I believe model.transform(test.toDF) should be model.transform(test).

Note that "test" is already a DataFrame.


---

* [SPARK-10662](https://issues.apache.org/jira/browse/SPARK-10662) | *Trivial* | **Code snippets are not properly formatted in tables**

Backticks (markdown) in tables are not processed and hence not formatted properly. See http://people.apache.org/~pwendell/spark-nightly/spark-master-docs/latest/running-on-yarn.html and search for {{`yarn-client`}}.

As per [Sean's suggestion\|https://github.com/apache/spark/pull/8795#issuecomment-141019047] I'm creating the JIRA task.
{quote}
This is a good fix, but this is another instance where I suspect the same issue exists in several markup files, like configuration.html. It's worth a JIRA since I think catching and fixing all of these is one non-trivial logical change.

If you can, avoid whitespace changes like stripping or adding space at the end of lines. It just adds to the diff and makes for a tiny extra chance of merge conflicts.
{quote}


---

* [SPARK-10660](https://issues.apache.org/jira/browse/SPARK-10660) | *Trivial* | **Doc describe error in the "Running Spark on YARN" page**

In the \*Configuration\* section, the \*spark.yarn.driver.memoryOverhead\* and \*spark.yarn.am.memoryOverhead\*‘s  default value should be "driverMemory \* 0.10, with minimum of 384" and "AM memory \* 0.10, with minimum of 384" respectively. Because from Spark 1.4.0, the \*MEMORY\_OVERHEAD\_FACTOR\* is set to 0.1.0, not 0.07.


---

* [SPARK-10657](https://issues.apache.org/jira/browse/SPARK-10657) | *Major* | **Remove legacy SCP-based Jenkins log archiving code**

As of https://issues.apache.org/jira/browse/SPARK-7561, we no longer need to use our custom SCP-based mechanism for archiving Jenkins logs on the master machine; this has been superseded by the use of a Jenkins plugin which archives the logs and provides public viewing of them.

We should remove the legacy log syncing code, since this is a blocker to disabling Worker -\> Master SSH on Jenkins.


---

* [SPARK-10652](https://issues.apache.org/jira/browse/SPARK-10652) | *Major* | **Set meaningful job descriptions for streaming related jobs**

Job descriptions will help distinguish jobs of one batch from the other in the Jobs and Stages pages in the Spark UI


---

* [SPARK-10650](https://issues.apache.org/jira/browse/SPARK-10650) | *Critical* | **Spark docs include test and other extra classes**

In 1.5.0 there are some extra classes in the Spark docs - including a bunch of test classes. We need to figure out what commit introduced those and fix it. The obvious things like genJavadoc version have not changed.

http://spark.apache.org/docs/1.4.1/api/java/org/apache/spark/streaming/ [before]
http://spark.apache.org/docs/1.5.0/api/java/org/apache/spark/streaming/ [after]


---

* [SPARK-10649](https://issues.apache.org/jira/browse/SPARK-10649) | *Major* | **Streaming jobs unexpectedly inherits job group, job descriptions from context starting thread**

The job group, and job descriptions information is passed through thread local properties, and get inherited by child threads. In case of spark streaming, the streaming jobs inherit these properties from the thread that called streamingContext.start(). This may not make sense. 

1. Job group: This is mainly used for cancelling a group of jobs together. It does not make sense to cancel streaming jobs like this, as the effect will be unpredictable. And its not a valid usecase any way, to cancel a streaming context, call streamingContext.stop()

2. Job description: This is used to pass on nice text descriptions for jobs to show up in the UI. The job description of the thread that calls streamingContext.start() is not useful for all the streaming jobs, as it does not make sense for all of the streaming jobs to have the same description, and the description may or may not be related to streaming.


---

* [SPARK-10642](https://issues.apache.org/jira/browse/SPARK-10642) | *Major* | **Crash in rdd.lookup() with "java.lang.Long cannot be cast to java.lang.Integer"**

Running this command:

{code}
sc.parallelize([(('a', 'b'), 'c')]).groupByKey().partitionBy(20).cache().lookup(('a', 'b'))
{code}

gives the following error:
{noformat}
15/09/16 14:22:23 INFO SparkContext: Starting job: runJob at PythonRDD.scala:361
Traceback (most recent call last):
  File "\<stdin\>", line 1, in \<module\>
  File "/usr/local/Cellar/apache-spark/1.5.0/libexec/python/pyspark/rdd.py", line 2199, in lookup
    return self.ctx.runJob(values, lambda x: x, [self.partitioner(key)])
  File "/usr/local/Cellar/apache-spark/1.5.0/libexec/python/pyspark/context.py", line 916, in runJob
    port = self.\_jvm.PythonRDD.runJob(self.\_jsc.sc(), mappedRDD.\_jrdd, partitions)
  File "/usr/local/Cellar/apache-spark/1.5.0/libexec/python/lib/py4j-0.8.2.1-src.zip/py4j/java\_gateway.py", line 538, in \_\_call\_\_
  File "/usr/local/Cellar/apache-spark/1.5.0/libexec/python/pyspark/sql/utils.py", line 36, in deco
    return f(\*a, \*\*kw)
  File "/usr/local/Cellar/apache-spark/1.5.0/libexec/python/lib/py4j-0.8.2.1-src.zip/py4j/protocol.py", line 300, in get\_return\_value
py4j.protocol.Py4JJavaError: An error occurred while calling z:org.apache.spark.api.python.PythonRDD.runJob.
: java.lang.ClassCastException: java.lang.Long cannot be cast to java.lang.Integer
	at scala.runtime.BoxesRunTime.unboxToInt(BoxesRunTime.java:106)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$submitJob$1.apply(DAGScheduler.scala:530)
	at scala.collection.Iterator$class.find(Iterator.scala:780)
	at scala.collection.AbstractIterator.find(Iterator.scala:1157)
	at scala.collection.IterableLike$class.find(IterableLike.scala:79)
	at scala.collection.AbstractIterable.find(Iterable.scala:54)
	at org.apache.spark.scheduler.DAGScheduler.submitJob(DAGScheduler.scala:530)
	at org.apache.spark.scheduler.DAGScheduler.runJob(DAGScheduler.scala:558)
	at org.apache.spark.SparkContext.runJob(SparkContext.scala:1813)
	at org.apache.spark.SparkContext.runJob(SparkContext.scala:1826)
	at org.apache.spark.SparkContext.runJob(SparkContext.scala:1839)
	at org.apache.spark.api.python.PythonRDD$.runJob(PythonRDD.scala:361)
	at org.apache.spark.api.python.PythonRDD.runJob(PythonRDD.scala)
	at sun.reflect.GeneratedMethodAccessor49.invoke(Unknown Source)
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

* [SPARK-10640](https://issues.apache.org/jira/browse/SPARK-10640) | *Blocker* | **Spark history server fails to parse taskEndReasonFromJson TaskCommitDenied**

I'm seeing an exception from the spark history server trying to read a history file:

{code}
scala.MatchError: TaskCommitDenied (of class java.lang.String)
        at org.apache.spark.util.JsonProtocol$.taskEndReasonFromJson(JsonProtocol.scala:775)
        at org.apache.spark.util.JsonProtocol$.taskEndFromJson(JsonProtocol.scala:531)
        at org.apache.spark.util.JsonProtocol$.sparkEventFromJson(JsonProtocol.scala:488)
        at org.apache.spark.scheduler.ReplayListenerBus.replay(ReplayListenerBus.scala:58)
        at org.apache.spark.deploy.history.FsHistoryProvider.org$apache$spark$deploy$history$FsHistoryProvider$$replay(FsHistoryProvider.scala:457)
        at org.apache.spark.deploy.history.FsHistoryProvider$$anonfun$10.apply(FsHistoryProvider.scala:292)
        at org.apache.spark.deploy.history.FsHistoryProvider$$anonfun$10.apply(FsHistoryProvider.scala:289)
        at scala.collection.TraversableLike$$anonfun$flatMap$1.apply(TraversableLike.scala:251)
        at scala.collection.TraversableLike$$anonfun$flatMap$1.apply(TraversableLike.scala:251)
        at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
        at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
        at scala.collection.TraversableLike$class.flatMap(TraversableLike.scala:251)
        at scala.collection.AbstractTraversable.flatMap(Traversable.scala:105)
        at org.apache.spark.deploy.history.FsHistoryProvider.org$apache$spark$deploy$history$FsHistoryProvider$$mergeApplicationListing(FsHistoryProvider.scala:289)
        at org.apache.spark.deploy.history.FsHistoryProvider$$anonfun$checkForLogs$1$$anon$2.run(FsHistoryProvider.scala:210)
        at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:471)
        at java.util.concurrent.FutureTask.run(FutureTask.java:262)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:745)
{code}


---

* [SPARK-10639](https://issues.apache.org/jira/browse/SPARK-10639) | *Blocker* | **Need to convert UDAF's result from scala to sql type**

We are missing a conversion at https://github.com/apache/spark/blob/branch-1.5/sql/core/src/main/scala/org/apache/spark/sql/execution/aggregate/udaf.scala#L427.


---

* [SPARK-10631](https://issues.apache.org/jira/browse/SPARK-10631) | *Minor* | **Add missing API doc in pyspark.mllib.linalg.Vector**

There are some missing API docs in pyspark.mllib.linalg.Vector (including DenseVector and SparseVector). We should add them based on their Scala counterparts.


---

* [SPARK-10630](https://issues.apache.org/jira/browse/SPARK-10630) | *Minor* | **createDataFrame from a Java List\<Row\>**

It would be nice to support creating a DataFrame directly from a Java List of Row:

{code}
def createDataFrame(data: java.util.List[Row], schema: StructType): DataFrame
{code}


---

* [SPARK-10626](https://issues.apache.org/jira/browse/SPARK-10626) | *Minor* | **Create a Java friendly method for randomRDD & RandomDataGenerator on RandomRDDs.**

SPARK-3136 added a large number of functions for creating Java RandomRDDs, but for people that want to use custom RandomDataGenerators we should make a Java friendly method.


---

* [SPARK-10624](https://issues.apache.org/jira/browse/SPARK-10624) | *Major* | **TakeOrderedAndProjectNode output is not ordered**

Input: 1 to 100
Output: 10, 9, 7, 6, 8, 5, 2, 1, 4, 3


---

* [SPARK-10623](https://issues.apache.org/jira/browse/SPARK-10623) | *Blocker* | **NoSuchElementException thrown when ORC predicate push-down is turned on**

Turning on predicate pushdown for ORC datasources results in a {{NoSuchElementException}}:
{noformat}
scala\> val df = sqlContext.sql("SELECT name FROM people WHERE age \< 15")
df: org.apache.spark.sql.DataFrame = [name: string]

scala\> sqlContext.setConf("spark.sql.orc.filterPushdown", "true")

scala\> df.explain
== Physical Plan ==
java.util.NoSuchElementException
{noformat}
Disabling the pushdown makes things work again:
{noformat}
scala\> sqlContext.setConf("spark.sql.orc.filterPushdown", "false")

scala\> df.explain
== Physical Plan ==
Project [name#6]
 Filter (age#7 \< 15)
  Scan OrcRelation[file:/home/mydir/spark-1.5.0-SNAPSHOT/test/people][name#6,age#7]
{noformat}


---

* [SPARK-10619](https://issues.apache.org/jira/browse/SPARK-10619) | *Major* | **Can't sort columns on Executor Page**

I am using spark 1.5 running on yarn and go to the executors page.  It won't allow sorting of the columns. This used to work in Spark 1.4.


---

* [SPARK-10615](https://issues.apache.org/jira/browse/SPARK-10615) | *Minor* | ** changes assertEquals to assertEqual for existing unit tests**

assertEquals is deprecated, so we need to change assertEquals to assertEqual for existing python unit tests.


---

* [SPARK-10613](https://issues.apache.org/jira/browse/SPARK-10613) | *Major* | **Reduce LocalNode tests dependency on SQLContext**

The whole point of local nodes is that you don't need to do things distributed-ly, meaning RDDs / DataFrames are really not necessary. This allows us to write simpler tests.


---

* [SPARK-10612](https://issues.apache.org/jira/browse/SPARK-10612) | *Major* | **Add prepare to LocalNode**

The idea is that we should separate the function call that does memory reservation (i.e. prepare) from the function call that consumes the input (e.g. open()), so all operators can be a chance to reserve memory before they are all consumed.


---

* [SPARK-10611](https://issues.apache.org/jira/browse/SPARK-10611) | *Critical* | **Configuration object thread safety issue in NewHadoopRDD**

SPARK-2546 fixed the issue for HadoopRDD, but the fix is not ported over to NewHadoopRDD. The screenshot of the stacktrace is attached, and it's very similar to what's reported in SPARK-2546.


---

* [SPARK-10599](https://issues.apache.org/jira/browse/SPARK-10599) | *Major* | **Decrease communication in BlockMatrix multiply and increase performance**

The BlockMatrix multiply sends each block to all the corresponding columns of the right BlockMatrix, even though there might not be any corresponding block to multiply with.

Some optimizations we can perform are:
 - Simulate the multiplication on the driver, and figure out which blocks actually need to be shuffled
 - Send the block once to a partition, and join inside the partition rather than sending multiple copies to the same partition


---

* [SPARK-10595](https://issues.apache.org/jira/browse/SPARK-10595) | *Minor* | **Various ML programming guide cleanups post 1.5**

Various ML guide cleanups.

\* ml-guide.md: Make it easier to access the algorithm-specific guides.
\* LDA user guide: EM often begins with useless topics, but running longer generally improves them dramatically.  E.g., 10 iterations on a Wikipedia dataset produces useless topics, but 50 iterations produces very meaningful topics.
\* mllib-feature-extraction.html#elementwiseproduct: “w” parameter should be “scalingVec”
\* Clean up Binarizer user guide a little.
\* Document in Pipeline that users should not put an instance into the Pipeline in more than 1 place.
\* spark.ml Word2Vec user guide: clean up grammar/writing
\* Chi Sq Feature Selector docs: Improve text in doc.


---

* [SPARK-10594](https://issues.apache.org/jira/browse/SPARK-10594) | *Trivial* | **ApplicationMaster "--help" references the removed "--num-executors" option**

The issue SPARK-9092 and commit [738f35\|https://github.com/apache/spark/commit/738f353988dbf02704bd63f5e35d94402c59ed79] removed the {{ApplicationMaster}} commandline argument {{--num-executors}}, but it's help message still references the [argument\|https://github.com/apache/spark/blob/738f353988dbf02704bd63f5e35d94402c59ed79/yarn/src/main/scala/org/apache/spark/deploy/yarn/ApplicationMasterArguments.scala#L108].


---

* [SPARK-10593](https://issues.apache.org/jira/browse/SPARK-10593) | *Blocker* | **sql lateral view same name gives wrong value**

This query will return wrong result:
{code}
select 
insideLayer1.json as json\_insideLayer1, 
insideLayer2.json as json\_insideLayer2 
from (select '1' id) creatives 
lateral view json\_tuple('{"layer1": {"layer2": "text inside layer 2"}}', 'layer1') insideLayer1 as json 
lateral view json\_tuple(insideLayer1.json, 'layer2') insideLayer2 as json 
{code}

It got 
{code}
( {"layer2": "text inside layer 2"},  {"layer2": "text inside layer 2"})
{code}

instead of
{code}
( {"layer2": "text inside layer 2"},  text inside layer 2)
{code}


---

* [SPARK-10589](https://issues.apache.org/jira/browse/SPARK-10589) | *Minor* | **Add defense against external site framing**

This came up as a minor point during a security audit using a common scanning tool: It's best if Spark UIs try to actively defend against certain types of frame-related vulnerabilities by setting X-Frame-Options. See https://www.owasp.org/index.php/Clickjacking\_Defense\_Cheat\_Sheet

Easy PR coming ...


---

* [SPARK-10585](https://issues.apache.org/jira/browse/SPARK-10585) | *Major* | **only copy data once when generate unsafe projection**

When we have nested struct, array or map, we will create a byte buffer for each of them, and copy data to the buffer first, then copy them to the final row buffer. We can save the first copy and directly copy data to final row buffer.


---

* [SPARK-10584](https://issues.apache.org/jira/browse/SPARK-10584) | *Minor* | **Documentation about the compatible Hive version is wrong.**

In Spark 1.5.0, Spark SQL is compatible with Hive 0.12.0 through 1.2.1 but the documentation is wrong.

Also, we cannot get the default value by `sqlContext.getConf("spark.sql.hive.metastore.version")`.


---

* [SPARK-10581](https://issues.apache.org/jira/browse/SPARK-10581) | *Minor* | **Groups are not resolved in scaladoc for org.apache.spark.sql.Column**

The Scala API documentation (scaladoc) for [org.apache.spark.sql.Column\|http://people.apache.org/~pwendell/spark-nightly/spark-master-docs/latest/api/scala/index.html#org.apache.spark.sql.Column] does not resolve groups, and they appear unresolved like {{df\_ops}}, {{expr\_ops}}, et al. instead of \_DataFrame functions.\_, \_Expression operators.\_, et al.  

BTW, [DataFrame\|http://people.apache.org/~pwendell/spark-nightly/spark-master-docs/latest/api/scala/index.html#org.apache.spark.sql.DataFrame] and other classes in the [org.apache.spark.sql\|http://people.apache.org/~pwendell/spark-nightly/spark-master-docs/latest/api/scala/index.html#org.apache.spark.sql.package] package seem fine.


---

* [SPARK-10577](https://issues.apache.org/jira/browse/SPARK-10577) | *Major* | **[PySpark] DataFrame hint for broadcast join**

As in https://issues.apache.org/jira/browse/SPARK-8300
there should by possibility to add hint for broadcast join in:
- Pyspark


---

* [SPARK-10576](https://issues.apache.org/jira/browse/SPARK-10576) | *Minor* | **Move .java files out of src/main/scala**

(I suppose I'm really asking for an opinion on this, rather than asserting it must be done, but seems worthwhile. CC [~rxin] and [~pwendell])

As pointed out on the mailing list, there are some Java files in the Scala source tree:

{code}
./bagel/src/main/scala/org/apache/spark/bagel/package-info.java
./core/src/main/scala/org/apache/spark/annotation/AlphaComponent.java
./core/src/main/scala/org/apache/spark/annotation/DeveloperApi.java
./core/src/main/scala/org/apache/spark/annotation/Experimental.java
./core/src/main/scala/org/apache/spark/annotation/package-info.java
./core/src/main/scala/org/apache/spark/annotation/Private.java
./core/src/main/scala/org/apache/spark/api/java/package-info.java
./core/src/main/scala/org/apache/spark/broadcast/package-info.java
./core/src/main/scala/org/apache/spark/executor/package-info.java
./core/src/main/scala/org/apache/spark/io/package-info.java
./core/src/main/scala/org/apache/spark/rdd/package-info.java
./core/src/main/scala/org/apache/spark/scheduler/package-info.java
./core/src/main/scala/org/apache/spark/serializer/package-info.java
./core/src/main/scala/org/apache/spark/util/package-info.java
./core/src/main/scala/org/apache/spark/util/random/package-info.java
./external/flume/src/main/scala/org/apache/spark/streaming/flume/package-info.java
./external/kafka/src/main/scala/org/apache/spark/streaming/kafka/package-info.java
./external/mqtt/src/main/scala/org/apache/spark/streaming/mqtt/package-info.java
./external/twitter/src/main/scala/org/apache/spark/streaming/twitter/package-info.java
./external/zeromq/src/main/scala/org/apache/spark/streaming/zeromq/package-info.java
./graphx/src/main/scala/org/apache/spark/graphx/impl/EdgeActiveness.java
./graphx/src/main/scala/org/apache/spark/graphx/lib/package-info.java
./graphx/src/main/scala/org/apache/spark/graphx/package-info.java
./graphx/src/main/scala/org/apache/spark/graphx/TripletFields.java
./graphx/src/main/scala/org/apache/spark/graphx/util/package-info.java
./mllib/src/main/scala/org/apache/spark/ml/attribute/package-info.java
./mllib/src/main/scala/org/apache/spark/ml/package-info.java
./mllib/src/main/scala/org/apache/spark/mllib/package-info.java
./sql/catalyst/src/main/scala/org/apache/spark/sql/types/SQLUserDefinedType.java
./sql/hive/src/main/scala/org/apache/spark/sql/hive/package-info.java
./streaming/src/main/scala/org/apache/spark/streaming/api/java/package-info.java
./streaming/src/main/scala/org/apache/spark/streaming/dstream/package-info.java
./streaming/src/main/scala/org/apache/spark/streaming/StreamingContextState.java
{code}

It happens to work since the Scala compiler plugin is handling both.

On its face, they should be in the Java source tree. I'm trying to figure out if there are good reasons they have to be in this less intuitive location.

I might try moving them just to see.


---

* [SPARK-10575](https://issues.apache.org/jira/browse/SPARK-10575) | *Minor* | **Wrap RDD.takeSample with scope**

Remove return statements in RDD.takeSample and wrap it withScope


---

* [SPARK-10573](https://issues.apache.org/jira/browse/SPARK-10573) | *Major* | **IndexToString transformSchema adds output field as DoubleType**

Reproducible example:
{code}
val stage = new IndexToString().setInputCol("input").setOutputCol("output")
val inSchema = StructType(Seq(StructField("input", DoubleType)))
val outSchema = stage.transformSchema(inSchema)
assert(outSchema("output").dataType == StringType)
{code}

The root cause seems to be that it uses {{NominalAttribute.toStructField}} which assumes {{DoubleType}}. It would probably be better to just use {{SchemaUtils.appendColumn}} and explicitly set the data type.


---

* [SPARK-10566](https://issues.apache.org/jira/browse/SPARK-10566) | *Minor* | **SnappyCompressionCodec init exception handling masks important error information**



The change to always throw an IllegalArgumentException when failing to load in SnappyCompressionCodec (CompressionCodec.scala:151) throws away the description from the exception thrown, which makes it really difficult to actually figure out what the problem is:

: java.lang.IllegalArgumentException
	at org.apache.spark.io.SnappyCompressionCodec.\<init\>(CompressionCodec.scala:151)
	at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)

Removing this try...catch I get the following error, which actually gives some information about how to fix the problem:

: java.lang.UnsatisfiedLinkError: no snappyjava in java.library.path
	at java.lang.ClassLoader.loadLibrary(ClassLoader.java:1864)
	at java.lang.Runtime.loadLibrary0(Runtime.java:870)
	at java.lang.System.loadLibrary(System.java:1122)
	at org.xerial.snappy.SnappyLoader.loadNativeLibrary(SnappyLoader.java:178)
	at org.xerial.snappy.SnappyLoader.load(SnappyLoader.java:152)


A change to initialize the IllegalArgumentException with the value of e.getMessage() would be great, as the current error without any description just leads to a lot of frustrating guesswork.


---

* [SPARK-10564](https://issues.apache.org/jira/browse/SPARK-10564) | *Critical* | **ThreadingSuite: assertions in threads don't fail the test**

In ThreadingSuite we have things like:
{code}
  test(...) {
    ...
    val threads = (1 to 5).map { i =\>
      new Thread() {
        override def run() {
          assert(sc.getLocalProperty("test") === "parent")
          sc.setLocalProperty("test", i.toString)
          assert(sc.getLocalProperty("test") === i.toString)
          sem.release()
        }
      }
    }
    ...
  }
{code}

If the asserts in the run block fail, they don't actually fail the test! This could mask real bugs.


---

* [SPARK-10563](https://issues.apache.org/jira/browse/SPARK-10563) | *Major* | **SparkContext's local properties should be cloned when inherited**

Currently, when a child thread inherits local properties from the parent thread, it gets a reference of the parent's local properties and uses them as default values.

The problem, however, is that when the parent changes the value of an existing property, the changes are reflected in the child thread! This has very confusing semantics, especially in streaming.

{code}
private val localProperties = new InheritableThreadLocal[Properties] {
  override protected def childValue(parent: Properties): Properties = new Properties(parent)
  override protected def initialValue(): Properties = new Properties()
}
{code}

Instead, we should make a clone of the parent properties rather than passing in a mutable reference.


---

* [SPARK-10556](https://issues.apache.org/jira/browse/SPARK-10556) | *Minor* | **SBT build explicitly sets Scala version, which can conflict with SBT's own scala version**

project/plugins.sbt explicitly sets scalaVersion to 2.10.4. This can cause issues when using a version of sbt that is compiled against a different version of Scala (for example sbt 0.13.9 uses 2.10.5). Removing this explicit setting will cause build files to be compiled and run against the same version of Scala that sbt is compiled against.

Note that this only applies to the project build files (items in project/), it is distinct from the version of Scala we target for the actual spark compilation.


---

* [SPARK-10554](https://issues.apache.org/jira/browse/SPARK-10554) | *Minor* | **Potential NPE with ShutdownHook**

Originally posted in user mailing list [here\|http://apache-spark-user-list.1001560.n3.nabble.com/Potential-NPE-while-exiting-spark-shell-tt24523.html]

I'm currently using Spark 1.3.0 on yarn cluster deployed through CDH5.4. My cluster does not have a 'default' queue, and launching 'spark-shell' submits an yarn application that gets killed immediately because queue does not exist. However, the spark-shell session is still in progress after throwing a bunch of errors while creating sql context. Upon submitting an 'exit' command, there appears to be a NPE from DiskBlockManager with the following stack trace 

{code}
ERROR Utils: Uncaught exception in thread delete Spark local dirs 
java.lang.NullPointerException 
        at org.apache.spark.storage.DiskBlockManager.org$apache$spark$storage$DiskBlockManager$$doStop(DiskBlockManager.scala:161) 
        at org.apache.spark.storage.DiskBlockManager$$anon$1$$anonfun$run$1.apply$mcV$sp(DiskBlockManager.scala:141) 
        at org.apache.spark.storage.DiskBlockManager$$anon$1$$anonfun$run$1.apply(DiskBlockManager.scala:139) 
        at org.apache.spark.storage.DiskBlockManager$$anon$1$$anonfun$run$1.apply(DiskBlockManager.scala:139) 
        at org.apache.spark.util.Utils$.logUncaughtExceptions(Utils.scala:1617) 
        at org.apache.spark.storage.DiskBlockManager$$anon$1.run(DiskBlockManager.scala:139) 
Exception in thread "delete Spark local dirs" java.lang.NullPointerException 
        at org.apache.spark.storage.DiskBlockManager.org$apache$spark$storage$DiskBlockManager$$doStop(DiskBlockManager.scala:161) 
        at org.apache.spark.storage.DiskBlockManager$$anon$1$$anonfun$run$1.apply$mcV$sp(DiskBlockManager.scala:141) 
        at org.apache.spark.storage.DiskBlockManager$$anon$1$$anonfun$run$1.apply(DiskBlockManager.scala:139) 
        at org.apache.spark.storage.DiskBlockManager$$anon$1$$anonfun$run$1.apply(DiskBlockManager.scala:139) 
        at org.apache.spark.util.Utils$.logUncaughtExceptions(Utils.scala:1617) 
        at org.apache.spark.storage.DiskBlockManager$$anon$1.run(DiskBlockManager.scala:139) 
{code}

I believe the problem appears to be surfacing from a shutdown hook that's tries to cleanup local directories. In this specific case because the yarn application was not submitted successfully, the block manager was not registered; as a result it does not have a valid blockManagerId as seen here 

https://github.com/apache/spark/blob/v1.3.0/core/src/main/scala/org/apache/spark/storage/DiskBlockManager.scala#L161

Has anyone faced this issue before? Could this be a problem with the way shutdown hook behaves currently? 

Note: I referenced source from apache spark repo than cloudera.


---

* [SPARK-10549](https://issues.apache.org/jira/browse/SPARK-10549) | *Major* | **scala 2.11 spark on yarn with security - Repl doesn't work**

Trying to run spark on secure yarn built with scala 2.11 results in failure when trying to launch the spark shell.

 ./bin/spark-shell --master yarn-client 

Exception in thread "main" java.lang.ExceptionInInitializerError
        at org.apache.spark.repl.Main.main(Main.scala)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:483)
        at org.apache.spark.deploy.SparkSubmit$.org$apache$spark$deploy$SparkSubmit$$runMain(SparkSubmit.scala:672)
        at org.apache.spark.deploy.SparkSubmit$.doRunMain$1(SparkSubmit.scala:180)
        at org.apache.spark.deploy.SparkSubmit$.submit(SparkSubmit.scala:205)
        at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:120)
        at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)
Caused by: java.lang.Exception: Error: a secret key must be specified via the spark.authenticate.secret config
        at org.apache.spark.SecurityManager.generateSecretKey(SecurityManager.scala:395)
        at org.apache.spark.SecurityManager.\<init\>(SecurityManager.scala:218)
        at org.apache.spark.repl.Main$.\<init\>(Main.scala:38)
        at org.apache.spark.repl.Main$.\<clinit\>(Main.scala)


The reason is because it create the SecurityManager before is sets the SPARK\_YARN\_MODE to true.


---

* [SPARK-10548](https://issues.apache.org/jira/browse/SPARK-10548) | *Blocker* | **Concurrent execution in SQL does not work**

From the mailing list:
{code}
future { df1.count() } 
future { df2.count() } 

java.lang.IllegalArgumentException: spark.sql.execution.id is already set 
        at org.apache.spark.sql.execution.SQLExecution$.withNewExecutionId(SQLExecution.scala:87) 
        at org.apache.spark.sql.DataFrame.withNewExecutionId(DataFrame.scala:1904) 
        at org.apache.spark.sql.DataFrame.collect(DataFrame.scala:1385) 
{code}

=== edit ===

Simple reproduction:
{code}
(1 to 100).par.foreach { \_ =\>
  sc.parallelize(1 to 5).map { i =\> (i, i) }.toDF("a", "b").count()
}
{code}


---

* [SPARK-10547](https://issues.apache.org/jira/browse/SPARK-10547) | *Minor* | **Streamline / improve style of Java API tests**

I've wanted to touch up the style of the Java API tests. We've fixed some issues recently but there are still some common issues in the code:

- Unneeded generic types
- Unneeded exception declaration
- Unnecessary local vars
- Assert args in wrong order

It's not a big issue, but, PR coming...


---

* [SPARK-10546](https://issues.apache.org/jira/browse/SPARK-10546) | *Trivial* | **Check partitionId's range in ExternalSorter#spill()**

See this thread for background:
http://search-hadoop.com/m/q3RTt0rWvIkHAE81

We should check the range of partition Id and provide meaningful message through exception.

Alternatively, we can use abs() and modulo to force the partition Id into legitimate range. However, expectation is that user should correct the logic error in his / her code.


---

* [SPARK-10543](https://issues.apache.org/jira/browse/SPARK-10543) | *Minor* | **Peak Execution Memory Quantile should be Per-task Basis**

Currently the Peak Execution Memory quantiles seem to be cumulative rather than per task basis. For example, I have seen a value of 2TB in one of my jobs on the quantile metric but each individual task shows less than 1GB on the bottom table.

[~andrewor14] In your PR https://github.com/apache/spark/pull/7770, the screenshot shows the Max Peak Execution Memory of 792.5KB while in the bottom it's about 50KB per task (unless your workload is skewed)

The fix seems straightforward that we use the `update` rather than `value` from the accumulable. I'm happy to provide a PR if people agree this is the right behavior.


---

* [SPARK-10542](https://issues.apache.org/jira/browse/SPARK-10542) | *Critical* | **The  PySpark 1.5 closure serializer can't serialize a namedtuple instance.**

Code to Reproduce Bug:
{code}
from collections import namedtuple
PowerPlantRow=namedtuple("PowerPlantRow", ["AT", "V", "AP", "RH", "PE"])
rdd=sc.parallelize([1]).map(lambda x: PowerPlantRow(1.0, 2.0, 3.0, 4.0, 5.0))
rdd.count()
{code}

Error message on Spark 1.5:
{code}
AttributeError: 'builtin\_function\_or\_method' object has no attribute '\_\_code\_\_'
---------------------------------------------------------------------------
AttributeError                            Traceback (most recent call last)
\<ipython-input-5-59448e31019f\> in \<module\>()
      2 PowerPlantRow=namedtuple("PowerPlantRow", ["AT", "V", "AP", "RH", "PE"])
      3 rdd=sc.parallelize([1]).map(lambda x: PowerPlantRow(1.0, 2.0, 3.0, 4.0, 5.0))
----\> 4 rdd.count()

/home/ubuntu/databricks/spark/python/pyspark/rdd.pyc in count(self)
   1004         3
   1005         """
-\> 1006         return self.mapPartitions(lambda i: [sum(1 for \_ in i)]).sum()
   1007 
   1008     def stats(self):

/home/ubuntu/databricks/spark/python/pyspark/rdd.pyc in sum(self)
    995         6.0
    996         """
--\> 997         return self.mapPartitions(lambda x: [sum(x)]).fold(0, operator.add)
    998 
    999     def count(self):

/home/ubuntu/databricks/spark/python/pyspark/rdd.pyc in fold(self, zeroValue, op)
    869         # zeroValue provided to each partition is unique from the one provided
    870         # to the final reduce call
--\> 871         vals = self.mapPartitions(func).collect()
    872         return reduce(op, vals, zeroValue)
    873 

/home/ubuntu/databricks/spark/python/pyspark/rdd.pyc in collect(self)
    771         """
    772         with SCCallSiteSync(self.context) as css:
--\> 773             port = self.ctx.\_jvm.PythonRDD.collectAndServe(self.\_jrdd.rdd())
    774         return list(\_load\_from\_socket(port, self.\_jrdd\_deserializer))
    775 

/home/ubuntu/databricks/spark/python/pyspark/rdd.pyc in \_jrdd(self)
   2383         command = (self.func, profiler, self.\_prev\_jrdd\_deserializer,
   2384                    self.\_jrdd\_deserializer)
-\> 2385         pickled\_cmd, bvars, env, includes = \_prepare\_for\_python\_RDD(self.ctx, command, self)
   2386         python\_rdd = self.ctx.\_jvm.PythonRDD(self.\_prev\_jrdd.rdd(),
   2387                                              bytearray(pickled\_cmd),

/home/ubuntu/databricks/spark/python/pyspark/rdd.pyc in \_prepare\_for\_python\_RDD(sc, command, obj)
   2303     # the serialized command will be compressed by broadcast
   2304     ser = CloudPickleSerializer()
-\> 2305     pickled\_command = ser.dumps(command)
   2306     if len(pickled\_command) \> (1 \<\< 20):  # 1M
   2307         # The broadcast will have same life cycle as created PythonRDD

/home/ubuntu/databricks/spark/python/pyspark/serializers.pyc in dumps(self, obj)
    425 
    426     def dumps(self, obj):
--\> 427         return cloudpickle.dumps(obj, 2)
    428 
    429 

/home/ubuntu/databricks/spark/python/pyspark/cloudpickle.pyc in dumps(obj, protocol)
    639 
    640     cp = CloudPickler(file,protocol)
--\> 641     cp.dump(obj)
    642 
    643     return file.getvalue()

/home/ubuntu/databricks/spark/python/pyspark/cloudpickle.pyc in dump(self, obj)
    105         self.inject\_addons()
    106         try:
--\> 107             return Pickler.dump(self, obj)
    108         except RuntimeError as e:
    109             if 'recursion' in e.args[0]:

/usr/lib/python2.7/pickle.pyc in dump(self, obj)
    222         if self.proto \>= 2:
    223             self.write(PROTO + chr(self.proto))
--\> 224         self.save(obj)
    225         self.write(STOP)
    226 

/usr/lib/python2.7/pickle.pyc in save(self, obj)
    284         f = self.dispatch.get(t)
    285         if f:
--\> 286             f(self, obj) # Call unbound method with explicit self
    287             return
    288 

/usr/lib/python2.7/pickle.pyc in save\_tuple(self, obj)
    560         write(MARK)
    561         for element in obj:
--\> 562             save(element)
    563 
    564         if id(obj) in memo:

/usr/lib/python2.7/pickle.pyc in save(self, obj)
    284         f = self.dispatch.get(t)
    285         if f:
--\> 286             f(self, obj) # Call unbound method with explicit self
    287             return
    288 
... skipped 23125 bytes ...
    650 
    651     dispatch[DictionaryType] = save\_dict

/usr/lib/python2.7/pickle.pyc in \_batch\_setitems(self, items)
    684                 k, v = tmp[0]
    685                 save(k)
--\> 686                 save(v)
    687                 write(SETITEM)
    688             # else tmp is empty, and we're done

/usr/lib/python2.7/pickle.pyc in save(self, obj)
    284         f = self.dispatch.get(t)
    285         if f:
--\> 286             f(self, obj) # Call unbound method with explicit self
    287             return
    288 

/home/ubuntu/databricks/spark/python/pyspark/cloudpickle.pyc in save\_global(self, obj, name, pack)
    367                     v = v.\_\_func\_\_
    368                 dd[k] = v
--\> 369             self.save(dd)
    370             self.write(pickle.TUPLE2)
    371             self.write(pickle.REDUCE)

/usr/lib/python2.7/pickle.pyc in save(self, obj)
    284         f = self.dispatch.get(t)
    285         if f:
--\> 286             f(self, obj) # Call unbound method with explicit self
    287             return
    288 

/usr/lib/python2.7/pickle.pyc in save\_dict(self, obj)
    647 
    648         self.memoize(obj)
--\> 649         self.\_batch\_setitems(obj.iteritems())
    650 
    651     dispatch[DictionaryType] = save\_dict

/usr/lib/python2.7/pickle.pyc in \_batch\_setitems(self, items)
    679                 for k, v in tmp:
    680                     save(k)
--\> 681                     save(v)
    682                 write(SETITEMS)
    683             elif n:

/usr/lib/python2.7/pickle.pyc in save(self, obj)
    284         f = self.dispatch.get(t)
    285         if f:
--\> 286             f(self, obj) # Call unbound method with explicit self
    287             return
    288 

/home/ubuntu/databricks/spark/python/pyspark/cloudpickle.pyc in save\_function(self, obj, name)
    191         if islambda(obj) or obj.\_\_code\_\_.co\_filename == '\<stdin\>' or themodule is None:
    192             #print("save global", islambda(obj), obj.\_\_code\_\_.co\_filename, modname, themodule)
--\> 193             self.save\_function\_tuple(obj)
    194             return
    195         else:

/home/ubuntu/databricks/spark/python/pyspark/cloudpickle.pyc in save\_function\_tuple(self, func)
    240         # save the rest of the func data needed by \_fill\_function
    241         save(f\_globals)
--\> 242         save(defaults)
    243         save(dct)
    244         write(pickle.TUPLE)

/usr/lib/python2.7/pickle.pyc in save(self, obj)
    284         f = self.dispatch.get(t)
    285         if f:
--\> 286             f(self, obj) # Call unbound method with explicit self
    287             return
    288 

/usr/lib/python2.7/pickle.pyc in save\_tuple(self, obj)
    546         if n \<= 3 and proto \>= 2:
    547             for element in obj:
--\> 548                 save(element)
    549             # Subtle.  Same as in the big comment below.
    550             if id(obj) in memo:

/usr/lib/python2.7/pickle.pyc in save(self, obj)
    284         f = self.dispatch.get(t)
    285         if f:
--\> 286             f(self, obj) # Call unbound method with explicit self
    287             return
    288 

/home/ubuntu/databricks/spark/python/pyspark/cloudpickle.pyc in save\_builtin\_function(self, obj)
    313         if obj.\_\_module\_\_ is "\_\_builtin\_\_":
    314             return self.save\_global(obj)
--\> 315         return self.save\_function(obj)
    316     dispatch[types.BuiltinFunctionType] = save\_builtin\_function
    317 

/home/ubuntu/databricks/spark/python/pyspark/cloudpickle.pyc in save\_function(self, obj, name)
    189         # we'll pickle the actual function object rather than simply saving a
    190         # reference (as is done in default pickler), via save\_function\_tuple.
--\> 191         if islambda(obj) or obj.\_\_code\_\_.co\_filename == '\<stdin\>' or themodule is None:
    192             #print("save global", islambda(obj), obj.\_\_code\_\_.co\_filename, modname, themodule)
    193             self.save\_function\_tuple(obj)

AttributeError: 'builtin\_function\_or\_method' object has no attribute '\_\_code\_\_'
{code}


---

* [SPARK-10540](https://issues.apache.org/jira/browse/SPARK-10540) | *Major* | **HadoopFsRelationTest's "test all data types" is flaky**

https://amplab.cs.berkeley.edu/jenkins/job/Spark-1.5-SBT/297/AMPLAB\_JENKINS\_BUILD\_PROFILE=hadoop1.0,label=spark-test/testReport/junit/org.apache.spark.sql.sources/ParquetHadoopFsRelationSuite/test\_all\_data\_types/

Probably it is caused by we sort results based on the strings of rows (https://github.com/apache/spark/blob/master/sql/core/src/test/scala/org/apache/spark/sql/QueryTest.scala#L118-L131) and the toString function of the user class used by the UDT is not overridden.


---

* [SPARK-10539](https://issues.apache.org/jira/browse/SPARK-10539) | *Blocker* | **Intersection Optimization is Wrong**

https://gist.github.com/nitay/d08cb294ccf00b80c49a


---

* [SPARK-10537](https://issues.apache.org/jira/browse/SPARK-10537) | *Major* | **Document LIBSVM data source options in public doc and minor improvements**

We should document options in public API doc. Otherwise, it is hard to find out the options without looking at the code.


---

* [SPARK-10535](https://issues.apache.org/jira/browse/SPARK-10535) | *Major* | **Support for recommendUsersForProducts and recommendProductsForUsers  in matrix factorization model for PySpark**

Scala and Java API provides recommendUsersForProducts recommendProductsForUsers methods, but PySpark MLlib API doesn't have them.


---

* [SPARK-10531](https://issues.apache.org/jira/browse/SPARK-10531) | *Minor* | **AppId is set as AppName in status rest api**

This is the result from http://localhost:4040/api/v1/applications/
{noformat}
{
   id: "Spark shell",
   name: "Spark shell",
   attempts: [
   {
       startTime: "2015-09-10T06:38:21.528GMT",
       endTime: "1969-12-31T23:59:59.999GMT",
       sparkUser: "",
       completed: false
   }]
}
{noformat}

And I have to use the appName in the rest url, such as 
{code}
http://localhost:4040/api/v1/applications/Spark%20shell/jobs
{code}

\* This issue only appears on Spark Job UI. For master UI and history UI, appId is correctly populated.


---

* [SPARK-10522](https://issues.apache.org/jira/browse/SPARK-10522) | *Major* | **Nanoseconds part of Timestamp should be positive in parquet**

If Timestamp is before unix epoch, the nanosecond part will be negative, Hive can't read that back correctly.


---

* [SPARK-10518](https://issues.apache.org/jira/browse/SPARK-10518) | *Minor* | **Update code examples in spark.ml user guide to use LIBSVM data source instead of MLUtils**

SPARK-10117 was merged, we should use LIBSVM data source in the example code in spark.ml user guide, e.g.,

{code}
val df = sqlContext.read.format("libsvm").load("path")
{code}

instead of

{code}
val df = MLUtils.loadLibSVMFile(sc, "path").toDF()
{code}

We should update the following:

{code}
ml-ensembles.md:40:val data = MLUtils.loadLibSVMFile(sc,
ml-ensembles.md:87:RDD\<LabeledPoint\> data = MLUtils.loadLibSVMFile(jsc.sc(),
ml-features.md:866:val data = MLUtils.loadLibSVMFile(sc, "data/mllib/sample\_libsvm\_data.txt").toDF()
ml-features.md:892:JavaRDD\<LabeledPoint\> rdd = MLUtils.loadLibSVMFile(sc.sc(),
ml-features.md:917:data = MLUtils.loadLibSVMFile(sc, "data/mllib/sample\_libsvm\_data.txt").toDF()
ml-features.md:940:val data = MLUtils.loadLibSVMFile(sc, "data/mllib/sample\_libsvm\_data.txt")
ml-features.md:964:  MLUtils.loadLibSVMFile(jsc.sc(), "data/mllib/sample\_libsvm\_data.txt").toJavaRDD();
ml-features.md:985:data = MLUtils.loadLibSVMFile(sc, "data/mllib/sample\_libsvm\_data.txt")
ml-features.md:1022:val data = MLUtils.loadLibSVMFile(sc, "data/mllib/sample\_libsvm\_data.txt")
ml-features.md:1047:  MLUtils.loadLibSVMFile(jsc.sc(), "data/mllib/sample\_libsvm\_data.txt").toJavaRDD();
ml-features.md:1068:data = MLUtils.loadLibSVMFile(sc, "data/mllib/sample\_libsvm\_data.txt")
ml-linear-methods.md:44:val training = MLUtils.loadLibSVMFile(sc, "data/mllib/sample\_libsvm\_data.txt").toDF()
ml-linear-methods.md:84:    DataFrame training = sql.createDataFrame(MLUtils.loadLibSVMFile(sc, path).toJavaRDD(), LabeledPoint.class);
ml-linear-methods.md:110:training = MLUtils.loadLibSVMFile(sc, "data/mllib/sample\_libsvm\_data.txt").toDF()
{code}


---

* [SPARK-10516](https://issues.apache.org/jira/browse/SPARK-10516) | *Trivial* | **Add values as a property to DenseVector in PySpark**

We use `values` in Scala but `array` in PySpark. We should add `values` as a property to match Scala implementation.


---

* [SPARK-10514](https://issues.apache.org/jira/browse/SPARK-10514) | *Major* | **Minimum ratio of registered resources [ spark.scheduler.minRegisteredResourcesRatio] is not enabled for Mesos Coarse Grained mode**

"spark.scheduler.minRegisteredResourcesRatio" configuration parameter is not effecting the Mesos Coarse Grained mode. This is because the scheduler is not overriding the "sufficientResourcesRegistered" function which is true by default.


---

* [SPARK-10511](https://issues.apache.org/jira/browse/SPARK-10511) | *Blocker* | **Source releases should not include maven jars**

I noticed our source jars seemed really big for 1.5.0. At least one contributing factor is that, likely due to some change in the release script, the maven jars are being bundled in with the source code in our build directory. This runs afoul of the ASF policy on binaries in source releases - we should fix it in 1.5.1.

The issue (I think) is that we might invoke maven to compute the version between when we checkout Spark from github and when we package the source file. I think it could be fixed by simply clearing out the build/ directory after that statement runs.


---

* [SPARK-10497](https://issues.apache.org/jira/browse/SPARK-10497) | *Minor* | **Release utils does not work with new version of jira-python library**

Location of JIRAError has moved between old and new versions of python-jira package.


---

* [SPARK-10495](https://issues.apache.org/jira/browse/SPARK-10495) | *Blocker* | **For json data source, date values are saved as int strings**

{code}
val df = Seq((1, java.sql.Date.valueOf("1900-01-01"))).toDF("i", "j")
df.write.format("json").save("/tmp/testJson")

sc.textFile("/tmp/testJson").collect.foreach(println)

{"i":1,"j":"-25567"}
{code}


---

* [SPARK-10494](https://issues.apache.org/jira/browse/SPARK-10494) | *Critical* | **Multiple Python UDFs together with aggregation or sort merge join may cause OOM (failed to acquire memory)**

The RDD cache for Python UDF is removed in 1.4, then N Python UDFs in one query stage could end up evaluate upstream (SparkPlan) 2^N times.

In 1.5, If there is aggregation or sort merge join in upstream SparkPlan, they will cause OOM (failed to acquire memory).


---

* [SPARK-10491](https://issues.apache.org/jira/browse/SPARK-10491) | *Major* | **move RowMatrix.dspr to BLAS**

We implemented dspr with sparse vector support in `RowMatrix`. This method is also used in WeightedLeastSquares and other places. It would be useful to move it to `linalg.BLAS`.


---

* [SPARK-10490](https://issues.apache.org/jira/browse/SPARK-10490) | *Major* | **Consolidate the Cholesky solvers in WeightedLeastSquares and ALS**

There are two Cholesky solvers in WeightedLeastSquares and ALS, we should merge them into one.


---

* [SPARK-10481](https://issues.apache.org/jira/browse/SPARK-10481) | *Minor* | **SPARK\_PREPEND\_CLASSES make spark-yarn related jar could not be found**

It happens when SPARK\_PREPEND\_CLASSES is set and run spark on yarn.
If SPARK\_PREPEND\_CLASSES, spark-yarn related jar won't be found. Because the org.apache.spark.deploy.Client is detected as individual class rather class in jar. 

{code}
15/09/08 08:57:10 ERROR SparkContext: Error initializing SparkContext.
java.util.NoSuchElementException: head of empty list
	at scala.collection.immutable.Nil$.head(List.scala:337)
	at scala.collection.immutable.Nil$.head(List.scala:334)
	at org.apache.spark.deploy.yarn.Client$.org$apache$spark$deploy$yarn$Client$$sparkJar(Client.scala:1048)
	at org.apache.spark.deploy.yarn.Client$.populateClasspath(Client.scala:1159)
	at org.apache.spark.deploy.yarn.Client.setupLaunchEnv(Client.scala:534)
	at org.apache.spark.deploy.yarn.Client.createContainerLaunchContext(Client.scala:645)
	at org.apache.spark.deploy.yarn.Client.submitApplication(Client.scala:119)
	at org.apache.spark.scheduler.cluster.YarnClientSchedulerBackend.start(YarnClientSchedulerBackend.scala:56)
	at org.apache.spark.scheduler.TaskSchedulerImpl.start(TaskSchedulerImpl.scala:144)
	at org.apache.spark.SparkContext.\<init\>(SparkContext.scala:514)
	at com.zjffdu.tutorial.spark.WordCount$.main(WordCount.scala:24)
	at com.zjffdu.tutorial.spark.WordCount.main(WordCount.scala)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.spark.deploy.SparkSubmit$.org$apache$spark$deploy$SparkSubmit$$runMain(SparkSubmit.scala:680)
	at org.apache.spark.deploy.SparkSubmit$.doRunMain$1(SparkSubmit.scala:180)
	at org.apache.spark.deploy.SparkSubmit$.submit(SparkSubmit.scala:205)
	at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:120)
	at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)

{code}


---

* [SPARK-10480](https://issues.apache.org/jira/browse/SPARK-10480) | *Minor* | **ML.LinearRegressionModel.copy() can not use argument "extra"**

ML.LinearRegressionModel.copy() ignored argument extra, it will not take effect when users setting this parameter.


---

* [SPARK-10479](https://issues.apache.org/jira/browse/SPARK-10479) | *Minor* | **LogisticRegression copy should copy model summary if available**

SPARK-9112 adds LogisticRegressionSummary but [does not copy the model summary if available\|https://github.com/apache/spark/blob/master/mllib/src/main/scala/org/apache/spark/ml/classification/LogisticRegression.scala#L471]

We should add behavior similar to that in [LinearRegression.copy\|https://github.com/apache/spark/blob/master/mllib/src/main/scala/org/apache/spark/ml/regression/LinearRegression.scala#L314]


---

* [SPARK-10474](https://issues.apache.org/jira/browse/SPARK-10474) | *Blocker* | **TungstenAggregation cannot acquire memory for pointer array after switching to sort-based**

In aggregation case, a  Lost task happened with below error.

{code}
 java.io.IOException: Could not acquire 65536 bytes of memory
        at org.apache.spark.util.collection.unsafe.sort.UnsafeExternalSorter.initializeForWriting(UnsafeExternalSorter.java:169)
        at org.apache.spark.util.collection.unsafe.sort.UnsafeExternalSorter.spill(UnsafeExternalSorter.java:220)
        at org.apache.spark.sql.execution.UnsafeKVExternalSorter.\<init\>(UnsafeKVExternalSorter.java:126)
        at org.apache.spark.sql.execution.UnsafeFixedWidthAggregationMap.destructAndCreateExternalSorter(UnsafeFixedWidthAggregationMap.java:257)
        at org.apache.spark.sql.execution.aggregate.TungstenAggregationIterator.switchToSortBasedAggregation(TungstenAggregationIterator.scala:435)
        at org.apache.spark.sql.execution.aggregate.TungstenAggregationIterator.processInputs(TungstenAggregationIterator.scala:379)
        at org.apache.spark.sql.execution.aggregate.TungstenAggregationIterator.start(TungstenAggregationIterator.scala:622)
        at org.apache.spark.sql.execution.aggregate.TungstenAggregate$$anonfun$doExecute$1.org$apache$spark$sql$execution$aggregate$TungstenAggregate$$anonfun$$executePartition$1(TungstenAggregate.scala:110)
        at org.apache.spark.sql.execution.aggregate.TungstenAggregate$$anonfun$doExecute$1$$anonfun$2.apply(TungstenAggregate.scala:119)
        at org.apache.spark.sql.execution.aggregate.TungstenAggregate$$anonfun$doExecute$1$$anonfun$2.apply(TungstenAggregate.scala:119)
        at org.apache.spark.rdd.MapPartitionsWithPreparationRDD.compute(MapPartitionsWithPreparationRDD.scala:64)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:297)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:264)
        at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:38)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:297)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:264)
        at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:73)
        at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:41)
        at org.apache.spark.scheduler.Task.run(Task.scala:88)
        at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:214)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:745)
{code}

Key SQL Query
{code:sql}
INSERT INTO TABLE test\_table
SELECT
  ss.ss\_customer\_sk AS cid,
  count(CASE WHEN i.i\_class\_id=1  THEN 1 ELSE NULL END) AS id1,
  count(CASE WHEN i.i\_class\_id=3  THEN 1 ELSE NULL END) AS id3,
  count(CASE WHEN i.i\_class\_id=5  THEN 1 ELSE NULL END) AS id5,
  count(CASE WHEN i.i\_class\_id=7  THEN 1 ELSE NULL END) AS id7,
  count(CASE WHEN i.i\_class\_id=9  THEN 1 ELSE NULL END) AS id9,
  count(CASE WHEN i.i\_class\_id=11 THEN 1 ELSE NULL END) AS id11,
  count(CASE WHEN i.i\_class\_id=13 THEN 1 ELSE NULL END) AS id13,
  count(CASE WHEN i.i\_class\_id=15 THEN 1 ELSE NULL END) AS id15,
  count(CASE WHEN i.i\_class\_id=2  THEN 1 ELSE NULL END) AS id2,
  count(CASE WHEN i.i\_class\_id=4  THEN 1 ELSE NULL END) AS id4,
  count(CASE WHEN i.i\_class\_id=6  THEN 1 ELSE NULL END) AS id6,
  count(CASE WHEN i.i\_class\_id=8  THEN 1 ELSE NULL END) AS id8,
  count(CASE WHEN i.i\_class\_id=10 THEN 1 ELSE NULL END) AS id10,
  count(CASE WHEN i.i\_class\_id=14 THEN 1 ELSE NULL END) AS id14,
  count(CASE WHEN i.i\_class\_id=16 THEN 1 ELSE NULL END) AS id16
FROM store\_sales ss
INNER JOIN item i ON ss.ss\_item\_sk = i.i\_item\_sk
WHERE i.i\_category IN ('Books')
AND ss.ss\_customer\_sk IS NOT NULL
GROUP BY ss.ss\_customer\_sk
HAVING count(ss.ss\_item\_sk) \> 5
{code}

Note:
the store\_sales is a big fact table and item is a small dimension table.


---

* [SPARK-10472](https://issues.apache.org/jira/browse/SPARK-10472) | *Minor* | **UserDefinedType.typeName gives wrong result**

{{DataType.typeName}} is defined as:
{code}
  /\*\* Name of the type used in JSON serialization. \*/
  def typeName: String = this.getClass.getSimpleName.stripSuffix("$").dropRight(4).toLowerCase
{code}
The {{dropRight(4)}} is used to drop the {{Type}} suffix. However, UDTs may not have such suffix. For example, {{NestedStructUDT.typeName}} gives {{nestedstruc}}.


---

* [SPARK-10470](https://issues.apache.org/jira/browse/SPARK-10470) | *Major* | **ml.IsotonicRegressionModel.copy did not set parent**

ml.IsotonicRegressionModel.copy did not set parent


---

* [SPARK-10469](https://issues.apache.org/jira/browse/SPARK-10469) | *Minor* | **Document tungsten-sort**

Add documentation for tungsten-sort.
From the mailing list "I saw a new "spark.shuffle.manager=tungsten-sort" implemented in
https://issues.apache.org/jira/browse/SPARK-7081, but it can't be found its
corresponding description in
http://people.apache.org/~pwendell/spark-releases/spark-1.5.0-rc3-docs/configuration.html(Currenlty
there are only 'sort' and 'hash' two options)."


---

* [SPARK-10468](https://issues.apache.org/jira/browse/SPARK-10468) | *Minor* | **Verify schema before Dataframe select API call**

load method of GaussianMixtureModel and Word2VecModel  should verify the  schema before  dataframe.select(...) method.
Currently , after dataframe.select(...) call, schema is verified. Need to change order of method calls


---

* [SPARK-10466](https://issues.apache.org/jira/browse/SPARK-10466) | *Blocker* | **UnsafeRow exception in Sort-Based Shuffle with data spill**

In sort-based shuffle, if we have data spill, it will cause assert exception, the follow code can reproduce that
{code}
withSparkConf(("spark.shuffle.sort.bypassMergeThreshold", "2")) {
      withSQLConf(("spark.sql.autoBroadcastJoinThreshold", "0")) {
        withTempTable("mytemp") {
          sparkContext.parallelize(1 to 10000000, 3).map(i =\> (i, i)).toDF("key", "value").registerTempTable("mytemp")
          sql("select key, value as v1 from mytemp where key \> 1").registerTempTable("l")
          sql("select key, value as v2 from mytemp where key \> 3").registerTempTable("r")

          val df3 = sql("select v1, v2 from l left join r on l.key=r.key")
          df3.count()
        }
      }
    }
{code}
{code}
java.lang.AssertionError: assertion failed
	at scala.Predef$.assert(Predef.scala:165)
	at org.apache.spark.sql.execution.UnsafeRowSerializerInstance$$anon$2.writeKey(UnsafeRowSerializer.scala:75)
	at org.apache.spark.storage.DiskBlockObjectWriter.write(DiskBlockObjectWriter.scala:180)
	at org.apache.spark.util.collection.ExternalSorter$$anonfun$writePartitionedFile$2$$anonfun$apply$1.apply(ExternalSorter.scala:688)
	at org.apache.spark.util.collection.ExternalSorter$$anonfun$writePartitionedFile$2$$anonfun$apply$1.apply(ExternalSorter.scala:687)
	at scala.collection.Iterator$class.foreach(Iterator.scala:727)
	at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
	at org.apache.spark.util.collection.ExternalSorter$$anonfun$writePartitionedFile$2.apply(ExternalSorter.scala:687)
	at org.apache.spark.util.collection.ExternalSorter$$anonfun$writePartitionedFile$2.apply(ExternalSorter.scala:683)
	at scala.collection.Iterator$class.foreach(Iterator.scala:727)
	at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
	at org.apache.spark.util.collection.ExternalSorter.writePartitionedFile(ExternalSorter.scala:683)
	at org.apache.spark.shuffle.sort.SortShuffleWriter.write(SortShuffleWriter.scala:80)
	at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:73)
	at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:41)
	at org.apache.spark.scheduler.Task.run(Task.scala:88)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:214)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1110)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:603)
	at java.lang.Thread.run(Thread.java:722)
17:32:06.172 WARN org.apache.spark.scheduler.TaskSetManager: Lost task 1.0 in stage 1.0 (TID 4, localhost): java.lang.AssertionError: assertion failed
	at scala.Predef$.assert(Predef.scala:165)
	at org.apache.spark.sql.execution.UnsafeRowSerializerInstance$$anon$2.writeKey(UnsafeRowSerializer.scala:75)
	at org.apache.spark.storage.DiskBlockObjectWriter.write(DiskBlockObjectWriter.scala:180)
	at org.apache.spark.util.collection.ExternalSorter$$anonfun$writePartitionedFile$2$$anonfun$apply$1.apply(ExternalSorter.scala:688)
	at org.apache.spark.util.collection.ExternalSorter$$anonfun$writePartitionedFile$2$$anonfun$apply$1.apply(ExternalSorter.scala:687)
	at scala.collection.Iterator$class.foreach(Iterator.scala:727)
	at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
	at org.apache.spark.util.collection.ExternalSorter$$anonfun$writePartitionedFile$2.apply(ExternalSorter.scala:687)
	at org.apache.spark.util.collection.ExternalSorter$$anonfun$writePartitionedFile$2.apply(ExternalSorter.scala:683)
	at scala.collection.Iterator$class.foreach(Iterator.scala:727)
	at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
	at org.apache.spark.util.collection.ExternalSorter.writePartitionedFile(ExternalSorter.scala:683)
	at org.apache.spark.shuffle.sort.SortShuffleWriter.write(SortShuffleWriter.scala:80)
	at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:73)
	at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:41)
	at org.apache.spark.scheduler.Task.run(Task.scala:88)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:214)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1110)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:603)
	at java.lang.Thread.run(Thread.java:722)
{code}


---

* [SPARK-10464](https://issues.apache.org/jira/browse/SPARK-10464) | *Major* | **Add WeibullGenerator for RandomDataGenerator**

SPARK-8518 need to generate random data which follow Weibull distribution.


---

* [SPARK-10463](https://issues.apache.org/jira/browse/SPARK-10463) | *Trivial* | **remove PromotePrecision during optimization**

This node is not necessary after HiveTypeCoercion.


---

* [SPARK-10459](https://issues.apache.org/jira/browse/SPARK-10459) | *Major* | **PythonUDF could process UnsafeRow**

Currently, There will be ConvertToSafe for PythonUDF, that's not needed actually.


---

* [SPARK-10458](https://issues.apache.org/jira/browse/SPARK-10458) | *Minor* | **Would like to know if a given Spark Context is stopped or currently stopping**

I ran into a case where a thread stopped a Spark Context, specifically when I hit the "kill" link from the Spark standalone UI. There was no real way for another thread to know that the context had stopped and thus should have handled that accordingly.

Checking that the SparkEnv is null is one way, but that doesn't handle the case where the context is in the midst of stopping, and stopping the context may actually not be instantaneous - in my case for some reason the DAGScheduler was taking a non-trivial amount of time to stop.

Implementation wise I'm more or less requesting the boolean value returned from SparkContext.stopped.get() to be visible in some way. As long as we return the value and not the Atomic Boolean itself (we wouldn't want anyone to be setting this, after all!) it would help client applications check the context's liveliness.


---

* [SPARK-10454](https://issues.apache.org/jira/browse/SPARK-10454) | *Critical* | **Flaky test: o.a.s.scheduler.DAGSchedulerSuite.late fetch failures don't cause multiple concurrent attempts for the same map stage**

test case fails intermittently in Jenkins.

For eg, see the following builds-
https://amplab.cs.berkeley.edu/jenkins/job/SparkPullRequestBuilder/41991/
https://amplab.cs.berkeley.edu/jenkins/job/SparkPullRequestBuilder/41999/


---

* [SPARK-10451](https://issues.apache.org/jira/browse/SPARK-10451) | *Minor* | **Prevent unnecessary serializations in InMemoryColumnarTableScan**

In InMemorycolumnarTableScan, seriliazation of certain fields like buildFilter, InMemoryRelation etc can be avoided during task execution by carefully managing the clsoure of mapPartitions.


---

* [SPARK-10450](https://issues.apache.org/jira/browse/SPARK-10450) | *Minor* | **Minor SQL style, format, typo, readability fixes**

This JIRA isn't exactly tied to one particular patch. Like SPARK-10003 it's more of a continuous process.


---

* [SPARK-10449](https://issues.apache.org/jira/browse/SPARK-10449) | *Major* | **StructType.merge shouldn't merge DecimalTypes with different precisions and/or scales**

Schema merging should only handle struct fields. But currently we also reconcile decimal precision and scale information.


---

* [SPARK-10447](https://issues.apache.org/jira/browse/SPARK-10447) | *Major* | **Upgrade pyspark to use py4j 0.9**

This was recently released, and it has many improvements, especially the following:

{quote}
Python side: IDEs and interactive interpreters such as IPython can now get help text/autocompletion for Java classes, objects, and members. This makes Py4J an ideal tool to explore complex Java APIs (e.g., the Eclipse API). Thanks to @jonahkichwacoders
{quote}

Normally we wrap all the APIs in spark, but for the ones that aren't, this would make it easier to offroad by using the java proxy objects.


---

* [SPARK-10446](https://issues.apache.org/jira/browse/SPARK-10446) | *Major* | **Support to specify join type when calling join with usingColumns**

Currently the method join(right: DataFrame, usingColumns: Seq[String]) only supports inner join. It is more convenient to have it support other join types.


---

* [SPARK-10443](https://issues.apache.org/jira/browse/SPARK-10443) | *Major* | **Refactor SortMergeOuterJoin to reduce duplication**

As of the writing of this message LeftOuterIterator and RightOuterIterator are symmetrically identical. If someone makes a change in one but forgets to do the same thing in the other we'll end up with inconsistent behavior.


---

* [SPARK-10437](https://issues.apache.org/jira/browse/SPARK-10437) | *Major* | **Support aggregation expressions in Order By**

Followup on SPARK-6583

The following still fails. 

{code}
val df = sqlContext.read.json("examples/src/main/resources/people.json")
df.registerTempTable("t")
val df2 = sqlContext.sql("select age, count(\*) from t group by age order by count(\*)")
df2.show()
{code}

{code:title=StackTrace}
Caused by: org.apache.spark.sql.catalyst.errors.package$TreeNodeException: No function to evaluate expression. type: Count, tree: COUNT(1)
	at org.apache.spark.sql.catalyst.expressions.AggregateExpression.eval(aggregates.scala:41)
	at org.apache.spark.sql.catalyst.expressions.RowOrdering.compare(rows.scala:219)
{code}

In 1.4 the issue seemed to be BindReferences.bindReference didn't handle this case.
Haven't looked at 1.5 code, but don't see a change to bindReference in this patch.


---

* [SPARK-10435](https://issues.apache.org/jira/browse/SPARK-10435) | *Major* | **SparkSubmit should fail fast for Mesos cluster mode with R**

Pretty sure Mesos cluster mode with R is not supported yet. The current behavior is undefined. Instead we should just fail fast with a clear error message.


---

* [SPARK-10434](https://issues.apache.org/jira/browse/SPARK-10434) | *Minor* | **Parquet compatibility with 1.4 is broken when writing arrays that may contain nulls**

When writing arrays that may contain nulls, for example:
{noformat}
StructType(
  StructField(
    "f",
    ArrayType(IntegerType, containsNull = true),
    nullable = false))
{noformat}
Spark 1.4 uses the following schema:
{noformat}
message m {
  required group f (LIST) {
    repeated group bag {
      optional int32 array;
    }
  }
}
{noformat}
This behavior is a hybrid of parquet-avro and parquet-hive: the 3-level structure and repeated group name "bag" are borrowed from parquet-hive, while the innermost element field name "array" is borrowed from parquet-avro.

However, in Spark 1.5, I failed to notice the latter fact and used a schema in purely parquet-hive flavor, namely:
{noformat}
message m {
  required group f (LIST) {
    repeated group bag {
      optional int32 array\_element;
    }
  }
}
{noformat}
One of the direct consequence is that, Parquet files containing such array fields written by Spark 1.5 can't be read by Spark 1.4 (all array elements become null).

To fix this issue, the name of the innermost field should be changed back to "array".  Notice that this fix doesn't affect interoperability with Hive (saving Parquet files using {{saveAsTable()}} and then read them using Hive).


---

* [SPARK-10432](https://issues.apache.org/jira/browse/SPARK-10432) | *Minor* | **spark.port.maxRetries documentation is unclear**

The documentation for spark.port.maxRetries says:

spark.port.maxRetries	16	Default maximum number of retries when binding to a port before giving up.

But what really happens when the port for that service is not 0 is:

   \* Each subsequent attempt uses 1 + the port used in the previous attempt (unless the port is 0).


---

* [SPARK-10431](https://issues.apache.org/jira/browse/SPARK-10431) | *Critical* | **Flaky test: o.a.s.metrics.InputOutputMetricsSuite - input metrics with cache and coalesce**

I sometimes get test failures such as:

- input metrics with cache and coalesce \*\*\* FAILED \*\*\*
  5994472 did not equal 6044472 (InputOutputMetricsSuite.scala:101)

Tracking this down by adding some debug it seems this is a timing issue in the test.

test("input metrics with cache and coalesce") {
    // prime the cache manager
    val rdd = sc.textFile(tmpFilePath, 4).cache()
    rdd.collect()     // \<== #1

    val bytesRead = runAndReturnBytesRead {      // \<== #2
      rdd.count()
    }
    val bytesRead2 = runAndReturnBytesRead {
      rdd.coalesce(4).count()
    }

    // for count and coelesce, the same bytes should be read.
    assert(bytesRead != 0)
    assert(bytesRead2 == bytesRead) // fails
  }

What is happening is that the runAndReturnBytesRead (#2) function adds a SparkListener to monitor TaskEnd events to total the bytes read from eg the rdd.count()

In the case where this fails the listener receives a TaskEnd event from earlier tasks (eg #1) and this mucks up the totalling. This happens because the asynchronous thread processing the event queue and notifying the listeners has not processed one of the taskEnd events before the new listener is added so it also receives that event.

There is a simple fix to the test to wait for the event queue to be empty before adding the new listener and I will submit a pull request for that.

I also notice that a lot of the tests add a listener and as there is no removeSparkListener api the number of listeners on the context builds up during the running of the suite. This is probably why I see this issue running on slow machines.

A wider question may be: should a listener receive events that occurred before it was added?


---

* [SPARK-10430](https://issues.apache.org/jira/browse/SPARK-10430) | *Minor* | **AccumulableInfo and RDDOperationScope violates hashCode + equals contract**

hashCode implementation is missing in classes AccumulableInfo and RDDOperationScope which are overriding equals methods


---

* [SPARK-10421](https://issues.apache.org/jira/browse/SPARK-10421) | *Minor* | **tachyon dependency can leak different curator artifact versions**

tachyon-client depends on an older version of curator; core/pom.xml excludes certain dependencies, but misses at least one (org.apache.curator:curator-framework), which, depending on the maven version being used, might leak into the classpath and override the version of curator-framework pulled transitively from other dependencies. Sadness ensues.


---

* [SPARK-10419](https://issues.apache.org/jira/browse/SPARK-10419) | *Minor* | **Add JDBC dialect for Microsoft SQL Server**

Running JDBC connections against Microsoft SQL Server database tables, when a table contains a datetimeoffset column type, the following error is received:

{code}
sqlContext.read.jdbc("jdbc:sqlserver://127.0.0.1:1433;DatabaseName=testdb", "sampletable", prop)
java.sql.SQLException: Unsupported type -155
        at org.apache.spark.sql.jdbc.JDBCRDD$.org$apache$spark$sql$jdbc$JDBCRDD$$getCatalystType(JDBCRDD.scala:100)
        at org.apache.spark.sql.jdbc.JDBCRDD$$anonfun$1.apply(JDBCRDD.scala:137)
        at org.apache.spark.sql.jdbc.JDBCRDD$$anonfun$1.apply(JDBCRDD.scala:137)
        at scala.Option.getOrElse(Option.scala:120)
        at org.apache.spark.sql.jdbc.JDBCRDD$.resolveTable(JDBCRDD.scala:136)
        at org.apache.spark.sql.jdbc.JDBCRelation.\<init\>(JDBCRelation.scala:128)
        at org.apache.spark.sql.DataFrameReader.jdbc(DataFrameReader.scala:200)
        at org.apache.spark.sql.DataFrameReader.jdbc(DataFrameReader.scala:130)
{code}

Based on the JdbcDialect code for DB2 and the Microsoft SQL Server documentation, we should probably treat datetimeoffset types as Strings 

https://technet.microsoft.com/en-us/library/bb630289%28v=sql.105%29.aspx

We've created a small addition to JdbcDialects.scala to do this conversion, I'll create a pull request for it.


---

* [SPARK-10417](https://issues.apache.org/jira/browse/SPARK-10417) | *Minor* | **Iterating through Column results in infinite loop**

Iterating through a \_Column\_ object results in an infinite loop.

{code}
df = sqlContext.jsonRDD(sc.parallelize(['{"name": "El Magnifico"}']))
for i in df["name"]: print i
{code}

Result:
{code}
Column\<name[0]\>
Column\<name[1]\>
Column\<name[2]\>
Column\<name[3]\>
...
{code}


---

* [SPARK-10415](https://issues.apache.org/jira/browse/SPARK-10415) | *Minor* | **Enhance Navigation Sidebar in PySpark API**

To make it easier to browse packages in the PySpark API documentation it would be useful to expand the navigation sidebar to include more details:

\* Classes
\* Functions
\* Tags to highlight experimental features

Currently the sidebar only displays modules / submodules which makes it hard to get a feel for the overall structure + functionality of the PySpark API. Adding the extra entries makes it simpler to understand what each module does and also makes navigation to individual classes / functions easier.

Online example here (suggestions / thoughts welcome!): https://dl.dropboxusercontent.com/u/20821334/pyspark-api-nav-enhance/pyspark.mllib.html


---

* [SPARK-10412](https://issues.apache.org/jira/browse/SPARK-10412) | *Major* | **In SQL tab, show execution memory per physical operator**

We already display it per task / stage. It's really useful to also display it per operator so the user can know which one caused all the memory to be allocated.


---

* [SPARK-10411](https://issues.apache.org/jira/browse/SPARK-10411) | *Minor* | **In SQL tab move visualization above explain output**

Request from [~pwendell]:

(1) The visualization is much more interesting than the DF explain output. That should be at the top of the page.

(2) The DF explain output is for advanced users and should be collapsed by default

These are just minor UX optimizations.


---

* [SPARK-10403](https://issues.apache.org/jira/browse/SPARK-10403) | *Major* | **UnsafeRowSerializer can't work with UnsafeShuffleManager (tungsten-sort)**

UnsafeRowSerializer reply on EOF in the stream, but UnsafeRowWriter will not write EOF between partitions.

{code}
java.io.EOFException
	at java.io.DataInputStream.readInt(DataInputStream.java:392)
	at org.apache.spark.sql.execution.UnsafeRowSerializerInstance$$anon$3$$anon$1.next(UnsafeRowSerializer.scala:122)
	at org.apache.spark.sql.execution.UnsafeRowSerializerInstance$$anon$3$$anon$1.next(UnsafeRowSerializer.scala:110)
	at scala.collection.Iterator$$anon$13.next(Iterator.scala:372)
	at scala.collection.Iterator$$anon$11.next(Iterator.scala:328)
	at org.apache.spark.util.CompletionIterator.next(CompletionIterator.scala:30)
	at org.apache.spark.InterruptibleIterator.next(InterruptibleIterator.scala:43)
	at scala.collection.Iterator$$anon$11.next(Iterator.scala:328)
	at org.apache.spark.sql.execution.UnsafeExternalRowSorter.sort(UnsafeExternalRowSorter.java:174)
	at org.apache.spark.sql.execution.TungstenSort.org$apache$spark$sql$execution$TungstenSort$$executePartition$1(sort.scala:160)
	at org.apache.spark.sql.execution.TungstenSort$$anonfun$doExecute$4.apply(sort.scala:169)
	at org.apache.spark.sql.execution.TungstenSort$$anonfun$doExecute$4.apply(sort.scala:169)
	at org.apache.spark.rdd.MapPartitionsWithPreparationRDD.compute(MapPartitionsWithPreparationRDD.scala:64)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:297)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:264)
	at org.apache.spark.rdd.ZippedPartitionsRDD2.compute(ZippedPartitionsRDD.scala:99)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:297)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:264)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:38)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:297)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:264)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:38)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:297)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:264)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:38)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:297)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:264)
	at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:73)
	at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:41)
	at org.apache.spark.scheduler.Task.run(Task.scala:88)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:214)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
{code}


---

* [SPARK-10402](https://issues.apache.org/jira/browse/SPARK-10402) | *Minor* | **Add scaladoc for default values of params in ML**

We should make sure the scaladoc for params includes their default values through the models in ml/


---

* [SPARK-10400](https://issues.apache.org/jira/browse/SPARK-10400) | *Minor* | **Rename or deprecate SQL option "spark.sql.parquet.followParquetFormatSpec"**

We introduced SQL option "spark.sql.parquet.followParquetFormatSpec" while working on implementing Parquet backwards-compatibility rules in SPARK-6777. It indicates whether we should use legacy Parquet format adopted by Spark 1.4 and prior versions or the standard format defined in parquet-format spec. However, the name of this option is somewhat confusing, because it's not super intuitive why we shouldn't follow the spec. Would be nice to rename it to "spark.sql.parquet.writeLegacyFormat" and invert its default value (they have opposite meanings). Note that this option is not "public" ({{isPublic}} is false).

At the moment of writing, 1.5 RC3 has already been cut. If we can't make this one into 1.5, we can deprecate the old option with the new one.


---

* [SPARK-10398](https://issues.apache.org/jira/browse/SPARK-10398) | *Minor* | **Migrate Spark download page to use new lua mirroring scripts**

From infra team :

If you refer to www.apache.org/dyn/closer.cgi, please refer to
www.apache.org/dyn/closer.lua instead from now on.

Any non-conforming CGI scripts are no longer enabled, and are all
rewritten to go to our new mirror system.


---

* [SPARK-10395](https://issues.apache.org/jira/browse/SPARK-10395) | *Minor* | **Simplify CatalystReadSupport**

The API interface of Parquet {{ReadSupport}} is a little bit over complicated because of historical reasons.  In older versions of parquet-mr (say 1.6.0rc3 and prior), {{ReadSupport}} need to be instantiated and initialized twice on both driver side and executor side.  The {{init()}} method is for driver side initialization, while {{prepareForRead()}} is for executor side.  However, starting from parquet-mr 1.6.0, it's no longer the case, and {{ReadSupport}} is only instantiated and initialized on executor side.  So, theoretically, now it's totally fine to combine these two methods into a single initialization method.  The only reason (I could think of) to still have them here is for parquet-mr API backwards-compatibility.

Due to this reason, we no longer need to rely on {{ReadContext}} to pass requested schema from {{init()}} to {{prepareForRead()}}, using a private `var` for requested schema in {{CatalystReadSupport}} would be enough.

Another thing is that, after removing the old Parquet support code, now we always set Catalyst requested schema properly when reading Parquet files.  So all those "fallback" logic in {{CatalystReadSupport}} is now redundant.


---

* [SPARK-10394](https://issues.apache.org/jira/browse/SPARK-10394) | *Minor* | **Make GBTParams use shared "stepSize"**

GBTParams has "stepSize" as learning rate currently.
ML has shared param class "HasStepSize", GBTParams can extend from it rather than duplicated implementation.


---

* [SPARK-10392](https://issues.apache.org/jira/browse/SPARK-10392) | *Major* | **Pyspark - Wrong DateType support on JDBC connection**

I have following problem.
I created table.

{code}
CREATE TABLE `spark\_test` (
	`id` INT(11) NULL,
	`date` DATE NULL
)
COLLATE='utf8\_general\_ci'
ENGINE=InnoDB
;
INSERT INTO `spark\_test` (`id`, `date`) VALUES (1, '1970-01-01');
{code}

Then I'm trying to read data - date '1970-01-01' is converted to int. This makes data frame incompatible with its own schema.

{code}
df = sqlCtx.read.jdbc("jdbc:mysql://host/sandbox?user=user&password=password", 'spark\_test')
print(df.collect())
df = sqlCtx.createDataFrame(df.rdd, df.schema)

[Row(id=1, date=0)]
---------------------------------------------------------------------------
TypeError                                 Traceback (most recent call last)
\<ipython-input-36-ebc1d94e0d8c\> in \<module\>()
      1 df = sqlCtx.read.jdbc("jdbc:mysql://host/sandbox?user=user&password=password", 'spark\_test')
      2 print(df.collect())
----\> 3 df = sqlCtx.createDataFrame(df.rdd, df.schema)

/mnt/spark/spark/python/pyspark/sql/context.py in createDataFrame(self, data, schema, samplingRatio)
    402 
    403         if isinstance(data, RDD):
--\> 404             rdd, schema = self.\_createFromRDD(data, schema, samplingRatio)
    405         else:
    406             rdd, schema = self.\_createFromLocal(data, schema)

/mnt/spark/spark/python/pyspark/sql/context.py in \_createFromRDD(self, rdd, schema, samplingRatio)
    296             rows = rdd.take(10)
    297             for row in rows:
--\> 298                 \_verify\_type(row, schema)
    299 
    300         else:

/mnt/spark/spark/python/pyspark/sql/types.py in \_verify\_type(obj, dataType)
   1152                              "length of fields (%d)" % (len(obj), len(dataType.fields)))
   1153         for v, f in zip(obj, dataType.fields):
-\> 1154             \_verify\_type(v, f.dataType)
   1155 
   1156 

/mnt/spark/spark/python/pyspark/sql/types.py in \_verify\_type(obj, dataType)
   1136         # subclass of them can not be fromInternald in JVM
   1137         if type(obj) not in \_acceptable\_types[\_type]:
-\> 1138             raise TypeError("%s can not accept object in type %s" % (dataType, type(obj)))
   1139 
   1140     if isinstance(dataType, ArrayType):

TypeError: DateType can not accept object in type \<class 'int'\>

{code}


---

* [SPARK-10389](https://issues.apache.org/jira/browse/SPARK-10389) | *Major* | **support order by non-attribute grouping expression on Aggregate**

For example, we should support "SELECT MAX(value) FROM src GROUP BY key + 1 ORDER BY key + 1".


---

* [SPARK-10381](https://issues.apache.org/jira/browse/SPARK-10381) | *Critical* | **Infinite loop when OutputCommitCoordination is enabled and OutputCommitter.commitTask throws exception**

When speculative execution is enabled, consider a scenario where the authorized committer of a particular output partition fails during the OutputCommitter.commitTask() call. In this case, the OutputCommitCoordinator is supposed to release that committer's exclusive lock on committing once that task fails. However, due to a unit mismatch the lock will not be released, causing Spark to go into an infinite retry loop.

This bug was masked by the fact that the OutputCommitCoordinator does not have enough end-to-end tests (the current tests use many mocks). Other factors contributing to this bug are the fact that we have many similarly-named identifiers that have different semantics but the same data types (e.g. attemptNumber and taskAttemptId, with inconsistent variable naming which makes them difficult to distinguish).


---

* [SPARK-10379](https://issues.apache.org/jira/browse/SPARK-10379) | *Critical* | **UnsafeShuffleExternalSorter should preserve first page**


{code}

5/08/31 18:41:25 WARN TaskSetManager: Lost task 16.1 in stage 316.0 (TID 32686, lon4-hadoopslave-b925.lon4.spotify.net): java.io.IOException: Unable to acquire 67108864 bytes of memory
        at org.apache.spark.shuffle.unsafe.UnsafeShuffleExternalSorter.acquireNewPageIfNecessary(UnsafeShuffleExternalSorter.java:385)
        at org.apache.spark.shuffle.unsafe.UnsafeShuffleExternalSorter.insertRecord(UnsafeShuffleExternalSorter.java:435)
        at org.apache.spark.shuffle.unsafe.UnsafeShuffleWriter.insertRecordIntoSorter(UnsafeShuffleWriter.java:246)
        at org.apache.spark.shuffle.unsafe.UnsafeShuffleWriter.write(UnsafeShuffleWriter.java:174)
        at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:73)
        at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:41)
        at org.apache.spark.scheduler.Task.run(Task.scala:88)
        at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:214)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:745)

{code}


---

* [SPARK-10378](https://issues.apache.org/jira/browse/SPARK-10378) | *Major* | **Remove HashJoinCompatibilitySuite**

They don't bring much value since we now have better unit test coverage for hash joins. This will also help reduce the test time.


---

* [SPARK-10373](https://issues.apache.org/jira/browse/SPARK-10373) | *Major* | **Move @since annotator to pyspark to be shared by all components**

Python's `@since` is defined under `pyspark.sql`. It would be nice to move it under `pyspark` to be shared by all components.


---

* [SPARK-10355](https://issues.apache.org/jira/browse/SPARK-10355) | *Minor* | **Add Python API for SQLTransformer**

Add Python API for SQLTransformer


---

* [SPARK-10351](https://issues.apache.org/jira/browse/SPARK-10351) | *Critical* | **UnsafeRow.getUTF8String should handle off-heap backed UnsafeRow**

{{UnsafeRow.getUTF8String}} delegates to {{UTF8String.fromAddress}} which returns {{null}} when passed a {{null}} base object, failing to handle off-heap backed {{UnsafeRow}}s correctly.

This will also cause a {{NullPointerException}} when {{getString}} is called with off-heap storage.


---

* [SPARK-10349](https://issues.apache.org/jira/browse/SPARK-10349) | *Minor* | **OneVsRest use "when ... otherwise" not UDF to generate new label at binary reduction**

Currently OneVsRest use UDF to generate new binary label during training.
Considering that SPARK-7321 has been merged, we can use "when ... otherwise" which will be more efficiency.


---

* [SPARK-10337](https://issues.apache.org/jira/browse/SPARK-10337) | *Critical* | **Views are broken**

I haven't dug into this yet... but it seems like this should work:

This works:
{code}
SELECT \* FROM 100milints
{code}

This seems to work:
{code}
CREATE VIEW testView AS SELECT \* FROM 100milints
{code}

This fails:
{code}
SELECT \* FROM testView

org.apache.spark.sql.AnalysisException: cannot resolve '100milints.col' given input columns id; line 1 pos 7
	at org.apache.spark.sql.catalyst.analysis.package$AnalysisErrorAt.failAnalysis(package.scala:42)
	at org.apache.spark.sql.catalyst.analysis.CheckAnalysis$$anonfun$checkAnalysis$1$$anonfun$apply$2.applyOrElse(CheckAnalysis.scala:56)
	at org.apache.spark.sql.catalyst.analysis.CheckAnalysis$$anonfun$checkAnalysis$1$$anonfun$apply$2.applyOrElse(CheckAnalysis.scala:53)
	at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$transformUp$1.apply(TreeNode.scala:293)
	at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$transformUp$1.apply(TreeNode.scala:293)
	at org.apache.spark.sql.catalyst.trees.CurrentOrigin$.withOrigin(TreeNode.scala:51)
	at org.apache.spark.sql.catalyst.trees.TreeNode.transformUp(TreeNode.scala:292)
	at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$5.apply(TreeNode.scala:290)
	at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$5.apply(TreeNode.scala:290)
	at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$4.apply(TreeNode.scala:249)
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
	at org.apache.spark.sql.catalyst.trees.TreeNode.transformChildren(TreeNode.scala:279)
	at org.apache.spark.sql.catalyst.trees.TreeNode.transformUp(TreeNode.scala:290)
	at org.apache.spark.sql.catalyst.plans.QueryPlan.transformExpressionUp$1(QueryPlan.scala:108)
	at org.apache.spark.sql.catalyst.plans.QueryPlan.org$apache$spark$sql$catalyst$plans$QueryPlan$$recursiveTransform$2(QueryPlan.scala:118)
	at org.apache.spark.sql.catalyst.plans.QueryPlan$$anonfun$org$apache$spark$sql$catalyst$plans$QueryPlan$$recursiveTransform$2$1.apply(QueryPlan.scala:122)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
	at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
	at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
	at scala.collection.AbstractTraversable.map(Traversable.scala:105)
	at org.apache.spark.sql.catalyst.plans.QueryPlan.org$apache$spark$sql$catalyst$plans$QueryPlan$$recursiveTransform$2(QueryPlan.scala:122)
	at org.apache.spark.sql.catalyst.plans.QueryPlan$$anonfun$2.apply(QueryPlan.scala:126)
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
	at org.apache.spark.sql.catalyst.plans.QueryPlan.transformExpressionsUp(QueryPlan.scala:126)
	at org.apache.spark.sql.catalyst.analysis.CheckAnalysis$$anonfun$checkAnalysis$1.apply(CheckAnalysis.scala:53)
	at org.apache.spark.sql.catalyst.analysis.CheckAnalysis$$anonfun$checkAnalysis$1.apply(CheckAnalysis.scala:49)
	at org.apache.spark.sql.catalyst.trees.TreeNode.foreachUp(TreeNode.scala:103)
	at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$foreachUp$1.apply(TreeNode.scala:102)
	at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$foreachUp$1.apply(TreeNode.scala:102)
	at scala.collection.immutable.List.foreach(List.scala:318)
	at org.apache.spark.sql.catalyst.trees.TreeNode.foreachUp(TreeNode.scala:102)
	at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$foreachUp$1.apply(TreeNode.scala:102)
	at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$foreachUp$1.apply(TreeNode.scala:102)
	at scala.collection.immutable.List.foreach(List.scala:318)
	at org.apache.spark.sql.catalyst.trees.TreeNode.foreachUp(TreeNode.scala:102)
	at org.apache.spark.sql.catalyst.analysis.CheckAnalysis$class.checkAnalysis(CheckAnalysis.scala:49)
	at org.apache.spark.sql.catalyst.analysis.Analyzer.checkAnalysis(Analyzer.scala:44)
	at org.apache.spark.sql.SQLContext$QueryExecution.assertAnalyzed(SQLContext.scala:908)
	at org.apache.spark.sql.DataFrame.\<init\>(DataFrame.scala:132)
	at org.apache.spark.sql.DataFrame$.apply(DataFrame.scala:51)
	at org.apache.spark.sql.SQLContext.sql(SQLContext.scala:719)
{code}


---

* [SPARK-10332](https://issues.apache.org/jira/browse/SPARK-10332) | *Minor* | **spark-submit to yarn doesn't fail if executors is 0**

Running spark-submit with yarn with number-executors equal to 0 when not using dynamic allocation should error out.  

In spark 1.5.0 it continues and ends up hanging.

yarn.ClientArguments still has the check so something else must have changed.

spark-submit   --master yarn --deploy-mode cluster --class org.apache.spark.examples.SparkPi --num-executors 0 ....

spark 1.4.1 errors with:
java.lang.IllegalArgumentException:
Number of executors was 0, but must be at least 1
(or 0 if dynamic executor allocation is enabled).


---

* [SPARK-10330](https://issues.apache.org/jira/browse/SPARK-10330) | *Major* | **Use SparkHadoopUtil TaskAttemptContext reflection methods in more places**

SparkHadoopUtil contains methods that use reflection to work around TaskAttemptContext binary incompatibilities between Hadoop 1.x and 2.x. We should use these methods in more places.


---

* [SPARK-10327](https://issues.apache.org/jira/browse/SPARK-10327) | *Major* | **Cache Table is not working while subquery has alias in its project list**

Code to reproduce that:
{code}
    import org.apache.spark.sql.hive.execution.HiveTableScan
    sql("select key, value, key + 1 from src").registerTempTable("abc")
    cacheTable("abc")

    val sparkPlan = sql(
      """select a.key, b.key, c.key from
        \|abc a join abc b on a.key=b.key
        \|join abc c on a.key=c.key""".stripMargin).queryExecution.sparkPlan

    assert(sparkPlan.collect { case e: InMemoryColumnarTableScan =\> e }.size === 3) // failed
    assert(sparkPlan.collect { case e: HiveTableScan =\> e }.size === 0) // failed
{code}

The query plan like:
{code}
== Parsed Logical Plan ==
'Project [unresolvedalias('a.key),unresolvedalias('b.key),unresolvedalias('c.key)]
 'Join Inner, Some(('a.key = 'c.key))
  'Join Inner, Some(('a.key = 'b.key))
   'UnresolvedRelation [abc], Some(a)
   'UnresolvedRelation [abc], Some(b)
  'UnresolvedRelation [abc], Some(c)

== Analyzed Logical Plan ==
key: int, key: int, key: int
Project [key#14,key#61,key#66]
 Join Inner, Some((key#14 = key#66))
  Join Inner, Some((key#14 = key#61))
   Subquery a
    Subquery abc
     Project [key#14,value#15,(key#14 + 1) AS \_c2#16]
      MetastoreRelation default, src, None
   Subquery b
    Subquery abc
     Project [key#61,value#62,(key#61 + 1) AS \_c2#58]
      MetastoreRelation default, src, None
  Subquery c
   Subquery abc
    Project [key#66,value#67,(key#66 + 1) AS \_c2#63]
     MetastoreRelation default, src, None

== Optimized Logical Plan ==
Project [key#14,key#61,key#66]
 Join Inner, Some((key#14 = key#66))
  Project [key#14,key#61]
   Join Inner, Some((key#14 = key#61))
    Project [key#14]
     InMemoryRelation [key#14,value#15,\_c2#16], true, 10000, StorageLevel(true, true, false, true, 1), (Project [key#14,value#15,(key#14 + 1) AS \_c2#16]), Some(abc)
    Project [key#61]
     MetastoreRelation default, src, None
  Project [key#66]
   MetastoreRelation default, src, None

== Physical Plan ==
TungstenProject [key#14,key#61,key#66]
 BroadcastHashJoin [key#14], [key#66], BuildRight
  TungstenProject [key#14,key#61]
   BroadcastHashJoin [key#14], [key#61], BuildRight
    ConvertToUnsafe
     InMemoryColumnarTableScan [key#14], (InMemoryRelation [key#14,value#15,\_c2#16], true, 10000, StorageLevel(true, true, false, true, 1), (Project [key#14,value#15,(key#14 + 1) AS \_c2#16]), Some(abc))
    ConvertToUnsafe
     HiveTableScan [key#61], (MetastoreRelation default, src, None)
  ConvertToUnsafe
   HiveTableScan [key#66], (MetastoreRelation default, src, None)
{code}


---

* [SPARK-10317](https://issues.apache.org/jira/browse/SPARK-10317) | *Trivial* | **start-history-server.sh CLI parsing incompatible with HistoryServer's arg parsing**

The history server has its argument parsing class in {{HistoryServerArguments}}. However, this doesn't get involved in the {{start-history-server.sh}} codepath where the $0 arg is assigned to  {{spark.history.fs.logDirectory}} and all other arguments discarded (e.g {{--property-file}}.

This stops the other options being usable from this script


---

* [SPARK-10316](https://issues.apache.org/jira/browse/SPARK-10316) | *Major* | **respect non-deterministic expressions in PhysicalOperation**

We did a lot of special handling for non-deterministic expressions in Optimizer. However, PhysicalOperation just collects all Projects and Filters and messed it up. We should respect the operators order caused by non-deterministic expressions in PhysicalOperation.


---

* [SPARK-10311](https://issues.apache.org/jira/browse/SPARK-10311) | *Major* | **In cluster mode, AppId and AttemptId should be update when ApplicationMaster is new**

When I start a streaming app with checkpoint data in yarn-cluster mode, the appId and attempId are old(which app first create the checkpoint data), and the event log writes into the old file name.


---

* [SPARK-10310](https://issues.apache.org/jira/browse/SPARK-10310) | *Critical* | **[Spark SQL] All result records will be popluated into ONE line during the script transform due to missing the correct line/filed delimiter**

There is real case using python stream script in Spark SQL query. We found that all result records were wroten in ONE line as input from "select" pipeline for python script and so it caused script will not identify each record.Other, filed separator in spark sql will be '^A' or '\001' which is inconsistent/incompatible the '\t' in Hive implementation.

Key query:
{code:sql}
CREATE VIEW temp1 AS
SELECT \*
FROM
(
  FROM
  (
    SELECT
      c.wcs\_user\_sk,
      w.wp\_type,
      (wcs\_click\_date\_sk \* 24 \* 60 \* 60 + wcs\_click\_time\_sk) AS tstamp\_inSec
    FROM web\_clickstreams c, web\_page w
    WHERE c.wcs\_web\_page\_sk = w.wp\_web\_page\_sk
    AND   c.wcs\_web\_page\_sk IS NOT NULL
    AND   c.wcs\_user\_sk     IS NOT NULL
    AND   c.wcs\_sales\_sk    IS NULL --abandoned implies: no sale
    DISTRIBUTE BY wcs\_user\_sk SORT BY wcs\_user\_sk, tstamp\_inSec
  ) clicksAnWebPageType
  REDUCE
    wcs\_user\_sk,
    tstamp\_inSec,
    wp\_type
  USING 'python sessionize.py 3600'
  AS (
    wp\_type STRING,
    tstamp BIGINT, 
    sessionid STRING)
) sessionized
{code}
Key Python script:
{noformat}
for line in sys.stdin:
     user\_sk,  tstamp\_str, value  = line.strip().split("\t")
{noformat}
Sample SELECT result:
{noformat}
^V31^A3237764860^Afeedback^U31^A3237769106^Adynamic^T31^A3237779027^Areview
{noformat}
Expected result:
{noformat}
31   3237764860   feedback
31   3237769106   dynamic
31   3237779027   review
{noformat}


---

* [SPARK-10301](https://issues.apache.org/jira/browse/SPARK-10301) | *Critical* | **For struct type, if parquet's global schema has less fields than a file's schema, data reading will fail**

We hit this issue when reading a complex Parquet dateset without turning on schema merging.  The data set consists of Parquet files with different but compatible schemas.  In this way, the schema of the dataset is defined by either a summary file or a random physical Parquet file if no summary files are available.  Apparently, this schema may not containing all fields appeared in all physicla files.

Parquet was designed with schema evolution and column pruning in mind, so it should be legal for a user to use a tailored schema to read the dataset to save disk IO.  For example, say we have a Parquet dataset consisting of two physical Parquet files with the following two schemas:
{noformat}
message m0 {
  optional group f0 {
    optional int64 f00;
    optional int64 f01;
  }
}

message m1 {
  optional group f0 {
    optional int64 f00;
    optional int64 f01;
    optional int64 f02;
  }

  optional double f1;
}
{noformat}
Users should be allowed to read the dataset with the following schema:
{noformat}
message m2 {
  optional group f0 {
    optional int64 f01;
    optional int64 f02;
  }
}
{noformat}
so that {{f0.f00}} and {{f1}} are never touched.  The above case can be expressed by the following {{spark-shell}} snippet:
{noformat}
import sqlContext.\_
import sqlContext.implicits.\_
import org.apache.spark.sql.types.{LongType, StructType}

val path = "/tmp/spark/parquet"
range(3).selectExpr("NAMED\_STRUCT('f00', id, 'f01', id) AS f0").coalesce(1)
        .write.mode("overwrite").parquet(path)

range(3).selectExpr("NAMED\_STRUCT('f00', id, 'f01', id, 'f02', id) AS f0", "CAST(id AS DOUBLE) AS f1").coalesce(1)
        .write.mode("append").parquet(path)

val tailoredSchema =
  new StructType()
    .add(
      "f0",
      new StructType()
        .add("f01", LongType, nullable = true)
        .add("f02", LongType, nullable = true),
      nullable = true)

read.schema(tailoredSchema).parquet(path).show()
{noformat}
Expected output should be:
{noformat}
+--------+
\|      f0\|
+--------+
\|[0,null]\|
\|[1,null]\|
\|[2,null]\|
\|   [0,0]\|
\|   [1,1]\|
\|   [2,2]\|
+--------+
{noformat}
However, current 1.5-SNAPSHOT version throws the following exception:
{noformat}
org.apache.parquet.io.ParquetDecodingException: Can not read value at 0 in block -1 in file hdfs://localhost:9000/tmp/spark/parquet/part-r-00000-56c4604e-c546-4f97-a316-05da8ab1a0bf.gz.parquet
        at org.apache.parquet.hadoop.InternalParquetRecordReader.nextKeyValue(InternalParquetRecordReader.java:228)
        at org.apache.parquet.hadoop.ParquetRecordReader.nextKeyValue(ParquetRecordReader.java:201)
        at org.apache.spark.rdd.SqlNewHadoopRDD$$anon$1.hasNext(SqlNewHadoopRDD.scala:168)
        at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
        at scala.collection.Iterator$$anon$10.hasNext(Iterator.scala:308)
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
        at org.apache.spark.sql.execution.SparkPlan$$anonfun$5.apply(SparkPlan.scala:215)
        at org.apache.spark.sql.execution.SparkPlan$$anonfun$5.apply(SparkPlan.scala:215)
        at org.apache.spark.SparkContext$$anonfun$runJob$5.apply(SparkContext.scala:1844)
        at org.apache.spark.SparkContext$$anonfun$runJob$5.apply(SparkContext.scala:1844)
        at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:66)
        at org.apache.spark.scheduler.Task.run(Task.scala:88)
        at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:214)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:745)
Caused by: java.lang.ArrayIndexOutOfBoundsException: 2
        at org.apache.spark.sql.execution.datasources.parquet.CatalystRowConverter.getConverter(CatalystRowConverter.scala:206)
        at org.apache.parquet.io.RecordReaderImplementation.\<init\>(RecordReaderImplementation.java:269)
        at org.apache.parquet.io.MessageColumnIO$1.visit(MessageColumnIO.java:134)
        at org.apache.parquet.io.MessageColumnIO$1.visit(MessageColumnIO.java:99)
        at org.apache.parquet.filter2.compat.FilterCompat$NoOpFilter.accept(FilterCompat.java:154)
        at org.apache.parquet.io.MessageColumnIO.getRecordReader(MessageColumnIO.java:99)
        at org.apache.parquet.hadoop.InternalParquetRecordReader.checkRead(InternalParquetRecordReader.java:137)
        at org.apache.parquet.hadoop.InternalParquetRecordReader.nextKeyValue(InternalParquetRecordReader.java:208)
        ... 25 more
15/08/30 16:42:59 ERROR TaskSetManager: Task 0 in stage 2.0 failed 1 times; aborting job
org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 2.0 failed 1 times, most recent failure: Lost task 0.0 in stage 2.0 (TID 2, localhost): org.apache.parquet.io.ParquetDecodingException: Can not read value at 0 in block -1 in file hdfs://localhost:9000/tmp/spark/parquet/part-r-00000-56c4604e-c546-4f97-a316-05da8ab1a0bf.gz.parquet
        at org.apache.parquet.hadoop.InternalParquetRecordReader.nextKeyValue(InternalParquetRecordReader.java:228)
        at org.apache.parquet.hadoop.ParquetRecordReader.nextKeyValue(ParquetRecordReader.java:201)
        at org.apache.spark.rdd.SqlNewHadoopRDD$$anon$1.hasNext(SqlNewHadoopRDD.scala:168)
        at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
        at scala.collection.Iterator$$anon$10.hasNext(Iterator.scala:308)
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
        at org.apache.spark.sql.execution.SparkPlan$$anonfun$5.apply(SparkPlan.scala:215)
        at org.apache.spark.sql.execution.SparkPlan$$anonfun$5.apply(SparkPlan.scala:215)
        at org.apache.spark.SparkContext$$anonfun$runJob$5.apply(SparkContext.scala:1844)
        at org.apache.spark.SparkContext$$anonfun$runJob$5.apply(SparkContext.scala:1844)
        at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:66)
        at org.apache.spark.scheduler.Task.run(Task.scala:88)
        at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:214)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:745)
Caused by: java.lang.ArrayIndexOutOfBoundsException: 2
        at org.apache.spark.sql.execution.datasources.parquet.CatalystRowConverter.getConverter(CatalystRowConverter.scala:206)
        at org.apache.parquet.io.RecordReaderImplementation.\<init\>(RecordReaderImplementation.java:269)
        at org.apache.parquet.io.MessageColumnIO$1.visit(MessageColumnIO.java:134)
        at org.apache.parquet.io.MessageColumnIO$1.visit(MessageColumnIO.java:99)
        at org.apache.parquet.filter2.compat.FilterCompat$NoOpFilter.accept(FilterCompat.java:154)
        at org.apache.parquet.io.MessageColumnIO.getRecordReader(MessageColumnIO.java:99)
        at org.apache.parquet.hadoop.InternalParquetRecordReader.checkRead(InternalParquetRecordReader.java:137)
        at org.apache.parquet.hadoop.InternalParquetRecordReader.nextKeyValue(InternalParquetRecordReader.java:208)
        ... 25 more

Driver stacktrace:
        at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$failJobAndIndependentStages(DAGScheduler.scala:1280)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1268)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1267)
        at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
        at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
        at org.apache.spark.scheduler.DAGScheduler.abortStage(DAGScheduler.scala:1267)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:697)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:697)
        at scala.Option.foreach(Option.scala:236)
        at org.apache.spark.scheduler.DAGScheduler.handleTaskSetFailed(DAGScheduler.scala:697)
        at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.doOnReceive(DAGScheduler.scala:1493)
        at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1455)
        at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1444)
        at org.apache.spark.util.EventLoop$$anon$1.run(EventLoop.scala:48)
        at org.apache.spark.scheduler.DAGScheduler.runJob(DAGScheduler.scala:567)
        at org.apache.spark.SparkContext.runJob(SparkContext.scala:1818)
        at org.apache.spark.SparkContext.runJob(SparkContext.scala:1831)
        at org.apache.spark.SparkContext.runJob(SparkContext.scala:1844)
        at org.apache.spark.sql.execution.SparkPlan.executeTake(SparkPlan.scala:215)
        at org.apache.spark.sql.execution.Limit.executeCollect(basicOperators.scala:207)
        at org.apache.spark.sql.DataFrame$$anonfun$collect$1.apply(DataFrame.scala:1403)
        at org.apache.spark.sql.DataFrame$$anonfun$collect$1.apply(DataFrame.scala:1403)
        at org.apache.spark.sql.execution.SQLExecution$.withNewExecutionId(SQLExecution.scala:56)
        at org.apache.spark.sql.DataFrame.withNewExecutionId(DataFrame.scala:1921)
        at org.apache.spark.sql.DataFrame.collect(DataFrame.scala:1402)
        at org.apache.spark.sql.DataFrame.head(DataFrame.scala:1332)
        at org.apache.spark.sql.DataFrame.take(DataFrame.scala:1395)
        at org.apache.spark.sql.DataFrame.showString(DataFrame.scala:178)
        at org.apache.spark.sql.DataFrame.show(DataFrame.scala:402)
        at org.apache.spark.sql.DataFrame.show(DataFrame.scala:363)
        at org.apache.spark.sql.DataFrame.show(DataFrame.scala:371)
        at $iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC.\<init\>(\<console\>:41)
        at $iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC.\<init\>(\<console\>:53)
        at $iwC$$iwC$$iwC$$iwC$$iwC$$iwC.\<init\>(\<console\>:55)
        at $iwC$$iwC$$iwC$$iwC$$iwC.\<init\>(\<console\>:57)
        at $iwC$$iwC$$iwC$$iwC.\<init\>(\<console\>:59)
        at $iwC$$iwC$$iwC.\<init\>(\<console\>:61)
        at $iwC$$iwC.\<init\>(\<console\>:63)
        at $iwC.\<init\>(\<console\>:65)
        at \<init\>(\<console\>:67)
        at .\<init\>(\<console\>:71)
        at .\<clinit\>(\<console\>)
        at .\<init\>(\<console\>:7)
        at .\<clinit\>(\<console\>)
        at $print(\<console\>)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:606)
        at org.apache.spark.repl.SparkIMain$ReadEvalPrint.call(SparkIMain.scala:1065)
        at org.apache.spark.repl.SparkIMain$Request.loadAndRun(SparkIMain.scala:1340)
        at org.apache.spark.repl.SparkIMain.loadAndRunReq$1(SparkIMain.scala:840)
        at org.apache.spark.repl.SparkIMain.interpret(SparkIMain.scala:871)
        at org.apache.spark.repl.SparkIMain.interpret(SparkIMain.scala:819)
        at org.apache.spark.repl.SparkILoop.org$apache$spark$repl$SparkILoop$$pasteCommand(SparkILoop.scala:825)
        at org.apache.spark.repl.SparkILoop$$anonfun$standardCommands$8.apply(SparkILoop.scala:345)
        at org.apache.spark.repl.SparkILoop$$anonfun$standardCommands$8.apply(SparkILoop.scala:345)
        at scala.tools.nsc.interpreter.LoopCommands$LoopCommand$$anonfun$nullary$1.apply(LoopCommands.scala:65)
        at scala.tools.nsc.interpreter.LoopCommands$LoopCommand$$anonfun$nullary$1.apply(LoopCommands.scala:65)
        at scala.tools.nsc.interpreter.LoopCommands$NullaryCmd.apply(LoopCommands.scala:76)
        at org.apache.spark.repl.SparkILoop.command(SparkILoop.scala:809)
        at org.apache.spark.repl.SparkILoop.processLine$1(SparkILoop.scala:657)
        at org.apache.spark.repl.SparkILoop.innerLoop$1(SparkILoop.scala:665)
        at org.apache.spark.repl.SparkILoop.org$apache$spark$repl$SparkILoop$$loop(SparkILoop.scala:670)
        at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply$mcZ$sp(SparkILoop.scala:997)
        at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply(SparkILoop.scala:945)
        at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply(SparkILoop.scala:945)
        at scala.tools.nsc.util.ScalaClassLoader$.savingContextLoader(ScalaClassLoader.scala:135)
        at org.apache.spark.repl.SparkILoop.org$apache$spark$repl$SparkILoop$$process(SparkILoop.scala:945)
        at org.apache.spark.repl.SparkILoop.process(SparkILoop.scala:1059)
        at org.apache.spark.repl.Main$.main(Main.scala:31)
        at org.apache.spark.repl.Main.main(Main.scala)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:606)
        at org.apache.spark.deploy.SparkSubmit$.org$apache$spark$deploy$SparkSubmit$$runMain(SparkSubmit.scala:672)
        at org.apache.spark.deploy.SparkSubmit$.doRunMain$1(SparkSubmit.scala:180)
        at org.apache.spark.deploy.SparkSubmit$.submit(SparkSubmit.scala:205)
        at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:120)
        at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)
Caused by: org.apache.parquet.io.ParquetDecodingException: Can not read value at 0 in block -1 in file hdfs://localhost:9000/tmp/spark/parquet/part-r-00000-56c4604e-c546-4f97-a316-05da8ab1a0bf.gz.parquet
        at org.apache.parquet.hadoop.InternalParquetRecordReader.nextKeyValue(InternalParquetRecordReader.java:228)
        at org.apache.parquet.hadoop.ParquetRecordReader.nextKeyValue(ParquetRecordReader.java:201)
        at org.apache.spark.rdd.SqlNewHadoopRDD$$anon$1.hasNext(SqlNewHadoopRDD.scala:168)
        at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
        at scala.collection.Iterator$$anon$10.hasNext(Iterator.scala:308)
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
        at org.apache.spark.sql.execution.SparkPlan$$anonfun$5.apply(SparkPlan.scala:215)
        at org.apache.spark.sql.execution.SparkPlan$$anonfun$5.apply(SparkPlan.scala:215)
        at org.apache.spark.SparkContext$$anonfun$runJob$5.apply(SparkContext.scala:1844)
        at org.apache.spark.SparkContext$$anonfun$runJob$5.apply(SparkContext.scala:1844)
        at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:66)
        at org.apache.spark.scheduler.Task.run(Task.scala:88)
        at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:214)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:745)
Caused by: java.lang.ArrayIndexOutOfBoundsException: 2
        at org.apache.spark.sql.execution.datasources.parquet.CatalystRowConverter.getConverter(CatalystRowConverter.scala:206)
        at org.apache.parquet.io.RecordReaderImplementation.\<init\>(RecordReaderImplementation.java:269)
        at org.apache.parquet.io.MessageColumnIO$1.visit(MessageColumnIO.java:134)
        at org.apache.parquet.io.MessageColumnIO$1.visit(MessageColumnIO.java:99)
        at org.apache.parquet.filter2.compat.FilterCompat$NoOpFilter.accept(FilterCompat.java:154)
        at org.apache.parquet.io.MessageColumnIO.getRecordReader(MessageColumnIO.java:99)
        at org.apache.parquet.hadoop.InternalParquetRecordReader.checkRead(InternalParquetRecordReader.java:137)
        at org.apache.parquet.hadoop.InternalParquetRecordReader.nextKeyValue(InternalParquetRecordReader.java:208)
        ... 25 more
{noformat}
This issue can be generalized a step further.  Taking interoperability into consideration, we may have a Parquet dataset consisting of physical Parquet files sharing compatible logical schema, but created by different Parquet libraries.  Because of the historical nested type compatibility issue, physical Parquet schemas generated by those libraries may be different.  It would be nice to be able to operate on such datasets.


---

* [SPARK-10289](https://issues.apache.org/jira/browse/SPARK-10289) | *Major* | **A direct write API for testing Parquet compatibility**

Due to a set of unfortunate historical issues, it's relatively hard to achieve full interoperability among various Parquet data models. Spark 1.5 implemented all backwards-compatibility rules defined in parquet-format spec on the read path (SPARK-6774) to improve this.  However, testing all those corner cases can be really challenging.  Currently, we are testing Parquet compatibility/interoperability by two means:
# Generate Parquet files by other systems, bundle them into Spark source tree as testing resources, and write test cases against them to ensure that we can interpret them correctly. Currently, we are testing parquet-thrift and parquet-protobuf compatibility in this way.
#- Pros: Easy to write test cases, easy to test against multiple versions of a given external system/libraries (by generating Parquet files with these versions)
#- Cons: Hard to track how testing Parquet files are generated
# Make external libraries as testing dependencies, and call their APIs directly to write Parquet files and verify them. Currently, parquet-avro compatibility is tested using this approach.
#- Pros: Easy to track how testing Parquet files are generated
#- Cons:
##- Often requires code generation (Avro/Thrift/ProtoBuf/...), either complicates build system by using build time code generation, or bloats the code base by checking in generated Java files.  The former one is especially annoying because Spark has two build systems, and require two sets of plugins to do code generation (e.g., for Avro, we need both sbt-avro and avro-maven-plugin).
##- Can only test a single version of a given target library

Inspired by the [{{writeDirect}}\|https://github.com/apache/parquet-mr/blob/apache-parquet-1.8.1/parquet-avro/src/test/java/org/apache/parquet/avro/TestArrayCompatibility.java#L945-L972] method in parquet-avro testing code, a direct write API can be a good complement for testing Parquet compatibilities.  Ideally, this API should

# be easy to construct arbitrary complex Parquet records
# have a DSL that reflects the nested nature of Parquet records

In this way, it would be both easy to track Parquet file generation and easy to cover various versions of external libraries.  However, test case authors must be really careful when constructing the test cases and ensure constructed Parquet structures are identical to those generated by the target systems/libraries.  We're probably not going to replace the above two approaches with this API, but just add it as a complement.


---

* [SPARK-10253](https://issues.apache.org/jira/browse/SPARK-10253) | *Minor* | **Remove Guava dependencies in MLlib java tests**

Many tests depend on Google Guava's {{Lists.newArrayList}} when {{java.util.Arrays.asList}} could be used instead.


---

* [SPARK-10251](https://issues.apache.org/jira/browse/SPARK-10251) | *Major* | **Some internal spark classes are not registered with kryo**

When running a job using kryo serialization and setting `spark.kryo.registrationRequired=true` some internal classes are not registered, causing the job to die. This is still a problem when this setting is false (which is the default) because it makes the space required to store serialized objects in memory or disk much much more expensive in terms of runtime and storage space.

{code}
15/08/25 20:28:21 WARN spark.scheduler.TaskSetManager: Lost task 0.0 in stage 0.0 (TID 0, a.b.c.d): java.lang.IllegalArgumentException: Class is not registered: scala.Tuple2[]
Note: To register this class use: kryo.register(scala.Tuple2[].class);
        at com.esotericsoftware.kryo.Kryo.getRegistration(Kryo.java:442)
        at com.esotericsoftware.kryo.util.DefaultClassResolver.writeClass(DefaultClassResolver.java:79)
        at com.esotericsoftware.kryo.Kryo.writeClass(Kryo.java:472)
        at com.esotericsoftware.kryo.Kryo.writeClassAndObject(Kryo.java:565)
        at org.apache.spark.serializer.KryoSerializerInstance.serialize(KryoSerializer.scala:250)
        at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:236)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
        at java.lang.Thread.run(Thread.java:745)
{code}


---

* [SPARK-10247](https://issues.apache.org/jira/browse/SPARK-10247) | *Trivial* | **Cleanup DAGSchedulerSuite "ignore late map task completion"**

the "ignore late map task completion" test in {{DAGSchedulerSuite}} is a bit confusing, we can add a few asserts & comments to clarify a little


---

* [SPARK-10227](https://issues.apache.org/jira/browse/SPARK-10227) | *Major* | **sbt build on Scala 2.11 fails**

Scala 2.11 has additional warnings compare to Scala 2.10, and the addition of 'fatal warnings' in the sbt build, the current {{trunk}} (and {{branch-1.5}}) fails to  build with sbt on Scala 2.11.

Most of the warning are about the {{@transient}} annotation not being set on relevant elements, and a few pointing to some potential bugs.


---

* [SPARK-10224](https://issues.apache.org/jira/browse/SPARK-10224) | *Critical* | **BlockGenerator may lost data in the last block**

There is a race condition in BlockGenerator that will lost data in the last block. See my PR for details.


---

* [SPARK-10222](https://issues.apache.org/jira/browse/SPARK-10222) | *Trivial* | **More thoroughly deprecate Bagel in favor of GraphX**

It seems like Bagel has had little or no activity since before even Spark 1.0 (?) and is supposed to be superseded by GraphX. 

Would it be reasonable to deprecate it for 1.6? and remove it in Spark 2.x? I think it's reasonable enough that I'll assert this as a JIRA, but obviously open to discussion.


---

* [SPARK-10194](https://issues.apache.org/jira/browse/SPARK-10194) | *Major* | **SGD algorithms need convergenceTol parameter in Python**

[SPARK-3382] added a convergenceTol parameter for GradientDescent-based methods in Scala.  We need that parameter in Python; otherwise, Python users will not be able to adjust that behavior (or even reproduce behavior from previous releases since the default changed).


---

* [SPARK-10185](https://issues.apache.org/jira/browse/SPARK-10185) | *Major* | **Spark SQL does not handle comma separates paths on Hadoop FileSystem**

Spark SQL uses a Map[String, String] for data source settings. As a consequence the only way to pass in multiple paths (something that hadoop file input format supports) is to do pass in a comma separated list. For example:
sqlContext.format("json").load("dir1,dir22")
or
sqlContext.format("json").option("path", "dir1,dir2").load

However in this case ResolvedDataSource does not handle the comma delimited paths correctly for a HadoopFsRelationProvider. It treats the multiple comma delimited paths as single path.

For example if i pass in for path "dir1,dir2" it will make dir1 qualified but ignore dir2 (presumably because it simply treats it as part of dir1). If globs are involved then it simply always returns an empty array of paths (because the glob with comma in it doesn’t match anything).

I think its important to handle commas to pass in multiple paths, since the framework does not provide an alternative. In some cases like parquet the code simply bypasses ResolvedDataSource to support multiple paths but to me this is a workaround that should be discouraged.


---

* [SPARK-10184](https://issues.apache.org/jira/browse/SPARK-10184) | *Minor* | **Optimization for bounds determination in RangePartitioner**

Change {{cumWeight \> target}} to {{cumWeight \>= target}} in {{RangePartitioner.determineBounds}} method to make the output partitions more balanced.


---

* [SPARK-10182](https://issues.apache.org/jira/browse/SPARK-10182) | *Minor* | **GeneralizedLinearModel doesn't unpersist cached data**

The problem might be reproduced in spark-shell with following code snippet:

{code}
import org.apache.spark.SparkContext
import org.apache.spark.mllib.classification.LogisticRegressionWithLBFGS
import org.apache.spark.mllib.linalg.Vectors
import org.apache.spark.mllib.regression.LabeledPoint

val samples = Seq[LabeledPoint](
  LabeledPoint(1.0, Vectors.dense(1.0, 0.0)),
  LabeledPoint(1.0, Vectors.dense(0.0, 1.0)),
  LabeledPoint(0.0, Vectors.dense(1.0, 1.0)),
  LabeledPoint(0.0, Vectors.dense(0.0, 0.0))
)

val rdd = sc.parallelize(samples)

for (i \<- 0 until 10) {
  val model = {
    new LogisticRegressionWithLBFGS()
      .setNumClasses(2)
      .run(rdd)
      .clearThreshold()
  }
}
{code}

After code execution there are 10 {{MapPartitionsRDD}} objects on "Storage" tab in Spark application UI.


---

* [SPARK-10176](https://issues.apache.org/jira/browse/SPARK-10176) | *Major* | **Show partially analyzed plan when checkAnswer df fails to resolve**

It would be much easier to debug test failures if we could see the failed plan instead of just the user friendly error message.


---

* [SPARK-10172](https://issues.apache.org/jira/browse/SPARK-10172) | *Minor* | **History Server web UI gets messed up when sorting on any column**

If the history web UI displays the "Attempt ID" column, when clicking the table header to sort on any column, the entire page gets messed up.

This seems to be a problem with the sorttable.js not able to correctly handle tables with rowspan.


---

* [SPARK-10170](https://issues.apache.org/jira/browse/SPARK-10170) | *Major* | **Add DB2 JDBC dialect support**

Repro :
-- start spark shell with classpath set to the db2 jdbc driver. 
SPARK\_CLASSPATH=~/myjars/db2jcc.jar ./spark-shell

 
// set connetion properties 
val properties = new java.util.Properties()
properties.setProperty("user" , "user")
properties.setProperty("password" , "password")

// load the driver.
Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance

// create data frame with a String type
val empdf = sc.parallelize( Array((1,"John"), (2,"Mike"))).toDF("id", "name" )
// write the data frame.  this will fail with error.  
empdf.write.jdbc("jdbc:db2://bdvs150.svl.ibm.com:60000/SAMPLE:retrieveMessagesFromServerOnGetMessage=true;", "emp\_data", properties)

Error :
com.ibm.db2.jcc.am.SqlSyntaxErrorException: TEXT
	at com.ibm.db2.jcc.am.fd.a(fd.java:679)
	at com.ibm.db2.jcc.am.fd.a(fd.java:60)
..


// create data frame with String , and Boolean types 
val empdf = sc.parallelize( Array((1,"true".toBoolean ), (2, "false".toBoolean ))).toDF("id", "isManager")
// write the data frame.  this will fail with error.  
empdf.write.jdbc("jdbc:db2://\<server\>:\<port\> /SAMPLE:retrieveMessagesFromServerOnGetMessage=true;", "emp\_data", properties)

Error :
com.ibm.db2.jcc.am.SqlSyntaxErrorException: TEXT
	at com.ibm.db2.jcc.am.fd.a(fd.java:679)
	at com.ibm.db2.jcc.am.fd.a(fd.java:60)

Write is failing because by default JDBC data source implementation generating table schema with unsupported data types TEXT  for String, and BIT1(1)  for Boolean. I think String type should get mapped to CLOB/VARCHAR, and boolean type should be mapped to CHAR(1) for DB2 database.


---

* [SPARK-10167](https://issues.apache.org/jira/browse/SPARK-10167) | *Minor* | **We need to explicitly use transformDown when rewrite aggregation results**

Right now, we use transformDown explicitly at https://github.com/apache/spark/blob/master/sql/core/src/main/scala/org/apache/spark/sql/execution/aggregate/utils.scala#L105 and https://github.com/apache/spark/blob/master/sql/core/src/main/scala/org/apache/spark/sql/execution/aggregate/utils.scala#L130. We also need to be very clear on using transformDown at https://github.com/apache/spark/blob/master/sql/core/src/main/scala/org/apache/spark/sql/execution/aggregate/utils.scala#L300 and https://github.com/apache/spark/blob/master/sql/core/src/main/scala/org/apache/spark/sql/execution/aggregate/utils.scala#L334 (right now transform means transformDown). The reason we need to use transformDown is when we rewrite final aggregate results, we should always match aggregate functions first. If we use transformUp, it is possible that we match grouping expression first if we use grouping expressions as children of aggregate functions.

There is nothing wrong with our master. We just want to make sure we will not have bugs if we change the behavior of transform (change it from transformDown to Up.), which I think is very unlikely (but just incase).


---

* [SPARK-10162](https://issues.apache.org/jira/browse/SPARK-10162) | *Major* | **PySpark filters with datetimes mess up when datetimes have timezones.**

PySpark appears to ignore timezone information when filtering on (and working in general with) datetimes.

Please see the example below. The generated filter in the query plan is 5 hours off (my computer is EST).

{code}
In [1]: df = sc.sql.createDataFrame([], StructType([StructField("dt", TimestampType())]))

In [2]: df.filter(df.dt \> datetime(2000, 01, 01, tzinfo=UTC)).explain()
Filter (dt#9 \> 946702800000000)
 Scan PhysicalRDD[dt#9]
{code}

Note that 946702800000000 == Sat  1 Jan 2000 05:00:00 UTC


---

* [SPARK-10155](https://issues.apache.org/jira/browse/SPARK-10155) | *Critical* | **Memory leak in SQL parsers**

I saw a lot of `ThreadLocal` objects in the following app:
{code}
import org.apache.spark.\_
import org.apache.spark.sql.\_

object SparkApp {

  def foo(sqlContext: SQLContext): Unit = {
    import sqlContext.implicits.\_
    sqlContext.sparkContext.parallelize(Seq("aaa", "bbb", "ccc")).toDF().filter("length(\_1) \> 0").count()
  }

  def main(args: Array[String]): Unit = {
    val conf = new SparkConf().setAppName("sql-memory-leak")
    val sc = new SparkContext(conf)
    val sqlContext = new SQLContext(sc)
    while (true) {
      foo(sqlContext)
    }
  }
}
{code}
Running the above codes in a long time and finally it will OOM.

These "ThreadLocal"s are from "scala.util.parsing.combinator.Parsers.lastNoSuccessVar", which stores `Failure("end of input", ...)`.

There is an issue in Scala here: https://issues.scala-lang.org/browse/SI-9010
and some discussions here: https://issues.scala-lang.org/browse/SI-4929


---

* [SPARK-10117](https://issues.apache.org/jira/browse/SPARK-10117) | *Major* | **Implement SQL data source API for reading LIBSVM data**

It is convenient to implement data source API for LIBSVM format to have a better integration with DataFrames and ML pipeline API.

{code}
import org.apache.spark.ml.source.libsvm.\_

val training = sqlContext.read
  .format("libsvm")
  .option("numFeatures", "10000")
  .load("path")
{code}

This JIRA covers the following:

1. Read LIBSVM data as a DataFrame with two columns: label: Double and features: Vector.
2. Accept `numFeatures` as an option.
3. The implementation should live under `org.apache.spark.ml.source.libsvm`.


---

* [SPARK-10104](https://issues.apache.org/jira/browse/SPARK-10104) | *Major* | **Consolidate different forms of table identifiers**

Right now, we have QualifiedTableName, TableIdentifier, and Seq[String] to represent table identifiers. We should only have one form and looks TableIdentifier is the best one because it provides methods to get table name, database name, return unquoted string, and return quoted string. 

There will be TODOs having "SPARK-10104" in it. Those places need to be updated.


---

* [SPARK-10094](https://issues.apache.org/jira/browse/SPARK-10094) | *Major* | **Mark ML PySpark feature transformers as Experimental to match Scala**

The PySpark and Scala APIs should match Experimental tags for ml.feature.

This should be done after [SPARK-9665]


---

* [SPARK-10082](https://issues.apache.org/jira/browse/SPARK-10082) | *Minor* | **Validate i, j in apply (Dense and Sparse Matrices)**

Given row\_ind should be less than the number of rows
Given col\_ind should be less than the number of cols.

The current code in master gives unpredictable behavior for such cases.


---

* [SPARK-10079](https://issues.apache.org/jira/browse/SPARK-10079) | *Major* | **Make `column` and `col` functions be S4 functions**

{{column}} and {{col}} function at {{R/pkg/R/Column.R}} are currently defined as S3 functions. I think it would be better to define them as S4 functions.


---

* [SPARK-10077](https://issues.apache.org/jira/browse/SPARK-10077) | *Minor* | **Java package doc for spark.ml.feature**

Should be the same as SPARK-7808 but use Java for the code example.


---

* [SPARK-10071](https://issues.apache.org/jira/browse/SPARK-10071) | *Major* | **QueueInputDStream Should Allow Checkpointing**

I would like for https://issues.apache.org/jira/browse/SPARK-8630 to be reverted and that issue resolved as won’t fix, and for QueueInputDStream to revert to its old behavior of not throwing an exception if checkpointing is
enabled.

Why? The reason is that this fix which throws an exception if the DStream is being checkpointed breaks the primary use case for QueueInputDStream, which is testing. For example, the Spark Streaming documentation recommends using QueueInputDStream for testing.

Why does throwing an exception if checkpointing is used break this class? The reason is that if I use windowing operations or updateStateByKey then the StreamingContext requires that I enable checkpointing. It throws an exception if I don’t enable checkpointing. But then if I enable checkpointing this class throws an exception saying that I cannot use checkpointing with the queue stream. The end result of this is that I cannot use QueueInputDStream to test windowing operations and updateStateByKey. It can only be used for trivial stateless DStreams.

But would removing the exception-throwing logic make this code fragile? It should not. In the testing scenario the RDD that is passed into the QueueInputDStream is created through parallelize and it is checkpointable.

But what about people who are using QueueInputDStream in non-testing scenarios with non-recoverable RDDs? Perhaps a warning suffices here that checkpointing will not be able to recover state if their RDDs are non-recoverable. Then it is up to them how they resolve this situation.

Since right now we have no good way of determining if a QueueInputDStream contains RDDs that are recoverable or not, why not err on the side of leaving it to the user of the class to not expect recoverability, rather than forcing checkpointing.

In conclusion: my recommendation would be to revert to the old behavior and to resolve this bug as won’t fix.


---

* [SPARK-10065](https://issues.apache.org/jira/browse/SPARK-10065) | *Major* | **Avoid triple copy of var-length objects in Array in tungsten projection**

The first copy happens when we calculate the size of each element, after that, we copy the elements into array buffer, finally we copy the array buffer into row buffer. 

We could calculate the total size first, then convert the elements into row buffer directly.


---

* [SPARK-10064](https://issues.apache.org/jira/browse/SPARK-10064) | *Minor* | **Decision tree continuous feature binning is slow in large feature spaces**

When working with large feature spaces and high bin counts (\>500) the binning process can take many hours. This is particularly painful because it ties up executors for the duration, which is not shared-cluster friendly.

The binning process can and should be performed on the executors instead of the driver.


---

* [SPARK-10058](https://issues.apache.org/jira/browse/SPARK-10058) | *Critical* | **Flaky test: HeartbeatReceiverSuite: normal heartbeat**

https://amplab.cs.berkeley.edu/jenkins/view/Spark-QA-Test/job/Spark-1.5-SBT/116/AMPLAB\_JENKINS\_BUILD\_PROFILE=hadoop2.2,label=spark-test/testReport/junit/org.apache.spark/HeartbeatReceiverSuite/normal\_heartbeat/

{code}
Error Message

3 did not equal 2
Stacktrace

sbt.ForkMain$ForkError: 3 did not equal 2
	at org.scalatest.Assertions$class.newAssertionFailedException(Assertions.scala:500)
	at org.scalatest.FunSuite.newAssertionFailedException(FunSuite.scala:1555)
	at org.scalatest.Assertions$AssertionsHelper.macroAssert(Assertions.scala:466)
	at org.apache.spark.HeartbeatReceiverSuite$$anonfun$2.apply$mcV$sp(HeartbeatReceiverSuite.scala:104)
	at org.apache.spark.HeartbeatReceiverSuite$$anonfun$2.apply(HeartbeatReceiverSuite.scala:97)
	at org.apache.spark.HeartbeatReceiverSuite$$anonfun$2.apply(HeartbeatReceiverSuite.scala:97)
	at org.scalatest.Transformer$$anonfun$apply$1.apply$mcV$sp(Transformer.scala:22)
	at org.scalatest.OutcomeOf$class.outcomeOf(OutcomeOf.scala:85)
	at org.scalatest.OutcomeOf$.outcomeOf(OutcomeOf.scala:104)
	at org.scalatest.Transformer.apply(Transformer.scala:22)
	at org.scalatest.Transformer.apply(Transformer.scala:20)
	at org.scalatest.FunSuiteLike$$anon$1.apply(FunSuiteLike.scala:166)
	at org.apache.spark.SparkFunSuite.withFixture(SparkFunSuite.scala:42)
	at org.scalatest.FunSuiteLike$class.invokeWithFixture$1(FunSuiteLike.scala:163)
	at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:175)
	at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:175)
	at org.scalatest.SuperEngine.runTestImpl(Engine.scala:306)
	at org.scalatest.FunSuiteLike$class.runTest(FunSuiteLike.scala:175)
	at org.apache.spark.HeartbeatReceiverSuite.org$scalatest$BeforeAndAfterEach$$super$runTest(HeartbeatReceiverSuite.scala:41)
	at org.scalatest.BeforeAndAfterEach$class.runTest(BeforeAndAfterEach.scala:255)
	at org.apache.spark.HeartbeatReceiverSuite.runTest(HeartbeatReceiverSuite.scala:41)
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
	at org.apache.spark.HeartbeatReceiverSuite.org$scalatest$BeforeAndAfterAll$$super$run(HeartbeatReceiverSuite.scala:41)
	at org.scalatest.BeforeAndAfterAll$class.liftedTree1$1(BeforeAndAfterAll.scala:257)
	at org.scalatest.BeforeAndAfterAll$class.run(BeforeAndAfterAll.scala:256)
	at org.apache.spark.HeartbeatReceiverSuite.run(HeartbeatReceiverSuite.scala:41)
	at org.scalatest.tools.Framework.org$scalatest$tools$Framework$$runSuite(Framework.scala:462)
	at org.scalatest.tools.Framework$ScalaTestTask.execute(Framework.scala:671)
	at sbt.ForkMain$Run$2.call(ForkMain.java:294)
	at sbt.ForkMain$Run$2.call(ForkMain.java:284)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
{code}

This is really flaky (fail 30%)
https://amplab.cs.berkeley.edu/jenkins/view/Spark-QA-Test/job/Spark-1.5-SBT/116/AMPLAB\_JENKINS\_BUILD\_PROFILE=hadoop2.2,label=spark-test/testReport/junit/org.apache.spark/HeartbeatReceiverSuite/normal\_heartbeat/history/


---

* [SPARK-10056](https://issues.apache.org/jira/browse/SPARK-10056) | *Minor* | **PySpark Row - Support for row["columnName"] syntax**

Right now you can get Row element:
- by column name: row.columnName
- by index: row[index] (where index is integer)

My proposition is to add following syntax:
row["columnName"]

It will be solution similar to DataFrame behaviour and should be quite easy to implement with \_\_getitem\_\_ method.


---

* [SPARK-10040](https://issues.apache.org/jira/browse/SPARK-10040) | *Major* | **JDBC writer change to use batch insert for performance**

Currently JDBC write is using single row insert using executeUpdate() command instead change to executeBatch() which will handle multiple inserts by most databases in more efficient manner.


---

* [SPARK-10035](https://issues.apache.org/jira/browse/SPARK-10035) | *Minor* | **Parquet filters does not process EqualNullSafe filter.**

it is an issue followed by SPARK-9814.

Datasources (after {{selectFilters()}} in {{org.apache.spark.sql.execution.datasources.DataSourceStrategy}}) pass {{EqualNotNull}} to {{ParquetRelation}} but  {{ParquetFilters}} for {{ParquetRelation}} does not take and process this.


---

* [SPARK-10034](https://issues.apache.org/jira/browse/SPARK-10034) | *Major* | **add regression test for Sort on Aggregate**

Before #8371, there was a bug for `Sort` on `Aggregate` that we can't use aggregate expressions named `\_aggOrdering` and can't use more than one ordering expressions which contains aggregate functions. The reason of this bug is that: The aggregate expression in `SortOrder` never get resolved, we alias it with `\_aggOrdering` and call `toAttribute` which gives us an `UnresolvedAttribute`. So actually we are referencing aggregate expression by name, not by exprId like we thought. And if there is already an aggregate expression named `\_aggOrdering` or there are more than one ordering expressions having aggregate functions, we will have conflict names and can't search by name.

However, after #8371 got merged, the `SortOrder`s are guaranteed to be resolved and we are always referencing aggregate expression by exprId. The Bug doesn't exist anymore and this PR add regression tests for it.


---

* [SPARK-10027](https://issues.apache.org/jira/browse/SPARK-10027) | *Major* | **Add Python API missing methods for ml.feature**

Missing method of ml.feature are listed here:
\* StringIndexer lacks of parameter "handleInvalid".
\* StringIndexerModel lacks of method "labels". 
\* VectorIndexerModel lacks of methods "numFeatures" and "categoryMaps"


---

* [SPARK-10026](https://issues.apache.org/jira/browse/SPARK-10026) | *Major* | **Implement some common Params for regression in PySpark**

Currently some Params are not common classes in Python API which lead we need to write them for each class. The LinearRegression and LogisticRegression related Params are list here:

\* HasElasticNetParam
\* HasFitIntercept
\* HasStandardization
\* HasThresholds

We should implement them in shared params and make them can be used for all Transformer/Estimators. That will lead code more clean.


---

* [SPARK-10023](https://issues.apache.org/jira/browse/SPARK-10023) | *Major* | **Unified DecisionTreeParams "checkpointInterval" between Scala and Python API.**

"checkpointInterval" is member of DecisionTreeParams in Scala API which is inconsistency with Python API, we should unified them.

\* checkpointInterval
\*\* member of DecisionTreeParams \<-\> Scala API
\*\* shared param used for all ML Transformer/Estimator \<-\> Python API

Proposal:
"checkpointInterval" is also used by ALS, so we make it shared params at Scala.


---

* [SPARK-10013](https://issues.apache.org/jira/browse/SPARK-10013) | *Major* | **Remove Java assert from Java unit tests**

We should use assertTrue, etc. instead to make sure the asserts are not ignored in tests.


---

* [SPARK-10004](https://issues.apache.org/jira/browse/SPARK-10004) | *Critical* | **Shuffle service should make sure applications are allowed to read shuffle data**

The shuffle service currently performs authentication of clients; but once a client is authenticated, it blindly trusts the client to send proper requests.

A malicious client could send a {{OpenBlocks}} message to open another application's shuffle data, and the shuffle service will just do it. This can be used to work around the fact that the app cannot go directly to the other app's files in the local filesystem (due to permissions), while the shuffle service can.


---

* [SPARK-10003](https://issues.apache.org/jira/browse/SPARK-10003) | *Major* | **Improve readability of DAGScheduler**

There are many opportunities for improving DAGScheduler's readability. This issue will represent more of an incremental process than one specific patch.


---

* [SPARK-9994](https://issues.apache.org/jira/browse/SPARK-9994) | *Major* | **Create local TopK operator**

Similar to the existing TakeOrderedAndProject, except in a single thread.


---

* [SPARK-9986](https://issues.apache.org/jira/browse/SPARK-9986) | *Major* | **Create a simple test framework for local operators**

It'd be great if we can just create local query plans and test the correctness of their implementation directly.


---

* [SPARK-9984](https://issues.apache.org/jira/browse/SPARK-9984) | *Major* | **Create local physical operator interface**

The local operator interface should be similar to traditional database iterators, with open/close.


---

* [SPARK-9969](https://issues.apache.org/jira/browse/SPARK-9969) | *Minor* | **Remove old Yarn MR classpath api support for Spark Yarn client**

Since now we only support Yarn stable API, so here propose to remove old MRConfig.DEFAULT\_MAPREDUCE\_APPLICATION\_CLASSPATH api support in 2.0.


---

* [SPARK-9964](https://issues.apache.org/jira/browse/SPARK-9964) | *Minor* | **PySpark DataFrameReader accept RDD of String for JSON**

It would be nice (but not necessary) for the PySpark DataFrameReader to accept an RDD of Strings (like the Scala version does) for JSON, rather than only taking a path.

If this JIRA is accepted, it should probably be duplicated to cover the other input types (not just JSON).


---

* [SPARK-9963](https://issues.apache.org/jira/browse/SPARK-9963) | *Trivial* | **ML RandomForest cleanup: Move predictNodeIndex to LearningNode**

(updated form original description)

Move ml.tree.impl.RandomForest.predictNodeIndex to LearningNode.

We need to keep it as a separate method from Node.predictImpl because (a) it needs to operate on binned features and (b) it needs to return the node ID, not the node (because it can return the ID for nodes which do not yet exist).


---

* [SPARK-9962](https://issues.apache.org/jira/browse/SPARK-9962) | *Minor* | **Decision Tree training: prevNodeIdsForInstances.unpersist() at end of training**

NodeIdCache: prevNodeIdsForInstances.unpersist() needs to be called at end of training.

This applies to both the ML and MLlib implementations, but it is Ok to skip the MLlib implementation since it will eventually be replaced by the ML one.


---

* [SPARK-9954](https://issues.apache.org/jira/browse/SPARK-9954) | *Major* | **Vector.hashCode should use nonzeros**

Using only zeros is likely to cause hash collision.


---

* [SPARK-9935](https://issues.apache.org/jira/browse/SPARK-9935) | *Minor* | **EqualNullSafe not processed in OrcRelation**

it is an issue followed by SPARK-9814.

Now datasources (after {{selectFilters()}} in {{org.apache.spark.sql.execution.datasources.DataSourceStrategy}}) can pass {{EqualNotNull}} to relations but {{OrcRelation}} does not take and process this.

(ParquetRelation has also the same issue but it seems Parquet does not support the null-safe equal filter. It is confusing whether Parquet should support this or treat this as EqualFilter with additional codes in Spark code. Therefore, I made a separate issue only for ORC)


---

* [SPARK-9925](https://issues.apache.org/jira/browse/SPARK-9925) | *Major* | **Set SQLConf.SHUFFLE\_PARTITIONS.key correctly for tests**

Right now, in our TestSQLContext/TestHiveContext, we use {{override def numShufflePartitions: Int = this.getConf(SQLConf.SHUFFLE\_PARTITIONS, 5)}} to set {{SHUFFLE\_PARTITIONS}}. However, we never put it to SQLConf. So, after we use {{withSQLConf(SQLConf.SHUFFLE\_PARTITIONS.key -\> "number")}}, the number of shuffle partitions will be set back to 200.


---

* [SPARK-9924](https://issues.apache.org/jira/browse/SPARK-9924) | *Major* | **checkForLogs and cleanLogs are scheduled at fixed rate and can get piled up**

{{checkForLogs}} and {{cleanLogs}} are scheduled using {{ScheduledThreadPoolExecutor.scheduleAtFixedRate}}. When their execution takes more time than the interval at which they are scheduled, they get piled up.

This is a problem on its own but the existence of SPARK-7189 makes it even worse. Let's say there is an eventLog which takes 15s to parse and which happens to be the last modified file (that gets reloaded again and again due to SPARK-7189.) If this file stays the last modified file for, let's say, an hour, then a lot of executions of that file would have piled up as the default {{spark.history.fs.update.interval}} is 10s. If there is a new eventLog file now, it won't show up in the history server ui for a long time.


---

* [SPARK-9923](https://issues.apache.org/jira/browse/SPARK-9923) | *Trivial* | **ShuffleMapStage.numAvailableOutputs should be an Int instead of Long**

Not sure why it was made a Long, but every usage assumes it's an Int.


---

* [SPARK-9869](https://issues.apache.org/jira/browse/SPARK-9869) | *Critical* | **Flaky test: o.a.s.streaming.InputStreamSuite - socket input stream**

https://amplab.cs.berkeley.edu/jenkins/view/Spark-QA-Test/job/Spark-1.5-SBT/68/AMPLAB\_JENKINS\_BUILD\_PROFILE=hadoop2.3,label=centos/testReport/junit/org.apache.spark.streaming/InputStreamsSuite/socket\_input\_stream/

{code}
org.apache.spark.streaming.InputStreamsSuite.socket input stream


sbt.ForkMain$ForkError: 4 did not equal 5
	at org.scalatest.Assertions$class.newAssertionFailedException(Assertions.scala:500)
	at org.scalatest.FunSuite.newAssertionFailedException(FunSuite.scala:1555)
	at org.scalatest.Assertions$AssertionsHelper.macroAssert(Assertions.scala:466)
	at org.apache.spark.streaming.InputStreamsSuite$$anonfun$1$$anonfun$apply$mcV$sp$4$$anonfun$apply$5.apply(InputStreamsSuite.scala:80)
	at org.apache.spark.streaming.InputStreamsSuite$$anonfun$1$$anonfun$apply$mcV$sp$4$$anonfun$apply$5.apply(InputStreamsSuite.scala:53)
	at org.apache.spark.streaming.TestSuiteBase$class.withStreamingContext(TestSuiteBase.scala:272)
	at org.apache.spark.streaming.InputStreamsSuite.withStreamingContext(InputStreamsSuite.scala:45)
	at org.apache.spark.streaming.InputStreamsSuite$$anonfun$1$$anonfun$apply$mcV$sp$4.apply(InputStreamsSuite.scala:53)
	at org.apache.spark.streaming.InputStreamsSuite$$anonfun$1$$anonfun$apply$mcV$sp$4.apply(InputStreamsSuite.scala:48)
	at org.apache.spark.streaming.TestSuiteBase$class.withTestServer(TestSuiteBase.scala:289)
	at org.apache.spark.streaming.InputStreamsSuite.withTestServer(InputStreamsSuite.scala:45)
	at org.apache.spark.streaming.InputStreamsSuite$$anonfun$1.apply$mcV$sp(InputStreamsSuite.scala:48)
	at org.apache.spark.streaming.InputStreamsSuite$$anonfun$1.apply(InputStreamsSuite.scala:48)
	at org.apache.spark.streaming.InputStreamsSuite$$anonfun$1.apply(InputStreamsSuite.scala:48)

{code}


---

* [SPARK-9867](https://issues.apache.org/jira/browse/SPARK-9867) | *Major* | **Move utilities for binary data into ByteArray**

The utilities such as Substring#substringBinarySQL and BinaryPrefixComparator#computePrefix for binary data are put together in ByteArray for easy-to-read.


---

* [SPARK-9841](https://issues.apache.org/jira/browse/SPARK-9841) | *Major* | **Params.clear needs to be public**

It is currently impossible to clear Param values once set.  It would be helpful to be able to.


---

* [SPARK-9834](https://issues.apache.org/jira/browse/SPARK-9834) | *Major* | **Normal equation solver for ordinary least squares**

Add normal equation solver for ordinary least squares with not many features. The approach requires one pass to collect AtA and Atb, then solve the problem on driver. It works well when the problem is not very ill-conditioned and not having many columns. It also provides R-like summary statistics.

We can hide this implementation under LinearRegression. It is triggered when there are no more than, e.g., 4096 features.


---

* [SPARK-9833](https://issues.apache.org/jira/browse/SPARK-9833) | *Minor* | **Add options to explicitly disable delegation token retrieval for non-HDFS**

In 1.4, code was added to fetch delegation tokens for Hive metastores and HBase masters. That code is run regardless of whether the user app actually needs those tokens, since there's no way for Spark to know otherwise.

In the best case, that's just unnecessary overhead. In some cases, the Hadoop / Hive / HBase configuration being loaded may contain references to things that Spark doesn't have access to (e.g. Sentry classes), and the Spark application might fail to start.

Adding explicit configuration options to disable those would help, since currently the only way is to set some specific Hive / HBase configuration values, which is kinda brittle.


---

* [SPARK-9821](https://issues.apache.org/jira/browse/SPARK-9821) | *Minor* | **pyspark reduceByKey should allow a custom partitioner**

In Scala, I can supply a custom partitioner to reduceByKey (and other aggregation/repartitioning methods like aggregateByKey and combinedByKey), but as far as I can tell from the Pyspark API, there's no way to do the same in Python.

Here's an example of my code in Scala:

{code}weblogs.map(s =\> (getFileType(s), 1)).reduceByKey(new FileTypePartitioner(),\_+\_){code}

But I can't figure out how to do the same in Python.  The closest I can get is to call repartition before reduceByKey like so:
{code}weblogs.map(lambda s: (getFileType(s), 1)).partitionBy(3,hash\_filetype).reduceByKey(lambda v1,v2: v1+v2).collect(){code}

But that defeats the purpose, because I'm shuffling twice instead of once, so my performance is worse instead of better.


---

* [SPARK-9810](https://issues.apache.org/jira/browse/SPARK-9810) | *Major* | **Remove individual commit messages from the squash commit message**

I took a look at the commit messages in git log -- it looks like the individual commit messages are not that useful to include, but do make the commit messages more verbose. They are usually just a bunch of extremely concise descriptions of "bug fixes", "merges", etc:

{code}
    cb3f12d [xxx] add whitespace
    6d874a6 [xxx] support pyspark for yarn-client

    89b01f5 [yyy] Update the unit test to add more cases
    275d252 [yyy] Address the comments
    7cc146d [yyy] Address the comments
    2624723 [yyy] Fix rebase conflict
    45befaa [yyy] Update the unit test
    bbc1c9c [yyy] Fix checkpointing doesn't retain driver port issue
{code}

See mailing list discussions: http://apache-spark-developers-list.1001551.n3.nabble.com/discuss-Removing-individual-commit-messages-from-the-squash-commit-message-td13295.html


---

* [SPARK-9808](https://issues.apache.org/jira/browse/SPARK-9808) | *Major* | **Remove hash shuffle file consolidation**

I think that we should remove {{spark.shuffle.consolidateFiles}} and its associated implementation for Spark 1.5.0. This feature isn't properly tested and does not work with the external shuffle service. Since it's likely to be buggy and since its motivation has been subsumed by sort-based shuffle, I think it's a prime candidate for removal now.


---

* [SPARK-9798](https://issues.apache.org/jira/browse/SPARK-9798) | *Minor* | **CrossValidatorModel Documentation Improvements**

CrossValidatorModel's avgMetrics and bestModel need documentation.


---

* [SPARK-9794](https://issues.apache.org/jira/browse/SPARK-9794) | *Major* | **ISO DateTime parser is too strict**

The DateTime parser requires 3 millisecond digits, but that is not part of the official ISO8601 spec.

https://github.com/apache/spark/blob/master/sql/catalyst/src/main/scala/org/apache/spark/sql/catalyst/util/DateTimeUtils.scala#L132

https://en.wikipedia.org/wiki/ISO\_8601

This results in the following exception when trying to parse datetime columns

{code}
java.text.ParseException: Unparseable date: "0001-01-01T00:00:00GMT-00:00"
{code}

[~joshrosen] [~rxin]


---

* [SPARK-9793](https://issues.apache.org/jira/browse/SPARK-9793) | *Critical* | **PySpark DenseVector, SparseVector should override \_\_eq\_\_ and \_\_hash\_\_**

See [SPARK-9750].
PySpark DenseVector and SparseVector do not override the equality operator properly.  They should use semantics, not representation, for comparison.  (This is what Scala currently does.)


---

* [SPARK-9782](https://issues.apache.org/jira/browse/SPARK-9782) | *Major* | **Add support for YARN application tags running Spark on YARN**

https://issues.apache.org/jira/browse/YARN-1390 originally added the new “Application Tags” feature to YARN to help track the sources of applications among many possible YARN clients. https://issues.apache.org/jira/browse/YARN-1399 improved on this to allow a set of tags to be applied, and for comparison, https://issues.apache.org/jira/browse/MAPREDUCE-5699 added support for MapReduce to easily propagate tags through to YARN via Configuration settings.

Since the ApplicationSubmissionContext.setApplicationTags method was only added in Hadoop 2.4+, Spark support will invoke the method via reflection the same way other such version-specific methods are called in elsewhere in the YARN client. Since the usage of tags is generally not critical to the functionality of older YARN setups, it should be safe to handle NoSuchMethodException with just a logWarning.


---

* [SPARK-9774](https://issues.apache.org/jira/browse/SPARK-9774) | *Major* | **Add Python API for ml.regression.IsotonicRegression**

Add Python API, user guide and example for ml.regression.IsotonicRegression


---

* [SPARK-9773](https://issues.apache.org/jira/browse/SPARK-9773) | *Major* | **Add Python API for MultilayerPerceptronClassifier**

Add Python API for MultilayerPerceptronClassifier


---

* [SPARK-9772](https://issues.apache.org/jira/browse/SPARK-9772) | *Minor* | **Add Python API for ml.feature.VectorSlicer**

Add Python API, user guide and example for ml.feature.VectorSlicer


---

* [SPARK-9769](https://issues.apache.org/jira/browse/SPARK-9769) | *Major* | **Add Python API for ml.feature.CountVectorizer**

Add Python API, user guide and example for ml.feature.CountVectorizerModel


---

* [SPARK-9767](https://issues.apache.org/jira/browse/SPARK-9767) | *Major* | **Remove ConnectionManager**

We introduced the Netty network module for shuffle in Spark 1.2, and has turned it on by default for 3 releases. The old ConnectionManager is difficult to maintain. It's time to remove it.


---

* [SPARK-9748](https://issues.apache.org/jira/browse/SPARK-9748) | *Trivial* | **Centriod typo in KMeansModel**

A minor typo (centriod -\> centroid). Readable variable names help every users.


---

* [SPARK-9741](https://issues.apache.org/jira/browse/SPARK-9741) | *Major* | **approx count distinct function**

Add the approximate count distinct function to the new interface.


---

* [SPARK-9724](https://issues.apache.org/jira/browse/SPARK-9724) | *Minor* | **Avoid unnecessary redirects in the Spark Web UI**

When opening Spark's Web UI for an application, there are a number of redirects which makes it feel slow. We can avoid one of them.

{code}
vagrant@localhost:~ $ curl -i http://localhost:18080/history/application\_1438648766072\_0005/
HTTP/1.1 302 Found
Location: http://localhost:18080/history/application\_1438648766072\_0005/
Content-Length: 0
Server: Jetty(8.y.z-SNAPSHOT)

vagrant@localhost:~ $ curl -i http://localhost:18080/history/application\_1438648766072\_0005/
HTTP/1.1 302 Found
Location: http://localhost:18080/history/application\_1438648766072\_0005/jobs
Content-Length: 0
Server: Jetty(8.y.z-SNAPSHOT)

vagrant@localhost:~ $ curl -i http://localhost:18080/history/application\_1438648766072\_0005/jobs
HTTP/1.1 302 Found
Location: http://localhost:18080/history/application\_1438648766072\_0005/jobs/
Content-Length: 0
Server: Jetty(8.y.z-SNAPSHOT)

vagrant@localhost:~ $ curl -i http://localhost:18080/history/application\_1438648766072\_0005/jobs/
HTTP/1.1 200 OK
Content-Type: text/html;charset=UTF-8
Cache-Control: no-cache, no-store, must-revalidate
Content-Length: 5267
Server: Jetty(8.y.z-SNAPSHOT)
{code}


---

* [SPARK-9723](https://issues.apache.org/jira/browse/SPARK-9723) | *Minor* | **Params.getOrDefault should throw more meaningful exception**

Params.getOrDefault should throw a more meaningful exception than what you get from a bad key lookup.


---

* [SPARK-9720](https://issues.apache.org/jira/browse/SPARK-9720) | *Minor* | **spark.ml Identifiable types should have UID in toString methods**

It would be nice to include the UID (instance name) in toString methods.  That's the default behavior for Identifiable, but some types override the default toString and do not include the UID.


---

* [SPARK-9718](https://issues.apache.org/jira/browse/SPARK-9718) | *Minor* | **LinearRegressionTrainingSummary should hold all columns in transformed data**

LinearRegression training summary: The transformed dataset should hold all columns, not just selected ones like prediction and label.  There is no real need to remove some, and the user may find them useful.


---

* [SPARK-9715](https://issues.apache.org/jira/browse/SPARK-9715) | *Minor* | **Store numFeatures in all ML PredictionModel types**

The PredictionModel abstraction should store numFeatures.  Currently, only RandomForest\* types do this.


---

* [SPARK-9708](https://issues.apache.org/jira/browse/SPARK-9708) | *Major* | **Spark should create local temporary directories in Mesos sandbox when launched with Mesos**

Currently Spark creates temporary directories with Utils.getConfiguredLocalDirs, and it writes to YARN directories if YARN is detected, otherwise just writes in a temporary directory in the host.

However, Mesos does create a directory per task and ideally Spark should use that directory to create its local temporary directories since it then can be cleaned up when the task is gone and not left on the host or cleaned until reboot.


---

* [SPARK-9702](https://issues.apache.org/jira/browse/SPARK-9702) | *Major* | **Repartition operator should use Exchange to perform its shuffle**

Spark SQL's {{Repartition}} operator is implemented in terms of Spark Core's repartition operator, which means that it has to perform lots of unnecessary row copying and inefficient row serialization. Instead, it would be better if this was implemented using some of Exchange's internals so that it can avoid row format conversions and generic getters / hashcodes.


---

* [SPARK-9698](https://issues.apache.org/jira/browse/SPARK-9698) | *Major* | **Add feature interaction as a transformer**

Add feature interaction as a transformer, which takes a list of vector/double columns, and generate a single vector column that contains the interactions (multiplication) among them with proper handling of feature names.


---

* [SPARK-9681](https://issues.apache.org/jira/browse/SPARK-9681) | *Major* | **Support R feature interactions in RFormula**

Support the interaction (":") operator RFormula feature transformer, so that it is available for use in SparkR's glm.

Umbrella design doc for RFormula integration: https://docs.google.com/document/d/10NZNSEurN2EdWM31uFYsgayIPfCFHiuIu3pCWrUmP\_c/edit?pli=1


---

* [SPARK-9672](https://issues.apache.org/jira/browse/SPARK-9672) | *Minor* | **Drivers run in cluster mode on mesos may not have spark-env variables available**

This issue definitely affects Mesos mode, but may effect complex standalone topologies as well.

When running spark-submit with {noformat}--deploy-mode cluster{noformat} environment variables set in {{spark-env.sh}} that are not prefixed with {{SPARK\_}} are not available in the driver process. The behavior I expect is that any variables set in {{spark-env.sh}} are available on the driver and all executors.

{{spark-env.sh}} is executed by {{load-spark-env.sh}} which uses an environment variable {{SPARK\_ENV\_LOADED}} [[code\|https://github.com/apache/spark/blob/master/bin/load-spark-env.sh#L25]] to ensure that it is only run once. When using the {{RestSubmissionClient}}, spark submit propagates all environment variables that are prefixed with {{SPARK\_}} [[code\|https://github.com/apache/spark/blob/3c0156899dc1ec1f7dfe6d7c8af47fa6dc7d00bf/core/src/main/scala/org/apache/spark/deploy/rest/RestSubmissionClient.scala#L400]] to the {{MesosRestServer}} where they are used to initialize the driver [[code\|https://github.com/apache/spark/blob/3c0156899dc1ec1f7dfe6d7c8af47fa6dc7d00bf/core/src/main/scala/org/apache/spark/deploy/rest/StandaloneRestServer.scala#L155]]. During this process, {{SPARK\_ENV\_LOADED}} is propagated to the new driver process (since running spark submit has caused {{load-spark-env.sh}} to be run on the submitter's machine) [[code\|https://github.com/apache/spark/blob/d86bbb4e286f16f77ba125452b07827684eafeed/core/src/main/scala/org/apache/spark/scheduler/cluster/mesos/MesosClusterScheduler.scala#L371]]. Now when {{load-spark-env.sh}} is called by {{MesosClusterScheduler}} {{SPARK\_ENV\_LOADED}} is set and {{spark-env.sh}} is never sourced.

[This gist\|https://gist.github.com/pashields/9fe662d6ec5c079bdf70] shows the testing setup I used while investigating this issue. An example invocation looked like {noformat}spark-1.5.0-SNAPSHOT-bin-custom-spark/bin/spark-submit --deploy-mode cluster --master mesos://172.31.34.154:7077 --class Test spark-env-var-test\_2.10-0.1-SNAPSHOT.jar{noformat}


---

* [SPARK-9669](https://issues.apache.org/jira/browse/SPARK-9669) | *Major* | **Support PySpark with Mesos Cluster mode**

PySpark with cluster mode with Mesos is not yet supported.
We need to enable it and make sure it's able to launch Pyspark jobs.


---

* [SPARK-9643](https://issues.apache.org/jira/browse/SPARK-9643) | *Major* | **Error serializing datetimes with timezones using Dataframes and Parquet**

Trying to serialize a DataFrame with a datetime column that includes a timezone fails with the following error.

{code}
net.razorvine.pickle.PickleException: invalid pickle data for datetime; expected 1 or 7 args, got 2
    at net.razorvine.pickle.objects.DateTimeConstructor.createDateTime(DateTimeConstructor.java:69)
    at net.razorvine.pickle.objects.DateTimeConstructor.construct(DateTimeConstructor.java:32)
    at net.razorvine.pickle.Unpickler.load\_reduce(Unpickler.java:701)
    at net.razorvine.pickle.Unpickler.dispatch(Unpickler.java:171)
    at net.razorvine.pickle.Unpickler.load(Unpickler.java:85)
    at net.razorvine.pickle.Unpickler.loads(Unpickler.java:98)
    at org.apache.spark.api.python.SerDeUtil$$anonfun$pythonToJava$1$$anonfun$apply$1.apply(SerDeUtil.scala:151)
    at org.apache.spark.api.python.SerDeUtil$$anonfun$pythonToJava$1$$anonfun$apply$1.apply(SerDeUtil.scala:150)
    at scala.collection.Iterator$$anon$13.hasNext(Iterator.scala:371)
    at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
    at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
    at org.apache.spark.sql.execution.datasources.InsertIntoHadoopFsRelation.org$apache$spark$sql$execution$datasources$InsertIntoHadoopFsRelation$$writeRows$1(commands.scala:185)
    at org.apache.spark.sql.execution.datasources.InsertIntoHadoopFsRelation$$anonfun$insert$1.apply(commands.scala:163)
    at org.apache.spark.sql.execution.datasources.InsertIntoHadoopFsRelation$$anonfun$insert$1.apply(commands.scala:163)
    at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:64)
    at org.apache.spark.scheduler.Task.run(Task.scala:86)
    at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:214)
    at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
    at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
    at java.lang.Thread.run(Thread.java:745)
{code}

According to [~davies] timezone serialization is done directly in Spark and not dependent on Pyrolite, but I was not able to prove that.

Upgrading to Pyrolite 4.9 fixed this issue

https://github.com/apache/spark/pull/7950


---

* [SPARK-9642](https://issues.apache.org/jira/browse/SPARK-9642) | *Major* | **LinearRegression should supported weighted data**

In many modeling application, data points are not necessarily sampled with equal probabilities. Linear regression should support weighting which account the over or under sampling.


---

* [SPARK-9617](https://issues.apache.org/jira/browse/SPARK-9617) | *Minor* | **Implement json\_tuple**

Provide a native Spark implementation for {{json\_tuple}}


---

* [SPARK-9613](https://issues.apache.org/jira/browse/SPARK-9613) | *Major* | **Ban use of JavaConversions and migrate all existing uses to JavaConverters**

Spark's style checker should ban the use of Scala's JavaConversions, which provides implicit conversions between Java and Scala collections types.  Instead, we should be performing these conversions explicitly using JavaConverters (or forgoing the conversions altogether if they're occurring inside of performance-critical code).


---

* [SPARK-9596](https://issues.apache.org/jira/browse/SPARK-9596) | *Major* | **Avoid reloading Hadoop classes like UserGroupInformation**

Some hadoop classes contains global information such as authentication in UserGroupInformation. If we load them again in `IsolatedClientLoader`, the message they carry will be dropped.

So we should treat hadoop classes as "shared" too.


---

* [SPARK-9591](https://issues.apache.org/jira/browse/SPARK-9591) | *Major* | **Job failed for exception during getting Broadcast variable**

Job might failed for exception throw when  we  getting the broadcast variable especially using dynamic resource allocate.
driver log
{noformat}
2015-07-21 05:36:31 INFO 15/07/21 05:36:31 WARN TaskSetManager: Lost task 496.1 in stage 19.0 (TID 1715, XXXXXX): java.io.IOException: Failed to connect to XXXXX:27072
at org.apache.spark.network.client.TransportClientFactory.createClient(TransportClientFactory.java:191)
at org.apache.spark.network.client.TransportClientFactory.createClient(TransportClientFactory.java:156)
at org.apache.spark.network.netty.NettyBlockTransferService$$anon$1.createAndStart(NettyBlockTransferService.scala:78)
at org.apache.spark.network.shuffle.RetryingBlockFetcher.fetchAllOutstanding(RetryingBlockFetcher.java:140)
at org.apache.spark.network.shuffle.RetryingBlockFetcher.access$200(RetryingBlockFetcher.java:43)
at org.apache.spark.network.shuffle.RetryingBlockFetcher$1.run(RetryingBlockFetcher.java:170)
at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:441)
at java.util.concurrent.FutureTask$Sync.innerRun(FutureTask.java:303)
at java.util.concurrent.FutureTask.run(FutureTask.java:138)
at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:886)
at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:908)
at java.lang.Thread.run(Thread.java:662)
Caused by: java.net.ConnectException: Connection refused: xxxxxx:27072
at sun.nio.ch.SocketChannelImpl.checkConnect(Native Method)
at sun.nio.ch.SocketChannelImpl.finishConnect(SocketChannelImpl.java:567)
at io.netty.channel.socket.nio.NioSocketChannel.doFinishConnect(NioSocketChannel.java:208)
at io.netty.channel.nio.AbstractNioChannel$AbstractNioUnsafe.finishConnect(AbstractNioChannel.java:287)
at io.netty.channel.nio.NioEventLoop.processSelectedKey(NioEventLoop.java:528)
at io.netty.channel.nio.NioEventLoop.processSelectedKeysOptimized(NioEventLoop.java:468)
at io.netty.channel.nio.NioEventLoop.processSelectedKeys(NioEventLoop.java:382)
at io.netty.channel.nio.NioEventLoop.run(NioEventLoop.java:354)
at io.netty.util.concurrent.SingleThreadEventExecutor$2.run(SingleThreadEventExecutor.java:116)
... 1 more
15/07/21 05:36:32 WARN TaskSetManager: Lost task 496.2 in stage 19.0 (TID 1744, xxxxx): java.io.IOException: Failed to connect to XXXX/XXXXXXXX:34070
at org.apache.spark.network.client.TransportClientFactory.createClient(TransportClientFactory.java:191)
at org.apache.spark.network.client.TransportClientFactory.createClient(TransportClientFactory.java:156)
at org.apache.spark.network.netty.NettyBlockTransferService$$anon$1.createAndStart(NettyBlockTransferService.scala:78)
at org.apache.spark.network.shuffle.RetryingBlockFetcher.fetchAllOutstanding(RetryingBlockFetcher.java:140)
at org.apache.spark.network.shuffle.RetryingBlockFetcher.access$200(RetryingBlockFetcher.java:43)
at org.apache.spark.network.shuffle.RetryingBlockFetcher$1.run(RetryingBlockFetcher.java:170)
at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:441)
at java.util.concurrent.FutureTask$Sync.innerRun(FutureTask.java:303)
at java.util.concurrent.FutureTask.run(FutureTask.java:138)
at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:886)
at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:908)
at java.lang.Thread.run(Thread.java:662)
Caused by: java.net.ConnectException: Connection refused: xxx:34070
at sun.nio.ch.SocketChannelImpl.checkConnect(Native Method)
at sun.nio.ch.SocketChannelImpl.finishConnect(SocketChannelImpl.java:567)
at io.netty.channel.socket.nio.NioSocketChannel.doFinishConnect(NioSocketChannel.java:208)
at io.netty.channel.nio.AbstractNioChannel$AbstractNioUnsafe.finishConnect(AbstractNioChannel.java:287)
at io.netty.channel.nio.NioEventLoop.processSelectedKey(NioEventLoop.java:528)
at io.netty.channel.nio.NioEventLoop.processSelectedKeysOptimized(NioEventLoop.java:468)
at io.netty.channel.nio.NioEventLoop.processSelectedKeys(NioEventLoop.java:382)
at io.netty.channel.nio.NioEventLoop.run(NioEventLoop.java:354)
at io.netty.util.concurrent.SingleThreadEventExecutor$2.run(SingleThreadEventExecutor.java:116)
... 1 more

org.apache.spark.SparkException: Job aborted due to stage failure: Task 496 in stage 19.0 failed 4 times
{noformat}

executor log
{noformat}
15/07/21 05:36:17 ERROR shuffle.RetryingBlockFetcher: Exception while beginning fetch of 1 outstanding blocks
java.io.IOException: Failed to connect to xxx
        at org.apache.spark.network.client.TransportClientFactory.createClient(TransportClientFactory.java:191)
        at org.apache.spark.network.client.TransportClientFactory.createClient(TransportClientFactory.java:156)
        at org.apache.spark.network.netty.NettyBlockTransferService$$anon$1.createAndStart(NettyBlockTransferService.scala:78)
        at org.apache.spark.network.shuffle.RetryingBlockFetcher.fetchAllOutstanding(RetryingBlockFetcher.java:140)
        at org.apache.spark.network.shuffle.RetryingBlockFetcher.start(RetryingBlockFetcher.java:120)
        at org.apache.spark.network.netty.NettyBlockTransferService.fetchBlocks(NettyBlockTransferService.scala:87)
        at org.apache.spark.network.BlockTransferService.fetchBlockSync(BlockTransferService.scala:89)
        at org.apache.spark.storage.BlockManager$$anonfun$doGetRemote$2.apply(BlockManager.scala:592)
        at org.apache.spark.storage.BlockManager$$anonfun$doGetRemote$2.apply(BlockManager.scala:590)
        at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
        at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
        at org.apache.spark.storage.BlockManager.doGetRemote(BlockManager.scala:590)
        at org.apache.spark.storage.BlockManager.getRemoteBytes(BlockManager.scala:584)
        at org.apache.spark.broadcast.TorrentBroadcast$$anonfun$org$apache$spark$broadcast$TorrentBroadcast$$readBlocks$1.org$apache$spark$broadcast$TorrentBroadcast$$anonfun$$getRemote$1(TorrentBroadcast.scala:127)
        at org.apache.spark.broadcast.TorrentBroadcast$$anonfun$org$apache$spark$broadcast$TorrentBroadcast$$readBlocks$1$$anonfun$1.apply(TorrentBroadcast.scala:137)
        at org.apache.spark.broadcast.TorrentBroadcast$$anonfun$org$apache$spark$broadcast$TorrentBroadcast$$readBlocks$1$$anonfun$1.apply(TorrentBroadcast.scala:137)
        at scala.Option.orElse(Option.scala:257)
        at org.apache.spark.broadcast.TorrentBroadcast$$anonfun$org$apache$spark$broadcast$TorrentBroadcast$$readBlocks$1.apply$mcVI$sp(TorrentBroadcast.scala:137)
        at org.apache.spark.broadcast.TorrentBroadcast$$anonfun$org$apache$spark$broadcast$TorrentBroadcast$$readBlocks$1.apply(TorrentBroadcast.scala:120)
        at org.apache.spark.broadcast.TorrentBroadcast$$anonfun$org$apache$spark$broadcast$TorrentBroadcast$$readBlocks$1.apply(TorrentBroadcast.scala:120)
        at scala.collection.immutable.List.foreach(List.scala:318)
        at org.apache.spark.broadcast.TorrentBroadcast.org$apache$spark$broadcast$TorrentBroadcast$$readBlocks(TorrentBroadcast.scala:120)
        at org.apache.spark.broadcast.TorrentBroadcast$$anonfun$readBroadcastBlock$1.apply(TorrentBroadcast.scala:175)
        at org.apache.spark.util.Utils$.tryOrIOException(Utils.scala:1246)
        at org.apache.spark.broadcast.TorrentBroadcast.readBroadcastBlock(TorrentBroadcast.scala:165)
        at org.apache.spark.broadcast.TorrentBroadcast.\_value$lzycompute(TorrentBroadcast.scala:64)
        at org.apache.spark.broadcast.TorrentBroadcast.\_value(TorrentBroadcast.scala:64)
        at org.apache.spark.broadcast.TorrentBroadcast.getValue(TorrentBroadcast.scala:88)
        at org.apache.spark.broadcast.Broadcast.value(Broadcast.scala:70)
        at org.apache.spark.rdd.HadoopRDD.getJobConf(HadoopRDD.scala:132)
        at org.apache.spark.rdd.HadoopRDD$$anon$1.\<init\>(HadoopRDD.scala:216)
        at org.apache.spark.rdd.HadoopRDD.compute(HadoopRDD.scala:212)
        at org.apache.spark.rdd.HadoopRDD.compute(HadoopRDD.scala:93)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
        at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
        at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
        at org.apache.spark.rdd.UnionRDD.compute(UnionRDD.scala:87)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
        at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
        at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
        at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:70)
        at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:41)
        at org.apache.spark.scheduler.Task.run(Task.scala:64)
        at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:209)
        at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:886)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:908)
        at java.lang.Thread.run(Thread.java:662)
{noformat}
When we getting the broadcast variable, we can fetch the block form several location,but now when connecting the \*lost blockmanager\*(idle for enough time removed by driver when using dynamic resource allocate and so on)  will cause task fail,and the worse case will caused the job fail.


---

* [SPARK-9585](https://issues.apache.org/jira/browse/SPARK-9585) | *Major* | **HiveHBaseTableInputFormat can'be cached**

Below exception occurs in Spark On HBase function.
{quote}
java.lang.RuntimeException: java.util.concurrent.RejectedExecutionException: Task org.apache.hadoop.hbase.client.ResultBoundedCompletionService$QueueingFuture@11c6577 rejected from java.util.concurrent.ThreadPoolExecutor@3414350b[Terminated, pool size = 0, active threads = 0, queued tasks = 0, completed tasks = 17451]
{quote}

When an executor has many cores, the tasks belongs to same RDD will using the same InputFormat. But the HiveHBaseTableInputFormat is not thread safety.
So I think we should add a config to enable cache InputFormat or not.


---

* [SPARK-9570](https://issues.apache.org/jira/browse/SPARK-9570) | *Minor* | **Consistent recommendation for submitting spark apps to YARN, -master yarn --deploy-mode x vs -master yarn-x'.**

There are still some inconsistencies in the documentation regarding submission of the applications for yarn.
SPARK-3629 was done to correct the same but 
http://spark.apache.org/docs/latest/submitting-applications.html#master-urls
still has yarn-client and yarn-client as opposed to the nor of having 
--master yarn and --deploy-mode cluster / client

Need to change this appropriately (if needed) to avoid confusion:
https://spark.apache.org/docs/latest/running-on-yarn.html


---

* [SPARK-9547](https://issues.apache.org/jira/browse/SPARK-9547) | *Major* | **Allow testing pull requests with different Hadoop versions**

Similar to SPARK-9545 we should allow testing different Hadoop profiles in the PRB.


---

* [SPARK-9545](https://issues.apache.org/jira/browse/SPARK-9545) | *Major* | **Run Maven tests in pull request builder if title has "[test-maven]" in it**

We have infrastructure now in the build tooling for running maven tests, but it's not actually used anywhere. With a very minor change we can support running maven tests if the pull request title has "maven-test" in it.


---

* [SPARK-9522](https://issues.apache.org/jira/browse/SPARK-9522) | *Minor* | **SparkSubmit process can not exit if kill application when HiveThriftServer was starting**

When we start HiveThriftServer, we will start SparkContext first, then start HiveServer2, if we kill application while HiveServer2 is starting then SparkContext will stop successfully, but SparkSubmit process can not exit.


---

* [SPARK-9439](https://issues.apache.org/jira/browse/SPARK-9439) | *Critical* | **ExternalShuffleService should be robust to NodeManager restarts in yarn**

Yarn applications should be robust to NodeManager restarts in general.   However, if you run with the external shuffle service enabled, after a NM restart, you will observe failures like:

{noformat}
2015-07-22 18:30:18,212 ERROR org.apache.spark.network.server.TransportRequestHandler: Error while invoking RpcHandler#receive() on RPC id 5405054848584757735
java.lang.RuntimeException: Executor is not registered (appId=application\_1437612356649\_0008, execId=73)
        at org.apache.spark.network.shuffle.ExternalShuffleBlockManager.getBlockData(ExternalShuffleBlockManager.java:105)
...
{noformat}

This is because when the NM restarts (and restarts the ExternalShuffleService), it doesn't call {{ExternalShuffleBlockResolver#registerExecutor}}


---

* [SPARK-9401](https://issues.apache.org/jira/browse/SPARK-9401) | *Major* | **Fully implement code generation for ConcatWs**

In ConcatWs, we fall back to interpreted mode if the input is a mix of string and array of strings. We should have code gen for those as well.


---

* [SPARK-9280](https://issues.apache.org/jira/browse/SPARK-9280) | *Major* | **New HiveContext object unexpectedly loads configuration settings from history**

In a spark session, stopping a spark context and create a new spark context and hive context does not clean the spark sql configuration. More precisely, the new hive context still keeps the previous configuration settings. It would be great if someone can let us know how to avoid this situation.

{code:title=New hive context should not load the configurations from history}

sqlContext.setConf( "spark.sql.shuffle.partitions", "10")
sc.stop

val sparkConf2 = new org.apache.spark.SparkConf()
val sc2 = new org.apache.spark.SparkContext( sparkConf2 ) 
val sqlContext2 = new org.apache.spark.sql.hive.HiveContext( sc2 )

sqlContext2.getConf( "spark.sql.shuffle.partitions", "20") 
// got 20 as expected

sqlContext2.setConf( "foo", "foo") 

sqlContext2.getConf( "spark.sql.shuffle.partitions", "30")
// expected 30 but got 10

{code}


---

* [SPARK-9170](https://issues.apache.org/jira/browse/SPARK-9170) | *Major* | **ORC data source creates a schema with lowercase table names**

Steps to reproduce:

{code}
sqlContext.range(0, 10).select('id as "Acol").write.format("orc").save("/tmp/foo")

sqlContext.read.format("orc").load("/tmp/foo").schema("Acol")
//java.lang.IllegalArgumentException: Field "Acol" does not exist.

sqlContext.read.format("orc").load("/tmp/foo").schema("acol")
//org.apache.spark.sql.types.StructField = StructField(acol,LongType,true)

sqlContext.read.format("orc").load("/tmp/foo").select("Acol").show()
//+----+
\|Acol\|
+----+
\|   1\|
\|   5\|
\|   3\|
\|   4\|
\|   7\|
\|   2\|
\|   6\|
\|   8\|
\|   9\|
\|   0\|
+----+
{code}


---

* [SPARK-9078](https://issues.apache.org/jira/browse/SPARK-9078) | *Minor* | **Use of non-standard LIMIT keyword in JDBC tableExists code**

tableExists in  spark/sql/core/src/main/scala/org/apache/spark/sql/jdbc/JdbcUtils.scala uses non-standard SQL (specifically, the LIMIT keyword) to determine whether a table exists in a JDBC data source. This will cause an exception in many/most JDBC databases that doesn't support LIMIT keyword. See http://stackoverflow.com/questions/1528604/how-universal-is-the-limit-statement-in-sql

To check for table existence or an exception, it could be recrafted around "select 1 from $table where 0 = 1" which isn't the same (it returns an empty resultset rather than the value '1'), but would support more data sources and also support empty tables. Arguably ugly and possibly queries every row on sources that don't support constant folding, but better than failing on JDBC sources that don't support LIMIT. 

Perhaps "supports LIMIT" could be a field in the JdbcDialect class for databases that support keyword this to override. The ANSI standard is (OFFSET and) FETCH. 

The standard way to check for table existence would be to use information\_schema.tables which is a SQL standard but may not work for other JDBC data sources that support SQL, but not the information\_schema. The JDBC DatabaseMetaData interface provides getSchemas()  that allows checking for the information\_schema in drivers that support it.


---

* [SPARK-9043](https://issues.apache.org/jira/browse/SPARK-9043) | *Major* | **Serialize key, value and combiner classes in ShuffleDependency**

ShuffleManager implementations are currently not given type information regarding the key, value and combiner classes. Serialization of shuffle objects relies on them being JavaSerializable, with methods defined for reading/writing the object or, alternatively, serialization via Kryo which uses reflection.

Serialization systems like Avro, Thrift and Protobuf generate classes with zero argument constructors and explicit schema information (e.g. IndexedRecords in Avro have get, put and getSchema methods).

By serializing the key, value and combiner class names in ShuffleDependency, shuffle implementations will have access to schema information when registerShuffle() is called.


---

* [SPARK-9014](https://issues.apache.org/jira/browse/SPARK-9014) | *Minor* | **Allow Python spark API to use built-in exponential operator**

It would be nice if instead of saying:

import pyspark.sql.functions as funcs
df = df.withColumn("standarderror", funcs.sqrt(df["variance"]))

...if I could simply say:

df = df.withColumn("standarderror", df["variance"] \*\* 0.5)


---

* [SPARK-8951](https://issues.apache.org/jira/browse/SPARK-8951) | *Minor* | **support CJK characters in collect()**

Spark gives an error message and does not show the output when a field of the result DataFrame contains characters in CJK.
I found out that SerDe in R API only supports ASCII format for strings right now as commented in source code.  
So, I fixed SerDe.scala a little to support CJK as the file attached. 
I did not care efficiency, but just wanted to see if it works.

{noformat}
people.json
{"name":"가나"}
{"name":"테스트123", "age":30}
{"name":"Justin", "age":19}

df \<- read.df(sqlContext, "./people.json", "json")
head(df)

Error in rawtochar(string) : embedded nul in string : '\0 \x98'
{noformat}

{code:title=core/src/main/scala/org/apache/spark/api/r/SerDe.scala}
  // NOTE: Only works for ASCII right now
  def writeString(out: DataOutputStream, value: String): Unit = {
    val len = value.length
    out.writeInt(len + 1) // For the \0
    out.writeBytes(value)
    out.writeByte(0)
{code}


---

* [SPARK-8889](https://issues.apache.org/jira/browse/SPARK-8889) | *Minor* | **showDagViz will cause java.lang.OutOfMemoryError: Java heap space**

HTTP ERROR 500

Problem accessing /history/app-20150708101140-0018/jobs/job/. Reason:

    Server Error
Caused by:

java.lang.OutOfMemoryError: Java heap space
	at java.util.Arrays.copyOf(Arrays.java:2367)
	at java.lang.AbstractStringBuilder.expandCapacity(AbstractStringBuilder.java:130)
	at java.lang.AbstractStringBuilder.ensureCapacityInternal(AbstractStringBuilder.java:114)
	at java.lang.AbstractStringBuilder.append(AbstractStringBuilder.java:415)
	at java.lang.StringBuilder.append(StringBuilder.java:132)
	at scala.collection.mutable.StringBuilder.append(StringBuilder.scala:207)
	at org.apache.spark.ui.scope.RDDOperationGraph$$anonfun$org$apache$spark$ui$scope$RDDOperationGraph$$makeDotSubgraph$2.apply(RDDOperationGraph.scala:192)
	at org.apache.spark.ui.scope.RDDOperationGraph$$anonfun$org$apache$spark$ui$scope$RDDOperationGraph$$makeDotSubgraph$2.apply(RDDOperationGraph.scala:191)
	at scala.collection.immutable.Stream.foreach(Stream.scala:547)
	at org.apache.spark.ui.scope.RDDOperationGraph$.org$apache$spark$ui$scope$RDDOperationGraph$$makeDotSubgraph(RDDOperationGraph.scala:191)
	at org.apache.spark.ui.scope.RDDOperationGraph$.makeDotFile(RDDOperationGraph.scala:170)
	at org.apache.spark.ui.UIUtils$$anonfun$showDagViz$1.apply(UIUtils.scala:361)
	at org.apache.spark.ui.UIUtils$$anonfun$showDagViz$1.apply(UIUtils.scala:357)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.immutable.List.foreach(List.scala:318)
	at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
	at scala.collection.AbstractTraversable.map(Traversable.scala:105)
	at org.apache.spark.ui.UIUtils$.showDagViz(UIUtils.scala:357)
	at org.apache.spark.ui.UIUtils$.showDagVizForJob(UIUtils.scala:335)
	at org.apache.spark.ui.jobs.JobPage.render(JobPage.scala:317)
	at org.apache.spark.ui.WebUI$$anonfun$2.apply(WebUI.scala:79)
	at org.apache.spark.ui.WebUI$$anonfun$2.apply(WebUI.scala:79)
	at org.apache.spark.ui.JettyUtils$$anon$1.doGet(JettyUtils.scala:69)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:735)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:848)
	at org.spark-project.jetty.servlet.ServletHolder.handle(ServletHolder.java:684)
	at org.spark-project.jetty.servlet.ServletHandler.doHandle(ServletHandler.java:501)
	at org.spark-project.jetty.server.handler.ContextHandler.doHandle(ContextHandler.java:1086)
	at org.spark-project.jetty.servlet.ServletHandler.doScope(ServletHandler.java:428)
	at org.spark-project.jetty.server.handler.ContextHandler.doScope(ContextHandler.java:1020)
	at org.spark-project.jetty.server.handler.ScopedHandler.handle(ScopedHandler.java:135)


---

* [SPARK-8887](https://issues.apache.org/jira/browse/SPARK-8887) | *Major* | **Explicitly define which data types can be used as dynamic partition columns**

{{InsertIntoHadoopFsRelation}} implements Hive compatible dynamic partitioning insertion, which uses {{String.valueOf}} to write encode partition column values into dynamic partition directories. This actually limits the data types that can be used in partition column. For example, string representation of {{StructType}} values is not well defined. However, this limitation is not explicitly enforced.

There are several things we can improve:

# Enforce dynamic column data type requirements by adding analysis rules and throws {{AnalysisException}} when violation occurs.
# Abstract away string representation of various data types, so that we don't need to convert internal representation types (e.g. {{UTF8String}}) to external types (e.g. {{String}}). A set of Hive compatible implementations should be provided to ensure compatibility with Hive.


---

* [SPARK-8848](https://issues.apache.org/jira/browse/SPARK-8848) | *Major* | **Write Parquet LISTs and MAPs conforming to Parquet format spec**

[Parquet format PR #17\|https://github.com/apache/parquet-format/pull/17] standardized structures of Parquet complex types (LIST & MAP). Spark SQL should follow this spec and write Parquet data conforming to the standard.

Note that although currently Parquet files written by Spark SQL is non-standard (because Parquet format spec wasn't clear about this part when Spark SQL Parquet support was authored), it's still compatible with the most recent Parquet format spec, because the format we use is covered by the backwards-compatibility rules.


---

* [SPARK-8764](https://issues.apache.org/jira/browse/SPARK-8764) | *Minor* | **StringIndexer should take option to handle unseen values**

The option should be a Param, probably set to false by default (throwing exception when encountering unseen values).


---

* [SPARK-8730](https://issues.apache.org/jira/browse/SPARK-8730) | *Critical* | **Deser primitive class with Java serialization**

Objects that contain as property a primitive Class, can not be deserialized using java serde. Class.forName does not work for primitives.

Exemple of object:

class Foo extends Serializable {
  val intClass = classOf[Int]
}


---

* [SPARK-8707](https://issues.apache.org/jira/browse/SPARK-8707) | *Major* | **RDD#toDebugString fails if any cached RDD has invalid partitions**

Repro:

{code}
sc.textFile("/ThisFileDoesNotExist").cache()
sc.parallelize(0 until 100).toDebugString
{code}

Output:

{code}
java.io.IOException: Not a file: /ThisFileDoesNotExist
	at org.apache.hadoop.mapred.FileInputFormat.getSplits(FileInputFormat.java:215)
	at org.apache.spark.rdd.HadoopRDD.getPartitions(HadoopRDD.scala:207)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:219)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:217)
	at scala.Option.getOrElse(Option.scala:120)
	at org.apache.spark.rdd.RDD.partitions(RDD.scala:217)
	at org.apache.spark.rdd.MapPartitionsRDD.getPartitions(MapPartitionsRDD.scala:32)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:219)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:217)
	at scala.Option.getOrElse(Option.scala:120)
	at org.apache.spark.rdd.RDD.partitions(RDD.scala:217)
	at org.apache.spark.storage.RDDInfo$.fromRdd(RDDInfo.scala:59)
	at org.apache.spark.SparkContext$$anonfun$34.apply(SparkContext.scala:1455)
	at org.apache.spark.SparkContext$$anonfun$34.apply(SparkContext.scala:1455)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.Iterator$class.foreach(Iterator.scala:727)
	at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
	at scala.collection.MapLike$DefaultValuesIterable.foreach(MapLike.scala:206)
	at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
	at scala.collection.AbstractTraversable.map(Traversable.scala:105)
	at org.apache.spark.SparkContext.getRDDStorageInfo(SparkContext.scala:1455)
	at org.apache.spark.rdd.RDD.debugSelf$1(RDD.scala:1573)
	at org.apache.spark.rdd.RDD.firstDebugString$1(RDD.scala:1607)
	at org.apache.spark.rdd.RDD.toDebugString(RDD.scala:1637
{code}

This is because toDebugString gets all the partitions from all RDDs, which fails (via SparkContext#getRDDStorageInfo). This pathway should definitely be resilient to other RDDs being invalid (and getRDDStorageInfo should probably also be).


---

* [SPARK-8673](https://issues.apache.org/jira/browse/SPARK-8673) | *Major* | **Launcher: add support for monitoring launched applications**

See parent bug for details.

This task covers adding the groundwork for being able to communicate with the launched Spark application and provide ways for the code using the launcher library to interact with it.


---

* [SPARK-8632](https://issues.apache.org/jira/browse/SPARK-8632) | *Blocker* | **Poor Python UDF performance because of RDD caching**

{quote}
We have been running into performance problems using Python UDFs with DataFrames at large scale.

From the implementation of BatchPythonEvaluation, it looks like the goal was to reuse the PythonRDD code. It caches the entire child RDD so that it can do two passes over the data. One to give to the PythonRDD, then one to join the python lambda results with the original row (which may have java objects that should be passed through).

In addition, it caches all the columns, even the ones that don't need to be processed by the Python UDF. In the cases I was working with, I had a 500 column table, and i wanted to use a python UDF for one column, and it ended up caching all 500 columns. 
{quote}

http://apache-spark-developers-list.1001551.n3.nabble.com/Python-UDF-performance-at-large-scale-td12843.html


---

* [SPARK-8567](https://issues.apache.org/jira/browse/SPARK-8567) | *Blocker* | **Flaky test: o.a.s.sql.hive.HiveSparkSubmitSuite --jars**

Seems tests in HiveSparkSubmitSuite fail with timeout pretty frequently.


---

* [SPARK-8552](https://issues.apache.org/jira/browse/SPARK-8552) | *Critical* | **Using incorrect database in multiple sessions**

To reproduce this problem:

\* 1. start thrift server
{quote}
sbin/start-thriftserver.sh
{quote}

\* 2. first connection execute "use test"
{quote}
bin/beeline -u jdbc:hive2://localhost:10000/default -n any -p any -e "use test"
{quote}

\* 3. second connection execute "show tables"
{quote}
bin/beeline -u jdbc:hive2://localhost:10000/default -n any -p any -e "show tables"
{quote}

\* 4. you can find the result is the tables in {{test}} database


---

* [SPARK-8518](https://issues.apache.org/jira/browse/SPARK-8518) | *Critical* | **Log-linear models for survival analysis**

We want to add basic log-linear models for survival analysis. The implementation should match the result from R's survival package (http://cran.r-project.org/web/packages/survival/index.html).

Design doc from [~yanboliang]: https://docs.google.com/document/d/1fLtB0sqg2HlfqdrJlNHPhpfXO0Zb2\_avZrxiVoPEs0E/pub


---

* [SPARK-8505](https://issues.apache.org/jira/browse/SPARK-8505) | *Major* | **Add settings to kick `lint-r` from `./dev/run-test.py`**

Add some settings to kick `lint-r` script from `./dev/run-test.py`


---

* [SPARK-8472](https://issues.apache.org/jira/browse/SPARK-8472) | *Minor* | **Python API for DCT**

We need to implement a wrapper for enabling the DCT feature transformer to be used from the Python API


---

* [SPARK-8386](https://issues.apache.org/jira/browse/SPARK-8386) | *Critical* | **DataFrame and JDBC regression**

I have an ETL app that appends to a JDBC table new results found at each run.  In 1.3.1 I did this:

testResultsDF.insertIntoJDBC(CONNECTION\_URL, TABLE\_NAME, false);

When I do this now in 1.4 it complains that the "object" 'TABLE\_NAME' already exists. I get this even if I switch the overwrite to true.  I also tried this now:

testResultsDF.write().mode(SaveMode.Append).jdbc(CONNECTION\_URL, TABLE\_NAME, connectionProperties);

getting the same error. It works running the first time creating the new table and adding data successfully. But, running it a second time it (the jdbc driver) will tell me that the table already exists. Even SaveMode.Overwrite will give me the same error.


---

* [SPARK-8345](https://issues.apache.org/jira/browse/SPARK-8345) | *Major* | **Add an SQL node as a feature transformer**

Some simple feature transformations can take leverage on SQL operators. Users do not need to create an ML transformer for each of them. We can have an SQL transformer that executes an SQL command which operates on the input dataframe.

{code}
val sql = new SQL()
  .setStatement("SELECT \*, length(text) AS text\_length FROM \_\_THIS\_\_")
{code}

where "\_\_THIS\_\_" will be replaced by a temp table that represents the DataFrame.


---

* [SPARK-8170](https://issues.apache.org/jira/browse/SPARK-8170) | *Major* | **Ctrl-C in pyspark shell doesn't kill running job**

Hitting Ctrl-C in spark-sql(and other tools like presto) cancels any running job and starts a new input line on the prompt. It would be nice if pyspark shell also can do that. Otherwise, in case a user submits a job, say he made a mistake, and wants to cancel it, he needs to exit the shell and re-login to continue his work. Re-login can be a pain especially in Spark on yarn, since it takes a while to allocate AM container and initial executors.


---

* [SPARK-8167](https://issues.apache.org/jira/browse/SPARK-8167) | *Blocker* | **Tasks that fail due to YARN preemption can cause job failure**

Tasks that are running on preempted executors will count as FAILED with an ExecutorLostFailure. Unfortunately, this can quickly spiral out of control if a large resource shift is occurring, and the tasks get scheduled to executors that immediately get preempted as well.

The current workaround is to increase spark.task.maxFailures very high, but that can cause delays in true failures. We should ideally differentiate these task statuses so that they don't count towards the failure limit.


---

* [SPARK-7989](https://issues.apache.org/jira/browse/SPARK-7989) | *Critical* | **Fix flaky tests in ExternalShuffleServiceSuite and SparkListenerWithClusterSuite**

The flaky tests in ExternalShuffleServiceSuite and SparkListenerWithClusterSuite will fail if there are not enough executors up before running the jobs.


---

* [SPARK-7869](https://issues.apache.org/jira/browse/SPARK-7869) | *Minor* | **Spark Data Frame Fails to Load Postgres Tables with JSONB DataType Columns**

Most of our tables load into dataframes just fine with postgres. However we have a number of tables leveraging the JSONB datatype. Spark will error and refuse to load this table. While asking for Spark to support JSONB might be a tall order in the short term, it would be great if Spark would at least load the table ignoring the columns it can't load or have it be an option.
{code}
pdf = sql\_context.load(source="jdbc", url=url, dbtable="table\_of\_json")

Py4JJavaError: An error occurred while calling o41.load.
: java.sql.SQLException: Unsupported type 1111
    at org.apache.spark.sql.jdbc.JDBCRDD$.getCatalystType(JDBCRDD.scala:78)
    at org.apache.spark.sql.jdbc.JDBCRDD$.resolveTable(JDBCRDD.scala:112)
    at org.apache.spark.sql.jdbc.JDBCRelation.\<init\>(JDBCRelation.scala:133)
    at org.apache.spark.sql.jdbc.DefaultSource.createRelation(JDBCRelation.scala:121)
    at org.apache.spark.sql.sources.ResolvedDataSource$.apply(ddl.scala:219)
    at org.apache.spark.sql.SQLContext.load(SQLContext.scala:697)
    at org.apache.spark.sql.SQLContext.load(SQLContext.scala:685)
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
{code}


---

* [SPARK-7770](https://issues.apache.org/jira/browse/SPARK-7770) | *Minor* | **Change GBT validationTol to be relative tolerance**

In spark.mllib, GBT validationTol uses absolute tolerance.  Relative tolerance is arguably easier to set in a meaningful way.  Questions:
\* Should we change spark.mllib's validationTol meaning?
\* Should we use relative tolerance in spark.ml's GBT (once we add validation support)?

I would vote for changing both to relative tolerance, where the tolerance is relative to the current loss on the training set.


---

* [SPARK-7736](https://issues.apache.org/jira/browse/SPARK-7736) | *Major* | **Exception not failing Python applications (in yarn cluster mode)**

It seems that exceptions thrown in Python spark apps after the SparkContext is instantiated don't cause the application to fail, at least in Yarn: the application is marked as SUCCEEDED.

Note that any exception right before the SparkContext correctly places the application in FAILED state.


---

* [SPARK-7685](https://issues.apache.org/jira/browse/SPARK-7685) | *Critical* | **Handle high imbalanced data and apply weights to different samples in Logistic Regression**

In fraud detection dataset, almost all the samples are negative while only couple of them are positive. This type of high imbalanced data will bias the models toward negative resulting poor performance. In python-scikit, they provide a correction allowing users to Over-/undersample the samples of each class according to the given weights. In auto mode, selects weights inversely proportional to class frequencies in the training set. This can be done in a more efficient way by multiplying the weights into loss and gradient instead of doing actual over/undersampling in the training dataset which is very expensive.

http://scikit-learn.org/stable/modules/generated/sklearn.linear\_model.LogisticRegression.html

On the other hand, some of the training data maybe more important like the training samples from tenure users while the training samples from new users maybe less important. We should be able to provide another "weight: Double" information in the LabeledPoint to weight them differently in the learning algorithm.


---

* [SPARK-7544](https://issues.apache.org/jira/browse/SPARK-7544) | *Minor* | **pyspark.sql.types.Row should implement \_\_getitem\_\_**

Following from the related discussions in [SPARK-7505] and [SPARK-7133], the {{Row}} type should implement {{\\_\\_getitem\\_\\_}} so that people can do this

{code}
row['field']
{code}

instead of this:

{code}
row.field
{code}


---

* [SPARK-7402](https://issues.apache.org/jira/browse/SPARK-7402) | *Critical* | **JSON serialization of standard params**

Add JSON support to Param in order to persist parameters with transformer, estimator, and models.


---

* [SPARK-7336](https://issues.apache.org/jira/browse/SPARK-7336) | *Minor* | **Sometimes the status of finished job show on JobHistory UI will be active, and never update.**

When I run a SparkPi job, the status of the job on JobHistory UI was 'active'. After the job finished for a long time, the status on JobHistory UI never update again, and the job keep in the 'Incomplete applications' list. 
This problem appears occasionally. And the configuration of JobHistory is default value.


---

* [SPARK-7275](https://issues.apache.org/jira/browse/SPARK-7275) | *Minor* | **Make LogicalRelation public**

It seems LogicalRelation is the only part of the LogicalPlan that is not public. This makes it harder to work with full logical plans from third party packages.


---

* [SPARK-7214](https://issues.apache.org/jira/browse/SPARK-7214) | *Minor* | **Unrolling never evicts blocks when MemoryStore is nearly full**

When less than spark.storage.unrollMemoryThreshold (default 1MB) is left in the MemoryStore, new blocks that are computed with unrollSafely (e.g. any cached RDD split) will always fail unrolling even if old blocks could be dropped to accommodate it.


---

* [SPARK-7142](https://issues.apache.org/jira/browse/SPARK-7142) | *Minor* | **Minor enhancement to BooleanSimplification Optimizer rule**

Add simplification using these rules :

A and (not(A) or B) =\> A and B

not(A and B) =\> not(A) or not(B)

not(A or B) =\> not(A) and not(B)


---

* [SPARK-7018](https://issues.apache.org/jira/browse/SPARK-7018) | *Major* | **Refactor dev/run-tests-jenkins into Python**

This issue is to specifically track the progress of the {{dev/run-tests-jenkins}} script into Python.


---

* [SPARK-6981](https://issues.apache.org/jira/browse/SPARK-6981) | *Minor* | **[SQL] SparkPlanner and QueryExecution should be factored out from SQLContext**

In order to simplify extensibility with new strategies from third-parties, it should be better to factor SparkPlanner and QueryExecution in their own classes. Dependent types add additional, unnecessary complexity; besides, HiveContext would benefit from this change as well.


---

* [SPARK-6919](https://issues.apache.org/jira/browse/SPARK-6919) | *Minor* | **Add .asDict method to StatCounter**

Adds an `.asDict` method to the StatCounter object instance in PySpark. This will make it easier to parse a call to `.stats()`.

For now this affects only PySpark, but if desired I can add an `.asMap` method to the Scala version as well.


---

* [SPARK-6740](https://issues.apache.org/jira/browse/SPARK-6740) | *Major* | **SQL operator and condition precedence is not honoured**

The following query from the SQL Logic Test suite fails to parse:

SELECT DISTINCT \* FROM t1 AS cor0 WHERE NOT ( - \_2 + - 39 ) IS NULL

while the following (equivalent) does parse correctly:

SELECT DISTINCT \* FROM t1 AS cor0 WHERE NOT (( - \_2 + - 39 ) IS NULL)

SQLite, MySQL and Oracle (and probably most SQL implementations) define IS with higher precedence than NOT, so the first query is valid and well-defined.


---

* [SPARK-6548](https://issues.apache.org/jira/browse/SPARK-6548) | *Major* | **stddev\_pop and stddev\_samp aggregate functions**

Add it to the list of aggregate functions:

https://github.com/apache/spark/blob/master/sql/core/src/main/scala/org/apache/spark/sql/functions.scala

Also add it to 

https://github.com/apache/spark/blob/master/sql/core/src/main/scala/org/apache/spark/sql/GroupedData.scala

We can either add a Stddev Catalyst expression, or just compute it using existing functions like here: https://github.com/apache/spark/commit/5bbcd1304cfebba31ec6857a80d3825a40d02e83#diff-c3d0394b2fc08fb2842ff0362a5ac6c9R776


---

* [SPARK-6350](https://issues.apache.org/jira/browse/SPARK-6350) | *Minor* | **Make mesosExecutorCores configurable in mesos "fine-grained" mode**

When spark runs in mesos fine-grained mode, mesos slave launches executor with # of cpus and memories. By the way, # of executor's cores is always CPU\_PER\_TASKS as same as spark.task.cpus. If I set that values as 5 for running intensive task, mesos executor always consume 5 cores without any running task. This waste resources. We should set executor core as a configuration variable.


---

* [SPARK-6028](https://issues.apache.org/jira/browse/SPARK-6028) | *Critical* | **Provide an alternative RPC implementation based on the network transport module**

Network transport module implements a low level RPC interface. We can build a new RPC implementation on top of that to replace Akka's.

Design document: https://docs.google.com/document/d/1CF5G6rGVQMKSyV\_QKo4D2M-x6rxz5x1Ew7aK3Uq6u8c/edit?usp=sharing


---

* [SPARK-5945](https://issues.apache.org/jira/browse/SPARK-5945) | *Critical* | **Spark should not retry a stage infinitely on a FetchFailedException**

While investigating SPARK-5928, I noticed some very strange behavior in the way spark retries stages after a FetchFailedException.  It seems that on a FetchFailedException, instead of simply killing the task and retrying, Spark aborts the stage and retries.  If it just retried the task, the task might fail 4 times and then trigger the usual job killing mechanism.  But by killing the stage instead, the max retry logic is skipped (it looks to me like there is no limit for retries on a stage).

After a bit of discussion with Kay Ousterhout, it seems the idea is that if a fetch fails, we assume that the block manager we are fetching from has failed, and that it will succeed if we retry the stage w/out that block manager.  In that case, it wouldn't make any sense to retry the task, since its doomed to fail every time, so we might as well kill the whole stage.  But this raises two questions:


1) Is it really safe to assume that a FetchFailedException means that the BlockManager has failed, and ti will work if we just try another one?  SPARK-5928 shows that there are at least some cases where that assumption is wrong.  Even if we fix that case, this logic seems brittle to the next case we find.  I guess the idea is that this behavior is what gives us the "R" in RDD ... but it seems like its not really that robust and maybe should be reconsidered.

2) Should stages only be retried a limited number of times?  It would be pretty easy to put in a limited number of retries per stage.  Though again, we encounter issues with keeping things resilient.  Theoretically one stage could have many retries, but due to failures in different stages further downstream, so we might need to track the cause of each retry as well to still have the desired behavior.

In general it just seems there is some flakiness in the retry logic.  This is the only reproducible example I have at the moment, but I vaguely recall hitting other cases of strange behavior w/ retries when trying to run long pipelines.  Eg., if one executor is stuck in a GC during a fetch, the fetch fails, but the executor eventually comes back and the stage gets retried again, but the same GC issues happen the second time around, etc.

Copied from SPARK-5928, here's the example program that can regularly produce a loop of stage failures.  Note that it will only fail from a remote fetch, so it can't be run locally -- I ran with {{MASTER=yarn-client spark-shell --num-executors 2 --executor-memory 4000m}}

{code}
    val rdd = sc.parallelize(1 to 1e6.toInt, 1).map{ ignore =\>
      val n = 3e3.toInt
      val arr = new Array[Byte](n)
      //need to make sure the array doesn't compress to something small
      scala.util.Random.nextBytes(arr)
      arr
    }
    rdd.map { x =\> (1, x)}.groupByKey().count()
{code}


---

* [SPARK-5905](https://issues.apache.org/jira/browse/SPARK-5905) | *Trivial* | **Note requirements for certain RowMatrix methods in docs**

From mbofb's comment in PR https://github.com/apache/spark/pull/4680:

{code}
The description of RowMatrix.computeSVD and mllib-dimensionality-reduction.html should be more precise/explicit regarding the m x n matrix. In the current description I would conclude that n refers to the rows. According to http://math.stackexchange.com/questions/191711/how-many-rows-and-columns-are-in-an-m-x-n-matrix this way of describing a matrix is only used in particular domains. I as a reader interested on applying SVD would rather prefer the more common m x n way of rows x columns (e.g. http://en.wikipedia.org/wiki/Matrix\_%28mathematics%29 ) which is also used in http://en.wikipedia.org/wiki/Latent\_semantic\_analysis (and also within the ARPACK manual:
“
N Integer. (INPUT) - Dimension of the eigenproblem. 
NEV Integer. (INPUT) - Number of eigenvalues of OP to be computed. 0 \< NEV \< N. 
NCV Integer. (INPUT) - Number of columns of the matrix V (less than or equal to N).
“
).

description of RowMatrix.computeSVD and mllib-dimensionality-reduction.html:
"We assume n is smaller than m." Is this just a recommendation or a hard requirement. This condition seems not to be checked and causing an IllegalArgumentException – the processing finishes even though the vectors have a higher dimension than the number of vectors.

description of RowMatrix. computePrincipalComponents or RowMatrix in general:
I got a Exception.
java.lang.IllegalArgumentException: Argument with more than 65535 cols: 7949273
at org.apache.spark.mllib.linalg.distributed.RowMatrix.checkNumColumns(RowMatrix.scala:131)
at org.apache.spark.mllib.linalg.distributed.RowMatrix.computeCovariance(RowMatrix.scala:318)
at org.apache.spark.mllib.linalg.distributed.RowMatrix.computePrincipalComponents(RowMatrix.scala:373)
This 65535 cols restriction would be nice to be written in the doc (if this still applies in 1.3).
{code}


---

* [SPARK-5890](https://issues.apache.org/jira/browse/SPARK-5890) | *Major* | **Add QuantileDiscretizer**

A `QuantileDiscretizer` takes a column with continuous features and outputs a column with binned categorical features.

{code}
val fd = new QuantileDiscretizer()
  .setInputCol("age")
  .setNumBins(32)
  .setOutputCol("ageBins")
{code}

This should an automatic feature discretizer, which uses a simple algorithm like approximate quantiles to discretize features. It should set the ML attribute correctly in the output column.


---

* [SPARK-5754](https://issues.apache.org/jira/browse/SPARK-5754) | *Major* | **Spark AM not launching on Windows**

I'm trying to run Spark Pi on a YARN cluster running on Windows and the AM container fails to start. The problem seems to be in the generation of the YARN command which adds single quotes (') surrounding some of the java options. In particular, the part of the code that is adding those is the escapeForShell function in YarnSparkHadoopUtil. Apparently, Windows does not like the quotes for these options. Here is an example of the command that the container tries to execute:

@call %JAVA\_HOME%/bin/java -server -Xmx512m -Djava.io.tmpdir=%PWD%/tmp '-Dspark.yarn.secondary.jars=' '-Dspark.app.name=org.apache.spark.examples.SparkPi' '-Dspark.master=yarn-cluster' org.apache.spark.deploy.yarn.ApplicationMaster --class 'org.apache.spark.examples.SparkPi' --jar  'file:/D:/data/spark-1.1.1-bin-hadoop2.4/bin/../lib/spark-examples-1.1.1-hadoop2.4.0.jar'  --executor-memory 1024 --executor-cores 1 --num-executors 2

Once I transform it into:

@call %JAVA\_HOME%/bin/java -server -Xmx512m -Djava.io.tmpdir=%PWD%/tmp -Dspark.yarn.secondary.jars= -Dspark.app.name=org.apache.spark.examples.SparkPi -Dspark.master=yarn-cluster org.apache.spark.deploy.yarn.ApplicationMaster --class 'org.apache.spark.examples.SparkPi' --jar  'file:/D:/data/spark-1.1.1-bin-hadoop2.4/bin/../lib/spark-examples-1.1.1-hadoop2.4.0.jar'  --executor-memory 1024 --executor-cores 1 --num-executors 2

Everything seems to start.

How should I deal with this? Creating a separate function like escapeForShell for Windows and call it whenever I detect this is for Windows? Or should I add some sanity check on YARN?

I checked a little and there seems to be people that is able to run Spark on YARN on Windows, so it might be something else. I didn't find anything related on Jira either.


---

* [SPARK-5391](https://issues.apache.org/jira/browse/SPARK-5391) | *Major* | **SparkSQL fails to create tables with custom JSON SerDe**

- Using Spark built from trunk on this commit: https://github.com/apache/spark/commit/bc20a52b34e826895d0dcc1d783c021ebd456ebd
- Build for Hive13
- Using this JSON serde: https://github.com/rcongiu/Hive-JSON-Serde

First download jar locally:
{code}
$ curl http://www.congiu.net/hive-json-serde/1.3/cdh5/json-serde-1.3-jar-with-dependencies.jar \> /tmp/json-serde-1.3-jar-with-dependencies.jar
{code}

Then add it in SparkSQL session:
{code}
add jar /tmp/json-serde-1.3-jar-with-dependencies.jar
{code}

Finally create table:
{code}
create table test\_json (c1 boolean) ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe';
{code}

Logs for add jar:
{code}
15/01/23 23:48:33 INFO thriftserver.SparkExecuteStatementOperation: Running query 'add jar /tmp/json-serde-1.3-jar-with-dependencies.jar'
15/01/23 23:48:34 INFO session.SessionState: No Tez session required at this point. hive.execution.engine=mr.
15/01/23 23:48:34 INFO SessionState: Added /tmp/json-serde-1.3-jar-with-dependencies.jar to class path
15/01/23 23:48:34 INFO SessionState: Added resource: /tmp/json-serde-1.3-jar-with-dependencies.jar
15/01/23 23:48:34 INFO spark.SparkContext: Added JAR /tmp/json-serde-1.3-jar-with-dependencies.jar at http://192.168.99.9:51312/jars/json-serde-1.3-jar-with-dependencies.jar with timestamp 1422056914776
15/01/23 23:48:34 INFO thriftserver.SparkExecuteStatementOperation: Result Schema: List()
15/01/23 23:48:34 INFO thriftserver.SparkExecuteStatementOperation: Result Schema: List()
{code}

Logs (with error) for create table:
{code}
15/01/23 23:49:00 INFO thriftserver.SparkExecuteStatementOperation: Running query 'create table test\_json (c1 boolean) ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe''
15/01/23 23:49:00 INFO parse.ParseDriver: Parsing command: create table test\_json (c1 boolean) ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
15/01/23 23:49:01 INFO parse.ParseDriver: Parse Completed
15/01/23 23:49:01 INFO session.SessionState: No Tez session required at this point. hive.execution.engine=mr.
15/01/23 23:49:01 INFO log.PerfLogger: \<PERFLOG method=Driver.run from=org.apache.hadoop.hive.ql.Driver\>
15/01/23 23:49:01 INFO log.PerfLogger: \<PERFLOG method=TimeToSubmit from=org.apache.hadoop.hive.ql.Driver\>
15/01/23 23:49:01 INFO ql.Driver: Concurrency mode is disabled, not creating a lock manager
15/01/23 23:49:01 INFO log.PerfLogger: \<PERFLOG method=compile from=org.apache.hadoop.hive.ql.Driver\>
15/01/23 23:49:01 INFO log.PerfLogger: \<PERFLOG method=parse from=org.apache.hadoop.hive.ql.Driver\>
15/01/23 23:49:01 INFO parse.ParseDriver: Parsing command: create table test\_json (c1 boolean) ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
15/01/23 23:49:01 INFO parse.ParseDriver: Parse Completed
15/01/23 23:49:01 INFO log.PerfLogger: \</PERFLOG method=parse start=1422056941103 end=1422056941104 duration=1 from=org.apache.hadoop.hive.ql.Driver\>
15/01/23 23:49:01 INFO log.PerfLogger: \<PERFLOG method=semanticAnalyze from=org.apache.hadoop.hive.ql.Driver\>
15/01/23 23:49:01 INFO parse.SemanticAnalyzer: Starting Semantic Analysis
15/01/23 23:49:01 INFO parse.SemanticAnalyzer: Creating table test\_json position=13
15/01/23 23:49:01 INFO ql.Driver: Semantic Analysis Completed
15/01/23 23:49:01 INFO log.PerfLogger: \</PERFLOG method=semanticAnalyze start=1422056941104 end=1422056941240 duration=136 from=org.apache.hadoop.hive.ql.Driver\>
15/01/23 23:49:01 INFO ql.Driver: Returning Hive schema: Schema(fieldSchemas:null, properties:null)
15/01/23 23:49:01 INFO log.PerfLogger: \</PERFLOG method=compile start=1422056941071 end=1422056941252 duration=181 from=org.apache.hadoop.hive.ql.Driver\>
15/01/23 23:49:01 INFO log.PerfLogger: \<PERFLOG method=Driver.execute from=org.apache.hadoop.hive.ql.Driver\>
15/01/23 23:49:01 INFO ql.Driver: Starting command: create table test\_json (c1 boolean) ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
15/01/23 23:49:01 INFO log.PerfLogger: \</PERFLOG method=TimeToSubmit start=1422056941067 end=1422056941258 duration=191 from=org.apache.hadoop.hive.ql.Driver\>
15/01/23 23:49:01 INFO log.PerfLogger: \<PERFLOG method=runTasks from=org.apache.hadoop.hive.ql.Driver\>
15/01/23 23:49:01 INFO log.PerfLogger: \<PERFLOG method=task.DDL.Stage-0 from=org.apache.hadoop.hive.ql.Driver\>
15/01/23 23:49:01 WARN security.ShellBasedUnixGroupsMapping: got exception trying to get groups for user anonymous
org.apache.hadoop.util.Shell$ExitCodeException: id: anonymous: No such user

  at org.apache.hadoop.util.Shell.runCommand(Shell.java:505)
  at org.apache.hadoop.util.Shell.run(Shell.java:418)
  at org.apache.hadoop.util.Shell$ShellCommandExecutor.execute(Shell.java:650)
  at org.apache.hadoop.util.Shell.execCommand(Shell.java:739)
  at org.apache.hadoop.util.Shell.execCommand(Shell.java:722)
  at org.apache.hadoop.security.ShellBasedUnixGroupsMapping.getUnixGroups(ShellBasedUnixGroupsMapping.java:83)
  at org.apache.hadoop.security.ShellBasedUnixGroupsMapping.getGroups(ShellBasedUnixGroupsMapping.java:52)
  at org.apache.hadoop.security.JniBasedUnixGroupsMappingWithFallback.getGroups(JniBasedUnixGroupsMappingWithFallback.java:50)
  at org.apache.hadoop.security.Groups.getGroups(Groups.java:139)
  at org.apache.hadoop.security.UserGroupInformation.getGroupNames(UserGroupInformation.java:1409)
  at org.apache.hadoop.hive.ql.security.HadoopDefaultAuthenticator.setConf(HadoopDefaultAuthenticator.java:63)
  at org.apache.hadoop.util.ReflectionUtils.setConf(ReflectionUtils.java:73)
  at org.apache.hadoop.util.ReflectionUtils.newInstance(ReflectionUtils.java:133)
  at org.apache.hadoop.hive.ql.metadata.HiveUtils.getAuthenticator(HiveUtils.java:424)
  at org.apache.hadoop.hive.ql.session.SessionState.setupAuth(SessionState.java:377)
  at org.apache.hadoop.hive.ql.session.SessionState.getAuthenticator(SessionState.java:867)
  at org.apache.hadoop.hive.ql.session.SessionState.getUserFromAuthenticator(SessionState.java:589)
  at org.apache.hadoop.hive.ql.metadata.Table.getEmptyTable(Table.java:174)
  at org.apache.hadoop.hive.ql.metadata.Table.\<init\>(Table.java:116)
  at org.apache.hadoop.hive.ql.metadata.Hive.newTable(Hive.java:2566)
  at org.apache.hadoop.hive.ql.exec.DDLTask.createTable(DDLTask.java:4046)
  at org.apache.hadoop.hive.ql.exec.DDLTask.execute(DDLTask.java:281)
  at org.apache.hadoop.hive.ql.exec.Task.executeTask(Task.java:153)
  at org.apache.hadoop.hive.ql.exec.TaskRunner.runSequential(TaskRunner.java:85)
  at org.apache.hadoop.hive.ql.Driver.launchTask(Driver.java:1503)
  at org.apache.hadoop.hive.ql.Driver.execute(Driver.java:1270)
  at org.apache.hadoop.hive.ql.Driver.runInternal(Driver.java:1088)
  at org.apache.hadoop.hive.ql.Driver.run(Driver.java:911)
  at org.apache.hadoop.hive.ql.Driver.run(Driver.java:901)
  at org.apache.spark.sql.hive.HiveContext.runHive(HiveContext.scala:292)
  at org.apache.spark.sql.hive.HiveContext.runSqlHive(HiveContext.scala:264)
  at org.apache.spark.sql.hive.execution.HiveNativeCommand.run(HiveNativeCommand.scala:37)
  at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult$lzycompute(commands.scala:53)
  at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult(commands.scala:53)
  at org.apache.spark.sql.execution.ExecutedCommand.execute(commands.scala:61)
  at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:474)
  at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:474)
  at org.apache.spark.sql.SchemaRDDLike$class.$init$(SchemaRDDLike.scala:58)
  at org.apache.spark.sql.SchemaRDD.\<init\>(SchemaRDD.scala:107)
  at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:73)
  at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.run(Shim13.scala:160)
  at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:231)
  at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatement(HiveSessionImpl.java:212)
  at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
  at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
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
15/01/23 23:49:01 WARN security.UserGroupInformation: No groups available for user anonymous
15/01/23 23:49:01 WARN security.ShellBasedUnixGroupsMapping: got exception trying to get groups for user anonymous
org.apache.hadoop.util.Shell$ExitCodeException: id: anonymous: No such user

  at org.apache.hadoop.util.Shell.runCommand(Shell.java:505)
  at org.apache.hadoop.util.Shell.run(Shell.java:418)
  at org.apache.hadoop.util.Shell$ShellCommandExecutor.execute(Shell.java:650)
  at org.apache.hadoop.util.Shell.execCommand(Shell.java:739)
  at org.apache.hadoop.util.Shell.execCommand(Shell.java:722)
  at org.apache.hadoop.security.ShellBasedUnixGroupsMapping.getUnixGroups(ShellBasedUnixGroupsMapping.java:83)
  at org.apache.hadoop.security.ShellBasedUnixGroupsMapping.getGroups(ShellBasedUnixGroupsMapping.java:52)
  at org.apache.hadoop.security.JniBasedUnixGroupsMappingWithFallback.getGroups(JniBasedUnixGroupsMappingWithFallback.java:50)
  at org.apache.hadoop.security.Groups.getGroups(Groups.java:139)
  at org.apache.hadoop.security.UserGroupInformation.getGroupNames(UserGroupInformation.java:1409)
  at org.apache.hadoop.hive.ql.security.HadoopDefaultAuthenticator.setConf(HadoopDefaultAuthenticator.java:64)
  at org.apache.hadoop.util.ReflectionUtils.setConf(ReflectionUtils.java:73)
  at org.apache.hadoop.util.ReflectionUtils.newInstance(ReflectionUtils.java:133)
  at org.apache.hadoop.hive.ql.metadata.HiveUtils.getAuthenticator(HiveUtils.java:424)
  at org.apache.hadoop.hive.ql.session.SessionState.setupAuth(SessionState.java:377)
  at org.apache.hadoop.hive.ql.session.SessionState.getAuthenticator(SessionState.java:867)
  at org.apache.hadoop.hive.ql.session.SessionState.getUserFromAuthenticator(SessionState.java:589)
  at org.apache.hadoop.hive.ql.metadata.Table.getEmptyTable(Table.java:174)
  at org.apache.hadoop.hive.ql.metadata.Table.\<init\>(Table.java:116)
  at org.apache.hadoop.hive.ql.metadata.Hive.newTable(Hive.java:2566)
  at org.apache.hadoop.hive.ql.exec.DDLTask.createTable(DDLTask.java:4046)
  at org.apache.hadoop.hive.ql.exec.DDLTask.execute(DDLTask.java:281)
  at org.apache.hadoop.hive.ql.exec.Task.executeTask(Task.java:153)
  at org.apache.hadoop.hive.ql.exec.TaskRunner.runSequential(TaskRunner.java:85)
  at org.apache.hadoop.hive.ql.Driver.launchTask(Driver.java:1503)
  at org.apache.hadoop.hive.ql.Driver.execute(Driver.java:1270)
  at org.apache.hadoop.hive.ql.Driver.runInternal(Driver.java:1088)
  at org.apache.hadoop.hive.ql.Driver.run(Driver.java:911)
  at org.apache.hadoop.hive.ql.Driver.run(Driver.java:901)
  at org.apache.spark.sql.hive.HiveContext.runHive(HiveContext.scala:292)
  at org.apache.spark.sql.hive.HiveContext.runSqlHive(HiveContext.scala:264)
  at org.apache.spark.sql.hive.execution.HiveNativeCommand.run(HiveNativeCommand.scala:37)
  at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult$lzycompute(commands.scala:53)
  at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult(commands.scala:53)
  at org.apache.spark.sql.execution.ExecutedCommand.execute(commands.scala:61)
  at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:474)
  at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:474)
  at org.apache.spark.sql.SchemaRDDLike$class.$init$(SchemaRDDLike.scala:58)
  at org.apache.spark.sql.SchemaRDD.\<init\>(SchemaRDD.scala:107)
  at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:73)
  at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.run(Shim13.scala:160)
  at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:231)
  at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatement(HiveSessionImpl.java:212)
  at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
  at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
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
15/01/23 23:49:01 WARN security.UserGroupInformation: No groups available for user anonymous
15/01/23 23:49:01 ERROR exec.DDLTask: org.apache.hadoop.hive.ql.metadata.HiveException: Cannot validate serde: org.openx.data.jsonserde.JsonSerDe
  at org.apache.hadoop.hive.ql.exec.DDLTask.validateSerDe(DDLTask.java:3952)
  at org.apache.hadoop.hive.ql.exec.DDLTask.createTable(DDLTask.java:4084)
  at org.apache.hadoop.hive.ql.exec.DDLTask.execute(DDLTask.java:281)
  at org.apache.hadoop.hive.ql.exec.Task.executeTask(Task.java:153)
  at org.apache.hadoop.hive.ql.exec.TaskRunner.runSequential(TaskRunner.java:85)
  at org.apache.hadoop.hive.ql.Driver.launchTask(Driver.java:1503)
  at org.apache.hadoop.hive.ql.Driver.execute(Driver.java:1270)
  at org.apache.hadoop.hive.ql.Driver.runInternal(Driver.java:1088)
  at org.apache.hadoop.hive.ql.Driver.run(Driver.java:911)
  at org.apache.hadoop.hive.ql.Driver.run(Driver.java:901)
  at org.apache.spark.sql.hive.HiveContext.runHive(HiveContext.scala:292)
  at org.apache.spark.sql.hive.HiveContext.runSqlHive(HiveContext.scala:264)
  at org.apache.spark.sql.hive.execution.HiveNativeCommand.run(HiveNativeCommand.scala:37)
  at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult$lzycompute(commands.scala:53)
  at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult(commands.scala:53)
  at org.apache.spark.sql.execution.ExecutedCommand.execute(commands.scala:61)
  at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:474)
  at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:474)
  at org.apache.spark.sql.SchemaRDDLike$class.$init$(SchemaRDDLike.scala:58)
  at org.apache.spark.sql.SchemaRDD.\<init\>(SchemaRDD.scala:107)
  at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:73)
  at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.run(Shim13.scala:160)
  at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:231)
  at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatement(HiveSessionImpl.java:212)
  at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
  at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
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
Caused by: java.lang.ClassNotFoundException: Class org.openx.data.jsonserde.JsonSerDe not found
  at org.apache.hadoop.conf.Configuration.getClassByName(Configuration.java:1801)
  at org.apache.hadoop.hive.ql.exec.DDLTask.validateSerDe(DDLTask.java:3946)
  ... 47 more

15/01/23 23:49:01 ERROR ql.Driver: FAILED: Execution Error, return code 1 from org.apache.hadoop.hive.ql.exec.DDLTask. Cannot validate serde: org.openx.data.jsonserde.JsonSerDe
15/01/23 23:49:01 INFO log.PerfLogger: \</PERFLOG method=Driver.execute start=1422056941252 end=1422056941379 duration=127 from=org.apache.hadoop.hive.ql.Driver\>
15/01/23 23:49:01 INFO log.PerfLogger: \<PERFLOG method=releaseLocks from=org.apache.hadoop.hive.ql.Driver\>
15/01/23 23:49:01 INFO log.PerfLogger: \</PERFLOG method=releaseLocks start=1422056941379 end=1422056941379 duration=0 from=org.apache.hadoop.hive.ql.Driver\>
15/01/23 23:49:01 ERROR hive.HiveContext:
======================
HIVE FAILURE OUTPUT
======================
SET spark.sql.codegen=false
SET spark.sql.parquet.binaryAsString=true
SET spark.sql.parquet.cacheMetadata=true
SET spark.sql.hive.version=0.13.1
SET spark.sql.autoBroadcastJoinThreshold=500000
SET spark.sql.shuffle.partitions=10
ADD JAR /tmp/json-serde-1.3-jar-with-dependencies.jar
Added /tmp/json-serde-1.3-jar-with-dependencies.jar to class path
Added resource: /tmp/json-serde-1.3-jar-with-dependencies.jar
FAILED: Execution Error, return code 1 from org.apache.hadoop.hive.ql.exec.DDLTask. Cannot validate serde: org.openx.data.jsonserde.JsonSerDe

======================
END HIVE FAILURE OUTPUT
======================

15/01/23 23:49:01 ERROR thriftserver.SparkExecuteStatementOperation: Error executing query:
org.apache.spark.sql.execution.QueryExecutionException: FAILED: Execution Error, return code 1 from org.apache.hadoop.hive.ql.exec.DDLTask. Cannot validate serde: org.openx.data.jsonserde.JsonSerDe
  at org.apache.spark.sql.hive.HiveContext.runHive(HiveContext.scala:296)
  at org.apache.spark.sql.hive.HiveContext.runSqlHive(HiveContext.scala:264)
  at org.apache.spark.sql.hive.execution.HiveNativeCommand.run(HiveNativeCommand.scala:37)
  at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult$lzycompute(commands.scala:53)
  at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult(commands.scala:53)
  at org.apache.spark.sql.execution.ExecutedCommand.execute(commands.scala:61)
  at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:474)
  at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:474)
  at org.apache.spark.sql.SchemaRDDLike$class.$init$(SchemaRDDLike.scala:58)
  at org.apache.spark.sql.SchemaRDD.\<init\>(SchemaRDD.scala:107)
  at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:73)
  at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.run(Shim13.scala:160)
  at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:231)
  at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatement(HiveSessionImpl.java:212)
  at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
  at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
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
15/01/23 23:49:01 WARN thrift.ThriftCLIService: Error executing statement:
org.apache.hive.service.cli.HiveSQLException: org.apache.spark.sql.execution.QueryExecutionException: FAILED: Execution Error, return code 1 from org.apache.hadoop.hive.ql.exec.DDLTask. Cannot validate serde: org.openx.data.jsonserde.JsonSerDe
  at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.run(Shim13.scala:189)
  at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:231)
  at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatement(HiveSessionImpl.java:212)
  at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
  at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
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


---

* [SPARK-5259](https://issues.apache.org/jira/browse/SPARK-5259) | *Critical* | **Do not submit stage until its dependencies map outputs are registered**

We should track pending tasks by partition ID instead of Task objects.

Before this, failure & retry could result in a case where a stage got submitted before the map output from its dependencies get registered. This was due to an error in the condition for registering map outputs.

More complete explanation of the original problem:

1. while shuffle stage was retry, there may have 2 taskSet running. 

we call the 2 taskSet:taskSet0.0, taskSet0.1, and we know, taskSet0.1 will re-run taskSet0.0's un-complete task

if taskSet0.0 was run all the task that the taskSet0.1 not complete yet but covered the partitions.

then stage is Available is true.
{code}
  def isAvailable: Boolean = {
    if (!isShuffleMap) {
      true
    } else {
      numAvailableOutputs == numPartitions
    }
  } 
{code}

but stage.pending task is not empty, to protect register mapStatus in mapOutputTracker.

because if task is complete success, pendingTasks is minus Task in reference-level because the task is not override hashcode() and equals()
pendingTask -= task

but numAvailableOutputs is according to partitionID.

here is the testcase to prove:

{code}
  test("Make sure mapStage.pendingtasks is set() " +
    "while MapStage.isAvailable is true while stage was retry ") {
    val firstRDD = new MyRDD(sc, 6, Nil)
    val firstShuffleDep = new ShuffleDependency(firstRDD, null)
    val firstShuyffleId = firstShuffleDep.shuffleId
    val shuffleMapRdd = new MyRDD(sc, 6, List(firstShuffleDep))
    val shuffleDep = new ShuffleDependency(shuffleMapRdd, null)
    val shuffleId = shuffleDep.shuffleId
    val reduceRdd = new MyRDD(sc, 2, List(shuffleDep))
    submit(reduceRdd, Array(0, 1))
    complete(taskSets(0), Seq(
      (Success, makeMapStatus("hostB", 1)),
      (Success, makeMapStatus("hostB", 2)),
      (Success, makeMapStatus("hostC", 3)),
      (Success, makeMapStatus("hostB", 4)),
      (Success, makeMapStatus("hostB", 5)),
      (Success, makeMapStatus("hostC", 6))
    ))
    complete(taskSets(1), Seq(
      (Success, makeMapStatus("hostA", 1)),
      (Success, makeMapStatus("hostB", 2)),
      (Success, makeMapStatus("hostA", 1)),
      (Success, makeMapStatus("hostB", 2)),
      (Success, makeMapStatus("hostA", 1))
    ))
    runEvent(ExecutorLost("exec-hostA"))
    runEvent(CompletionEvent(taskSets(1).tasks(0), Resubmitted, null, null, null, null))
    runEvent(CompletionEvent(taskSets(1).tasks(2), Resubmitted, null, null, null, null))
    runEvent(CompletionEvent(taskSets(1).tasks(0),
      FetchFailed(null, firstShuyffleId, -1, 0, "Fetch Mata data failed"),
      null, null, null, null))
    scheduler.resubmitFailedStages()
    runEvent(CompletionEvent(taskSets(1).tasks(0), Success,
      makeMapStatus("hostC", 1), null, null, null))
    runEvent(CompletionEvent(taskSets(1).tasks(2), Success,
      makeMapStatus("hostC", 1), null, null, null))
    runEvent(CompletionEvent(taskSets(1).tasks(4), Success,
      makeMapStatus("hostC", 1), null, null, null))
    runEvent(CompletionEvent(taskSets(1).tasks(5), Success,
      makeMapStatus("hostB", 2), null, null, null))
    val stage = scheduler.stageIdToStage(taskSets(1).stageId)
    assert(stage.attemptId == 2)
    assert(stage.isAvailable)
    assert(stage.pendingTasks.size == 0)
  }


{code}


---

* [SPARK-4223](https://issues.apache.org/jira/browse/SPARK-4223) | *Major* | **Support \* (meaning all users) as part of the acls**

Currently we support setting view and modify acls but you have to specify a list of users.  It would be nice to support \* meaning all users have access.


---

* [SPARK-3842](https://issues.apache.org/jira/browse/SPARK-3842) | *Minor* | **Remove the hacks for Python callback server in py4j**

There are three hacks  while create Python API for Streaming (https://github.com/apache/spark/pull/2538) :

1. daemonize the callback server thread, by 'thread.daemon = True' before start it  https://github.com/bartdag/py4j/issues/147
2. let callback server bind to random port, then update the Java callback client with real port. https://github.com/bartdag/py4j/issues/148
3. start the callback server later. https://github.com/bartdag/py4j/issues/149



These hacks should be removed after py4j has fix these issues.


---

* [SPARK-3147](https://issues.apache.org/jira/browse/SPARK-3147) | *Major* | **Implement streaming testing**

-A/B- Online testing is widely used to compare online models. We can implement A/B testing in MLlib and integrate it with Spark Streaming. For example, we have a PairDStream[String, Double], whose keys are model ids and values are observations (click or not, or revenue associated with the event). With A/B testing, we can tell whether one model is significantly better than another at a certain time. There are some caveats. For example, we should avoid multiple testing and support A/A testing as a sanity check.



