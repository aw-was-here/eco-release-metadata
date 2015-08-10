
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
# Apache Spark  1.3.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [SPARK-7044](https://issues.apache.org/jira/browse/SPARK-7044) | *Major* | **[Spark SQL] query would hang when using scripts in SQL statement**

Query with 'USING' operator like below would hang when using scripts in SQL statement
{code}
INSERT INTO TABLE ${hiveconf:RESULT\_TABLE}
SELECT pid1, pid2, COUNT (*) AS cnt
FROM (
  --Make items basket
  FROM (
    -- Joining two tables
    SELECT s.ss\_ticket\_number AS oid , s.ss\_item\_sk AS pid
    FROM store\_sales s
    INNER JOIN item i ON (s.ss\_item\_sk = i.i\_item\_sk)
    WHERE i.i\_category\_id in (${hiveconf:q01\_i\_category\_id\_IN})
    AND s.ss\_store\_sk in (${hiveconf:q01\_ss\_store\_sk\_IN})
    CLUSTER BY oid
  ) q01\_map\_output
  REDUCE q01\_map\_output.oid, q01\_map\_output.pid
  USING '${env:BIG\_BENCH\_JAVA} ${env:BIG\_BENCH\_java\_child\_process\_xmx} -cp bigbenchqueriesmr.jar de.bankmark.bigbench.queries.q01.Red -ITEM\_SET\_MAX ${hiveconf:q01\_NPATH\_ITEM\_SET\_MAX} '
  AS (pid1 BIGINT, pid2 BIGINT)
) q01\_temp\_basket
{code}


---

* [SPARK-6182](https://issues.apache.org/jira/browse/SPARK-6182) | *Blocker* | **spark-parent pom needs to be published for both 2.10 and 2.11**

A recent bug report (SPARK-5143) pointed out that the parent pom had the wrong scala version property when building for Scala 2.11. The fix for that issue correctly sets the parent pom property when the manual bash script is invoked to update Spark to scala 2.11.

For published artifacts, however, an issue still remains. Because our parent pom does not have a scala identifier, we can't publish two of them for scala 2.10 and 2.11. The fix is simple, we just need to add a scala version identifier to the parent pom and update all references to that parent.

For more details on how our current publishing process works, see this script:
https://github.com/apache/spark/blob/master/dev/create-release/create-release.sh#L119

We do a mvn install under both builds, then we manually copy the artifacts to the ASF nexus repository (necessary because Maven does not support cross-publishing nicely).


---

* [SPARK-6175](https://issues.apache.org/jira/browse/SPARK-6175) | *Blocker* | **Executor log links are using internal addresses in EC2; display `:0` when ephemeral ports are used**

See the comment at https://github.com/apache/spark/pull/3486#discussion\_r25830508


---

* [SPARK-6163](https://issues.apache.org/jira/browse/SPARK-6163) | *Critical* | **jsonFile should be backed by the data source API**

Otherwise, users cannot insert data into the DF returned by jsonFile.


---

* [SPARK-6149](https://issues.apache.org/jira/browse/SPARK-6149) | *Critical* | **Spark SQL CLI doesn't work when compiled against Hive 12 with SBT because of runtime incompatibility issues caused by Guava 15**

The following description is based on [a recent master revision|https://github.com/apache/spark/tree/159b24a1e47e4fa8118e4b81049fbc7bc3406433].

{noformat}
$ ./build/sbt -Pyarn,hadoop-2.4,hive,hive-thriftserver,hive-0.12.0,scala-2.10 -Dhadoop.version=2.4.1 clean assembly/assembly
...
$ ./bin/spark-sql
...
spark-sql> CREATE TABLE hive\_test(key INT, value STRING);
15/03/03 21:28:08 ERROR exec.DDLTask: org.apache.hadoop.hive.ql.metadata.HiveException: java.lang.RuntimeException: Unable to instantiate org.apache.hadoop.hive.metastore.HiveMetaStoreClient
        at org.apache.hadoop.hive.ql.metadata.Hive.createTable(Hive.java:602)
        at org.apache.hadoop.hive.ql.exec.DDLTask.createTable(DDLTask.java:3661)
        at org.apache.hadoop.hive.ql.exec.DDLTask.execute(DDLTask.java:252)
        at org.apache.hadoop.hive.ql.exec.Task.executeTask(Task.java:151)
        at org.apache.hadoop.hive.ql.exec.TaskRunner.runSequential(TaskRunner.java:65)
        at org.apache.hadoop.hive.ql.Driver.launchTask(Driver.java:1414)
        at org.apache.hadoop.hive.ql.Driver.execute(Driver.java:1192)
        at org.apache.hadoop.hive.ql.Driver.runInternal(Driver.java:1020)
        at org.apache.hadoop.hive.ql.Driver.run(Driver.java:888)
        at org.apache.spark.sql.hive.HiveContext.runHive(HiveContext.scala:308)
        at org.apache.spark.sql.hive.HiveContext.runSqlHive(HiveContext.scala:280)
        at org.apache.spark.sql.hive.execution.HiveNativeCommand.run(HiveNativeCommand.scala:37)
        at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult$lzycompute(commands.scala:55)
        at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult(commands.scala:55)
        at org.apache.spark.sql.execution.ExecutedCommand.execute(commands.scala:65)
        at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:1092)
        at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:1092)
        at org.apache.spark.sql.DataFrame.<init>(DataFrame.scala:134)
        at org.apache.spark.sql.DataFrame.<init>(DataFrame.scala:117)
        at org.apache.spark.sql.DataFrame$.apply(DataFrame.scala:51)
        at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:92)
        at org.apache.spark.sql.hive.thriftserver.AbstractSparkSQLDriver.run(AbstractSparkSQLDriver.scala:57)
        at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver.processCmd(SparkSQLCLIDriver.scala:275)
        at org.apache.hadoop.hive.cli.CliDriver.processLine(CliDriver.java:413)
        at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver$.main(SparkSQLCLIDriver.scala:211)
        at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver.main(SparkSQLCLIDriver.scala)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:483)
        at org.apache.spark.deploy.SparkSubmit$.org$apache$spark$deploy$SparkSubmit$$runMain(SparkSubmit.scala:569)
        at org.apache.spark.deploy.SparkSubmit$.doRunMain$1(SparkSubmit.scala:166)
        at org.apache.spark.deploy.SparkSubmit$.submit(SparkSubmit.scala:189)
        at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:110)
        at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)
Caused by: java.lang.RuntimeException: Unable to instantiate org.apache.hadoop.hive.metastore.HiveMetaStoreClient
        at org.apache.hadoop.hive.metastore.MetaStoreUtils.newInstance(MetaStoreUtils.java:1212)
        at org.apache.hadoop.hive.metastore.RetryingMetaStoreClient.<init>(RetryingMetaStoreClient.java:62)
        at org.apache.hadoop.hive.metastore.RetryingMetaStoreClient.getProxy(RetryingMetaStoreClient.java:72)
        at org.apache.hadoop.hive.ql.metadata.Hive.createMetaStoreClient(Hive.java:2372)
        at org.apache.hadoop.hive.ql.metadata.Hive.getMSC(Hive.java:2383)
        at org.apache.hadoop.hive.ql.metadata.Hive.createTable(Hive.java:596)
        ... 34 more
Caused by: java.lang.reflect.InvocationTargetException
        at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)
        at sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)
        at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)
        at java.lang.reflect.Constructor.newInstance(Constructor.java:408)
        at org.apache.hadoop.hive.metastore.MetaStoreUtils.newInstance(MetaStoreUtils.java:1210)
        ... 39 more
Caused by: javax.jdo.JDOFatalInternalException: Error creating transactional connection factory
NestedThrowables:
java.lang.reflect.InvocationTargetException
        at org.datanucleus.api.jdo.NucleusJDOHelper.getJDOExceptionForNucleusException(NucleusJDOHelper.java:587)
        at org.datanucleus.api.jdo.JDOPersistenceManagerFactory.freezeConfiguration(JDOPersistenceManagerFactory.java:781)
        at org.datanucleus.api.jdo.JDOPersistenceManagerFactory.createPersistenceManagerFactory(JDOPersistenceManagerFactory.java:326)
        at org.datanucleus.api.jdo.JDOPersistenceManagerFactory.getPersistenceManagerFactory(JDOPersistenceManagerFactory.java:195)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:483)
        at javax.jdo.JDOHelper$16.run(JDOHelper.java:1965)
        at java.security.AccessController.doPrivileged(Native Method)
        at javax.jdo.JDOHelper.invoke(JDOHelper.java:1960)
        at javax.jdo.JDOHelper.invokeGetPersistenceManagerFactoryOnImplementation(JDOHelper.java:1166)
        at javax.jdo.JDOHelper.getPersistenceManagerFactory(JDOHelper.java:808)
        at javax.jdo.JDOHelper.getPersistenceManagerFactory(JDOHelper.java:701)
        at org.apache.hadoop.hive.metastore.ObjectStore.getPMF(ObjectStore.java:275)
        at org.apache.hadoop.hive.metastore.ObjectStore.getPersistenceManager(ObjectStore.java:304)
        at org.apache.hadoop.hive.metastore.ObjectStore.initialize(ObjectStore.java:234)
        at org.apache.hadoop.hive.metastore.ObjectStore.setConf(ObjectStore.java:209)
        at org.apache.hadoop.util.ReflectionUtils.setConf(ReflectionUtils.java:73)
        at org.apache.hadoop.util.ReflectionUtils.newInstance(ReflectionUtils.java:133)
        at org.apache.hadoop.hive.metastore.RetryingRawStore.<init>(RetryingRawStore.java:64)
        at org.apache.hadoop.hive.metastore.RetryingRawStore.getProxy(RetryingRawStore.java:73)
        at org.apache.hadoop.hive.metastore.HiveMetaStore$HMSHandler.newRawStore(HiveMetaStore.java:415)
        at org.apache.hadoop.hive.metastore.HiveMetaStore$HMSHandler.getMS(HiveMetaStore.java:402)
        at org.apache.hadoop.hive.metastore.HiveMetaStore$HMSHandler.createDefaultDB(HiveMetaStore.java:441)
        at org.apache.hadoop.hive.metastore.HiveMetaStore$HMSHandler.init(HiveMetaStore.java:326)
        at org.apache.hadoop.hive.metastore.HiveMetaStore$HMSHandler.<init>(HiveMetaStore.java:286)
        at org.apache.hadoop.hive.metastore.RetryingHMSHandler.<init>(RetryingHMSHandler.java:54)
        at org.apache.hadoop.hive.metastore.RetryingHMSHandler.getProxy(RetryingHMSHandler.java:59)
        at org.apache.hadoop.hive.metastore.HiveMetaStore.newHMSHandler(HiveMetaStore.java:4060)
        at org.apache.hadoop.hive.metastore.HiveMetaStoreClient.<init>(HiveMetaStoreClient.java:121)
        ... 44 more
Caused by: java.lang.reflect.InvocationTargetException
        at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)
        at sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)
        at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)
        at java.lang.reflect.Constructor.newInstance(Constructor.java:408)
        at org.datanucleus.plugin.NonManagedPluginRegistry.createExecutableExtension(NonManagedPluginRegistry.java:631)
        at org.datanucleus.plugin.PluginManager.createExecutableExtension(PluginManager.java:325)
        at org.datanucleus.store.AbstractStoreManager.registerConnectionFactory(AbstractStoreManager.java:281)
        at org.datanucleus.store.AbstractStoreManager.<init>(AbstractStoreManager.java:239)
        at org.datanucleus.store.rdbms.RDBMSStoreManager.<init>(RDBMSStoreManager.java:292)
        at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)
        at sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)
        at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)
        at java.lang.reflect.Constructor.newInstance(Constructor.java:408)
        at org.datanucleus.plugin.NonManagedPluginRegistry.createExecutableExtension(NonManagedPluginRegistry.java:631)
        at org.datanucleus.plugin.PluginManager.createExecutableExtension(PluginManager.java:301)
        at org.datanucleus.NucleusContext.createStoreManagerForProperties(NucleusContext.java:1069)
        at org.datanucleus.NucleusContext.initialise(NucleusContext.java:359)
        at org.datanucleus.api.jdo.JDOPersistenceManagerFactory.freezeConfiguration(JDOPersistenceManagerFactory.java:768)
        ... 73 more
Caused by: java.lang.IllegalAccessError: tried to access method com.google.common.collect.MapMaker.makeComputingMap(Lcom/google/common/base/Function;)Ljava/util/concurrent/ConcurrentMap; from class com.jolbox.bonecp.BoneCPDataSource
        at com.jolbox.bonecp.BoneCPDataSource.<init>(BoneCPDataSource.java:64)
        at org.datanucleus.store.rdbms.datasource.BoneCPDataSourceFactory.makePooledDataSource(BoneCPDataSourceFactory.java:73)
        at org.datanucleus.store.rdbms.ConnectionFactoryImpl.generateDataSources(ConnectionFactoryImpl.java:217)
        at org.datanucleus.store.rdbms.ConnectionFactoryImpl.initialiseDataSources(ConnectionFactoryImpl.java:110)
        at org.datanucleus.store.rdbms.ConnectionFactoryImpl.<init>(ConnectionFactoryImpl.java:82)
        ... 91 more
{noformat}
This is because started from Guava 15.0, {{com.google.common.collect.MapMaker.makeComputingMap}} is no longer public.


---

* [SPARK-6144](https://issues.apache.org/jira/browse/SPARK-6144) | *Blocker* | **When in cluster mode using ADD JAR with a hdfs:// sourced jar will fail**

While in cluster mode if you use ADD JAR with a HDFS sourced jar it will fail trying to source that jar on the worker nodes with the following error:
{code}
15/03/03 04:56:50 ERROR executor.Executor: Exception in task 0.0 in stage 0.0 (TID 0)
java.io.FileNotFoundException: /yarn/nm/usercache/vagrant/appcache/application\_1425166832391\_0027/-19222735701425358546704\_cache (No such file or directory)
        at java.io.FileInputStream.open(Native Method)
        at java.io.FileInputStream.<init>(FileInputStream.java:146)
{code}


PR https://github.com/apache/spark/pull/4880


---

* [SPARK-6141](https://issues.apache.org/jira/browse/SPARK-6141) | *Critical* | **Upgrade Breeze to 0.11 to fix convergence bug**

LBFGS and OWLQN in Breeze 0.10 has convergence check bug. This is fixed in 0.11, see the description in Breeze project for detail:

https://github.com/scalanlp/breeze/pull/373#issuecomment-76879760


---

* [SPARK-6136](https://issues.apache.org/jira/browse/SPARK-6136) | *Major* | **Docker client library introduces Guava 17.0, which causes runtime binary incompatibilities**

Integration test suites in the JDBC data source ({{MySQLIntegration}} and {{PostgresIntegration}}) depend on docker-client 2.7.5, which transitively depends on Guava 17.0. Unfortunately, Guava 17.0 is causing runtime binary incompatibility issues when Spark is compiled against Hadoop 2.4.
{code}
$ ./build/sbt -Pyarn,hadoop-2.4,hive,hive-0.12.0,scala-2.10 -Dhadoop.version=2.4.1
...
> sql/test-only *.ParquetDataSourceOffIOSuite
...
[info] ParquetDataSourceOffIOSuite:
[info] Exception encountered when attempting to run a suite with class name: org.apache.spark.sql.parquet.ParquetDataSourceOffIOSuite *** ABORTED *** (134 milliseconds)
[info]   java.lang.IllegalAccessError: tried to access method com.google.common.base.Stopwatch.<init>()V from class org.apache.hadoop.mapreduce.lib.input.FileInputFormat
[info]   at org.apache.hadoop.mapreduce.lib.input.FileInputFormat.listStatus(FileInputFormat.java:261)
[info]   at parquet.hadoop.ParquetInputFormat.listStatus(ParquetInputFormat.java:277)
[info]   at org.apache.spark.sql.parquet.FilteringParquetRowInputFormat.getSplits(ParquetTableOperations.scala:437)
[info]   at org.apache.spark.rdd.NewHadoopRDD.getPartitions(NewHadoopRDD.scala:95)
[info]   at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:219)
[info]   at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:217)
[info]   at scala.Option.getOrElse(Option.scala:120)
[info]   at org.apache.spark.rdd.RDD.partitions(RDD.scala:217)
[info]   at org.apache.spark.rdd.MapPartitionsRDD.getPartitions(MapPartitionsRDD.scala:32)
[info]   at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:219)
[info]   at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:217)
[info]   at scala.Option.getOrElse(Option.scala:120)
[info]   at org.apache.spark.rdd.RDD.partitions(RDD.scala:217)
[info]   at org.apache.spark.rdd.MapPartitionsRDD.getPartitions(MapPartitionsRDD.scala:32)
[info]   at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:219)
[info]   at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:217)
[info]   at scala.Option.getOrElse(Option.scala:120)
[info]   at org.apache.spark.rdd.RDD.partitions(RDD.scala:217)
[info]   at org.apache.spark.SparkContext.runJob(SparkContext.scala:1525)
[info]   at org.apache.spark.rdd.RDD.collect(RDD.scala:813)
[info]   at org.apache.spark.sql.execution.SparkPlan.executeCollect(SparkPlan.scala:83)
[info]   at org.apache.spark.sql.DataFrame.collect(DataFrame.scala:797)
[info]   at org.apache.spark.sql.QueryTest$.checkAnswer(QueryTest.scala:115)
[info]   at org.apache.spark.sql.QueryTest.checkAnswer(QueryTest.scala:60)
[info]   at org.apache.spark.sql.parquet.ParquetIOSuiteBase$$anonfun$checkParquetFile$1.apply(ParquetIOSuite.scala:76)
[info]   at org.apache.spark.sql.parquet.ParquetIOSuiteBase$$anonfun$checkParquetFile$1.apply(ParquetIOSuite.scala:76)
[info]   at org.apache.spark.sql.parquet.ParquetTest$$anonfun$withParquetDataFrame$1.apply(ParquetTest.scala:105)
[info]   at org.apache.spark.sql.parquet.ParquetTest$$anonfun$withParquetDataFrame$1.apply(ParquetTest.scala:105)
[info]   at org.apache.spark.sql.parquet.ParquetTest$$anonfun$withParquetFile$1.apply(ParquetTest.scala:94)
[info]   at org.apache.spark.sql.parquet.ParquetTest$$anonfun$withParquetFile$1.apply(ParquetTest.scala:92)
[info]   at org.apache.spark.sql.parquet.ParquetTest$class.withTempPath(ParquetTest.scala:71)
[info]   at org.apache.spark.sql.parquet.ParquetIOSuiteBase.withTempPath(ParquetIOSuite.scala:67)
[info]   at org.apache.spark.sql.parquet.ParquetTest$class.withParquetFile(ParquetTest.scala:92)
[info]   at org.apache.spark.sql.parquet.ParquetIOSuiteBase.withParquetFile(ParquetIOSuite.scala:67)
[info]   at org.apache.spark.sql.parquet.ParquetTest$class.withParquetDataFrame(ParquetTest.scala:105)
[info]   at org.apache.spark.sql.parquet.ParquetIOSuiteBase.withParquetDataFrame(ParquetIOSuite.scala:67)
[info]   at org.apache.spark.sql.parquet.ParquetIOSuiteBase.checkParquetFile(ParquetIOSuite.scala:76)
[info]   at org.apache.spark.sql.parquet.ParquetIOSuiteBase$$anonfun$1.apply$mcV$sp(ParquetIOSuite.scala:83)
[info]   at org.apache.spark.sql.parquet.ParquetIOSuiteBase$$anonfun$1.apply(ParquetIOSuite.scala:79)
[info]   at org.apache.spark.sql.parquet.ParquetIOSuiteBase$$anonfun$1.apply(ParquetIOSuite.scala:79)
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
[info]   at org.apache.spark.sql.parquet.ParquetDataSourceOffIOSuite.org$scalatest$BeforeAndAfterAll$$super$run(ParquetIOSuite.scala:346)
[info]   at org.scalatest.BeforeAndAfterAll$class.liftedTree1$1(BeforeAndAfterAll.scala:257)
[info]   at org.scalatest.BeforeAndAfterAll$class.run(BeforeAndAfterAll.scala:256)
[info]   at org.apache.spark.sql.parquet.ParquetDataSourceOffIOSuite.run(ParquetIOSuite.scala:346)
[info]   at org.scalatest.tools.Framework.org$scalatest$tools$Framework$$runSuite(Framework.scala:462)
[info]   at org.scalatest.tools.Framework$ScalaTestTask.execute(Framework.scala:671)
[info]   at sbt.ForkMain$Run$2.call(ForkMain.java:294)
[info]   at sbt.ForkMain$Run$2.call(ForkMain.java:284)
[info]   at java.util.concurrent.FutureTask.run(FutureTask.java:266)
[info]   at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
[info]   at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
[info]   at java.lang.Thread.run(Thread.java:745)
{code}
This is because the default constructor of {{Stopwatch}} is no longer public in Guava 17.0.

Compiling Spark against Hive 0.12.0 also introduces other types of runtime binary incompatibility issue.

Considering {{MySQLIntegration}} and {{PostgresIntegration}} are ignored right now, I'd suggest moving them from the Spark project to the [Spark integration tests||https://github.com/databricks/spark-integration-tests] project.


---

* [SPARK-6134](https://issues.apache.org/jira/browse/SPARK-6134) | *Major* | **Fix wrong datatype for casting FloatType and default LongType value in defaultPrimitive**

In CodeGenerator, the casting on FloatType should use FloatType instead of IntegerType.

Besides, defaultPrimitive for LongType should be -1L instead of 1L.


---

* [SPARK-6128](https://issues.apache.org/jira/browse/SPARK-6128) | *Critical* | **Update Spark Streaming Guide for Spark 1.3**

Things to update

- New Kafka Direct API
- Python Kafka API
- Add joins to streaming guide


---

* [SPARK-6121](https://issues.apache.org/jira/browse/SPARK-6121) | *Critical* | **Python DataFrame type inference for LabeledPoint gets wrong type**

In Pyspark, when an RDD of LabeledPoints is converted to a DataFrame using toDF(), the returned DataFrame has type "null" instead of VectorUDT.

To reproduce:
{code}
from pyspark.mllib.util import MLUtils
rdd = MLUtils.loadLibSVMFile(sc, "data/mllib/sample\_libsvm\_data.txt")
df = rdd.toDF()
{code}

Examine rdd and df to see:
{code}
>>> df
DataFrame[features: null, label: double]
{code}


---

* [SPARK-6120](https://issues.apache.org/jira/browse/SPARK-6120) | *Major* | **DecisionTree.save uses too much Java heap space for default spark shell settings**

When the Python DecisionTree example in the programming guide is run, it runs out of Java Heap Space:

{code}
scala> model.save(sc, "myModelPath")
[Stage 12:>                                                                                                                                        (0 + 8) / 8]15/03/02 14:19:16 ERROR Executor: Exception in task 1.0 in stage 12.0 (TID 22)
java.lang.OutOfMemoryError: Java heap space
	at parquet.bytes.CapacityByteArrayOutputStream.initSlabs(CapacityByteArrayOutputStream.java:65)
	at parquet.bytes.CapacityByteArrayOutputStream.<init>(CapacityByteArrayOutputStream.java:57)
	at parquet.column.values.plain.PlainValuesWriter.<init>(PlainValuesWriter.java:45)
	at parquet.column.values.dictionary.DictionaryValuesWriter.<init>(DictionaryValuesWriter.java:102)
	at parquet.column.values.dictionary.DictionaryValuesWriter$PlainDoubleDictionaryValuesWriter.<init>(DictionaryValuesWriter.java:471)
	at parquet.column.ParquetProperties.getValuesWriter(ParquetProperties.java:111)
	at parquet.column.impl.ColumnWriterImpl.<init>(ColumnWriterImpl.java:74)
	at parquet.column.impl.ColumnWriteStoreImpl.newMemColumn(ColumnWriteStoreImpl.java:68)
	at parquet.column.impl.ColumnWriteStoreImpl.getColumnWriter(ColumnWriteStoreImpl.java:56)
	at parquet.io.MessageColumnIO$MessageColumnIORecordConsumer.<init>(MessageColumnIO.java:178)
	at parquet.io.MessageColumnIO.getRecordWriter(MessageColumnIO.java:369)
	at parquet.hadoop.InternalParquetRecordWriter.initStore(InternalParquetRecordWriter.java:108)
	at parquet.hadoop.InternalParquetRecordWriter.<init>(InternalParquetRecordWriter.java:94)
	at parquet.hadoop.ParquetRecordWriter.<init>(ParquetRecordWriter.java:64)
	at parquet.hadoop.ParquetOutputFormat.getRecordWriter(ParquetOutputFormat.java:282)
	at parquet.hadoop.ParquetOutputFormat.getRecordWriter(ParquetOutputFormat.java:252)
	at org.apache.spark.sql.parquet.ParquetRelation2.org$apache$spark$sql$parquet$ParquetRelation2$$writeShard$1(newParquet.scala:620)
	at org.apache.spark.sql.parquet.ParquetRelation2$$anonfun$insert$2.apply(newParquet.scala:641)
	at org.apache.spark.sql.parquet.ParquetRelation2$$anonfun$insert$2.apply(newParquet.scala:641)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:61)
	at org.apache.spark.scheduler.Task.run(Task.scala:64)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:197)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
{code}

When saving using JSON format instead of Parquet, this works.  It seems to be caused by Parquet requiring a lot of metadata to describe the schema.

I'm labeling this a bug since it should succeed with the default spark-shell settings.  Potential fixes are:
* increasing spark-shell default heap space settings (This is probably too hard to agree on currently.)
* not using Parquet for storage (This would be good for small examples but probably worse for large models, where Parquet would be more efficient than other formats.)
* compressing the schema (The various values in the DecisionTree model could be flattened into a single Seq of Double.  This may be the best option for now.)

Notes:
* This happens in both pyspark and Scala shells.
* Increasing driver memory to 1g (from the default of 512m) makes this succeed.
* Running other examples such as NaiveBayes with the default of 512m works.
* This is a bit strange in that the actual size of the saved model on disk is small (86K on disk for me).


---

* [SPARK-6111](https://issues.apache.org/jira/browse/SPARK-6111) | *Trivial* | **Fixed usage string in documentation for kafka\_wordcount.py example**

Usage info in documentation does not match actual usage info.

Doc string usage says "Usage: network\_wordcount.py <zk> <topic>" whereas the actual usage is "Usage: kafka\_wordcount.py <zk> <topic>"


---

* [SPARK-6082](https://issues.apache.org/jira/browse/SPARK-6082) | *Major* | **SparkSQL should fail gracefully when input data format doesn't match expectations**

I have a udf that creates a tab-delimited table. If any of the column values contain a tab, SQL fails with an ArrayIndexOutOfBounds exception (pasted below).  It would be great if SQL failed gracefully here, with a helpful exception (something like "One row contained too many values").

It looks like this can be done quite easily, by checking here if i > columnBuilders.size and if so, throwing a nicer exception: https://github.com/apache/spark/blob/master/sql/core/src/main/scala/org/apache/spark/sql/columnar/InMemoryColumnarTableScan.scala#L124.

One thing that makes this problem especially annoying to debug is because if you do "CREATE table foo as select transform(..." and then "CACHE table foo", it works fine.  It only fails if you do "CACHE table foo as select transform(...".  Because of this, it would be great if the problem were more transparent to users.

Stack trace:
java.lang.ArrayIndexOutOfBoundsException: 3
  at org.apache.spark.sql.columnar.InMemoryRelation$anonfun$3$anon$1.next(InMemoryColumnarTableScan.scala:125)
  at org.apache.spark.sql.columnar.InMemoryRelation$anonfun$3$anon$1.next(InMemoryColumnarTableScan.scala:112)
  at org.apache.spark.storage.MemoryStore.unrollSafely(MemoryStore.scala:249)
  at org.apache.spark.CacheManager.putInBlockManager(CacheManager.scala:163)
  at org.apache.spark.CacheManager.getOrCompute(CacheManager.scala:70)
  at org.apache.spark.rdd.RDD.iterator(RDD.scala:245)
  at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
  at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:280)
  at org.apache.spark.rdd.RDD.iterator(RDD.scala:247)
  at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
  at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:280)
  at org.apache.spark.rdd.RDD.iterator(RDD.scala:247)
  at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
  at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:280)
  at org.apache.spark.rdd.RDD.iterator(RDD.scala:247)
  at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:68)
  at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:41)
  at org.apache.spark.scheduler.Task.run(Task.scala:56)
  at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:220)
  at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
  at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
  at java.lang.Thread.run(Thread.java:745)


---

* [SPARK-6080](https://issues.apache.org/jira/browse/SPARK-6080) | *Major* | **LogisticRegressionWithLBFGS in PySpark was assigned wrong "regType" parameter**

Currently LogisticRegressionWithLBFGS in python/pyspark/mllib/classification.py will invoke callMLlibFunc with a wrong "regType" parameter.


---

* [SPARK-6074](https://issues.apache.org/jira/browse/SPARK-6074) | *Blocker* | **Assembly doesn't include pyspark sql files**

The sql/core/pom.xml file is missing code to package pyspark-related files into the final assembly. This prevents the sql pyspark module from working on Yarn.


---

* [SPARK-6073](https://issues.apache.org/jira/browse/SPARK-6073) | *Blocker* | **Need to refresh metastore cache after append data in CreateMetastoreDataSourceAsSelect**

We should drop the metadata cache in CreateMetastoreDataSourceAsSelect after we append data. Otherwise, users have to manually call HiveContext.refreshTable to drop the cached metadata entry from the catalog.


---

* [SPARK-6070](https://issues.apache.org/jira/browse/SPARK-6070) | *Blocker* | **Yarn Shuffle Service jar packages too many dependencies**

The spark-network-yarn\_2.10 assembly is currently packaging too many dependencies. If you look at the generated jar, it contains lots of hadoop classes; if you deploy that jar into an existing Yarn service, and they don't perfectly match, you may end up breaking the NM.

Working on a fix.


---

* [SPARK-6066](https://issues.apache.org/jira/browse/SPARK-6066) | *Blocker* | **Metadata in event log makes it very difficult for external libraries to parse event log**

The fix for SPARK-2261 added a line at the beginning of the event log that encodes metadata.  This line makes it much more difficult to parse the event logs from external libraries (like https://github.com/kayousterhout/trace-analysis, which is used by folks at Berkeley) because:

(1) The metadata is not written as JSON, unlike the rest of the file
(2) More annoyingly, if the file is compressed, the metadata is not compressed.  This has a few side-effects: first, someone can't just use the command line to uncompress the file and then look at the logs, because the file is in this weird half-compressed format; and second, now external tools that parse these logs also need to deal with this weird format.

We should fix this before the 1.3 release, because otherwise we'll have to add a bunch more backward-compatibility code to handle this weird format!


---

* [SPARK-6058](https://issues.apache.org/jira/browse/SPARK-6058) | *Minor* | **Log the error for the EXIT\_EXCEPTION\_USER\_CLASS exit code**

When running in the yarn-cluster mode, the user cannot find the stack trace of the driver error in the log.

In https://github.com/apache/spark/blob/8cd1692c9092150107bed27777951633cbf945f6/yarn/src/main/scala/org/apache/spark/deploy/yarn/ApplicationMaster.scala#L488 , it will rethrow `cause`. However, because ApplicationMaster doesn't set SparkUncaughtExceptionHandler. The error won't be logged.

To view this error in the log, we should call `logError` to log it.


---

* [SPARK-6055](https://issues.apache.org/jira/browse/SPARK-6055) | *Blocker* | **Memory leak in pyspark sql due to incorrect equality check**

The \_\_eq\_\_ of DataType is not correct, class cache is not used correctly (created class can not be find by dataType), then it will create lots of classes (saved in \_cached\_cls), never released.

Also, all same DataType have same hash code, there will be many object in a dict with the same hash code, end with hash attach, it's very slow to access this dict (depends on the implementation of CPython).


---

* [SPARK-6053](https://issues.apache.org/jira/browse/SPARK-6053) | *Minor* | **Support model save/load in Python's ALS.**

It should be a simple wrapper of the Scala's implementation.


---

* [SPARK-6052](https://issues.apache.org/jira/browse/SPARK-6052) | *Blocker* | **In JSON schema inference, we should always set containsNull of an ArrayType to true**

We should not try to figure out if an array contains null or not because we may miss arrays with null if we do sampling or future data may have nulls in the array.


---

* [SPARK-6050](https://issues.apache.org/jira/browse/SPARK-6050) | *Blocker* | **Spark on YARN does not work --executor-cores is specified**


There are multiple issues here (which I will detail as comments), but to reproduce running the following ALWAYS hangs in our cluster with the 1.3 RC

./bin/spark-submit --class org.apache.spark.examples.SparkPi     --master yarn-cluster --executor-cores 8    --num-executors 15     --driver-memory 4g     --executor-memory 2g          --queue webmap     lib/spark-examples*.jar     10


---

* [SPARK-6048](https://issues.apache.org/jira/browse/SPARK-6048) | *Blocker* | **SparkConf.translateConfKey should not translate on set**

There are several issues with translating on set.

(1) The most serious one is that if the user has both the deprecated and the latest version of the same config set, then the value picked up by SparkConf will be arbitrary. Why? Because during initialization of the conf we call `conf.set` on each property in `sys.props` in an order arbitrarily defined by Java. As a result, the value of the more recent config may be overridden by that of the deprecated one. Instead, we should always use the value of the most recent config.

(2) If we translate on set, then we must keep translating everywhere else. In fact, the current code does not translate on remove, which means the following won't work if X is deprecated:
{code}
conf.set(X, Y)
conf.remove(X) // X is not in the conf
{code}
This requires us to also translate in remove and other places, as we already do for contains, leading to more duplicate code.

(3) Since we call `conf.set` on all configs when initializing the conf, we print all deprecation warnings in the beginning. Elsewhere in Spark, however, we warn the user when the deprecated config / option / env var is actually being used.
We should keep this consistent so the user won't expect to find all deprecation messages in the beginning of his logs.


---

* [SPARK-6040](https://issues.apache.org/jira/browse/SPARK-6040) | *Major* | **Fix the percent bug in tablesample**

HiveQL expression like ```select count(1) from src tablesample(1 percent);``` means take 1% sample to select. But it means 100% in the current version of the Spark.


---

* [SPARK-6037](https://issues.apache.org/jira/browse/SPARK-6037) | *Minor* | **Avoiding duplicate Parquet schema merging**

FilteringParquetRowInputFormat manually merges Parquet schemas before computing splits. However, it is duplicate because the schemas are already merged in ParquetRelation2. We don't need to re-merge them at InputFormat.


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

* [SPARK-6024](https://issues.apache.org/jira/browse/SPARK-6024) | *Blocker* | **When a data source table has too many columns, it's schema cannot be stored in metastore.**

Because we are using table properties of a Hive metastore table to store the schema, when a schema is too wide, we cannot persist it in metastore.

{code}
15/02/25 18:13:50 ERROR metastore.RetryingHMSHandler: Retrying HMSHandler after 1000 ms (attempt 1 of 1) with error: javax.jdo.JDODataStoreException: Put request failed : INSERT INTO TABLE\_PARAMS (PARAM\_VALUE,TBL\_ID,PARAM\_KEY) VALUES (?,?,?) 
	at org.datanucleus.api.jdo.NucleusJDOHelper.getJDOExceptionForNucleusException(NucleusJDOHelper.java:451)
	at org.datanucleus.api.jdo.JDOPersistenceManager.jdoMakePersistent(JDOPersistenceManager.java:732)
	at org.datanucleus.api.jdo.JDOPersistenceManager.makePersistent(JDOPersistenceManager.java:752)
	at org.apache.hadoop.hive.metastore.ObjectStore.createTable(ObjectStore.java:719)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.hive.metastore.RawStoreProxy.invoke(RawStoreProxy.java:108)
	at com.sun.proxy.$Proxy15.createTable(Unknown Source)
	at org.apache.hadoop.hive.metastore.HiveMetaStore$HMSHandler.create\_table\_core(HiveMetaStore.java:1261)
	at org.apache.hadoop.hive.metastore.HiveMetaStore$HMSHandler.create\_table\_with\_environment\_context(HiveMetaStore.java:1294)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.hive.metastore.RetryingHMSHandler.invoke(RetryingHMSHandler.java:105)
	at com.sun.proxy.$Proxy16.create\_table\_with\_environment\_context(Unknown Source)
	at org.apache.hadoop.hive.metastore.HiveMetaStoreClient.createTable(HiveMetaStoreClient.java:558)
	at org.apache.hadoop.hive.metastore.HiveMetaStoreClient.createTable(HiveMetaStoreClient.java:547)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.hive.metastore.RetryingMetaStoreClient.invoke(RetryingMetaStoreClient.java:89)
	at com.sun.proxy.$Proxy17.createTable(Unknown Source)
	at org.apache.hadoop.hive.ql.metadata.Hive.createTable(Hive.java:613)
	at org.apache.spark.sql.hive.HiveMetastoreCatalog.createDataSourceTable(HiveMetastoreCatalog.scala:136)
	at org.apache.spark.sql.hive.execution.CreateMetastoreDataSourceAsSelect.run(commands.scala:243)
	at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult$lzycompute(commands.scala:55)
	at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult(commands.scala:55)
	at org.apache.spark.sql.execution.ExecutedCommand.execute(commands.scala:65)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:1092)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:1092)
	at org.apache.spark.sql.DataFrame.saveAsTable(DataFrame.scala:1013)
	at org.apache.spark.sql.DataFrame.saveAsTable(DataFrame.scala:963)
	at org.apache.spark.sql.DataFrame.saveAsTable(DataFrame.scala:929)
	at org.apache.spark.sql.DataFrame.saveAsTable(DataFrame.scala:907)
	at $line39.$read$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC.<init>(<console>:25)
	at $line39.$read$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC.<init>(<console>:30)
	at $line39.$read$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC.<init>(<console>:32)
	at $line39.$read$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC.<init>(<console>:34)
	at $line39.$read$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC.<init>(<console>:36)
	at $line39.$read$$iwC$$iwC$$iwC$$iwC$$iwC.<init>(<console>:38)
	at $line39.$read$$iwC$$iwC$$iwC$$iwC.<init>(<console>:40)
	at $line39.$read$$iwC$$iwC$$iwC.<init>(<console>:42)
	at $line39.$read$$iwC$$iwC.<init>(<console>:44)
	at $line39.$read$$iwC.<init>(<console>:46)
	at $line39.$read.<init>(<console>:48)
	at $line39.$read$.<init>(<console>:52)
	at $line39.$read$.<clinit>(<console>)
	at $line39.$eval$.<init>(<console>:7)
	at $line39.$eval$.<clinit>(<console>)
	at $line39.$eval.$print(<console>)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.spark.repl.SparkIMain$ReadEvalPrint.call(SparkIMain.scala:1065)
	at org.apache.spark.repl.SparkIMain$Request.loadAndRun(SparkIMain.scala:1338)
	at org.apache.spark.repl.SparkIMain.loadAndRunReq$1(SparkIMain.scala:840)
	at org.apache.spark.repl.SparkIMain.interpret(SparkIMain.scala:871)
	at org.apache.spark.repl.SparkIMain.interpret(SparkIMain.scala:819)
	at org.apache.spark.repl.SparkILoop.reallyInterpret$1(SparkILoop.scala:856)
	at org.apache.spark.repl.SparkILoop.interpretStartingWith(SparkILoop.scala:901)
	at org.apache.spark.repl.SparkILoop.command(SparkILoop.scala:813)
	at org.apache.spark.repl.SparkILoop.processLine$1(SparkILoop.scala:656)
	at org.apache.spark.repl.SparkILoop.innerLoop$1(SparkILoop.scala:664)
	at org.apache.spark.repl.SparkILoop.org$apache$spark$repl$SparkILoop$$loop(SparkILoop.scala:669)
	at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply$mcZ$sp(SparkILoop.scala:996)
	at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply(SparkILoop.scala:944)
	at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply(SparkILoop.scala:944)
	at scala.tools.nsc.util.ScalaClassLoader$.savingContextLoader(ScalaClassLoader.scala:135)
	at org.apache.spark.repl.SparkILoop.org$apache$spark$repl$SparkILoop$$process(SparkILoop.scala:944)
	at org.apache.spark.repl.SparkILoop.process(SparkILoop.scala:1058)
	at org.apache.spark.repl.Main$.main(Main.scala:31)
	at org.apache.spark.repl.Main.main(Main.scala)
NestedThrowablesStackTrace:
org.datanucleus.store.rdbms.exceptions.MappedDatastoreException: INSERT INTO TABLE\_PARAMS (PARAM\_VALUE,TBL\_ID,PARAM\_KEY) VALUES (?,?,?) 
	at org.datanucleus.store.rdbms.scostore.JoinMapStore.internalPut(JoinMapStore.java:1078)
	at org.datanucleus.store.rdbms.scostore.JoinMapStore.putAll(JoinMapStore.java:220)
	at org.datanucleus.store.rdbms.mapping.java.MapMapping.postInsert(MapMapping.java:137)
	at org.datanucleus.store.rdbms.request.InsertRequest.execute(InsertRequest.java:519)
	at org.datanucleus.store.rdbms.RDBMSPersistenceHandler.insertTable(RDBMSPersistenceHandler.java:167)
	at org.datanucleus.store.rdbms.RDBMSPersistenceHandler.insertObject(RDBMSPersistenceHandler.java:143)
	at org.datanucleus.state.JDOStateManager.internalMakePersistent(JDOStateManager.java:3784)
	at org.datanucleus.state.JDOStateManager.makePersistent(JDOStateManager.java:3760)
	at org.datanucleus.ExecutionContextImpl.persistObjectInternal(ExecutionContextImpl.java:2219)
	at org.datanucleus.ExecutionContextImpl.persistObjectWork(ExecutionContextImpl.java:2065)
	at org.datanucleus.ExecutionContextImpl.persistObject(ExecutionContextImpl.java:1913)
	at org.datanucleus.ExecutionContextThreadedImpl.persistObject(ExecutionContextThreadedImpl.java:217)
	at org.datanucleus.api.jdo.JDOPersistenceManager.jdoMakePersistent(JDOPersistenceManager.java:727)
	at org.datanucleus.api.jdo.JDOPersistenceManager.makePersistent(JDOPersistenceManager.java:752)
	at org.apache.hadoop.hive.metastore.ObjectStore.createTable(ObjectStore.java:719)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.hive.metastore.RawStoreProxy.invoke(RawStoreProxy.java:108)
	at com.sun.proxy.$Proxy15.createTable(Unknown Source)
	at org.apache.hadoop.hive.metastore.HiveMetaStore$HMSHandler.create\_table\_core(HiveMetaStore.java:1261)
	at org.apache.hadoop.hive.metastore.HiveMetaStore$HMSHandler.create\_table\_with\_environment\_context(HiveMetaStore.java:1294)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.hive.metastore.RetryingHMSHandler.invoke(RetryingHMSHandler.java:105)
	at com.sun.proxy.$Proxy16.create\_table\_with\_environment\_context(Unknown Source)
	at org.apache.hadoop.hive.metastore.HiveMetaStoreClient.createTable(HiveMetaStoreClient.java:558)
	at org.apache.hadoop.hive.metastore.HiveMetaStoreClient.createTable(HiveMetaStoreClient.java:547)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.hive.metastore.RetryingMetaStoreClient.invoke(RetryingMetaStoreClient.java:89)
	at com.sun.proxy.$Proxy17.createTable(Unknown Source)
	at org.apache.hadoop.hive.ql.metadata.Hive.createTable(Hive.java:613)
	at org.apache.spark.sql.hive.HiveMetastoreCatalog.createDataSourceTable(HiveMetastoreCatalog.scala:136)
	at org.apache.spark.sql.hive.execution.CreateMetastoreDataSourceAsSelect.run(commands.scala:243)
	at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult$lzycompute(commands.scala:55)
	at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult(commands.scala:55)
	at org.apache.spark.sql.execution.ExecutedCommand.execute(commands.scala:65)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:1092)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:1092)
	at org.apache.spark.sql.DataFrame.saveAsTable(DataFrame.scala:1013)
	at org.apache.spark.sql.DataFrame.saveAsTable(DataFrame.scala:963)
	at org.apache.spark.sql.DataFrame.saveAsTable(DataFrame.scala:929)
	at org.apache.spark.sql.DataFrame.saveAsTable(DataFrame.scala:907)
	at $line39.$read$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC.<init>(<console>:25)
	at $line39.$read$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC.<init>(<console>:30)
	at $line39.$read$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC.<init>(<console>:32)
	at $line39.$read$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC.<init>(<console>:34)
	at $line39.$read$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC.<init>(<console>:36)
	at $line39.$read$$iwC$$iwC$$iwC$$iwC$$iwC.<init>(<console>:38)
	at $line39.$read$$iwC$$iwC$$iwC$$iwC.<init>(<console>:40)
	at $line39.$read$$iwC$$iwC$$iwC.<init>(<console>:42)
	at $line39.$read$$iwC$$iwC.<init>(<console>:44)
	at $line39.$read$$iwC.<init>(<console>:46)
	at $line39.$read.<init>(<console>:48)
	at $line39.$read$.<init>(<console>:52)
	at $line39.$read$.<clinit>(<console>)
	at $line39.$eval$.<init>(<console>:7)
	at $line39.$eval$.<clinit>(<console>)
	at $line39.$eval.$print(<console>)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.spark.repl.SparkIMain$ReadEvalPrint.call(SparkIMain.scala:1065)
	at org.apache.spark.repl.SparkIMain$Request.loadAndRun(SparkIMain.scala:1338)
	at org.apache.spark.repl.SparkIMain.loadAndRunReq$1(SparkIMain.scala:840)
	at org.apache.spark.repl.SparkIMain.interpret(SparkIMain.scala:871)
	at org.apache.spark.repl.SparkIMain.interpret(SparkIMain.scala:819)
	at org.apache.spark.repl.SparkILoop.reallyInterpret$1(SparkILoop.scala:856)
	at org.apache.spark.repl.SparkILoop.interpretStartingWith(SparkILoop.scala:901)
	at org.apache.spark.repl.SparkILoop.command(SparkILoop.scala:813)
	at org.apache.spark.repl.SparkILoop.processLine$1(SparkILoop.scala:656)
	at org.apache.spark.repl.SparkILoop.innerLoop$1(SparkILoop.scala:664)
	at org.apache.spark.repl.SparkILoop.org$apache$spark$repl$SparkILoop$$loop(SparkILoop.scala:669)
	at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply$mcZ$sp(SparkILoop.scala:996)
	at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply(SparkILoop.scala:944)
	at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply(SparkILoop.scala:944)
	at scala.tools.nsc.util.ScalaClassLoader$.savingContextLoader(ScalaClassLoader.scala:135)
	at org.apache.spark.repl.SparkILoop.org$apache$spark$repl$SparkILoop$$process(SparkILoop.scala:944)
	at org.apache.spark.repl.SparkILoop.process(SparkILoop.scala:1058)
	at org.apache.spark.repl.Main$.main(Main.scala:31)
	at org.apache.spark.repl.Main.main(Main.scala)
Caused by: java.sql.SQLDataException: A truncation error was encountered trying to shrink VARCHAR '{"type":"struct","fields":[{"name":"contributors","type":"st&' to length 4000.
	at org.apache.derby.impl.jdbc.SQLExceptionFactory40.getSQLException(Unknown Source)
	at org.apache.derby.impl.jdbc.Util.generateCsSQLException(Unknown Source)
	at org.apache.derby.impl.jdbc.TransactionResourceImpl.wrapInSQLException(Unknown Source)
	at org.apache.derby.impl.jdbc.TransactionResourceImpl.handleException(Unknown Source)
	at org.apache.derby.impl.jdbc.EmbedConnection.handleException(Unknown Source)
	at org.apache.derby.impl.jdbc.ConnectionChild.handleException(Unknown Source)
	at org.apache.derby.impl.jdbc.EmbedStatement.executeStatement(Unknown Source)
	at org.apache.derby.impl.jdbc.EmbedPreparedStatement.executeStatement(Unknown Source)
	at org.apache.derby.impl.jdbc.EmbedPreparedStatement.executeLargeUpdate(Unknown Source)
	at org.apache.derby.impl.jdbc.EmbedPreparedStatement.executeUpdate(Unknown Source)
	at com.jolbox.bonecp.PreparedStatementHandle.executeUpdate(PreparedStatementHandle.java:205)
	at org.datanucleus.store.rdbms.ParamLoggingPreparedStatement.executeUpdate(ParamLoggingPreparedStatement.java:399)
	at org.datanucleus.store.rdbms.SQLController.executeStatementUpdate(SQLController.java:439)
	at org.datanucleus.store.rdbms.scostore.JoinMapStore.internalPut(JoinMapStore.java:1069)
	... 87 more
Caused by: java.sql.SQLException: A truncation error was encountered trying to shrink VARCHAR '{"type":"struct","fields":[{"name":"contributors","type":"st&' to length 4000.
	at org.apache.derby.impl.jdbc.SQLExceptionFactory.getSQLException(Unknown Source)
	at org.apache.derby.impl.jdbc.SQLExceptionFactory40.wrapArgsForTransportAcrossDRDA(Unknown Source)
	... 101 more
Caused by: ERROR 22001: A truncation error was encountered trying to shrink VARCHAR '{"type":"struct","fields":[{"name":"contributors","type":"st&' to length 4000.
	at org.apache.derby.iapi.error.StandardException.newException(Unknown Source)
	at org.apache.derby.iapi.types.SQLChar.hasNonBlankChars(Unknown Source)
	at org.apache.derby.iapi.types.SQLVarchar.normalize(Unknown Source)
	at org.apache.derby.iapi.types.SQLVarchar.normalize(Unknown Source)
	at org.apache.derby.iapi.types.DataTypeDescriptor.normalize(Unknown Source)
	at org.apache.derby.impl.sql.execute.NormalizeResultSet.normalizeColumn(Unknown Source)
	at org.apache.derby.impl.sql.execute.NormalizeResultSet.normalizeRow(Unknown Source)
	at org.apache.derby.impl.sql.execute.NormalizeResultSet.getNextRowCore(Unknown Source)
	at org.apache.derby.impl.sql.execute.DMLWriteResultSet.getNextRowCore(Unknown Source)
	at org.apache.derby.impl.sql.execute.InsertResultSet.open(Unknown Source)
	at org.apache.derby.impl.sql.GenericPreparedStatement.executeStmt(Unknown Source)
	at org.apache.derby.impl.sql.GenericPreparedStatement.execute(Unknown Source)
	... 95 more
{code}


---

* [SPARK-6023](https://issues.apache.org/jira/browse/SPARK-6023) | *Blocker* | **ParquetConversions fails to replace the destination MetastoreRelation of an InsertIntoTable node to ParquetRelation2**

{code}
import sqlContext.\_
sql("drop table if exists test")

val df1 = sqlContext.jsonRDD(sc.parallelize((1 to 10).map(i => s"""{"a":$i}""")))
df1.registerTempTable("jt")
sql("create table test (a bigint) stored as parquet ")

sql("explain insert into table test select a from jt").collect.foreach(println)
{code}
The plan will be
{code}
[== Physical Plan ==]
[InsertIntoHiveTable (MetastoreRelation default, test, None), Map(), false]
[ PhysicalRDD [a#34L], MapPartitionsRDD[17] at map at JsonRDD.scala:41]
{code}

However, the write path should be converted to our own data source path.


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

* [SPARK-6016](https://issues.apache.org/jira/browse/SPARK-6016) | *Blocker* | **Cannot read the parquet table after overwriting the existing table when spark.sql.parquet.cacheMetadata=true**

saveAsTable is fine and seems we have successfully deleted the old data and written the new data. However, when reading the newly created table, an error will be thrown.
{code}
Error in SQL statement: java.lang.RuntimeException: java.lang.RuntimeException: could not merge metadata: key org.apache.spark.sql.parquet.row.metadata has conflicting values: 
at parquet.hadoop.api.InitContext.getMergedKeyValueMetaData(InitContext.java:67)
	at parquet.hadoop.api.ReadSupport.init(ReadSupport.java:84)
	at org.apache.spark.sql.parquet.FilteringParquetRowInputFormat.getSplits(ParquetTableOperations.scala:469)
	at parquet.hadoop.ParquetInputFormat.getSplits(ParquetInputFormat.java:245)
	at org.apache.spark.sql.parquet.ParquetRelation2$$anon$1.getPartitions(newParquet.scala:461)
	...
{code}

If I set spark.sql.parquet.cacheMetadata to false, it's fine to query the data. 

Note: the newly created table needs to have more than one file to trigger the bug (if there is only a single file, we will not need to merge metadata). 

To reproduce it, try...
{code}
import org.apache.spark.sql.SaveMode
import sqlContext.\_
sql("drop table if exists test")

val df1 = sqlContext.jsonRDD(sc.parallelize((1 to 10).map(i => s"""{"a":$i}"""), 2)) // we will save to 2 parquet files.
df1.saveAsTable("test", "parquet", SaveMode.Overwrite)
sql("select * from test").collect.foreach(println) // Warm the FilteringParquetRowInputFormat.footerCache

val df2 = sqlContext.jsonRDD(sc.parallelize((1 to 10).map(i => s"""{"b":$i}"""), 4)) // we will save to 4 parquet files.
df2.saveAsTable("test", "parquet", SaveMode.Overwrite)
sql("select * from test").collect.foreach(println)
{code}
For this example, we have two outdated footers for df1 in footerCache and since we have four parquet files for the new test table, we picked up 2 new footers for df2. Then, we hit the bug.


---

* [SPARK-6010](https://issues.apache.org/jira/browse/SPARK-6010) | *Blocker* | **Exception thrown when reading Spark SQL generated Parquet files with different but compatible schemas**

The following test case added in {{ParquetPartitionDiscoverySuite}} can be used to reproduce this issue:
{code}
  test("read partitioned table - merging compatible schemas") {
    withTempDir { base =>
      makeParquetFile(
        (1 to 10).map(i => Tuple1(i)).toDF("intField"),
        makePartitionDir(base, defaultPartitionName, "pi" -> 1))

      makeParquetFile(
        (1 to 10).map(i => (i, i.toString)).toDF("intField", "stringField"),
        makePartitionDir(base, defaultPartitionName, "pi" -> 2))

      load(base.getCanonicalPath, "org.apache.spark.sql.parquet").registerTempTable("t")

      withTempTable("t") {
        checkAnswer(
          sql("SELECT * FROM t"),
          (1 to 10).map(i => Row(i, null, 1)) ++ (1 to 10).map(i => Row(i, i.toString, 2)))
      }
    }
  }
{code}
Exception thrown:
{code}
[info]   java.lang.RuntimeException: could not merge metadata: key org.apache.spark.sql.parquet.row.metadata has conflicting values: [{"type":"struct","fields":[{"name":"intField","type":"integer","nullable":false,"metadata":{}},{"name":"stringField","type":"string","nullable":true,"metadata":{}}]}, {"type":"struct","fields":[{"name":"intField","type":"integer","nullable":false,"metadata":{}}]}]
[info]          at parquet.hadoop.api.InitContext.getMergedKeyValueMetaData(InitContext.java:67)
[info]          at parquet.hadoop.api.ReadSupport.init(ReadSupport.java:84)
[info]          at org.apache.spark.sql.parquet.FilteringParquetRowInputFormat.getSplits(ParquetTableOperations.scala:484)
[info]          at parquet.hadoop.ParquetInputFormat.getSplits(ParquetInputFormat.java:245)
[info]          at org.apache.spark.sql.parquet.ParquetRelation2$$anon$1.getPartitions(newParquet.scala:461)
[info]          at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:219)
[info]          at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:217)
[info]          at scala.Option.getOrElse(Option.scala:120)
[info]          at org.apache.spark.rdd.RDD.partitions(RDD.scala:217)
[info]          at org.apache.spark.rdd.NewHadoopRDD$NewHadoopMapPartitionsWithSplitRDD.getPartitions(NewHadoopRDD.scala:239)
[info]          at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:219)
[info]          at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:217)
[info]          at scala.Option.getOrElse(Option.scala:120)
[info]          at org.apache.spark.rdd.RDD.partitions(RDD.scala:217)
[info]          at org.apache.spark.rdd.MapPartitionsRDD.getPartitions(MapPartitionsRDD.scala:32)
[info]          at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:219)
[info]          at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:217)
[info]          at scala.Option.getOrElse(Option.scala:120)
[info]          at org.apache.spark.rdd.RDD.partitions(RDD.scala:217)
[info]          at org.apache.spark.SparkContext.runJob(SparkContext.scala:1518)
[info]          at org.apache.spark.rdd.RDD.collect(RDD.scala:813)
[info]          at org.apache.spark.sql.execution.SparkPlan.executeCollect(SparkPlan.scala:83)
[info]          at org.apache.spark.sql.DataFrame.collect(DataFrame.scala:790)
[info]          at org.apache.spark.sql.QueryTest$.checkAnswer(QueryTest.scala:115)
[info]          at org.apache.spark.sql.QueryTest.checkAnswer(QueryTest.scala:60)
[info]          at org.apache.spark.sql.parquet.ParquetPartitionDiscoverySuite$$anonfun$8$$anonfun$apply$mcV$sp$18$$anonfun$apply$8.apply$mcV$sp(ParquetPartitionDiscoverySuite.scala:337)
[info]          at org.apache.spark.sql.parquet.ParquetTest$class.withTempTable(ParquetTest.scala:112)
[info]          at org.apache.spark.sql.parquet.ParquetPartitionDiscoverySuite.withTempTable(ParquetPartitionDiscoverySuite.scala:35)
[info]          at org.apache.spark.sql.parquet.ParquetPartitionDiscoverySuite$$anonfun$8$$anonfun$apply$mcV$sp$18.apply(ParquetPartitionDiscoverySuite.scala:336)
[info]          at org.apache.spark.sql.parquet.ParquetPartitionDiscoverySuite$$anonfun$8$$anonfun$apply$mcV$sp$18.apply(ParquetPartitionDiscoverySuite.scala:325)
[info]          at org.apache.spark.sql.parquet.ParquetTest$class.withTempDir(ParquetTest.scala:82)
[info]          at org.apache.spark.sql.parquet.ParquetPartitionDiscoverySuite.withTempDir(ParquetPartitionDiscoverySuite.scala:35)
[info]          at org.apache.spark.sql.parquet.ParquetPartitionDiscoverySuite$$anonfun$8.apply$mcV$sp(ParquetPartitionDiscoverySuite.scala:325)
[info]          at org.apache.spark.sql.parquet.ParquetPartitionDiscoverySuite$$anonfun$8.apply(ParquetPartitionDiscoverySuite.scala:325)
[info]          at org.apache.spark.sql.parquet.ParquetPartitionDiscoverySuite$$anonfun$8.apply(ParquetPartitionDiscoverySuite.scala:325)
[info]          at org.scalatest.Transformer$$anonfun$apply$1.apply$mcV$sp(Transformer.scala:22)
[info]          at org.scalatest.OutcomeOf$class.outcomeOf(OutcomeOf.scala:85)
[info]          at org.scalatest.OutcomeOf$.outcomeOf(OutcomeOf.scala:104)
[info]          at org.scalatest.Transformer.apply(Transformer.scala:22)
[info]          at org.scalatest.Transformer.apply(Transformer.scala:20)
[info]          at org.scalatest.FunSuiteLike$$anon$1.apply(FunSuiteLike.scala:166)
[info]          at org.scalatest.Suite$class.withFixture(Suite.scala:1122)
[info]          at org.scalatest.FunSuite.withFixture(FunSuite.scala:1555)
[info]          at org.scalatest.FunSuiteLike$class.invokeWithFixture$1(FunSuiteLike.scala:163)
[info]          at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:175)
[info]          at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:175)
[info]          at org.scalatest.SuperEngine.runTestImpl(Engine.scala:306)
[info]          at org.scalatest.FunSuiteLike$class.runTest(FunSuiteLike.scala:175)
[info]          at org.scalatest.FunSuite.runTest(FunSuite.scala:1555)
[info]          at org.scalatest.FunSuiteLike$$anonfun$runTests$1.apply(FunSuiteLike.scala:208)
[info]          at org.scalatest.FunSuiteLike$$anonfun$runTests$1.apply(FunSuiteLike.scala:208)
[info]          at org.scalatest.SuperEngine$$anonfun$traverseSubNodes$1$1.apply(Engine.scala:413)
[info]          at org.scalatest.SuperEngine$$anonfun$traverseSubNodes$1$1.apply(Engine.scala:401)
[info]          at scala.collection.immutable.List.foreach(List.scala:318)
[info]          at org.scalatest.SuperEngine.traverseSubNodes$1(Engine.scala:401)
[info]          at org.scalatest.SuperEngine.org$scalatest$SuperEngine$$runTestsInBranch(Engine.scala:396)
[info]          at org.scalatest.SuperEngine.runTestsImpl(Engine.scala:483)
[info]          at org.scalatest.FunSuiteLike$class.runTests(FunSuiteLike.scala:208)
[info]          at org.scalatest.FunSuite.runTests(FunSuite.scala:1555)
[info]          at org.scalatest.Suite$class.run(Suite.scala:1424)
[info]          at org.scalatest.FunSuite.org$scalatest$FunSuiteLike$$super$run(FunSuite.scala:1555)
[info]          at org.scalatest.FunSuiteLike$$anonfun$run$1.apply(FunSuiteLike.scala:212)
[info]          at org.scalatest.FunSuiteLike$$anonfun$run$1.apply(FunSuiteLike.scala:212)
[info]          at org.scalatest.SuperEngine.runImpl(Engine.scala:545)
[info]          at org.scalatest.FunSuiteLike$class.run(FunSuiteLike.scala:212)
[info]          at org.scalatest.FunSuite.run(FunSuite.scala:1555)
[info]          at org.scalatest.tools.Framework.org$scalatest$tools$Framework$$runSuite(Framework.scala:462)
[info]          at org.scalatest.tools.Framework$ScalaTestTask.execute(Framework.scala:671)
[info]          at sbt.ForkMain$Run$2.call(ForkMain.java:294)
[info]          at sbt.ForkMain$Run$2.call(ForkMain.java:284)
[info]          at java.util.concurrent.FutureTask.run(FutureTask.java:266)
[info]          at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
[info]          at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
[info]          at java.lang.Thread.run(Thread.java:745) (QueryTest.scala:61)
{code}


---

* [SPARK-6007](https://issues.apache.org/jira/browse/SPARK-6007) | *Minor* | **Add numRows param in DataFrame.show**

Currently, DataFrame.show only takes 20 rows to show, it will be useful if the user can decide how many rows to show by passing it as a parameter in show()


---

* [SPARK-5996](https://issues.apache.org/jira/browse/SPARK-5996) | *Blocker* | **DataFrame.collect() doesn't recognize UDTs**

{code}
import org.apache.spark.mllib.linalg.\_
case class Test(data: Vector)
val df = sqlContext.createDataFrame(Seq(Test(Vectors.dense(1.0, 2.0))))
df.collect()[0].getAs[Vector](0)
{code}

throws an exception. `collect()` returns `Row` instead of `Vector`.


---

* [SPARK-5994](https://issues.apache.org/jira/browse/SPARK-5994) | *Blocker* | **Python DataFrame documentation fixes**

select empty should NOT be the same as select(*). make sure selectExpr is behaving the same.

join param documentation

link to source doesn't work in jekyll generated file

cross reference of columns (i.e. enabling linking)

show(): move df example before df.show()

move tests in SQLContext out of docstring otherwise doc is too long

Column.desc and .asc doesn't have any documentation

in documentation, sort functions.* (and add the functions defined in the dict automatically)

if possible, add index for all functions and classes

GroupedData doesn't have any description in the table of contents for pyspark.sql module


---

* [SPARK-5993](https://issues.apache.org/jira/browse/SPARK-5993) | *Blocker* | **Published Kafka-assembly JAR was empty in 1.3.0-RC1**

This is because the maven build generated two Jars-
1. an empty JAR file (since kafka-assembly has no code of its own)
2. a assembly JAR file containing everything in a different location as 1

The maven publishing plugin uploaded 1 and not 2. 

Instead if 2 is not configure to generate in a different location, there is only 1 jar containing everything, which gets published.


---

* [SPARK-5985](https://issues.apache.org/jira/browse/SPARK-5985) | *Major* | **sortBy -\> orderBy in Python**

Seems like a mistake that we included sortBy but not orderBy in Python DataFrame.


---

* [SPARK-5984](https://issues.apache.org/jira/browse/SPARK-5984) | *Minor* | **TimSort broken**

See http://envisage-project.eu/proving-android-java-and-python-sorting-algorithm-is-broken-and-how-to-fix-it/

Our TimSort is based on Android's TimSort, which is broken in some corner case. Marking it minor as this problem exists for almost all TimSort implementations out there, including Android, OpenJDK, Python, and it hasn't manifested itself in practice yet.


---

* [SPARK-5982](https://issues.apache.org/jira/browse/SPARK-5982) | *Blocker* | **Remove Local Read Time**

LocalReadTime was added to TaskMetrics for the 1.3.0 release.  However, this time is actually only a small subset of the local read time, because local shuffle files are memory mapped, so most of the read time occurs later, as data is read from the memory mapped files and the data actually gets read from disk.  We should remove this before the 1.3.0 release, so we never expose this incomplete info.


---

* [SPARK-5980](https://issues.apache.org/jira/browse/SPARK-5980) | *Minor* | **Add GradientBoostedTrees Python examples to ML guide**

GBT now has a Python API and should have examples in the ML guide


---

* [SPARK-5979](https://issues.apache.org/jira/browse/SPARK-5979) | *Blocker* | **`--packages` should not exclude spark streaming assembly jars for kafka and flume**

Currently `--packages` has an exclude rule for all dependencies with the groupId `org.apache.spark` assuming that these are packaged inside the spark-assembly jar. This is not the case and more fine grained filtering is required.


---

* [SPARK-5976](https://issues.apache.org/jira/browse/SPARK-5976) | *Critical* | **Factors returned by ALS do not have partitioners associated.**

The model trained by ALS requires partitioning information to do quick lookup of a user/item factor for making recommendation on individual requests. In the new implementation, we don't put partitioners with ALS, which would cause performance regression.


---

* [SPARK-5974](https://issues.apache.org/jira/browse/SPARK-5974) | *Minor* | **Add save/load to examples in ML guide**

We should add save/load (model import/export) to the Scala and Java code examples in the ML guide.  This is not yet supported in Python.


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

* [SPARK-5968](https://issues.apache.org/jira/browse/SPARK-5968) | *Critical* | **Parquet warning in spark-shell**

This may happen in the case of schema evolving, namely appending new Parquet data with different but compatible schema to existing Parquet files:
{code}
15/02/23 23:29:24 WARN ParquetOutputCommitter: could not write summary file for rankings
parquet.io.ParquetEncodingException: file:/Users/matei/workspace/apache-spark/rankings/part-r-00001.parquet invalid: all the files must be contained in the root rankings
at parquet.hadoop.ParquetFileWriter.mergeFooters(ParquetFileWriter.java:422)
at parquet.hadoop.ParquetFileWriter.writeMetadataFile(ParquetFileWriter.java:398)
at parquet.hadoop.ParquetOutputCommitter.commitJob(ParquetOutputCommitter.java:51)
{code}
The reason is that the Spark SQL schemas stored in Parquet key-value metadata differ. Parquet doesn't know how to "merge" these opaque user-defined metadata, and just throw an exception and give up writing summary files. Since the Parquet data source in Spark 1.3.0 supports schema merging, it's harmless.  But this is kind of scary for the user.  We should try to suppress this through the logger.


---

* [SPARK-5967](https://issues.apache.org/jira/browse/SPARK-5967) | *Blocker* | **JobProgressListener.stageIdToActiveJobIds never cleared**

The hashmap stageIdToActiveJobIds in JobProgressListener is never cleared. So the hashmap keep increasing in size indefinitely. This is a blocker for 24/7 running applications like Spark Streaming apps.


---

* [SPARK-5965](https://issues.apache.org/jira/browse/SPARK-5965) | *Blocker* | **Spark UI does not show main class when running app in standalone cluster mode**

I tried this.

bin/spark-submit --verbose --supervise --master spark://Zion.local:7077 --deploy-mode cluster  --class test.MemoryTest --driver-memory 1G /Users/tdas/Projects/Others/simple-project/target/scala-2.10/simple-app-assembly-0.1-SNAPSHOT.jar 100 0.5

The app got launched correctly but the Spark web UI showed the following screenshot


---

* [SPARK-5958](https://issues.apache.org/jira/browse/SPARK-5958) | *Minor* | **Update block matrix user guide**

There are some minor issues (see the PR) with the current block matrix user guide.


---

* [SPARK-5951](https://issues.apache.org/jira/browse/SPARK-5951) | *Trivial* | **Remove unreachable driver memory properties in yarn client mode (YarnClientSchedulerBackend)**

In SPARK-4730 warning for deprecated was added
and in SPARK-1953 driver memory configs were removed in yarn client mode

During integration spark.master.memory and SPARK\_MASTER\_MEMORY were not removed.


---

* [SPARK-5944](https://issues.apache.org/jira/browse/SPARK-5944) | *Minor* | **Python release docs say SNAPSHOT + Author is missing**

http://spark.apache.org/docs/latest/api/python/index.html

As of Feb 2015, that link says PySpark 1.2-SNAPSHOT. It should probably say 1.2.1.

Furthermore, in the footer it says "Copyright 2014, Author." It should probably say something something else or be removed altogether.


---

* [SPARK-5943](https://issues.apache.org/jira/browse/SPARK-5943) | *Minor* | **Update the API to remove several warns in building for Spark Streaming**

old {{awaitTermination(timeout: Long)}} is deprecated and updated to {{awaitTerminationOrTimeout(timeout: Long): Boolean}} in version 1.3, here change the related code to reduce warns about this while compiling.


---

* [SPARK-5930](https://issues.apache.org/jira/browse/SPARK-5930) | *Trivial* | **Documented default of spark.shuffle.io.retryWait is confusing**

The description makes it sound like the retryWait itself defaults to 15 seconds, when it's actually 5. We should clarify this by changing the wording a little...
{code}
<tr>
  <td><code>spark.shuffle.io.retryWait</code></td>
  <td>5</td>
  <td>
    (Netty only) Seconds to wait between retries of fetches. The maximum delay caused by retrying
    is simply <code>maxRetries * retryWait</code>, by default 15 seconds.
  </td>
</tr>
{code}


---

* [SPARK-5926](https://issues.apache.org/jira/browse/SPARK-5926) | *Major* | **[SQL] DataFrame.explain() return false result for DDL command**

This bug is easy to reproduce, the following two queries should print out the same explain result, but it's not.

sql("create table tb as select * from src where key > 490").explain(true)

sql("explain extended create table tb as select * from src where key > 490")


---

* [SPARK-5912](https://issues.apache.org/jira/browse/SPARK-5912) | *Major* | **Programming guide for feature selection**

The new ChiSqSelector for feature selection should have a section in the Programming Guide.  It should probably be under the feature extraction and transformation section as a new subsection for feature selection.

If we get more feature selection methods later on, we could expand it to a larger section of the guide.


---

* [SPARK-5910](https://issues.apache.org/jira/browse/SPARK-5910) | *Blocker* | **DataFrame.selectExpr("col as newName") does not work**

{code}
val rdd = sc.parallelize((1 to 10).map(i => s"""{"a":$i, "b":"str${i}"}"""))
sqlContext.jsonRDD(rdd).selectExpr("a as newName")
{code}

{code}
java.lang.RuntimeException: [1.3] failure: ``or'' expected but `as' found

a as newName
  ^
	at scala.sys.package$.error(package.scala:27)
	at org.apache.spark.sql.catalyst.SqlParser.parseExpression(SqlParser.scala:45)

{code}

For selectExpr, we need to use projection parser instead of expression parser (which cannot parse AS).


---

* [SPARK-5904](https://issues.apache.org/jira/browse/SPARK-5904) | *Blocker* | **DataFrame methods with varargs do not work in Java**

DataFrame methods with varargs fail when called from Java due to a bug in Scala.

This can be produced by, e.g., modifying the end of the example ml.JavaSimpleParamsExample in the master branch:
{code}
    DataFrame results = model2.transform(test);
    results.printSchema(); // works
    results.collect(); // works
    results.filter("label > 0.0").count(); // works
    for (Row r: results.select("features", "label", "myProbability", "prediction").collect()) { // fails on select
      System.out.println("(" + r.get(0) + ", " + r.get(1) + ") -> prob=" + r.get(2)
          + ", prediction=" + r.get(3));
    }
{code}

I have also tried groupBy and found that failed too.

The error looks like this:
{code}
Exception in thread "main" java.lang.AbstractMethodError: org.apache.spark.sql.DataFrameImpl.groupBy(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/spark/sql/GroupedData;
	at org.apache.spark.examples.ml.JavaSimpleParamsExample.main(JavaSimpleParamsExample.java:108)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.spark.deploy.SparkSubmit$.org$apache$spark$deploy$SparkSubmit$$runMain(SparkSubmit.scala:569)
	at org.apache.spark.deploy.SparkSubmit$.doRunMain$1(SparkSubmit.scala:166)
	at org.apache.spark.deploy.SparkSubmit$.submit(SparkSubmit.scala:189)
	at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:110)
	at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)
{code}

The error appears to be from this Scala bug with using varargs in an abstract method:
[https://issues.scala-lang.org/browse/SI-9013]

My current plan is to move the implementations of the methods with varargs from DataFrameImpl to DataFrame.

However, this may cause issues with IncomputableColumn---feedback??

Thanks to [~joshrosen] for figuring the bug and fix out!


---

* [SPARK-5902](https://issues.apache.org/jira/browse/SPARK-5902) | *Minor* | **PipelineStage.transformSchema should be public, not private**

For users to implement their own PipelineStages, we need to make PipelineStage.transformSchema be public instead of private to ml.


---

* [SPARK-5900](https://issues.apache.org/jira/browse/SPARK-5900) | *Major* | **Wrap the results returned by PIC and FPGrowth in case classes**

We return tuples in the current version of PIC and FPGrowth. This is not very Java-friendly because the primitive types are translated into Objects.


---

* [SPARK-5898](https://issues.apache.org/jira/browse/SPARK-5898) | *Critical* | **Can't create DataFrame from Pandas data frame**

{code}
data = sqlContext.table("sparkCommits")
p = data.toPandas()
sqlContext.createDataFrame(p)
{code}

{code}
---------------------------------------------------------------------------
AttributeError                            Traceback (most recent call last)
<ipython-input-12-fb4f1895bd2f> in <module>()
      1 data = sqlContext.table("sparkCommits")
      2 p = data.toPandas()
----> 3 sqlContext.createDataFrame(p)

/home/ubuntu/databricks/spark/python/pyspark/sql/context.pyc in createDataFrame(self, data, schema, samplingRatio)
    385             data = self.\_sc.parallelize(data.to\_records(index=False))
    386             if schema is None:
--> 387                 schema = list(data.columns)
    388 
    389         if not isinstance(data, RDD):

AttributeError: 'RDD' object has no attribute 'columns'


---

* [SPARK-5897](https://issues.apache.org/jira/browse/SPARK-5897) | *Major* | **Add PIC code example to user guide**

PIC user guide doesn't have code examples.


---

* [SPARK-5896](https://issues.apache.org/jira/browse/SPARK-5896) | *Critical* | **toDF in python doesn't work with tuple/list w/o names**

{code}
rdd = sc.parallelize(range(10)).map(lambda x: (str(x), x))
kvdf = rdd.toDF()
{code}

{code}
---------------------------------------------------------------------------
ValueError                                Traceback (most recent call last)
<ipython-input-18-327cb4e9a02e> in <module>()
      1 rdd = sc.parallelize(range(10)).map(lambda x: (str(x), x))
----> 2 kvdf = rdd.toDF()

/home/ubuntu/databricks/spark/python/pyspark/sql/context.pyc in toDF(self, schema, sampleRatio)
     53         [Row(name=u'Alice', age=1)]
     54         """
---> 55         return sqlCtx.createDataFrame(self, schema, sampleRatio)
     56 
     57     RDD.toDF = toDF

/home/ubuntu/databricks/spark/python/pyspark/sql/context.pyc in createDataFrame(self, data, schema, samplingRatio)
    395 
    396         if schema is None:
--> 397             return self.inferSchema(data, samplingRatio)
    398 
    399         if isinstance(schema, (list, tuple)):

/home/ubuntu/databricks/spark/python/pyspark/sql/context.pyc in inferSchema(self, rdd, samplingRatio)
    228             raise TypeError("Cannot apply schema to DataFrame")
    229 
--> 230         schema = self.\_inferSchema(rdd, samplingRatio)
    231         converter = \_create\_converter(schema)
    232         rdd = rdd.map(converter)

/home/ubuntu/databricks/spark/python/pyspark/sql/context.pyc in \_inferSchema(self, rdd, samplingRatio)
    158 
    159         if samplingRatio is None:
--> 160             schema = \_infer\_schema(first)
    161             if \_has\_nulltype(schema):
    162                 for row in rdd.take(100)[1:]:

/home/ubuntu/databricks/spark/python/pyspark/sql/types.pyc in \_infer\_schema(row)
    646             items = row
    647         else:
--> 648             raise ValueError("Can't infer schema from tuple")
    649 
    650     elif hasattr(row, "\_\_dict\_\_"):  # object

ValueError: Can't infer schema from tuple
{code}

Nearly the same code works if you give names (and this works without names in scala and calls the columns \_1, \_2, ...)


---

* [SPARK-5892](https://issues.apache.org/jira/browse/SPARK-5892) | *Minor* | **Clean up ML, MLlib docs for 1.3 release**

Clean up MLlib documentation for the Spark 1.3 release


---

* [SPARK-5889](https://issues.apache.org/jira/browse/SPARK-5889) | *Minor* | **remove pid file in spark-daemon.sh after killing the process.**

Currently, if the thriftserver/history server are stopped. The pid file is not deleted. The fix is trial, but it is important for some service checking relying on the file.


---

* [SPARK-5875](https://issues.apache.org/jira/browse/SPARK-5875) | *Blocker* | **logical.Project should not be resolved if it contains aggregates or generators**

To reproduce...
{code}
val rdd = sc.parallelize((1 to 10).map(i => s"""{"a":$i, "b":"str${i}"}"""))
sqlContext.jsonRDD(rdd).registerTempTable("jt")
sqlContext.sql("CREATE TABLE gen\_tmp (key Int)")
sqlContext.sql("INSERT OVERWRITE TABLE gen\_tmp SELECT explode(array(1,2,3)) AS val FROM jt LIMIT 1")
{code}
The exception is
{code}
org.apache.spark.sql.AnalysisException: invalid cast from array<struct<\_c0:int>> to int;
    at org.apache.spark.sql.catalyst.analysis.Analyzer$CheckResolution$.failAnalysis(Analyzer.scala:85)
    at org.apache.spark.sql.catalyst.analysis.Analyzer$CheckResolution$$anonfun$apply$18$$anonfun$apply$2.applyOrElse(Analyzer.scala:98)
    at org.apache.spark.sql.catalyst.analysis.Analyzer$CheckResolution$$anonfun$apply$18$$anonfun$apply$2.applyOrElse(Analyzer.scala:92)
    at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$transformUp$1.apply(TreeNode.scala:250)
    at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$transformUp$1.apply(TreeNode.scala:250)
    at org.apache.spark.sql.catalyst.trees.CurrentOrigin$.withOrigin(TreeNode.scala:50)
    at org.apache.spark.sql.catalyst.trees.TreeNode.transformUp(TreeNode.scala:249)
    at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$5.apply(TreeNode.scala:263)
{code}

The cause of this exception is that PreInsertionCasts in HiveMetastoreCatalog was triggered on an invalid query plan 
{code}
Project [HiveGenericUdtf#org.apache.hadoop.hive.ql.udf.generic.GenericUDTFExplode(Array(1,2,3)) AS val#19]
  Subquery jt
   LogicalRDD [a#0L,b#1], MapPartitionsRDD[4] at map at JsonRDD.scala:41
{code}
Then, after the transformation of PreInsertionCasts, ImplicitGenerate cannot be applied.


---

* [SPARK-5873](https://issues.apache.org/jira/browse/SPARK-5873) | *Blocker* | **Can't see partially analyzed plans**

Our analysis checks are great for users who make mistakes but make it impossible to see what is going wrong when there is a bug in the analyzer.


---

* [SPARK-5871](https://issues.apache.org/jira/browse/SPARK-5871) | *Critical* | **Explain in python should output using python**

Instead of relying on the println in scala.


---

* [SPARK-5868](https://issues.apache.org/jira/browse/SPARK-5868) | *Blocker* | **Python UDFs broken by analysis check in HiveContext**

Technically they are broken in SQLContext as well, but because of the hacky way we handle python udfs there it doesn't get checked.  Lets fix both things.


---

* [SPARK-5867](https://issues.apache.org/jira/browse/SPARK-5867) | *Major* | **Update spark.ml docs with DataFrame, Python examples**

The spark.ml programming guide needs to be updated to use the new SQL DataFrame API instead of the old SchemaRDD API.

It should also include Python examples now.


---

* [SPARK-5864](https://issues.apache.org/jira/browse/SPARK-5864) | *Major* | **support .jar as python package**

Support .jar file as python package (same to .zip or .egg)


---

* [SPARK-5862](https://issues.apache.org/jira/browse/SPARK-5862) | *Minor* | **Only transformUp the given plan once in HiveMetastoreCatalog**

Current ParquetConversions in HiveMetastoreCatalog will transformUp the given plan multiple times if there are many Metastore Parquet tables. Since the transformUp operation is recursive, it should be better to only perform it once.


---

* [SPARK-5859](https://issues.apache.org/jira/browse/SPARK-5859) | *Major* | **fix Data Frame Python API**

added explain()
add isLocal()
do not call show() in repl
add foreach() and foreachPartition()
add distinct()
fix functions.col()/column()/lit()
fix unit tests in sql/functions.py
fix unicode in showString()


---

* [SPARK-5858](https://issues.apache.org/jira/browse/SPARK-5858) | *Critical* | **Using first() to get feature size causes performance regression**

We call `.first()` to get the feature size. It causes performance regression because first() still runs on the driver.


---

* [SPARK-5856](https://issues.apache.org/jira/browse/SPARK-5856) | *Blocker* | **In Maven build script, launch Zinc with more memory**

I've seen out of memory exceptions when trying to run many parallel builds against the same Zinc server during packaging. We should use the same increased memory settings we use for Maven itself.


---

* [SPARK-5853](https://issues.apache.org/jira/browse/SPARK-5853) | *Major* | **Schema support in Row**

Would be great to add some optional schema support in row, with a schema function that returns StructType.


---

* [SPARK-5852](https://issues.apache.org/jira/browse/SPARK-5852) | *Blocker* | **Fail to convert a newly created empty metastore parquet table to a data source parquet table.**

To reproduce the exception, try
{code}
val rdd = sc.parallelize((1 to 10).map(i => s"""{"a":$i, "b":"str${i}"}"""))
sqlContext.jsonRDD(rdd).registerTempTable("jt")
sqlContext.sql("create table test stored as parquet as select * from jt")
{code}

ParquetConversions tries to convert the write path to the data source API write path. But, the following exception was thrown.
{code}
java.lang.UnsupportedOperationException: empty.reduceLeft
	at scala.collection.TraversableOnce$class.reduceLeft(TraversableOnce.scala:167)
	at scala.collection.mutable.ArrayBuffer.scala$collection$IndexedSeqOptimized$$super$reduceLeft(ArrayBuffer.scala:47)
	at scala.collection.IndexedSeqOptimized$class.reduceLeft(IndexedSeqOptimized.scala:68)
	at scala.collection.mutable.ArrayBuffer.reduceLeft(ArrayBuffer.scala:47)
	at scala.collection.TraversableOnce$class.reduce(TraversableOnce.scala:195)
	at scala.collection.AbstractTraversable.reduce(Traversable.scala:105)
	at org.apache.spark.sql.parquet.ParquetRelation2$.readSchema(newParquet.scala:633)
	at org.apache.spark.sql.parquet.ParquetRelation2$MetadataCache.org$apache$spark$sql$parquet$ParquetRelation2$MetadataCache$$readSchema(newParquet.scala:349)
	at org.apache.spark.sql.parquet.ParquetRelation2$MetadataCache$$anonfun$refresh$8.apply(newParquet.scala:290)
	at org.apache.spark.sql.parquet.ParquetRelation2$MetadataCache$$anonfun$refresh$8.apply(newParquet.scala:290)
	at scala.Option.getOrElse(Option.scala:120)
	at org.apache.spark.sql.parquet.ParquetRelation2$MetadataCache.refresh(newParquet.scala:290)
	at org.apache.spark.sql.parquet.ParquetRelation2.<init>(newParquet.scala:354)
	at org.apache.spark.sql.hive.HiveMetastoreCatalog.org$apache$spark$sql$hive$HiveMetastoreCatalog$$convertToParquetRelation(HiveMetastoreCatalog.scala:218)
	at org.apache.spark.sql.hive.HiveMetastoreCatalog$ParquetConversions$$anonfun$apply$4.apply(HiveMetastoreCatalog.scala:440)
	at org.apache.spark.sql.hive.HiveMetastoreCatalog$ParquetConversions$$anonfun$apply$4.apply(HiveMetastoreCatalog.scala:439)
	at scala.collection.IndexedSeqOptimized$class.foldl(IndexedSeqOptimized.scala:51)
	at scala.collection.IndexedSeqOptimized$class.foldLeft(IndexedSeqOptimized.scala:60)
	at scala.collection.mutable.ArrayBuffer.foldLeft(ArrayBuffer.scala:47)
	at org.apache.spark.sql.hive.HiveMetastoreCatalog$ParquetConversions$.apply(HiveMetastoreCatalog.scala:439)
	at org.apache.spark.sql.hive.HiveMetastoreCatalog$ParquetConversions$.apply(HiveMetastoreCatalog.scala:416)
	at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1$$anonfun$apply$2.apply(RuleExecutor.scala:61)
	at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1$$anonfun$apply$2.apply(RuleExecutor.scala:59)
	at scala.collection.LinearSeqOptimized$class.foldLeft(LinearSeqOptimized.scala:111)
	at scala.collection.immutable.List.foldLeft(List.scala:84)
	at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1.apply(RuleExecutor.scala:59)
	at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1.apply(RuleExecutor.scala:51)
	at scala.collection.immutable.List.foreach(List.scala:318)
	at org.apache.spark.sql.catalyst.rules.RuleExecutor.apply(RuleExecutor.scala:51)
	at org.apache.spark.sql.SQLContext$QueryExecution.analyzed$lzycompute(SQLContext.scala:917)
	at org.apache.spark.sql.SQLContext$QueryExecution.analyzed(SQLContext.scala:917)
	at org.apache.spark.sql.SQLContext$QueryExecution.withCachedData$lzycompute(SQLContext.scala:918)
	at org.apache.spark.sql.SQLContext$QueryExecution.withCachedData(SQLContext.scala:918)
	at org.apache.spark.sql.SQLContext$QueryExecution.optimizedPlan$lzycompute(SQLContext.scala:919)
	at org.apache.spark.sql.SQLContext$QueryExecution.optimizedPlan(SQLContext.scala:919)
	at org.apache.spark.sql.SQLContext$QueryExecution.sparkPlan$lzycompute(SQLContext.scala:924)
	at org.apache.spark.sql.SQLContext$QueryExecution.sparkPlan(SQLContext.scala:922)
	at org.apache.spark.sql.SQLContext$QueryExecution.executedPlan$lzycompute(SQLContext.scala:928)
	at org.apache.spark.sql.SQLContext$QueryExecution.executedPlan(SQLContext.scala:928)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:931)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:931)
	at org.apache.spark.sql.hive.execution.CreateTableAsSelect.run(CreateTableAsSelect.scala:71)
	at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult$lzycompute(commands.scala:55)
	at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult(commands.scala:55)
	at org.apache.spark.sql.execution.ExecutedCommand.execute(commands.scala:65)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:931)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:931)
	at org.apache.spark.sql.DataFrameImpl.<init>(DataFrameImpl.scala:75)
	at org.apache.spark.sql.DataFrameImpl.<init>(DataFrameImpl.scala:58)
	at org.apache.spark.sql.DataFrame$.apply(DataFrame.scala:35)
	at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:77)
	at $iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC.<init>(<console>:20)
	at $iwC$$iwC$$iwC$$iwC$$iwC$$iwC$$iwC.<init>(<console>:26)
	at $iwC$$iwC$$iwC$$iwC$$iwC$$iwC.<init>(<console>:28)
	at $iwC$$iwC$$iwC$$iwC$$iwC.<init>(<console>:30)
	at $iwC$$iwC$$iwC$$iwC.<init>(<console>:32)
	at $iwC$$iwC$$iwC.<init>(<console>:34)
	at $iwC$$iwC.<init>(<console>:36)
	at $iwC.<init>(<console>:38)
	at <init>(<console>:40)
	at .<init>(<console>:44)
	at .<clinit>(<console>)
	at .<init>(<console>:7)
	at .<clinit>(<console>)
	at $print(<console>)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.spark.repl.SparkIMain$ReadEvalPrint.call(SparkIMain.scala:1065)
	at org.apache.spark.repl.SparkIMain$Request.loadAndRun(SparkIMain.scala:1338)
	at org.apache.spark.repl.SparkIMain.loadAndRunReq$1(SparkIMain.scala:840)
	at org.apache.spark.repl.SparkIMain.interpret(SparkIMain.scala:871)
	at org.apache.spark.repl.SparkIMain.interpret(SparkIMain.scala:819)
	at org.apache.spark.repl.SparkILoop.reallyInterpret$1(SparkILoop.scala:856)
	at org.apache.spark.repl.SparkILoop.interpretStartingWith(SparkILoop.scala:901)
	at org.apache.spark.repl.SparkILoop.reallyInterpret$1(SparkILoop.scala:874)
	at org.apache.spark.repl.SparkILoop.interpretStartingWith(SparkILoop.scala:901)
	at org.apache.spark.repl.SparkILoop.command(SparkILoop.scala:813)
	at org.apache.spark.repl.SparkILoop.processLine$1(SparkILoop.scala:656)
	at org.apache.spark.repl.SparkILoop.innerLoop$1(SparkILoop.scala:664)
	at org.apache.spark.repl.SparkILoop.org$apache$spark$repl$SparkILoop$$loop(SparkILoop.scala:669)
	at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply$mcZ$sp(SparkILoop.scala:996)
	at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply(SparkILoop.scala:944)
	at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply(SparkILoop.scala:944)
	at scala.tools.nsc.util.ScalaClassLoader$.savingContextLoader(ScalaClassLoader.scala:135)
	at org.apache.spark.repl.SparkILoop.org$apache$spark$repl$SparkILoop$$process(SparkILoop.scala:944)
	at org.apache.spark.repl.SparkILoop.process(SparkILoop.scala:1058)
	at org.apache.spark.repl.Main$.main(Main.scala:31)
	at org.apache.spark.repl.Main.main(Main.scala)
{code}


---

* [SPARK-5850](https://issues.apache.org/jira/browse/SPARK-5850) | *Blocker* | **Remove experimental label for Scala 2.11 and FlumePollingStream**

These things have been out for at least one release and can be promoted.


---

* [SPARK-5849](https://issues.apache.org/jira/browse/SPARK-5849) | *Critical* | **Handle more types of invalid JSON requests in SubmitRestProtocolMessage.parseAction**

SubmitRestProtocolMessage.parseAction casts the result of {{parse(json)}} to {{JObject}}, but this cast can fail if invalid requests can still be parsed as other JSON types, such as JSON strings.  We should replace this unchecked cast with pattern-matching in order to handle these types of invalid requests.


---

* [SPARK-5848](https://issues.apache.org/jira/browse/SPARK-5848) | *Major* | **ConsoleProgressBar timer thread leaks SparkContext**

ConsoleProgressBar starts a timer.  This creates a thread (which is a garbage collection root) with a reference to the ConsoleProgressBar instance, which holds a reference to the SparkContext.  

That timer is never canceled, so SparkContexts are leaked.


---

* [SPARK-5846](https://issues.apache.org/jira/browse/SPARK-5846) | *Critical* | **Spark SQL does not correctly set job description and scheduler pool**

Spark SQL current sets the scheduler pool and job description AFTER jobs run (see https://github.com/apache/spark/blob/master/sql/hive-thriftserver/v0.13.1/src/main/scala/org/apache/spark/sql/hive/thriftserver/Shim13.scala#L168 -- which happens after calling hiveContext.sql).  As a result, the description for a SQL job ends up being the SQL query corresponding to the previous job.  This should be done before the job is run so the description is correct.


---

* [SPARK-5841](https://issues.apache.org/jira/browse/SPARK-5841) | *Major* | **Memory leak in DiskBlockManager**

DiskBlockManager registers a Runtime shutdown hook, which creates a hard reference to the entire Driver ActorSystem.  If a long-running JVM repeatedly creates and destroys SparkContext instances, it leaks memory.  

I suggest we deregister the shutdown hook if DiskBlockManager.stop is called.  It's redundant at that point.

PR coming.

See also http://mail-archives.apache.org/mod\_mbox/spark-user/201501.mbox/%3CCA+kjH+w\_DDTEBE9XB6NrPxLTUXD=NC\_d-3ogxTUMk\_5v-E0bLQ@mail.gmail.com%3E


---

* [SPARK-5840](https://issues.apache.org/jira/browse/SPARK-5840) | *Major* | **HiveContext cannot be serialized due to tuple extraction**

See the following mailing list question: http://apache-spark-developers-list.1001551.n3.nabble.com/

The use of tuple extraction for (hiveconf, sessionState) creates a non-transient tuple field.


---

* [SPARK-5839](https://issues.apache.org/jira/browse/SPARK-5839) | *Blocker* | **HiveMetastoreCatalog does not recognize table names and aliases of data source tables.**

For example, when we run
{code}
val originalDefaultSource = conf.defaultDataSourceName

val rdd = sparkContext.parallelize((1 to 10).map(i => s"""{"a":$i, "b":"str${i}"}"""))
val df = jsonRDD(rdd)

conf.setConf(SQLConf.DEFAULT\_DATA\_SOURCE\_NAME, "org.apache.spark.sql.json")
// Save the df as a managed table (by not specifiying the path).
df.saveAsTable("savedJsonTable")

checkAnswer(
  sql("SELECT * FROM savedJsonTable tmp where tmp.a > 5"),
  df.collect())

// Drop table will also delete the data.
sql("DROP TABLE savedJsonTable")

conf.setConf(SQLConf.DEFAULT\_DATA\_SOURCE\_NAME, originalDefaultSource)
{code}

We will get
{code}
query with predicates *** FAILED *** (85 milliseconds)
[info]   org.apache.spark.sql.AnalysisException: cannot resolve 'tmp.a' given input columns a, b
[info]   at org.apache.spark.sql.catalyst.analysis.Analyzer$CheckResolution$.failAnalysis(Analyzer.scala:78)
[info]   at org.apache.spark.sql.catalyst.analysis.Analyzer$CheckResolution$$anonfun$apply$18$$anonfun$apply$2.applyOrElse(Analyzer.scala:88)
[info]   at org.apache.spark.sql.catalyst.analysis.Analyzer$CheckResolution$$anonfun$apply$18$$anonfun$apply$2.applyOrElse(Analyzer.scala:85)
{code}


---

* [SPARK-5833](https://issues.apache.org/jira/browse/SPARK-5833) | *Major* | **Adds REFRESH TABLE command to refresh external data sources tables**

This command can be used to refresh (possibly cached) metadata stored in external data source tables. For example, for JSON tables, it forces schema inference; for Parquet tables, it forces schema merging and partition discovery.


---

* [SPARK-5826](https://issues.apache.org/jira/browse/SPARK-5826) | *Critical* | **JavaStreamingContext.fileStream cause Configuration NotSerializableException**

org.apache.spark.streaming.api.java.JavaStreamingContext.fileStream(String directory, Class<LongWritable> kClass, Class<Text> vClass, Class<TextInputFormat> fClass, Function<Path, Boolean> filter, boolean newFilesOnly, Configuration conf)

I use JavaStreamingContext.fileStream with 1.3.0/master with Configuration.

but it throw strange exception.

java.io.NotSerializableException: org.apache.hadoop.conf.Configuration
	at java.io.ObjectOutputStream.writeObject0(ObjectOutputStream.java:1183)
	at java.io.ObjectOutputStream.defaultWriteFields(ObjectOutputStream.java:1547)
	at java.io.ObjectOutputStream.writeSerialData(ObjectOutputStream.java:1508)
	at java.io.ObjectOutputStream.writeOrdinaryObject(ObjectOutputStream.java:1431)
	at java.io.ObjectOutputStream.writeObject0(ObjectOutputStream.java:1177)
	at java.io.ObjectOutputStream.defaultWriteFields(ObjectOutputStream.java:1547)
	at java.io.ObjectOutputStream.writeSerialData(ObjectOutputStream.java:1508)
	at java.io.ObjectOutputStream.writeOrdinaryObject(ObjectOutputStream.java:1431)
	at java.io.ObjectOutputStream.writeObject0(ObjectOutputStream.java:1177)
	at java.io.ObjectOutputStream.writeArray(ObjectOutputStream.java:1377)
	at java.io.ObjectOutputStream.writeObject0(ObjectOutputStream.java:1173)
	at java.io.ObjectOutputStream.defaultWriteFields(ObjectOutputStream.java:1547)
	at java.io.ObjectOutputStream.writeSerialData(ObjectOutputStream.java:1508)
	at java.io.ObjectOutputStream.writeOrdinaryObject(ObjectOutputStream.java:1431)
	at java.io.ObjectOutputStream.writeObject0(ObjectOutputStream.java:1177)
	at java.io.ObjectOutputStream.defaultWriteFields(ObjectOutputStream.java:1547)
	at java.io.ObjectOutputStream.defaultWriteObject(ObjectOutputStream.java:440)
	at org.apache.spark.streaming.DStreamGraph$$anonfun$writeObject$1.apply$mcV$sp(DStreamGraph.scala:177)
	at org.apache.spark.util.Utils$.tryOrIOException(Utils.scala:1075)
	at org.apache.spark.streaming.DStreamGraph.writeObject(DStreamGraph.scala:172)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at java.io.ObjectStreamClass.invokeWriteObject(ObjectStreamClass.java:988)
	at java.io.ObjectOutputStream.writeSerialData(ObjectOutputStream.java:1495)
	at java.io.ObjectOutputStream.writeOrdinaryObject(ObjectOutputStream.java:1431)
	at java.io.ObjectOutputStream.writeObject0(ObjectOutputStream.java:1177)
	at java.io.ObjectOutputStream.defaultWriteFields(ObjectOutputStream.java:1547)
	at java.io.ObjectOutputStream.writeSerialData(ObjectOutputStream.java:1508)
	at java.io.ObjectOutputStream.writeOrdinaryObject(ObjectOutputStream.java:1431)
	at java.io.ObjectOutputStream.writeObject0(ObjectOutputStream.java:1177)
	at java.io.ObjectOutputStream.writeObject(ObjectOutputStream.java:347)
	at org.apache.spark.streaming.CheckpointWriter.write(Checkpoint.scala:184)
	at org.apache.spark.streaming.scheduler.JobGenerator.doCheckpoint(JobGenerator.scala:278)
	at org.apache.spark.streaming.scheduler.JobGenerator.org$apache$spark$streaming$scheduler$JobGenerator$$processEvent(JobGenerator.scala:169)
	at org.apache.spark.streaming.scheduler.JobGenerator$$anonfun$start$1$$anon$1$$anonfun$receive$1.applyOrElse(JobGenerator.scala:78)
	at akka.actor.Actor$class.aroundReceive(Actor.scala:465)
	at org.apache.spark.streaming.scheduler.JobGenerator$$anonfun$start$1$$anon$1.aroundReceive(JobGenerator.scala:76)
	at akka.actor.ActorCell.receiveMessage(ActorCell.scala:516)
	at akka.actor.ActorCell.invoke(ActorCell.scala:487)
	at akka.dispatch.Mailbox.processMailbox(Mailbox.scala:238)
	at akka.dispatch.Mailbox.run(Mailbox.scala:220)
	at akka.dispatch.ForkJoinExecutorConfigurator$AkkaForkJoinTask.exec(AbstractDispatcher.scala:393)
	at scala.concurrent.forkjoin.ForkJoinTask.doExec(ForkJoinTask.java:260)
	at scala.concurrent.forkjoin.ForkJoinPool$WorkQueue.runTask(ForkJoinPool.java:1339)
	at scala.concurrent.forkjoin.ForkJoinPool.runWorker(ForkJoinPool.java:1979)
	at scala.concurrent.forkjoin.ForkJoinWorkerThread.run(ForkJoinWorkerThread.java:107)


---

* [SPARK-5825](https://issues.apache.org/jira/browse/SPARK-5825) | *Critical* | **Failure stopping Services while command line argument is too long**

Stopping service in `spark-daemon.sh` will confirm the process id by fuzzy matching the class name, however, it will fail if the java process arguments is very long (greater than 4096).


---

* [SPARK-5822](https://issues.apache.org/jira/browse/SPARK-5822) | *Minor* | **Add add-source goal in Scala plugin for Eclipse**

I'm opening this just to track https://github.com/apache/spark/pull/4531 :

When import the whole project into eclipse as maven project, found that the
src/main/scala & src/test/scala can not be set as source folder as default
behavior, so add a "add-source" goal in scala-maven-plugin to let this work.


---

* [SPARK-5816](https://issues.apache.org/jira/browse/SPARK-5816) | *Critical* | **Add huge backward compatibility warning in DriverWrapper**

As of Spark 1.3, we provide backward and forward compatibility in standalone cluster mode through the REST submission gateway. HOWEVER, it nevertheless goes through the legacy o.a.s.deploy.DriverWrapper, and the semantics of the command line arguments there must not change. For instance, this was broken in commit 20a6013106b56a1a1cc3e8cda092330ffbe77cc3.

There is currently no warning against that in the class and so we should add one before it's too late.


---

* [SPARK-5815](https://issues.apache.org/jira/browse/SPARK-5815) | *Major* | **Deprecate SVDPlusPlus APIs that expose DoubleMatrix from JBLAS**

It is generally bad to expose types defined in a 3rd-party package in Spark public APIs. We should deprecate those methods in SVDPlusPlus and replace them in the next release.


---

* [SPARK-5811](https://issues.apache.org/jira/browse/SPARK-5811) | *Critical* | **Documentation for --packages and --repositories on Spark Shell**

Documentation for the new support for dependency management using maven coordinates using --packages and --repositories


---

* [SPARK-5810](https://issues.apache.org/jira/browse/SPARK-5810) | *Blocker* | **Maven Coordinate Inclusion failing in pySpark**

When including maven coordinates to download dependencies in pyspark, pyspark returns a GatewayError, because it cannot read the proper port to communicate with the JVM. This is because pyspark relies on STDIN to read the port number and in the meantime Ivy prints out a whole lot of logs.


---

* [SPARK-5806](https://issues.apache.org/jira/browse/SPARK-5806) | *Major* | **Organize sections in mllib-clustering.md**

We separate code examples from algorithm descriptions. It would be better if we put the example code close to each algorithm description.


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

* [SPARK-5804](https://issues.apache.org/jira/browse/SPARK-5804) | *Minor* | **Explicitly manage cache in Crossvalidation k-fold loop**

On a big dataset explicitly unpersist train and validation folds allows to load more data into memory in the next loop iteration. On my environment (single node 8Gb worker RAM, 2 GB dataset file, 3 folds for cross validation), saved more than 5 minutes.


---

* [SPARK-5803](https://issues.apache.org/jira/browse/SPARK-5803) | *Major* | **Use ArrayBuilder instead of ArrayBuffer for primitive types**

ArrayBuffer is not specialized and hence it boxes primitive-typed values.


---

* [SPARK-5802](https://issues.apache.org/jira/browse/SPARK-5802) | *Major* | **Cache scaled data in GLM**

If we modify the input data (to append bias or to scale features), we should cache the output to avoid recomputing transformed vectors each time.


---

* [SPARK-5800](https://issues.apache.org/jira/browse/SPARK-5800) | *Minor* | **Streaming. Change linked files according the selected language**

Currently, Spark Streaming Programming Guide after updateStateByKey explanation links to file stateful\_network\_wordcount.py and note "For the complete Scala code ..." for any language tab selected. This is an incoherence.


---

* [SPARK-5799](https://issues.apache.org/jira/browse/SPARK-5799) | *Minor* | **Compute aggregation function on specified numeric columns**

Compute aggregation function on specified numeric columns. For example:

val df = Seq(("a", 1, 0, "b"), ("b", 2, 4, "c"), ("a", 2, 3, "d")).toDataFrame("key", "value1", "value2", "rest")

df.groupBy("key").min("value2")


---

* [SPARK-5796](https://issues.apache.org/jira/browse/SPARK-5796) | *Minor* | **Do not transform data on a last estimator in Pipeline**

If it's a last estimator in Pipeline there's no need to transform data, since there's no next stage that would consume this data.


---

* [SPARK-5795](https://issues.apache.org/jira/browse/SPARK-5795) | *Critical* | **api.java.JavaPairDStream.saveAsNewAPIHadoopFiles may not friendly to java**

import org.apache.hadoop.mapreduce.lib.output.TextOutputFormat;

the following code can't compile on java.
JavaPairDStream<Integer, Integer> rs =....
rs.saveAsNewAPIHadoopFiles("prefix", "txt", Integer.class, Integer.class, TextOutputFormat.class, jobConf);

but similar code in JavaPairRDD works ok.
JavaPairRDD<String, String> counts =.......
counts.saveAsNewAPIHadoopFile("out", Text.class, Text.class, TextOutputFormat.class, jobConf);
====================
mybe the 
  def saveAsNewAPIHadoopFiles(
      prefix: String,
      suffix: String,
      keyClass: Class[\_],
      valueClass: Class[\_],
      outputFormatClass: Class[\_ <: NewOutputFormat[\_, \_]],
      conf: Configuration = new Configuration) {
    dstream.saveAsNewAPIHadoopFiles(prefix, suffix, keyClass, valueClass, outputFormatClass, conf)
  }
=====>
def saveAsNewAPIHadoopFiles[F <: NewOutputFormat[\_, \_]](
      prefix: String,
      suffix: String,
      keyClass: Class[\_],
      valueClass: Class[\_],
      outputFormatClass: Class[F],
      conf: Configuration = new Configuration) {
    dstream.saveAsNewAPIHadoopFiles(prefix, suffix, keyClass, valueClass, outputFormatClass, conf)
  }


---

* [SPARK-5789](https://issues.apache.org/jira/browse/SPARK-5789) | *Major* | **Throw a better error message if JsonRDD.parseJson encounters unrecoverable parsing errors.**

For example
{code}
sqlContext.jsonRDD(sc.parallelize(""""a":1}"""::Nil))
{code}
will throw
{code}
scala.MatchError: a (of class java.lang.String)
	at org.apache.spark.sql.json.JsonRDD$$anonfun$parseJson$1$$anonfun$apply$2.apply(JsonRDD.scala:302)
	at org.apache.spark.sql.json.JsonRDD$$anonfun$parseJson$1$$anonfun$apply$2.apply(JsonRDD.scala:300)
	at scala.collection.Iterator$$anon$13.hasNext(Iterator.scala:371)
	at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
	at org.apache.spark.rdd.RDD$$anonfun$19.apply(RDD.scala:879)
	at org.apache.spark.rdd.RDD$$anonfun$19.apply(RDD.scala:878)
	at org.apache.spark.SparkContext$$anonfun$30.apply(SparkContext.scala:1516)
	at org.apache.spark.SparkContext$$anonfun$30.apply(SparkContext.scala:1516)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:61)
	at org.apache.spark.scheduler.Task.run(Task.scala:64)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:197)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
15/02/12 15:08:55 INFO scheduler.TaskSetManager: Finished task 0.0 in stage 4.0 (TID 26) in 10 ms on localhost (7/8)
15/02/12 15:08:55 WARN scheduler.TaskSetManager: Lost task 7.0 in stage 4.0 (TID 33, localhost): scala.MatchError: a (of class java.lang.String)
	at org.apache.spark.sql.json.JsonRDD$$anonfun$parseJson$1$$anonfun$apply$2.apply(JsonRDD.scala:302)
	at org.apache.spark.sql.json.JsonRDD$$anonfun$parseJson$1$$anonfun$apply$2.apply(JsonRDD.scala:300)
	at scala.collection.Iterator$$anon$13.hasNext(Iterator.scala:371)
	at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
	at org.apache.spark.rdd.RDD$$anonfun$19.apply(RDD.scala:879)
	at org.apache.spark.rdd.RDD$$anonfun$19.apply(RDD.scala:878)
	at org.apache.spark.SparkContext$$anonfun$30.apply(SparkContext.scala:1516)
	at org.apache.spark.SparkContext$$anonfun$30.apply(SparkContext.scala:1516)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:61)
	at org.apache.spark.scheduler.Task.run(Task.scala:64)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:197)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
{code}


---

* [SPARK-5788](https://issues.apache.org/jira/browse/SPARK-5788) | *Blocker* | **Capture exceptions in Python write thread**

The exception in Python writer thread will shutdown executor.


---

* [SPARK-5785](https://issues.apache.org/jira/browse/SPARK-5785) | *Major* | **Pyspark does not support narrow dependencies**

joins (& cogroups etc.) are always considered to have "wide" dependencies in pyspark, they are never narrow.  This can cause unnecessary shuffles.  eg., this simple job should shuffle rddA & rddB once each, but it also will do a third shuffle of the unioned data:

{code}
rddA = sc.parallelize(range(100)).map(lambda x: (x,x)).partitionBy(64)

rddB = sc.parallelize(range(100)).map(lambda x: (x,x)).partitionBy(64)

joined = rddA.join(rddB)
joined.count()

>>> rddA.\_partitionFunc == rddB.\_partitionFunc
True
{code}


(Or the docs should somewhere explain that this feature is missing from pyspark.)


---

* [SPARK-5780](https://issues.apache.org/jira/browse/SPARK-5780) | *Major* | **The loggings of Python unittests are noisy and scaring in**

There a bunch of logging coming from driver and worker, it's noisy and scaring, and a lots of exception in it, people are confusing about the tests are failing or not.

It should mute the logging during tests, only show them if any one failed.


---

* [SPARK-5778](https://issues.apache.org/jira/browse/SPARK-5778) | *Minor* | **Throw if nonexistent "spark.metrics.conf" file is provided**

Spark looks for a {{MetricsSystem}} configuration file when the {{spark.metrics.conf}} parameter is set, [defaulting to the path "{{metrics.properties}}" when it's not set|https://github.com/apache/spark/blob/466b1f671b21f575d28f9c103f51765790914fe3/core/src/main/scala/org/apache/spark/metrics/MetricsConfig.scala#L52-L55].

In the event of a failure to find or parse the file, [the exception is caught and an error is logged|https://github.com/apache/spark/blob/466b1f671b21f575d28f9c103f51765790914fe3/core/src/main/scala/org/apache/spark/metrics/MetricsConfig.scala#L61].

This seems like reasonable behavior in the general case where the user has not specified a {{spark.metrics.conf}} file. However, I've been bitten several times by having specified a file that all or some executors did not have present (I typo'd the path, or forgot to add an additional {{--files}} flag to make my local metrics config file get shipped to all executors), the error was swallowed and I was confused about why I'd captured no metrics from a job that appeared to have run successfully.

I'd like to change the behavior to actually throw if the user has specified a configuration file that doesn't exist.


---

* [SPARK-5775](https://issues.apache.org/jira/browse/SPARK-5775) | *Blocker* | **GenericRow cannot be cast to SpecificMutableRow when nested data and partitioned table**

Using the "LOAD" sql command in Hive context to load parquet files into a partitioned table causes exceptions during query time. 
The bug requires the table to have a column of *type Array of struct* and to be *partitioned*. 

The example bellow shows how to reproduce the bug and you can see that if the table is not partitioned the query works fine. 

{noformat}
scala> val data1 = """{"data\_array":[{"field1":1,"field2":2}]}"""
scala> val data2 = """{"data\_array":[{"field1":3,"field2":4}]}"""
scala> val jsonRDD = sc.makeRDD(data1 :: data2 :: Nil)
scala> val schemaRDD = hiveContext.jsonRDD(jsonRDD)
scala> schemaRDD.printSchema
root
 |-- data\_array: array (nullable = true)
 |    |-- element: struct (containsNull = false)
 |    |    |-- field1: integer (nullable = true)
 |    |    |-- field2: integer (nullable = true)

scala> hiveContext.sql("create external table if not exists partitioned\_table(data\_array ARRAY <STRUCT<field1: INT, field2: INT>>) Partitioned by (date STRING) STORED AS PARQUET Location 'hdfs://****/partitioned\_table'")
scala> hiveContext.sql("create external table if not exists none\_partitioned\_table(data\_array ARRAY <STRUCT<field1: INT, field2: INT>>) STORED AS PARQUET Location 'hdfs://****/none\_partitioned\_table'")

scala> schemaRDD.saveAsParquetFile("hdfs://****/tmp\_data\_1")
scala> schemaRDD.saveAsParquetFile("hdfs://****/tmp\_data\_2")

scala> hiveContext.sql("LOAD DATA INPATH 'hdfs://qa-hdc001.ffm.nugg.ad:8020/erlogd/tmp\_data\_1' INTO TABLE partitioned\_table PARTITION(date='2015-02-12')")
scala> hiveContext.sql("LOAD DATA INPATH 'hdfs://qa-hdc001.ffm.nugg.ad:8020/erlogd/tmp\_data\_2' INTO TABLE none\_partitioned\_table")

scala> hiveContext.sql("select data.field1 from none\_partitioned\_table LATERAL VIEW explode(data\_array) nestedStuff AS data").collect
res23: Array[org.apache.spark.sql.Row] = Array([1], [3])

scala> hiveContext.sql("select data.field1 from partitioned\_table LATERAL VIEW explode(data\_array) nestedStuff AS data").collect

15/02/12 16:21:03 INFO ParseDriver: Parsing command: select data.field1 from partitioned\_table LATERAL VIEW explode(data\_array) nestedStuff AS data
15/02/12 16:21:03 INFO ParseDriver: Parse Completed
15/02/12 16:21:03 INFO MemoryStore: ensureFreeSpace(260661) called with curMem=0, maxMem=280248975
15/02/12 16:21:03 INFO MemoryStore: Block broadcast\_18 stored as values in memory (estimated size 254.6 KB, free 267.0 MB)
15/02/12 16:21:03 INFO MemoryStore: ensureFreeSpace(28615) called with curMem=260661, maxMem=280248975
15/02/12 16:21:03 INFO MemoryStore: Block broadcast\_18\_piece0 stored as bytes in memory (estimated size 27.9 KB, free 267.0 MB)
15/02/12 16:21:03 INFO BlockManagerInfo: Added broadcast\_18\_piece0 in memory on *****:51990 (size: 27.9 KB, free: 267.2 MB)
15/02/12 16:21:03 INFO BlockManagerMaster: Updated info of block broadcast\_18\_piece0
15/02/12 16:21:03 INFO SparkContext: Created broadcast 18 from NewHadoopRDD at ParquetTableOperations.scala:119
15/02/12 16:21:03 INFO FileInputFormat: Total input paths to process : 3
15/02/12 16:21:03 INFO ParquetInputFormat: Total input paths to process : 3
15/02/12 16:21:03 INFO FilteringParquetRowInputFormat: Using Task Side Metadata Split Strategy
15/02/12 16:21:03 INFO SparkContext: Starting job: collect at SparkPlan.scala:84
15/02/12 16:21:03 INFO DAGScheduler: Got job 12 (collect at SparkPlan.scala:84) with 3 output partitions (allowLocal=false)
15/02/12 16:21:03 INFO DAGScheduler: Final stage: Stage 13(collect at SparkPlan.scala:84)
15/02/12 16:21:03 INFO DAGScheduler: Parents of final stage: List()
15/02/12 16:21:03 INFO DAGScheduler: Missing parents: List()
15/02/12 16:21:03 INFO DAGScheduler: Submitting Stage 13 (MappedRDD[111] at map at SparkPlan.scala:84), which has no missing parents
15/02/12 16:21:03 INFO MemoryStore: ensureFreeSpace(7632) called with curMem=289276, maxMem=280248975
15/02/12 16:21:03 INFO MemoryStore: Block broadcast\_19 stored as values in memory (estimated size 7.5 KB, free 267.0 MB)
15/02/12 16:21:03 INFO MemoryStore: ensureFreeSpace(4230) called with curMem=296908, maxMem=280248975
15/02/12 16:21:03 INFO MemoryStore: Block broadcast\_19\_piece0 stored as bytes in memory (estimated size 4.1 KB, free 267.0 MB)
15/02/12 16:21:03 INFO BlockManagerInfo: Added broadcast\_19\_piece0 in memory on *****:51990 (size: 4.1 KB, free: 267.2 MB)
15/02/12 16:21:03 INFO BlockManagerMaster: Updated info of block broadcast\_19\_piece0
15/02/12 16:21:03 INFO SparkContext: Created broadcast 19 from broadcast at DAGScheduler.scala:838
15/02/12 16:21:03 INFO DAGScheduler: Submitting 3 missing tasks from Stage 13 (MappedRDD[111] at map at SparkPlan.scala:84)
15/02/12 16:21:03 INFO TaskSchedulerImpl: Adding task set 13.0 with 3 tasks
15/02/12 16:21:03 INFO TaskSetManager: Starting task 0.0 in stage 13.0 (TID 48, *****, NODE\_LOCAL, 1640 bytes)
15/02/12 16:21:03 INFO TaskSetManager: Starting task 1.0 in stage 13.0 (TID 49, *****, NODE\_LOCAL, 1641 bytes)
15/02/12 16:21:03 INFO TaskSetManager: Starting task 2.0 in stage 13.0 (TID 50, *****, NODE\_LOCAL, 1640 bytes)
15/02/12 16:21:03 INFO BlockManagerInfo: Added broadcast\_19\_piece0 in memory on *****:39729 (size: 4.1 KB, free: 133.6 MB)
15/02/12 16:21:03 INFO BlockManagerInfo: Added broadcast\_19\_piece0 in memory on *****:48213 (size: 4.1 KB, free: 133.6 MB)
15/02/12 16:21:04 INFO BlockManagerInfo: Added broadcast\_19\_piece0 in memory on *****:45394 (size: 4.1 KB, free: 133.6 MB)
15/02/12 16:21:04 INFO BlockManagerInfo: Added broadcast\_18\_piece0 in memory on *****:39729 (size: 27.9 KB, free: 133.6 MB)
15/02/12 16:21:04 INFO BlockManagerInfo: Added broadcast\_18\_piece0 in memory on *****:48213 (size: 27.9 KB, free: 133.6 MB)
15/02/12 16:21:04 INFO BlockManagerInfo: Added broadcast\_18\_piece0 in memory on *****:45394 (size: 27.9 KB, free: 133.6 MB)
15/02/12 16:21:04 WARN TaskSetManager: Lost task 0.0 in stage 13.0 (TID 48, *****): java.lang.ClassCastException: org.apache.spark.sql.catalyst.expressions.GenericRow cannot be cast to org.apache.spark.sql.catalyst.expressions.SpecificMutableRow
  at org.apache.spark.sql.parquet.ParquetTableScan$$anonfun$execute$4$$anon$1.next(ParquetTableOperations.scala:147)
  at org.apache.spark.sql.parquet.ParquetTableScan$$anonfun$execute$4$$anon$1.next(ParquetTableOperations.scala:144)
  at scala.collection.Iterator$$anon$13.hasNext(Iterator.scala:371)
  at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
  at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
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
  at org.apache.spark.rdd.RDD$$anonfun$17.apply(RDD.scala:797)
  at org.apache.spark.rdd.RDD$$anonfun$17.apply(RDD.scala:797)
  at org.apache.spark.SparkContext$$anonfun$runJob$4.apply(SparkContext.scala:1353)
  at org.apache.spark.SparkContext$$anonfun$runJob$4.apply(SparkContext.scala:1353)
  at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:61)
  at org.apache.spark.scheduler.Task.run(Task.scala:56)
  at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:200)
  at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
  at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
  at java.lang.Thread.run(Thread.java:744)

15/02/12 16:21:04 INFO TaskSetManager: Starting task 0.1 in stage 13.0 (TID 51, *****, NODE\_LOCAL, 1640 bytes)
15/02/12 16:21:04 INFO TaskSetManager: Lost task 1.0 in stage 13.0 (TID 49) on executor *****: java.lang.ClassCastException (org.apache.spark.sql.catalyst.expressions.GenericRow cannot be cast to org.apache.spark.sql.catalyst.expressions.SpecificMutableRow) [duplicate 1]
15/02/12 16:21:04 INFO TaskSetManager: Starting task 1.1 in stage 13.0 (TID 52, *****, NODE\_LOCAL, 1641 bytes)
15/02/12 16:21:04 INFO TaskSetManager: Lost task 0.1 in stage 13.0 (TID 51) on executor *****: java.lang.ClassCastException (org.apache.spark.sql.catalyst.expressions.GenericRow cannot be cast to org.apache.spark.sql.catalyst.expressions.SpecificMutableRow) [duplicate 2]
15/02/12 16:21:04 INFO TaskSetManager: Starting task 0.2 in stage 13.0 (TID 53, *****, NODE\_LOCAL, 1640 bytes)
15/02/12 16:21:04 INFO TaskSetManager: Finished task 2.0 in stage 13.0 (TID 50) in 405 ms on ***** (1/3)
15/02/12 16:21:04 INFO TaskSetManager: Lost task 1.1 in stage 13.0 (TID 52) on executor *****: java.lang.ClassCastException (org.apache.spark.sql.catalyst.expressions.GenericRow cannot be cast to org.apache.spark.sql.catalyst.expressions.SpecificMutableRow) [duplicate 3]
15/02/12 16:21:04 INFO TaskSetManager: Starting task 1.2 in stage 13.0 (TID 54, *****, NODE\_LOCAL, 1641 bytes)
15/02/12 16:21:04 INFO TaskSetManager: Lost task 0.2 in stage 13.0 (TID 53) on executor *****: java.lang.ClassCastException (org.apache.spark.sql.catalyst.expressions.GenericRow cannot be cast to org.apache.spark.sql.catalyst.expressions.SpecificMutableRow) [duplicate 4]
15/02/12 16:21:04 INFO TaskSetManager: Starting task 0.3 in stage 13.0 (TID 55, *****, NODE\_LOCAL, 1640 bytes)
15/02/12 16:21:04 INFO TaskSetManager: Lost task 1.2 in stage 13.0 (TID 54) on executor *****: java.lang.ClassCastException (org.apache.spark.sql.catalyst.expressions.GenericRow cannot be cast to org.apache.spark.sql.catalyst.expressions.SpecificMutableRow) [duplicate 5]
15/02/12 16:21:04 INFO TaskSetManager: Starting task 1.3 in stage 13.0 (TID 56, *****, NODE\_LOCAL, 1641 bytes)
15/02/12 16:21:04 INFO TaskSetManager: Lost task 0.3 in stage 13.0 (TID 55) on executor *****: java.lang.ClassCastException (org.apache.spark.sql.catalyst.expressions.GenericRow cannot be cast to org.apache.spark.sql.catalyst.expressions.SpecificMutableRow) [duplicate 6]
15/02/12 16:21:04 ERROR TaskSetManager: Task 0 in stage 13.0 failed 4 times; aborting job
15/02/12 16:21:04 INFO TaskSchedulerImpl: Cancelling stage 13
15/02/12 16:21:04 INFO TaskSchedulerImpl: Stage 13 was cancelled
15/02/12 16:21:04 INFO DAGScheduler: Job 12 failed: collect at SparkPlan.scala:84, took 0.556942 s
15/02/12 16:21:04 WARN TaskSetManager: Lost task 1.3 in stage 13.0 (TID 56, *****): TaskKilled (killed intentionally)
15/02/12 16:21:04 INFO TaskSchedulerImpl: Removed TaskSet 13.0, whose tasks have all completed, from pool 
org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 13.0 failed 4 times, most recent failure: Lost task 0.3 in stage 13.0 (TID 55, *****): java.lang.ClassCastException: org.apache.spark.sql.catalyst.expressions.GenericRow cannot be cast to org.apache.spark.sql.catalyst.expressions.SpecificMutableRow
  at org.apache.spark.sql.parquet.ParquetTableScan$$anonfun$execute$4$$anon$1.next(ParquetTableOperations.scala:147)
  at org.apache.spark.sql.parquet.ParquetTableScan$$anonfun$execute$4$$anon$1.next(ParquetTableOperations.scala:144)
  at scala.collection.Iterator$$anon$13.hasNext(Iterator.scala:371)
  at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
  at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
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
  at org.apache.spark.rdd.RDD$$anonfun$17.apply(RDD.scala:797)
  at org.apache.spark.rdd.RDD$$anonfun$17.apply(RDD.scala:797)
  at org.apache.spark.SparkContext$$anonfun$runJob$4.apply(SparkContext.scala:1353)
  at org.apache.spark.SparkContext$$anonfun$runJob$4.apply(SparkContext.scala:1353)
  at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:61)
  at org.apache.spark.scheduler.Task.run(Task.scala:56)
  at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:200)
  at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
  at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
  at java.lang.Thread.run(Thread.java:744)

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


{noformat}


---

* [SPARK-5769](https://issues.apache.org/jira/browse/SPARK-5769) | *Major* | **Set params in constructor and setParams() in Python ML pipeline API**

As discussed in the design doc of SPARK-4586, we want to make Python users happy (no setters/getters) while keeping a low maintenance cost by forcing keyword arguments in the constructor and in setParams.


---

* [SPARK-5767](https://issues.apache.org/jira/browse/SPARK-5767) | *Major* | **Migrate Parquet data source to the write support of data source API**

Migrate to the newly introduced data source write support API (SPARK-5658). Add support for overwriting and appending to existing tables.


---

* [SPARK-5765](https://issues.apache.org/jira/browse/SPARK-5765) | *Major* | **word split problem in run-example and compute-classpath**

Work split problem in spark directory path in scripts
run-example and compute-classpath.sh

This was introduced in defect fix SPARK-4504


---

* [SPARK-5762](https://issues.apache.org/jira/browse/SPARK-5762) | *Major* | **Shuffle write time is incorrect for sort-based shuffle**

For the sort-based shuffle, when bypassing merge sort, one file is written for each partition, and then a final file is written that concatenates all of the existing files together. The time to write this final file is not included in the shuffle write time.


---

* [SPARK-5761](https://issues.apache.org/jira/browse/SPARK-5761) | *Major* | **Revamp StandaloneRestProtocolSuite**

It currently runs an end-to-end test which is both slow and reported as flaky here: SPARK-5690. We should make it test the individual components more closely and make it more like unit test suite instead.


---

* [SPARK-5760](https://issues.apache.org/jira/browse/SPARK-5760) | *Critical* | **StandaloneRestClient/Server error behavior is incorrect**

There are three main known issues:

(1) Server would always send the JSON to the servlet's output stream. However, if the response code is not 200, the client reads from the error stream instead. The server must write to the correct stream depending on the response code.

(2) If the server returns an empty response (no JSON), then both output and error streams are null at the client, leading to NPEs. This happens if the server throws an internal exception that it cannot recover from.

(3) The default error handling servlet did not match the URL cases correctly, because there are empty strings in the list.


---

* [SPARK-5759](https://issues.apache.org/jira/browse/SPARK-5759) | *Major* | **ExecutorRunnable should catch YarnException while NMClient start container**

some time since some of reasons, it lead to some exception while NMClient start container.example:we do not config spark\_shuffle on some machines, so it will throw a exception:
java.lang.Error: org.apache.hadoop.yarn.exceptions.InvalidAuxServiceException: The auxService:spark\_shuffle does not exist.
 because YarnAllocator use ThreadPoolExecutor to start Container, so we can not find which container or hostname throw exception. I think we should catch YarnException  in ExecutorRunnable  when start container. if there are some exceptions, we can know the container id or hostname of failed container.


---

* [SPARK-5758](https://issues.apache.org/jira/browse/SPARK-5758) | *Major* | **Use LongType as the default type for integers in JSON schema inference.**

Per discussion in https://github.com/apache/spark/pull/4521, we will use LongType as the default data type for integer values in JSON schema inference.


---

* [SPARK-5757](https://issues.apache.org/jira/browse/SPARK-5757) | *Critical* | **Use json4s instead of DataFrame.toJSON in model export**

We use DataFrame.toJSON to save/load model metadata, which depends on DataFrame's JSON support and subject to changes made there. To avoid conflicts, e.g., https://github.com/apache/spark/pull/4544, we should use json4s directly.


---

* [SPARK-5752](https://issues.apache.org/jira/browse/SPARK-5752) | *Major* | **Don't implicitly convert RDDs directly to DataFrames**

DataFrame is a rich API consisting of too many functions. It would be safer to convert RDDs to a DataFrameHolder that consists of only two functions:
{code}
- toDataFrame()
- toDataFrame(String*)
{code}

This way, it is highly unlikely to have ambiguous implicit conversions, at the cost of requiring users to always call toDataFrame before being able to use DataFrame functions.


---

* [SPARK-5751](https://issues.apache.org/jira/browse/SPARK-5751) | *Critical* | **Flaky test: o.a.s.sql.hive.thriftserver.HiveThriftServer2Suite sometimes times out**

The "Test JDBC query execution" test case times out occasionally, all other test cases are just fine. The failure output only contains service startup command line without any log output. Guess somehow the test case misses the log file path.


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

* [SPARK-5746](https://issues.apache.org/jira/browse/SPARK-5746) | *Blocker* | **Check invalid cases for the write path of data source API**

Right now, with the newly introduced write support of data source API, {{JSONRelation}} and {{ParquetRelation2}} both delete data first when the save mode is overwrite ([here|https://github.com/apache/spark/blob/1ac099e3e00ddb01af8e6e3a84c70f8363f04b5c/sql/core/src/main/scala/org/apache/spark/sql/json/JSONRelation.scala#L112-L121]) and this behavior introduces issues when the destination table is an input table of the query. For example
{code}
INSERT OVERWRITE t SELECT * FROM t
{code}

We need to add an analysis rule to check cases that are invalid for the write path of data source API.


---

* [SPARK-5741](https://issues.apache.org/jira/browse/SPARK-5741) | *Major* | **Support the path contains comma in HiveContext**

When run ```select * from nzhang\_part where hr = 'file,';```, it throws exception ```java.lang.IllegalArgumentException: Can not create a Path from an empty string```. Because the path of hdfs contains comma, and FileInputFormat.setInputPaths will split path by comma.

###############################
SQL
###############################
set hive.merge.mapfiles=true; 
set hive.merge.mapredfiles=true;
set hive.input.format=org.apache.hadoop.hive.ql.io.HiveInputFormat;
set hive.exec.dynamic.partition=true;
set hive.exec.dynamic.partition.mode=nonstrict;

create table nzhang\_part like srcpart;

insert overwrite table nzhang\_part partition (ds='2010-08-15', hr) select key, value, hr from srcpart where ds='2008-04-08';

insert overwrite table nzhang\_part partition (ds='2010-08-15', hr=11) select key, value from srcpart where ds='2008-04-08';

insert overwrite table nzhang\_part partition (ds='2010-08-15', hr)  
select * from (
    select key, value, hr from srcpart where ds='2008-04-08'
    union all
    select '1' as key, '1' as value, 'file,' as hr from src limit 1) s;

select * from nzhang\_part where hr = 'file,';

###############################
Error log
###############################
15/02/10 14:33:16 ERROR SparkSQLDriver: Failed in [select * from nzhang\_part where hr = 'file,']
java.lang.IllegalArgumentException: Can not create a Path from an empty string
        at org.apache.hadoop.fs.Path.checkPathArg(Path.java:127)
        at org.apache.hadoop.fs.Path.<init>(Path.java:135)
        at org.apache.hadoop.util.StringUtils.stringToPath(StringUtils.java:241)
        at org.apache.hadoop.mapred.FileInputFormat.setInputPaths(FileInputFormat.java:400)
        at org.apache.spark.sql.hive.HadoopTableReader$.initializeLocalJobConfFunc(TableReader.scala:251)
        at org.apache.spark.sql.hive.HadoopTableReader$$anonfun$11.apply(TableReader.scala:229)
        at org.apache.spark.sql.hive.HadoopTableReader$$anonfun$11.apply(TableReader.scala:229)
        at org.apache.spark.rdd.HadoopRDD$$anonfun$getJobConf$6.apply(HadoopRDD.scala:172)
        at org.apache.spark.rdd.HadoopRDD$$anonfun$getJobConf$6.apply(HadoopRDD.scala:172)
        at scala.Option.map(Option.scala:145)
        at org.apache.spark.rdd.HadoopRDD.getJobConf(HadoopRDD.scala:172)
        at org.apache.spark.rdd.HadoopRDD.getPartitions(HadoopRDD.scala:196)
        at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:223)
        at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:221)
        at scala.Option.getOrElse(Option.scala:120)
        at org.apache.spark.rdd.RDD.partitions(RDD.scala:221)
        at org.apache.spark.rdd.MapPartitionsRDD.getPartitions(MapPartitionsRDD.scala:32)
        at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:223)
        at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:221)
        at scala.Option.getOrElse(Option.scala:120)
        at org.apache.spark.rdd.RDD.partitions(RDD.scala:221)
        at org.apache.spark.rdd.MapPartitionsRDD.getPartitions(MapPartitionsRDD.scala:32)
        at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:223)
        at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:221)
        at scala.Option.getOrElse(Option.scala:120)
        at org.apache.spark.rdd.RDD.partitions(RDD.scala:221)
        at org.apache.spark.rdd.UnionRDD$$anonfun$1.apply(UnionRDD.scala:66)
        at org.apache.spark.rdd.UnionRDD$$anonfun$1.apply(UnionRDD.scala:66)
        at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
        at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
        at scala.collection.immutable.List.foreach(List.scala:318)
        at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
        at scala.collection.AbstractTraversable.map(Traversable.scala:105)
        at org.apache.spark.rdd.UnionRDD.getPartitions(UnionRDD.scala:66)
        at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:223)
        at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:221)
        at scala.Option.getOrElse(Option.scala:120)
        at org.apache.spark.rdd.RDD.partitions(RDD.scala:221)
        at org.apache.spark.rdd.MapPartitionsRDD.getPartitions(MapPartitionsRDD.scala:32)
        at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:223)
        at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:221)
        at scala.Option.getOrElse(Option.scala:120)
        at org.apache.spark.rdd.RDD.partitions(RDD.scala:221)
        at org.apache.spark.SparkContext.runJob(SparkContext.scala:1391)
        at org.apache.spark.rdd.RDD.collect(RDD.scala:811)
        at org.apache.spark.sql.execution.SparkPlan.executeCollect(SparkPlan.scala:81)
        at org.apache.spark.sql.hive.HiveContext$QueryExecution.stringResult(HiveContext.scala:446)
        at org.apache.spark.sql.hive.thriftserver.AbstractSparkSQLDriver.run(AbstractSparkSQLDriver.scala:58)
        at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver.processCmd(SparkSQLCLIDriver.scala:275)
        at org.apache.hadoop.hive.cli.CliDriver.processLine(CliDriver.java:423)
        at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver$.main(SparkSQLCLIDriver.scala:211)
        at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver.main(SparkSQLCLIDriver.scala)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:606)
        at org.apache.spark.deploy.SparkSubmit$.launch(SparkSubmit.scala:403)
        at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:77)
        at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)


---

* [SPARK-5735](https://issues.apache.org/jira/browse/SPARK-5735) | *Major* | **Replace uses of EasyMock with Mockito**

There are a few reasons we should drop EasyMock. First, we should have a single mocking framework in our tests in general to keep things consistent. Second, EasyMock has caused us some dependency pain in our tests due to objenesis. We aren't totally sure but suspect such conflicts might be causing non deterministic test failures.


---

* [SPARK-5734](https://issues.apache.org/jira/browse/SPARK-5734) | *Major* | **Allow creating a DataFrame from local Python data**

Maybe a local Python list and a Pandas DataFrame.


---

* [SPARK-5733](https://issues.apache.org/jira/browse/SPARK-5733) | *Minor* | **Error Link in Pagination of HistroyPage when showing Incomplete Applications**

The links in pagination of HistroyPage is wrong when showing Incomplete Applications. 

If "2" is click on the following page "http://history-server:18080/?page=1&showIncomplete=true", it will go  to  "http://history-server:18080/?page=2" instead of "http://history-server:18080/?page=2&showIncomplete=true".


---

* [SPARK-5732](https://issues.apache.org/jira/browse/SPARK-5732) | *Minor* | **Add an option to print the spark version in spark script**

Naturally, we may need to add an option to print the spark version in spark script. It is pretty common in many script tools


---

* [SPARK-5731](https://issues.apache.org/jira/browse/SPARK-5731) | *Blocker* | **Flaky test: o.a.s.streaming.kafka.DirectKafkaStreamSuite.basic stream receiving with multiple topics and smallest starting offset**

{code}
sbt.ForkMain$ForkError: The code passed to eventually never returned normally. Attempted 110 times over 20.070287525 seconds. Last failure message: 300 did not equal 48 didn't get all messages.
	at org.scalatest.concurrent.Eventually$class.tryTryAgain$1(Eventually.scala:420)
	at org.scalatest.concurrent.Eventually$class.eventually(Eventually.scala:438)
	at org.apache.spark.streaming.kafka.KafkaStreamSuiteBase.eventually(KafkaStreamSuite.scala:49)
	at org.scalatest.concurrent.Eventually$class.eventually(Eventually.scala:307)
	at org.apache.spark.streaming.kafka.KafkaStreamSuiteBase.eventually(KafkaStreamSuite.scala:49)
	at org.apache.spark.streaming.kafka.DirectKafkaStreamSuite$$anonfun$2.apply$mcV$sp(DirectKafkaStreamSuite.scala:110)
	at org.apache.spark.streaming.kafka.DirectKafkaStreamSuite$$anonfun$2.apply(DirectKafkaStreamSuite.scala:70)
	at org.apache.spark.streaming.kafka.DirectKafkaStreamSuite$$anonfun$2.apply(DirectKafkaStreamSuite.scala:70)
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
	at org.apache.spark.streaming.kafka.DirectKafkaStreamSuite.org$scalatest$BeforeAndAfter$$super$runTest(DirectKafkaStreamSuite.scala:38)
	at org.scalatest.BeforeAndAfter$class.runTest(BeforeAndAfter.scala:200)
	at org.apache.spark.streaming.kafka.DirectKafkaStreamSuite.runTest(DirectKafkaStreamSuite.scala:38)
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
	at org.apache.spark.streaming.kafka.DirectKafkaStreamSuite.org$scalatest$BeforeAndAfter$$super$run(DirectKafkaStreamSuite.scala:38)
	at org.scalatest.BeforeAndAfter$class.run(BeforeAndAfter.scala:241)
	at org.apache.spark.streaming.kafka.DirectKafkaStreamSuite.org$scalatest$BeforeAndAfterAll$$super$run(DirectKafkaStreamSuite.scala:38)
	at org.scalatest.BeforeAndAfterAll$class.liftedTree1$1(BeforeAndAfterAll.scala:257)
	at org.scalatest.BeforeAndAfterAll$class.run(BeforeAndAfterAll.scala:256)
	at org.apache.spark.streaming.kafka.DirectKafkaStreamSuite.run(DirectKafkaStreamSuite.scala:38)
	at org.scalatest.tools.Framework.org$scalatest$tools$Framework$$runSuite(Framework.scala:462)
	at org.scalatest.tools.Framework$ScalaTestTask.execute(Framework.scala:671)
	at sbt.ForkMain$Run$2.call(ForkMain.java:294)
	at sbt.ForkMain$Run$2.call(ForkMain.java:284)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
Caused by: sbt.ForkMain$ForkError: 300 did not equal 48 didn't get all messages
	at org.scalatest.Assertions$class.newAssertionFailedException(Assertions.scala:500)
	at org.scalatest.FunSuite.newAssertionFailedException(FunSuite.scala:1555)
	at org.scalatest.Assertions$AssertionsHelper.macroAssert(Assertions.scala:466)
	at org.apache.spark.streaming.kafka.DirectKafkaStreamSuite$$anonfun$2$$anonfun$apply$mcV$sp$1.apply$mcV$sp(DirectKafkaStreamSuite.scala:111)
	at org.apache.spark.streaming.kafka.DirectKafkaStreamSuite$$anonfun$2$$anonfun$apply$mcV$sp$1.apply(DirectKafkaStreamSuite.scala:111)
	at org.apache.spark.streaming.kafka.DirectKafkaStreamSuite$$anonfun$2$$anonfun$apply$mcV$sp$1.apply(DirectKafkaStreamSuite.scala:111)
	at org.scalatest.concurrent.Eventually$class.makeAValiantAttempt$1(Eventually.scala:394)
	at org.scalatest.concurrent.Eventually$class.tryTryAgain$1(Eventually.scala:408)
	... 53 more
{code}


---

* [SPARK-5730](https://issues.apache.org/jira/browse/SPARK-5730) | *Major* | **Group methods in the generated doc for spark.ml algorithms.**

In spark.ml, we have params and their setters/getters. It is nice to group them in the generated docs. Params should be in the top, while setters/getters should be at the bottom.


---

* [SPARK-5729](https://issues.apache.org/jira/browse/SPARK-5729) | *Critical* | **Potential NPE in StandaloneRestServer if user specifies bad path**

When we delegate something to the default ErrorServlet, the context should be "/*", not just "/". One line fix.


---

* [SPARK-5728](https://issues.apache.org/jira/browse/SPARK-5728) | *Trivial* | **MQTTStreamSuite leaves behind ActiveMQ database files**

I've seen this several times and finally wanted to fix it: {{MQTTStreamSuite}} uses a local ActiveMQ broker, that creates a working dir for its database in the {{external/mqtt}} directory called {{activemq}}. This doesn't get cleaned up, at least often it does not for me. It's trivial to set it to use a temp directory which the test harness does clean up.


---

* [SPARK-5725](https://issues.apache.org/jira/browse/SPARK-5725) | *Major* | **ParquetRelation2.equals throws when compared with non-Parquet relations**

it's an apparent mistake, [forgot to return {{false}} in other cases|https://github.com/apache/spark/blob/5820961289eb98e45eb467efa316c7592b8d619c/sql/core/src/main/scala/org/apache/spark/sql/parquet/newParquet.scala#L150-L155].


---

* [SPARK-5723](https://issues.apache.org/jira/browse/SPARK-5723) | *Blocker* | **Change the default file format to Parquet for CTAS statements.**

Right now, if you issue a CTAS queries without specifying file format and serde info, we will use TextFile. We should switch to Parquet.


---

* [SPARK-5717](https://issues.apache.org/jira/browse/SPARK-5717) | *Trivial* | **add sc.stop to LDA examples**

Trivial. add sc stop and reorganize import in LDAExample and JavaLDAExample


---

* [SPARK-5716](https://issues.apache.org/jira/browse/SPARK-5716) | *Major* | **Support TOK\_CHARSETLITERAL in HiveQl**

where value = \_UTF8 0x12345678


---

* [SPARK-5714](https://issues.apache.org/jira/browse/SPARK-5714) | *Minor* | **Refactor initial step of LDA to remove redundant operations**

The initialState of LDA performs several RDD operations that looks redundant. This pr tries to simplify these operations.


---

* [SPARK-5703](https://issues.apache.org/jira/browse/SPARK-5703) | *Critical* | **AllJobsPage throws empty.max error**

In JobProgressListener, if you have a JobEnd that does not have a corresponding JobStart, AND you render the AllJobsPage, then you'll run into the empty.max exception.

I ran into this when trying to replay parts of an event log after trimming a few events. Not a common use case I agree, but I'd argue that it should never fail on empty.max.


---

* [SPARK-5702](https://issues.apache.org/jira/browse/SPARK-5702) | *Major* | **Allow short names for built-in data sources**

e.g. json, parquet, jdbc.


---

* [SPARK-5701](https://issues.apache.org/jira/browse/SPARK-5701) | *Minor* | **Only set ShuffleReadMetrics when task does a shuffle**

The updateShuffleReadMetrics method in TaskMetrics (called by the executor heartbeater) will currently always add a ShuffleReadMetrics to TaskMetrics (with values set to 0), even when the task didn't read any shuffle data.  ShuffleReadMetrics should only be added if the task reads shuffle data.


---

* [SPARK-5700](https://issues.apache.org/jira/browse/SPARK-5700) | *Major* | **Bump jets3t version from 0.9.2 to 0.9.3 in hadoop-2.3 and hadoop-2.4 profiles**

This is a follow-up ticket for SPARK-5671 and SPARK-5696.

JetS3t 0.9.2 contains a log4j.properties file inside the artifact and breaks our tests (see SPARK-5696). This is fixed in 0.9.3.


---

* [SPARK-5699](https://issues.apache.org/jira/browse/SPARK-5699) | *Major* | **Thrift server test suites are not executed even if SQL code is touched**

{{hive-thriftserver/test}} is missing [in this line|https://github.com/apache/spark/blob/f48199eb354d6ec8675c2c1f96c3005064058d66/dev/run-tests#L186].


---

* [SPARK-5698](https://issues.apache.org/jira/browse/SPARK-5698) | *Critical* | **Dynamic allocation: do not allow user to request a negative delta**

If the user calls the following in series:

sc.requestExecutors(-5)
sc.killExecutor(...)

Then we might crash the ApplicationMaster. Why?

Well, if we request a negative number of additional executors, then the YarnAllocator will lower the target number of executors it is trying to achieve by 5. This might shoot the target number past 0. Then, if so, when we try to kill an executor it will fail the assertion that the target number must be >=0.


---

* [SPARK-5696](https://issues.apache.org/jira/browse/SPARK-5696) | *Critical* | **HiveThriftServer2Suite fails because of extra log4j.properties in the driver classpath**

PR #2982 added the {{--driver-class-path}} flag to {{HiveThriftServer2Suite}} so that it passes when the {{hadoop-provided}} profile is used. However,  {{lib\_managed/jars/jets3s-0.9.2.jar}} in the classpath has a log4j.properties in it, which sets root logger level to ERROR. This makes {{HiveThriftServer2Suite}} fail because it starts new processes and checks for log output.


---

* [SPARK-5691](https://issues.apache.org/jira/browse/SPARK-5691) | *Major* | **Preventing duplicate registering of an application has incorrect logic**

If an application registers twice with the Master, the Master accepts both copies and they both show up in the UI and consume resources. This is incorrect behavior.

This happens inadvertently in regular usage when the Master is under high load, but it boils down to: when an application times out registering with the master and sends a second registration message, but the Master is still alive, it processes the first registration message for the application but also erroneously processes the second registration message instead of discarding it.


---

* [SPARK-5690](https://issues.apache.org/jira/browse/SPARK-5690) | *Critical* | **Flaky test: o.a.s.deploy.rest.StandaloneRestSubmitSuite.simple submit until completion**

https://amplab.cs.berkeley.edu/jenkins/view/Spark/job/Spark-Master-SBT/AMPLAB\_JENKINS\_BUILD\_PROFILE=hadoop1.0,label=centos/1647/testReport/junit/org.apache.spark.deploy.rest/StandaloneRestSubmitSuite/simple\_submit\_until\_completion/

{code}
org.apache.spark.deploy.rest.StandaloneRestSubmitSuite.simple submit until completion

Failing for the past 1 build (Since Failed#1647 )
Took 30 sec.
Error Message

Driver driver-20150209035158-0000 did not finish within 30 seconds.
Stacktrace

sbt.ForkMain$ForkError: Driver driver-20150209035158-0000 did not finish within 30 seconds.
	at org.scalatest.Assertions$class.newAssertionFailedException(Assertions.scala:495)
	at org.scalatest.FunSuite.newAssertionFailedException(FunSuite.scala:1555)
	at org.scalatest.Assertions$class.fail(Assertions.scala:1328)
	at org.scalatest.FunSuite.fail(FunSuite.scala:1555)
	at org.apache.spark.deploy.rest.StandaloneRestSubmitSuite.org$apache$spark$deploy$rest$StandaloneRestSubmitSuite$$waitUntilFinished(StandaloneRestSubmitSuite.scala:152)
	at org.apache.spark.deploy.rest.StandaloneRestSubmitSuite$$anonfun$1.apply$mcV$sp(StandaloneRestSubmitSuite.scala:57)
	at org.apache.spark.deploy.rest.StandaloneRestSubmitSuite$$anonfun$1.apply(StandaloneRestSubmitSuite.scala:52)
	at org.apache.spark.deploy.rest.StandaloneRestSubmitSuite$$anonfun$1.apply(StandaloneRestSubmitSuite.scala:52)
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
	at org.apache.spark.deploy.rest.StandaloneRestSubmitSuite.org$scalatest$BeforeAndAfterEach$$super$runTest(StandaloneRestSubmitSuite.scala:41)
	at org.scalatest.BeforeAndAfterEach$class.runTest(BeforeAndAfterEach.scala:255)
	at org.apache.spark.deploy.rest.StandaloneRestSubmitSuite.runTest(StandaloneRestSubmitSuite.scala:41)
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
	at org.apache.spark.deploy.rest.StandaloneRestSubmitSuite.org$scalatest$BeforeAndAfterAll$$super$run(StandaloneRestSubmitSuite.scala:41)
	at org.scalatest.BeforeAndAfterAll$class.liftedTree1$1(BeforeAndAfterAll.scala:257)
	at org.scalatest.BeforeAndAfterAll$class.run(BeforeAndAfterAll.scala:256)
	at org.apache.spark.deploy.rest.StandaloneRestSubmitSuite.run(StandaloneRestSubmitSuite.scala:41)
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

* [SPARK-5686](https://issues.apache.org/jira/browse/SPARK-5686) | *Minor* | **Support `show current roles`**

show current roles


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

* [SPARK-5678](https://issues.apache.org/jira/browse/SPARK-5678) | *Major* | **DataFrame.to\_pandas**

to\_pandas to convert a DataFrame into a Pandas DataFrame. Note that the whole DataFrame API should still work even when Pandas is not available.


---

* [SPARK-5677](https://issues.apache.org/jira/browse/SPARK-5677) | *Major* | **Python DataFrame API remaining tasks**

- DataFrame.renameColumn
- DataFrame.show (also we should override \_\_repr\_\_ or \_\_str\_\_)
- dtypes should use simpleString rather than jsonValue


---

* [SPARK-5675](https://issues.apache.org/jira/browse/SPARK-5675) | *Major* | **XyzType companion object should subclass XyzType**


Otherwise, the following will always be false in Java:

{code}
dataType instanceof StringType
{code}


---

* [SPARK-5672](https://issues.apache.org/jira/browse/SPARK-5672) | *Minor* | **Don't return `ERROR 500` when have missing args**

Spark web UI return HTTP ERROR 500 when GET arguments is missing.


---

* [SPARK-5671](https://issues.apache.org/jira/browse/SPARK-5671) | *Major* | **Bump jets3t version from 0.9.0 to 0.9.2 in hadoop-2.3 and hadoop-2.4 profiles**

Bumping the jets3t version from 0.9.0 to 0.9.2 for the hadoop-2.3 and hadoop-2.4 profiles fixes a dependency conflict issue that was causing UISeleniumSuite tests to fail with ClassNotFoundExceptions in the "with YARN" builds.

Jets3t release notes can be found here: http://www.jets3t.org/RELEASE\_NOTES.html


---

* [SPARK-5667](https://issues.apache.org/jira/browse/SPARK-5667) | *Trivial* | **Remove version from spark-ec2 example.**

Remove version from spark-ec2 example for spark-ec2/Launch Cluster.


---

* [SPARK-5665](https://issues.apache.org/jira/browse/SPARK-5665) | *Minor* | **Update netlib-java documentation**

Sam Halliday has suggested some updates to the documentation of netlib-java: https://github.com/apache/spark/pull/4448  I opened this JIRA to track it.


---

* [SPARK-5662](https://issues.apache.org/jira/browse/SPARK-5662) | *Critical* | **Flaky test: org.apache.spark.streaming.kafka.KafkaDirectStreamSuite.multi topic stream**

{code}
sbt.ForkMain$ForkError: java.net.ConnectException: Connection refused
	at org.apache.spark.streaming.kafka.KafkaUtils$$anonfun$createDirectStream$2.apply(KafkaUtils.scala:319)
	at org.apache.spark.streaming.kafka.KafkaUtils$$anonfun$createDirectStream$2.apply(KafkaUtils.scala:319)
	at scala.util.Either.fold(Either.scala:97)
	at org.apache.spark.streaming.kafka.KafkaUtils$.createDirectStream(KafkaUtils.scala:318)
	at org.apache.spark.streaming.kafka.KafkaDirectStreamSuite$$anonfun$3.apply$mcV$sp(KafkaDirectStreamSuite.scala:66)
	at org.apache.spark.streaming.kafka.KafkaDirectStreamSuite$$anonfun$3.apply(KafkaDirectStreamSuite.scala:59)
	at org.apache.spark.streaming.kafka.KafkaDirectStreamSuite$$anonfun$3.apply(KafkaDirectStreamSuite.scala:59)
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
	at org.apache.spark.streaming.kafka.KafkaDirectStreamSuite.org$scalatest$BeforeAndAfter$$super$runTest(KafkaDirectStreamSuite.scala:32)
	at org.scalatest.BeforeAndAfter$class.runTest(BeforeAndAfter.scala:200)
	at org.apache.spark.streaming.kafka.KafkaDirectStreamSuite.runTest(KafkaDirectStreamSuite.scala:32)
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
	at org.apache.spark.streaming.kafka.KafkaDirectStreamSuite.org$scalatest$BeforeAndAfter$$super$run(KafkaDirectStreamSuite.scala:32)
	at org.scalatest.BeforeAndAfter$class.run(BeforeAndAfter.scala:241)
	at org.apache.spark.streaming.kafka.KafkaDirectStreamSuite.run(KafkaDirectStreamSuite.scala:32)
	at org.scalatest.tools.Framework.org$scalatest$tools$Framework$$runSuite(Framework.scala:462)
	at org.scalatest.tools.Framework$ScalaTestTask.execute(Framework.scala:671)
	at sbt.ForkMain$Run$2.call(ForkMain.java:294)
	at sbt.ForkMain$Run$2.call(ForkMain.java:284)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
{code}

https://amplab.cs.berkeley.edu/jenkins/view/Spark/job/Spark-Master-SBT/1628/AMPLAB\_JENKINS\_BUILD\_PROFILE=hadoop2.0,label=centos/testReport/junit/org.apache.spark.streaming.kafka/KafkaDirectStreamSuite/multi\_topic\_stream/


---

* [SPARK-5661](https://issues.apache.org/jira/browse/SPARK-5661) | *Minor* | **function hasShutdownDeleteTachyonDir should use shutdownDeleteTachyonPaths to determine whether contains file**

function  hasShutdownDeleteTachyonDir should use shutdownDeleteTachyonPaths to determine whether contains file.


---

* [SPARK-5660](https://issues.apache.org/jira/browse/SPARK-5660) | *Minor* | **Local Matrix apply should be public**

Matrix, DenseMatrix, SparseMatrix apply(i,j) should be public.  Otherwise, these objects are basically useless.  This is important since they are returned as results by algorithms such as LDA.


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

* [SPARK-5653](https://issues.apache.org/jira/browse/SPARK-5653) | *Major* | **in ApplicationMaster rename isDriver to isClusterMode**

in ApplicationMaster rename isDriver to isClusterMode,because in Client it uses isClusterMode,ApplicationMaster should keep consistent with it and uses isClusterMode.isClusterMode is easier to understand.


---

* [SPARK-5652](https://issues.apache.org/jira/browse/SPARK-5652) | *Major* | **Use broadcasted weights in LogisticRegressionModel and fix compilation error**

LogisticRegressionModel's predictPoint should directly use broadcasted weights. This pr also fixes the compilation errors of two unit test suite.


---

* [SPARK-5650](https://issues.apache.org/jira/browse/SPARK-5650) | *Minor* | **Optional 'FROM' clause in HiveQl**

In Hive, 'FROM' clause should be optional.


---

* [SPARK-5649](https://issues.apache.org/jira/browse/SPARK-5649) | *Major* | **Throw exception when can not apply datatype cast**

Throw exception when can not apply datatypes cast to info user the cast issue in the sqls.


---

* [SPARK-5648](https://issues.apache.org/jira/browse/SPARK-5648) | *Major* | **support "alter ... unset tblproperties("key")"**

make hivecontext support "unset tblproperties("key")"
like :
alter view viewName unset tblproperties("k")
alter table tableName unset tblproperties("k")


---

* [SPARK-5645](https://issues.apache.org/jira/browse/SPARK-5645) | *Major* | **Track local bytes read for shuffles - update UI**

Currently we do not track the local bytes read for a shuffle read. The UI only shows the remote bytes read. This is pretty confusing to the user because:
1) In local mode all shuffle reads are local
2) the shuffle bytes written from the previous stage might not add up if there are some bytes that are read locally on the shuffle read side
3) With https://github.com/apache/spark/pull/4067 we display the total number of records so that won't line up with only showing the remote bytes read. 

I propose we track the remote and local bytes read separately. In the UI show the total bytes read and in brackets show the remote bytes read for a shuffle.


---

* [SPARK-5640](https://issues.apache.org/jira/browse/SPARK-5640) | *Major* | **org.apache.spark.sql.catalyst.ScalaReflection is not thread safe**

ScalaReflection uses the Scala reflection API but does not synchronize (for example in the {{schemaFor}} method). This leads to concurrency bugs.


---

* [SPARK-5639](https://issues.apache.org/jira/browse/SPARK-5639) | *Major* | **Support DataFrame.renameColumn**

It is incredibly hard to rename a column using the existing DSL. Let's provide that out of the box.


---

* [SPARK-5638](https://issues.apache.org/jira/browse/SPARK-5638) | *Major* | **Add a config flag to disable eager analysis of DataFrames**

SInce DataFrames are eagerly analyzed, there is no way to construct a DataFrame that is invalid anymore (which can be very useful for debugging invalid queries).


---

* [SPARK-5636](https://issues.apache.org/jira/browse/SPARK-5636) | *Major* | **Lower dynamic allocation add interval**

The current default of 1 min is a little long especially since a recent patch causes the number of executors to start at 0 by default. We should ramp up much more quickly in the beginning.


---

* [SPARK-5633](https://issues.apache.org/jira/browse/SPARK-5633) | *Minor* | **pyspark saveAsTextFile support for compression codec**

Scala and Java API allows to provide compression codec with saveAsTextFile(path, codec)
PySpark saveAsTextFile API does not support passing codec class.

This story is about adding saveAsTextFile(path, codec) support into pyspark.


---

* [SPARK-5628](https://issues.apache.org/jira/browse/SPARK-5628) | *Minor* | **Add option to return spark-ec2 version**

We need a {{--version}} option for {{spark-ec2}}.


---

* [SPARK-5620](https://issues.apache.org/jira/browse/SPARK-5620) | *Major* | **Group methods in generated unidoc**

Having methods show up in groups makes the doc more readable. For ML, we have many parameters and their setters/getters, it is necessary to group them. Same applies to the new DataFrame API.

The grouping disappeared in recent versions of sbt-unidoc. We may miss some compiler options.


---

* [SPARK-5618](https://issues.apache.org/jira/browse/SPARK-5618) | *Minor* | **Optimise utility code.**

I refactored the evaluation timing and unnecessary Regex API call.
Because Regex API is heavy.


---

* [SPARK-5617](https://issues.apache.org/jira/browse/SPARK-5617) | *Major* | **test failure of SQLQuerySuite**

SQLQuerySuite test failure: 
{code}
[info] - simple select (22 milliseconds)
[info] - sorting (722 milliseconds)
[info] - external sorting (728 milliseconds)
[info] - limit (95 milliseconds)
[info] - date row *** FAILED *** (35 milliseconds)
[info]   Results do not match for query:
[info]   'Limit 1
[info]    'Project [CAST(2015-01-28, DateType) AS c0#3630]
[info]     'UnresolvedRelation [testData], None
[info]   
[info]   == Analyzed Plan ==
[info]   Limit 1
[info]    Project [CAST(2015-01-28, DateType) AS c0#3630]
[info]     LogicalRDD [key#0,value#1], MapPartitionsRDD[1] at mapPartitions at ExistingRDD.scala:35
[info]   
[info]   == Physical Plan ==
[info]   Limit 1
[info]    Project [16463 AS c0#3630]
[info]     PhysicalRDD [key#0,value#1], MapPartitionsRDD[1] at mapPartitions at ExistingRDD.scala:35
[info]   
[info]   == Results ==
[info]   !== Correct Answer - 1 ==   == Spark Answer - 1 ==
[info]   ![2015-01-28]               [2015-01-27] (QueryTest.scala:77)
[info]   org.scalatest.exceptions.TestFailedException:
[info]   at org.scalatest.Assertions$class.newAssertionFailedException(Assertions.scala:495)
[info]   at org.scalatest.FunSuite.newAssertionFailedException(FunSuite.scala:1555)
[info]   at org.scalatest.Assertions$class.fail(Assertions.scala:1328)
[info]   at org.scalatest.FunSuite.fail(FunSuite.scala:1555)
[info]   at org.apache.spark.sql.QueryTest.checkAnswer(QueryTest.scala:77)
[info]   at org.apache.spark.sql.QueryTest.checkAnswer(QueryTest.scala:95)
[info]   at org.apache.spark.sql.SQLQuerySuite$$anonfun$23.apply$mcV$sp(SQLQuerySuite.scala:300)
[info]   at org.apache.spark.sql.SQLQuerySuite$$anonfun$23.apply(SQLQuerySuite.scala:300)
[info]   at org.apache.spark.sql.SQLQuerySuite$$anonfun$23.apply(SQLQuerySuite.scala:300)
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
[info]   at org.scalatest.SuperEngine$$anonfun$traverseSubNode
{code}


---

* [SPARK-5614](https://issues.apache.org/jira/browse/SPARK-5614) | *Major* | **Predicate pushdown through Generate**

Now in Catalyst's rules, predicates can not be pushed through "Generate" nodes. Further more, partition pruning in HiveTableScan can not be applied on those queries involves "Generate". This makes such queries very inefficient.
For example, physical plan for query
{quote}
select len, bk
from s\_server lateral view explode(len\_arr) len\_table as len 
where len > 5 and day = '20150102';
{quote}
where 'day' is a partition column in metastore is like this in current version of Spark SQL:
{quote}
Project [len, bk]

Filter ((len > "5") && "(day = "20150102")")

Generate explode(len\_arr), true, false

HiveTableScan [bk, len\_arr, day], (MetastoreRelation default, s\_server, None), None
{quote}
But theoretically the plan should be like this
{quote}
Project [len, bk]

Filter (len > "5")

Generate explode(len\_arr), true, false

HiveTableScan [bk, len\_arr, day], (MetastoreRelation default, s\_server, None), Some(day = "20150102")
{quote} 
Where partition pruning predicates can be pushed to HiveTableScan nodes.
I've developed a solution on this issue. If you guys do not have a plan for this already, I could merge the solution back to master.
And there is also a problem on column pruning for "Generate", I would file another issue about that.


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

* [SPARK-5612](https://issues.apache.org/jira/browse/SPARK-5612) | *Major* | **Move DataFrame implicit functions into SQLContext.implicits**

It is a bad idea to encourage users to wildcard import sqlContext.\_.


---

* [SPARK-5609](https://issues.apache.org/jira/browse/SPARK-5609) | *Trivial* | **PythonMLlibAPI trainGaussianMixture seed should use Java type**

trainGaussianMixture takes parameter seed of type scala.Long but should take java.lang.Long.
Otherwise, the test for whether seed is null (None in Python) will be ineffective.  See compilation warning:
{code}
[warn] /Users/josephkb/spark/mllib/src/main/scala/org/apache/spark/mllib/api/python/PythonMLLibAPI.scala:304: comparing values of types Long and Null using `!=' will always yield true
[warn]     if (seed != null) gmmAlg.setSeed(seed)
[warn]              ^
{code}


---

* [SPARK-5608](https://issues.apache.org/jira/browse/SPARK-5608) | *Major* | **Improve SEO of Spark documentation site to let Google find latest docs**

Google currently has trouble finding spark.apache.org/docs/latest, so a lot of the results returned for various queries are from random previous versions of Spark where someone created a link. I'd like to do the following:

- Add a sitemap.xml to spark.apache.org that lists all the docs/latest pages (already done)
- Add meta description tags on some of the most important doc pages
- Shorten the titles of some pages to have more relevant keywords; for example there's no reason to have "Spark SQL Programming Guide - Spark 1.2.0 documentation", we can just say "Spark SQL - Spark 1.2.0 documentation".


---

* [SPARK-5607](https://issues.apache.org/jira/browse/SPARK-5607) | *Major* | **NullPointerException in objenesis**

Tests are sometimes failing with the following exception.

The problem might be that Kryo is using a different version of objenesis from Mockito.

{code}
[info] - Process succeeds instantly *** FAILED *** (107 milliseconds)
[info]   java.lang.NullPointerException:
[info]   at org.objenesis.strategy.StdInstantiatorStrategy.newInstantiatorOf(StdInstantiatorStrategy.java:52)
[info]   at org.objenesis.ObjenesisBase.getInstantiatorOf(ObjenesisBase.java:90)
[info]   at org.objenesis.ObjenesisBase.newInstance(ObjenesisBase.java:73)
[info]   at org.mockito.internal.creation.jmock.ClassImposterizer.createProxy(ClassImposterizer.java:111)
[info]   at org.mockito.internal.creation.jmock.ClassImposterizer.imposterise(ClassImposterizer.java:51)
[info]   at org.mockito.internal.util.MockUtil.createMock(MockUtil.java:52)
[info]   at org.mockito.internal.MockitoCore.mock(MockitoCore.java:41)
[info]   at org.mockito.Mockito.mock(Mockito.java:1014)
[info]   at org.mockito.Mockito.mock(Mockito.java:909)
[info]   at org.apache.spark.deploy.worker.DriverRunnerTest$$anonfun$1.apply$mcV$sp(DriverRunnerTest.scala:50)
[info]   at org.apache.spark.deploy.worker.DriverRunnerTest$$anonfun$1.apply(DriverRunnerTest.scala:47)
[info]   at org.apache.spark.deploy.worker.DriverRunnerTest$$anonfun$1.apply(DriverRunnerTest.scala:47)
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


More information:

Kryo depends on objenesis 1.2, and line 52 is getting some VM\_VERSION, which is a static field from the super class.

Mockito depends on objenesis 2.1.


---

* [SPARK-5606](https://issues.apache.org/jira/browse/SPARK-5606) | *Major* | **Support plus sign in HiveContext**

Now spark version is only support ```SELECT -key FROM DECIMAL\_UDF;``` in HiveContext.
This patch is used to support ```SELECT +key FROM DECIMAL\_UDF;``` in HiveContext.


---

* [SPARK-5605](https://issues.apache.org/jira/browse/SPARK-5605) | *Major* | **Allow using String to specify colum name in DSL aggregate functions**

Since it is unlikely users need to call aggregate functions on a literal string, we might as well simplify the dsl to also support calling aggregate functions on a column by name.

e.g.

sum("colName")

instead of

sum($"colName")  or   sum(col("colName"))


---

* [SPARK-5604](https://issues.apache.org/jira/browse/SPARK-5604) | *Major* | **Remove setCheckpointDir from LDA and tree Strategy**

Continue the discussion from the LDA PR. CheckpoingDir is a global Spark configuration, which should not be altered by an ML algorithm. We could check whether checkpointDir is set if checkpointInterval is positive.


---

* [SPARK-5603](https://issues.apache.org/jira/browse/SPARK-5603) | *Blocker* | **Preinsert casting and renaming rule is needed in the Analyzer**

For an INSERT INTO/OVERWRITE statement, we should add necessary Cast and Alias to the output of the query.

{code}
CREATE TEMPORARY TABLE jsonTable (a int, b string)
USING org.apache.spark.sql.json.DefaultSource
OPTIONS (
  path '...'
)
INSERT OVERWRITE TABLE jsonTable SELECT a * 2, a * 4 FROM table
{code}
For a*2, we should create an Alias, so the InsertableRelation can know it is the column a. For a*4, it is actually the column b in jsonTable. We should first cast it to StringType and add an Alias b to it.


---

* [SPARK-5601](https://issues.apache.org/jira/browse/SPARK-5601) | *Major* | **Make streaming algorithms Java-friendly**

Streaming algorithms take DStream. We should also support JavaDStream and JavaPairDStream for Java users.


---

* [SPARK-5600](https://issues.apache.org/jira/browse/SPARK-5600) | *Minor* | **Sort order of unfinished apps can be wrong in History Server**

The code that merges new logs with old logs sorts applications by their end time only. Unfinished apps all have the same end time (-1), so the sort order ends up being undefined.

This was uncovered by the attempt to fix SPARK-5345 (https://github.com/apache/spark/pull/4133).


---

* [SPARK-5599](https://issues.apache.org/jira/browse/SPARK-5599) | *Major* | **Audit MLlib public APIs for 1.3**

We merged couple new features for 1.3 and we should make another pass on the public APIs.


---

* [SPARK-5598](https://issues.apache.org/jira/browse/SPARK-5598) | *Major* | **Model import/export for ALS**

Please see parent JIRA for details on model import/export plans.


---

* [SPARK-5597](https://issues.apache.org/jira/browse/SPARK-5597) | *Major* | **Model import/export for DecisionTree and ensembles**

See parent JIRA for more info.


---

* [SPARK-5596](https://issues.apache.org/jira/browse/SPARK-5596) | *Major* | **Model import/export for GLMs and Naive Bayes**

See the parent JIRA for details on model import/export.  This is a sub-task to make for smaller PRs.


---

* [SPARK-5593](https://issues.apache.org/jira/browse/SPARK-5593) | *Major* | **Replace BlockManager listener with Executor listener in ExecutorAllocationListener**

More strictly, in ExecutorAllocationListener, we need to replace onBlockManagerAdded, onBlockManagerRemoved with onExecutorAdded,onExecutorRemoved. because at some time, onExecutorAdded and onExecutorRemoved are more accurate to express these meanings. example at SPARK-5529, BlockManager has been removed,but executor is existed.
[~andrewor14] [~sandyr]


---

* [SPARK-5592](https://issues.apache.org/jira/browse/SPARK-5592) | *Major* | **java.net.URISyntaxException when insert data to a partitioned table**

{code}
create table sc as select * 
from (select '2011-01-11', '2011-01-11+14:18:26' from src tablesample (1 rows)
      union all 
      select '2011-01-11', '2011-01-11+15:18:26' from src tablesample (1 rows)
      union all 
      select '2011-01-11', '2011-01-11+16:18:26' from src tablesample (1 rows) ) s;

create table sc\_part (key string) partitioned by (ts string) stored as rcfile;

set hive.exec.dynamic.partition=true;
set hive.exec.dynamic.partition.mode=nonstrict;

insert overwrite table sc\_part partition(ts) select * from sc;
{code}
Exception thrown:
{code}
java.net.URISyntaxException: Relative path in absolute URI: ts=2011-01-11+15:18:26
        at org.apache.hadoop.fs.Path.initialize(Path.java:206)
        at org.apache.hadoop.fs.Path.<init>(Path.java:172)
        at org.apache.hadoop.fs.Path.<init>(Path.java:94)
        at org.apache.spark.sql.hive.SparkHiveDynamicPartitionWriterContainer.org$apache$spark$sql$hive$SparkHiveDynamicPartitionWriterContainer$$newWriter$1(hiveWriterContainers.scala:230)
        at org.apache.spark.sql.hive.SparkHiveDynamicPartitionWriterContainer$$anonfun$getLocalFileWriter$1.apply(hiveWriterContainers.scala:243)
        at org.apache.spark.sql.hive.SparkHiveDynamicPartitionWriterContainer$$anonfun$getLocalFileWriter$1.apply(hiveWriterContainers.scala:243)
        at scala.collection.mutable.MapLike$class.getOrElseUpdate(MapLike.scala:189)
        at scala.collection.mutable.AbstractMap.getOrElseUpdate(Map.scala:91)
        at org.apache.spark.sql.hive.SparkHiveDynamicPartitionWriterContainer.getLocalFileWriter(hiveWriterContainers.scala:243)
        at org.apache.spark.sql.hive.execution.InsertIntoHiveTable$$anonfun$org$apache$spark$sql$hive$execution$InsertIntoHiveTable$$writeToFile$1$1.apply(InsertIntoHiveTable.scala:113)
        at org.apache.spark.sql.hive.execution.InsertIntoHiveTable$$anonfun$org$apache$spark$sql$hive$execution$InsertIntoHiveTable$$writeToFile$1$1.apply(InsertIntoHiveTable.scala:105)
        at scala.collection.Iterator$class.foreach(Iterator.scala:727)
        at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
        at org.apache.spark.sql.hive.execution.InsertIntoHiveTable.org$apache$spark$sql$hive$execution$InsertIntoHiveTable$$writeToFile$1(InsertIntoHiveTable.scala:105)
        at org.apache.spark.sql.hive.execution.InsertIntoHiveTable$$anonfun$saveAsHiveFile$3.apply(InsertIntoHiveTable.scala:87)
        at org.apache.spark.sql.hive.execution.InsertIntoHiveTable$$anonfun$saveAsHiveFile$3.apply(InsertIntoHiveTable.scala:87)
        at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:61)
        at org.apache.spark.scheduler.Task.run(Task.scala:64)
        at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:194)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1110)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:603)
        at java.lang.Thread.run(Thread.java:722)
Caused by: java.net.URISyntaxException: Relative path in absolute URI: ts=2011-01-11+15:18:26
        at java.net.URI.checkPath(URI.java:1804)
        at java.net.URI.<init>(URI.java:752)
        at org.apache.hadoop.fs.Path.initialize(Path.java:203)
        ... 21 more
{code}


---

* [SPARK-5591](https://issues.apache.org/jira/browse/SPARK-5591) | *Major* | **NoSuchObjectException for CTAS**

NoSuchObjectException for CTAS, 
create table sc as select * 
from (select '2011-01-11', '2011-01-11+14:18:26' from src tablesample (1 rows)
      union all 
      select '2011-01-11', '2011-01-11+15:18:26' from src tablesample (1 rows)
      union all 
      select '2011-01-11', '2011-01-11+16:18:26' from src tablesample (1 rows) ) s;

Get this exception:

15/02/04 19:44:02 ERROR Hive: NoSuchObjectException(message:default.sc table not found)
        at org.apache.hadoop.hive.metastore.HiveMetaStore$HMSHandler.get\_table(HiveMetaStore.java:1560)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:601)
        at org.apache.hadoop.hive.metastore.RetryingHMSHandler.invoke(RetryingHMSHandler.java:105)
        at $Proxy8.get\_table(Unknown Source)
        at org.apache.hadoop.hive.metastore.HiveMetaStoreClient.getTable(HiveMetaStoreClient.java:997)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:601)
        at org.apache.hadoop.hive.metastore.RetryingMetaStoreClient.invoke(RetryingMetaStoreClient.java:89)
        at $Proxy9.getTable(Unknown Source)
        at org.apache.hadoop.hive.ql.metadata.Hive.getTable(Hive.java:976)
        at org.apache.hadoop.hive.ql.metadata.Hive.getTable(Hive.java:950)
        at org.apache.spark.sql.hive.HiveMetastoreCatalog.tableExists(HiveMetastoreCatalog.scala:152)
        at org.apache.spark.sql.hive.HiveContext$$anon$2.org$apache$spark$sql$catalyst$analysis$OverrideCatalog$$super$tableExists(HiveContext.scala:309)
        at org.apache.spark.sql.catalyst.analysis.OverrideCatalog$class.tableExists(Catalog.scala:121)
        at org.apache.spark.sql.hive.HiveContext$$anon$2.tableExists(HiveContext.scala:309)
        at org.apache.spark.sql.hive.execution.CreateTableAsSelect.run(CreateTableAsSelect.scala:63)
        at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult$lzycompute(commands.scala:53)


---

* [SPARK-5587](https://issues.apache.org/jira/browse/SPARK-5587) | *Major* | **Support change database owner**

Support change database owner :
create database db\_alter\_onr;
describe database db\_alter\_onr;

alter database db\_alter\_onr set owner user user1;
describe database db\_alter\_onr;

alter database db\_alter\_onr set owner role role1;
describe database db\_alter\_onr;


---

* [SPARK-5586](https://issues.apache.org/jira/browse/SPARK-5586) | *Blocker* | **Automatically provide sqlContext in Spark shell**

A simple patch, but we should create a sqlContext (and, if supported by the build, a Hive context) in the Spark shell when it's created, and import the DSL. We can just call it sqlContext. This would save us so much time writing code examples :P


---

* [SPARK-5585](https://issues.apache.org/jira/browse/SPARK-5585) | *Critical* | **Flaky test: Python regression**

Hey [~davies] any chance you can take a look at this? The master build is having random python failures fairly often. Not quite sure what is going on:

{code}
0inputs+128outputs (0major+13320minor)pagefaults 0swaps
Run mllib tests ...
Running test: pyspark/mllib/classification.py
tput: No value for $TERM and no -T specified
Spark assembly has been built with Hive, including Datanucleus jars on classpath
0.43user 0.12system 0:14.85elapsed 3%CPU (0avgtext+0avgdata 94272maxresident)k
0inputs+280outputs (0major+12627minor)pagefaults 0swaps
Running test: pyspark/mllib/clustering.py
tput: No value for $TERM and no -T specified
Spark assembly has been built with Hive, including Datanucleus jars on classpath
0.35user 0.11system 0:12.63elapsed 3%CPU (0avgtext+0avgdata 93568maxresident)k
0inputs+88outputs (0major+12532minor)pagefaults 0swaps
Running test: pyspark/mllib/feature.py
tput: No value for $TERM and no -T specified
Spark assembly has been built with Hive, including Datanucleus jars on classpath
0.28user 0.08system 0:05.73elapsed 6%CPU (0avgtext+0avgdata 93424maxresident)k
0inputs+32outputs (0major+12548minor)pagefaults 0swaps
Running test: pyspark/mllib/linalg.py
0.16user 0.05system 0:00.22elapsed 98%CPU (0avgtext+0avgdata 89888maxresident)k
0inputs+0outputs (0major+8099minor)pagefaults 0swaps
Running test: pyspark/mllib/rand.py
tput: No value for $TERM and no -T specified
Spark assembly has been built with Hive, including Datanucleus jars on classpath
0.25user 0.08system 0:05.42elapsed 6%CPU (0avgtext+0avgdata 87872maxresident)k
0inputs+0outputs (0major+11849minor)pagefaults 0swaps
Running test: pyspark/mllib/recommendation.py
tput: No value for $TERM and no -T specified
Spark assembly has been built with Hive, including Datanucleus jars on classpath
0.32user 0.09system 0:11.42elapsed 3%CPU (0avgtext+0avgdata 94256maxresident)k
0inputs+32outputs (0major+11797minor)pagefaults 0swaps
Running test: pyspark/mllib/regression.py
tput: No value for $TERM and no -T specified
Spark assembly has been built with Hive, including Datanucleus jars on classpath
0.53user 0.17system 0:23.53elapsed 3%CPU (0avgtext+0avgdata 99600maxresident)k
0inputs+48outputs (0major+12402minor)pagefaults 0swaps
Running test: pyspark/mllib/stat/\_statistics.py
tput: No value for $TERM and no -T specified
Spark assembly has been built with Hive, including Datanucleus jars on classpath
0.29user 0.09system 0:08.03elapsed 4%CPU (0avgtext+0avgdata 92656maxresident)k
0inputs+48outputs (0major+12508minor)pagefaults 0swaps
Running test: pyspark/mllib/tree.py
tput: No value for $TERM and no -T specified
Spark assembly has been built with Hive, including Datanucleus jars on classpath
0.57user 0.16system 0:25.30elapsed 2%CPU (0avgtext+0avgdata 94400maxresident)k
0inputs+144outputs (0major+12600minor)pagefaults 0swaps
Running test: pyspark/mllib/util.py
tput: No value for $TERM and no -T specified
Spark assembly has been built with Hive, including Datanucleus jars on classpath
0.20user 0.06system 0:08.08elapsed 3%CPU (0avgtext+0avgdata 92768maxresident)k
0inputs+56outputs (0major+12474minor)pagefaults 0swaps
Running test: pyspark/mllib/tests.py
tput: No value for $TERM and no -T specified
Spark assembly has been built with Hive, including Datanucleus jars on classpath
.........F/usr/lib64/python2.6/site-packages/numpy/core/fromnumeric.py:2499: VisibleDeprecationWarning: `rank` is deprecated; use the `ndim` attribute or function instead. To find the rank of a matrix see `numpy.linalg.matrix\_rank`.
  VisibleDeprecationWarning)
./usr/lib64/python2.6/site-packages/numpy/core/fromnumeric.py:2499: VisibleDeprecationWarning: `rank` is deprecated; use the `ndim` attribute or function instead. To find the rank of a matrix see `numpy.linalg.matrix\_rank`.
  VisibleDeprecationWarning)
/usr/lib64/python2.6/site-packages/numpy/core/fromnumeric.py:2499: VisibleDeprecationWarning: `rank` is deprecated; use the `ndim` attribute or function instead. To find the rank of a matrix see `numpy.linalg.matrix\_rank`.
  VisibleDeprecationWarning)
/usr/lib64/python2.6/site-packages/numpy/core/fromnumeric.py:2499: VisibleDeprecationWarning: `rank` is deprecated; use the `ndim` attribute or function instead. To find the rank of a matrix see `numpy.linalg.matrix\_rank`.
  VisibleDeprecationWarning)
/usr/lib64/python2.6/site-packages/numpy/core/fromnumeric.py:2499: VisibleDeprecationWarning: `rank` is deprecated; use the `ndim` attribute or function instead. To find the rank of a matrix see `numpy.linalg.matrix\_rank`.
  VisibleDeprecationWarning)
./usr/lib64/python2.6/site-packages/numpy/lib/utils.py:95: DeprecationWarning: `dot` is deprecated!
  warnings.warn(depdoc, DeprecationWarning)
.............
======================================================================
FAIL: test\_regression (\_\_main\_\_.ListTests)
----------------------------------------------------------------------
Traceback (most recent call last):
  File "pyspark/mllib/tests.py", line 289, in test\_regression
    self.assertTrue(rf\_model.predict(features[0]) <= 0)
AssertionError: False is not true

----------------------------------------------------------------------
Ran 25 tests in 53.798s
{code}

https://amplab.cs.berkeley.edu/jenkins/view/Spark/job/Spark-Master-SBT/AMPLAB\_JENKINS\_BUILD\_PROFILE=hadoop1.0,label=centos/1496/console


---

* [SPARK-5582](https://issues.apache.org/jira/browse/SPARK-5582) | *Minor* | **History server does not list anything if log root contains an empty directory**

As summary says. Exception from logs:

{noformat}
15/02/03 17:35:10.292 pool-1-thread-1-ScalaTest-running-FsHistoryProviderSuite ERROR FsHistoryProvider: Exception in checking for event log updates
java.lang.UnsupportedOperationException: empty.max
        at scala.collection.TraversableOnce$class.max(TraversableOnce.scala:216)
        at scala.collection.AbstractTraversable.max(Traversable.scala:105)
        at org.apache.spark.deploy.history.FsHistoryProvider.org$apache$spark$deploy$history$FsHistoryProvider$$getModificationTime(FsHistoryProvider.scala:315)
{noformat}

Patch coming up.


---

* [SPARK-5580](https://issues.apache.org/jira/browse/SPARK-5580) | *Major* | **Grep bug in compute-classpath.sh**

When I test spark, I often need to change assembly jar to test different version.
So I will move spark-assembly.*hadoop.*.jar to spark-assembly.*hadoop.*.jar.bak.
But I will get the error info "Found multiple Spark assembly jars in $assembly\_folder:". I think it just need to compare jar, so the grep expression need to begin with "^" and end with "$".


---

* [SPARK-5579](https://issues.apache.org/jira/browse/SPARK-5579) | *Major* | **Provide support for project using SQL expression**

Would be nice to allow something like

df.selectExpr("abs(colA)", "colB")


---

* [SPARK-5578](https://issues.apache.org/jira/browse/SPARK-5578) | *Blocker* | **Provide a convenient way for Scala users to use UDFs**

Dsl.udf(...).


---

* [SPARK-5574](https://issues.apache.org/jira/browse/SPARK-5574) | *Trivial* | **Utils.createDirectory ignores namePrefix**

this is really minor, I just noticed it as I was trying to find the "blockmgr" dir during some debugging, and then realized that the {{namePrefix}} is ignored in  {{Utils.createDirectory}}.  Also via {{Utils.createTempDir}} this effects these dirs:

* httpd
* userFiles
* broadcast

I'll submit a PR.


---

* [SPARK-5573](https://issues.apache.org/jira/browse/SPARK-5573) | *Blocker* | **Support explode in DataFrame DSL**

The DSL is missing explode support. We should enable developers to explode a column, or explode multiple columns.


---

* [SPARK-5558](https://issues.apache.org/jira/browse/SPARK-5558) | *Major* | **pySpark zip function unexpected errors**

Example:
{quote}
x = sc.parallelize(range(0,5))
y = x.map(lambda x: x+1000, preservesPartitioning=True)
y.take(10)
x.zip\(y).collect()
{quote}

Fails in the JVM: py4J: org.apache.spark.SparkException: 
Can only zip RDDs with same number of elements in each partition

If the range is changed to range(0,1000) it fails in pySpark code:
ValueError: Can not deserialize RDD with different number of items in pair: (100, 1) 

It also fails if y.take(10) is replaced with y.toDebugString()
It even fails if we print y.\_jrdd


---

* [SPARK-5557](https://issues.apache.org/jira/browse/SPARK-5557) | *Blocker* | **Servlet API classes now missing after jetty shading**

the log:
{noformat}
5/02/03 19:06:39 INFO spark.HttpServer: Starting HTTP Server
Exception in thread "main" java.lang.NoClassDefFoundError: javax/servlet/http/HttpServletResponse
	at org.apache.spark.HttpServer.org$apache$spark$HttpServer$$doStart(HttpServer.scala:75)
	at org.apache.spark.HttpServer$$anonfun$1.apply(HttpServer.scala:62)
	at org.apache.spark.HttpServer$$anonfun$1.apply(HttpServer.scala:62)
	at org.apache.spark.util.Utils$$anonfun$startServiceOnPort$1.apply$mcVI$sp(Utils.scala:1774)
	at scala.collection.immutable.Range.foreach$mVc$sp(Range.scala:141)
	at org.apache.spark.util.Utils$.startServiceOnPort(Utils.scala:1765)
	at org.apache.spark.HttpServer.start(HttpServer.scala:62)
	at org.apache.spark.repl.SparkIMain.<init>(SparkIMain.scala:130)
	at org.apache.spark.repl.SparkILoop$SparkILoopInterpreter.<init>(SparkILoop.scala:185)
	at org.apache.spark.repl.SparkILoop.createInterpreter(SparkILoop.scala:214)
	at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply$mcZ$sp(SparkILoop.scala:946)
	at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply(SparkILoop.scala:942)
	at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply(SparkILoop.scala:942)
	at scala.tools.nsc.util.ScalaClassLoader$.savingContextLoader(ScalaClassLoader.scala:135)
	at org.apache.spark.repl.SparkILoop.org$apache$spark$repl$SparkILoop$$process(SparkILoop.scala:942)
	at org.apache.spark.repl.SparkILoop.process(SparkILoop.scala:1039)
	at org.apache.spark.repl.Main$.main(Main.scala:31)
	at org.apache.spark.repl.Main.main(Main.scala)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.spark.deploy.SparkSubmit$.launch(SparkSubmit.scala:403)
	at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:77)
	at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)
Caused by: java.lang.ClassNotFoundException: javax.servlet.http.HttpServletResponse
	at java.net.URLClassLoader$1.run(URLClassLoader.java:366)
	at java.net.URLClassLoader$1.run(URLClassLoader.java:355)
	at java.security.AccessController.doPrivileged(Native Method)
	at java.net.URLClassLoader.findClass(URLClassLoader.java:354)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:425)
	at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:308)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:358)
	... 25 more

{noformat}


---

* [SPARK-5555](https://issues.apache.org/jira/browse/SPARK-5555) | *Major* | **Enable UISeleniumSuite tests**

SPARK-3616 added a suite of Selenium tests for the Spark Web UI and subsequent patches added regression tests to it.  These tests are currently disabled by default because they're a bit slow to run, but I think we should re-enable them to prevent regressions in the web UI.


---

* [SPARK-5554](https://issues.apache.org/jira/browse/SPARK-5554) | *Blocker* | **Add more tests and docs for DataFrame Python API**

more tests for DataFrame Python API


---

* [SPARK-5550](https://issues.apache.org/jira/browse/SPARK-5550) | *Major* | **Custom UDF is case sensitive for HiveContext**

SQL in HiveContext, should be case insensitive, however, the following query will fail.

```
udf.register("random0", ()  => { Math.random()})
assert(sql("SELECT RANDOM0() FROM src LIMIT 1").head().getDouble(0) >= 0.0)
```


---

* [SPARK-5549](https://issues.apache.org/jira/browse/SPARK-5549) | *Major* | **Define TaskContext interface in Scala**

I originally proposed defining TaskContext interface in Java so it is more Java friendly. At the time I didn't know the Scala compiler would generate static methods for companion methods (as long as there is no name collision). One problem with defining the interface in Java is that it doesn't show up in ScalaDoc (the interface shows up, but none of the comments do).


---

* [SPARK-5548](https://issues.apache.org/jira/browse/SPARK-5548) | *Critical* | **Flaky test: o.a.s.util.AkkaUtilsSuite.remote fetch ssl on - untrusted server**

{code}
sbt.ForkMain$ForkError: Expected exception java.util.concurrent.TimeoutException to be thrown, but akka.actor.ActorNotFound was thrown.
	at org.scalatest.Assertions$class.newAssertionFailedException(Assertions.scala:496)
	at org.scalatest.FunSuite.newAssertionFailedException(FunSuite.scala:1555)
	at org.scalatest.Assertions$class.intercept(Assertions.scala:1004)
	at org.scalatest.FunSuite.intercept(FunSuite.scala:1555)
	at org.apache.spark.util.AkkaUtilsSuite$$anonfun$8.apply$mcV$sp(AkkaUtilsSuite.scala:373)
	at org.apache.spark.util.AkkaUtilsSuite$$anonfun$8.apply(AkkaUtilsSuite.scala:349)
	at org.apache.spark.util.AkkaUtilsSuite$$anonfun$8.apply(AkkaUtilsSuite.scala:349)
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
	at org.apache.spark.util.AkkaUtilsSuite.org$scalatest$BeforeAndAfterEach$$super$runTest(AkkaUtilsSuite.scala:37)
	at org.scalatest.BeforeAndAfterEach$class.runTest(BeforeAndAfterEach.scala:255)
	at org.apache.spark.util.AkkaUtilsSuite.runTest(AkkaUtilsSuite.scala:37)
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
	at org.apache.spark.util.AkkaUtilsSuite.org$scalatest$BeforeAndAfterAll$$super$run(AkkaUtilsSuite.scala:37)
	at org.scalatest.BeforeAndAfterAll$class.liftedTree1$1(BeforeAndAfterAll.scala:257)
	at org.scalatest.BeforeAndAfterAll$class.run(BeforeAndAfterAll.scala:256)
	at org.apache.spark.util.AkkaUtilsSuite.run(AkkaUtilsSuite.scala:37)
	at org.scalatest.tools.Framework.org$scalatest$tools$Framework$$runSuite(Framework.scala:462)
	at org.scalatest.tools.Framework$ScalaTestTask.execute(Framework.scala:671)
	at sbt.ForkMain$Run$2.call(ForkMain.java:294)
	at sbt.ForkMain$Run$2.call(ForkMain.java:284)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
Caused by: sbt.ForkMain$ForkError: Actor not found for: ActorSelection[Anchor(akka.ssl.tcp://spark@localhost:41417/), Path(/user/MapOutputTracker)]
	at akka.actor.ActorSelection$$anonfun$resolveOne$1.apply(ActorSelection.scala:65)
	at akka.actor.ActorSelection$$anonfun$resolveOne$1.apply(ActorSelection.scala:63)
	at scala.concurrent.impl.CallbackRunnable.run(Promise.scala:32)
	at akka.dispatch.BatchingExecutor$Batch$$anonfun$run$1.processBatch$1(BatchingExecutor.scala:67)
	at akka.dispatch.BatchingExecutor$Batch$$anonfun$run$1.apply$mcV$sp(BatchingExecutor.scala:82)
	at akka.dispatch.BatchingExecutor$Batch$$anonfun$run$1.apply(BatchingExecutor.scala:59)
	at akka.dispatch.BatchingExecutor$Batch$$anonfun$run$1.apply(BatchingExecutor.scala:59)
	at scala.concurrent.BlockContext$.withBlockContext(BlockContext.scala:72)
	at akka.dispatch.BatchingExecutor$Batch.run(BatchingExecutor.scala:58)
	at akka.dispatch.ExecutionContexts$sameThreadExecutionContext$.unbatchedExecute(Future.scala:74)
	at akka.dispatch.BatchingExecutor$class.execute(BatchingExecutor.scala:110)
	at akka.dispatch.ExecutionContexts$sameThreadExecutionContext$.execute(Future.scala:73)
	at scala.concurrent.impl.CallbackRunnable.executeWithValue(Promise.scala:40)
	at scala.concurrent.impl.Promise$DefaultPromise.tryComplete(Promise.scala:248)
	at akka.pattern.PromiseActorRef.$bang(AskSupport.scala:267)
	at akka.actor.EmptyLocalActorRef.specialHandle(ActorRef.scala:508)
	at akka.actor.DeadLetterActorRef.specialHandle(ActorRef.scala:541)
	at akka.actor.DeadLetterActorRef.$bang(ActorRef.scala:531)
	at akka.remote.RemoteActorRefProvider$RemoteDeadLetterActorRef.$bang(RemoteActorRefProvider.scala:87)
	at akka.remote.EndpointWriter.postStop(Endpoint.scala:561)
	at akka.actor.Actor$class.aroundPostStop(Actor.scala:475)
	at akka.remote.EndpointActor.aroundPostStop(Endpoint.scala:415)
	at akka.actor.dungeon.FaultHandling$class.akka$actor$dungeon$FaultHandling$$finishTerminate(FaultHandling.scala:210)
	at akka.actor.dungeon.FaultHandling$class.terminate(FaultHandling.scala:172)
	at akka.actor.ActorCell.terminate(ActorCell.scala:369)
	at akka.actor.ActorCell.invokeAll$1(ActorCell.scala:462)
	at akka.actor.ActorCell.systemInvoke(ActorCell.scala:478)
	at akka.dispatch.Mailbox.processAllSystemMessages(Mailbox.scala:263)
	at akka.dispatch.Mailbox.run(Mailbox.scala:219)
	at akka.dispatch.ForkJoinExecutorConfigurator$AkkaForkJoinTask.exec(AbstractDispatcher.scala:393)
	at scala.concurrent.forkjoin.ForkJoinTask.doExec(ForkJoinTask.java:260)
	at scala.concurrent.forkjoin.ForkJoinPool$WorkQueue.runTask(ForkJoinPool.java:1339)
	at scala.concurrent.forkjoin.ForkJoinPool.runWorker(ForkJoinPool.java:1979)
	at scala.concurrent.forkjoin.ForkJoinWorkerThread.run(ForkJoinWorkerThread.java:107)
{code}


---

* [SPARK-5543](https://issues.apache.org/jira/browse/SPARK-5543) | *Minor* | **Remove unused import JsonUtil from from org.apache.spark.util.JsonProtocol.scala which fails builds with older versions of hadoop-core**

There is an unused import in org.apache.spark.util.JsonProtocol.scala 

`import org.apache.hadoop.hdfs.web.JsonUtil`

This which fails builds with older versions of hadoop-core. In particular building mapr3 causes a compile error;

[ERROR] /var/lib/jenkins/workspace/cse-Apache-Spark/core/src/main/scala/org/apache/spark/util/JsonProtocol.scala:35: object web is not a member of package org.apache.hadoop.hdfs
[ERROR] import org.apache.hadoop.hdfs.web.JsonUtil

This import is unused. It was introduced in PR #4029 https://github.com/apache/spark/pull/4029 as a part of JIRA SPARK-5231


---

* [SPARK-5542](https://issues.apache.org/jira/browse/SPARK-5542) | *Major* | **Decouple publishing, packaging, and tagging in release script**

Our release script should make it easy to do these separately. I.e. it should be possible to publish a release from a tag that we already cut. This would help with things such as publishing nightly releases (SPARK-1517).


---

* [SPARK-5540](https://issues.apache.org/jira/browse/SPARK-5540) | *Major* | **Hide ALS.solveLeastSquares.**

This method survived the code review and it has been there since v1.1.0. It exposes jblas types. Let's remove it from the public API. I expect that no one calls it directly.


---

* [SPARK-5539](https://issues.apache.org/jira/browse/SPARK-5539) | *Major* | **User guide for LDA**

Add a section for LDA in the user guide. We probably don't need to explain the algorithm in details but point people to the wikipedia page. The user guide should focus on public APIs and how to use LDA.


---

* [SPARK-5538](https://issues.apache.org/jira/browse/SPARK-5538) | *Critical* | **CachedTableSuite failure due to unpersisting RDDs in a non-blocking way**

[PR #4173|https://github.com/apache/spark/pull/4173/files#diff-726d84ece1e6f6197b98a5868c881ac7R164] introduced this, and introduced a race condition in {{CachedTableSuite}}.


---

* [SPARK-5537](https://issues.apache.org/jira/browse/SPARK-5537) | *Major* | **Expand user guide for multinomial logistic regression**

We probably don't need to work out the math in the user guide. We can point users to wikipedia for details and focus on the public APIs and how to use it.


---

* [SPARK-5536](https://issues.apache.org/jira/browse/SPARK-5536) | *Major* | **Wrap the old ALS to use the new ALS implementation.**

The new implementation performs better. We should replace the old one.


---

* [SPARK-5534](https://issues.apache.org/jira/browse/SPARK-5534) | *Major* | **EdgeRDD, VertexRDD getStorageLevel return bad values**

After caching a graph, its edge and vertex RDDs still return StorageLevel.None.

Reproduce error:
{code}
import org.apache.spark.graphx.{Edge, Graph}
val edges = Seq(
  Edge[Double](0, 1, 0),
  Edge[Double](1, 2, 0),
  Edge[Double](2, 3, 0),
  Edge[Double](3, 4, 0))
val g = Graph.fromEdges[Double,Double](sc.parallelize(edges), 0)
g.vertices.getStorageLevel  // returns value for StorageLevel.None
g.edges.getStorageLevel  // returns value for StorageLevel.None
g.cache()
g.vertices.count()
g.edges.count()
g.vertices.getStorageLevel  // returns value for StorageLevel.None
g.edges.getStorageLevel  // returns value for StorageLevel.None
{code}


---

* [SPARK-5532](https://issues.apache.org/jira/browse/SPARK-5532) | *Critical* | **Repartitioning DataFrame causes saveAsParquetFile to fail with VectorUDT**

Deterministic failure:
{code}
import org.apache.spark.mllib.linalg.\_
import org.apache.spark.sql.SQLContext
val sqlContext = new SQLContext(sc)
import sqlContext.\_
val data = sc.parallelize(Seq((1.0, Vectors.dense(1,2,3)))).toDataFrame("label", "features")
data.repartition(1).saveAsParquetFile("blah")
{code}
If you remove the repartition, then this succeeds.

Here's the stack trace:
{code}
15/02/02 12:10:53 WARN TaskSetManager: Lost task 0.0 in stage 2.0 (TID 4, 192.168.1.230): java.lang.ClassCastException: org.apache.spark.mllib.linalg.DenseVector cannot be cast to org.apache.spark.sql.Row
	at org.apache.spark.sql.parquet.RowWriteSupport.writeValue(ParquetTableSupport.scala:186)
	at org.apache.spark.sql.parquet.RowWriteSupport.writeValue(ParquetTableSupport.scala:177)
	at org.apache.spark.sql.parquet.RowWriteSupport.write(ParquetTableSupport.scala:166)
	at org.apache.spark.sql.parquet.RowWriteSupport.write(ParquetTableSupport.scala:129)
	at parquet.hadoop.InternalParquetRecordWriter.write(InternalParquetRecordWriter.java:120)
	at parquet.hadoop.ParquetRecordWriter.write(ParquetRecordWriter.java:81)
	at parquet.hadoop.ParquetRecordWriter.write(ParquetRecordWriter.java:37)
	at org.apache.spark.sql.parquet.InsertIntoParquetTable.org$apache$spark$sql$parquet$InsertIntoParquetTable$$writeShard$1(ParquetTableOperations.scala:315)
	at org.apache.spark.sql.parquet.InsertIntoParquetTable$$anonfun$saveAsHadoopFile$1.apply(ParquetTableOperations.scala:332)
	at org.apache.spark.sql.parquet.InsertIntoParquetTable$$anonfun$saveAsHadoopFile$1.apply(ParquetTableOperations.scala:332)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:61)
	at org.apache.spark.scheduler.Task.run(Task.scala:64)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:194)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)

15/02/02 12:10:54 ERROR TaskSetManager: Task 0 in stage 2.0 failed 4 times; aborting job
org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 2.0 failed 4 times, most recent failure: Lost task 0.3 in stage 2.0 (TID 7, 192.168.1.230): java.lang.ClassCastException: org.apache.spark.mllib.linalg.DenseVector cannot be cast to org.apache.spark.sql.Row
	at org.apache.spark.sql.parquet.RowWriteSupport.writeValue(ParquetTableSupport.scala:186)
	at org.apache.spark.sql.parquet.RowWriteSupport.writeValue(ParquetTableSupport.scala:177)
	at org.apache.spark.sql.parquet.RowWriteSupport.write(ParquetTableSupport.scala:166)
	at org.apache.spark.sql.parquet.RowWriteSupport.write(ParquetTableSupport.scala:129)
	at parquet.hadoop.InternalParquetRecordWriter.write(InternalParquetRecordWriter.java:120)
	at parquet.hadoop.ParquetRecordWriter.write(ParquetRecordWriter.java:81)
	at parquet.hadoop.ParquetRecordWriter.write(ParquetRecordWriter.java:37)
	at org.apache.spark.sql.parquet.InsertIntoParquetTable.org$apache$spark$sql$parquet$InsertIntoParquetTable$$writeShard$1(ParquetTableOperations.scala:315)
	at org.apache.spark.sql.parquet.InsertIntoParquetTable$$anonfun$saveAsHadoopFile$1.apply(ParquetTableOperations.scala:332)
	at org.apache.spark.sql.parquet.InsertIntoParquetTable$$anonfun$saveAsHadoopFile$1.apply(ParquetTableOperations.scala:332)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:61)
	at org.apache.spark.scheduler.Task.run(Task.scala:64)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:194)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)

Driver stacktrace:
	at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$failJobAndIndependentStages(DAGScheduler.scala:1185)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1174)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1173)
	at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
	at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
	at org.apache.spark.scheduler.DAGScheduler.abortStage(DAGScheduler.scala:1173)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:684)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:684)
	at scala.Option.foreach(Option.scala:236)
	at org.apache.spark.scheduler.DAGScheduler.handleTaskSetFailed(DAGScheduler.scala:684)
	at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1366)
	at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1327)
	at org.apache.spark.util.EventLoop$$anon$1.run(EventLoop.scala:48)
{code}


---

* [SPARK-5530](https://issues.apache.org/jira/browse/SPARK-5530) | *Critical* | **ApplicationMaster can't kill executor when using dynamicAllocation**

Yarn allocator logs "Attempted to kill unknown executor 3", and executor can't be killed.


---

* [SPARK-5528](https://issues.apache.org/jira/browse/SPARK-5528) | *Major* | **Support schema merging while reading Parquet files**

Spark 1.2.0 and prior versions only reads Parquet schema from {{\_metadata}} or a random Parquet part-file, and assumes all part-files share exactly the same schema.

In practice, it's common that users append new columns to existing Parquet schema. Parquet has native schema merging support for such scenarios. Spark SQL should also support this.


---

* [SPARK-5520](https://issues.apache.org/jira/browse/SPARK-5520) | *Critical* | **Make FP-Growth implementation take generic item types**

There is not technical restriction on the item types in the FP-Growth implementation. We used String in the first PR for simplicity. Maybe we could make the type generic before 1.3 (and specialize it for Int/Long).


---

* [SPARK-5519](https://issues.apache.org/jira/browse/SPARK-5519) | *Major* | **Add user guide for FP-Growth**

We need to add a section for FP-Growth in the user guide after we merge the FP-Growth PR is merged.


---

* [SPARK-5518](https://issues.apache.org/jira/browse/SPARK-5518) | *Blocker* | **Error messages for plans with invalid AttributeReferences**

It is now possible for users to put invalid attribute references into query plans.  We should check for this case at the end of analysis.


---

* [SPARK-5515](https://issues.apache.org/jira/browse/SPARK-5515) | *Blocker* | **Build fails with spark-ganglia-lgpl profile**

Build fails with spark-ganglia-lgpl profile at the moment. This is because pom.xml for spark-ganglia-lgpl is not updated.


---

* [SPARK-5513](https://issues.apache.org/jira/browse/SPARK-5513) | *Major* | **Add NMF option to the new ALS implementation**

Then we can swap "spark.mllib"'s implementation to use the new ALS impl.


---

* [SPARK-5512](https://issues.apache.org/jira/browse/SPARK-5512) | *Minor* | **Run the PIC algorithm with degree vector**

As suggested by the paper of Power Iteration Clustering, it is useful to set the initial vector v0 as the degree vector d. This pr tries to add a running method for that.


---

* [SPARK-5509](https://issues.apache.org/jira/browse/SPARK-5509) | *Major* | **EqualTo operator doesn't handle binary type properly**

Binary type is mapped to {{Array\[Byte\]}}, which can't be compared with {{==}} directly. However, {{EqualTo.eval()}} uses plain {{==}} to compare values. Run the following {{spark-shell}} snippet with Spark 1.2.0 to reproduce this issue: 
{code}
import org.apache.spark.sql.SQLContext
import sc.\_

val sqlContext = new SQLContext(sc)
import sqlContext.\_

case class KV(key: Int, value: Array[Byte])

def toBinary(s: String): Array[Byte] = s.toString.getBytes("UTF-8")
registerFunction("toBinary", toBinary \_)

parallelize(1 to 1024).map(i => KV(i, toBinary(i.toString))).registerTempTable("bin")

// OK
sql("select * from bin where value < toBinary('100')").collect()

// Oops, returns nothing
sql("select * from bin where value = toBinary('100')").collect()
{code}


---

* [SPARK-5507](https://issues.apache.org/jira/browse/SPARK-5507) | *Major* | **Add user guide for block matrix and its operations**

User guide should cover converters from/to block matrices and linear algebra operations we support.


---

* [SPARK-5504](https://issues.apache.org/jira/browse/SPARK-5504) | *Minor* | **ScalaReflection.convertToCatalyst should support nested arrays**

After the recent refactoring, convertToCatalyst in ScalaReflection does not recurse on Arrays.  It should.


---

* [SPARK-5503](https://issues.apache.org/jira/browse/SPARK-5503) | *Major* | **Example code for Power Iteration Clustering**

There are two places we need to put examples:

1. In the user guide, we should be a small example (as in the unit test).
2. Under examples/, we can have something fancy but still need to keep it minimal.
3. The user guide contains some out-of-date links, which needs to be updated as well.


---

* [SPARK-5502](https://issues.apache.org/jira/browse/SPARK-5502) | *Major* | **User guide for isotonic regression**

Add user guide to docs/mllib-regression.md with code examples.


---

* [SPARK-5496](https://issues.apache.org/jira/browse/SPARK-5496) | *Major* | **Allow both "classification" and "Classification" in Algo for trees**

We use "classification" in tree but "Classification" in boosting. We switched to "classification" in both cases, but still need to accept "Classification" to be backward compatible.


---

* [SPARK-5493](https://issues.apache.org/jira/browse/SPARK-5493) | *Major* | **Support proxy users under kerberos**

When using kerberos, services may want to use spark-submit to submit jobs as a separate user. For example a service like hive might want to submit jobs as a client user.


---

* [SPARK-5492](https://issues.apache.org/jira/browse/SPARK-5492) | *Blocker* | **Thread statistics can break with older Hadoop versions**

{code}
 java.lang.ClassNotFoundException: org.apache.hadoop.fs.FileSystem$Statistics$StatisticsData
at java.net.URLClassLoader$1.run(URLClassLoader.java:366)
at java.net.URLClassLoader$1.run(URLClassLoader.java:355)
at java.security.AccessController.doPrivileged(Native Method)
at java.net.URLClassLoader.findClass(URLClassLoader.java:354)
at java.lang.ClassLoader.loadClass(ClassLoader.java:425)
at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:308)
at java.lang.ClassLoader.loadClass(ClassLoader.java:358)
at java.lang.Class.forName0(Native Method)
at java.lang.Class.forName(Class.java:191)
at org.apache.spark.deploy.SparkHadoopUtil.getFileSystemThreadStatisticsMethod(SparkHadoopUtil.scala:180)
at org.apache.spark.deploy.SparkHadoopUtil.getFSBytesReadOnThreadCallback(SparkHadoopUtil.scala:139)
at org.apache.spark.rdd.NewHadoopRDD$$anon$1$$anonfun$2.apply(NewHadoopRDD.scala:120)
at org.apache.spark.rdd.NewHadoopRDD$$anon$1$$anonfun$2.apply(NewHadoopRDD.scala:118)
at scala.Option.orElse(Option.scala:257)
{code}

I think the issue is we need to catch ClassNotFoundException here:
https://github.com/apache/spark/blob/b1b35ca2e440df40b253bf967bb93705d355c1c0/core/src/main/scala/org/apache/spark/deploy/SparkHadoopUtil.scala#L144

However, I'm really confused how this didn't fail our unit tests, since we explicitly tried to test this.


---

* [SPARK-5491](https://issues.apache.org/jira/browse/SPARK-5491) | *Major* | **Chi-square feature selection**

Implement chi-square feature selection. PR: https://github.com/apache/spark/pull/1484


---

* [SPARK-5486](https://issues.apache.org/jira/browse/SPARK-5486) | *Major* | **Add validate function for BlockMatrix**

BlockMatrix needs a validate method to make debugging easy for users. 
It will be an expensive method to perform, but it would be useful for users to know why `multiply` or `add` didn't work properly.

Things to validate:
- MatrixBlocks that are not on the edges should have the dimensions `rowsPerBlock` and `colsPerBlock`.
- There should be at most one block for each index


---

* [SPARK-5478](https://issues.apache.org/jira/browse/SPARK-5478) | *Minor* | **Add miss right parenthesis in Stage page Pending stages label**

right parenthesis is missing in one label, minor problem in UI.


---

* [SPARK-5477](https://issues.apache.org/jira/browse/SPARK-5477) | *Major* | **Refactor stat.py in order to expand mllib.stat**

There is only a single `stat.py` file for the `mllib.stat` package. We recently added `MultivariateGaussian` under `mllib.stat.distribution` in Scala/Java. It would be nice to refactor `stat.py` and make it easy to expand.


---

* [SPARK-5474](https://issues.apache.org/jira/browse/SPARK-5474) | *Major* | **curl should support URL redirection in build/mvn**

{{http://archive.apache.org/dist/maven/maven-3/3.2.5/binaries/apache-maven-3.2.5-bin.tar.gz}}  sometimes return 3xx


---

* [SPARK-5473](https://issues.apache.org/jira/browse/SPARK-5473) | *Minor* | **Expose SSH failures after status checks pass**

If there is some fatal problem with launching a cluster, `spark-ec2` just hangs without giving the user useful feedback on what the problem is.

This PR exposes the output of the SSH calls to the user if the SSH test fails during cluster launch for any reason but the instance status checks are all green.

For example:

```
$ ./ec2/spark-ec2 -k key -i /incorrect/path/identity.pem --instance-type m3.medium --slaves 1 --zone us-east-1c launch "spark-test"
Setting up security groups...
Searching for existing cluster spark-test...
Spark AMI: ami-35b1885c
Launching instances...
Launched 1 slaves in us-east-1c, regid = r-7dadd096
Launched master in us-east-1c, regid = r-fcadd017
Waiting for cluster to enter 'ssh-ready' state...
Warning: SSH connection error. (This could be temporary.)
Host: 127.0.0.1
SSH return code: 255
SSH output: Warning: Identity file /incorrect/path/identity.pem not accessible: No such file or directory.
Warning: Permanently added '127.0.0.1' (RSA) to the list of known hosts.
Permission denied (publickey).
```

This should give users enough information when some unrecoverable error occurs during launch so they can know to abort the launch. This will help avoid situations like the ones reported [here on Stack Overflow](http://stackoverflow.com/q/28002443/) and [here on the user list](http://mail-archives.apache.org/mod\_mbox/spark-user/201501.mbox/%3C1422323829398-21381.post@n3.nabble.com%3E), where the users couldn't tell what the problem was because it was being hidden by `spark-ec2`.

This is a usability improvement that should be backported to 1.2.


---

* [SPARK-5472](https://issues.apache.org/jira/browse/SPARK-5472) | *Blocker* | **Add support for reading from and writing to a JDBC database**

It would be nice to be able to make a table in a JDBC database appear as a table in Spark SQL.  This would let users, for instance, perform a JOIN between a DataFrame in Spark SQL with a table in a Postgres database.

It might also be nice to be able to go the other direction -- save a DataFrame to a database -- for instance in an ETL job.

Edited to clarify:  Both of these tasks are certainly possible to accomplish at the moment with a little bit of ad-hoc glue code.  However, there is no fundamental reason why the user should need to supply the table schema and some code for pulling data out of a ResultSet row into a Catalyst Row structure when this information can be derived from the schema of the database table itself.


---

* [SPARK-5470](https://issues.apache.org/jira/browse/SPARK-5470) | *Major* | **use defaultClassLoader of Serializer to load classes of classesToRegister in KryoSerializer**

Now KryoSerializer load classes of classesToRegister at the time of its initialization. when we set spark.kryo.classesToRegister=class1, it will throw  SparkException("Failed to load class to register with Kryo".
because in KryoSerializer's initialization, classLoader cannot include class of user's jars.
we need to use defaultClassLoader of Serializer in newKryo(), because executor will reset defaultClassLoader of Serializer after Serializer's initialization.


---

* [SPARK-5469](https://issues.apache.org/jira/browse/SPARK-5469) | *Major* | **Break sql.py into multiple files**

It is getting pretty long (2800 loc).


---

* [SPARK-5466](https://issues.apache.org/jira/browse/SPARK-5466) | *Blocker* | **Build Error caused by Guava shading in Spark**

Guava is shaded inside spark-core itself.

https://github.com/apache/spark/commit/37a5e272f898e946c09c2e7de5d1bda6f27a8f39

This causes build error in multiple components, including Graph/MLLib/SQL, when package com.google.common on the classpath incompatible with the version used when compiling Utils.class

[error] bad symbolic reference. A signature in Utils.class refers to term util
[error] in package com.google.common which is not available.
[error] It may be completely missing from the current classpath, or the version on
[error] the classpath might be incompatible with the version used when compiling Utils.class.
[error] 
[error]      while compiling: /spark/graphx/src/main/scala/org/apache/spark/graphx/util/BytecodeUtils.scala
[error]         during phase: erasure
[error]      library version: version 2.10.4
[error]     compiler version: version 2.10.4


---

* [SPARK-5465](https://issues.apache.org/jira/browse/SPARK-5465) | *Blocker* | **Data source version of Parquet doesn't push down And filters properly**

The current implementation combines all predicates and then tries to convert it to a single Parquet filter predicate. In this way, the Parquet filter predicate can not be generated if any component of the original filters can not be converted. (code lines [here|https://github.com/apache/spark/blob/a731314c319a6f265060e05267844069027804fd/sql/core/src/main/scala/org/apache/spark/sql/parquet/newParquet.scala#L197-L201]).

For example, {{a > 10 AND a < 20}} can be successfully converted, while {{a > 10 AND a < b}} can't because Parquet doesn't accept filters like {{a < b}}.


---

* [SPARK-5464](https://issues.apache.org/jira/browse/SPARK-5464) | *Blocker* | **Calling help() on a Python DataFrame fails with "cannot resolve column name \_\_name\_\_" error**

Trying to call {{help()}} on a Python DataFrame fails with an exception:

{code}
>>> help(df)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  File "/Users/joshrosen/anaconda/lib/python2.7/site.py", line 464, in \_\_call\_\_
    return pydoc.help(*args, **kwds)
  File "/Users/joshrosen/anaconda/lib/python2.7/pydoc.py", line 1787, in \_\_call\_\_
    self.help(request)
  File "/Users/joshrosen/anaconda/lib/python2.7/pydoc.py", line 1834, in help
    else: doc(request, 'Help on %s:')
  File "/Users/joshrosen/anaconda/lib/python2.7/pydoc.py", line 1571, in doc
    pager(render\_doc(thing, title, forceload))
  File "/Users/joshrosen/anaconda/lib/python2.7/pydoc.py", line 1545, in render\_doc
    object, name = resolve(thing, forceload)
  File "/Users/joshrosen/anaconda/lib/python2.7/pydoc.py", line 1540, in resolve
    name = getattr(thing, '\_\_name\_\_', None)
  File "/Users/joshrosen/Documents/Spark/python/pyspark/sql.py", line 2154, in \_\_getattr\_\_
    return Column(self.\_jdf.apply(name))
  File "/Users/joshrosen/Documents/Spark/python/lib/py4j-0.8.2.1-src.zip/py4j/java\_gateway.py", line 538, in \_\_call\_\_
  File "/Users/joshrosen/Documents/Spark/python/lib/py4j-0.8.2.1-src.zip/py4j/protocol.py", line 300, in get\_return\_value
py4j.protocol.Py4JJavaError: An error occurred while calling o31.apply.
: java.lang.RuntimeException: Cannot resolve column name "\_\_name\_\_"
	at org.apache.spark.sql.DataFrame$$anonfun$resolve$1.apply(DataFrame.scala:123)
	at org.apache.spark.sql.DataFrame$$anonfun$resolve$1.apply(DataFrame.scala:123)
	at scala.Option.getOrElse(Option.scala:120)
	at org.apache.spark.sql.DataFrame.resolve(DataFrame.scala:122)
	at org.apache.spark.sql.DataFrame.apply(DataFrame.scala:237)
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

Here's a reproduction:

{code}
>>> from pyspark.sql import SQLContext, Row
>>> sqlContext = SQLContext(sc)
>>> rdd = sc.parallelize(['{"foo":"bar"}', '{"foo":"baz"}'])
>>> df = sqlContext.jsonRDD(rdd)
>>> help(df)
{code}

I think the problem here is that we don't throw the expected exception from our overloaded {{getattr}} if a column can't be found.

We should be able to fix this by only attempting to call {{apply}} after checking that the column name is valid (e.g. check against {{columns}}).


---

* [SPARK-5462](https://issues.apache.org/jira/browse/SPARK-5462) | *Blocker* | **Catalyst UnresolvedException "Invalid call to qualifiers on unresolved object" error when accessing fields in DataFrames returned from sqlCtx.sql()**

When trying to access fields on a Python DataFrame created via inferSchema, I ran into a confusing Catalyst Py4J error.  Here's a reproduction:

{code}
from pyspark import SparkContext
from pyspark.sql import SQLContext, Row

sc = SparkContext("local", "test")
sqlContext = SQLContext(sc)

# Load a text file and convert each line to a Row.
lines = sc.textFile("examples/src/main/resources/people.txt")
parts = lines.map(lambda l: l.split(","))
people = parts.map(lambda p: Row(name=p[0], age=int(p[1])))

# Infer the schema, and register the SchemaRDD as a table.
schemaPeople = sqlContext.inferSchema(people)
schemaPeople.registerTempTable("people")

# SQL can be run over SchemaRDDs that have been registered as a table.
teenagers = sqlContext.sql("SELECT name FROM people WHERE age >= 13 AND age <= 19")

print teenagers.name
{code}

This fails with the following error:

{code}
Traceback (most recent call last):
  File "/Users/joshrosen/Documents/spark/sqltest.py", line 19, in <module>
    print teenagers.name
  File "/Users/joshrosen/Documents/Spark/python/pyspark/sql.py", line 2154, in \_\_getattr\_\_
    return Column(self.\_jdf.apply(name))
  File "/Users/joshrosen/Documents/Spark/python/lib/py4j-0.8.2.1-src.zip/py4j/java\_gateway.py", line 538, in \_\_call\_\_
  File "/Users/joshrosen/Documents/Spark/python/lib/py4j-0.8.2.1-src.zip/py4j/protocol.py", line 300, in get\_return\_value
py4j.protocol.Py4JJavaError: An error occurred while calling o66.apply.
: org.apache.spark.sql.catalyst.analysis.UnresolvedException: Invalid call to qualifiers on unresolved object, tree: 'name
	at org.apache.spark.sql.catalyst.analysis.UnresolvedAttribute.qualifiers(unresolved.scala:50)
	at org.apache.spark.sql.catalyst.analysis.UnresolvedAttribute.qualifiers(unresolved.scala:46)
	at org.apache.spark.sql.catalyst.plans.logical.LogicalPlan$$anonfun$2.apply(LogicalPlan.scala:143)
	at org.apache.spark.sql.catalyst.plans.logical.LogicalPlan$$anonfun$2.apply(LogicalPlan.scala:140)
	at scala.collection.TraversableLike$$anonfun$flatMap$1.apply(TraversableLike.scala:251)
	at scala.collection.TraversableLike$$anonfun$flatMap$1.apply(TraversableLike.scala:251)
	at scala.collection.immutable.List.foreach(List.scala:318)
	at scala.collection.TraversableLike$class.flatMap(TraversableLike.scala:251)
	at scala.collection.AbstractTraversable.flatMap(Traversable.scala:105)
	at org.apache.spark.sql.catalyst.plans.logical.LogicalPlan.resolve(LogicalPlan.scala:140)
	at org.apache.spark.sql.catalyst.plans.logical.LogicalPlan.resolve(LogicalPlan.scala:126)
	at org.apache.spark.sql.DataFrame.resolve(DataFrame.scala:122)
	at org.apache.spark.sql.DataFrame.apply(DataFrame.scala:237)
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

This is distinct from the helpful error message that I get when trying to access a non-existent column.  This error didn't occur when I tried the same thing with a DataFrame created via jsonRDD.


---

* [SPARK-5461](https://issues.apache.org/jira/browse/SPARK-5461) | *Minor* | **Graph should have isCheckpointed, getCheckpointFiles methods**

Graph has a checkpoint method but does not have other helper functionality which RDD has.  Proposal:
{code}
  /**
   * Return whether this Graph has been checkpointed or not
   */
  def isCheckpointed: Boolean

  /**
   * Gets the name of the files to which this Graph was checkpointed
   */
  def getCheckpointFiles: Seq[String]
{code}

I need this for [SPARK-1405].


---

* [SPARK-5460](https://issues.apache.org/jira/browse/SPARK-5460) | *Minor* | **RandomForest should catch exceptions when removing checkpoint files**

RandomForest can optionally use checkpointing.  When it tries to remove checkpoint files, it could fail (if a user has write but not delete access on some filesystem).  There should be a try-catch to catch exceptions when trying to remove checkpoint files in NodeIdCache.


---

* [SPARK-5454](https://issues.apache.org/jira/browse/SPARK-5454) | *Blocker* | **[SQL] Self join with ArrayType columns problems**

Weird behaviour when performing self join on a table with some ArrayType field.  (potential bug ?) 

I have set up a minimal non working example here: 
https://gist.github.com/pierre-borckmans/4853cd6d0b2f2388bf4f

In a nutshell, if the ArrayType column used for the pivot is created manually in the StructType definition, everything works as expected. 
However, if the ArrayType pivot column is obtained by a sql query (be it by using a "array" wrapper, or using a collect\_list operator for instance), then results are completely off.


---

* [SPARK-5448](https://issues.apache.org/jira/browse/SPARK-5448) | *Major* | **Make CacheManager a concrete class and field in SQLContext**

So we don't have to include it using trait mixin.


---

* [SPARK-5447](https://issues.apache.org/jira/browse/SPARK-5447) | *Major* | **Replace reference to SchemaRDD with DataFrame**

We renamed SchemaRDD -> DataFrame, but internally various code still reference SchemaRDD in JavaDoc and comments.


---

* [SPARK-5445](https://issues.apache.org/jira/browse/SPARK-5445) | *Major* | **Make sure DataFrame expressions are usable in Java**

Some DataFrame expressions are not exactly usable in Java. For example, aggregate functions are only defined in the dsl package object, which is painful to use.


---

* [SPARK-5444](https://issues.apache.org/jira/browse/SPARK-5444) | *Major* | **'spark.blockManager.port' conflict in netty service**

If set the 'spark.blockManager.port` = 4040 in spark-default.conf, it will throw the conflict port exception and exit directly.


---

* [SPARK-5441](https://issues.apache.org/jira/browse/SPARK-5441) | *Major* | **SerDeUtil Pair RDD to python conversion doesn't accept empty RDDs**

SerDeUtil.pairRDDToPython and SerDeUtil.pythonToPairRDD rely on rdd.first() which throws an exception if the RDD is empty. We should be able to handle the empty RDD case because this doesn't prevent a valid RDD from being created.


---

* [SPARK-5440](https://issues.apache.org/jira/browse/SPARK-5440) | *Major* | **Add toLocalIterator to pyspark rdd**

toLocalIterator is available in Java and Scala. If we add this functionality to Python, then we can also be able to use PySpark to iterate over a dataset partition by partition.


---

* [SPARK-5437](https://issues.apache.org/jira/browse/SPARK-5437) | *Major* | **DriverSuite and SparkSubmitSuite incorrect timeout behavior**

In DriverSuite, we currently set a timeout of 60 seconds. If after this time the process has not terminated, we leak the process because we never destroy it.

In SparkSubmitSuite, we currently do not have a timeout so the test can hang indefinitely.


---

* [SPARK-5434](https://issues.apache.org/jira/browse/SPARK-5434) | *Minor* | **Preserve spaces in path to spark-ec2**

If the path to {{spark-ec2}} contains spaces, the script won't run.


---

* [SPARK-5430](https://issues.apache.org/jira/browse/SPARK-5430) | *Major* | **Move treeReduce and treeAggregate to core**

I've seen many use cases of treeAggregate/treeReduce outside the ML domain. Maybe it is time to move them to Core.


---

* [SPARK-5429](https://issues.apache.org/jira/browse/SPARK-5429) | *Major* | **Can't generate Hive golden answer on Hive 0.13.1**

I found that running HiveComparisonTest.createQueryTest to generate Hive golden answer files on Hive 0.13.1 would throw KryoException. Since Hive 0.13.0, Kryo plan serialization is introduced alongside javaXML one. This is a quick fix to set hive configuration to use javaXML serialization.


---

* [SPARK-5426](https://issues.apache.org/jira/browse/SPARK-5426) | *Blocker* | **SQL Java API helper methods**

DataFrame previously SchemaRDD is not directly java compatible. But this does seems a bit odd as `SQLContext` is now to be used with Java API and any operation will yield a SchemaRDD which the uesr will have to covert to JavaRDD.


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

* [SPARK-5424](https://issues.apache.org/jira/browse/SPARK-5424) | *Major* | **Make the new ALS implementation take generic ID types**

The new implementation uses local indices of users and items. So the input user/item type could be generic, at least specialized for Int and Long. We can expose the generic interface as a developer API.


---

* [SPARK-5422](https://issues.apache.org/jira/browse/SPARK-5422) | *Minor* | **Support sending to Graphite via UDP**

{{io.dropwizard.metrics-graphite}} version {{3.1.0}} can send metrics to Graphite via UDP or TCP.

After upgrading ([SPARK-5413|https://issues.apache.org/jira/browse/SPARK-5413]), we should support using this facility, presumably specified via a "protocol" field in the metrics config file.


---

* [SPARK-5420](https://issues.apache.org/jira/browse/SPARK-5420) | *Blocker* | **Cross-langauge load/store functions for creating and saving DataFrames**

We should have standard API's for loading or saving a table from a data store. Per comment discussion:

{code}
def loadData(datasource: String, parameters: Map[String, String]): DataFrame
def loadData(datasource: String, parameters: java.util.Map[String, String]): DataFrame
def storeData(datasource: String, parameters: Map[String, String]): DataFrame
def storeData(datasource: String, parameters: java.util.Map[String, String]): DataFrame
{code}

Python should have this too.


---

* [SPARK-5419](https://issues.apache.org/jira/browse/SPARK-5419) | *Major* | **Fix the logic in Vectors.sqdist**

The current implementation of sqdist tries to convert sparse vectors to dense if they are close to dense. This is not efficient because we need to allocate temp arrays. We should simply implement sqdist without allocating new memory.

The current implementation also contains a bug on deciding whether to convert a sparse vector to dense.

{code}
v1.indices.length / v1.size < 0.5
{code}

which should get removed with the changes described above.


---

* [SPARK-5417](https://issues.apache.org/jira/browse/SPARK-5417) | *Minor* | **Remove redundant executor-ID set() call**

{{spark.executor.id}} no longer [needs to be set in Executor.scala|https://github.com/apache/spark/blob/0497ea51ac345f8057d222a18dbbf8eae78f5b92/core/src/main/scala/org/apache/spark/executor/Executor.scala#L79], as of [#4194|https://github.com/apache/spark/pull/4194]; it is set upstream in [SparkEnv|https://github.com/apache/spark/blob/0497ea51ac345f8057d222a18dbbf8eae78f5b92/core/src/main/scala/org/apache/spark/SparkEnv.scala#L332]. Might as well remove the redundant set() in Executor.scala.


---

* [SPARK-5416](https://issues.apache.org/jira/browse/SPARK-5416) | *Minor* | **Initialize Executor.threadPool before ExecutorSource**

I recently saw some NPEs from [{{ExecutorSource:44}}|https://github.com/apache/spark/blob/0497ea51ac345f8057d222a18dbbf8eae78f5b92/core/src/main/scala/org/apache/spark/executor/ExecutorSource.scala#L44] in the first couple seconds of my executors' being initialized.

I think that {{ExecutorSource}} was trying to report these metrics before its threadpool was initialized; there are a few LoC between the source being registered ([Executor.scala:82|https://github.com/apache/spark/blob/0497ea51ac345f8057d222a18dbbf8eae78f5b92/core/src/main/scala/org/apache/spark/executor/Executor.scala#L82]) and the threadpool being initialized ([Executor.scala:106|https://github.com/apache/spark/blob/0497ea51ac345f8057d222a18dbbf8eae78f5b92/core/src/main/scala/org/apache/spark/executor/Executor.scala#L106]).

We should initialize the threapool before the ExecutorSource is registered.


---

* [SPARK-5415](https://issues.apache.org/jira/browse/SPARK-5415) | *Minor* | **Upgrade sbt to 0.13.7**

Spark currently uses sbt {{0.13.6}}, which has a regression related to processing parent POM's in Maven projects.

{{0.13.7}} does not have this issue (though it's unclear whether it was fixed intentionally), so I'd like to bump up one version.

I ran into this while locally building a Spark assembly against a locally-built "metrics" JAR dependency; {{0.13.6}} could not build Spark but {{0.13.7}} worked fine.


---

* [SPARK-5414](https://issues.apache.org/jira/browse/SPARK-5414) | *Major* | **Add SparkListener implementation that allows users to receive all listener events in one method**

Currently, users don't have a very good way to write a SparkListener that receives all SparkListener events and which will be future-compatible (e.g. it will receive events introduced in newer versions of Spark without having to override new methods to process those events).

Therefore, I think Spark should include a concrete SparkListener implementation that implements all of the message-handling methods and dispatches all of them to a single {{onEvent}} method.  By putting this code in Spark, we isolate users from changes to the listener API.


---

* [SPARK-5413](https://issues.apache.org/jira/browse/SPARK-5413) | *Critical* | **Upgrade "metrics" dependency to 3.1.0**

Spark currently uses Coda Hale's metrics library version {{3.0.0}}.

Version {{3.1.0}} includes some useful improvements, like [batching metrics in TCP|https://github.com/dropwizard/metrics/issues/660#issuecomment-55626888] and [supporting Graphite's UDP interface|https://github.com/dropwizard/metrics/blob/v3.1.0/metrics-graphite/src/main/java/com/codahale/metrics/graphite/GraphiteUDP.java].

I'd like to bump Spark's version to take advantage of these; I'm playing with GraphiteSink and seeing Graphite struggle to ingest all executors' metrics.


---

* [SPARK-5411](https://issues.apache.org/jira/browse/SPARK-5411) | *Major* | **Allow SparkListeners to be specified in SparkConf and loaded when creating SparkContext**

It would be nice if there was a mechanism to allow SparkListeners to be registered through SparkConf settings.  This would allow monitoring frameworks to be easily injected into Spark programs without having to modify those programs' code.

I propose to introduce a new configuration option, {{spark.extraListeners}}, that allows SparkListeners to be specified in SparkConf and registered before the SparkContext is created.  Here is the proposed documentation for the new option:

{quote}
A comma-separated list of classes that implement SparkListener; when initializing SparkContext, instances of these classes will be created and registered with Spark's listener bus. If a class has a single-argument constructor that accepts a SparkConf, that constructor will be called; otherwise, a zero-argument constructor will be called. If no valid constructor can be found, the SparkContext creation will fail with an exception.
{quote}


---

* [SPARK-5406](https://issues.apache.org/jira/browse/SPARK-5406) | *Minor* | **LocalLAPACK mode in RowMatrix.computeSVD should have much smaller upper bound**

In RowMatrix.computeSVD, under LocalLAPACK mode, the code would invoke brzSvd. Yet breeze svd for dense matrix has latent constraint. In it's implementation
( https://github.com/scalanlp/breeze/blob/master/math/src/main/scala/breeze/linalg/functions/svd.scala   ):

      val workSize = ( 3
        * scala.math.min(m, n)
        * scala.math.min(m, n)
        + scala.math.max(scala.math.max(m, n), 4 * scala.math.min(m, n)
          * scala.math.min(m, n) + 4 * scala.math.min(m, n))
      )
      val work = new Array[Double](workSize)

as a result, column num must satisfy 7 * n * n + 4 * n < Int.MaxValue
thus, n < 17515.

This jira is only the first step. If possbile, I hope spark can handle matrix computation up to 80K * 80K.


---

* [SPARK-5403](https://issues.apache.org/jira/browse/SPARK-5403) | *Major* | **Ignore UserKnownHostsFile in SSH calls**

Because of changing IPs of EC2 instances of Spark cluster event between restart of its hosts user of EC2 script may encouter problem with the script hanging on:

{noformat}
Waiting for all instances in cluster to enter 'ssh-ready' state..........
{noformat}

..as for example here: http://stackoverflow.com/questions/28002443/cluster-hangs-in-ssh-ready-state-using-spark-1-2-ec2-launch-script


---

* [SPARK-5402](https://issues.apache.org/jira/browse/SPARK-5402) | *Minor* | **Log executor ID at executor-construction time**

One stumbling block I've hit while debugging Spark-on-YARN jobs is that {{yarn logs}} presents each executor's stderr/stdout by container name, but I often need to find the logs for a specific executor ID; the executor ID isn't printed anywhere convenient in each executor's logs, afaict.

I added a simple {{logInfo}} to {{Executor.scala}} locally and it's been useful, so I'd like to merge it upstream.

PR forthcoming.


---

* [SPARK-5401](https://issues.apache.org/jira/browse/SPARK-5401) | *Major* | **Executor ID should be set before MetricsSystem is created**

MetricsSystem construction [attempts to namespace metrics from each executor using that executor's ID|https://github.com/apache/spark/blob/0d1e67ee9b29b51bccfc8a319afe9f9b4581afc8/core/src/main/scala/org/apache/spark/metrics/MetricsSystem.scala#L131].

The ID is [currently set at Executor construction time|https://github.com/apache/spark/blob/0d1e67ee9b29b51bccfc8a319afe9f9b4581afc8/core/src/main/scala/org/apache/spark/executor/Executor.scala#L76-L79] (uncoincidentally, just before the {{ExecutorSource}} is registered), but this is after the {{MetricsSystem}} has been initialized (which [happens during {{SparkEnv}} construction|https://github.com/apache/spark/blob/0d1e67ee9b29b51bccfc8a319afe9f9b4581afc8/core/src/main/scala/org/apache/spark/SparkEnv.scala#L323-L332], which itself happens during {{ExecutorBackend}} construction, *before* {{Executor}} construction).

I noticed this problem because I wasn't seeing any JVM metrics from my executors in a Graphite dashboard I've set up; turns out all the executors (and the driver) were namespacing their metrics under "<driver>", and Graphite responds to such a situation by only taking the last value it receives for each "metric" within a configurable time window (e.g. 10s). I was seeing per-executor metrics, properly namespaced with each executor's ID, from {{ExecutorSource}}, which as I mentioned above is registered after the executor ID is set.

I have a one-line fix for this that I will submit shortly.


---

* [SPARK-5400](https://issues.apache.org/jira/browse/SPARK-5400) | *Minor* | **Rename GaussianMixtureEM to GaussianMixture**

GaussianMixtureEM is following the old naming convention of including the optimization algorithm name in the class title.  We should probably rename it to GaussianMixture so that it can use other optimization algorithms in the future.


---

* [SPARK-5396](https://issues.apache.org/jira/browse/SPARK-5396) | *Critical* | **Syntax error in spark scripts on windows.**

I made the following steps: 

1. downloaded and installed Scala 2.11.5 
2. downloaded spark 1.2.0 by git clone git://github.com/apache/spark.git 
3. run dev/change-version-to-2.11.sh and mvn -Dscala-2.11 -DskipTests clean package (in git bash) 

After installation tried to run spark-shell.cmd in cmd shell and it says there is a syntax error in file. The same with spark-shell2.cmd, spark-submit.cmd and  spark-submit2.cmd.

!windows7.png!


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

* [SPARK-5393](https://issues.apache.org/jira/browse/SPARK-5393) | *Critical* | **Flood of util.RackResolver log messages after SPARK-1714**

I thought I fixed this while working on the patch, but [~laserson] seems to have encountered it when running on master.


---

* [SPARK-5390](https://issues.apache.org/jira/browse/SPARK-5390) | *Minor* | **Encourage users to post on Stack Overflow in Community Docs**

As [discussed extensively on the user list|http://apache-spark-user-list.1001560.n3.nabble.com/Discourse-A-proposed-alternative-to-the-Spark-User-list-td20851.html], we want to encourage users to post to Stack Overflow as an alternative to the official mailing list.

The places that need to be updated are:
* http://spark.apache.org/ (under "Community")
* http://spark.apache.org/community.html#mailing-lists
* https://github.com/apache/spark/blob/ea74365b7c5a3ac29cae9ba66f140f1fa5e8d312/docs/index.md#community


---

* [SPARK-5388](https://issues.apache.org/jira/browse/SPARK-5388) | *Blocker* | **Provide a stable application submission gateway in standalone cluster mode**

The existing submission gateway in standalone mode is not compatible across Spark versions. If you have a newer version of Spark submitting to an older version of the standalone Master, it is currently not guaranteed to work. The goal is to provide a stable REST interface to replace this channel.

For more detail, please see the most recent design doc attached.


---

* [SPARK-5384](https://issues.apache.org/jira/browse/SPARK-5384) | *Minor* | **Vectors.sqdist return inconsistent result for sparse/dense vectors when the vectors have different lengths**

For two vectors of different lengths, Vectors.sqdist would return different result when the vectors are represented as sparse and dense respectively. Sample:   
    val s1 = new SparseVector(4, Array(0,1,2,3), Array(1.0, 2.0, 3.0, 4.0))
    val s2 = new SparseVector(1, Array(0), Array(9.0))
    val d1 = new DenseVector(Array(1.0, 2.0, 3.0, 4.0))
    val d2 = new DenseVector(Array(9.0))
    println(s1 == d1 && s2 == d2)
    println(Vectors.sqdist(s1, s2))
    println(Vectors.sqdist(d1, d2))
result:
     true
     93.0
     64.0

More precisely, for the extra part, Vectors.sqdist would include it for sparse vectors and exclude it for dense vectors. I'll send a PR and we can have more detailed discussion there.


---

* [SPARK-5383](https://issues.apache.org/jira/browse/SPARK-5383) | *Major* | **support alias for udfs with multi output columns**

when a udf output multi columns, now we can not use alias for them in spark-sql, see this flowing sql:

select stack(1, key, value, key, value) as (a, b, c, d) from src limit 5;


---

* [SPARK-5382](https://issues.apache.org/jira/browse/SPARK-5382) | *Minor* | **Scripts do not use SPARK\_CONF\_DIR where they should**

h5.spark-class:
{code}
# Load extra JAVA\_OPTS from conf/java-opts, if it exists
if [ -e "$FWDIR/conf/java-opts" ] ; then
  JAVA\_OPTS="$JAVA\_OPTS `cat "$FWDIR"/conf/java-opts`"
fi
{code}

h5.spark-submit:
{code}
DEFAULT\_PROPERTIES\_FILE="$SPARK\_HOME/conf/spark-defaults.conf"
{code}


---

* [SPARK-5380](https://issues.apache.org/jira/browse/SPARK-5380) | *Minor* | **There will be an ArrayIndexOutOfBoundsException if the format of the source file is wrong**

When I build a graph with a file format error, there will be an ArrayIndexOutOfBoundsException


---

* [SPARK-5373](https://issues.apache.org/jira/browse/SPARK-5373) | *Major* | ** literal in agg grouping expressioons leads to incorrect result**

select key, count( * ) from src group by key, 1 will get the wrong answer!


---

* [SPARK-5367](https://issues.apache.org/jira/browse/SPARK-5367) | *Major* | **support star expression in udf**

now spark sql does not support star expression in udf, the following sql will get error
```
select concat( * ) from src
```


---

* [SPARK-5365](https://issues.apache.org/jira/browse/SPARK-5365) | *Minor* | **Refactor KMeans to reduce redundant data**

If a point is selected as new centers for many runs, it would collect many redundant data in KMeans. This pr refactors it.


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

* [SPARK-5357](https://issues.apache.org/jira/browse/SPARK-5357) | *Minor* | **Upgrade from commons-codec 1.5**

Spark uses commons-codec 1.5, which has a race condition in Base64.  That race was introduced in commons-codec 1.4 and resolved in 1.7.  The current version of commons-codec is 1.10.

Code that runs in Workers and assumes that Base64 is thread-safe will break because spark is using a non-thread-safe version.  See CODEC-96

In addition, the spark.files.userClassPathFirst mechanism is currently broken, (bug to come), so there isn't a viable work around for this issue.


---

* [SPARK-5355](https://issues.apache.org/jira/browse/SPARK-5355) | *Blocker* | **SparkConf is not thread-safe**

The SparkConf is not thread-safe, but is accessed by many threads. The getAll() could return parts of the configs if another thread is access it.


---

* [SPARK-5353](https://issues.apache.org/jira/browse/SPARK-5353) | *Minor* | **Log failures in ExceutorClassLoader**

When the ExecutorClassLoader tries to load classes compiled in the Spark Shell and fails, it silently passes loading to the parent ClassLoader. It should log these failures.


---

* [SPARK-5351](https://issues.apache.org/jira/browse/SPARK-5351) | *Major* | **Can't zip RDDs with unequal numbers of partitions in ReplicatedVertexView.upgrade()**

If the value of 'spark.default.parallelism' does not match the number of partitoins in EdgePartition(EdgeRDDImpl), 
the following error occurs in ReplicatedVertexView.scala:72;

object GraphTest extends Logging {
def run[VD: ClassTag, ED: ClassTag](graph: Graph[VD, ED]): VertexRDD[Int] = {
graph.aggregateMessages[Int](
ctx => {
ctx.sendToSrc(1)
ctx.sendToDst(2)
},
\_ + \_)
}
}

val g = GraphLoader.edgeListFile(sc, "graph.txt")
val rdd = GraphTest.run(g)

java.lang.IllegalArgumentException: Can't zip RDDs with unequal numbers of partitions
	at org.apache.spark.rdd.ZippedPartitionsBaseRDD.getPartitions(ZippedPartitionsRDD.scala:57)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:206)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:204)
	at scala.Option.getOrElse(Option.scala:120)
	at org.apache.spark.rdd.RDD.partitions(RDD.scala:204)
	at org.apache.spark.rdd.MapPartitionsRDD.getPartitions(MapPartitionsRDD.scala:32)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:206)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:204)
	at scala.Option.getOrElse(Option.scala:120)
	at org.apache.spark.rdd.RDD.partitions(RDD.scala:204)
	at org.apache.spark.ShuffleDependency.<init>(Dependency.scala:82)
	at org.apache.spark.rdd.ShuffledRDD.getDependencies(ShuffledRDD.scala:80)
	at org.apache.spark.rdd.RDD$$anonfun$dependencies$2.apply(RDD.scala:193)
	at org.apache.spark.rdd.RDD$$anonfun$dependencies$2.apply(RDD.scala:191)
    ...


---

* [SPARK-5345](https://issues.apache.org/jira/browse/SPARK-5345) | *Critical* | **Flaky test: o.a.s.deploy.history.FsHistoryProviderSuite**

In FsHistoryProviderSuite, a test "Parse new and old application logs" sometimes fail and sometimes succeed. It's unstable.


---

* [SPARK-5344](https://issues.apache.org/jira/browse/SPARK-5344) | *Major* | **HistoryServer cannot recognize that inprogress file was renamed to completed file**

FsHistoryProvider tries to update application status but if checkForLogs is called before .inprogress file is renamed to completed file, the file is not recognized as completed.


---

* [SPARK-5343](https://issues.apache.org/jira/browse/SPARK-5343) | *Major* | **ShortestPaths traverses backwards**

GraphX ShortestPaths seems to be following edges backwards instead of forwards:

import org.apache.spark.graphx.\_
val g = Graph(sc.makeRDD(Array((1L,""), (2L,""), (3L,""))), sc.makeRDD(Array(Edge(1L,2L,""), Edge(2L,3L,""))))

lib.ShortestPaths.run(g,Array(3)).vertices.collect
res1: Array[(org.apache.spark.graphx.VertexId, org.apache.spark.graphx.lib.ShortestPaths.SPMap)] = Array((1,Map()), (3,Map(3 -> 0)), (2,Map()))

lib.ShortestPaths.run(g,Array(1)).vertices.collect

res2: Array[(org.apache.spark.graphx.VertexId, org.apache.spark.graphx.lib.ShortestPaths.SPMap)] = Array((1,Map(1 -> 0)), (3,Map(1 -> 2)), (2,Map(1 -> 1)))

The following changes may be what will make it run "forward":

Change one occurrence of "src" to "dst" in
https://github.com/apache/spark/blob/master/graphx/src/main/scala/org/apache/spark/graphx/lib/ShortestPaths.scala#L64

Change three occurrences of "dst" to "src" in
https://github.com/apache/spark/blob/master/graphx/src/main/scala/org/apache/spark/graphx/lib/ShortestPaths.scala#L65


---

* [SPARK-5341](https://issues.apache.org/jira/browse/SPARK-5341) | *Critical* | **Support maven coordinates in spark-shell and spark-submit**

This feature will allow users to provide the maven coordinates of jars they wish to use in their spark application. Coordinates can be a comma-delimited list and be supplied like:
```spark-submit --maven org.apache.example.a,org.apache.example.b```
This feature will also be added to spark-shell (where it is more critical to have this feature)


---

* [SPARK-5339](https://issues.apache.org/jira/browse/SPARK-5339) | *Blocker* | **build/mvn doesn't work because of invalid URL for maven's tgz.**

build/mvn will automatically download tarball of maven. But currently, the URL is invalid.


---

* [SPARK-5336](https://issues.apache.org/jira/browse/SPARK-5336) | *Major* | **spark.executor.cores must not be less than spark.task.cpus**

If user set spark.executor.cores to be less than spark.task.cpus, task scheduler will fall in infinite loop, we should throw an exception.in that case.

In standalone and mesos mode, we should respect spark.task.cpus too, and I will file another JIRA to solve that.


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

* [SPARK-5334](https://issues.apache.org/jira/browse/SPARK-5334) | *Major* | **NullPointerException when getting files from S3 (hadoop 2.3+)**

In Spark 1.2 built with Hadoop 2.3+, 
unable to get files from AWS S3. 
Same codes works well with same setup in Spark built with Hadoop 2.2-.
I saw that jets3t version changed in profile with Hadoop 2.3+, I guess there might be an issue with it.

===

scala> sc.textFile("s3n://logs/log.2014-12-05.gz").count
15/01/20 11:22:40 INFO MemoryStore: ensureFreeSpace(104533) called with curMem=0, maxMem=27783541555
15/01/20 11:22:40 INFO MemoryStore: Block broadcast\_2 stored as values in memory (estimated size 102.1 KB, free 25.9 GB)
java.lang.NullPointerException
	at org.apache.hadoop.fs.s3native.NativeS3FileSystem.getFileStatus(NativeS3FileSystem.java:433)
	at org.apache.hadoop.fs.Globber.getFileStatus(Globber.java:57)
	at org.apache.hadoop.fs.Globber.glob(Globber.java:248)
	at org.apache.hadoop.fs.FileSystem.globStatus(FileSystem.java:1642)
	at org.apache.hadoop.mapred.FileInputFormat.singleThreadedListStatus(FileInputFormat.java:257)
	at org.apache.hadoop.mapred.FileInputFormat.listStatus(FileInputFormat.java:228)
	at org.apache.hadoop.mapred.FileInputFormat.getSplits(FileInputFormat.java:304)
	at org.apache.spark.rdd.HadoopRDD.getPartitions(HadoopRDD.scala:199)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:204)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:202)
	at scala.Option.getOrElse(Option.scala:120)
	at org.apache.spark.rdd.RDD.partitions(RDD.scala:202)
	at org.apache.spark.rdd.MappedRDD.getPartitions(MappedRDD.scala:28)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:204)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:202)
	at scala.Option.getOrElse(Option.scala:120)
	at org.apache.spark.rdd.RDD.partitions(RDD.scala:202)
	at org.apache.spark.SparkContext.runJob(SparkContext.scala:1157)
	at org.apache.spark.rdd.RDD.count(RDD.scala:904)
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


---

* [SPARK-5333](https://issues.apache.org/jira/browse/SPARK-5333) | *Blocker* | **[Mesos] MesosTaskLaunchData occurs BufferUnderflowException**

MesosTaskLaunchData occurs exception when MesosExecutorBackend launches task because serializedTask.remaining is 0.

{code}
Exception in thread "Thread-6" java.nio.BufferUnderflowException
	at java.nio.Buffer.nextGetIndex(Buffer.java:498)
	at java.nio.HeapByteBuffer.getInt(HeapByteBuffer.java:355)
	at org.apache.spark.scheduler.cluster.mesos.MesosTaskLaunchData$.fromByteString(MesosTaskLaunchData.scala:46)
	at org.apache.spark.executor.MesosExecutorBackend.launchTask(MesosExecutorBackend.scala:81)
{code}

I've checked this bug with fine-grained mode. This is because MesosTaskLaunchData.toByteString doesn't rewind byteBuffer after they put data.


---

* [SPARK-5329](https://issues.apache.org/jira/browse/SPARK-5329) | *Major* | **UIWorkloadGenerator should stop SparkContext.**

UIWorkloadGenerator don't stop SparkContext. I ran UIWorkloadGenerator and try to watch the result at WebUI but Jobs are marked as finished.
It's because SparkContext is not stopped.


---

* [SPARK-5326](https://issues.apache.org/jira/browse/SPARK-5326) | *Minor* | **Show fetch wait time as optional metric in the UI**

Time blocked waiting on shuffle read time can be a cause of slow jobs.  We currently store this information but don't show it in the UI; we should add it to the UI as an optional additional metric.

cc [~shivaram]


---

* [SPARK-5324](https://issues.apache.org/jira/browse/SPARK-5324) | *Major* | **Results of describe can't be queried**

{code}
sql("DESCRIBE TABLE test").registerTempTable("describeTest")
sql("SELECT * FROM describeTest").collect()
{code}


---

* [SPARK-5323](https://issues.apache.org/jira/browse/SPARK-5323) | *Major* | **Row shouldn't extend Seq**

Extending Seq comes at a huge cost:

1. Bytecode bloat (the Row constructor now has to make about 20 static calls to the init method of various constructors.

2.  Documentation bloat (added hundreds of methods most of them are irrelevant).


---

* [SPARK-5322](https://issues.apache.org/jira/browse/SPARK-5322) | *Major* | **Add transpose() to BlockMatrix**

Once Local matrices have the option to transpose, transposing a BlockMatrix will be trivial. Again, this will be a flag, which will in the end affect every SubMatrix in the RDD.


---

* [SPARK-5321](https://issues.apache.org/jira/browse/SPARK-5321) | *Major* | **Add transpose() method to Matrix**

While we are working on BlockMatrix, it will be nice to add the support to transpose matrices. .transpose() will just modify a private flag in local matrices. Operations that follow will be performed based on this flag.


---

* [SPARK-5317](https://issues.apache.org/jira/browse/SPARK-5317) | *Minor* | **Another straightforward way to set BoostingStrategy.defaultParams**

When using BoostingStrategy.defaultParams("Classification"), I think it's a better way to use the Enumeration Type Algo.Classification or Algo.Regression. It's more straightforward.


---

* [SPARK-5315](https://issues.apache.org/jira/browse/SPARK-5315) | *Major* | **reduceByWindow returns Scala DStream not JavaDStream**

{code}

  def reduceByWindow(
      reduceFunc: (T, T) => T,
      windowDuration: Duration,
      slideDuration: Duration
    ): DStream[T] = {
    dstream.reduceByWindow(reduceFunc, windowDuration, slideDuration)
  }
{code}

It should return JavaDStream not DStream for java code.


---

* [SPARK-5310](https://issues.apache.org/jira/browse/SPARK-5310) | *Critical* | **Update SQL programming guide for 1.3**

We make quite a few changes. We should update the SQL programming guide to reflect these changes.


---

* [SPARK-5309](https://issues.apache.org/jira/browse/SPARK-5309) | *Minor* | **Reduce Binary/String conversion overhead when reading/writing Parquet files**

Converting between Parquet Binary and Java Strings can form a significant proportion of query times.

For columns which have repeated String values (which is common) the same Binary will be repeatedly being converted. 

A simple change to cache the last converted String per column was shown to reduce query times by 25% when grouping on a data set of 66M rows on a column with many repeated Strings.

A possible optimisation would be to hand responsibility for Binary encoding/decoding over to Parquet so that it could ensure that this was done only once per Binary value. 

Next step is to look at Parquet code and to discuss with that project, which I will do.

More details are available on this discussion:
http://apache-spark-developers-list.1001551.n3.nabble.com/Optimize-encoding-decoding-strings-when-using-Parquet-td10141.html


---

* [SPARK-5308](https://issues.apache.org/jira/browse/SPARK-5308) | *Minor* | **MD5 / SHA1 hash format doesn't match standard Maven output**

https://repo1.maven.org/maven2/org/apache/spark/spark-core\_2.10/1.2.0/spark-core\_2.10-1.2.0.pom.md5

The above does not look like a proper md5 which is causing failure in some build tools like leiningen.
https://github.com/technomancy/leiningen/issues/1802

Compare this with 1.1.0 release
https://repo1.maven.org/maven2/org/apache/spark/spark-core\_2.10/1.1.0/spark-core\_2.10-1.1.0.pom.md5


---

* [SPARK-5307](https://issues.apache.org/jira/browse/SPARK-5307) | *Major* | **Add utility to help with NotSerializableException debugging**

Scala closures can easily capture objects unintentionally, especially with implicit arguments. I think we can do more than just relying on the users being smart about using sun.io.serialization.extendedDebugInfo to find more debug information.


---

* [SPARK-5301](https://issues.apache.org/jira/browse/SPARK-5301) | *Major* | **Add missing linear algebra utilities to IndexedRowMatrix and CoordinateMatrix**

1) Transpose is missing from CoordinateMatrix (this is cheap to compute, so it should be there)
2) IndexedRowMatrix should be convertable to CoordinateMatrix (conversion method to be added)


---

* [SPARK-5297](https://issues.apache.org/jira/browse/SPARK-5297) | *Major* | **JavaStreamingContext.fileStream won't work because type info isn't propagated**

The following code:
{code}
stream\_context.<K,V,SequenceFileInputFormat<K,V>>fileStream(directory)
.foreachRDD(new Function<JavaPairRDD<K,V>,Void>() {
     public Void call ( JavaPairRDD<K,V> rdd ) throws Exception {
         for ( Tuple2<K,V> x: rdd.collect() )
             System.out.println("# "+x.\_1+" "+x.\_2);
         return null;
     }
  });
stream\_context.start();
stream\_context.awaitTermination();
{code}
for custom (serializable) classes K and V compiles fine but gives an error
when I drop a new hadoop sequence file in the directory:
{quote}
15/01/17 09:13:59 ERROR scheduler.JobScheduler: Error generating jobs for time 1421507639000 ms
java.lang.ClassCastException: java.lang.Object cannot be cast to org.apache.hadoop.mapreduce.InputFormat
	at org.apache.spark.rdd.NewHadoopRDD.getPartitions(NewHadoopRDD.scala:91)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:205)
	at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:203)
	at scala.Option.getOrElse(Option.scala:120)
	at org.apache.spark.rdd.RDD.partitions(RDD.scala:203)
	at org.apache.spark.streaming.dstream.FileInputDStream$$anonfun$3.apply(FileInputDStream.scala:236)
	at org.apache.spark.streaming.dstream.FileInputDStream$$anonfun$3.apply(FileInputDStream.scala:234)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:33)
	at scala.collection.mutable.WrappedArray.foreach(WrappedArray.scala:34)
	at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
	at scala.collection.AbstractTraversable.map(Traversable.scala:105)
	at org.apache.spark.streaming.dstream.FileInputDStream.org$apache$spark$streaming$dstream$FileInputDStream$$filesToRDD(FileInputDStream.scala:234)
	at org.apache.spark.streaming.dstream.FileInputDStream.compute(FileInputDStream.scala:128)
	at org.apache.spark.streaming.dstream.DStream$$anonfun$getOrCompute$1.apply(DStream.scala:296)
	at org.apache.spark.streaming.dstream.DStream$$anonfun$getOrCompute$1.apply(DStream.scala:288)
	at scala.Option.orElse(Option.scala:257)
{quote}
The same classes K and V work fine for non-streaming Spark:
{code}
spark\_context.newAPIHadoopFile(path,F.class,K.class,SequenceFileInputFormat.class,conf)
{code}
also streaming works fine for TextFileInputFormat.

The issue is that class manifests are erased to object in the Java file stream constructor, but those are relied on downstream when creating the Hadoop RDD that backs each batch of the file stream.

https://github.com/apache/spark/blob/v1.2.0/streaming/src/main/scala/org/apache/spark/streaming/api/java/JavaStreamingContext.scala#L263
https://github.com/apache/spark/blob/v1.2.0/core/src/main/scala/org/apache/spark/SparkContext.scala#L753


---

* [SPARK-5296](https://issues.apache.org/jira/browse/SPARK-5296) | *Critical* | **Predicate Pushdown (BaseRelation) to have an interface that will accept more filters**

Currently, the BaseRelation API allows a FilteredRelation to handle an Array[Filter] which represents filter expressions that are applied as an AND operator.

We should support OR operations in a BaseRelation as well. I'm not sure what this would look like in terms of API changes, but it almost seems like a FilteredUnionedScan BaseRelation (the name stinks but you get the idea) would be useful.


---

* [SPARK-5294](https://issues.apache.org/jira/browse/SPARK-5294) | *Major* | **Hide tables in AllStagePages for "Active Stages, Completed Stages and Failed Stages" when they are empty**

Related to SPARK-5228, AllStagesPage also should hide the table for  ActiveStages, CompleteStages and FailedStages when they are empty.


---

* [SPARK-5291](https://issues.apache.org/jira/browse/SPARK-5291) | *Major* | **Add timestamp and reason why an executor is removed to SparkListenerExecutorAdded and SparkListenerExecutorRemoved**

Recently SparkListenerExecutorAdded and SparkListenerExecutorRemoved are added.
I think it's useful if they have timestamp and the reason why an executor is removed.


---

* [SPARK-5287](https://issues.apache.org/jira/browse/SPARK-5287) | *Major* | **Add defaultSizeOf to every data type**

Right now, in NativeType, we defined some defaultSizes (it is actually missing some types) and for complex types, we calculate the default size at the place where we use the default size. We should add defaultSize to every data type.


---

* [SPARK-5286](https://issues.apache.org/jira/browse/SPARK-5286) | *Blocker* | **Fail to drop an invalid table when using the data source API**

Example
{code}
CREATE TABLE jsonTable
USING org.apache.spark.sql.json.DefaultSource
OPTIONS (
  path 'it is not a path at all!'
)

DROP TABLE jsonTable
{code}

We will get 
{code}
[info]   com.google.common.util.concurrent.UncheckedExecutionException: org.apache.hadoop.mapred.InvalidInputException: Input path does not exist: file:/Users/yhuai/Projects/Spark/spark/sql/hive/it is not a path at all!
[info]   at com.google.common.cache.LocalCache$LocalLoadingCache.getUnchecked(LocalCache.java:4882)
[info]   at com.google.common.cache.LocalCache$LocalLoadingCache.apply(LocalCache.java:4898)
[info]   at org.apache.spark.sql.hive.HiveMetastoreCatalog.lookupRelation(HiveMetastoreCatalog.scala:147)
[info]   at org.apache.spark.sql.hive.HiveContext$$anon$2.org$apache$spark$sql$catalyst$analysis$OverrideCatalog$$super$lookupRelation(HiveContext.scala:241)
[info]   at org.apache.spark.sql.catalyst.analysis.OverrideCatalog$$anonfun$lookupRelation$3.apply(Catalog.scala:137)
[info]   at org.apache.spark.sql.catalyst.analysis.OverrideCatalog$$anonfun$lookupRelation$3.apply(Catalog.scala:137)
[info]   at scala.Option.getOrElse(Option.scala:120)
[info]   at org.apache.spark.sql.catalyst.analysis.OverrideCatalog$class.lookupRelation(Catalog.scala:137)
[info]   at org.apache.spark.sql.hive.HiveContext$$anon$2.lookupRelation(HiveContext.scala:241)
[info]   at org.apache.spark.sql.SQLContext.table(SQLContext.scala:332)
[info]   at org.apache.spark.sql.hive.execution.DropTable.run(commands.scala:57)
[info]   at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult$lzycompute(commands.scala:53)
[info]   at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult(commands.scala:53)
[info]   at org.apache.spark.sql.execution.ExecutedCommand.execute(commands.scala:61)
[info]   at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:472)
[info]   at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:472)
[info]   at org.apache.spark.sql.SchemaRDDLike$class.$init$(SchemaRDDLike.scala:58)
[info]   at org.apache.spark.sql.SchemaRDD.<init>(SchemaRDD.scala:108)
[info]   at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:73)
[info]   at org.apache.spark.sql.hive.MetastoreDataSourcesSuite$$anonfun$9.apply$mcV$sp(MetastoreDataSourcesSuite.scala:258)
[info]   at org.apache.spark.sql.hive.MetastoreDataSourcesSuite$$anonfun$9.apply(MetastoreDataSourcesSuite.scala:246)
[info]   at org.apache.spark.sql.hive.MetastoreDataSourcesSuite$$anonfun$9.apply(MetastoreDataSourcesSuite.scala:246)
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
[info]   at org.apache.spark.sql.hive.MetastoreDataSourcesSuite.org$scalatest$BeforeAndAfterEach$$super$runTest(MetastoreDataSourcesSuite.scala:36)
[info]   at org.scalatest.BeforeAndAfterEach$class.runTest(BeforeAndAfterEach.scala:255)
[info]   at org.apache.spark.sql.hive.MetastoreDataSourcesSuite.runTest(MetastoreDataSourcesSuite.scala:36)
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
[info]   Cause: org.apache.hadoop.mapred.InvalidInputException: Input path does not exist: file:/Users/yhuai/Projects/Spark/spark/sql/hive/it is not a path at all!
[info]   at org.apache.hadoop.mapred.FileInputFormat.listStatus(FileInputFormat.java:197)
[info]   at org.apache.hadoop.mapred.FileInputFormat.getSplits(FileInputFormat.java:208)
[info]   at org.apache.spark.rdd.HadoopRDD.getPartitions(HadoopRDD.scala:201)
[info]   at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:206)
[info]   at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:204)
[info]   at scala.Option.getOrElse(Option.scala:120)
[info]   at org.apache.spark.rdd.RDD.partitions(RDD.scala:204)
[info]   at org.apache.spark.rdd.MapPartitionsRDD.getPartitions(MapPartitionsRDD.scala:32)
[info]   at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:206)
[info]   at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:204)
[info]   at scala.Option.getOrElse(Option.scala:120)
[info]   at org.apache.spark.rdd.RDD.partitions(RDD.scala:204)
[info]   at org.apache.spark.rdd.MapPartitionsRDD.getPartitions(MapPartitionsRDD.scala:32)
[info]   at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:206)
[info]   at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:204)
[info]   at scala.Option.getOrElse(Option.scala:120)
[info]   at org.apache.spark.rdd.RDD.partitions(RDD.scala:204)
[info]   at org.apache.spark.rdd.MapPartitionsRDD.getPartitions(MapPartitionsRDD.scala:32)
[info]   at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:206)
[info]   at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:204)
[info]   at scala.Option.getOrElse(Option.scala:120)
[info]   at org.apache.spark.rdd.RDD.partitions(RDD.scala:204)
[info]   at org.apache.spark.SparkContext.runJob(SparkContext.scala:1367)
[info]   at org.apache.spark.rdd.RDD.reduce(RDD.scala:881)
[info]   at org.apache.spark.sql.json.JsonRDD$.inferSchema(JsonRDD.scala:54)
[info]   at org.apache.spark.sql.json.JSONRelation$$anonfun$schema$1.apply(JSONRelation.scala:60)
[info]   at org.apache.spark.sql.json.JSONRelation$$anonfun$schema$1.apply(JSONRelation.scala:59)
[info]   at scala.Option.getOrElse(Option.scala:120)
[info]   at org.apache.spark.sql.json.JSONRelation.schema$lzycompute(JSONRelation.scala:58)
[info]   at org.apache.spark.sql.json.JSONRelation.schema(JSONRelation.scala:58)
[info]   at org.apache.spark.sql.sources.LogicalRelation.<init>(LogicalRelation.scala:30)
[info]   at org.apache.spark.sql.hive.HiveMetastoreCatalog$$anon$2.load(HiveMetastoreCatalog.scala:85)
[info]   at org.apache.spark.sql.hive.HiveMetastoreCatalog$$anon$2.load(HiveMetastoreCatalog.scala:63)
[info]   at com.google.common.cache.LocalCache$LoadingValueReference.loadFuture(LocalCache.java:3599)
[info]   at com.google.common.cache.LocalCache$Segment.loadSync(LocalCache.java:2379)
[info]   at com.google.common.cache.LocalCache$Segment.lockedGetOrLoad(LocalCache.java:2342)
[info]   at com.google.common.cache.LocalCache$Segment.get(LocalCache.java:2257)
[info]   at com.google.common.cache.LocalCache.get(LocalCache.java:4000)
[info]   at com.google.common.cache.LocalCache.getOrLoad(LocalCache.java:4004)
[info]   at com.google.common.cache.LocalCache$LocalLoadingCache.get(LocalCache.java:4874)
[info]   at com.google.common.cache.LocalCache$LocalLoadingCache.getUnchecked(LocalCache.java:4880)
[info]   at com.google.common.cache.LocalCache$LocalLoadingCache.apply(LocalCache.java:4898)
[info]   at org.apache.spark.sql.hive.HiveMetastoreCatalog.lookupRelation(HiveMetastoreCatalog.scala:147)
[info]   at org.apache.spark.sql.hive.HiveContext$$anon$2.org$apache$spark$sql$catalyst$analysis$OverrideCatalog$$super$lookupRelation(HiveContext.scala:241)
[info]   at org.apache.spark.sql.catalyst.analysis.OverrideCatalog$$anonfun$lookupRelation$3.apply(Catalog.scala:137)
[info]   at org.apache.spark.sql.catalyst.analysis.OverrideCatalog$$anonfun$lookupRelation$3.apply(Catalog.scala:137)
[info]   at scala.Option.getOrElse(Option.scala:120)
[info]   at org.apache.spark.sql.catalyst.analysis.OverrideCatalog$class.lookupRelation(Catalog.scala:137)
[info]   at org.apache.spark.sql.hive.HiveContext$$anon$2.lookupRelation(HiveContext.scala:241)
[info]   at org.apache.spark.sql.SQLContext.table(SQLContext.scala:332)
[info]   at org.apache.spark.sql.hive.execution.DropTable.run(commands.scala:57)
[info]   at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult$lzycompute(commands.scala:53)
[info]   at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult(commands.scala:53)
[info]   at org.apache.spark.sql.execution.ExecutedCommand.execute(commands.scala:61)
[info]   at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:472)
[info]   at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:472)
[info]   at org.apache.spark.sql.SchemaRDDLike$class.$init$(SchemaRDDLike.scala:58)
[info]   at org.apache.spark.sql.SchemaRDD.<init>(SchemaRDD.scala:108)
[info]   at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:73)
[info]   at org.apache.spark.sql.hive.MetastoreDataSourcesSuite$$anonfun$9.apply$mcV$sp(MetastoreDataSourcesSuite.scala:258)
[info]   at org.apache.spark.sql.hive.MetastoreDataSourcesSuite$$anonfun$9.apply(MetastoreDataSourcesSuite.scala:246)
[info]   at org.apache.spark.sql.hive.MetastoreDataSourcesSuite$$anonfun$9.apply(MetastoreDataSourcesSuite.scala:246)
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
[info]   at org.apache.spark.sql.hive.MetastoreDataSourcesSuite.org$scalatest$BeforeAndAfterEach$$super$runTest(MetastoreDataSourcesSuite.scala:36)
[info]   at org.scalatest.BeforeAndAfterEach$class.runTest(BeforeAndAfterEach.scala:255)
[info]   at org.apache.spark.sql.hive.MetastoreDataSourcesSuite.runTest(MetastoreDataSourcesSuite.scala:36)
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

* [SPARK-5284](https://issues.apache.org/jira/browse/SPARK-5284) | *Major* | **Insert into Hive throws NPE when a inner complex type field has a null value**

For  a table like the following one, 
{code}
CREATE TABLE nullValuesInInnerComplexTypes
  (s struct<innerStruct: struct<s1:string>,
            innerArray:array<int>,
            innerMap: map<string, int>>)
{code}

When we want to insert a row like this 
{code}
Row(Row(null, null, null))
{code}

Will get a NPE
{code}
[info]   org.apache.spark.SparkException: Job aborted due to stage failure: Task 1 in stage 0.0 failed 1 times, most recent failure: Lost task 1.0 in stage 0.0 (TID 1, localhost): java.lang.NullPointerException
[info] 	at scala.runtime.Tuple3Zipped$.foreach$extension(Tuple3Zipped.scala:105)
[info] 	at org.apache.spark.sql.hive.HiveInspectors$$anonfun$wrapperFor$3.apply(HiveInspectors.scala:351)
[info] 	at org.apache.spark.sql.hive.HiveInspectors$$anonfun$wrapperFor$3$$anonfun$apply$4.apply(HiveInspectors.scala:351)
[info] 	at org.apache.spark.sql.hive.HiveInspectors$$anonfun$wrapperFor$3$$anonfun$apply$4.apply(HiveInspectors.scala:351)
[info] 	at scala.runtime.Tuple3Zipped$$anonfun$foreach$extension$1.apply(Tuple3Zipped.scala:109)
[info] 	at scala.collection.Iterator$class.foreach(Iterator.scala:727)
[info] 	at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
[info] 	at scala.collection.IterableLike$class.foreach(IterableLike.scala:72)
[info] 	at scala.collection.AbstractIterable.foreach(Iterable.scala:54)
[info] 	at scala.runtime.Tuple3Zipped$.foreach$extension(Tuple3Zipped.scala:107)
[info] 	at org.apache.spark.sql.hive.HiveInspectors$$anonfun$wrapperFor$3.apply(HiveInspectors.scala:351)
[info] 	at org.apache.spark.sql.hive.execution.InsertIntoHiveTable$$anonfun$org$apache$spark$sql$hive$execution$InsertIntoHiveTable$$writeToFile$1$1.apply(InsertIntoHiveTable.scala:108)
[info] 	at org.apache.spark.sql.hive.execution.InsertIntoHiveTable$$anonfun$org$apache$spark$sql$hive$execution$InsertIntoHiveTable$$writeToFile$1$1.apply(InsertIntoHiveTable.scala:105)
[info] 	at scala.collection.Iterator$class.foreach(Iterator.scala:727)
[info] 	at org.apache.spark.InterruptibleIterator.foreach(InterruptibleIterator.scala:28)
[info] 	at org.apache.spark.sql.hive.execution.InsertIntoHiveTable.org$apache$spark$sql$hive$execution$InsertIntoHiveTable$$writeToFile$1(InsertIntoHiveTable.scala:105)
[info] 	at org.apache.spark.sql.hive.execution.InsertIntoHiveTable$$anonfun$saveAsHiveFile$3.apply(InsertIntoHiveTable.scala:87)
[info] 	at org.apache.spark.sql.hive.execution.InsertIntoHiveTable$$anonfun$saveAsHiveFile$3.apply(InsertIntoHiveTable.scala:87)
[info] 	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:61)
[info] 	at org.apache.spark.scheduler.Task.run(Task.scala:64)
[info] 	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:192)
[info] 	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
[info] 	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
[info] 	at java.lang.Thread.run(Thread.java:745)
[info] 
[info] Driver stacktrace:
[info]   at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$failJobAndIndependentStages(DAGScheduler.scala:1199)
[info]   at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1188)
[info]   at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1187)
[info]   at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
[info]   at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
[info]   at org.apache.spark.scheduler.DAGScheduler.abortStage(DAGScheduler.scala:1187)
[info]   at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:697)
[info]   at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:697)
[info]   at scala.Option.foreach(Option.scala:236)
[info]   at org.apache.spark.scheduler.DAGScheduler.handleTaskSetFailed(DAGScheduler.scala:697)
[info]   at org.apache.spark.scheduler.DAGSchedulerEventProcessActor$$anonfun$receive$2.applyOrElse(DAGScheduler.scala:1399)
[info]   at akka.actor.Actor$class.aroundReceive(Actor.scala:465)
[info]   at org.apache.spark.scheduler.DAGSchedulerEventProcessActor.aroundReceive(DAGScheduler.scala:1360)
[info]   at akka.actor.ActorCell.receiveMessage(ActorCell.scala:516)
[info]   at akka.actor.ActorCell.invoke(ActorCell.scala:487)
[info]   at akka.dispatch.Mailbox.processMailbox(Mailbox.scala:238)
[info]   at akka.dispatch.Mailbox.run(Mailbox.scala:220)
[info]   at akka.dispatch.ForkJoinExecutorConfigurator$AkkaForkJoinTask.exec(AbstractDispatcher.scala:393)
[info]   at scala.concurrent.forkjoin.ForkJoinTask.doExec(ForkJoinTask.java:260)
[info]   at scala.concurrent.forkjoin.ForkJoinPool$WorkQueue.runTask(ForkJoinPool.java:1339)
[info]   at scala.concurrent.forkjoin.ForkJoinPool.runWorker(ForkJoinPool.java:1979)
[info]   at scala.concurrent.forkjoin.ForkJoinWorkerThread.run(ForkJoinWorkerThread.java:107)
{code}


---

* [SPARK-5282](https://issues.apache.org/jira/browse/SPARK-5282) | *Trivial* | **RowMatrix easily gets int overflow in the memory size warning**

The warning in the RowMatrix will easily get int overflow when the cols is larger than 16385.

minor issue.


---

* [SPARK-5279](https://issues.apache.org/jira/browse/SPARK-5279) | *Major* | **Use java.math.BigDecimal as the exposed Decimal type**

Change it from scala.BigDecimal to java.math.BigDecimal.


---

* [SPARK-5278](https://issues.apache.org/jira/browse/SPARK-5278) | *Major* | **check ambiguous reference to fields in Spark SQL is incompleted**

at hive context

for json string like
{code}{"a": {"b": 1, "B": 2}}{code}
The SQL `SELECT a.b from t` will report error for ambiguous reference to fields.
But for json string like
{code}{"a": [{"b": 1, "B": 2}]}{code}
The SQL `SELECT a[0].b from t` will pass and pick the first `b`


---

* [SPARK-5275](https://issues.apache.org/jira/browse/SPARK-5275) | *Blocker* | **pyspark.streaming is not included in assembly jar**

The pyspark.streaming is not included in assembly jar of spark.


---

* [SPARK-5274](https://issues.apache.org/jira/browse/SPARK-5274) | *Major* | **Stabilize UDFRegistration API**

1. Removed UDFRegistration as a mixin in SQLContext and made it a field ("udf"). This removes 45 methods from SQLContext.
2. For Java UDFs, renamed dataType to returnType.
3. For Scala UDFs, added type tags.
4. Added all Java UDF registration methods to Scala's UDFRegistration.
5. Better documentation


---

* [SPARK-5270](https://issues.apache.org/jira/browse/SPARK-5270) | *Trivial* | **Provide isEmpty() function in RDD API**

Right now there is no clean way to check if an RDD is empty.  As discussed here: http://apache-spark-user-list.1001560.n3.nabble.com/Testing-if-an-RDD-is-empty-td1678.html#a1679

I'd like a method rdd.isEmpty that returns a boolean.

This would be especially useful when using streams.  Sometimes my batches are huge in one stream, sometimes I get nothing for hours.  Still I have to run count() to check if there is anything in the RDD.  I can process my empty RDD like the others but it would be more efficient to just skip the empty ones.

I can also run first() and catch the exception; this is neither a clean nor fast solution.


---

* [SPARK-5268](https://issues.apache.org/jira/browse/SPARK-5268) | *Major* | **CoarseGrainedExecutorBackend exits for irrelevant DisassociatedEvent**

In CoarseGrainedExecutorBackend, we subscribe DisassociatedEvent in executor backend actor and exit the program upon receive such event...

let's consider the following case

The user may develop an Akka-based program which starts the actor with Spark's actor system and communicate with an external actor system (e.g. an Akka-based receiver in spark streaming which communicates with an external system)  If the external actor system fails or disassociates with the actor within spark's system with purpose, we may receive DisassociatedEvent and the executor is restarted.

This is not the expected behavior.....


---

* [SPARK-5262](https://issues.apache.org/jira/browse/SPARK-5262) | *Major* | **widen types for parameters of coalesce()**

Currently Coalesce(null, 1, null) would throw exceptions.


---

* [SPARK-5255](https://issues.apache.org/jira/browse/SPARK-5255) | *Trivial* | **Use python doc "note" for experimental tags in tree.py**

spark/python/pyspark/mllib/tree.py currently has several "EXPERIMENTAL" tags in the docs.  Those should use:
{code}
.. note:: Experimental
{code}
(as in, e.g., feature.py)


---

* [SPARK-5254](https://issues.apache.org/jira/browse/SPARK-5254) | *Major* | **Update the user guide to make clear that spark.mllib is not being deprecated**

The current statement in the user guide may deliver confusing messages to users. spark.ml contains high-level APIs for building ML pipelines. But it doesn't mean that spark.mllib is being deprecated.

First of all, the pipeline API is in its alpha stage and we need to see more use cases from the community to stabilizes it, which may take several releases. Secondly, the components in spark.ml are simple wrappers over spark.mllib implementations. Neither the APIs or the implementations from spark.mllib are being deprecated. We expect users use spark.ml pipeline APIs to build their ML pipelines, but we will keep supporting and adding features to spark.mllib. For example, there are many features in review at https://spark-prs.appspot.com/#mllib. So users should be comfortable with using spark.mllib features and expect more coming. The user guide needs to be updated to make the message clear.


---

* [SPARK-5252](https://issues.apache.org/jira/browse/SPARK-5252) | *Major* | **Streaming StatefulNetworkWordCount example hangs**

Running the stateful network word count example in Python (on one local node):
https://github.com/apache/spark/blob/master/examples/src/main/python/streaming/stateful\_network\_wordcount.py

At the beginning, when no data is streamed, empty status outputs are generated, only decorated by the current Time, e.g.:
-------------------------------------------
Time: 2015-01-14 17:58:20
-------------------------------------------

-------------------------------------------
Time: 2015-01-14 17:58:21
-------------------------------------------

As soon as I stream some data via netcat, no new status updates will show. Instead, one line saying

[Stage <number>:====================================================>                          (2 + 0) / 3]

where <number> is some integer number, e.g. 132. There is no further output on stdout.


---

* [SPARK-5247](https://issues.apache.org/jira/browse/SPARK-5247) | *Blocker* | **Enable javadoc/scaladoc for public classes in catalyst project**

We previously did not generate any docs for the entire catalyst project. Since now we are defining public APIs in that (under org.apache.spark.sql outside of org.apache.spark.sql.catalyst, such as Row, types.\_), we should start generating javadoc/scaladoc for those.


---

* [SPARK-5245](https://issues.apache.org/jira/browse/SPARK-5245) | *Major* | **Move Decimal from types.decimal to types package**

We probably don't want to (and want to) create a new package for each type. We can just put them in org.apache.spark.sql.types.


---

* [SPARK-5239](https://issues.apache.org/jira/browse/SPARK-5239) | *Minor* | **JdbcRDD throws "java.lang.AbstractMethodError: oracle.jdbc.driver.xxxxxx.isClosed()Z"**

I try use JdbcRDD to operate the table of Oracle database, but failed. My test code as follows:

{code}
import java.sql.DriverManager
import org.apache.spark.SparkContext
import org.apache.spark.rdd.JdbcRDD
import org.apache.spark.SparkConf

object JdbcRDD4Oracle {
  def main(args: Array[String]) {
    val sc = new SparkContext(new SparkConf().setAppName("JdbcRDD4Oracle").setMaster("local[2]"))
    val rdd = new JdbcRDD(sc,
      () => getConnection, getSQL, 12987, 13055, 3,
      r => {
        (r.getObject("HISTORY\_ID"), r.getObject("APPROVE\_OPINION"))
      })
    println(rdd.collect.toList)
    
    sc.stop()
  }

  def getConnection() = {
    Class.forName("oracle.jdbc.driver.OracleDriver").newInstance()
    DriverManager.getConnection("jdbc:oracle:thin:@hadoop000:1521/ORCL", "scott", "tiger")
  }
  
  def getSQL() = {
	"select HISTORY\_ID,APPROVE\_OPINION from CI\_APPROVE\_HISTORY WHERE HISTORY\_ID >=? AND HISTORY\_ID <=?"  	
  }
}
{code}

Run the example, I get the following exception:
{code}
09:56:48,302 [Executor task launch worker-0] ERROR Logging$class : Error in TaskCompletionListener
java.lang.AbstractMethodError: oracle.jdbc.driver.OracleResultSetImpl.isClosed()Z
	at org.apache.spark.rdd.JdbcRDD$$anon$1.close(JdbcRDD.scala:99)
	at org.apache.spark.util.NextIterator.closeIfNeeded(NextIterator.scala:63)
	at org.apache.spark.rdd.JdbcRDD$$anon$1$$anonfun$1.apply(JdbcRDD.scala:71)
	at org.apache.spark.rdd.JdbcRDD$$anon$1$$anonfun$1.apply(JdbcRDD.scala:71)
	at org.apache.spark.TaskContext$$anon$1.onTaskCompletion(TaskContext.scala:85)
	at org.apache.spark.TaskContext$$anonfun$markTaskCompleted$1.apply(TaskContext.scala:110)
	at org.apache.spark.TaskContext$$anonfun$markTaskCompleted$1.apply(TaskContext.scala:108)
	at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
	at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
	at org.apache.spark.TaskContext.markTaskCompleted(TaskContext.scala:108)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:64)
	at org.apache.spark.scheduler.Task.run(Task.scala:54)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:181)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:744)
09:56:48,302 [Executor task launch worker-1] ERROR Logging$class : Error in TaskCompletionListener
{code}


---

* [SPARK-5235](https://issues.apache.org/jira/browse/SPARK-5235) | *Major* | **Determine serializability of SQLContext**

The SQLConf field in SQLContext is neither Serializable nor transient. Here's the stack trace I get when running SQL queries against a Parquet file.

{code}
Exception in thread "Thread-43" org.apache.spark.SparkException: Job aborted due to stage failure: Task not serializable: java.io.NotSerializableException: org.apache.spark.sql.SQLConf
        at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$failJobAndIndependentStages(DAGScheduler.scala:1195)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1184)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1183)
        at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
        at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
        at org.apache.spark.scheduler.DAGScheduler.abortStage(DAGScheduler.scala:1183)
        at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$submitMissingTasks(DAGScheduler.scala:843)
        at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$submitStage(DAGScheduler.scala:779)
        at org.apache.spark.scheduler.DAGScheduler.handleJobSubmitted(DAGScheduler.scala:763)
        at org.apache.spark.scheduler.DAGSchedulerEventProcessActor$$anonfun$receive$2.applyOrElse(DAGScheduler.scala:1364)
        at akka.actor.Actor$class.aroundReceive(Actor.scala:465)
        at org.apache.spark.scheduler.DAGSchedulerEventProcessActor.aroundReceive(DAGScheduler.scala:1356)
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

* [SPARK-5234](https://issues.apache.org/jira/browse/SPARK-5234) | *Trivial* | **examples for ml don't have sparkContext.stop**

Not sure why sc.stop() is not in the 
org.apache.spark.examples.ml {CrossValidatorExample, SimpleParamsExample, SimpleTextClassificationPipeline}. 

I can prepare a PR if it's not intentional to omit the call to stop.


---

* [SPARK-5233](https://issues.apache.org/jira/browse/SPARK-5233) | *Major* | **Error replay of WAL when recovered from driver failue**

Spark Streaming will write all the event into WAL for driver recovery, the sequence in the WAL may be like this:

{code}

BlockAdditionEvent ---> BlockAdditionEvent ---> BlockAdditionEvent ---> BatchAllocationEvent ---> BatchCleanupEvent ---> BlockAdditionEvent ---> BlockAdditionEvent ---> 'Driver Down Time' ---> BlockAdditionEvent ---> BlockAdditionEvent ---> BatchAllocationEvent

{code}

When driver recovered from failure, it will replay all the existed metadata WAL to get the right status, in this situation, two BatchAdditionEvent before down will put into received block queue. After driver started, new incoming blocking will also put into this queue and a follow-up BlockAllocationEvent will allocate an allocatedBlocks with queue draining out. So old, not this batch's data will also mix into this batch, here is the partial log:

{code}
15/01/13 17:19:10 INFO KafkaInputDStream: >>>>>>>>>block store result for batch 1421140750000 ms
....
15/01/13 17:19:10 INFO KafkaInputDStream: >>>>>>>>>>>>>log segment: WriteAheadLogFileSegment(file:       /home/jerryshao/project/apache-spark/checkpoint-wal-test/receivedData/0/log-1421140593201-14211406       53201,46704,480)
197757 15/01/13 17:19:10 INFO KafkaInputDStream: >>>>>>>>>>>>>log segment: WriteAheadLogFileSegment(file:       /home/jerryshao/project/apache-spark/checkpoint-wal-test/receivedData/0/log-1421140593201-14211406       53201,47188,480)
197758 15/01/13 17:19:10 INFO KafkaInputDStream: >>>>>>>>>>>>>log segment: WriteAheadLogFileSegment(file:       /home/jerryshao/project/apache-spark/checkpoint-wal-test/receivedData/0/log-1421140593201-14211406       53201,47672,480)
197759 15/01/13 17:19:10 INFO KafkaInputDStream: >>>>>>>>>>>>>log segment: WriteAheadLogFileSegment(file:       /home/jerryshao/project/apache-spark/checkpoint-wal-test/receivedData/0/log-1421140593201-14211406       53201,48156,480)                                                                                  
197760 15/01/13 17:19:10 INFO KafkaInputDStream: >>>>>>>>>>>>>log segment: WriteAheadLogFileSegment(file:       /home/jerryshao/project/apache-spark/checkpoint-wal-test/receivedData/0/log-1421140593201-14211406       53201,48640,480)
197761 15/01/13 17:19:10 INFO KafkaInputDStream: >>>>>>>>>>>>>log segment: WriteAheadLogFileSegment(file:       /home/jerryshao/project/apache-spark/checkpoint-wal-test/receivedData/0/log-1421140593201-14211406       53201,49124,480)
197762 15/01/13 17:19:10 INFO KafkaInputDStream: >>>>>>>>>>>>>log segment: WriteAheadLogFileSegment(file:       /home/jerryshao/project/apache-spark/checkpoint-wal-test/receivedData/0/log-1421140747074-14211408       07074,0,44184)
197763 15/01/13 17:19:10 INFO KafkaInputDStream: >>>>>>>>>>>>>log segment: WriteAheadLogFileSegment(file:       /home/jerryshao/project/apache-spark/checkpoint-wal-test/receivedData/0/log-1421140747074-14211408       07074,44188,58536)
197764 15/01/13 17:19:10 INFO KafkaInputDStream: >>>>>>>>>>>>>log segment: WriteAheadLogFileSegment(file:       /home/jerryshao/project/apache-spark/checkpoint-wal-test/receivedData/0/log-1421140747074-14211408       07074,102728,60168)
197765 15/01/13 17:19:10 INFO KafkaInputDStream: >>>>>>>>>>>>>log segment: WriteAheadLogFileSegment(file:       /home/jerryshao/project/apache-spark/checkpoint-wal-test/receivedData/0/log-1421140747074-14211408       07074,162900,64584)
197766 15/01/13 17:19:10 INFO KafkaInputDStream: >>>>>>>>>>>>>log segment: WriteAheadLogFileSegment(file:       /home/jerryshao/project/apache-spark/checkpoint-wal-test/receivedData/0/log-1421140747074-14211408       07074,227488,51240)
{code}

The old log "/home/jerryshao/project/apache-spark/checkpoint-wal-test/receivedData/0/log-1421140593201-14211406" is obviously far older than current batch interval, and will fetch again to add to process.

This issue is subtle, because in the previous code we never delete the old received data WAL. This will lead to unwanted result as I know.

Basically because we miss some BlockAllocationEvent when recovered from failure. I think we need to correctly replay and insert all the events correctly.


---

* [SPARK-5231](https://issues.apache.org/jira/browse/SPARK-5231) | *Major* | **History Server shows wrong job submission time.**

History Server doesn't show collect job submission time.
It's because JobProgressListener updates job submission time every time onJobStart method is invoked from ReplayListenerBus.


---

* [SPARK-5228](https://issues.apache.org/jira/browse/SPARK-5228) | *Major* | **Hide tables for "Active Jobs/Completed Jobs/Failed Jobs" when they are empty**

In current WebUI, tables for Active Stages, Completed Stages, Skipped Stages and Failed Stages are hidden when they are empty while tables for Active Jobs, Completed Jobs and Failed Jobs are not hidden though they are empty.


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

* [SPARK-5224](https://issues.apache.org/jira/browse/SPARK-5224) | *Blocker* | **parallelize list/ndarray is really slow**

After the default batchSize changed to 0 (batched based on the size of object), but parallelize() still use BatchedSerializer with batchSize=1.

Also, BatchedSerializer did not work well with list and numpy.ndarray


---

* [SPARK-5223](https://issues.apache.org/jira/browse/SPARK-5223) | *Critical* | **Use pickle instead of MapConvert and ListConvert in MLlib Python API**

It will introduce problems if the object in dict/list/tuple can not support by py4j, such as Vector.

Also, pickle may have better performance for larger object (less RPC).

In some cases that the object in dict/list can not be pickled (such as JavaObject), we should still use MapConvert/ListConvert.

discussion: http://apache-spark-developers-list.1001551.n3.nabble.com/Python-to-Java-object-conversion-of-numpy-array-td10065.html


---

* [SPARK-5219](https://issues.apache.org/jira/browse/SPARK-5219) | *Major* | **Race condition in TaskSchedulerImpl and TaskSetManager**

TaskSchedulerImpl.handleTaskGettingResult, TaskSetManager.canFetchMoreResults and TaskSetManager.abort will access variables which are used in multiple threads, but they don't use a correct lock.


---

* [SPARK-5217](https://issues.apache.org/jira/browse/SPARK-5217) | *Major* | **Spark UI should report pending stages during job execution on AllStagesPage.**

This is a first step. 

Spark listener already reports all the stages at the time of job submission and of which we only show active, failed and completed. This addition has no overhead and seems straight forward to achieve.


---

* [SPARK-5214](https://issues.apache.org/jira/browse/SPARK-5214) | *Major* | **Add EventLoop and change DAGScheduler to an EventLoop**

As per discussion in SPARK-5124, DAGScheduler can simply use a queue & event loop to process events. It would be great when we want to decouple Akka in the future.


---

* [SPARK-5212](https://issues.apache.org/jira/browse/SPARK-5212) | *Major* | **Add support of schema-less, custom field delimiter and SerDe for HiveQL transform**

This pr adds the support of schema-less syntax, custom field delimiter and SerDe for HiveQL's transform.


---

* [SPARK-5211](https://issues.apache.org/jira/browse/SPARK-5211) | *Critical* | **Restore HiveMetastoreTypes.toDataType**

It was a public API. Since developers are using it, we need to get it back.


---

* [SPARK-5207](https://issues.apache.org/jira/browse/SPARK-5207) | *Major* | **StandardScalerModel mean and variance re-use**

From this discussion: http://apache-spark-developers-list.1001551.n3.nabble.com/Re-use-scaling-means-and-variances-from-StandardScalerModel-td10073.html

Changing constructor to public would be a simple change, but a discussion is needed to determine what args necessary for this change.


---

* [SPARK-5202](https://issues.apache.org/jira/browse/SPARK-5202) | *Major* | **HiveContext doesn't support the Variables Substitution**

https://cwiki.apache.org/confluence/display/Hive/LanguageManual+VariableSubstitution

This is a block issue for the CLI user, it impacts the existed hql scripts from Hive.


---

* [SPARK-5201](https://issues.apache.org/jira/browse/SPARK-5201) | *Major* | **ParallelCollectionRDD.slice(seq, numSlices) has int overflow when dealing with inclusive range**

{code}
 sc.makeRDD(1 to (Int.MaxValue)).count       // result = 0
 sc.makeRDD(1 to (Int.MaxValue - 1)).count   // result = 2147483646 = Int.MaxValue - 1
 sc.makeRDD(1 until (Int.MaxValue)).count    // result = 2147483646 = Int.MaxValue - 1
{code}
More details on the discussion https://github.com/apache/spark/pull/2874


---

* [SPARK-5200](https://issues.apache.org/jira/browse/SPARK-5200) | *Major* | **Disable web UI in Hive Thriftserver tests**

In our unit tests, we should disable the Spark Web UI when starting the Hive Thriftserver, since port contention during this test has been a cause of test failures on Jenkins.


---

* [SPARK-5196](https://issues.apache.org/jira/browse/SPARK-5196) | *Major* | **Add comment field in Create Table Field DDL**

Support `comment` in Create Table Field DDL


---

* [SPARK-5195](https://issues.apache.org/jira/browse/SPARK-5195) | *Major* | **when hive table is query with alias  the cache data  lose effectiveness.**

override the MetastoreRelation's sameresult method only compare databasename and table name

because in previous :
cache table t1;
select count() from t1;
it will read data from memory but the sql below will not,instead it read from hdfs:
select count() from t1 t;

because cache data is keyed by logical plan and compare with sameResult ,so when table with alias the same table 's logicalplan is not the same logical plan with out alias so modify the sameresult method only compare databasename and table name


---

* [SPARK-5193](https://issues.apache.org/jira/browse/SPARK-5193) | *Major* | **Make Spark SQL API usable in Java and remove the Java-specific API**

Java version of the SchemaRDD API causes high maintenance burden for Spark SQL itself and downstream libraries (e.g. MLlib pipeline API needs to support both JavaSchemaRDD and SchemaRDD). We can audit the Scala API and make it usable for Java, and then we can remove the Java specific version. 

Things to remove include (Java version of):
- data type
- Row
- SQLContext
- HiveContext

Things to consider:
- Scala and Java have a different collection library.
- Scala and Java (8) have different closure interface.
- Scala and Java can have duplicate definitions of common classes, such as BigDecimal.


---

* [SPARK-5188](https://issues.apache.org/jira/browse/SPARK-5188) | *Major* | **make-distribution.sh should support curl, not only wget to get Tachyon**

When we use `make-distribution.sh` with `--with-tachyon` option, Tachyon will be downloaded by `wget` command but some systems don't have `wget` by default (MacOS X doesn't have).
Other scripts like build/mvn, build/sbt support not only `wget` but also `curl` so `make-distribution.sh` should support `curl` too.


---

* [SPARK-5187](https://issues.apache.org/jira/browse/SPARK-5187) | *Blocker* | **CACHE TABLE AS SELECT fails with Hive UDFs**

{code}
  test("CACHE TABLE with Hive UDF") {
    sql("CACHE TABLE udfTest AS SELECT * FROM src WHERE floor(key) = 1")
    assertCached(table("udfTest"))
    uncacheTable("udfTest")
  }
{code}


---

* [SPARK-5183](https://issues.apache.org/jira/browse/SPARK-5183) | *Critical* | **Document data source API**

We need to document the data types the caller needs to support.


---

* [SPARK-5181](https://issues.apache.org/jira/browse/SPARK-5181) | *Major* | **inaccurate log when WAL is disabled**

Currently, even the logManager is not created, we still see the log entry 

s"Writing to log $record"

because of the following lines

{code:title=ReceivedBlockTracker.scala|borderStyle=solid}
/** Write an update to the tracker to the write ahead log */
  private def writeToLog(record: ReceivedBlockTrackerLogEvent) {
    logDebug(s"Writing to log $record")
    logManagerOption.foreach { logManager =>
        logManager.writeToLog(ByteBuffer.wrap(Utils.serialize(record)))
    }
  }
{code}


---

* [SPARK-5176](https://issues.apache.org/jira/browse/SPARK-5176) | *Major* | **Thrift server fails with confusing error message when deploy-mode is cluster**

With Spark 1.2.0, when I try to run
{noformat}
$SPARK\_HOME/sbin/start-thriftserver.sh --deploy-mode cluster --master spark://xd-spark.xdata.data-tactics-corp.com:7077
{noformat}
The log output is
{noformat}
Spark assembly has been built with Hive, including Datanucleus jars on classpath
Spark Command: /usr/java/latest/bin/java -cp ::/home/tpanning/Projects/spark/spark-1.2.0-bin-hadoop2.4/sbin/../conf:/home/tpanning/Projects/spark/spark-1.2.0-bin-hadoop2.4/lib/spark-assembly-1.2.0-hadoop2.4.0.jar:/home/tpanning/Projects/spark/spark-1.2.0-bin-hadoop2.4/lib/datanucleus-core-3.2.10.jar:/home/tpanning/Projects/spark/spark-1.2.0-bin-hadoop2.4/lib/datanucleus-rdbms-3.2.9.jar:/home/tpanning/Projects/spark/spark-1.2.0-bin-hadoop2.4/lib/datanucleus-api-jdo-3.2.6.jar -XX:MaxPermSize=128m -Xms512m -Xmx512m org.apache.spark.deploy.SparkSubmit --class org.apache.spark.sql.hive.thriftserver.HiveThriftServer2 --deploy-mode cluster --master spark://xd-spark.xdata.data-tactics-corp.com:7077 spark-internal
========================================

Jar url 'spark-internal' is not in valid format.
Must be a jar file path in URL format (e.g. hdfs://host:port/XX.jar, file:///XX.jar)

Usage: DriverClient [options] launch <active-master> <jar-url> <main-class> [driver options]
Usage: DriverClient kill <active-master> <driver-id>

Options:
   -c CORES, --cores CORES        Number of cores to request (default: 1)
   -m MEMORY, --memory MEMORY     Megabytes of memory to request (default: 512)
   -s, --supervise                Whether to restart the driver on failure
   -v, --verbose                  Print more debugging output
     
Using Spark's default log4j profile: org/apache/spark/log4j-defaults.properties
{noformat}

I do not get this error if deploy-mode is set to client. The --deploy-mode option is described by the --help output, so I expected it to work. I checked, and this behavior seems to be present in Spark 1.1.0 as well.


---

* [SPARK-5173](https://issues.apache.org/jira/browse/SPARK-5173) | *Major* | **support python application running on yarn cluster mode**

now when we run python application on yarn cluster mode through spark-submit, spark-submit doesnot support python application on yarn cluster mode.so i modify code of submit and yarn's AM in order to support it.


---

* [SPARK-5172](https://issues.apache.org/jira/browse/SPARK-5172) | *Minor* | **spark-examples-\*\*\*.jar shades a wrong Hadoop distribution**

Steps to check it:

1. Download  "spark-1.2.0-bin-hadoop2.4.tgz" from http://www.apache.org/dyn/closer.cgi/spark/spark-1.2.0/spark-1.2.0-bin-hadoop2.4.tgz
2. unzip `spark-examples-1.2.0-hadoop2.4.0.jar`.
3. There is a file called `org/apache/hadoop/package-info.class` in the jar. It doesn't exist in hadoop 2.4. 
4. Run "javap -classpath . -private -c -v  org.apache.hadoop.package-info"
{code}
Compiled from "package-info.java"
interface org.apache.hadoop.package-info
  SourceFile: "package-info.java"
  RuntimeVisibleAnnotations: length = 0x24
   00 01 00 06 00 06 00 07 73 00 08 00 09 73 00 0A
   00 0B 73 00 0C 00 0D 73 00 0E 00 0F 73 00 10 00
   11 73 00 12 
  minor version: 0
  major version: 50
  Constant pool:
const #1 = Asciz	org/apache/hadoop/package-info;
const #2 = class	#1;	//  "org/apache/hadoop/package-info"
const #3 = Asciz	java/lang/Object;
const #4 = class	#3;	//  java/lang/Object
const #5 = Asciz	package-info.java;
const #6 = Asciz	Lorg/apache/hadoop/HadoopVersionAnnotation;;
const #7 = Asciz	version;
const #8 = Asciz	1.2.1;
const #9 = Asciz	revision;
const #10 = Asciz	1503152;
const #11 = Asciz	user;
const #12 = Asciz	mattf;
const #13 = Asciz	date;
const #14 = Asciz	Wed Jul 24 13:39:35 PDT 2013;
const #15 = Asciz	url;
const #16 = Asciz	https://svn.apache.org/repos/asf/hadoop/common/branches/branch-1.2;
const #17 = Asciz	srcChecksum;
const #18 = Asciz	6923c86528809c4e7e6f493b6b413a9a;
const #19 = Asciz	SourceFile;
const #20 = Asciz	RuntimeVisibleAnnotations;

{
}
{code}
The version is {{1.2.1}}

It comes because a wrong hbase version settings in examples project. Here is a part of the dependencly tree when runnning "mvn -Pyarn -Phadoop-2.4 -Dhadoop.version=2.4.0 -pl examples dependency:tree"
{noformat}
[INFO] +- org.apache.hbase:hbase-testing-util:jar:0.98.7-hadoop1:compile
[INFO] |  +- org.apache.hbase:hbase-common:test-jar:tests:0.98.7-hadoop1:compile
[INFO] |  +- org.apache.hbase:hbase-server:test-jar:tests:0.98.7-hadoop1:compile
[INFO] |  |  +- com.sun.jersey:jersey-core:jar:1.8:compile
[INFO] |  |  +- com.sun.jersey:jersey-json:jar:1.8:compile
[INFO] |  |  |  +- org.codehaus.jettison:jettison:jar:1.1:compile
[INFO] |  |  |  +- com.sun.xml.bind:jaxb-impl:jar:2.2.3-1:compile
[INFO] |  |  |  \- org.codehaus.jackson:jackson-xc:jar:1.7.1:compile
[INFO] |  |  \- com.sun.jersey:jersey-server:jar:1.8:compile
[INFO] |  |     \- asm:asm:jar:3.3.1:test
[INFO] |  +- org.apache.hbase:hbase-hadoop1-compat:jar:0.98.7-hadoop1:compile
[INFO] |  +- org.apache.hbase:hbase-hadoop1-compat:test-jar:tests:0.98.7-hadoop1:compile
[INFO] |  +- org.apache.hadoop:hadoop-core:jar:1.2.1:compile
[INFO] |  |  +- xmlenc:xmlenc:jar:0.52:compile
[INFO] |  |  +- commons-configuration:commons-configuration:jar:1.6:compile
[INFO] |  |  |  +- commons-digester:commons-digester:jar:1.8:compile
[INFO] |  |  |  |  \- commons-beanutils:commons-beanutils:jar:1.7.0:compile
[INFO] |  |  |  \- commons-beanutils:commons-beanutils-core:jar:1.8.0:compile
[INFO] |  |  \- commons-el:commons-el:jar:1.0:compile
[INFO] |  +- org.apache.hadoop:hadoop-test:jar:1.2.1:compile
[INFO] |  |  +- org.apache.ftpserver:ftplet-api:jar:1.0.0:compile
[INFO] |  |  +- org.apache.mina:mina-core:jar:2.0.0-M5:compile
[INFO] |  |  +- org.apache.ftpserver:ftpserver-core:jar:1.0.0:compile
[INFO] |  |  \- org.apache.ftpserver:ftpserver-deprecated:jar:1.0.0-M2:compile
[INFO] |  +- com.github.stephenc.findbugs:findbugs-annotations:jar:1.3.9-1:compile
[INFO] |  \- junit:junit:jar:4.10:test
[INFO] |     \- org.hamcrest:hamcrest-core:jar:1.1:test
{noformat}

If I ran `mvn -Pyarn -Phadoop-2.4 -Dhadoop.version=2.4.0 -pl examples -am dependency:tree -Dhbase.profile=hadoop2`, the dependency tree is right.


---

* [SPARK-5169](https://issues.apache.org/jira/browse/SPARK-5169) | *Major* | **fetch the correct max attempts**

If we set an spark.yarn.maxAppAttempts which is larger than yarn.resourcemanager.am.max-attempts in yarn side, it will be overrided. So we should use both spark conf and yarn conf to get the correct retry number which is used to judge if it is the last attempt.


---

* [SPARK-5168](https://issues.apache.org/jira/browse/SPARK-5168) | *Major* | **Make SQLConf a field rather than mixin in SQLContext**

Right now we mix SQLConf in SQLContext, which pollutes the namespace (even though most functions are private[sql]). It makes more sense to make this a conf field through composition rather than inheritance.


---

* [SPARK-5167](https://issues.apache.org/jira/browse/SPARK-5167) | *Major* | **Move Row into sql package and make it usable for Java**

This will help us eliminate the duplicated Java code.


---

* [SPARK-5166](https://issues.apache.org/jira/browse/SPARK-5166) | *Blocker* | **Stabilize Spark SQL APIs**

Before we take Spark SQL out of alpha, we need to audit the APIs and stabilize them. 

As a general rule, everything under org.apache.spark.sql.catalyst should not be exposed.


---

* [SPARK-5157](https://issues.apache.org/jira/browse/SPARK-5157) | *Trivial* | **Configure more JVM options properly when we use ConcMarkSweepGC for AM.**

When we set `SPARK\_USE\_CONC\_INCR\_GC`, ConcurrentMarkSweepGC works on the AM.
Actually, if ConcurrentMarkSweepGC is set for the JVM, following JVM options are set automatically and implicitly.

* MaxTenuringThreshold=0
* SurvivorRatio=1024

Those can not be proper value for most cases.
See also http://www.oracle.com/technetwork/java/tuning-139912.html


---

* [SPARK-5154](https://issues.apache.org/jira/browse/SPARK-5154) | *Major* | **Python API for Kafka streaming**

Python API for KafkaUtils


---

* [SPARK-5153](https://issues.apache.org/jira/browse/SPARK-5153) | *Critical* | **Flaky test: o.a.s.streaming.kafka.ReliableKafkaStreamSuite**

I have seen several irrelevant PR failed on this test

https://amplab.cs.berkeley.edu/jenkins/job/SparkPullRequestBuilder/25254/consoleFull

https://amplab.cs.berkeley.edu/jenkins/job/SparkPullRequestBuilder/25248/

https://amplab.cs.berkeley.edu/jenkins/job/SparkPullRequestBuilder/25251/console


---

* [SPARK-5147](https://issues.apache.org/jira/browse/SPARK-5147) | *Blocker* | **write ahead logs from streaming receiver are not purged because cleanupOldBlocks in WriteAheadLogBasedBlockHandler is never called**

Hi all,

We are running a Spark streaming application with ReliableKafkaReceiver. We have "spark.streaming.receiver.writeAheadLog.enable" set to true so write ahead logs (WALs) for received data are created under receivedData/streamId folder in the checkpoint directory. 

However, old WALs are never purged by time. receivedBlockMetadata and checkpoint files are purged correctly though. I went through the code, WriteAheadLogBasedBlockHandler class in ReceivedBlockHandler.scala is responsible for cleaning up the old blocks. It has method cleanupOldBlocks, which is never called by any class. ReceiverSupervisorImpl class holds a WriteAheadLogBasedBlockHandler  instance. However, it only calls storeBlock method to create WALs but never calls cleanupOldBlocks method to purge old WALs.

The size of the WAL folder increases constantly on HDFS. This is preventing us from running the ReliableKafkaReceiver 24x7. Can somebody please take a look.

Thanks,
Max


---

* [SPARK-5145](https://issues.apache.org/jira/browse/SPARK-5145) | *Minor* | **Add BLAS.dsyr and use it in GaussianMixtureEM**

This pr uses BLAS.dsyr to replace few implementations in GaussianMixtureEM.


---

* [SPARK-5143](https://issues.apache.org/jira/browse/SPARK-5143) | *Blocker* | **spark-network-yarn 2.11 depends on spark-network-shuffle 2.10**

It seems that spark-network-yarn compiled for scala 2.11 depends on spark-network-shuffle compiled for scala 2.10. This causes builds with SBT 0.13.7 to fail with the error "Conflicting cross-version suffixes".

Screenshot of dependency: http://www.uploady.com/#!/download/6Yn95UZA0DR/3taAJFjCJjrsSXOR


---

* [SPARK-5141](https://issues.apache.org/jira/browse/SPARK-5141) | *Minor* | **CaseInsensitiveMap throws "java.io.NotSerializableException"**

The following code throws a serialization.[https://github.com/luogankun/spark-jdbc|https://github.com/luogankun/spark-jdbc]

{code}
CREATE TEMPORARY TABLE jdbc\_table
USING com.luogankun.spark.jdbc
OPTIONS (
sparksql\_table\_schema  '(TBL\_ID int, TBL\_NAME string, TBL\_TYPE string)',
jdbc\_table\_name    'TBLS',
jdbc\_table\_schema '(TBL\_ID , TBL\_NAME , TBL\_TYPE)',
url    'jdbc:mysql://hadoop000:3306/hive',
user    'root',
password    'root'
);

select TBL\_ID,TBL\_ID,TBL\_TYPE from jdbc\_table;
{code}

I get the following stack trace:

{code}
org.apache.spark.SparkException: Task not serializable
        at org.apache.spark.util.ClosureCleaner$.ensureSerializable(ClosureCleaner.scala:166)
        at org.apache.spark.util.ClosureCleaner$.clean(ClosureCleaner.scala:158)
        at org.apache.spark.SparkContext.clean(SparkContext.scala:1448)
        at org.apache.spark.rdd.RDD.mapPartitions(RDD.scala:616)
        at org.apache.spark.sql.execution.Project.execute(basicOperators.scala:43)
        at org.apache.spark.sql.execution.SparkPlan.executeCollect(SparkPlan.scala:81)
        at org.apache.spark.sql.hive.HiveContext$QueryExecution.stringResult(HiveContext.scala:386)
        at org.apache.spark.sql.hive.thriftserver.AbstractSparkSQLDriver.run(AbstractSparkSQLDriver.scala:57)
        at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver.processCmd(SparkSQLCLIDriver.scala:275)
        at org.apache.hadoop.hive.cli.CliDriver.processLine(CliDriver.java:423)
        at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver$.main(SparkSQLCLIDriver.scala:211)
        at org.apache.spark.sql.hive.thriftserver.SparkSQLCLIDriver.main(SparkSQLCLIDriver.scala)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:606)
        at org.apache.spark.deploy.SparkSubmit$.launch(SparkSubmit.scala:365)
        at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:75)
        at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)
Caused by: java.io.NotSerializableException: org.apache.spark.sql.sources.CaseInsensitiveMap
        at java.io.ObjectOutputStream.writeObject0(ObjectOutputStream.java:1183)
        at java.io.ObjectOutputStream.defaultWriteFields(ObjectOutputStream.java:1547)
		......
		at org.apache.spark.serializer.JavaSerializationStream.writeObject(JavaSerializer.scala:42)
        at org.apache.spark.serializer.JavaSerializerInstance.serialize(JavaSerializer.scala:73)
        at org.apache.spark.util.ClosureCleaner$.ensureSerializable(ClosureCleaner.scala:164)
{code}


---

* [SPARK-5138](https://issues.apache.org/jira/browse/SPARK-5138) | *Trivial* | **pyspark unable to infer schema of namedtuple**

When attempting to infer the schema of an RDD that contains namedtuples, pyspark fails to identify the records as namedtuples, resulting in it raising an error.

Example:
{noformat}
from pyspark import SparkContext
from pyspark.sql import SQLContext
from collections import namedtuple
import os

sc = SparkContext()
rdd = sc.textFile(os.path.join(os.getenv('SPARK\_HOME'), 'README.md'))
TextLine = namedtuple('TextLine', 'line length')
tuple\_rdd = rdd.map(lambda l: TextLine(line=l, length=len(l)))
tuple\_rdd.take(5)  # This works

sqlc = SQLContext(sc)

# The following line raises an error
schema\_rdd = sqlc.inferSchema(tuple\_rdd)
{noformat}

The error raised is:
{noformat}
  File "/opt/spark-1.2.0-bin-hadoop2.4/python/pyspark/worker.py", line 107, in main
    process()
  File "/opt/spark-1.2.0-bin-hadoop2.4/python/pyspark/worker.py", line 98, in process
    serializer.dump\_stream(func(split\_index, iterator), outfile)
  File "/opt/spark-1.2.0-bin-hadoop2.4/python/pyspark/serializers.py", line 227, in dump\_stream
    vs = list(itertools.islice(iterator, batch))
  File "/opt/spark-1.2.0-bin-hadoop2.4/python/pyspark/rdd.py", line 1107, in takeUpToNumLeft
    yield next(iterator)
  File "/opt/spark-1.2.0-bin-hadoop2.4/python/pyspark/sql.py", line 816, in convert\_struct
    raise ValueError("unexpected tuple: %s" % obj)
TypeError: not all arguments converted during string formatting
{noformat}


---

* [SPARK-5136](https://issues.apache.org/jira/browse/SPARK-5136) | *Minor* | **Improve documentation around setting up Spark IntelliJ project**

[The documentation about setting up a Spark project in Intellij|http://spark.apache.org/docs/latest/building-spark.html#using-with-intellij-idea] is somewhat short/cryptic and targets [an IntelliJ version released in 2012|https://www.jetbrains.com/company/history.jsp]. A refresh / upgrade is probably warranted.


---

* [SPARK-5135](https://issues.apache.org/jira/browse/SPARK-5135) | *Minor* | **Add support for describe [extended] table to DDL in SQLContext**

Support Describe Table Command.

describe [extended] tableName.

This also support external datasource table.


---

* [SPARK-5132](https://issues.apache.org/jira/browse/SPARK-5132) | *Minor* | **The name for get stage info atempt ID from Json was wrong**

stageInfoToJson: Stage Attempt Id
stageInfoFromJson: Attempt Id


---

* [SPARK-5130](https://issues.apache.org/jira/browse/SPARK-5130) | *Major* | **yarn-cluster mode should not be considered as client mode in spark-submit**

spark-submit will choose SparkSubmitDriverBootstrapper or SparkSubmit to launch according to --deploy-mode.
When submitting application using yarn-cluster we do not need to specify --deploy-mode so spark-submit will launch SparkSubmitDriverBootstrapper, and it is not proper to do this.


---

* [SPARK-5126](https://issues.apache.org/jira/browse/SPARK-5126) | *Minor* | **No error log for a typo master url**

If a typo master url  is passed to Worker, it only print the following logs:

{noformat}
15/01/07 14:30:02 INFO worker.Worker: Connecting to master spark://master url:7077...
15/01/07 14:30:02 INFO remote.RemoteActorRefProvider$RemoteDeadLetterActorRef: Message [org.apache.spark.deploy.DeployMessages$RegisterWorker] from Actor[akka://sparkWorker/user/Worker#-282880172] to Actor[akka://sparkWorker/deadLetters] was not delivered. [3] dead letters encountered. This logging can be turned off or adjusted with configuration settings 'akka.log-dead-letters' and 'akka.log-dead-letters-during-shutdown'.
{noformat}

It's not obvious to know the url is wrong. And {{akka://sparkWorker/deadLetters}} is also confusing. The `deadLetters` Actor is because `actorSelection` will return `deadLetters` for invalid path.

{code}
  def actorSelection(path: String): ActorSelection = path match {
    case RelativeActorPath(elems) ⇒
      if (elems.isEmpty) ActorSelection(provider.deadLetters, "")
      else if (elems.head.isEmpty) ActorSelection(provider.rootGuardian, elems.tail)
      else ActorSelection(lookupRoot, elems)
    case ActorPathExtractor(address, elems) ⇒
      ActorSelection(provider.rootGuardianAt(address), elems)
    case \_ ⇒
      ActorSelection(provider.deadLetters, "")
  }
{code}

I think logging an error about invalid url is better.


---

* [SPARK-5125](https://issues.apache.org/jira/browse/SPARK-5125) | *Minor* | **Time major blocks of code in spark-ec2/setup.sh**

To make it easy to record and compare the performance of invocations of {{spark-ec2}}, print out some minimal timing information from {{setup.sh}}.


---

* [SPARK-5123](https://issues.apache.org/jira/browse/SPARK-5123) | *Major* | **Stabilize Spark SQL data type API**

Having two versions of the data type APIs (one for Java, one for Scala) requires downstream libraries to also have two versions of the APIs if the library wants to support both Java and Scala. I took a look at the Scala version of the data type APIs - it can actually work out pretty well for Java out of the box. 

The proposal is to move Spark SQL data type definitions from org.apache.spark.sql.catalyst.types into org.apache.spark.sql.types, and make the existing Scala type API usable in Java.


---

* [SPARK-5122](https://issues.apache.org/jira/browse/SPARK-5122) | *Minor* | **Remove Shark from spark-ec2**

Since Shark has been replaced by Spark SQL, we don't need it in {{spark-ec2}} anymore.


---

* [SPARK-5119](https://issues.apache.org/jira/browse/SPARK-5119) | *Major* | **java.lang.ArrayIndexOutOfBoundsException on trying to train decision tree model**

First I tried to see if there was a bug raised before with similar trace. I found https://www.mail-archive.com/user@spark.apache.org/msg13708.html but the suggestion to upgarde to latest code bae ( I cloned from master branch) does not fix this issue.

Issue: try to train a decision tree classifier on some data.After training and when it begins colllect, it crashes:

15/01/06 22:28:15 INFO BlockManagerMaster: Updated info of block rdd\_52\_1
15/01/06 22:28:15 ERROR Executor: Exception in task 1.0 in stage 31.0 (TID 1895)
java.lang.ArrayIndexOutOfBoundsException: -1
        at org.apache.spark.mllib.tree.impurity.GiniAggregator.update(Gini.scala:93)
        at org.apache.spark.mllib.tree.impl.DTStatsAggregator.update(DTStatsAggregator.scala:100)
        at org.apache.spark.mllib.tree.DecisionTree$.orderedBinSeqOp(DecisionTree.scala:419)
        at org.apache.spark.mllib.tree.DecisionTree$.org$apache$spark$mllib$tree$DecisionTree$$nodeBinSeqOp$1(DecisionTree.scala:511)
        at org.apache.spark.mllib.tree.DecisionTree$$anonfun$org$apache$spark$mllib$tree$DecisionTree$$binSeqOp$1$1.apply(DecisionTree.scala:536
)
        at org.apache.spark.mllib.tree.DecisionTree$$anonfun$org$apache$spark$mllib$tree$DecisionTree$$binSeqOp$1$1.apply(DecisionTree.scala:533
)
        at scala.collection.immutable.Map$Map1.foreach(Map.scala:109)
        at org.apache.spark.mllib.tree.DecisionTree$.org$apache$spark$mllib$tree$DecisionTree$$binSeqOp$1(DecisionTree.scala:533)
        at org.apache.spark.mllib.tree.DecisionTree$$anonfun$6$$anonfun$apply$8.apply(DecisionTree.scala:628)
        at org.apache.spark.mllib.tree.DecisionTree$$anonfun$6$$anonfun$apply$8.apply(DecisionTree.scala:628)
        at scala.collection.Iterator$class.foreach(Iterator.scala:727)

Minimal code:
 data = MLUtils.loadLibSVMFile(sc, '/scratch1/vivek/datasets/private/a1a').cache()

model = DecisionTree.trainClassifier(data, numClasses=2, categoricalFeaturesInfo={}, maxDepth=5, maxBins=100)

Just download the data from: http://www.csie.ntu.edu.tw/~cjlin/libsvmtools/datasets/binary/a1a


---

* [SPARK-5118](https://issues.apache.org/jira/browse/SPARK-5118) | *Major* | **"Create table test stored as parquet as select ..." report error**

Caused by: java.lang.RuntimeException: Unhandled clauses: TOK\_TBLPARQUETFILE


---

* [SPARK-5116](https://issues.apache.org/jira/browse/SPARK-5116) | *Minor* | **Add extractor for SparseVector and DenseVector in MLlib**

Add extractor for SparseVector and DenseVector in MLlib to save some code while performing pattern matching on Vectors. For example, previously we need to use:

{code:title=A.scala|borderStyle=solid}
vec match {
      case dv: DenseVector =>
        val values = dv.values
        ...
      case sv: SparseVector =>
        val indices = sv.indices
        val values = sv.values
        val size = sv.size
        ...
    }
{code}

with extractor it is:
{code:title=B.scala|borderStyle=solid}
vec match {
      case DenseVector(values) =>
        ...
      case SparseVector(size, indices, values) =>
        ...
    }
{code}


---

* [SPARK-5102](https://issues.apache.org/jira/browse/SPARK-5102) | *Minor* | **CompressedMapStatus needs to be registered with Kryo**

After upgrading from Spark 1.1.0 to 1.2.0 I got this exception:

{code}
Caused by: org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 0.0 failed 1 times, most recent failure: Lost task 0.0 in stage 0.0 (TID 0, localhost): java.lang.IllegalArgumentException: Class is not registered: org.apache.spark.scheduler.CompressedMapStatus
Note: To register this class use: kryo.register(org.apache.spark.scheduler.CompressedMapStatus.class);
	at com.esotericsoftware.kryo.Kryo.getRegistration(Kryo.java:442)
	at com.esotericsoftware.kryo.util.DefaultClassResolver.writeClass(DefaultClassResolver.java:79)
	at com.esotericsoftware.kryo.Kryo.writeClass(Kryo.java:472)
	at com.esotericsoftware.kryo.Kryo.writeClassAndObject(Kryo.java:565)
	at org.apache.spark.serializer.KryoSerializerInstance.serialize(KryoSerializer.scala:165)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:206)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
{code}

I had to register {{org.apache.spark.scheduler.CompressedMapStatus}} with Kryo. I think this should be done in {{spark/serializer/KryoSerializer.scala}}, unless instances of this class are not expected to be sent over the wire. (Maybe I'm doing something wrong?)


---

* [SPARK-5101](https://issues.apache.org/jira/browse/SPARK-5101) | *Minor* | **Add common ML math functions**

We can add common ML math functions to MLlib. It may be a little tricky to implement those functions in a numerically stable way. For example,

{code}
math.log(1 + math.exp(x))
{code}

should be implemented as

{code}
if (x > 0) {
  x + math.log1p(math.exp(-x))
} else {
  math.log1p(math.exp(x))
}
{code}

It becomes hard to maintain if we have multiple copies of the correct implementation in the codebase. A good place for those functions could be `mllib.util.MathFunctions`.


---

* [SPARK-5099](https://issues.apache.org/jira/browse/SPARK-5099) | *Minor* | **Simplify logistic loss function**

This is a minor pr where I think that we can simply take minus of margin, instead of subtracting margin, in the LogisticGradient.

Mathematically, they are equal. But the modified equation is the common form of logistic loss function and so more readable. It also computes more accurate value as some quick tests show.


---

* [SPARK-5097](https://issues.apache.org/jira/browse/SPARK-5097) | *Critical* | **Adding data frame APIs to SchemaRDD**

SchemaRDD, through its DSL, already provides common data frame functionalities. However, the DSL was originally created for constructing test cases without much end-user usability and API stability consideration. This design doc proposes a set of API changes for Scala and Python to make the SchemaRDD DSL API more usable and stable.


---

* [SPARK-5096](https://issues.apache.org/jira/browse/SPARK-5096) | *Major* | **SparkBuild.scala assumes you are at the spark root dir**

This is bad because it breaks compiling spark as an external project ref and is generally bad SBT practice.


---

* [SPARK-5093](https://issues.apache.org/jira/browse/SPARK-5093) | *Major* | **Make network related timeouts consistent**

We have a few instances of spark.network.timeout that are using different default settings (e.g. 45s in block manager and 100s in shuffle). This proposes to make them consistent at 120s.


---

* [SPARK-5089](https://issues.apache.org/jira/browse/SPARK-5089) | *Major* | **Vector conversion broken for non-float64 arrays**

Prior to performing many MLlib operations in PySpark (e.g. KMeans), data are automatically converted to {{DenseVectors}}. If the data are numpy arrays with dtype {{float64}} this works. If data are numpy arrays with lower precision (e.g. {{float16}} or {{float32}}), they should be upcast to {{float64}}, but due to a small bug in this line this currently doesn't happen (casting is not inplace). 

{code:none}
if ar.dtype != np.float64:
    ar.astype(np.float64)
{code}
 
Non-float64 values are in turn mangled during SerDe. This can have significant consequences. For example, the following yields confusing and erroneous results:

{code:none}
from numpy import random
from pyspark.mllib.clustering import KMeans
data = sc.parallelize(random.randn(100,10).astype('float32'))
model = KMeans.train(data, k=3)
len(model.centers[0])
>> 5 # should be 10!
{code}

But this works fine:

{code:none}
data = sc.parallelize(random.randn(100,10).astype('float64'))
model = KMeans.train(data, k=3)
len(model.centers[0])
>> 10 # this is correct
{code}

The fix is trivial, I'll submit a PR shortly.


---

* [SPARK-5088](https://issues.apache.org/jira/browse/SPARK-5088) | *Minor* | **Use spark-class for running executors directly on mesos**

- sbin/spark-executor is only used by running executor on mesos environment.
- spark-executor calls spark-class without specific parameter internally.
- PYTHONPATH is moved to spark-class' case.
- Remove a redundant file for maintaining codes.


---

* [SPARK-5087](https://issues.apache.org/jira/browse/SPARK-5087) | *Major* | **Merge yarn.Client and yarn.ClientBase**

Another simplification that's possible now that yarn-alpha is gone.


---

* [SPARK-5083](https://issues.apache.org/jira/browse/SPARK-5083) | *Critical* | **Flaky test: o.a.s.scheduler.TaskResultGetterSuite**

Fix the following flaky test
{noformat}
[info] TaskResultGetterSuite:
[info] - task retried if result missing from block manager *** FAILED *** (343 milliseconds)
[info]   org.apache.spark.SparkException: Job aborted due to stage failure: Exception while getting task result: java.lang.RuntimeException: org.apache.spark.storage.BlockNotFoundException: Block taskresult\_0 not found
[info] 	at org.apache.spark.storage.BlockManager.getBlockData(BlockManager.scala:314)
[info] 	at org.apache.spark.network.netty.NettyBlockRpcServer$$anonfun$2.apply(NettyBlockRpcServer.scala:57)
[info] 	at org.apache.spark.network.netty.NettyBlockRpcServer$$anonfun$2.apply(NettyBlockRpcServer.scala:57)
[info] 	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
[info] 	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
[info] 	at scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:33)
[info] 	at scala.collection.mutable.ArrayOps$ofRef.foreach(ArrayOps.scala:108)
[info] 	at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
[info] 	at scala.collection.mutable.ArrayOps$ofRef.map(ArrayOps.scala:108)
[info] 	at org.apache.spark.network.netty.NettyBlockRpcServer.receive(NettyBlockRpcServer.scala:57)
[info] 	at org.apache.spark.network.server.TransportRequestHandler.processRpcRequest(TransportRequestHandler.java:124)
[info] 	at org.apache.spark.network.server.TransportRequestHandler.handle(TransportRequestHandler.java:97)
[info] 	at org.apache.spark.network.server.TransportChannelHandler.channelRead0(TransportChannelHandler.java:91)
[info] 	at org.apache.spark.network.server.TransportChannelHandler.channelRead0(TransportChannelHandler.java:44)
[info] 	at io.netty.channel.SimpleChannelInboundHandler.channelRead(SimpleChannelInboundHandler.java:105)
[info] 	at io.netty.channel.AbstractChannelHandlerContext.invokeChannelRead(AbstractChannelHandlerContext.java:333)
[info] 	at io.netty.channel.AbstractChannelHandlerContext.fireChannelRead(AbstractChannelHandlerContext.java:319)
[info] 	at io.netty.handler.codec.MessageToMessageDecoder.channelRead(MessageToMessageDecoder.java:103)
[info] 	at io.netty.channel.AbstractChannelHandlerContext.invokeChannelRead(AbstractChannelHandlerContext.java:333)
[info] 	at io.netty.channel.AbstractChannelHandlerContext.fireChannelRead(AbstractChannelHandlerContext.java:319)
[info] 	at io.netty.handler.codec.ByteToMessageDecoder.channelRead(ByteToMessageDecoder.java:163)
[info] 	at io.netty.channel.AbstractChannelHandlerContext.invokeChannelRead(AbstractChannelHandlerContext.java:333)
[info] 	at io.netty.channel.AbstractChannelHandlerContext.fireChannelRead(AbstractChannelHandlerCont
{noformat}


---

* [SPARK-5078](https://issues.apache.org/jira/browse/SPARK-5078) | *Critical* | **Allow setting Akka host name from env vars**

Current spark lets you set the ip address using SPARK\_LOCAL\_IP, but then this is given to akka after doing a reverse DNS lookup.  This makes it difficult to run spark in Docker.  You can already change the hostname that is used programmatically, but it would be nice to be able to do this with an environment variable.


---

* [SPARK-5069](https://issues.apache.org/jira/browse/SPARK-5069) | *Minor* | **Race condition in TaskSchedulerImpl.dagScheduler**

`TaskSchedulerImpl.dagScheduler` is set in DAGSchedulerEventProcessActor.preStart. But Akka doesn't guarantee which thread `Actor.preStart` will run in. Usually it will run in a different thread, without proper protection, `TaskSchedulerImpl.dagScheduler` may be null when it's used. The following test failure demonstrates it.

{noformat}
[info] - Scheduler does not always schedule tasks on the same workers *** FAILED *** (37 milliseconds)
[info]   java.lang.NullPointerException:
[info]   at org.apache.spark.scheduler.TaskSchedulerImpl.executorAdded(TaskSchedulerImpl.scala:459)
[info]   at org.apache.spark.scheduler.TaskSchedulerImpl$$anonfun$resourceOffers$1.apply(TaskSchedulerImpl.scala:226)
[info]   at org.apache.spark.scheduler.TaskSchedulerImpl$$anonfun$resourceOffers$1.apply(TaskSchedulerImpl.scala:221)
[info]   at scala.collection.immutable.List.foreach(List.scala:318)
[info]   at org.apache.spark.scheduler.TaskSchedulerImpl.resourceOffers(TaskSchedulerImpl.scala:221)
[info]   at org.apache.spark.scheduler.TaskSchedulerImplSuite$$anonfun$4$$anonfun$6.apply(TaskSchedulerImplSuite.scala:287)
[info]   at org.apache.spark.scheduler.TaskSchedulerImplSuite$$anonfun$4$$anonfun$6.apply(TaskSchedulerImplSuite.scala:284)
[info]   at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
[info]   at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
[info]   at scala.collection.immutable.Range.foreach(Range.scala:141)
[info]   at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
{noformat}


---

* [SPARK-5067](https://issues.apache.org/jira/browse/SPARK-5067) | *Minor* | **testTaskInfo doesn't compare SparkListenerApplicationStart.appId**

In org.apache.spark.util.JsonProtocolSuite.testTaskInfo, it doesn't compare SparkListenerApplicationStart.appId when comparing two "SparkListenerApplicationStart"s


---

* [SPARK-5064](https://issues.apache.org/jira/browse/SPARK-5064) | *Major* | **GraphX rmatGraph hangs**

org.apache.spark.graphx.util.GraphGenerators.rmatGraph(sc, 4, 8)

It just outputs "0 edges" and then locks up.

A spark-user message reports similar behavior:
http://mail-archives.apache.org/mod\_mbox/spark-user/201408.mbox/%3C1408617621830-12570.post@n3.nabble.com%3E


---

* [SPARK-5063](https://issues.apache.org/jira/browse/SPARK-5063) | *Major* | **Display more helpful error messages for several invalid operations**

Spark does not support nested RDDs or performing Spark actions inside of transformations; this usually leads to NullPointerExceptions (see SPARK-718 as one example).  The confusing NPE is one of the most common sources of Spark questions on StackOverflow:

- https://stackoverflow.com/questions/13770218/call-of-distinct-and-map-together-throws-npe-in-spark-library/14130534#14130534
- https://stackoverflow.com/questions/23793117/nullpointerexception-in-scala-spark-appears-to-be-caused-be-collection-type/23793399#23793399
- https://stackoverflow.com/questions/25997558/graphx-ive-got-nullpointerexception-inside-mapvertices/26003674#26003674

(those are just a sample of the ones that I've answered personally; there are many others).

I think we can detect these errors by adding logic to {{RDD}} to check whether {{sc}} is null (e.g. turn {{sc}} into a getter function); we can use this to add a better error message.

In PySpark, these errors manifest themselves slightly differently.  Attempting to nest RDDs or perform actions inside of transformations results in pickle-time errors:

{code}
rdd1 = sc.parallelize(range(100))
rdd2 = sc.parallelize(range(100))
rdd1.mapPartitions(lambda x: [rdd2.map(lambda x: x)])
{code}

produces

{code}
[...]
  File "/Users/joshrosen/anaconda/lib/python2.7/pickle.py", line 306, in save
    rv = reduce(self.proto)
  File "/Users/joshrosen/Documents/Spark/python/lib/py4j-0.8.2.1-src.zip/py4j/java\_gateway.py", line 538, in \_\_call\_\_
  File "/Users/joshrosen/Documents/Spark/python/lib/py4j-0.8.2.1-src.zip/py4j/protocol.py", line 304, in get\_return\_value
py4j.protocol.Py4JError: An error occurred while calling o21.\_\_getnewargs\_\_. Trace:
py4j.Py4JException: Method \_\_getnewargs\_\_([]) does not exist
	at py4j.reflection.ReflectionEngine.getMethod(ReflectionEngine.java:333)
	at py4j.reflection.ReflectionEngine.getMethod(ReflectionEngine.java:342)
	at py4j.Gateway.invoke(Gateway.java:252)
	at py4j.commands.AbstractCommand.invokeMethod(AbstractCommand.java:133)
	at py4j.commands.CallCommand.execute(CallCommand.java:79)
	at py4j.GatewayConnection.run(GatewayConnection.java:207)
	at java.lang.Thread.run(Thread.java:745)
{code}

We get the same error when attempting to broadcast an RDD in PySpark.  For Python, improved error reporting could be as simple as overriding the {{getnewargs}} method to throw a more useful UnsupportedOperation exception with a more helpful error message.

Users may also see confusing NPEs when calling methods on stopped SparkContexts, so I've added checks for that as well.


---

* [SPARK-5058](https://issues.apache.org/jira/browse/SPARK-5058) | *Minor* | **Typos and broken URL**

Spark Streaming + Kafka Integration Guide has a broken Examples link. Also project is spelled as projrect.


---

* [SPARK-5057](https://issues.apache.org/jira/browse/SPARK-5057) | *Minor* | **Log message in failed askWithReply attempts**

As is used in many cases, it is better for analysis to print contents of message after attempt failed.


---

* [SPARK-5052](https://issues.apache.org/jira/browse/SPARK-5052) | *Major* | **com.google.common.base.Optional binary has a wrong method signatures**

PR https://github.com/apache/spark/pull/1813 shaded Guava jar file and moved Guava classes to package org.spark-project.guava when Spark is built by Maven.

When a user jar uses the actual com.google.common.base.Optional transform(com.google.common.base.Function); method from Guava,  a java.lang.NoSuchMethodError: com.google.common.base.Optional.transform(Lcom/google/common/base/Function;)Lcom/google/common/base/Optional; is thrown.

The reason seems to be that the Optional class included on spark-assembly-1.2.0-hadoop1.0.4.jar has an incorrect method signature that includes the shaded class as an argument:

Expected:
javap -classpath target/scala-2.10/googlegenomics-spark-examples-assembly-1.0.jar com.google.common.base.Optional
  public abstract <V extends java/lang/Object> com.google.common.base.Optional<V> transform(com.google.common.base.Function<? super T, V>);

Found:
javap -classpath lib/spark-assembly-1.2.0-hadoop1.0.4.jar com.google.common.base.Optional
  public abstract <V extends java/lang/Object> com.google.common.base.Optional<V> transform(org.spark-project.guava.common.base.Function<? super T, V>);


---

* [SPARK-5050](https://issues.apache.org/jira/browse/SPARK-5050) | *Minor* | **Add unit test for sqdist**

Related to #3643. Follow the previous suggestion to add unit test for sqdist in VectorsSuite.


---

* [SPARK-5049](https://issues.apache.org/jira/browse/SPARK-5049) | *Major* | **ParquetTableScan always prepends the values of partition columns in output rows irrespective of the order of the partition columns in the original SELECT query**

This happens when ParquetTableScan is being used by turning on spark.sql.hive.convertMetastoreParquet

For example:

spark-sql> set spark.sql.hive.convertMetastoreParquet=true;

spark-sql> create table table1(a int , b int) partitioned by (p1 string, p2 int) ROW FORMAT SERDE 'parquet.hive.serde.ParquetHiveSerDe' STORED AS  INPUTFORMAT 'parquet.hive.DeprecatedParquetInputFormat' OUTPUTFORMAT 'parquet.hive.DeprecatedParquetOutputFormat';

spark-sql> insert into table table1 partition(p1='January',p2=1) select key, 10  from src;    

spark-sql> select a, b, p1, p2 from table1 limit 10;

January	1	484	10
January	1	484	10
January	1	484	10
January	1	484	10
January	1	484	10
January	1	484	10
January	1	484	10
January	1	484	10
January	1	484	10
January	1	484	10

The correct output should be 

484	10	January	1
484	10	January	1
484	10	January	1
484	10	January	1
484	10	January	1
484	10	January	1
484	10	January	1
484	10	January	1
484	10	January	1
484	10	January	1


This also leads to schema mismatch if the query is run using HiveContext and the result is a SchemaRDD.
For example :

scala> import org.apache.spark.sql.hive.\_
scala> val hc = new HiveContext(sc)
scala> hc.setConf("spark.sql.hive.convertMetastoreParquet", "true")
scala> val res = hc.sql("select a, b, p1, p2 from table1 limit 10")
scala> res.collect
res2: Array[org.apache.spark.sql.Row] = Array([January,1,238,10], [January,1,86,10], [January,1,311,10], [January,1,27,10], [January,1,165,10], [January,1,409,10], [January,1,255,10], [January,1,278,10], [January,1,98,10], [January,1,484,10])

scala> res.schema
res5: org.apache.spark.sql.StructType = StructType(ArrayBuffer(StructField(a,IntegerType,true), StructField(b,IntegerType,true), StructField(p1,StringType,true), StructField(p2,IntegerType,true)))


---

* [SPARK-5047](https://issues.apache.org/jira/browse/SPARK-5047) | *Major* | **Add Kafka to the Python Streaming API**

Extend the new python streaming API to add KafkaUtils.


---

* [SPARK-5040](https://issues.apache.org/jira/browse/SPARK-5040) | *Major* | **Support expressing unresolved attributes using $"attribute name" notation in SQL DSL**

The SQL DSL uses Scala symbols to represent attributes, e.g. 'attr. Symbols, however, cannot capture attributes with spaces or uncommon characters. Here we suggest supporting $"attribute name" as an alternative.


---

* [SPARK-5038](https://issues.apache.org/jira/browse/SPARK-5038) | *Critical* | **Add explicit return type for all implicit functions**

As we learned in https://github.com/apache/spark/pull/3580, not explicitly typing implicit functions can lead to compiler bugs and potentially unexpected runtime behavior.


---

* [SPARK-5035](https://issues.apache.org/jira/browse/SPARK-5035) | *Critical* | **Streaming ReceiverMessage trait should extend Serializable**

Spark Streaming's {{ReceiverMessage}} trait should extend Serializable in order to fix a subtle bug that only occurs when running on a real cluster:

If you attempt to send a fire-and-forget message to a remote Akka actor and that message cannot be serialized, then this seems to lead to more-or-less silent failures.  As an optimization, Akka skips message serialization for messages sent within the same JVM.  As a result, Spark's unit tests will never fail due to non-serializable Akka messages, but these will cause mostly-silent failures when running on a real cluster.

Here's the current code for ReceiverMessage:

{code}
/** Messages sent to the NetworkReceiver. */
private[streaming] sealed trait ReceiverMessage
private[streaming] object StopReceiver extends ReceiverMessage
{code}

Since {{ReceiverMessage}} does not extend Serializable and {{StopReceiver}} is a regular {{object}}, not a {{case object}}, {{StopReceiver}} will throw serialization errors.  As a result, graceful receiver shutdown is broken on real clusters but works in {{local}} and {{local-cluster}} modes.  If you want to reproduce this, try running the word count example from the Streaming Programming Guide in the Spark shell:

{code}
import org.apache.spark.\_
import org.apache.spark.streaming.\_
import org.apache.spark.streaming.StreamingContext.\_
val ssc = new StreamingContext(sc, Seconds(10))
// Create a DStream that will connect to hostname:port, like localhost:9999
val lines = ssc.socketTextStream("localhost", 9999)
// Split each line into words
val words = lines.flatMap(\_.split(" "))
import org.apache.spark.streaming.StreamingContext.\_
// Count each word in each batch
val pairs = words.map(word => (word, 1))
val wordCounts = pairs.reduceByKey(\_ + \_)

// Print the first ten elements of each RDD generated in this DStream to the console
wordCounts.print()
ssc.start()
Thread.sleep(10000)
ssc.stop(true, true)
{code}

This will work correctly in local mode but fail when running against a real cluster (try sbin/start-all.sh to test this locally).


---

* [SPARK-5032](https://issues.apache.org/jira/browse/SPARK-5032) | *Major* | **MimaExcludes should not exclude GraphX**

Since GraphX is no longer alpha as of 1.2, MimaExcludes should not include this line for 1.3:
{code}
MimaBuild.excludeSparkPackage("graphx"),
{code}


---

* [SPARK-5031](https://issues.apache.org/jira/browse/SPARK-5031) | *Minor* | **ml.LogisticRegression score column should be renamed probability**

In the spark.ml package, LogisticRegression has an output column "score" which contains the estimated probability of label 1.  "Score" is a very overloaded term, so "probability" would be better.


---

* [SPARK-5029](https://issues.apache.org/jira/browse/SPARK-5029) | *Major* | **Enable from follow multiple brackets**

Enable from follow multiple brackets:
such as :
select key from ((select * from testData limit 1) union all (select * from testData limit 1)) x limit 1


---

* [SPARK-5028](https://issues.apache.org/jira/browse/SPARK-5028) | *Major* | **Add total received and processed records metrics to Streaming UI**

Followed by SPARK-4537 to add total received records and total processed records in Streaming web ui.


---

* [SPARK-5021](https://issues.apache.org/jira/browse/SPARK-5021) | *Major* | **GaussianMixtureEM should be faster for SparseVector input**

GaussianMixtureEM currently converts everything to dense vectors.  It would be nice if it were faster for SparseVectors (running in time linear in the number of non-zero values).

However, this may not be too important since clustering should rarely be done in high dimensions.


---

* [SPARK-5020](https://issues.apache.org/jira/browse/SPARK-5020) | *Critical* | **GaussianMixtureModel.predictMembership() should take an RDD only**

GaussianMixtureModel.predictMembership() should take an RDD only.  (The current method should be made internal and a wrapper should be added taking only an RDD.)

This should be done ASAP since it is an API change.


---

* [SPARK-5019](https://issues.apache.org/jira/browse/SPARK-5019) | *Minor* | **Update GMM API to use MultivariateGaussian**

The GaussianMixtureModel API should expose MultivariateGaussian instances instead of the means and covariances.  This should be fixed as soon as possible to stabilize the API.


---

* [SPARK-5018](https://issues.apache.org/jira/browse/SPARK-5018) | *Critical* | **Make MultivariateGaussian public**

MultivariateGaussian is currently private[ml], but it would be a useful public class.  This JIRA will require defining a good public API for distributions.

This JIRA will be needed for finalizing the GaussianMixtureModel API, which should expose MultivariateGaussian instances instead of the means and covariances.


---

* [SPARK-5017](https://issues.apache.org/jira/browse/SPARK-5017) | *Major* | **GaussianMixtureEM should use SVD for Gaussian initialization**

GaussianMixtureEM effectively does 2 matrix decompositions in Gaussian initialization (pinv and det).  Instead, it should do SVD and use that result to compute the inverse and det.  This will also prevent failure when the matrix is singular.

Note: Breeze pinv fails when the matrix is singular: [https://github.com/scalanlp/breeze/issues/304]


---

* [SPARK-5015](https://issues.apache.org/jira/browse/SPARK-5015) | *Critical* | **GaussianMixtureEM should take random seed parameter**

GaussianMixtureEM uses randomness but does not take a random seed.  It should take one as a parameter.


---

* [SPARK-5013](https://issues.apache.org/jira/browse/SPARK-5013) | *Major* | **User guide for Gaussian Mixture Model**

Add GMM user guide with code examples in Scala/Java/Python.


---

* [SPARK-5012](https://issues.apache.org/jira/browse/SPARK-5012) | *Critical* | **Python API for Gaussian Mixture Model**

Add Python API for the Scala implementation of GMM.


---

* [SPARK-5009](https://issues.apache.org/jira/browse/SPARK-5009) | *Major* | **allCaseVersions function in  SqlLexical  leads to StackOverflow Exception**

Recently I found a bug when I add new feature in SqlParser. Which is :
If I define a KeyWord that has a long name. Like：
 ```protected val ：SERDEPROPERTIES = Keyword("SERDEPROPERTIES")```

Since the all case version is implement by recursive function, so when  ```implicit asParser`` function is called  and the stack memory is very small, it will leads to SO Exception. 

java.lang.StackOverflowError
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:222)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:254)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:254)


---

* [SPARK-5006](https://issues.apache.org/jira/browse/SPARK-5006) | *Major* | **spark.port.maxRetries doesn't work**

We normally config spark.port.maxRetries in properties file or SparkConf. But in Utils.scala it read from SparkEnv's conf. As SparkEnv is an object whose env need to be set after JVM is launched and Utils.scala is also an object. So in most cases portMaxRetries will get the default value 16.


---

* [SPARK-5002](https://issues.apache.org/jira/browse/SPARK-5002) | *Major* | **Using ascending by default when not specify order in order by**

spark sql does not support ```SELECT a, b FROM testData2 ORDER BY a desc, b``` now.


---

* [SPARK-4999](https://issues.apache.org/jira/browse/SPARK-4999) | *Major* | **No need to put WAL-backed block into block manager by default**

Currently WAL-backed block is read out from HDFS and put into BlockManger with storage level MEMORY\_ONLY\_SER by default, since WAL-backed block is already fault-tolerant, no need to put into BlockManger again by default.


---

* [SPARK-4998](https://issues.apache.org/jira/browse/SPARK-4998) | *Major* | **"train" methods in object DecisionTree cannot work when using java reflection**

When using the Java reflection, the several "train" methods defined in "object DecisionTree" cannot be identified due to the function with the same name in "class DecisionTree".

Since the namesake "train" method in class DecisionTree" has already been a deprecated one, it should be commit out to make the "train" methods in "object DecisionTree" effective.


---

* [SPARK-4995](https://issues.apache.org/jira/browse/SPARK-4995) | *Minor* | **Replace Vector.toBreeze.activeIterator with foreachActive**

New foreachActive method of vector was introduced by [SPARK-4431|https://issues.apache.org/jira/browse/SPARK-4431] as more efficient alternative to vector.toBreeze.activeIterator. There are some parts of codebase where it was not yet replaced.


---

* [SPARK-4994](https://issues.apache.org/jira/browse/SPARK-4994) | *Major* | **Cleanup removed executors' ShuffleInfo in yarn shuffle service**

when the application is completed, yarn's nodemanager can remove application's local-dirs.but all executors' metadata of completed application havenot be removed. now it let yarn ShuffleService to have much more memory to store Executors' ShuffleInfo. so these metadata need to be removed.


---

* [SPARK-4990](https://issues.apache.org/jira/browse/SPARK-4990) | *Minor* | **Search SPARK\_CONF\_DIR first when --properties-file is not specified**

In SparkSubmitArguments we first search SPARK\_CONF\_DIR then SPARK\_HOME/conf directory to find "spark-defaults.conf" file.
I think in spark-submit script it should follow the same rule also.


---

* [SPARK-4989](https://issues.apache.org/jira/browse/SPARK-4989) | *Critical* | **wrong application configuration cause cluster down in standalone mode**

when enabling eventlog in standalone mode, if give the wrong configuration, the standalone cluster will down (cause master restart, lose connection with workers). 

How to reproduce: just give an invalid value to "spark.eventLog.dir", for example: *spark.eventLog.dir=hdfs://tmp/logdir1, hdfs://tmp/logdir2*. This will throw illegalArgumentException, which will cause the *Master* restart. And the whole cluster is not available.

This is not acceptable that cluster is crashed by one application's wrong setting.


---

* [SPARK-4986](https://issues.apache.org/jira/browse/SPARK-4986) | *Blocker* | **Graceful shutdown for Spark Streaming does not work in Standalone cluster mode**

When using the graceful stop API of Spark Streaming in Spark Standalone cluster the stop signal never reaches the receivers. I have tested this with Spark 1.2 and Kafka receivers. 

ReceiverTracker will send StopReceiver message to ReceiverSupervisorImpl.
In local mode ReceiverSupervisorImpl receives this message but in Standalone cluster mode the message seems to be lost.

(I have modified the code to send my own string message as a stop signal from ReceiverTracker to ReceiverSupervisorImpl and it works as a workaround.)


---

* [SPARK-4984](https://issues.apache.org/jira/browse/SPARK-4984) | *Major* | **add a pop-up containing the full for job description when it is very long**

add a pop-up containing the full for job description when it is very long


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

* [SPARK-4979](https://issues.apache.org/jira/browse/SPARK-4979) | *Minor* | **Add streaming logistic regression**

We currently support streaming linear regression and k-means clustering. We can add support for streaming logistic regression using a strategy similar to that used in streaming linear regression, applying gradient updates to batches of data from a DStream, and extending the existing mllib methods with minor modifications.


---

* [SPARK-4975](https://issues.apache.org/jira/browse/SPARK-4975) | *Major* | **HiveInspectorSuite test failure**

HiveInspectorSuite test failure：
[info] - wrap / unwrap null, constant null and writables *** FAILED *** (21 milliseconds)
[info]   1 did not equal 0 (HiveInspectorSuite.scala:136)
[info]   org.scalatest.exceptions.TestFailedException:
[info]   at org.scalatest.Assertions$class.newAssertionFailedException(Assertions.scala:500)
[info]   at org.scalatest.FunSuite.newAssertionFailedException(FunSuite.scala:1555)
[info]   at org.scalatest.Assertions$AssertionsHelper.macroAssert(Assertions.scala:466)
[info]   at org.apache.spark.sql.hive.HiveInspectorSuite.checkValues(HiveInspectorSuite.scala:136)
[info]   at org.apache.spark.sql.hive.HiveInspectorSuite$$anonfun$checkValues$1.apply(HiveInspectorSuite.scala:124)
[info]   at org.apache.spark.sql.hive.HiveInspectorSuite$$anonfun$checkValues$1.apply(HiveInspectorSuite.scala:123)
[info]   at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
[info]   at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
[info]   at scala.collection.immutable.List.foreach(List.scala:318)
[info]   at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
[info]   at scala.collection.AbstractTraversable.map(Traversable.scala:105)
[info]   at org.apache.spark.sql.hive.HiveInspectorSuite.checkValues(HiveInspectorSuite.scala:123)
[info]   at org.apache.spark.sql.hive.HiveInspectorSuite$$anonfun$3.apply$mcV$sp(HiveInspectorSuite.scala:163)
[info]   at org.apache.spark.sql.hive.HiveInspectorSuite$$anonfun$3.apply(HiveInspectorSuite.scala:148)
[info]   at org.apache.spark.sql.hive.HiveInspectorSuite$$anonfun$3.apply(HiveInspectorSuite.scala:148)
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


---

* [SPARK-4973](https://issues.apache.org/jira/browse/SPARK-4973) | *Major* | **Local directory in the driver of client-mode continues remaining even if application finished when external shuffle is enabled**

When we enables external shuffle service, local directories in the driver of client-mode continue remaining even if application has finished.
I think local directories for drivers should be deleted.


---

* [SPARK-4972](https://issues.apache.org/jira/browse/SPARK-4972) | *Major* | **Updated the scala doc for lasso and ridge regression for the change of LeastSquaresGradient**

In #SPARK-4907, we added factor of 2 into the LeastSquaresGradient. We updated the scala doc for lasso and ridge regression here.


---

* [SPARK-4969](https://issues.apache.org/jira/browse/SPARK-4969) | *Minor* | **Add binaryRecords support to streaming**

As of Spark 1.2 there is support for loading fixed length records from flat binary files. This is a useful way to load dense numerical array data into Spark, especially in scientific computing applications.

We should add support for loading this same file type in Spark Streaming, both in Scala/Java and in Python.


---

* [SPARK-4968](https://issues.apache.org/jira/browse/SPARK-4968) | *Major* | **[SparkSQL] java.lang.UnsupportedOperationException when hive partition doesn't exist and order by and limit are used**

Create table with partitions
run query for partition which doesn't exist and contains order by and limit

I am running queries in hiveContext

1. Create hive table
{code}
create table if not exists testTable (ID1 BIGINT, ID2 BIGINT,Start\_Time STRING, End\_Time STRING) PARTITIONED BY (Region STRING,Market STRING)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;
{code}

2. Create data
{code}
1,2,"2014-11-01","2014-11-02"
2,3,"2014-11-01","2014-11-02"
3,4,"2014-11-01","2014-11-02"
{code}

3. Load data in hive
{code}
LOAD DATA LOCAL INPATH '/tmp/input.txt' OVERWRITE INTO TABLE testTable PARTITION (Region="North", market='market1');
{code}

4. run query
{code}
SELECT * FROM testTable WHERE market = 'market2' ORDER BY End\_Time DESC LIMIT 100;


Error trace
java.lang.UnsupportedOperationException: empty collection
	at org.apache.spark.rdd.RDD$$anonfun$reduce$1.apply(RDD.scala:863)
	at org.apache.spark.rdd.RDD$$anonfun$reduce$1.apply(RDD.scala:863)
	at scala.Option.getOrElse(Option.scala:120)
	at org.apache.spark.rdd.RDD.reduce(RDD.scala:863)
	at org.apache.spark.rdd.RDD.takeOrdered(RDD.scala:1136)
	at org.apache.spark.sql.execution.TakeOrdered.executeCollect(basicOperators.scala:171)
	at org.apache.spark.sql.SchemaRDD.collect(SchemaRDD.scala:438)
{code}


---

* [SPARK-4966](https://issues.apache.org/jira/browse/SPARK-4966) | *Major* | **The MemoryOverhead value is not correct**

The value of amMemory and executorMemory is changed in parseArgs method. But the amMemoryOverhead and executorMemoryOverhead are setted before i. So the MemoryOverhead will not changed if amMemory changed, also “math.max” has no meaning.


---

* [SPARK-4964](https://issues.apache.org/jira/browse/SPARK-4964) | *Major* | **Exactly-once + WAL-free Kafka Support in Spark Streaming**

There are two issues with the current Kafka support 
 - Use of Write Ahead Logs in Spark Streaming to ensure no data is lost - Causes data replication in both Kafka AND Spark Streaming. 
 - Lack of exactly-once semantics - For background, see http://apache-spark-developers-list.1001551.n3.nabble.com/Which-committers-care-about-Kafka-td9827.html

We want to solve both these problem in JIRA. Please see the following design doc for the solution. 
https://docs.google.com/a/databricks.com/document/d/1IuvZhg9cOueTf1mq4qwc1fhPb5FVcaRLcyjrtG4XU1k/edit#heading=h.itproy77j3p


---

* [SPARK-4963](https://issues.apache.org/jira/browse/SPARK-4963) | *Major* | **SchemaRDD.sample may return wrong results**

This {{sbt/sbt hive/console}} session can easily reproduce this issue:
{code}
sql("SELECT * FROM src WHERE key % 2 = 0").
  sample(withReplacement = false, fraction = 0.05).
  registerTempTable("sampled")

println(table("sampled").queryExecution)

val query = sql("SELECT * FROM sampled WHERE key % 2 = 1")
println(query.queryExecution)

// Should print `true'
println((1 to 10).map(\_ => query.collect().isEmpty).reduce(\_ && \_))
{code}
Notice that when fraction is less than 0.4, {{GapSamplingIterator}} is used to do the sampling. My guess is that there’s something to do with the underlying mutable row objects used in {{HiveTableScan}}, but haven't figured out the root cause.


---

* [SPARK-4959](https://issues.apache.org/jira/browse/SPARK-4959) | *Blocker* | **Attributes are case sensitive when using a select query from a projection**

Per [~marmbrus], see this line of code, where we should be using an attribute map
 https://github.com/apache/spark/blob/master/sql/catalyst/src/main/scala/org/apache/spark/sql/catalyst/optimizer/Optimizer.scala#L147

To reproduce, i ran the following in the Spark shell:

{code}
import sqlContext.\_
sql("drop table if exists test")
sql("create table test (col1 string)")
sql("""insert into table test select "hi" from prejoined limit 1""")
val projection = "col1".attr.as(Symbol("CaseSensitiveColName")) :: "col1".attr.as(Symbol("CaseSensitiveColName2")) :: Nil
sqlContext.table("test").select(projection:\_*).registerTempTable("test2")

# This succeeds.
sql("select CaseSensitiveColName from test2").first()

# This fails with java.util.NoSuchElementException: key not found: casesensitivecolname#23046
sql("select casesensitivecolname from test2").first()
{code}

The full stack trace printed for the final command that is failing: 
{code}
java.util.NoSuchElementException: key not found: casesensitivecolname#23046
	at scala.collection.MapLike$class.default(MapLike.scala:228)
	at org.apache.spark.sql.catalyst.expressions.AttributeMap.default(AttributeMap.scala:29)
	at scala.collection.MapLike$class.apply(MapLike.scala:141)
	at org.apache.spark.sql.catalyst.expressions.AttributeMap.apply(AttributeMap.scala:29)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
	at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
	at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
	at scala.collection.AbstractTraversable.map(Traversable.scala:105)
	at org.apache.spark.sql.hive.execution.HiveTableScan.<init>(HiveTableScan.scala:57)
	at org.apache.spark.sql.hive.HiveStrategies$HiveTableScans$$anonfun$14.apply(HiveStrategies.scala:221)
	at org.apache.spark.sql.hive.HiveStrategies$HiveTableScans$$anonfun$14.apply(HiveStrategies.scala:221)
	at org.apache.spark.sql.SQLContext$SparkPlanner.pruneFilterProject(SQLContext.scala:378)
	at org.apache.spark.sql.hive.HiveStrategies$HiveTableScans$.apply(HiveStrategies.scala:217)
	at org.apache.spark.sql.catalyst.planning.QueryPlanner$$anonfun$1.apply(QueryPlanner.scala:58)
	at org.apache.spark.sql.catalyst.planning.QueryPlanner$$anonfun$1.apply(QueryPlanner.scala:58)
	at scala.collection.Iterator$$anon$13.hasNext(Iterator.scala:371)
	at org.apache.spark.sql.catalyst.planning.QueryPlanner.apply(QueryPlanner.scala:59)
	at org.apache.spark.sql.catalyst.planning.QueryPlanner.planLater(QueryPlanner.scala:54)
	at org.apache.spark.sql.execution.SparkStrategies$BasicOperators$.apply(SparkStrategies.scala:285)
	at org.apache.spark.sql.catalyst.planning.QueryPlanner$$anonfun$1.apply(QueryPlanner.scala:58)
	at org.apache.spark.sql.catalyst.planning.QueryPlanner$$anonfun$1.apply(QueryPlanner.scala:58)
	at scala.collection.Iterator$$anon$13.hasNext(Iterator.scala:371)
	at org.apache.spark.sql.catalyst.planning.QueryPlanner.apply(QueryPlanner.scala:59)
	at org.apache.spark.sql.SQLContext$QueryExecution.sparkPlan$lzycompute(SQLContext.scala:418)
	at org.apache.spark.sql.SQLContext$QueryExecution.sparkPlan(SQLContext.scala:416)
	at org.apache.spark.sql.SQLContext$QueryExecution.executedPlan$lzycompute(SQLContext.scala:422)
	at org.apache.spark.sql.SQLContext$QueryExecution.executedPlan(SQLContext.scala:422)
	at org.apache.spark.sql.SchemaRDD.collect(SchemaRDD.scala:444)
	at org.apache.spark.sql.SchemaRDD.take(SchemaRDD.scala:446)
	at org.apache.spark.sql.SchemaRDD.take(SchemaRDD.scala:108)
	at org.apache.spark.rdd.RDD.first(RDD.scala:1093)
{code}


---

* [SPARK-4955](https://issues.apache.org/jira/browse/SPARK-4955) | *Blocker* | **Dynamic allocation doesn't work in YARN cluster mode**

With executor dynamic scaling enabled, in yarn-cluster mode, after query finished and spark.dynamicAllocation.executorIdleTimeout interval, executor number is not reduced to configured min number.


---

* [SPARK-4954](https://issues.apache.org/jira/browse/SPARK-4954) | *Minor* | **Add spark version information in log for standalone mode**

This is a following JIRA for [SPARK-4870|https://issues.apache.org/jira/browse/SPARK-4870]. The master and worker spark version may be not the same with Driver spark version. That is because spark Jar file might be replaced for new application without restarting the spark cluster.


---

* [SPARK-4953](https://issues.apache.org/jira/browse/SPARK-4953) | *Major* | **Fix the description of building Spark with YARN**

At the section "Specifying the Hadoop Version" In building-spark.md, there is description about building with YARN with Hadoop 0.23.
Spark 1.3.0 will not support Hadoop 0.23 so we should fix the description.


---

* [SPARK-4952](https://issues.apache.org/jira/browse/SPARK-4952) | *Major* | **Handle ConcurrentModificationExceptions in SparkEnv.environmentDetails**

the log:
{noformat}
Exception in thread "main" 14/12/24 12:00:25 INFO cluster.YarnClientSchedulerBackend: Add WebUI Filter. org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter, Map(PROXY\_HOSTS -> tuan200, PROXY\_URI\_BASES -> http://host:9082/proxy/application\_1414231702825\_488625), /proxy/application\_1414231702825\_488625
java.util.ConcurrentModificationException
        at java.util.Hashtable$Enumerator.next(Hashtable.java:1167)
        at scala.collection.convert.Wrappers$JPropertiesWrapper$$anon$3.next(Wrappers.scala:458)
        at scala.collection.convert.Wrappers$JPropertiesWrapper$$anon$3.next(Wrappers.scala:454)
        at scala.collection.Iterator$class.toStream(Iterator.scala:1143)
        at scala.collection.AbstractIterator.toStream(Iterator.scala:1157)
        at scala.collection.Iterator$$anonfun$toStream$1.apply(Iterator.scala:1143)
        at scala.collection.Iterator$$anonfun$toStream$1.apply(Iterator.scala:1143)
        at scala.collection.immutable.Stream$Cons.tail(Stream.scala:1085)
        at scala.collection.immutable.Stream$Cons.tail(Stream.scala:1077)
        at scala.collection.immutable.Stream$$anonfun$filteredTail$1.apply(Stream.scala:1149)
        at scala.collection.immutable.Stream$$anonfun$filteredTail$1.apply(Stream.scala:1149)
        at scala.collection.immutable.Stream$Cons.tail(Stream.scala:1085)
        at scala.collection.immutable.Stream$Cons.tail(Stream.scala:1077)
        at scala.collection.immutable.Stream.length(Stream.scala:284)
        at scala.collection.SeqLike$class.sorted(SeqLike.scala:608)
        at scala.collection.AbstractSeq.sorted(Seq.scala:40)
        at org.apache.spark.SparkEnv$.environmentDetails(SparkEnv.scala:324)
        at org.apache.spark.SparkContext.postEnvironmentUpdate(SparkContext.scala:1319)
        at org.apache.spark.SparkContext.<init>(SparkContext.scala:344)
        at com.zhe800.toona.als.computation.DealCF$.main(DealCF.scala:497)
        at com.zhe800.toona.als.computation.DealCF.main(DealCF.scala)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:606)
        at org.apache.spark.deploy.SparkSubmit$.launch(SparkSubmit.scala:329)
        at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:75)
        at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)
14/12/24 12:00:25 INFO ui.JettyUtils: Adding filter: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
{noformat}


---

* [SPARK-4951](https://issues.apache.org/jira/browse/SPARK-4951) | *Major* | **A busy executor may be killed when dynamicAllocation is enabled**

If a task runs more than `spark.dynamicAllocation.executorIdleTimeout`, the executor which runs this task will be killed.

The following steps (yarn-client mode) can reproduce this bug:
1. Start `spark-shell` using
{code}
./bin/spark-shell --conf "spark.shuffle.service.enabled=true" \
    --conf "spark.dynamicAllocation.minExecutors=1" \
    --conf "spark.dynamicAllocation.maxExecutors=4" \
    --conf "spark.dynamicAllocation.enabled=true" \
    --conf "spark.dynamicAllocation.executorIdleTimeout=30" \
    --master yarn-client \
    --driver-memory 512m \
    --executor-memory 512m \
    --executor-cores 1
{code}

2. Wait more than 30 seconds until there is only one executor.
3. Run the following code (a task needs at least 50 seconds to finish)
{code}
val r = sc.parallelize(1 to 1000, 20).map{t => Thread.sleep(1000); t}.groupBy(\_ % 2).collect()
{code}
4. Executors will be killed and allocated all the time, which makes the Job fail.


---

* [SPARK-4948](https://issues.apache.org/jira/browse/SPARK-4948) | *Minor* | **Use pssh instead of bash-isms and remove unnecessary operations**

Remove unnecessarily high sleep times in {{setup.sh}}, as well as unnecessary SSH calls to pre-approve keys.

Replace bash-isms like {{while ... command ... & wait}} with {{pssh}}.


---

* [SPARK-4946](https://issues.apache.org/jira/browse/SPARK-4946) | *Minor* | **Using AkkaUtils.askWithReply in MapOutputTracker.askTracker to reduce the chance of the communicating problem**

Using AkkaUtils.askWithReply in MapOutputTracker.askTracker to reduce the chance of the communicating problem.


---

* [SPARK-4943](https://issues.apache.org/jira/browse/SPARK-4943) | *Major* | **Parsing error for query with table name having dot**

When integrating Spark 1.2.0 with Cassandra SQL, the following query is broken. It was working for Spark 1.1.0 version. Basically we use the table name having dot to include database name 

{code}
[info]   java.lang.RuntimeException: [1.29] failure: ``UNION'' expected but `.' found
[info] 

[info] SELECT test1.a FROM sql\_test.test1 AS test1 UNION DISTINCT SELECT test2.a FROM sql\_test.test2 AS test2
[info]                             ^
[info]   at scala.sys.package$.error(package.scala:27)
[info]   at org.apache.spark.sql.catalyst.AbstractSparkSQLParser.apply(SparkSQLParser.scala:33)
[info]   at org.apache.spark.sql.SQLContext$$anonfun$1.apply(SQLContext.scala:79)
[info]   at org.apache.spark.sql.SQLContext$$anonfun$1.apply(SQLContext.scala:79)
[info]   at org.apache.spark.sql.catalyst.SparkSQLParser$$anonfun$org$apache$spark$sql$catalyst$SparkSQLParser$$others$1.apply(SparkSQLParser.scala:174)
[info]   at org.apache.spark.sql.catalyst.SparkSQLParser$$anonfun$org$apache$spark$sql$catalyst$SparkSQLParser$$others$1.apply(SparkSQLParser.scala:173)
[info]   at scala.util.parsing.combinator.Parsers$Success.map(Parsers.scala:136)
[info]   at scala.util.parsing.combinator.Parsers$Success.map(Parsers.scala:135)
[info]   at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:242)
[info]   at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:242)
[info]   at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:222)
[info]   at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1$$anonfun$apply$2.apply(Parsers.scala:254)
[info]   at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1$$anonfun$apply$2.apply(Parsers.scala:254)
[info]   at scala.util.parsing.combinator.Parsers$Failure.append(Parsers.scala:202)
[info]   at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:254)
[info]   at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:254)
[info]   at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:222)
[info]   at scala.util.parsing.combinator.Parsers$$anon$2$$anonfun$apply$14.apply(Parsers.scala:891)
[info]   at scala.util.parsing.combinator.Parsers$$anon$2$$anonfun$apply$14.apply(Parsers.scala:891)
[info]   at scala.util.DynamicVariable.withValue(DynamicVariable.scala:57)
[info]   at scala.util.parsing.combinator.Parsers$$anon$2.apply(Parsers.scala:890)
[info]   at scala.util.parsing.combinator.PackratParsers$$anon$1.apply(PackratParsers.scala:110)
[info]   at org.apache.spark.sql.catalyst.AbstractSparkSQLParser.apply(SparkSQLParser.scala:31)
[info]   at org.apache.spark.sql.SQLContext$$anonfun$parseSql$1.apply(SQLContext.scala:83)
[info]   at org.apache.spark.sql.SQLContext$$anonfun$parseSql$1.apply(SQLContext.scala:83)
[info]   at scala.Option.getOrElse(Option.scala:120)
[info]   at org.apache.spark.sql.SQLContext.parseSql(SQLContext.scala:83)
[info]   at org.apache.spark.sql.cassandra.CassandraSQLContext.cassandraSql(CassandraSQLContext.scala:53)
[info]   at org.apache.spark.sql.cassandra.CassandraSQLContext.sql(CassandraSQLContext.scala:56)
[info]   at com.datastax.spark.connector.sql.CassandraSQLSpec$$anonfun$20.apply$mcV$sp(CassandraSQLSpec.scala:169)
[info]   at com.datastax.spark.connector.sql.CassandraSQLSpec$$anonfun$20.apply(CassandraSQLSpec.scala:168)
[info]   at com.datastax.spark.connector.sql.CassandraSQLSpec$$anonfun$20.apply(CassandraSQLSpec.scala:168)
[info]   at org.scalatest.Transformer$$anonfun$apply$1.apply$mcV$sp(Transformer.scala:22)
[info]   at org.scalatest.OutcomeOf$class.outcomeOf(OutcomeOf.scala:85)
[info]   at org.scalatest.OutcomeOf$.outcomeOf(OutcomeOf.scala:104)
[info]   at org.scalatest.Transformer.apply(Transformer.scala:22)
[info]   at org.scalatest.Transformer.apply(Transformer.scala:20)
[info]   at org.scalatest.FlatSpecLike$$anon$1.apply(FlatSpecLike.scala:1647)
[info]   at org.scalatest.Suite$class.withFixture(Suite.scala:1122)
[info]   at org.scalatest.FlatSpec.withFixture(FlatSpec.scala:1683)
[info]   at org.scalatest.FlatSpecLike$class.invokeWithFixture$1(FlatSpecLike.scala:1644)
[info]   at org.scalatest.FlatSpecLike$$anonfun$runTest$1.apply(FlatSpecLike.scala:1656)
[info]   at org.scalatest.FlatSpecLike$$anonfun$runTest$1.apply(FlatSpecLike.scala:1656)
[info]   at org.scalatest.SuperEngine.runTestImpl(Engine.scala:306)
[info]   at org.scalatest.FlatSpecLike$class.runTest(FlatSpecLike.scala:1656)
[info]   at org.scalatest.FlatSpec.runTest(FlatSpec.scala:1683)
[info]   at org.scalatest.FlatSpecLike$$anonfun$runTests$1.apply(FlatSpecLike.scala:1714)
[info]   at org.scalatest.FlatSpecLike$$anonfun$runTests$1.apply(FlatSpecLike.scala:1714)
[info]   at org.scalatest.SuperEngine$$anonfun$traverseSubNodes$1$1.apply(Engine.scala:413)
[info]   at org.scalatest.SuperEngine$$anonfun$traverseSubNodes$1$1.apply(Engine.scala:401)
[info]   at scala.collection.immutable.List.foreach(List.scala:318)
[info]   at org.scalatest.SuperEngine.traverseSubNodes$1(Engine.scala:401)
[info]   at org.scalatest.SuperEngine.org$scalatest$SuperEngine$$runTestsInBranch(Engine.scala:396)
[info]   at org.scalatest.SuperEngine.runTestsImpl(Engine.scala:483)
[info]   at org.scalatest.FlatSpecLike$class.runTests(FlatSpecLike.scala:1714)
[info]   at org.scalatest.FlatSpec.runTests(FlatSpec.scala:1683)
[info]   at org.scalatest.Suite$class.run(Suite.scala:1424)
[info]   at org.scalatest.FlatSpec.org$scalatest$FlatSpecLike$$super$run(FlatSpec.scala:1683)
[info]   at org.scalatest.FlatSpecLike$$anonfun$run$1.apply(FlatSpecLike.scala:1760)
[info]   at org.scalatest.FlatSpecLike$$anonfun$run$1.apply(FlatSpecLike.scala:1760)
[info]   at org.scalatest.SuperEngine.runImpl(Engine.scala:545)
[info]   at org.scalatest.FlatSpecLike$class.run(FlatSpecLike.scala:1760)
[info]   at org.scalatest.FlatSpec.run(FlatSpec.scala:1683)
[info]   at org.scalatest.tools.Framework.org$scalatest$tools$Framework$$runSuite(Framework.scala:466)
[info]   at org.scalatest.tools.Framework$ScalaTestTask.execute(Framework.scala:677)
[info]   at sbt.ForkMain$Run$2.call(ForkMain.java:294)
[info]   at sbt.ForkMain$Run$2.call(ForkMain.java:284)
[info]   at java.util.concurrent.FutureTask.run(FutureTask.java:262)
[info]   at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
[info]   at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
[info]   at java.lang.Thread.run(Thread.java:745)
[info] - should allow to select rows with union distinct clause *** FAILED *** (46 milliseconds)
[info]   java.lang.RuntimeException: [1.29] failure: ``UNION'' expected but `.' found
{code}


---

* [SPARK-4942](https://issues.apache.org/jira/browse/SPARK-4942) | *Major* | **ML Transformers should allow output cols to be turned on,off**

ML Transformers will eventually output multiple columns (e.g., predicted labels, predicted confidences, probabilities, etc.).  These columns should be optional.

Benefits:
* more efficient (though Spark SQL may be able to optimize)
* cleaner column namespace if people do not want all output columns

Proposal:
* If a column name parameter (e.g., predictionCol) is an empty string, then do not output that column.

This will require updating validateAndTransformSchema() to ignore empty output column names in addition to updating transform().


---

* [SPARK-4937](https://issues.apache.org/jira/browse/SPARK-4937) | *Major* | **Adding optimization to simplify the filter condition**

Adding optimization to simplify the filter condition:
1  condition that can get the boolean result such as:
{code}
a < 3 && a > 5     ----  False
a < 1 || a > 0        ---- True
{code}

2 Simplify And, Or condition, such as the sql (one of hive-testbench):
{code}
select
    sum(l\_extendedprice* (1 - l\_discount)) as revenue
from
    lineitem,
    part
where
    (
        p\_partkey = l\_partkey
        and p\_brand = 'Brand#32'
        and p\_container in ('SM CASE', 'SM BOX', 'SM PACK', 'SM PKG')
        and l\_quantity >= 7 and l\_quantity <= 7 + 10
        and p\_size between 1 and 5
        and l\_shipmode in ('AIR', 'AIR REG')
        and l\_shipinstruct = 'DELIVER IN PERSON'
    )
    or
    (
        p\_partkey = l\_partkey
        and p\_brand = 'Brand#35'
        and p\_container in ('MED BAG', 'MED BOX', 'MED PKG', 'MED PACK')
        and l\_quantity >= 15 and l\_quantity <= 15 + 10
        and p\_size between 1 and 10
        and l\_shipmode in ('AIR', 'AIR REG')
        and l\_shipinstruct = 'DELIVER IN PERSON'
    )
    or
    (
        p\_partkey = l\_partkey
        and p\_brand = 'Brand#24'
        and p\_container in ('LG CASE', 'LG BOX', 'LG PACK', 'LG PKG')
        and l\_quantity >= 26 and l\_quantity <= 26 + 10
        and p\_size between 1 and 15
        and l\_shipmode in ('AIR', 'AIR REG')
        and l\_shipinstruct = 'DELIVER IN PERSON'
    );
{code}
 Before optimized it is a CartesianProduct, in my locally test this sql hang and can not get result, after optimization the CartesianProduct replaced by ShuffledHashJoin, which only need 20+ seconds to run this sql.


---

* [SPARK-4935](https://issues.apache.org/jira/browse/SPARK-4935) | *Major* | **When hive.cli.print.header configured, spark-sql aborted if passed in a invalid sql**

When hive.cli.print.header configured, spark-sql aborted if passed in a invalid sql


---

* [SPARK-4932](https://issues.apache.org/jira/browse/SPARK-4932) | *Trivial* | **Add help comments in Analytics**

Add help comments for taskType in Analytics.


---

* [SPARK-4931](https://issues.apache.org/jira/browse/SPARK-4931) | *Trivial* | **Fix the messy format about log4j in running-on-yarn.md**

The format about log4j in running-on-yarn.md is a bit messy.


---

* [SPARK-4930](https://issues.apache.org/jira/browse/SPARK-4930) | *Trivial* | **[SQL][DOCS]Update SQL programming guide**

`CACHE TABLE tbl` is now eager by default not lazy


---

* [SPARK-4929](https://issues.apache.org/jira/browse/SPARK-4929) | *Major* | **Yarn Client mode can not support the HA after the exitcode change**

Nowadays, yarn-client will exit directly when the HA change happens no matter how many times the am should retry.


---

* [SPARK-4928](https://issues.apache.org/jira/browse/SPARK-4928) | *Major* | **Operator "\>,\<,\>=,\<=" with decimal between different precision report error**

create table test (a Decimal(10,1));
select * from test where a>1;

WARN TaskSetManager: Lost task 0.0 in stage 0.0 (TID 0, localhost): org.apache.spark.sql.catalyst.errors.package$TreeNodeException: Types do not match DecimalType(10,1) != DecimalType(10,0), tree: (input[0] > 1)
	at org.apache.spark.sql.catalyst.expressions.Expression.c2(Expression.scala:249)
	at org.apache.spark.sql.catalyst.expressions.GreaterThan.eval(predicates.scala:204)
	at org.apache.spark.sql.catalyst.expressions.InterpretedPredicate$$anonfun$apply$1.apply(predicates.scala:30)
	at org.apache.spark.sql.catalyst.expressions.InterpretedPredicate$$anonfun$apply$1.apply(predicates.scala:30)
	at scala.collection.Iterator$$anon$14.hasNext(Iterator.scala:390)
	at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
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
	at org.apache.spark.rdd.RDD$$anonfun$16.apply(RDD.scala:794)
	at org.apache.spark.rdd.RDD$$anonfun$16.apply(RDD.scala:794)
	at org.apache.spark.SparkContext$$anonfun$runJob$4.apply(SparkContext.scala:1324)
	at org.apache.spark.SparkContext$$anonfun$runJob$4.apply(SparkContext.scala:1324)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:61)
	at org.apache.spark.scheduler.Task.run(Task.scala:56)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:195)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:744)


---

* [SPARK-4923](https://issues.apache.org/jira/browse/SPARK-4923) | *Critical* | **Add Developer API to REPL to allow re-publishing the REPL jar**

Spark-repl installation and deployment has been discontinued (see SPARK-3452). But its in the dependency list of a few projects that extends its initialization process.
Please remove the 'skip' setting in spark-repl and make it an 'official' API to encourage more platform to integrate with it.


---

* [SPARK-4918](https://issues.apache.org/jira/browse/SPARK-4918) | *Minor* | **Reuse Text in saveAsTextFile**

When code reviewing https://github.com/apache/spark/pull/3740, [~rxin] pointed out that we could reuse the Hadoop Text object in saveAsTextFile to reduce GC impact.


---

* [SPARK-4917](https://issues.apache.org/jira/browse/SPARK-4917) | *Minor* | **Add a function to convert into a graph with canonical edges in GraphOps**

Convert bi-directional edges into uni-directional ones instead of 'canonicalOrientation' in GraphLoader.edgeListFile.
This function is useful when a graph is loaded as it is and then is transformed into one with canonical edges.
It rewrites the vertex ids of edges so that srcIds are bigger than dstIds, and merges the duplicated edges.


---

* [SPARK-4916](https://issues.apache.org/jira/browse/SPARK-4916) | *Trivial* | **[SQL][DOCS]Update SQL programming guide about cache section**

SchemeRDD.cache() now uses in-memory columnar storage.


---

* [SPARK-4915](https://issues.apache.org/jira/browse/SPARK-4915) | *Major* | **Wrong classname of external shuffle service in the doc for dynamic allocation**

docs/job-scheduling.md says as follows:
{quote}
To enable this service, set `spark.shuffle.service.enabled` to `true`. In YARN, this external shuffle service is implemented in `org.apache.spark.yarn.network.YarnShuffleService` that runs in each `NodeManager` in your cluster. 
{quote}

The class name org.apache.spark.yarn.network.YarnShuffleService is wrong. org.apache.spark.network.yarn.YarnShuffleService is correct class name to be specified.


---

* [SPARK-4914](https://issues.apache.org/jira/browse/SPARK-4914) | *Minor* | **Two sets of datanucleus versions left in lib\_managed after running dev/run-tests**

The {{dev/run-tests}} script first does a clean compile with Hive 0.12.0, and then builds assembly jar for unit testing with Hive 0.13.1 *without* cleaning. This left two sets of datanucleus jars under the {{lib\_managed}} folder, one set depended by Hive 0.12.0, another by Hive 0.13.1.

This behavior sometimes messes up class paths and makes {{CliSuite}} and {{HiveThriftServer2Suite}} fail, because these two suites spawn external processes that depends on those datanucleus jars.


---

* [SPARK-4913](https://issues.apache.org/jira/browse/SPARK-4913) | *Major* | **Fix incorrect event log path**

SPARK-2261 uses a single file to log events for an app. `eventLogDir` in `ApplicationDescription` is replaced with `eventLogFile`. However, `ApplicationDescription` in `SparkDeploySchedulerBackend` is initialized with `SparkContext`'s `eventLogDir`. It is just the log directory, not the actual log file path. `Master.rebuildSparkUI` can not correctly rebuild a new SparkUI for the app.

Because the `ApplicationDescription` is remotely registered with `Master` and the app's id is then generated in `Master`, we can not get the app id in advance before registration. So the received description needs to be modified with correct `eventLogFile` value.


---

* [SPARK-4912](https://issues.apache.org/jira/browse/SPARK-4912) | *Blocker* | **Persistent data source tables**

It would be good if tables created through the new data sources api could be persisted to the hive metastore.


---

* [SPARK-4910](https://issues.apache.org/jira/browse/SPARK-4910) | *Minor* | **Build failed with Hadoop 1.x profile: "isFile is not a member of org.apache.hadoop.fs.FileStatus"**

git clone
mvn  -DskipTests clean package

....
[ERROR] /home/x/sources/spark\_git/core/src/test/scala/org/apache/spark/scheduler/EventLoggingListenerSuite.scala:68: value isFile is not a member of org.apache.hadoop.fs.FileStatus
[ERROR]     assert(logStatus.isFile)
[ERROR]                      ^
[ERROR] /home/x/sources/spark\_git/core/src/test/scala/org/apache/spark/scheduler/EventLoggingListenerSuite.scala:72: value isFile is not a member of org.apache.hadoop.fs.FileStatus
[ERROR]     assert(fileSystem.getFileStatus(new Path(eventLogger.logPath)).isFile())
[ERROR]                                                                    ^
[ERROR] /home/x/sources/spark\_git/core/src/test/scala/org/apache/spark/scheduler/ReplayListenerSuite.scala:115: value isFile is not a member of org.apache.hadoop.fs.FileStatus
[ERROR]     assert(eventLog.isFile)
[ERROR]                     ^
[ERROR] three errors found
[DEBUG] Compilation failed (CompilerInterface)
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary:
[INFO]
[INFO] Spark Project Parent POM ........................... SUCCESS [ 13.440 s]
[INFO] Spark Project Networking ........................... SUCCESS [ 23.752 s]
[INFO] Spark Project Shuffle Streaming Service ............ SUCCESS [ 18.842 s]
[INFO] Spark Project Core ................................. FAILURE [06:34 min]
[INFO] Spark Project Bagel ................................ SKIPPED
[INFO] Spark Project GraphX ............................... SKIPPED
[INFO] Spark Project Streaming ............................ SKIPPED
[INFO] Spark Project Catalyst ............................. SKIPPED
[INFO] Spark Project SQL .................................. SKIPPED
[INFO] Spark Project ML Library ........................... SKIPPED
[INFO] Spark Project Tools ................................ SKIPPED
[INFO] Spark Project Hive ................................. SKIPPED

even switch -DskipTests was provided it seems some tests are executed and failed


---

* [SPARK-4908](https://issues.apache.org/jira/browse/SPARK-4908) | *Blocker* | **Spark SQL built for Hive 13 fails under concurrent metadata queries**

We are trunk: {{1.3.0-SNAPSHOT}}, as of this commit: 
https://github.com/apache/spark/commit/3d0c37b8118f6057a663f959321a79b8061132b6

We are using Spark built for Hive 13, using this option:
{{-Phive-0.13.1}}

In single-threaded mode, normal operations look fine. However, under concurrency, with at least 2 concurrent connections, metadata queries fail.

For example, {{USE some\_db}}, {{SHOW TABLES}}, and the implicit {{USE}} statement when you pass a default schema in the JDBC URL, all fail.

{{SELECT}} queries like {{SELECT * FROM some\_table}} do not have this issue.

Here is some example code:

{code}
object main extends App {
  import java.sql.\_
  import scala.concurrent.\_
  import scala.concurrent.duration.\_
  import scala.concurrent.ExecutionContext.Implicits.global

  Class.forName("org.apache.hive.jdbc.HiveDriver")

  val host = "localhost" // update this
  val url = s"jdbc:hive2://${host}:10511/some\_db" // update this

  val future = Future.traverse(1 to 3) { i =>
    Future {
      println("Starting: " + i)
      try {
        val conn = DriverManager.getConnection(url)
      } catch {
        case e: Throwable => e.printStackTrace()
        println("Failed: " + i)
      }
      println("Finishing: " + i)
    }
  }

  Await.result(future, 2.minutes)

  println("done!")
}
{code}

Here is the output:

{code}
Starting: 1
Starting: 3
Starting: 2
java.sql.SQLException: org.apache.spark.sql.execution.QueryExecutionException: FAILED: Operation cancelled
	at org.apache.hive.jdbc.Utils.verifySuccess(Utils.java:121)
	at org.apache.hive.jdbc.Utils.verifySuccessWithInfo(Utils.java:109)
	at org.apache.hive.jdbc.HiveStatement.execute(HiveStatement.java:231)
	at org.apache.hive.jdbc.HiveConnection.configureConnection(HiveConnection.java:451)
	at org.apache.hive.jdbc.HiveConnection.<init>(HiveConnection.java:195)
	at org.apache.hive.jdbc.HiveDriver.connect(HiveDriver.java:105)
	at java.sql.DriverManager.getConnection(DriverManager.java:664)
	at java.sql.DriverManager.getConnection(DriverManager.java:270)
	at com.atscale.engine.connection.pool.main$$anonfun$30$$anonfun$apply$2.apply$mcV$sp(ConnectionManager.scala:896)
	at com.atscale.engine.connection.pool.main$$anonfun$30$$anonfun$apply$2.apply(ConnectionManager.scala:893)
	at com.atscale.engine.connection.pool.main$$anonfun$30$$anonfun$apply$2.apply(ConnectionManager.scala:893)
	at scala.concurrent.impl.Future$PromiseCompletingRunnable.liftedTree1$1(Future.scala:24)
	at scala.concurrent.impl.Future$PromiseCompletingRunnable.run(Future.scala:24)
	at scala.concurrent.impl.ExecutionContextImpl$AdaptedForkJoinTask.exec(ExecutionContextImpl.scala:121)
	at scala.concurrent.forkjoin.ForkJoinTask.doExec(ForkJoinTask.java:260)
	at scala.concurrent.forkjoin.ForkJoinPool$WorkQueue.runTask(ForkJoinPool.java:1339)
	at scala.concurrent.forkjoin.ForkJoinPool.runWorker(ForkJoinPool.java:1979)
	at scala.concurrent.forkjoin.ForkJoinWorkerThread.run(ForkJoinWorkerThread.java:107)
Failed: 3
Finishing: 3
java.sql.SQLException: org.apache.spark.sql.execution.QueryExecutionException: FAILED: Operation cancelled
	at org.apache.hive.jdbc.Utils.verifySuccess(Utils.java:121)
	at org.apache.hive.jdbc.Utils.verifySuccessWithInfo(Utils.java:109)
	at org.apache.hive.jdbc.HiveStatement.execute(HiveStatement.java:231)
	at org.apache.hive.jdbc.HiveConnection.configureConnection(HiveConnection.java:451)
	at org.apache.hive.jdbc.HiveConnection.<init>(HiveConnection.java:195)
	at org.apache.hive.jdbc.HiveDriver.connect(HiveDriver.java:105)
	at java.sql.DriverManager.getConnection(DriverManager.java:664)
	at java.sql.DriverManager.getConnection(DriverManager.java:270)
	at com.atscale.engine.connection.pool.main$$anonfun$30$$anonfun$apply$2.apply$mcV$sp(ConnectionManager.scala:896)
	at com.atscale.engine.connection.pool.main$$anonfun$30$$anonfun$apply$2.apply(ConnectionManager.scala:893)
	at com.atscale.engine.connection.pool.main$$anonfun$30$$anonfun$apply$2.apply(ConnectionManager.scala:893)
	at scala.concurrent.impl.Future$PromiseCompletingRunnable.liftedTree1$1(Future.scala:24)
	at scala.concurrent.impl.Future$PromiseCompletingRunnable.run(Future.scala:24)
	at scala.concurrent.impl.ExecutionContextImpl$AdaptedForkJoinTask.exec(ExecutionContextImpl.scala:121)
	at scala.concurrent.forkjoin.ForkJoinTask.doExec(ForkJoinTask.java:260)
	at scala.concurrent.forkjoin.ForkJoinPool$WorkQueue.runTask(ForkJoinPool.java:1339)
	at scala.concurrent.forkjoin.ForkJoinPool.runWorker(ForkJoinPool.java:1979)
	at scala.concurrent.forkjoin.ForkJoinWorkerThread.run(ForkJoinWorkerThread.java:107)
Failed: 2
Finishing: 2
Finishing: 1
done!
{code}

Here are the errors from Spark Logs:
{code}
14/12/19 21:44:55 INFO thrift.ThriftCLIService: Client protocol version: HIVE\_CLI\_SERVICE\_PROTOCOL\_V6
14/12/19 21:44:55 INFO session.SessionState: No Tez session required at this point. hive.execution.engine=mr.
14/12/19 21:44:55 INFO session.SessionState: No Tez session required at this point. hive.execution.engine=mr.
14/12/19 21:44:55 INFO thriftserver.SparkExecuteStatementOperation: Running query 'use as\_adventure'
14/12/19 21:44:55 INFO parse.ParseDriver: Parsing command: use as\_adventure
14/12/19 21:44:55 INFO parse.ParseDriver: Parse Completed
14/12/19 21:44:55 INFO session.SessionState: No Tez session required at this point. hive.execution.engine=mr.
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=Driver.run from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=TimeToSubmit from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO ql.Driver: Concurrency mode is disabled, not creating a lock manager
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=compile from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=parse from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO parse.ParseDriver: Parsing command: use as\_adventure
14/12/19 21:44:55 INFO parse.ParseDriver: Parse Completed
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=parse start=1419025495084 end=1419025495084 duration=0 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=semanticAnalyze from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO ql.Driver: Semantic Analysis Completed
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=semanticAnalyze start=1419025495084 end=1419025495084 duration=0 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO ql.Driver: Returning Hive schema: Schema(fieldSchemas:null, properties:null)
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=compile start=1419025495084 end=1419025495085 duration=1 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=Driver.execute from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO ql.Driver: Starting command: use as\_adventure
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=TimeToSubmit start=1419025495084 end=1419025495085 duration=1 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=runTasks from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=task.DDL.Stage-0 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=runTasks start=1419025495085 end=1419025495098 duration=13 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=Driver.execute start=1419025495085 end=1419025495098 duration=13 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO ql.Driver: OK
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=releaseLocks from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=releaseLocks start=1419025495098 end=1419025495098 duration=0 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=Driver.run start=1419025495084 end=1419025495098 duration=14 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO thrift.ThriftCLIService: Client protocol version: HIVE\_CLI\_SERVICE\_PROTOCOL\_V6
14/12/19 21:44:55 INFO thrift.ThriftCLIService: Client protocol version: HIVE\_CLI\_SERVICE\_PROTOCOL\_V6
14/12/19 21:44:55 INFO session.SessionState: No Tez session required at this point. hive.execution.engine=mr.
14/12/19 21:44:55 INFO session.SessionState: No Tez session required at this point. hive.execution.engine=mr.
14/12/19 21:44:55 INFO session.SessionState: No Tez session required at this point. hive.execution.engine=mr.
14/12/19 21:44:55 INFO session.SessionState: No Tez session required at this point. hive.execution.engine=mr.
14/12/19 21:44:55 INFO thriftserver.SparkExecuteStatementOperation: Running query 'use as\_adventure'
14/12/19 21:44:55 INFO thriftserver.SparkExecuteStatementOperation: Running query 'use as\_adventure'
14/12/19 21:44:55 INFO thriftserver.SparkExecuteStatementOperation: Result Schema: List(result#274)
14/12/19 21:44:55 INFO parse.ParseDriver: Parsing command: use as\_adventure
14/12/19 21:44:55 INFO parse.ParseDriver: Parse Completed
14/12/19 21:44:55 INFO session.SessionState: No Tez session required at this point. hive.execution.engine=mr.
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=Driver.run from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=TimeToSubmit from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO ql.Driver: Concurrency mode is disabled, not creating a lock manager
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=compile from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=parse from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO parse.ParseDriver: Parsing command: use as\_adventure
14/12/19 21:44:55 INFO parse.ParseDriver: Parse Completed
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=parse start=1419025495165 end=1419025495165 duration=0 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=semanticAnalyze from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO ql.Driver: Semantic Analysis Completed
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=semanticAnalyze start=1419025495165 end=1419025495166 duration=1 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO ql.Driver: Returning Hive schema: Schema(fieldSchemas:null, properties:null)
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=compile start=1419025495165 end=1419025495166 duration=1 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=Driver.execute from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO ql.Driver: Starting command: use as\_adventure
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=TimeToSubmit start=1419025495165 end=1419025495166 duration=1 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=runTasks from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=task.DDL.Stage-0 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO parse.ParseDriver: Parsing command: use as\_adventure
14/12/19 21:44:55 INFO parse.ParseDriver: Parse Completed
14/12/19 21:44:55 INFO session.SessionState: No Tez session required at this point. hive.execution.engine=mr.
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=Driver.run from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=TimeToSubmit from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO ql.Driver: Concurrency mode is disabled, not creating a lock manager
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=compile from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 WARN ql.Driver: Shutting down task : Stage-0:DDL
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=parse from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO parse.ParseDriver: Parsing command: use as\_adventure
14/12/19 21:44:55 INFO parse.ParseDriver: Parse Completed
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=parse start=1419025495173 end=1419025495174 duration=1 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=semanticAnalyze from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO ql.Driver: Semantic Analysis Completed
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=semanticAnalyze start=1419025495174 end=1419025495174 duration=0 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO ql.Driver: Returning Hive schema: Schema(fieldSchemas:null, properties:null)
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=compile start=1419025495172 end=1419025495177 duration=5 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=Driver.execute from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO ql.Driver: Starting command: use as\_adventure
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=TimeToSubmit start=1419025495172 end=1419025495177 duration=5 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=runTasks from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=task.DDL.Stage-0 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=runTasks start=1419025495167 end=1419025495188 duration=21 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 ERROR ql.Driver: FAILED: Operation cancelled
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=Driver.execute start=1419025495166 end=1419025495189 duration=23 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=releaseLocks from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=releaseLocks start=1419025495189 end=1419025495189 duration=0 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 WARN ql.Driver: Shutting down task : Stage-0:DDL
14/12/19 21:44:55 ERROR hive.HiveContext:
======================
HIVE FAILURE OUTPUT
======================
RDDLike.scala:58)
	at org.apache.spark.sql.SchemaRDD.<init>(SchemaRDD.scala:108)
	at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:94)
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.run(Shim13.scala:161)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:231)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementAsync(HiveSessionImpl.java:218)
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
	at com.sun.proxy.$Proxy18.executeStatementAsync(Unknown Source)
	at org.apache.hive.service.cli.CLIService.executeStatementAsync(CLIService.java:233)
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

FAILED: Hive Internal Error: org.apache.hadoop.hive.ql.metadata.HiveException(FAILED: Operation cancelled)
org.apache.hadoop.hive.ql.metadata.HiveException: FAILED: Operation cancelled
	at org.apache.hadoop.hive.ql.DriverContext.checkShutdown(DriverContext.java:125)
	at org.apache.hadoop.hive.ql.DriverContext.launching(DriverContext.java:91)
	at org.apache.hadoop.hive.ql.Driver.launchTask(Driver.java:1497)
	at org.apache.hadoop.hive.ql.Driver.execute(Driver.java:1270)
	at org.apache.hadoop.hive.ql.Driver.runInternal(Driver.java:1088)
	at org.apache.hadoop.hive.ql.Driver.run(Driver.java:911)
	at org.apache.hadoop.hive.ql.Driver.run(Driver.java:901)
	at org.apache.spark.sql.hive.HiveContext.runHive(HiveContext.scala:305)
	at org.apache.spark.sql.hive.HiveContext.runSqlHive(HiveContext.scala:276)
	at org.apache.spark.sql.hive.execution.NativeCommand.sideEffectResult$lzycompute(NativeCommand.scala:35)
	at org.apache.spark.sql.hive.execution.NativeCommand.sideEffectResult(NativeCommand.scala:35)
	at org.apache.spark.sql.execution.Command$class.execute(commands.scala:46)
	at org.apache.spark.sql.hive.execution.NativeCommand.execute(NativeCommand.scala:30)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:425)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:425)
	at org.apache.spark.sql.SchemaRDDLike$class.$init$(SchemaRDDLike.scala:58)
	at org.apache.spark.sql.SchemaRDD.<init>(SchemaRDD.scala:108)
	at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:94)
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.run(Shim13.scala:161)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:231)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementAsync(HiveSessionImpl.java:218)
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
	at com.sun.proxy.$Proxy18.executeStatementAsync(Unknown Source)
	at org.apache.hive.service.cli.CLIService.executeStatementAsync(CLIService.java:233)
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

OK
OK
OK
OK
FAILED: Operation cancelled
FAILED: Operation cancelled
OK
OK
FAILED: Operation cancelled
FAILED: Hive Internal Error: java.lang.NullPointerException(null)
java.lang.NullPointerException
	at org.apache.hadoop.hive.ql.Driver.execute(Driver.java:1194)
	at org.apache.hadoop.hive.ql.Driver.runInternal(Driver.java:1088)
	at org.apache.hadoop.hive.ql.Driver.run(Driver.java:911)
	at org.apache.hadoop.hive.ql.Driver.run(Driver.java:901)
	at org.apache.spark.sql.hive.HiveContext.runHive(HiveContext.scala:305)
	at org.apache.spark.sql.hive.HiveContext.runSqlHive(HiveContext.scala:276)
	at org.apache.spark.sql.hive.execution.NativeCommand.sideEffectResult$lzycompute(NativeCommand.scala:35)
	at org.apache.spark.sql.hive.execution.NativeCommand.sideEffectResult(NativeCommand.scala:35)
	at org.apache.spark.sql.execution.Command$class.execute(commands.scala:46)
	at org.apache.spark.sql.hive.execution.NativeCommand.execute(NativeCommand.scala:30)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:425)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:425)
	at org.apache.spark.sql.SchemaRDDLike$class.$init$(SchemaRDDLike.scala:58)
	at org.apache.spark.sql.SchemaRDD.<init>(SchemaRDD.scala:108)
	at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:94)
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.run(Shim13.scala:161)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:231)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementAsync(HiveSessionImpl.java:218)
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
	at com.sun.proxy.$Proxy18.executeStatementAsync(Unknown Source)
	at org.apache.hive.service.cli.CLIService.executeStatementAsync(CLIService.java:233)
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

FAILED: Operation cancelled
OK
FAILED: Operation cancelled
FAILED: Operation cancelled
OK
FAILED: Operation cancelled
OK
OK
FAILED: Operation cancelled
OK
OK
FAILED: Operation cancelled
OK
OK
FAILED: Operation cancelled
FAILED: Operation cancelled
OK
FAILED: Operation cancelled
FAILED: Operation cancelled
FAILED: Operation cancelled
OK
FAILED: Operation cancelled
FAILED: Operation cancelled
OK
FAILED: Operation cancelled

======================
END HIVE FAILURE OUTPUT
======================

14/12/19 21:44:55 ERROR thriftserver.SparkExecuteStatementOperation: Error executing query:
org.apache.spark.sql.execution.QueryExecutionException: FAILED: Operation cancelled
	at org.apache.spark.sql.hive.HiveContext.runHive(HiveContext.scala:309)
	at org.apache.spark.sql.hive.HiveContext.runSqlHive(HiveContext.scala:276)
	at org.apache.spark.sql.hive.execution.NativeCommand.sideEffectResult$lzycompute(NativeCommand.scala:35)
	at org.apache.spark.sql.hive.execution.NativeCommand.sideEffectResult(NativeCommand.scala:35)
	at org.apache.spark.sql.execution.Command$class.execute(commands.scala:46)
	at org.apache.spark.sql.hive.execution.NativeCommand.execute(NativeCommand.scala:30)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:425)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:425)
	at org.apache.spark.sql.SchemaRDDLike$class.$init$(SchemaRDDLike.scala:58)
	at org.apache.spark.sql.SchemaRDD.<init>(SchemaRDD.scala:108)
	at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:94)
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.run(Shim13.scala:161)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:231)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementAsync(HiveSessionImpl.java:218)
	at sun.reflect.GeneratedMethodAccessor9.invoke(Unknown Source)
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
	at com.sun.proxy.$Proxy18.executeStatementAsync(Unknown Source)
	at org.apache.hive.service.cli.CLIService.executeStatementAsync(CLIService.java:233)
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
14/12/19 21:44:55 WARN thrift.ThriftCLIService: Error executing statement:
org.apache.hive.service.cli.HiveSQLException: org.apache.spark.sql.execution.QueryExecutionException: FAILED: Operation cancelled
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.run(Shim13.scala:192)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:231)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementAsync(HiveSessionImpl.java:218)
	at sun.reflect.GeneratedMethodAccessor9.invoke(Unknown Source)
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
	at com.sun.proxy.$Proxy18.executeStatementAsync(Unknown Source)
	at org.apache.hive.service.cli.CLIService.executeStatementAsync(CLIService.java:233)
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
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=runTasks start=1419025495177 end=1419025495197 duration=20 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 ERROR ql.Driver: FAILED: Operation cancelled
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=Driver.execute start=1419025495177 end=1419025495200 duration=23 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: <PERFLOG method=releaseLocks from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 INFO log.PerfLogger: </PERFLOG method=releaseLocks start=1419025495200 end=1419025495200 duration=0 from=org.apache.hadoop.hive.ql.Driver>
14/12/19 21:44:55 ERROR hive.HiveContext:
======================
HIVE FAILURE OUTPUT
======================
ache.spark.sql.SchemaRDD.<init>(SchemaRDD.scala:108)
	at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:94)
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.run(Shim13.scala:161)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:231)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementAsync(HiveSessionImpl.java:218)
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
	at com.sun.proxy.$Proxy18.executeStatementAsync(Unknown Source)
	at org.apache.hive.service.cli.CLIService.executeStatementAsync(CLIService.java:233)
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

FAILED: Hive Internal Error: org.apache.hadoop.hive.ql.metadata.HiveException(FAILED: Operation cancelled)
org.apache.hadoop.hive.ql.metadata.HiveException: FAILED: Operation cancelled
	at org.apache.hadoop.hive.ql.DriverContext.checkShutdown(DriverContext.java:125)
	at org.apache.hadoop.hive.ql.DriverContext.launching(DriverContext.java:91)
	at org.apache.hadoop.hive.ql.Driver.launchTask(Driver.java:1497)
	at org.apache.hadoop.hive.ql.Driver.execute(Driver.java:1270)
	at org.apache.hadoop.hive.ql.Driver.runInternal(Driver.java:1088)
	at org.apache.hadoop.hive.ql.Driver.run(Driver.java:911)
	at org.apache.hadoop.hive.ql.Driver.run(Driver.java:901)
	at org.apache.spark.sql.hive.HiveContext.runHive(HiveContext.scala:305)
	at org.apache.spark.sql.hive.HiveContext.runSqlHive(HiveContext.scala:276)
	at org.apache.spark.sql.hive.execution.NativeCommand.sideEffectResult$lzycompute(NativeCommand.scala:35)
	at org.apache.spark.sql.hive.execution.NativeCommand.sideEffectResult(NativeCommand.scala:35)
	at org.apache.spark.sql.execution.Command$class.execute(commands.scala:46)
	at org.apache.spark.sql.hive.execution.NativeCommand.execute(NativeCommand.scala:30)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:425)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:425)
	at org.apache.spark.sql.SchemaRDDLike$class.$init$(SchemaRDDLike.scala:58)
	at org.apache.spark.sql.SchemaRDD.<init>(SchemaRDD.scala:108)
	at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:94)
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.run(Shim13.scala:161)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:231)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementAsync(HiveSessionImpl.java:218)
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
	at com.sun.proxy.$Proxy18.executeStatementAsync(Unknown Source)
	at org.apache.hive.service.cli.CLIService.executeStatementAsync(CLIService.java:233)
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

OK
OK
OK
OK
FAILED: Operation cancelled
FAILED: Operation cancelled
OK
OK
FAILED: Operation cancelled
FAILED: Hive Internal Error: java.lang.NullPointerException(null)
java.lang.NullPointerException
	at org.apache.hadoop.hive.ql.Driver.execute(Driver.java:1194)
	at org.apache.hadoop.hive.ql.Driver.runInternal(Driver.java:1088)
	at org.apache.hadoop.hive.ql.Driver.run(Driver.java:911)
	at org.apache.hadoop.hive.ql.Driver.run(Driver.java:901)
	at org.apache.spark.sql.hive.HiveContext.runHive(HiveContext.scala:305)
	at org.apache.spark.sql.hive.HiveContext.runSqlHive(HiveContext.scala:276)
	at org.apache.spark.sql.hive.execution.NativeCommand.sideEffectResult$lzycompute(NativeCommand.scala:35)
	at org.apache.spark.sql.hive.execution.NativeCommand.sideEffectResult(NativeCommand.scala:35)
	at org.apache.spark.sql.execution.Command$class.execute(commands.scala:46)
	at org.apache.spark.sql.hive.execution.NativeCommand.execute(NativeCommand.scala:30)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:425)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:425)
	at org.apache.spark.sql.SchemaRDDLike$class.$init$(SchemaRDDLike.scala:58)
	at org.apache.spark.sql.SchemaRDD.<init>(SchemaRDD.scala:108)
	at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:94)
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.run(Shim13.scala:161)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:231)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementAsync(HiveSessionImpl.java:218)
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
	at com.sun.proxy.$Proxy18.executeStatementAsync(Unknown Source)
	at org.apache.hive.service.cli.CLIService.executeStatementAsync(CLIService.java:233)
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

FAILED: Operation cancelled
OK
FAILED: Operation cancelled
FAILED: Operation cancelled
OK
FAILED: Operation cancelled
OK
OK
FAILED: Operation cancelled
OK
OK
FAILED: Operation cancelled
OK
OK
FAILED: Operation cancelled
FAILED: Operation cancelled
OK
FAILED: Operation cancelled
FAILED: Operation cancelled
FAILED: Operation cancelled
OK
FAILED: Operation cancelled
FAILED: Operation cancelled
OK
FAILED: Operation cancelled
FAILED: Operation cancelled

======================
END HIVE FAILURE OUTPUT
======================

14/12/19 21:44:55 ERROR thriftserver.SparkExecuteStatementOperation: Error executing query:
org.apache.spark.sql.execution.QueryExecutionException: FAILED: Operation cancelled
	at org.apache.spark.sql.hive.HiveContext.runHive(HiveContext.scala:309)
	at org.apache.spark.sql.hive.HiveContext.runSqlHive(HiveContext.scala:276)
	at org.apache.spark.sql.hive.execution.NativeCommand.sideEffectResult$lzycompute(NativeCommand.scala:35)
	at org.apache.spark.sql.hive.execution.NativeCommand.sideEffectResult(NativeCommand.scala:35)
	at org.apache.spark.sql.execution.Command$class.execute(commands.scala:46)
	at org.apache.spark.sql.hive.execution.NativeCommand.execute(NativeCommand.scala:30)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:425)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:425)
	at org.apache.spark.sql.SchemaRDDLike$class.$init$(SchemaRDDLike.scala:58)
	at org.apache.spark.sql.SchemaRDD.<init>(SchemaRDD.scala:108)
	at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:94)
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.run(Shim13.scala:161)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:231)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementAsync(HiveSessionImpl.java:218)
	at sun.reflect.GeneratedMethodAccessor9.invoke(Unknown Source)
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
	at com.sun.proxy.$Proxy18.executeStatementAsync(Unknown Source)
	at org.apache.hive.service.cli.CLIService.executeStatementAsync(CLIService.java:233)
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
14/12/19 21:44:55 WARN thrift.ThriftCLIService: Error executing statement:
org.apache.hive.service.cli.HiveSQLException: org.apache.spark.sql.execution.QueryExecutionException: FAILED: Operation cancelled
	at org.apache.spark.sql.hive.thriftserver.SparkExecuteStatementOperation.run(Shim13.scala:192)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementInternal(HiveSessionImpl.java:231)
	at org.apache.hive.service.cli.session.HiveSessionImpl.executeStatementAsync(HiveSessionImpl.java:218)
	at sun.reflect.GeneratedMethodAccessor9.invoke(Unknown Source)
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
	at com.sun.proxy.$Proxy18.executeStatementAsync(Unknown Source)
	at org.apache.hive.service.cli.CLIService.executeStatementAsync(CLIService.java:233)
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

* [SPARK-4907](https://issues.apache.org/jira/browse/SPARK-4907) | *Major* | **Inconsistent loss and gradient in LeastSquaresGradient compared with R**

In most of the academic paper and algorithm implementations, people use L = 1/2n ||A weights-y||^2 instead of L = 1/n ||A weights-y||^2 for least-squared loss. See Eq. (1) in http://web.stanford.edu/~hastie/Papers/glmnet.pdf

Since MLlib uses different convention, this will result different residuals and all the stats properties will be different from GLMNET package in R. The model coefficients will be still the same under this change.


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

* [SPARK-4904](https://issues.apache.org/jira/browse/SPARK-4904) | *Minor* | **Remove the foldable checking in HiveGenericUdf.eval**

Since https://github.com/apache/spark/pull/3429 has been merged, the bug of wrapping to Writable for HiveGenericUDF is resolved, we can safely remove the foldable checking in `HiveGenericUdf.eval`, which discussed in
https://github.com/apache/spark/pull/2802.


---

* [SPARK-4901](https://issues.apache.org/jira/browse/SPARK-4901) | *Minor* | **Hot fix for the BytesWritable.copyBytes not exists in Hadoop1**

HiveInspectors.scala failed in compiling with Hadoop 1, as the BytesWritable.copyBytes is not available in Hadoop 1.


---

* [SPARK-4900](https://issues.apache.org/jira/browse/SPARK-4900) | *Minor* | **MLlib SingularValueDecomposition ARPACK IllegalStateException**

java.lang.reflect.InvocationTargetException
        ...
Caused by: java.lang.IllegalStateException: ARPACK returns non-zero info = 3 Please refer ARPACK user guide for error message.
        at org.apache.spark.mllib.linalg.EigenValueDecomposition$.symmetricEigs(EigenValueDecomposition.scala:120)
        at org.apache.spark.mllib.linalg.distributed.RowMatrix.computeSVD(RowMatrix.scala:235)
        at org.apache.spark.mllib.linalg.distributed.RowMatrix.computeSVD(RowMatrix.scala:171)
		...


---

* [SPARK-4896](https://issues.apache.org/jira/browse/SPARK-4896) | *Major* | **Don't redundantly copy executor dependencies in Utils.fetchFile**

This JIRA is spun off from a comment by [~rdub] on SPARK-3967, quoted here:

{quote}
I've been debugging this issue as well and I think I've found an issue in {{org.apache.spark.util.Utils}} that is contributing to / causing the problem:

{{Files.move}} on [line 390|https://github.com/apache/spark/blob/v1.1.0/core/src/main/scala/org/apache/spark/util/Utils.scala#L390] is called even if {{targetFile}} exists and {{tempFile}} and {{targetFile}} are equal.

The check on [line 379|https://github.com/apache/spark/blob/v1.1.0/core/src/main/scala/org/apache/spark/util/Utils.scala#L379] seems to imply the desire to skip a redundant overwrite if the file is already there and has the contents that it should have.

Gating the {{Files.move}} call on a further {{if (!targetFile.exists)}} fixes the issue for me; attached is a patch of the change.

In practice all of my executors that hit this code path are finding every dependency JAR to already exist and be exactly equal to what they need it to be, meaning they were all needlessly overwriting all of their dependency JARs, and now are all basically no-op-ing in {{Utils.fetchFile}}; I've not determined who/what is putting the JARs there, why the issue only crops up in {{yarn-cluster}} mode (or {{--master yarn --deploy-mode cluster}}), etc., but it seems like either way this patch is probably desirable.
{quote}

I'm spinning this off into its own JIRA so that we can track the merging of https://github.com/apache/spark/pull/2848 separately (since we have multiple PRs that contribute to fixing the original issue).


---

* [SPARK-4891](https://issues.apache.org/jira/browse/SPARK-4891) | *Minor* | **Add exponential, log normal, and gamma distributions to data generator to PySpark's MLlib**

[SPARK-4728] adds sampling from exponential, gamma, and log normal distributions to the Scala/Java MLlib APIs.  We need to add these functions to the PySpark MLlib API for parity.


---

* [SPARK-4890](https://issues.apache.org/jira/browse/SPARK-4890) | *Major* | **Upgrade Boto to 2.34.0; automatically download Boto from PyPi instead of packaging it**

We should upgrade to a newer version of Boto (2.34.0), since this is blocking several features.  It looks like newer versions of Boto don't work properly when they're loaded from a zipfile since they try to read a JSON file from a path relative to the Boto library sources.

Therefore, I think we should change {{spark-ec2}} to automatically download Boto from PyPi if it's not present in {{SPARK\_EC2\_DIR/lib}}, similar to what we do in the {{sbt/sbt}} scripts.  This shouldn't ben an issue for users since they already need to have an internet connection to launch an EC2 cluster.  By performing the downloading in {{spark\_ec2.py}} instead of the Bash script, this should also work for Windows users.


---

* [SPARK-4889](https://issues.apache.org/jira/browse/SPARK-4889) | *Minor* | **HistoryServer documentation refers to non-existent spark-history-server.sh script**

The [examples for how to start a history server|https://github.com/apache/spark/blob/253b72b56fe908bbab5d621eae8a5f359c639dfd/core/src/main/scala/org/apache/spark/deploy/history/HistoryServer.scala#L164] refer to a {{spark-history-server.sh}} script that doesn't exist; afaict it never did.

I believe the examples mean to refer to {{./sbin/start-history-server.sh}}, and should be updated to reflect that the log directory should be specified via {{-Dspark.history.fs.logDirectory}} in {{$SPARK\_HISTORY\_OPTS}}, not via a command-line argument.


---

* [SPARK-4887](https://issues.apache.org/jira/browse/SPARK-4887) | *Major* | **Fix a bad unittest in LogisticRegressionSuite**

The original test doesn't make sense since if you step in, the lossSum already NaN, and the coefficients are diverging. That's because the step size is too large for SGD, so it doesn't work. The correct behavior is that you should get smaller coefficients than the one without regularization. Comparing the values using 20000.0 relative error doesn't make sense as well.


---

* [SPARK-4884](https://issues.apache.org/jira/browse/SPARK-4884) | *Trivial* | **Improve documentation for Partition.scala**

ScalaDoc for org/apache/spark/Partition.scala is a bit vague. This discussion explains it better: http://apache-spark-developers-list.1001551.n3.nabble.com/RDD-data-flow-td9804.html


---

* [SPARK-4882](https://issues.apache.org/jira/browse/SPARK-4882) | *Major* | **PySpark broadcast breaks when using KryoSerializer**

When KryoSerializer is used, PySpark will throw NullPointerException when trying to send broadcast variables to workers.  This issue does not occur when the master is {{local}}, or when using the default JavaSerializer.

*Reproduction*:

Run

{code}
SPARK\_LOCAL\_IP=127.0.0.1 ./bin/pyspark --master local-cluster[2,2,512] --conf spark.serializer=org.apache.spark.serializer.KryoSerializer
{code}

then run

{code}
b = sc.broadcast("hello")
sc.parallelize([0]).flatMap(lambda x: b.value).collect()
{code}

This job fails because all tasks throw the following exception:

{code}
14/12/28 14:26:08 WARN TaskSetManager: Lost task 1.0 in stage 1.0 (TID 8, localhost): java.lang.NullPointerException
	at org.apache.spark.api.python.PythonRDD$.writeUTF(PythonRDD.scala:589)
	at org.apache.spark.api.python.PythonRDD$WriterThread$$anonfun$run$1$$anonfun$apply$mcV$sp$3.apply(PythonRDD.scala:232)
	at org.apache.spark.api.python.PythonRDD$WriterThread$$anonfun$run$1$$anonfun$apply$mcV$sp$3.apply(PythonRDD.scala:228)
	at scala.collection.Iterator$class.foreach(Iterator.scala:727)
	at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
	at scala.collection.IterableLike$class.foreach(IterableLike.scala:72)
	at scala.collection.AbstractIterable.foreach(Iterable.scala:54)
	at org.apache.spark.api.python.PythonRDD$WriterThread$$anonfun$run$1.apply$mcV$sp(PythonRDD.scala:228)
	at org.apache.spark.api.python.PythonRDD$WriterThread$$anonfun$run$1.apply(PythonRDD.scala:203)
	at org.apache.spark.api.python.PythonRDD$WriterThread$$anonfun$run$1.apply(PythonRDD.scala:203)
	at org.apache.spark.util.Utils$.logUncaughtExceptions(Utils.scala:1515)
	at org.apache.spark.api.python.PythonRDD$WriterThread.run(PythonRDD.scala:202)
{code}

KryoSerializer may be enabled in the {{spark-defaults.conf}} file, so users may hit this error and be confused.

*Workaround*:

Override the {{spark.serializer}} setting to use the default Java serializer.


---

* [SPARK-4881](https://issues.apache.org/jira/browse/SPARK-4881) | *Trivial* | **Use SparkConf#getBoolean instead of get().toBoolean**

It's really a minor issue.

In ApplicationMaster, there is code like as follows.

{code}
      val preserveFiles = sparkConf.get("spark.yarn.preserve.staging.files", "false").toBoolean
{code}

I think, the code can be simplified like as follows.

{code}
      val preserveFiles = sparkConf.getBoolean("spark.yarn.preserve.staging.files", false)
{code}


---

* [SPARK-4880](https://issues.apache.org/jira/browse/SPARK-4880) | *Minor* | **remove spark.locality.wait setting in examples/graphx/Analytics.scala**

spark.locality.wait set to 100000 in examples/graphx/Analytics.scala.
Should be left to the user.


---

* [SPARK-4877](https://issues.apache.org/jira/browse/SPARK-4877) | *Major* | **userClassPathFirst doesn't handle user classes inheriting from parent**

We're trying out userClassPathFirst.

To do so, we make an uberjar that does not contain Spark or Scala classes (because we want those to load from the parent classloader, otherwise we'll get errors like scala.Function0 != scala.Function0 since they'd load from different class loaders).

(Tangentially, some isolation classloaders like Jetty whitelist certain packages, like spark/* and scala/*, to only come from the parent classloader, so that technically if the user still messes up and leaks the Scala/Spark jars into their uberjar, it won't blow up; this would be a good enhancement, I think.)

Anyway, we have a custom Kryo registrar, which ships in our uberjar, but since it "extends spark.KryoRegistrator", which is not in our uberjar, we get a ClassNotFoundException.


---

* [SPARK-4874](https://issues.apache.org/jira/browse/SPARK-4874) | *Major* | **Report number of records read/written in a task**

This metric will help us find key skew using the WebUI


---

* [SPARK-4873](https://issues.apache.org/jira/browse/SPARK-4873) | *Minor* | **Use `Future.zip` instead of `Future.flatMap`(for-loop) in WriteAheadLogBasedBlockHandler**

Use Future.zip instead of Future.flatMap(for-loop). zip implies these two Futures will run concurrently, while flatMap usually means one Future depends on the other one.


---

* [SPARK-4871](https://issues.apache.org/jira/browse/SPARK-4871) | *Major* | **show sql statement in spark ui when run sql use spark-sql**

Show sql statement in spark ui when run sql use spark-sql.


---

* [SPARK-4870](https://issues.apache.org/jira/browse/SPARK-4870) | *Minor* | **Add version information to driver log**

Driver log doesn't include spark version information, version info is important in testing different spark version.


---

* [SPARK-4866](https://issues.apache.org/jira/browse/SPARK-4866) | *Major* | **Support StructType as key in MapType**

http://apache-spark-user-list.1001560.n3.nabble.com/Error-when-Applying-schema-to-a-dictionary-with-a-Tuple-as-key-td20716.html

Hi Guys, 

Im running a spark cluster in AWS with Spark 1.1.0 in EC2 

I am trying to convert a an RDD with tuple 

(u'string', int , {(int, int): int, (int, int): int}) 

to a schema rdd using the schema: 

{code}
fields = [StructField('field1',StringType(),True), 
                StructField('field2',IntegerType(),True), 
                StructField('field3',MapType(StructType([StructField('field31',IntegerType(),True), 
                        StructField('field32',IntegerType(),True)]),IntegerType(),True),True) 
                ] 

schema = StructType(fields) 
# generate the schemaRDD with the defined schema 
schemaRDD = sqc.applySchema(RDD, schema) 
{code}

But when I add "field3" to the schema, it throws an execption: 

{code}
Traceback (most recent call last): 
  File "<stdin>", line 1, in <module>
  File "/root/spark/python/pyspark/rdd.py", line 1153, in take 
    res = self.context.runJob(self, takeUpToNumLeft, p, True) 
  File "/root/spark/python/pyspark/context.py", line 770, in runJob 
    it = self.\_jvm.PythonRDD.runJob(self.\_jsc.sc(), mappedRDD.\_jrdd, javaPartitions, allowLocal) 
  File "/root/spark/python/lib/py4j-0.8.2.1-src.zip/py4j/java\_gateway.py", line 538, in \_\_call\_\_ 
  File "/root/spark/python/lib/py4j-0.8.2.1-src.zip/py4j/protocol.py", line 300, in get\_return\_value 
py4j.protocol.Py4JJavaError: An error occurred while calling z:org.apache.spark.api.python.PythonRDD.runJob. 
: org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 28.0 failed 4 times, most recent failure: Lost task 0.3 in stage 28.0 (TID 710, ip-172-31-29-120.ec2.internal): net.razorvine.pickle.PickleException: couldn't introspect javabean: java.lang.IllegalArgumentException: wrong number of arguments 
        net.razorvine.pickle.Pickler.put\_javabean(Pickler.java:603) 
        net.razorvine.pickle.Pickler.dispatch(Pickler.java:299) 
        net.razorvine.pickle.Pickler.save(Pickler.java:125) 
        net.razorvine.pickle.Pickler.put\_map(Pickler.java:321) 
        net.razorvine.pickle.Pickler.dispatch(Pickler.java:286) 
        net.razorvine.pickle.Pickler.save(Pickler.java:125) 
        net.razorvine.pickle.Pickler.put\_arrayOfObjects(Pickler.java:412) 
        net.razorvine.pickle.Pickler.dispatch(Pickler.java:195) 
        net.razorvine.pickle.Pickler.save(Pickler.java:125) 
        net.razorvine.pickle.Pickler.put\_arrayOfObjects(Pickler.java:412) 
        net.razorvine.pickle.Pickler.dispatch(Pickler.java:195) 
        net.razorvine.pickle.Pickler.save(Pickler.java:125) 
        net.razorvine.pickle.Pickler.dump(Pickler.java:95) 
        net.razorvine.pickle.Pickler.dumps(Pickler.java:80) 
        org.apache.spark.sql.SchemaRDD$$anonfun$javaToPython$1$$anonfun$apply$2.apply(SchemaRDD.scala:417) 
        org.apache.spark.sql.SchemaRDD$$anonfun$javaToPython$1$$anonfun$apply$2.apply(SchemaRDD.scala:417) 
        scala.collection.Iterator$$anon$11.next(Iterator.scala:328) 
        org.apache.spark.api.python.PythonRDD$.writeIteratorToStream(PythonRDD.scala:331) 
        org.apache.spark.api.python.PythonRDD$WriterThread$$anonfun$run$1.apply$mcV$sp(PythonRDD.scala:209) 
        org.apache.spark.api.python.PythonRDD$WriterThread$$anonfun$run$1.apply(PythonRDD.scala:184) 
        org.apache.spark.api.python.PythonRDD$WriterThread$$anonfun$run$1.apply(PythonRDD.scala:184) 
        org.apache.spark.util.Utils$.logUncaughtExceptions(Utils.scala:1311) 
        org.apache.spark.api.python.PythonRDD$WriterThread.run(PythonRDD.scala:183) 
Driver stacktrace: 
        at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$failJobAndIndependentStages(DAGScheduler.scala:1185) 
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1174) 
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1173) 
        at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59) 
        at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47) 
        at org.apache.spark.scheduler.DAGScheduler.abortStage(DAGScheduler.scala:1173) 
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:688) 
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:688) 
        at scala.Option.foreach(Option.scala:236) 
        at org.apache.spark.scheduler.DAGScheduler.handleTaskSetFailed(DAGScheduler.scala:688) 
        at org.apache.spark.scheduler.DAGSchedulerEventProcessActor$$anonfun$receive$2.applyOrElse(DAGScheduler.scala:1391) 
        at akka.actor.ActorCell.receiveMessage(ActorCell.scala:498) 
        at akka.actor.ActorCell.invoke(ActorCell.scala:456) 
        at akka.dispatch.Mailbox.processMailbox(Mailbox.scala:237) 
        at akka.dispatch.Mailbox.run(Mailbox.scala:219) 
        at akka.dispatch.ForkJoinExecutorConfigurator$AkkaForkJoinTask.exec(AbstractDispatcher.scala:386) 
        at scala.concurrent.forkjoin.ForkJoinTask.doExec(ForkJoinTask.java:260) 
        at scala.concurrent.forkjoin.ForkJoinPool$WorkQueue.runTask(ForkJoinPool.java:1339) 
        at scala.concurrent.forkjoin.ForkJoinPool.runWorker(ForkJoinPool.java:1979) 
        at scala.concurrent.forkjoin.ForkJoinWorkerThread.run(ForkJoinWorkerThread.java:107) 
{code}


---

* [SPARK-4864](https://issues.apache.org/jira/browse/SPARK-4864) | *Major* | **Add documentation to Netty-based configs**

Currently there is no public documentation for the NettyBlockTransferService or various configuration options of the network package. We should add some.


---

* [SPARK-4861](https://issues.apache.org/jira/browse/SPARK-4861) | *Major* | **Refactory command in spark sql**

Fix a todo in spark sql:  remove ```Command``` and use ```RunnableCommand``` instead.


---

* [SPARK-4860](https://issues.apache.org/jira/browse/SPARK-4860) | *Major* | **Improve performance of sample() and  takeSample() on SchemaRDD**

In SchemaRDD, all the rows are already serialized into Java objects, so it's possible to call sample()/takeSample() of JavaSchemaRDD() in Python, which will be much faster than the current approach (implemented in pure Python).


---

* [SPARK-4859](https://issues.apache.org/jira/browse/SPARK-4859) | *Major* | **Refactor LiveListenerBus and StreamingListenerBus**

[#4006|https://github.com/apache/spark/pull/4006] refactors LiveListenerBus and StreamingListenerBus and extracts the common codes to a parent class ListenerBus.

It also includes bug fixes in [#3710|https://github.com/apache/spark/pull/3710]:
1. Fix the race condition of queueFullErrorMessageLogged in LiveListenerBus and StreamingListenerBus to avoid outputing queue-full-error logs multiple times.
2. Make sure the SHUTDOWN message will be delivered to listenerThread, so that we can make sure listenerThread will always be able to exit.
3. Log the error from listener rather than crashing listenerThread in StreamingListenerBus.

During fixing the above bugs, we find it's better to make LiveListenerBus and StreamingListenerBus have the same bahaviors. Then there will be many duplicated codes in LiveListenerBus and StreamingListenerBus.

Therefore, I extracted their common codes to ListenerBus as a parent class: LiveListenerBus and StreamingListenerBus only need to extend ListenerBus and implement onPostEvent (how to process an event) and onDropEvent (do something when droppping an event).


---

* [SPARK-4857](https://issues.apache.org/jira/browse/SPARK-4857) | *Major* | **Add Executor Events to SparkListener**

We need to add events to the SparkListener to indicate an executor has been added or removed with corresponding information.


---

* [SPARK-4856](https://issues.apache.org/jira/browse/SPARK-4856) | *Major* | **Null & empty string should not be considered as StringType at begining in Json schema inferring**

We have data like:
{noformat}
TestSQLContext.sparkContext.parallelize(
  """{"ip":"27.31.100.29","headers":{"Host":"1.abc.com","Charset":"UTF-8"}}""" ::
  """{"ip":"27.31.100.29","headers":{}}""" ::
  """{"ip":"27.31.100.29","headers":""}""" :: Nil)
{noformat}

As empty string (the "headers") will be considered as String, and it ignores the real nested data type (struct type "headers" in line 1), and then we will get the "headers" (in line 1) as String Type, which is not our expectation.


---

* [SPARK-4855](https://issues.apache.org/jira/browse/SPARK-4855) | *Minor* | **Python tests for hypothesis testing**

Add Python unit tests for Chi-Squared hypothesis testing


---

* [SPARK-4846](https://issues.apache.org/jira/browse/SPARK-4846) | *Minor* | **When the vocabulary size is large, Word2Vec may yield "OutOfMemoryError: Requested array size exceeds VM limit"**

Exception in thread "Driver" java.lang.reflect.InvocationTargetException
    at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
    at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    at java.lang.reflect.Method.invoke(Method.java:606)
    at org.apache.spark.deploy.yarn.ApplicationMaster$$anon$2.run(ApplicationMaster.scala:162)
Caused by: java.lang.OutOfMemoryError: Requested array size exceeds VM limit 
    at java.util.Arrays.copyOf(Arrays.java:2271)
    at java.io.ByteArrayOutputStream.grow(ByteArrayOutputStream.java:113)
    at java.io.ByteArrayOutputStream.ensureCapacity(ByteArrayOutputStream.java:93)
    at java.io.ByteArrayOutputStream.write(ByteArrayOutputStream.java:140)
    at java.io.ObjectOutputStream$BlockDataOutputStream.drain(ObjectOutputStream.java:1870)
    at java.io.ObjectOutputStream$BlockDataOutputStream.setBlockDataMode(ObjectOutputStream.java:1779)
    at java.io.ObjectOutputStream.writeObject0(ObjectOutputStream.java:1186)
    at java.io.ObjectOutputStream.writeObject(ObjectOutputStream.java:347)
    at org.apache.spark.serializer.JavaSerializationStream.writeObject(JavaSerializer.scala:42)
    at org.apache.spark.serializer.JavaSerializerInstance.serialize(JavaSerializer.scala:73)
    at org.apache.spark.util.ClosureCleaner$.ensureSerializable(ClosureCleaner.scala:164)
    at org.apache.spark.util.ClosureCleaner$.clean(ClosureCleaner.scala:158)
    at org.apache.spark.SparkContext.clean(SparkContext.scala:1242)
    at org.apache.spark.rdd.RDD.mapPartitionsWithIndex(RDD.scala:610)
    at org.apache.spark.mllib.feature.Word2Vec$$anonfun$fit$1.apply$mcVI$sp(Word2Vec.scala:291)
    at scala.collection.immutable.Range.foreach$mVc$sp(Range.scala:141)
    at org.apache.spark.mllib.feature.Word2Vec.fit(Word2Vec.scala:290)


---

* [SPARK-4843](https://issues.apache.org/jira/browse/SPARK-4843) | *Major* | **Squash ExecutorRunnable and ExecutorRunnableUtil hierarchy in yarn module**

ExecutorRunnableUtil is a parent of ExecutorRunnable because of the yarn-alpha and yarn-stable split. Now that yarn-alpha is gone, we can squash the unnecessary hierarchy.


---

* [SPARK-4841](https://issues.apache.org/jira/browse/SPARK-4841) | *Blocker* | **Batch serializer bug in PySpark's RDD.zip**

{code}
t = sc.textFile("README.md")
t.zip(t).count()
{code}

{code}
Py4JJavaError                             Traceback (most recent call last)
<ipython-input-6-60fdeb8339fd> in <module>()
----> 1 readme.zip(readme).count()

/Users/meng/src/spark/python/pyspark/rdd.pyc in count(self)
    817         3
    818         """
--> 819         return self.mapPartitions(lambda i: [sum(1 for \_ in i)]).sum()
    820
    821     def stats(self):

/Users/meng/src/spark/python/pyspark/rdd.pyc in sum(self)
    808         6.0
    809         """
--> 810         return self.mapPartitions(lambda x: [sum(x)]).reduce(operator.add)
    811
    812     def count(self):

/Users/meng/src/spark/python/pyspark/rdd.pyc in reduce(self, f)
    713             yield reduce(f, iterator, initial)
    714
--> 715         vals = self.mapPartitions(func).collect()
    716         if vals:
    717             return reduce(f, vals)

/Users/meng/src/spark/python/pyspark/rdd.pyc in collect(self)
    674         """
    675         with SCCallSiteSync(self.context) as css:
--> 676             bytesInJava = self.\_jrdd.collect().iterator()
    677         return list(self.\_collect\_iterator\_through\_file(bytesInJava))
    678

/Users/meng/src/spark/python/lib/py4j-0.8.2.1-src.zip/py4j/java\_gateway.py in \_\_call\_\_(self, *args)
    536         answer = self.gateway\_client.send\_command(command)
    537         return\_value = get\_return\_value(answer, self.gateway\_client,
--> 538                 self.target\_id, self.name)
    539
    540         for temp\_arg in temp\_args:

/Users/meng/src/spark/python/lib/py4j-0.8.2.1-src.zip/py4j/protocol.py in get\_return\_value(answer, gateway\_client, target\_id, name)
    298                 raise Py4JJavaError(
    299                     'An error occurred while calling {0}{1}{2}.\n'.
--> 300                     format(target\_id, '.', name), value)
    301             else:
    302                 raise Py4JError(

Py4JJavaError: An error occurred while calling o69.collect.
: org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 1.0 failed 1 times, most recent failure: Lost task 0.0 in stage 1.0 (TID 2, localhost): org.apache.spark.api.python.PythonException: Traceback (most recent call last):
  File "/Users/meng/src/spark/python/pyspark/worker.py", line 107, in main
    process()
  File "/Users/meng/src/spark/python/pyspark/worker.py", line 98, in process
    serializer.dump\_stream(func(split\_index, iterator), outfile)
  File "/Users/meng/src/spark/python/pyspark/serializers.py", line 198, in dump\_stream
    self.serializer.dump\_stream(self.\_batched(iterator), stream)
  File "/Users/meng/src/spark/python/pyspark/serializers.py", line 81, in dump\_stream
    raise NotImplementedError
NotImplementedError

	at org.apache.spark.api.python.PythonRDD$$anon$1.read(PythonRDD.scala:137)
	at org.apache.spark.api.python.PythonRDD$$anon$1.<init>(PythonRDD.scala:174)
	at org.apache.spark.api.python.PythonRDD.compute(PythonRDD.scala:96)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:263)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:230)
	at org.apache.spark.rdd.ZippedPartitionsRDD2.compute(ZippedPartitionsRDD.scala:88)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:263)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:230)
	at org.apache.spark.api.python.PythonRDD$WriterThread$$anonfun$run$1.apply$mcV$sp(PythonRDD.scala:242)
	at org.apache.spark.api.python.PythonRDD$WriterThread$$anonfun$run$1.apply(PythonRDD.scala:204)
	at org.apache.spark.api.python.PythonRDD$WriterThread$$anonfun$run$1.apply(PythonRDD.scala:204)
	at org.apache.spark.util.Utils$.logUncaughtExceptions(Utils.scala:1460)
	at org.apache.spark.api.python.PythonRDD$WriterThread.run(PythonRDD.scala:203)

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

* [SPARK-4837](https://issues.apache.org/jira/browse/SPARK-4837) | *Blocker* | **NettyBlockTransferService does not abide by spark.blockManager.port config option**

The NettyBlockTransferService always binds to a random port, and does not use the spark.blockManager.port config as specified.


---

* [SPARK-4835](https://issues.apache.org/jira/browse/SPARK-4835) | *Critical* | **Streaming saveAs\*HadoopFiles() methods may throw FileAlreadyExistsException during checkpoint recovery**

While running (a slightly modified version of) the "recovery with saveAsHadoopFiles operation" test in the streaming CheckpointSuite, I noticed the following error message in the streaming driver log:

{code}
14/12/12 17:42:50.687 pool-1-thread-1-ScalaTest-running-CheckpointSuite INFO JobScheduler: Added jobs for time 1500 ms
14/12/12 17:42:50.687 pool-1-thread-1-ScalaTest-running-CheckpointSuite INFO RecurringTimer: Started timer for JobGenerator at time 2000
14/12/12 17:42:50.688 sparkDriver-akka.actor.default-dispatcher-3 INFO JobScheduler: Starting job streaming job 1500 ms.0 from job set of time 1500 ms
14/12/12 17:42:50.688 pool-1-thread-1-ScalaTest-running-CheckpointSuite INFO JobGenerator: Restarted JobGenerator at 2000 ms
14/12/12 17:42:50.688 pool-1-thread-1-ScalaTest-running-CheckpointSuite INFO JobScheduler: Started JobScheduler
14/12/12 17:42:50.689 sparkDriver-akka.actor.default-dispatcher-3 INFO JobScheduler: Starting job streaming job 1500 ms.1 from job set of time 1500 ms
14/12/12 17:42:50.689 sparkDriver-akka.actor.default-dispatcher-3 ERROR JobScheduler: Error running job streaming job 1500 ms.0
org.apache.hadoop.mapred.FileAlreadyExistsException: Output directory file:/var/folders/0k/2qp2p2vs7bv033vljnb8nk1c0000gn/T/1418434967213-0/-1500.result already exists
	at org.apache.hadoop.mapred.FileOutputFormat.checkOutputSpecs(FileOutputFormat.java:121)
	at org.apache.spark.rdd.PairRDDFunctions.saveAsHadoopDataset(PairRDDFunctions.scala:1045)
	at org.apache.spark.rdd.PairRDDFunctions.saveAsHadoopFile(PairRDDFunctions.scala:944)
	at org.apache.spark.streaming.dstream.PairDStreamFunctions$$anonfun$9.apply(PairDStreamFunctions.scala:677)
	at org.apache.spark.streaming.dstream.PairDStreamFunctions$$anonfun$9.apply(PairDStreamFunctions.scala:675)
	at org.apache.spark.streaming.dstream.ForEachDStream$$anonfun$1.apply$mcV$sp(ForEachDStream.scala:42)
	at org.apache.spark.streaming.dstream.ForEachDStream$$anonfun$1.apply(ForEachDStream.scala:40)
	at org.apache.spark.streaming.dstream.ForEachDStream$$anonfun$1.apply(ForEachDStream.scala:40)
	at scala.util.Try$.apply(Try.scala:161)
	at org.apache.spark.streaming.scheduler.Job.run(Job.scala:32)
	at org.apache.spark.streaming.scheduler.JobScheduler$JobHandler.run(JobScheduler.scala:171)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
14/12/12 17:42:50.691 pool-12-thread-1 INFO SparkContext: Starting job: apply at Transformer.scala:22
{code}

Spark Streaming's {{saveAsHadoopFiles}} method calls Spark's {{rdd.saveAsHadoopFile}} method.  The Spark method, in turn, called {{PairRDDFunctions.saveAsHadoopDataset()}}, which has error-checking to ensure that the output directory does not already exist:

{code}
    if (self.conf.getBoolean("spark.hadoop.validateOutputSpecs", true)) {
      // FileOutputFormat ignores the filesystem parameter
      val ignoredFs = FileSystem.get(hadoopConf)
      hadoopConf.getOutputFormat.checkOutputSpecs(ignoredFs, hadoopConf)
    }
{code}

If Spark Streaming recovers from a checkpoint and re-runs the last batch in the checkpoint, then {{saveAsHadoopDataset}} will have been called twice with the same output path.  If the output path exists from the first, pre-recovery run, then the recovery will fail.

This seems like it could be a pretty serious issue: imagine that a streaming job fails partway through a save() operation, then recovers: in this case, the existing directory will prevent us from ever recovering and finishing the save().

Fortunately, this should be simple to fix: we should disable the existing directory checks for output operations called by streaming jobs.


---

* [SPARK-4834](https://issues.apache.org/jira/browse/SPARK-4834) | *Major* | **Spark fails to clean up cache / lock files in local dirs**

This issue was caused by https://github.com/apache/spark/commit/7aacb7bfa.

That change shares downloaded jar / files among multiple executors running on the same host by using a lock file and a cache file for each file the executor needs to download. The problem is that these lock and cache files are never deleted.

On Yarn, the app's dir is automatically deleted when the app ends, so no files are left behind. But on standalone, there's no such thing as "the app's dir"; files will end up in "/tmp" or in whatever place the user configure in "SPARK\_LOCAL\_DIRS", and will eventually start to fill that volume.

We should add a way to clean up these files. It's not as simple as "hey, just call File.deleteOnExit()!" because we're talking about multiple processes accessing these files, so to maintain the efficiency gains of the original change, the files should only be deleted when the application is finished.


---

* [SPARK-4832](https://issues.apache.org/jira/browse/SPARK-4832) | *Minor* | **some other processes might take the daemon pid**

Some other processes might use the pid saved in pid file. In that case we should ignore it and launch daemons.


---

* [SPARK-4831](https://issues.apache.org/jira/browse/SPARK-4831) | *Minor* | **Current directory always on classpath with spark-submit**

We had a situation where we were launching an application with spark-submit, and a file (play.plugins) was on the classpath twice, causing problems (trying to register plugins twice). Upon investigating how it got on the classpath twice, we found that it was present in one of our jars, and also in the current working directory. But the one in the current working directory should not be on the classpath. We never asked spark-submit to put the current directory on the classpath.

I think this is caused by a line in [compute-classpath.sh|https://github.com/apache/spark/blob/v1.2.0-rc2/bin/compute-classpath.sh#L28]:

{code}
CLASSPATH="$SPARK\_CLASSPATH:$SPARK\_SUBMIT\_CLASSPATH"
{code}

Now if SPARK\_CLASSPATH is empty, the empty string is added to the classpath, which means the current working directory.

We tried setting SPARK\_CLASSPATH to a bogus value, but that is [not allowed|https://github.com/apache/spark/blob/v1.2.0-rc2/core/src/main/scala/org/apache/spark/SparkConf.scala#L312].

What is the right solution? Only add SPARK\_CLASSPATH if it's non-empty? I can send a pull request for that I think. Thanks!


---

* [SPARK-4826](https://issues.apache.org/jira/browse/SPARK-4826) | *Major* | **Possible flaky tests in WriteAheadLogBackedBlockRDDSuite: "java.lang.IllegalStateException: File exists and there is no append support!"**

I saw a recent master Maven build failure in WriteHeadLogBackedBlockRDDSuite where four tests failed with the same exception.

[Link to test result (this will eventually break)|https://amplab.cs.berkeley.edu/jenkins/job/Spark-Master-Maven-pre-YARN/1156/].  In case that link breaks:

The failed tests:

{code}
org.apache.spark.streaming.rdd.WriteAheadLogBackedBlockRDDSuite.Read data available only in block manager, not in write ahead log
org.apache.spark.streaming.rdd.WriteAheadLogBackedBlockRDDSuite.Read data available only in write ahead log, not in block manager
org.apache.spark.streaming.rdd.WriteAheadLogBackedBlockRDDSuite.Read data available only in write ahead log, and test storing in block manager
org.apache.spark.streaming.rdd.WriteAheadLogBackedBlockRDDSuite.Read data with partially available in block manager, and rest in write ahead log
{code}

The error messages are all (essentially) the same:

{code}
     java.lang.IllegalStateException: File exists and there is no append support!
      at org.apache.spark.streaming.util.HdfsUtils$.getOutputStream(HdfsUtils.scala:33)
      at org.apache.spark.streaming.util.WriteAheadLogWriter.org$apache$spark$streaming$util$WriteAheadLogWriter$$stream$lzycompute(WriteAheadLogWriter.scala:34)
      at org.apache.spark.streaming.util.WriteAheadLogWriter.org$apache$spark$streaming$util$WriteAheadLogWriter$$stream(WriteAheadLogWriter.scala:34)
      at org.apache.spark.streaming.util.WriteAheadLogWriter.<init>(WriteAheadLogWriter.scala:42)
      at org.apache.spark.streaming.rdd.WriteAheadLogBackedBlockRDDSuite.writeLogSegments(WriteAheadLogBackedBlockRDDSuite.scala:140)
      at org.apache.spark.streaming.rdd.WriteAheadLogBackedBlockRDDSuite.org$apache$spark$streaming$rdd$WriteAheadLogBackedBlockRDDSuite$$testRDD(WriteAheadLogBackedBlockRDDSuite.scala:95)
      at org.apache.spark.streaming.rdd.WriteAheadLogBackedBlockRDDSuite$$anonfun$4.apply$mcV$sp(WriteAheadLogBackedBlockRDDSuite.scala:67)
      at org.apache.spark.streaming.rdd.WriteAheadLogBackedBlockRDDSuite$$anonfun$4.apply(WriteAheadLogBackedBlockRDDSuite.scala:67)
      at org.apache.spark.streaming.rdd.WriteAheadLogBackedBlockRDDSuite$$anonfun$4.apply(WriteAheadLogBackedBlockRDDSuite.scala:67)
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
      at org.scalatest.FunSuite.runTest(FunSuite.scala:1555)
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
      at org.apache.spark.streaming.rdd.WriteAheadLogBackedBlockRDDSuite.org$scalatest$BeforeAndAfterAll$$super$run(WriteAheadLogBackedBlockRDDSuite.scala:31)
      at org.scalatest.BeforeAndAfterAll$class.liftedTree1$1(BeforeAndAfterAll.scala:257)
      at org.scalatest.BeforeAndAfterAll$class.run(BeforeAndAfterAll.scala:256)
      at org.apache.spark.streaming.rdd.WriteAheadLogBackedBlockRDDSuite.run(WriteAheadLogBackedBlockRDDSuite.scala:31)
      at org.scalatest.Suite$class.callExecuteOnSuite$1(Suite.scala:1492)
      at org.scalatest.Suite$$anonfun$runNestedSuites$1.apply(Suite.scala:1528)
      at org.scalatest.Suite$$anonfun$runNestedSuites$1.apply(Suite.scala:1526)
      at scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:33)
      at scala.collection.mutable.ArrayOps$ofRef.foreach(ArrayOps.scala:108)
      at org.scalatest.Suite$class.runNestedSuites(Suite.scala:1526)
      at org.scalatest.tools.DiscoverySuite.runNestedSuites(DiscoverySuite.scala:29)
      at org.scalatest.Suite$class.run(Suite.scala:1421)
      at org.scalatest.tools.DiscoverySuite.run(DiscoverySuite.scala:29)
      at org.scalatest.tools.SuiteRunner.run(SuiteRunner.scala:55)
      at org.scalatest.tools.Runner$$anonfun$doRunRunRunDaDoRunRun$3.apply(Runner.scala:2563)
      at org.scalatest.tools.Runner$$anonfun$doRunRunRunDaDoRunRun$3.apply(Runner.scala:2557)
      at scala.collection.immutable.List.foreach(List.scala:318)
      at org.scalatest.tools.Runner$.doRunRunRunDaDoRunRun(Runner.scala:2557)
      at org.scalatest.tools.Runner$$anonfun$runOptionallyWithPassFailReporter$2.apply(Runner.scala:1044)
      at org.scalatest.tools.Runner$$anonfun$runOptionallyWithPassFailReporter$2.apply(Runner.scala:1043)
      at org.scalatest.tools.Runner$.withClassLoaderAndDispatchReporter(Runner.scala:2722)
      at org.scalatest.tools.Runner$.runOptionallyWithPassFailReporter(Runner.scala:1043)
      at org.scalatest.tools.Runner$.main(Runner.scala:860)
      at org.scalatest.tools.Runner.main(Runner.scala)
{code}


---

* [SPARK-4822](https://issues.apache.org/jira/browse/SPARK-4822) | *Minor* | **Use sphinx tags for Python doc annotations**

Currently, pyspark documentation uses the same annotations as in Scala:
{code}
:: Experimental ::
{code}
It should use Sphinx annotations:
{code}
.. note:: Experimental
{code}
The latter method creates a box.  The former method must either be on the same line as the rest of the doc text, or it generates compilation warnings.

Proposal: Change all annotations in Python docs to use "note"


---

* [SPARK-4821](https://issues.apache.org/jira/browse/SPARK-4821) | *Major* | **pyspark.mllib.rand docs not generated correctly**

spark/python/docs/pyspark.mllib.rst needs to be updated to reflect the change in package names from pyspark.mllib.random to .rand

Otherwise, the Python API docs are empty.


---

* [SPARK-4818](https://issues.apache.org/jira/browse/SPARK-4818) | *Major* | **Join operation should use iterator/lazy evaluation**

The current implementation of the join operation does not use an iterator (i.e. lazy evaluation), causing it to explicitly evaluate the co-grouped values. In big data applications, these value collections can be very large. This causes the *cartesian product of all co-grouped values* for a specific key of both RDDs to be kept in memory during the flatMapValues operation, resulting in an *O(size(pair.\_1)*size(pair.\_2))* memory consumption instead of *O(1)*. Very large value collections will therefore cause "GC overhead limit exceeded" exceptions and fail the task, or at least slow down execution dramatically.

{code:title=PairRDDFunctions.scala|borderStyle=solid}
//...
def join[W](other: RDD[(K, W)], partitioner: Partitioner): RDD[(K, (V, W))] = {
  this.cogroup(other, partitioner).flatMapValues( pair =>
    for (v <- pair.\_1; w <- pair.\_2) yield (v, w)
  )
}
//...
{code}

Since cogroup returns an Iterable instance of an Array, the join implementation could be changed to the following, which uses lazy evaluation instead, and has almost no memory overhead:
{code:title=PairRDDFunctions.scala|borderStyle=solid}
//...
def join[W](other: RDD[(K, W)], partitioner: Partitioner): RDD[(K, (V, W))] = {
  this.cogroup(other, partitioner).flatMapValues( pair =>
    for (v <- pair.\_1.iterator; w <- pair.\_2.iterator) yield (v, w)
  )
}
//...
{code}

Alternatively, if the current implementation is intentionally not using lazy evaluation for some reason, there could be a *lazyJoin()* method next to the original join implementation that utilizes lazy evaluation. This of course applies to other join operations as well.

Thanks! :)


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

* [SPARK-4813](https://issues.apache.org/jira/browse/SPARK-4813) | *Major* | **ContextWaiter didn't handle 'spurious wakeup'**

According to [javadocs|https://docs.oracle.com/javase/7/docs/api/java/lang/Object.html#wait(long)],
{quote}
A thread can also wake up without being notified, interrupted, or timing out, a so-called spurious wakeup. While this will rarely occur in practice, applications must guard against it by testing for the condition that should have caused the thread to be awakened, and continuing to wait if the condition is not satisfied. In other words, waits should always occur in loops, like this one:

     synchronized (obj) {
         while (<condition does not hold>)
             obj.wait(timeout);
         ... // Perform action appropriate to condition
     }
{quote}
`wait` should always occur in loops.

But now ContextWaiter.waitForStopOrError doesn't.
{code}
  def waitForStopOrError(timeout: Long = -1) = synchronized {
    // If already had error, then throw it
    if (error != null) {
      throw error
    }

    // If not already stopped, then wait
    if (!stopped) {
      if (timeout < 0) wait() else wait(timeout)
      if (error != null) throw error
    }
  }
{code}


---

* [SPARK-4812](https://issues.apache.org/jira/browse/SPARK-4812) | *Major* | **SparkPlan.codegenEnabled may be initialized to a wrong value**

The problem is `codegenEnabled` is `val`, but it uses a `val` `sqlContext`, which can be override by subclasses. Here is a simple example to show this issue.

{code}
scala> :paste
// Entering paste mode (ctrl-D to finish)

abstract class Foo {

  protected val sqlContext = "Foo"

  val codegenEnabled: Boolean = {
    println(sqlContext) // it will call subclass's `sqlContext` which has not yet been initialized.
    if (sqlContext != null) {
      true
    } else {
      false
    }
  }
}

class Bar extends Foo {
  override val sqlContext = "Bar"
}

println(new Bar().codegenEnabled)

// Exiting paste mode, now interpreting.

null
false
defined class Foo
defined class Bar

scala> 
{code}

We should make `sqlContext` `final` to prevent subclasses from overriding it incorrectly.


---

* [SPARK-4809](https://issues.apache.org/jira/browse/SPARK-4809) | *Major* | **Improve Guava shading in Spark**

As part of SPARK-2848, we started shading Guava to help with projects that want to use Spark but use an incompatible version of Guava.

The approach used there is a little sub-optimal, though. It makes it tricky, especially, to run unit tests in your project when those need to use spark-core APIs.

We should make the shading more transparent so that it's easier to use spark-core, with or without an explicit Guava dependency.


---

* [SPARK-4803](https://issues.apache.org/jira/browse/SPARK-4803) | *Trivial* | **Duplicate RegisterReceiver messages sent from ReceiverSupervisor**

The ReceiverTracker receivers `RegisterReceiver` messages two times
     1) When the actor at `ReceiverSupervisorImpl`'s preStart is invoked
     2) After the receiver is started at the executor `onReceiverStart()` at `ReceiverSupervisorImpl`

Though the 'RegisterReceiver' message uses the same streamId and the receiverInfo gets updated every time the message is processed at the `ReceiverTracker`, it makes sense to call register receiver only after the
receiver is started.

or, am I missing something here?


---

* [SPARK-4802](https://issues.apache.org/jira/browse/SPARK-4802) | *Minor* | **ReceiverInfo removal at ReceiverTracker upon deregistering receiver**

When the streaming receiver is deregistered, the ReceiverTracker doesn't remove the corresponding receiverInfo entry for the receiver.

When the receiver is stopped at the executor and the ReceiverTrackerActor that processes the 'DeregisterReceiver' message. Shouldn't it remove the receiverInfo entry for that receiver as the receiver is actually deregistered?

Not sure if there is any specific reason for not removing it.
Currently, I see this warning if we don't remove it:

WARN main-EventThread scheduler.ReceiverTracker - All of the receivers have not deregistered, Map(0 -> ReceiverInfo(0,MyReceiver-0,null,false,localhost,Stopped by driver,))


---

* [SPARK-4798](https://issues.apache.org/jira/browse/SPARK-4798) | *Major* | **Refactor Parquet test suites**

Current {{ParquetQuerySuite}} implementation is too verbose and is hard to add new test cases. Would be good to refactor it to enable faster Parquet support iteration.


---

* [SPARK-4797](https://issues.apache.org/jira/browse/SPARK-4797) | *Minor* | **Replace breezeSquaredDistance**

This PR replaces slow breezeSquaredDistance. A simple calculation involving 40000 squared distances between the vectors of 20000 dims shows:

* breezeSquaredDistance: ~12 secs
* This PR: ~10.5 secs


---

* [SPARK-4795](https://issues.apache.org/jira/browse/SPARK-4795) | *Minor* | **Redesign the "primitive type =\> Writable" implicit APIs to make them be activated automatically**

Try to redesign the "primitive type => Writable" implicit APIs to make them be activated automatically and without breaking compatibility.


---

* [SPARK-4792](https://issues.apache.org/jira/browse/SPARK-4792) | *Minor* | **Add some checks and messages on making local dir**

Lacking judgument if making local dir successfully. If unsuccessfully, should log some error/warning message. Also, should judge the dir is exist or not before making it.


---

* [SPARK-4790](https://issues.apache.org/jira/browse/SPARK-4790) | *Major* | **Flaky test in ReceivedBlockTrackerSuite: "block addition, block to batch allocation, and cleanup with write ahead log"**

Found another flaky streaming test, "org.apache.spark.streaming.ReceivedBlockTrackerSuite.block addition, block to batch allocation and cleanup with write ahead log":

{code}
Error Message

File /tmp/1418069118106-0/receivedBlockMetadata/log-0-1000 does not exist.

Stacktrace

sbt.ForkMain$ForkError: File /tmp/1418069118106-0/receivedBlockMetadata/log-0-1000 does not exist.
	at org.apache.hadoop.fs.RawLocalFileSystem.getFileStatus(RawLocalFileSystem.java:397)
	at org.apache.hadoop.fs.RawLocalFileSystem.listStatus(RawLocalFileSystem.java:324)
	at org.apache.spark.streaming.util.WriteAheadLogSuite$.getLogFilesInDirectory(WriteAheadLogSuite.scala:344)
	at org.apache.spark.streaming.ReceivedBlockTrackerSuite.getWriteAheadLogFiles(ReceivedBlockTrackerSuite.scala:248)
	at org.apache.spark.streaming.ReceivedBlockTrackerSuite$$anonfun$4.apply$mcV$sp(ReceivedBlockTrackerSuite.scala:173)
	at org.apache.spark.streaming.ReceivedBlockTrackerSuite$$anonfun$4.apply(ReceivedBlockTrackerSuite.scala:96)
	at org.apache.spark.streaming.ReceivedBlockTrackerSuite$$anonfun$4.apply(ReceivedBlockTrackerSuite.scala:96)
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
	at org.apache.spark.streaming.ReceivedBlockTrackerSuite.org$scalatest$BeforeAndAfter$$super$runTest(ReceivedBlockTrackerSuite.scala:41)
	at org.scalatest.BeforeAndAfter$class.runTest(BeforeAndAfter.scala:200)
	at org.apache.spark.streaming.ReceivedBlockTrackerSuite.runTest(ReceivedBlockTrackerSuite.scala:41)
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
	at org.apache.spark.streaming.ReceivedBlockTrackerSuite.org$scalatest$BeforeAndAfter$$super$run(ReceivedBlockTrackerSuite.scala:41)
	at org.scalatest.BeforeAndAfter$class.run(BeforeAndAfter.scala:241)
	at org.apache.spark.streaming.ReceivedBlockTrackerSuite.run(ReceivedBlockTrackerSuite.scala:41)
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

* [SPARK-4789](https://issues.apache.org/jira/browse/SPARK-4789) | *Major* | **Standardize ML Prediction APIs**

Create a standard set of abstractions for prediction in spark.ml.  This will follow the design doc specified in [SPARK-3702].


---

* [SPARK-4787](https://issues.apache.org/jira/browse/SPARK-4787) | *Major* | **Clean up SparkContext after DAGScheduler initialization errors**

If an exception occurs when creating the DAGScheduler, then other resources in SparkContext may be leaked / not cleaned up.

*Edit (joshrosen):* this issue originally was a duplicate of SPARK-4194, but I've converted it into a subtask and revised it to relfect the scope of the PR opened against it.  The original PR description is reproduced below:

When client creates a SparkContext, currently there are many val to initialize during object initialization. But when there is failure initializing these val, like throwing an exception, the resources in this SparkContext is not released properly. 
For example, SparkUI object is created and bind to the HTTP server during initialization using
{{ui.foreach(\_.bind())}}
but if anything goes wrong after this code (say throwing an exception when creating DAGScheduler), the SparkUI server is not stopped, thus the port bind will fail again in the client when creating another SparkContext. So basically this leads to a situation that the client can not create another SparkContext in the same process, which I think it is not reasonable.

So, I suggest to refactor the SparkContext code to release resource when there is failure during in initialization.


---

* [SPARK-4786](https://issues.apache.org/jira/browse/SPARK-4786) | *Major* | **Parquet filter pushdown for BYTE and SHORT types**

Among all integral types, currently only INT and LONG predicates can be converted to Parquet filter predicate. BYTE and SHORT predicates can be covered by INT.


---

* [SPARK-4772](https://issues.apache.org/jira/browse/SPARK-4772) | *Major* | **Accumulators leak memory, both temporarily and permanently**

Accumulators.localAccums is cleared at the beginning of a task, and not at the end.

This means that any locally accumulated values hang around until another task is run on that thread.

If for some reason, the thread dies, said values hang around indefinitely.

This is really only a big issue with very large accumulators.


---

* [SPARK-4771](https://issues.apache.org/jira/browse/SPARK-4771) | *Major* | **Document standalone --supervise feature**

We need this especially for streaming.


---

* [SPARK-4767](https://issues.apache.org/jira/browse/SPARK-4767) | *Trivial* | **Add support for launching in a specified placement group to spark ec2 scripts.**

The Spark EC2 scripts don't currently allow users to specify a placement group. We should add this.
EC2 placement groups are described in http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html 
This should not require updating the mesos/spark repo since its self contained in spark\_ec2.py.


---

* [SPARK-4764](https://issues.apache.org/jira/browse/SPARK-4764) | *Minor* | **Ensure that files are fetched atomically**

It does not seem necessary in the {{doFetchFile}} method to first download the file into a local directory then move it (it may cause a copy instead of a rename).

{{tempFile}} (where the file is downloaded) should be created in the same directory than {{targetFile}}, so that the move from {{tempFile}} to {{targetFile}} is always atomic


---

* [SPARK-4759](https://issues.apache.org/jira/browse/SPARK-4759) | *Critical* | **Deadlock in complex spark job in local mode**

The attached test class runs two identical jobs that perform some iterative computation on an RDD[(Int, Int)]. This computation involves 
  # taking new data merging it with the previous result
  # caching and checkpointing the new result
  # rinse and repeat

The first time the job is run, it runs successfully, and the spark context is shut down. The second time the job is run with a new spark context in the same process, the job hangs indefinitely, only having scheduled a subset of the necessary tasks for the final stage.

Ive been able to produce a test case that reproduces the issue, and I've added some comments where some knockout experimentation has left some breadcrumbs as to where the issue might be.


---

* [SPARK-4757](https://issues.apache.org/jira/browse/SPARK-4757) | *Major* | **Yarn-client failed to start due to Wrong FS error in distCacheMgr.addResource**

I got the following error during Spark startup (Yarn-client mode):

14/12/04 19:33:58 INFO Client: Uploading resource file:/x/home/jianshuang/spark/spark-latest/lib/datanucleus-api-jdo-3.2.6.jar -> hdfs://stampy/user/jianshuang/.sparkStaging/application\_1404410683830\_531767/datanucleus-api-jdo-3.2.6.jar
java.lang.IllegalArgumentException: Wrong FS: hdfs://stampy/user/jianshuang/.sparkStaging/application\_1404410683830\_531767/datanucleus-api-jdo-3.2.6.jar, expected: file:///
        at org.apache.hadoop.fs.FileSystem.checkPath(FileSystem.java:643)
        at org.apache.hadoop.fs.RawLocalFileSystem.pathToFile(RawLocalFileSystem.java:79)
        at org.apache.hadoop.fs.RawLocalFileSystem.deprecatedGetFileStatus(RawLocalFileSystem.java:506)
        at org.apache.hadoop.fs.RawLocalFileSystem.getFileLinkStatusInternal(RawLocalFileSystem.java:724)
        at org.apache.hadoop.fs.RawLocalFileSystem.getFileStatus(RawLocalFileSystem.java:501)
        at org.apache.hadoop.fs.FilterFileSystem.getFileStatus(FilterFileSystem.java:397)
        at org.apache.spark.deploy.yarn.ClientDistributedCacheManager.addResource(ClientDistributedCacheManager.scala:67)
        at org.apache.spark.deploy.yarn.ClientBase$$anonfun$prepareLocalResources$5.apply(ClientBase.scala:257)
        at org.apache.spark.deploy.yarn.ClientBase$$anonfun$prepareLocalResources$5.apply(ClientBase.scala:242)
        at scala.Option.foreach(Option.scala:236)
        at org.apache.spark.deploy.yarn.ClientBase$class.prepareLocalResources(ClientBase.scala:242)
        at org.apache.spark.deploy.yarn.Client.prepareLocalResources(Client.scala:35)
        at org.apache.spark.deploy.yarn.ClientBase$class.createContainerLaunchContext(ClientBase.scala:350)
        at org.apache.spark.deploy.yarn.Client.createContainerLaunchContext(Client.scala:35)
        at org.apache.spark.deploy.yarn.Client.submitApplication(Client.scala:80)
        at org.apache.spark.scheduler.cluster.YarnClientSchedulerBackend.start(YarnClientSchedulerBackend.scala:57)
        at org.apache.spark.scheduler.TaskSchedulerImpl.start(TaskSchedulerImpl.scala:140)
        at org.apache.spark.SparkContext.<init>(SparkContext.scala:335)
        at org.apache.spark.repl.SparkILoop.createSparkContext(SparkILoop.scala:986)
        at $iwC$$iwC.<init>(<console>:9)
        at $iwC.<init>(<console>:18)
        at <init>(<console>:20)
        at .<init>(<console>:24)


According to Liancheng and Andrew, this hotfix might be the root cause:

 https://github.com/apache/spark/commit/38cb2c3a36a5c9ead4494cbc3dde008c2f0698ce


Jianshi


---

* [SPARK-4756](https://issues.apache.org/jira/browse/SPARK-4756) | *Major* | **sessionToActivePool  grow infinitely, even as sessions expire**

sessionToActivePool  in SparkSQLOperationManager grow infinitely, even as sessions expire.


---

* [SPARK-4754](https://issues.apache.org/jira/browse/SPARK-4754) | *Major* | **ExecutorAllocationManager should not take in SparkContext**

We should refactor ExecutorAllocationManager to not take in a SparkContext. Otherwise, new developers may try to add a lot of unnecessary pointers.


---

* [SPARK-4750](https://issues.apache.org/jira/browse/SPARK-4750) | *Major* | **Dynamic allocation - we need to synchronize kills**

https://github.com/apache/spark/blob/ab8177da2defab1ecd8bc0cd5a21f07be5b8d2c5/core/src/main/scala/org/apache/spark/scheduler/cluster/CoarseGrainedSchedulerBackend.scala#L337

Simple omission on my part.


---

* [SPARK-4749](https://issues.apache.org/jira/browse/SPARK-4749) | *Major* | **Allow initializing KMeans clusters using a seed**

Add an optional seed to MLLib KMeans clustering to allow initial cluster choices to be deterministic.  Update the pyspark mllib interface to also allow an optional seed parameter to be supplie.


---

* [SPARK-4743](https://issues.apache.org/jira/browse/SPARK-4743) | *Major* | **Use SparkEnv.serializer instead of closureSerializer in aggregateByKey and foldByKey**

AggregateByKey and foldByKey in PairRDDFunctions both use the closure serializer to serialize and deserialize the initial value. This means that the Java serializer is always used, which can be very expensive if there's a large number of groups. Calling combineByKey manually and using the normal serializer instead of the closure one improved the performance on the dataset I'm testing with by about 30-35%.

I'm not familiar enough with the codebase to be certain that replacing the serializer here is OK, but it works correctly in my tests, and it's only serializing a single value of type U, which should be serializable by the default one since it can be the output of a job. Let me know if I'm missing anything.


---

* [SPARK-4742](https://issues.apache.org/jira/browse/SPARK-4742) | *Minor* | **The name of Parquet File generated by AppendingParquetOutputFormat should be zero padded**

When I use Parquet File as a output file using ParquetOutputFormat#getDefaultWorkFile, the file name is not zero padded while RDD#saveAsText does zero padding.


---

* [SPARK-4737](https://issues.apache.org/jira/browse/SPARK-4737) | *Blocker* | **Prevent serialization errors from ever crashing the DAG scheduler**

Currently in Spark we assume that when tasks are serialized in the TaskSetManager that the serialization cannot fail. We assume this because upstream in the DAGScheduler we attempt to catch any serialization errors by serializing a single partition. However, in some cases this upstream test is not accurate - i.e. an RDD can have one partition that can serialize cleanly but not others.

Do do this in the proper way we need to catch and propagate the exception at the time of serialization. The tricky bit is making sure it gets propagated in the right way.


---

* [SPARK-4735](https://issues.apache.org/jira/browse/SPARK-4735) | *Minor* | **Spark SQL UDF doesn't support 0 arguments.**

To reproduce that with:

    val udf = () => {Seq(1,2,3)}
    sqlCtx.registerFunction("myudf", udf)
    sqlCtx.sql("select myudf() from tbl limit 1").collect.foreach(println)


---

* [SPARK-4733](https://issues.apache.org/jira/browse/SPARK-4733) | *Trivial* | **Add missing prameter comments in ShuffleDependency**

Add missing Javadoc comments in ShuffleDependency.


---

* [SPARK-4730](https://issues.apache.org/jira/browse/SPARK-4730) | *Major* | **Warn against deprecated YARN settings**

Yarn currently reads from SPARK\_MASTER\_MEMORY and SPARK\_WORKER\_MEMORY. If you have these settings leftover from a standalone cluster setup and you try to run Spark on Yarn on the same cluster, then your executors suddenly get the amount of memory specified through SPARK\_WORKER\_MEMORY.

This behavior is due in large part to backward compatibility. However, we should log a warning against the use of these variables at the very least.


---

* [SPARK-4728](https://issues.apache.org/jira/browse/SPARK-4728) | *Minor* | **Add exponential, log normal, and gamma distributions to data generator to MLlib**

MLlib supports sampling from normal, uniform, and Poisson distributions.  

I'd like to add support for sampling from exponential, gamma, and log normal distributions, using the features of math3 like the other generators.

Please assign this to me.


---

* [SPARK-4720](https://issues.apache.org/jira/browse/SPARK-4720) | *Major* | **Remainder should also return null if the divider is 0.**

This is a follow-up of SPARK-4593.


---

* [SPARK-4719](https://issues.apache.org/jira/browse/SPARK-4719) | *Major* | **Consolidate various narrow dep RDD classes with MapPartitionsRDD**

Seems like we don't really need MappedRDD, MappedValuesRDD, FlatMappedValuesRDD, FilteredRDD, GlommedRDD. They can all be implemented directly using MapPartitionsRDD.


---

* [SPARK-4714](https://issues.apache.org/jira/browse/SPARK-4714) | *Minor* | **BlockManager should check whether blocks have already been removed Checking block is null or not after having gotten info.lock in remove block method**

in removeBlock()/ dropOldBlock()/ dropFromMemory()
all have the same logic:
1. info = blockInfo.get(id)
2. if (info != null)
3. info.synchronized

there may be a possibility that while one thread got info.lock while the previous thread already removed from blockinfo in info.lock. 

but one thing in current code,  That not check info is null or not, while get info.lock to remove block, will not cause any errors.


---

* [SPARK-4713](https://issues.apache.org/jira/browse/SPARK-4713) | *Minor* | **SchemaRDD.unpersist() should not raise exception if it is not cached.**

Unpersist a uncached RDD, will not raise exception, for example:
{panel}
val data = Array(1, 2, 3, 4, 5)
val distData = sc.parallelize(data)
distData.unpersist(true)
{panel}

But the SchemaRDD will throws exception if the SchemaRDD is not cached. Since SchemaRDD is the subclasses of the RDD, we should follow the same behavior.


---

* [SPARK-4707](https://issues.apache.org/jira/browse/SPARK-4707) | *Critical* | **Reliable Kafka Receiver can lose data if the block generator fails to store data**

The Reliable Kafka Receiver commits offsets only when events are actually stored, which ensures that on restart we will actually start where we left off. But if the failure happens in the store() call, and the block generator reports an error the receiver does not do anything and will continue reading from the current offset and not the last commit. This means that messages between the last commit and the current offset will be lost. 

I will send a PR for this soon - I have a patch which needs some minor fixes, which I need to test.


---

* [SPARK-4700](https://issues.apache.org/jira/browse/SPARK-4700) | *Major* | **Add Http support to Spark Thrift server**

Currently thrift only supports TCP connection. 

The JIRA is to add HTTP support to spark thrift server in addition to the TCP protocol. Both TCP and HTTP are supported by Hive today. HTTP is more secure and used often in Windows.


---

* [SPARK-4697](https://issues.apache.org/jira/browse/SPARK-4697) | *Major* | **System properties should override environment variables**

I found some arguments in yarn module take environment variables before system properties while the latter override the former in core module.
This should be changed in org.apache.spark.deploy.yarn.ClientArguments and org.apache.spark.scheduler.cluster.YarnClientSchedulerBackend.


---

* [SPARK-4694](https://issues.apache.org/jira/browse/SPARK-4694) | *Major* | **Long-run user thread(such as HiveThriftServer2) causes the 'process leak' in yarn-client mode**

Recently when I use the Yarn HA mode to test the HiveThriftServer2 I found a problem that the driver can't exit by itself.
To reappear it, you can do as fellow:
1.use yarn HA mode and set am.maxAttemp = 1for convenience
2.kill the active resouce manager in cluster

The expect result is just failed, because the maxAttemp was 1.

But the actual result is that: all executor was ended but the driver was still there and never close.


---

* [SPARK-4693](https://issues.apache.org/jira/browse/SPARK-4693) | *Minor* | **PruningPredicates may be wrong if predicates contains an empty AttributeSet() references**

The sql "select * from spark\_test::for\_test where abs(20141202) is not null" has predicates=List(IS NOT NULL HiveSimpleUdf#org.apache.hadoop.hive.ql.udf.UDFAbs(20141202)) and 
partitionKeyIds=AttributeSet(). PruningPredicates is List(IS NOT NULL HiveSimpleUdf#org.apache.hadoop.hive.ql.udf.UDFAbs(20141202)). Then the exception "java.lang.IllegalArgumentException: requirement failed: Partition pruning predicates only supported for partitioned tables." is thrown.
The sql "select * from spark\_test::for\_test\_partitioned\_table where abs(20141202) is not null and type\_id=11 and platform = 3" with partitioned key insert\_date has predicates=List(IS NOT NULL HiveSimpleUdf#org.apache.hadoop.hive.ql.udf.UDFAbs(20141202), (type\_id#12 = 11), (platform#8 = 3)) and partitionKeyIds=AttributeSet(insert\_date#24). PruningPredicates is List(IS NOT NULL HiveSimpleUdf#org.apache.hadoop.hive.ql.udf.UDFAbs(20141202)).


---

* [SPARK-4692](https://issues.apache.org/jira/browse/SPARK-4692) | *Minor* | **Support ! boolean logic operator like NOT**

select * from for\_test where !(col1 > col2)


---

* [SPARK-4691](https://issues.apache.org/jira/browse/SPARK-4691) | *Minor* | **Restructure a few lines in shuffle code**

aggregator and mapSideCombine judgement in 
HashShuffleWriter.scala 
SortShuffleWriter.scala
HashShuffleReader.scala


---

* [SPARK-4688](https://issues.apache.org/jira/browse/SPARK-4688) | *Critical* | **Have a single shared network timeout in Spark**

We have several different timeouts, but in most cases users just want to set something that is large enough that they can avoid GC pauses. We should have a single conf "spark.network.timeout" that is used as the default timeout for all network interactions. This can replace the following timeouts:

{code}
spark.core.connection.ack.wait.timeout
spark.akka.timeout  
spark.storage.blockManagerSlaveTimeoutMs  (undocumented)
spark.shuffle.io.connectionTimeout (undocumented)
{code}

Of course, for compatibility we should respect the old ones when they are set. This idea was proposed originally by [~rxin] and I'm paraphrasing his suggestion here.


---

* [SPARK-4687](https://issues.apache.org/jira/browse/SPARK-4687) | *Major* | **SparkContext#addFile doesn't keep file folder information**

Files added with SparkContext#addFile are loaded with Utils#fetchFile before a task starts. However, Utils#fetchFile puts all files under the Spart root on the worker node. We should have an option to keep the folder information.


---

* [SPARK-4682](https://issues.apache.org/jira/browse/SPARK-4682) | *Major* | **Consolidate various 'Clock' classes**

Spark currently has at four different {{Clock}} classes for mocking out wall-clock time, most of which are nearly identical.  We should replace all of these by one Clock class that lives in the utilities package.


---

* [SPARK-4674](https://issues.apache.org/jira/browse/SPARK-4674) | *Minor* | **Refactor getCallSite in Utils**

The current version of `getCallSite` visits the collection of `StackTraceElement` twice. However, it is unnecessary since we can perform our work with a single visit. We also do not need to keep filtered `StackTraceElement`.


---

* [SPARK-4673](https://issues.apache.org/jira/browse/SPARK-4673) | *Major* | **Optimizing limit using coalesce**

Now limit used ShuffledRDD and HashPartitioner to repartition 1 which leads to shuffle.


---

* [SPARK-4671](https://issues.apache.org/jira/browse/SPARK-4671) | *Major* | **Streaming block need not to replicate 2 copies when WAL is enabled**

Generated streaming blocks should not be replicated to another node when WAL is enabled, since WAL is already fault tolerant, this will hurt the throughput of streaming application.


---

* [SPARK-4664](https://issues.apache.org/jira/browse/SPARK-4664) | *Major* | **Overflow of `maxFrameSizeBytes`**

If `spark.akka.frameSize` > 2047, it will overflow and become negative. Should have some assertion in `maxFrameSizeBytes` to warn people.


---

* [SPARK-4662](https://issues.apache.org/jira/browse/SPARK-4662) | *Major* | **Whitelist more Hive unittest**

Whitelist more hive unit test:

"create\_like\_tbl\_props"
"udf5"
"udf\_java\_method"
"decimal\_1"
"udf\_pmod"
"udf\_to\_double"
"udf\_to\_float"
"udf7" (this will fail in Hive 0.12)


---

* [SPARK-4660](https://issues.apache.org/jira/browse/SPARK-4660) | *Critical* | **JavaSerializer uses wrong classloader**

During testing we found failures when trying to load some classes of the user application:

{noformat}
ERROR 2014-11-29 20:01:56 org.apache.spark.storage.BlockManagerWorker: Exception handling buffer message
java.lang.ClassNotFoundException: org.apache.spark.demo.HttpReceiverCases$HttpRequest
	at java.net.URLClassLoader$1.run(URLClassLoader.java:366)
	at java.net.URLClassLoader$1.run(URLClassLoader.java:355)
	at java.security.AccessController.doPrivileged(Native Method)
	at java.net.URLClassLoader.findClass(URLClassLoader.java:354)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:425)
	at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:308)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:358)
	at java.lang.Class.forName0(Native Method)
	at java.lang.Class.forName(Class.java:270)
	at org.apache.spark.serializer.JavaDeseriali
zationStream$$anon$1.resolveClass(JavaSerializer.scala:59)
	at java.io.ObjectInputStream.readNonProxyDesc(ObjectInputStream.java:1612)
	at java.io.ObjectInputStream.readClassDesc(ObjectInputStream.java:1517)
	at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1771)
	at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1350)
	at java.io.ObjectInputStream.readObject(ObjectInputStream.java:370)
	at org.apache.spark.serializer.JavaDeserializationStream.readObject(JavaSerializer.scala:62)
	at org.apache.spark.serializer.DeserializationStream$$anon$1.getNext(Serializer.scala:133)
	at org.apache.spark.util.NextIterator.hasNext(NextIterator.scala:71)
	at org.apache.spark.storage.MemoryStore.unrollSafely(MemoryStore.scala:235)
	at org.apache.spark.storage.MemoryStore.putIterator(MemoryStore.scala:126)
	at org.apache.spark.storage.MemoryStore.putIterator(MemoryStore.scala:104)
	at org.apache.spark.storage.MemoryStore.putBytes(MemoryStore.scala:76)
	at org.apache.spark.storage.BlockManager.doPut(BlockManager.scala:748)
	at org.apache.spark.storage.BlockManager.putBytes(BlockManager.scala:639)
	at org.apache.spark.storage.BlockManagerWorker.putBlock(BlockManagerWorker.scala:92)
	at org.apache.spark.storage.BlockManagerWorker.processBlockMessage(BlockManagerWorker.scala:73)
	at org.apache.spark.storage.BlockManagerWorker$$anonfun$2.apply(BlockManagerWorker.scala:48)
	at org.apache.spark.storage.BlockManagerWorker$$anonfun$2.apply(BlockManagerWorker.scala:48)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.Iterator$class.foreach(Iterator.scala:727)
	at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
	at scala.collection.IterableLike$class.foreach(IterableLike.scala:72)
	at org.apache.spark.storage.BlockMessageArray.foreach(BlockMessageArray.scala:28)
	at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
	at org.apache.spark.storage.BlockMessageArray.map(BlockMessageArray.scala:28)
	at org.apache.spark.storage.BlockManagerWorker.onBlockMessageReceive(BlockManagerWorker.scala:48)
	at org.apache.spark.storage.BlockManagerWorker$$anonfun$1.apply(BlockManagerWorker.scala:38)
	at org.apache.spark.storage.BlockManagerWorker$$anonfun$1.apply(BlockManagerWorker.scala:38)
	at org.apache.spark.network.ConnectionManager.org$apache$spark$network$ConnectionManager$$handleMessage(ConnectionManager.scala:682)
	at org.apache.spark.network.ConnectionManager$$anon$10.run(ConnectionManager.scala:520)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:744)
{noformat}


---

* [SPARK-4642](https://issues.apache.org/jira/browse/SPARK-4642) | *Minor* | **Documents about running-on-YARN needs update**

Documents about running-on-YARN needs update

There are some parameters missing in the document about running-on-YARN page.
We need to add the descriptions about the following parameters:
  - spark.yarn.report.interval
  - spark.yarn.queue
  - spark.yarn.user.classpath.first
  - spark.yarn.scheduler.reporterThread.maxFailures

And the description about this default parameter is not strictly accurate:
  - spark.yarn.submit.file.replication


---

* [SPARK-4639](https://issues.apache.org/jira/browse/SPARK-4639) | *Minor* | **Pass maxIterations in as a parameter in Analyzer**

fix a TODO in Analyzer: 
// TODO: pass this in as a parameter
 val fixedPoint = FixedPoint(100)


---

* [SPARK-4632](https://issues.apache.org/jira/browse/SPARK-4632) | *Critical* | **Upgrade MQTT dependency to use mqtt-client 1.0.1**

mqtt client 0.4.0 was removed from the Eclipse Paho repository, and hence is breaking Spark build.


---

* [SPARK-4631](https://issues.apache.org/jira/browse/SPARK-4631) | *Critical* | **Add real unit test for MQTT**

A real unit test that actually transfers data to ensure that the MQTTUtil is functional


---

* [SPARK-4623](https://issues.apache.org/jira/browse/SPARK-4623) | *Major* | **Add the some error infomation if using spark-sql in yarn-cluster mode**

If using spark-sql in yarn-cluster mode, print an error infomation just as the spark shell in yarn-cluster mode.


---

* [SPARK-4618](https://issues.apache.org/jira/browse/SPARK-4618) | *Major* | **Make foreign DDL commands options case-insensitive**

Make foreign DDL commands options case-insensitive
So flowing cmd worked
```
      create temporary table normal\_parquet
      USING org.apache.spark.sql.parquet
      OPTIONS (
        PATH '/xxx/data'
      )
```


---

* [SPARK-4606](https://issues.apache.org/jira/browse/SPARK-4606) | *Major* | **SparkSubmitDriverBootstrapper does not propagate EOF to child JVM**

Run this with "spark.driver.extraJavaOptions" set in your spark-defaults.conf:

{code}
  echo "" | spark-shell --master local -Xnojline
{code}

You'll end up with a child process that cannot read from stdin (you can CTRL-C out of it though). That's because when the bootstrapper's stdin reaches EOF, that is not propagated to the child JVM that's actually doing the reading.


---

* [SPARK-4601](https://issues.apache.org/jira/browse/SPARK-4601) | *Major* | **Call site of jobs generated by streaming incorrect in Spark UI**

When running the NetworkWordCount, the description of the word count jobs are set as "getCallsite at DStream:xxx" . This should be set to the line number of the streaming application that has the output operation that led to the job being created. This is because the callsite is incorrectly set in the thread launching the jobs.


---

* [SPARK-4595](https://issues.apache.org/jira/browse/SPARK-4595) | *Blocker* | **Spark MetricsServlet is not worked because of initialization ordering**

Web UI is initialized before MetricsSystem is started, at that time MetricsSerlvet is not yet created, which will make MetricsServlet fail to register  into web UI. 

Instead MetricsServlet handler should be added to the web UI after MetricsSystem is started.


---

* [SPARK-4586](https://issues.apache.org/jira/browse/SPARK-4586) | *Critical* | **Python API for ML Pipeline**

Add Python API to the newly added ML pipeline and parameters. The initial design doc is posted here: https://docs.google.com/document/d/1vL-4f5Xm-7t-kwVSaBylP\_ZPrktPZjaOb2dWONtZU2s/edit?usp=sharing


---

* [SPARK-4585](https://issues.apache.org/jira/browse/SPARK-4585) | *Major* | **Spark dynamic executor allocation shouldn't use maxExecutors as initial number**

With SPARK-3174, one can configure a minimum and maximum number of executors for a Spark application on Yarn. However, the application always starts with the maximum. It seems more reasonable, at least for Hive on Spark, to start from the minimum and scale up as needed up to the maximum.


---

* [SPARK-4579](https://issues.apache.org/jira/browse/SPARK-4579) | *Major* | **Scheduling Delay appears negative**

!https://cloud.githubusercontent.com/assets/455755/5174438/23d08604-73ff-11e4-9a76-97233b610544.png!


---

* [SPARK-4574](https://issues.apache.org/jira/browse/SPARK-4574) | *Blocker* | **Adding support for defining schema in foreign DDL commands.**

Adding support for defining schema in foreign DDL commands. Now foreign DDL support commands like:

{code}
   CREATE TEMPORARY TABLE avroTable
   USING org.apache.spark.sql.avro
   OPTIONS (path "../hive/src/test/resources/data/files/episodes.avro")
{code}


Let user can define schema instead of infer from file, so we can support ddl command as follows:

{code}
   CREATE TEMPORARY TABLE avroTable(a int, b string)
   USING org.apache.spark.sql.avro
   OPTIONS (path "../hive/src/test/resources/data/files/episodes.avro")
{code}


---

* [SPARK-4573](https://issues.apache.org/jira/browse/SPARK-4573) | *Major* | **Support SettableStructObjectInspector for function "wrap" in HiveObjectInspectors**

Hive UDAF may create an customized object constructed by SettableStructObjectInspector, this is critical when integrate Hive UDAF with the refactor-ed UDAF interface.


---

* [SPARK-4571](https://issues.apache.org/jira/browse/SPARK-4571) | *Major* | **History server shows negative time**

See attachment


---

* [SPARK-4570](https://issues.apache.org/jira/browse/SPARK-4570) | *Minor* | **Add broadcast  join to left semi join**

For now, spark use broadcast join instead of hash join to optimize {{inner join}} when the size of one side data did not reach the {{AUTO\_BROADCASTJOIN\_THRESHOLD}}
However,Spark SQL will perform shuffle operations on each child relations while executing {{left semi join}}  is more suitable for optimiztion with broadcast join. 
We are planning to create a{{BroadcastLeftSemiJoinHash}} to implement the broadcast join for {{left semi join}}


---

* [SPARK-4569](https://issues.apache.org/jira/browse/SPARK-4569) | *Trivial* | **Rename "externalSorting" in Aggregator**

While technically all spilling in Spark does result in sorting, calling this variable externalSorting makes it seem like ExternalSorter will be used, when in fact it just means whether spilling is enabled.


---

* [SPARK-4553](https://issues.apache.org/jira/browse/SPARK-4553) | *Blocker* | **query for parquet table with string fields in spark sql hive get binary result**

run 
create table test\_parquet(key int, value string) stored as parquet;
insert into table test\_parquet select * from src;
select * from test\_parquet;
get result as follow

...
282 [B@38fda3b
138 [B@1407a24
238 [B@12de6fb
419 [B@6c97695
15 [B@4885067
118 [B@156a8d3
72 [B@65d20dd
90 [B@4c18906
307 [B@60b24cc
19 [B@59cf51b
435 [B@39fdf37
10 [B@4f799d7
277 [B@3950951
273 [B@596bf4b
306 [B@3e91557
224 [B@3781d61
309 [B@2d0d128


---

* [SPARK-4547](https://issues.apache.org/jira/browse/SPARK-4547) | *Minor* | **OOM when making bins in BinaryClassificationMetrics**

Also following up on http://mail-archives.apache.org/mod\_mbox/spark-dev/201411.mbox/%3CCAMAsSdK4s4TNkf3\_ecLC6yD-pLpys\_PpT3WB7Tp6=yoXUxFpMA@mail.gmail.com%3E -- this one I intend to make a PR for a bit later. The conversation was basically:

{quote}
Recently I was using BinaryClassificationMetrics to build an AUC curve for a classifier over a reasonably large number of points (~12M). The scores were all probabilities, so tended to be almost entirely unique.

The computation does some operations by key, and this ran out of memory. It's something you can solve with more than the default amount of memory, but in this case, it seemed unuseful to create an AUC curve with such fine-grained resolution.

I ended up just binning the scores so there were ~1000 unique values
and then it was fine.
{quote}

and:

{quote}
Yes, if there are many distinct values, we need binning to compute the AUC curve. Usually, the scores are not evenly distribution, we cannot simply truncate the digits. Estimating the quantiles for binning is necessary, similar to RangePartitioner:

https://github.com/apache/spark/blob/master/core/src/main/scala/org/apache/spark/Partitioner.scala#L104

Limiting the number of bins is definitely useful.
{quote}


---

* [SPARK-4537](https://issues.apache.org/jira/browse/SPARK-4537) | *Major* | **Add 'processing delay' and 'totalDelay' to the metrics reported by the Spark Streaming subsystem**

As the Spark Streaming tuning guide indicates, the key indicators of a healthy streaming job are:
- Processing Time
- Total Delay

The Spark UI page for the Streaming job [1] shows these two indicators but the metrics source for Spark Streaming (StreamingSource.scala)  [2] does not.

Adding these metrics will allow external monitoring systems that consume the Spark metrics interface to track these two critical pieces of information on a streaming job performance.


[1] https://github.com/apache/spark/blob/master/streaming/src/main/scala/org/apache/spark/streaming/ui/StreamingPage.scala#L127

[2] https://github.com/apache/spark/blob/master/streaming/src/main/scala/org/apache/spark/streaming/StreamingSource.scala


---

* [SPARK-4535](https://issues.apache.org/jira/browse/SPARK-4535) | *Minor* | **Fix the error in comments**

change "NetworkInputDStream" to "ReceiverInputDStream"
change "ReceiverInputTracker" to "ReceiverTracker"


---

* [SPARK-4527](https://issues.apache.org/jira/browse/SPARK-4527) | *Minor* | **Add BroadcastNestedLoopJoin operator selection testsuite**

In `JoinSuite` add `BroadcastNestedLoopJoin` operator selection


---

* [SPARK-4520](https://issues.apache.org/jira/browse/SPARK-4520) | *Critical* | **SparkSQL exception when reading certain columns from a parquet file**

I am seeing this issue with spark sql throwing an exception when trying to read selective columns from a thrift parquet file and also when caching them.
On some further digging, I was able to narrow it down to at-least one particular column type: map<string, set<string>> to be causing this issue. To reproduce this I created a test thrift file with a very basic schema and stored some sample data in a parquet file:

Test.thrift
===========
{code}
typedef binary SomeId

enum SomeExclusionCause {
  WHITELIST = 1,
  HAS\_PURCHASE = 2,
}

struct SampleThriftObject {
  10: string col\_a;
  20: string col\_b;
  30: string col\_c;
  40: optional map<SomeExclusionCause, set<SomeId>> col\_d;
}
{code}
=============

And loading the data in spark through schemaRDD:
{code}
import org.apache.spark.sql.SchemaRDD
val sqlContext = new org.apache.spark.sql.SQLContext(sc);
val parquetFile = "/path/to/generated/parquet/file"
val parquetFileRDD = sqlContext.parquetFile(parquetFile)
parquetFileRDD.printSchema
root
 |-- col\_a: string (nullable = true)
 |-- col\_b: string (nullable = true)
 |-- col\_c: string (nullable = true)
 |-- col\_d: map (nullable = true)
 |    |-- key: string
 |    |-- value: array (valueContainsNull = true)
 |    |    |-- element: string (containsNull = false)

parquetFileRDD.registerTempTable("test")
sqlContext.cacheTable("test")
sqlContext.sql("select col\_a from test").collect() <-- see the exception stack here 
{code}
{code}
org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 0.0 failed 1 times, most recent failure: Lost task 0.0 in stage 0.0 (TID 0, localhost): parquet.io.ParquetDecodingException: Can not read value at 0 in block -1 in file file:/tmp/xyz/part-r-00000.parquet
	at parquet.hadoop.InternalParquetRecordReader.nextKeyValue(InternalParquetRecordReader.java:213)
	at parquet.hadoop.ParquetRecordReader.nextKeyValue(ParquetRecordReader.java:204)
	at org.apache.spark.rdd.NewHadoopRDD$$anon$1.hasNext(NewHadoopRDD.scala:145)
	at org.apache.spark.InterruptibleIterator.hasNext(InterruptibleIterator.scala:39)
	at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
	at scala.collection.Iterator$$anon$14.hasNext(Iterator.scala:388)
	at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
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
	at org.apache.spark.rdd.RDD$$anonfun$16.apply(RDD.scala:780)
	at org.apache.spark.rdd.RDD$$anonfun$16.apply(RDD.scala:780)
	at org.apache.spark.SparkContext$$anonfun$runJob$3.apply(SparkContext.scala:1223)
	at org.apache.spark.SparkContext$$anonfun$runJob$3.apply(SparkContext.scala:1223)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:61)
	at org.apache.spark.scheduler.Task.run(Task.scala:56)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:195)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)

Caused by: java.lang.ArrayIndexOutOfBoundsException: -1
	at java.util.ArrayList.elementData(ArrayList.java:418)
	at java.util.ArrayList.get(ArrayList.java:431)
	at parquet.io.GroupColumnIO.getLast(GroupColumnIO.java:95)
	at parquet.io.GroupColumnIO.getLast(GroupColumnIO.java:95)
	at parquet.io.PrimitiveColumnIO.getLast(PrimitiveColumnIO.java:80)
	at parquet.io.PrimitiveColumnIO.isLast(PrimitiveColumnIO.java:74)
	at parquet.io.RecordReaderImplementation.<init>(RecordReaderImplementation.java:282)
	at parquet.io.MessageColumnIO$1.visit(MessageColumnIO.java:131)
	at parquet.io.MessageColumnIO$1.visit(MessageColumnIO.java:96)
	at parquet.filter2.compat.FilterCompat$NoOpFilter.accept(FilterCompat.java:136)
	at parquet.io.MessageColumnIO.getRecordReader(MessageColumnIO.java:96)
	at parquet.hadoop.InternalParquetRecordReader.checkRead(InternalParquetRecordReader.java:126)
	at parquet.hadoop.InternalParquetRecordReader.nextKeyValue(InternalParquetRecordReader.java:193)
	... 27 more
{code}

If you take out the col\_d from the thrift file, the problem goes away. The problem also shows up when trying to read the particular column without caching the table first. The same file can be dumped/read using parquet-tools just fine. Here is the file dump using parquet-tools:
{code}
row group 0 
--------------------------------------------------------------------------------
col\_a:           BINARY UNCOMPRESSED DO:0 FPO:4 SZ:89/89/1.00 VC:9 ENC [more]...
col\_b:           BINARY UNCOMPRESSED DO:0 FPO:93 SZ:89/89/1.00 VC:9 EN [more]...
col\_c:           BINARY UNCOMPRESSED DO:0 FPO:182 SZ:89/89/1.00 VC:9 E [more]...
col\_d:          
.map:           
..key:           BINARY UNCOMPRESSED DO:0 FPO:271 SZ:29/29/1.00 VC:9 E [more]...
..value:        
...value\_tuple:  BINARY UNCOMPRESSED DO:0 FPO:300 SZ:29/29/1.00 VC:9 E [more]...

    col\_a TV=9 RL=0 DL=1
    ----------------------------------------------------------------------------
    page 0:  DLE:RLE RLE:BIT\_PACKED VLE:PLAIN SZ:60 VC:9

    col\_b TV=9 RL=0 DL=1
    ----------------------------------------------------------------------------
    page 0:  DLE:RLE RLE:BIT\_PACKED VLE:PLAIN SZ:60 VC:9

    col\_c TV=9 RL=0 DL=1
    ----------------------------------------------------------------------------
    page 0:  DLE:RLE RLE:BIT\_PACKED VLE:PLAIN SZ:60 VC:9

    col\_d.map.key TV=9 RL=1 DL=2
    ----------------------------------------------------------------------------
    page 0:  DLE:RLE RLE:RLE VLE:PLAIN SZ:12 VC:9

    col\_d.map.value.value\_tuple TV=9 RL=2 DL=4
    ----------------------------------------------------------------------------
    page 0:  DLE:RLE RLE:RLE VLE:PLAIN SZ:12 VC:9

BINARY col\_a 
--------------------------------------------------------------------------------
*** row group 1 of 1, values 1 to 9 *** 
value 1: R:1 D:1 V:a1
value 2: R:1 D:1 V:a2
value 3: R:1 D:1 V:a3
value 4: R:1 D:1 V:a4
value 5: R:1 D:1 V:a5
value 6: R:1 D:1 V:a6
value 7: R:1 D:1 V:a7
value 8: R:1 D:1 V:a8
value 9: R:1 D:1 V:a9

BINARY col\_b 
--------------------------------------------------------------------------------
*** row group 1 of 1, values 1 to 9 *** 
value 1: R:1 D:1 V:b1
value 2: R:1 D:1 V:b2
value 3: R:1 D:1 V:b3
value 4: R:1 D:1 V:b4
value 5: R:1 D:1 V:b5
value 6: R:1 D:1 V:b6
value 7: R:1 D:1 V:b7
value 8: R:1 D:1 V:b8
value 9: R:1 D:1 V:b9

BINARY col\_c 
--------------------------------------------------------------------------------
*** row group 1 of 1, values 1 to 9 *** 
value 1: R:1 D:1 V:c1
value 2: R:1 D:1 V:c2
value 3: R:1 D:1 V:c3
value 4: R:1 D:1 V:c4
value 5: R:1 D:1 V:c5
value 6: R:1 D:1 V:c6
value 7: R:1 D:1 V:c7
value 8: R:1 D:1 V:c8
value 9: R:1 D:1 V:c9

BINARY col\_d.map.key 
--------------------------------------------------------------------------------
*** row group 1 of 1, values 1 to 9 *** 
value 1: R:0 D:0 V:<null>
value 2: R:0 D:0 V:<null>
value 3: R:0 D:0 V:<null>
value 4: R:0 D:0 V:<null>
value 5: R:0 D:0 V:<null>
value 6: R:0 D:0 V:<null>
value 7: R:0 D:0 V:<null>
value 8: R:0 D:0 V:<null>
value 9: R:0 D:0 V:<null>

BINARY col\_d.map.value.value\_tuple 
--------------------------------------------------------------------------------
*** row group 1 of 1, values 1 to 9 *** 
value 1: R:0 D:0 V:<null>
value 2: R:0 D:0 V:<null>
value 3: R:0 D:0 V:<null>
value 4: R:0 D:0 V:<null>
value 5: R:0 D:0 V:<null>
value 6: R:0 D:0 V:<null>
value 7: R:0 D:0 V:<null>
value 8: R:0 D:0 V:<null>
value 9: R:0 D:0 V:<null>
{code}


---

* [SPARK-4512](https://issues.apache.org/jira/browse/SPARK-4512) | *Major* | **Unresolved Attribute Exception for sort by**

It will cause exception while do query like:

SELECT key+key FROM src sort by value;


---

* [SPARK-4508](https://issues.apache.org/jira/browse/SPARK-4508) | *Major* | **Native Date type for SQL92 Date**

Store daysSinceEpoch as an Int(4 bytes), instead of using java.sql.Date(8 bytes as Long) in catalyst row.


---

* [SPARK-4507](https://issues.apache.org/jira/browse/SPARK-4507) | *Minor* | **PR merge script should support closing multiple JIRA tickets**

For pull requests that reference multiple JIRAs in their titles, it would be helpful if the PR merge script offered to close all of them.


---

* [SPARK-4505](https://issues.apache.org/jira/browse/SPARK-4505) | *Minor* | **Reduce the memory usage of CompactBuffer[T] when T is a primitive type**

If CompactBuffer has a ClassTag parameter, CompactBuffer can create primitive arrays for primitive types. It will reduce the memory usage for primitive types significantly and only pay minor performance lost.


---

* [SPARK-4504](https://issues.apache.org/jira/browse/SPARK-4504) | *Minor* | **run-example fails if multiple example jars present in target folder**

Giving following error:

bin/run-example: line 39: [: /mnt/d/spark/spark/examples/target/scala-2.10/spark-examples-1.1.0-SNAPSHOT-hadoop1.0.4.jar: binary operator expected
Failed to find Spark examples assembly in /mnt/d/spark/spark/lib or /mnt/d/spark/spark/examples/target
You need to build Spark before running this program


---

* [SPARK-4501](https://issues.apache.org/jira/browse/SPARK-4501) | *Major* | **Create build/mvn to automatically download maven/zinc/scalac**

For a long time we've had the sbt/sbt and this works well for users who want to build Spark with minimal dependencies (only Java). It would be nice to generalize this to maven as well and have build/sbt and build/mvn, where build/mvn was a script that downloaded Maven, Zinc, and Scala locally and set them up correctly. This would be totally "opt in" and people using system maven would be able to continue doing so.

My sense is that very few maven users are currently using Zinc even though from some basic tests I saw a huge improvement from using this. Also, having a simple way to use Zinc would make it easier to use Maven on our jenkins test machines.


---

* [SPARK-4494](https://issues.apache.org/jira/browse/SPARK-4494) | *Minor* | **IDFModel.transform() add support for single vector**

For now when using the tfidf implementation of mllib you have no other possibility to map your data back onto i.e. labels or ids than use a hackish way with ziping: {quote} 1. Persist input RDD. 2. Transform it to just vectors and apply IDFModel 3. zip with original RDD 4. transform label and new vector to LabeledPoint{quote}

Source:[http://stackoverflow.com/questions/26897908/spark-mllib-tfidf-implementation-for-logisticregression]

I think as in production alot of users want to map their data back to some identifier, it would be a good imporvement to allow using a single vector on IDFModel.transform()


---

* [SPARK-4493](https://issues.apache.org/jira/browse/SPARK-4493) | *Major* | **Don't pushdown Eq, NotEq, Lt, LtEq, Gt and GtEq predicates with nulls for Parquet**

Predicates like {{a = NULL}} and {{a < NULL}} can't be pushed down since Parquet {{Lt}}, {{LtEq}}, {{Gt}}, {{GtEq}} doesn't accept null value. Not that {{Eq}} and {{NotEq}} can only be used with {{null}} to represent predicates like {{a IS NULL}} and {{a IS NOT NULL}}.

However, normally this issue doesn't cause NPE because any value compared to {{NULL}} results {{NULL}}, and Spark SQL automatically optimizes out {{NULL}} predicate in the {{SimplifyFilters}} rule. Only testing code that intentionally disables the optimizer may trigger this issue. (That's why this issue is not marked as blocker).


---

* [SPARK-4483](https://issues.apache.org/jira/browse/SPARK-4483) | *Minor* | **Optimization about reduce memory costs during the HashOuterJoin**

In {{HashOuterJoin.scala}}, spark read data from both side of join operation before zip them together. It is a waste for memory. We are trying to read data from only one side, put them into hashmap, and then generate the {{JoinedRow}} with data from other side one by one.

Currently, we could only do this optimization for {{left outer join}} and {{right outer join}}. For {{full outer join}},  we will do somthing in another issue.


---

* [SPARK-4481](https://issues.apache.org/jira/browse/SPARK-4481) | *Major* | **Some comments for `updateStateByKey` are wrong**

The following `updateStateByKey` overloads have wrong description for `updateFunc`

{code:java}
  /**
   * @param updateFunc State update function. If `this` function returns None, then
   *                   corresponding state key-value pair will be eliminated. Note, that
   *                   this function may generate a different a tuple with a different key
   *                   than the input key. It is up to the developer to decide whether to
   *                   remember the partitioner despite the key being changed.
   */
  def updateStateByKey[S: ClassTag](
      updateFunc: (Iterator[(K, Seq[V], Option[S])]) => Iterator[(K, S)],
      partitioner: Partitioner,
      rememberPartitioner: Boolean
    ): DStream[(K, S)]

  /**
   * @param updateFunc State update function. If `this` function returns None, then
   *                   corresponding state key-value pair will be eliminated. Note, that
   *                   this function may generate a different a tuple with a different key
   *                   than the input key. It is up to the developer to decide whether to
   *                   remember the partitioner despite the key being changed.
   */
  def updateStateByKey[S: ClassTag](
      updateFunc: (Iterator[(K, Seq[V], Option[S])]) => Iterator[(K, S)],
      partitioner: Partitioner,
      rememberPartitioner: Boolean,
      initialRDD: RDD[(K, S)]
    ): DStream[(K, S)]
{code}

` If `this` function returns None, then corresponding state key-value pair will be eliminated.` should be removed.


---

* [SPARK-4465](https://issues.apache.org/jira/browse/SPARK-4465) | *Critical* | **runAsSparkUser doesn't affect TaskRunner in Mesos environment at all.**

runAsSparkUser enable classes using hadoop library to change an active user to spark User, however in Mesos environment, because the function calls before running within JNI, runAsSparkUser doesn't affect anything, and meaningless code. fix the Appropriate scope of function and remove meaningless code. That's a bug because of running program incorrectly. That's related to SPARK-3223 but setting framework user is not perfect solution in my tests.


---

* [SPARK-4461](https://issues.apache.org/jira/browse/SPARK-4461) | *Major* | **Pass java options to yarn master to handle system properties correctly.**

Currently spark read mapred-site.xml to get the class path. From hadoop 2.6, the library is shipped to cluster with distributed cache at run-time, and may not be available at every node manager. 

Instead of relying on mapred-site.xml, spark should handle this by its own, for example, through ADD\_JARs, SPARK\_CLASSPATH, etc


---

* [SPARK-4454](https://issues.apache.org/jira/browse/SPARK-4454) | *Critical* | **Race condition in DAGScheduler**

It seems to be a race condition in DAGScheduler that manifests on jobs with high concurrency:

{noformat}
 Exception in thread "main" java.util.NoSuchElementException: key not found: 35
        at scala.collection.MapLike$class.default(MapLike.scala:228)
        at scala.collection.AbstractMap.default(Map.scala:58)
        at scala.collection.mutable.HashMap.apply(HashMap.scala:64)
        at org.apache.spark.scheduler.DAGScheduler.getCacheLocs(DAGScheduler.scala:201)
        at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$getPreferredLocsInternal(DAGScheduler.scala:1292)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$getPreferredLocsInternal$2$$anonfun$apply$2.apply$mcVI$sp(DAGScheduler.scala:1307)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$getPreferredLocsInternal$2$$anonfun$apply$2.apply(DAGScheduler.scala:1306)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$getPreferredLocsInternal$2$$anonfun$apply$2.apply(DAGScheduler.scala:1306)
        at scala.collection.immutable.List.foreach(List.scala:318)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$getPreferredLocsInternal$2.apply(DAGScheduler.scala:1306)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$getPreferredLocsInternal$2.apply(DAGScheduler.scala:1304)
        at scala.collection.immutable.List.foreach(List.scala:318)
        at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$getPreferredLocsInternal(DAGScheduler.scala:1304)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$getPreferredLocsInternal$2$$anonfun$apply$2.apply$mcVI$sp(DAGScheduler.scala:1307)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$getPreferredLocsInternal$2$$anonfun$apply$2.apply(DAGScheduler.scala:1306)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$getPreferredLocsInternal$2$$anonfun$apply$2.apply(DAGScheduler.scala:1306)
        at scala.collection.immutable.List.foreach(List.scala:318)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$getPreferredLocsInternal$2.apply(DAGScheduler.scala:1306)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$getPreferredLocsInternal$2.apply(DAGScheduler.scala:1304)
        at scala.collection.immutable.List.foreach(List.scala:318)
        at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$getPreferredLocsInternal(DAGScheduler.scala:1304)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$getPreferredLocsInternal$2$$anonfun$apply$2.apply$mcVI$sp(DAGScheduler.scala:1307)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$getPreferredLocsInternal$2$$anonfun$apply$2.apply(DAGScheduler.scala:1306)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$getPreferredLocsInternal$2$$anonfun$apply$2.apply(DAGScheduler.scala:1306)
        at scala.collection.immutable.List.foreach(List.scala:318)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$getPreferredLocsInternal$2.apply(DAGScheduler.scala:1306)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$getPreferredLocsInternal$2.apply(DAGScheduler.scala:1304)
        at scala.collection.immutable.List.foreach(List.scala:318)
        at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$getPreferredLocsInternal(DAGScheduler.scala:1304)
        at org.apache.spark.scheduler.DAGScheduler.getPreferredLocs(DAGScheduler.scala:1275)
        at org.apache.spark.SparkContext.getPreferredLocs(SparkContext.scala:937)
        at org.apache.spark.rdd.PartitionCoalescer.currPrefLocs(CoalescedRDD.scala:175)
        at org.apache.spark.rdd.PartitionCoalescer$LocationIterator$$anonfun$4$$anonfun$apply$2.apply(CoalescedRDD.scala:192)
        at org.apache.spark.rdd.PartitionCoalescer$LocationIterator$$anonfun$4$$anonfun$apply$2.apply(CoalescedRDD.scala:191)
        at scala.collection.Iterator$$anon$13.hasNext(Iterator.scala:371)
        at scala.collection.Iterator$$anon$12.hasNext(Iterator.scala:350)
        at scala.collection.Iterator$$anon$12.hasNext(Iterator.scala:350)
        at org.apache.spark.rdd.PartitionCoalescer$LocationIterator.next(CoalescedRDD.scala:203)
        at org.apache.spark.rdd.PartitionCoalescer.setupGroups(CoalescedRDD.scala:257)
        at org.apache.spark.rdd.PartitionCoalescer.run(CoalescedRDD.scala:338)
        at org.apache.spark.rdd.CoalescedRDD.getPartitions(CoalescedRDD.scala:84)
        at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:204)
        at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:202)
        at scala.Option.getOrElse(Option.scala:120)
        at org.apache.spark.rdd.RDD.partitions(RDD.scala:202)
        at org.apache.spark.SparkContext.runJob(SparkContext.scala:1150)
        at org.apache.spark.rdd.PairRDDFunctions.saveAsHadoopDataset(PairRDDFunctions.scala:995)
        at me.wwsga.driveclub.EnhancedRDD.saveAsPartitioned(Enhanced.scala:53)
        at Import$$anonfun$22$$anonfun$apply$9$$anonfun$apply$10.apply(Import.scala:186)
        at Import$$anonfun$22$$anonfun$apply$9$$anonfun$apply$10.apply(Import.scala:181)
        at scala.concurrent.impl.Future$PromiseCompletingRunnable.liftedTree1$1(Future.scala:24)
        at scala.concurrent.impl.Future$PromiseCompletingRunnable.run(Future.scala:24)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
        at java.lang.Thread.run(Thread.java:745)
{noformat}

Code:
{noformat}
  private def getCacheLocs(rdd: RDD[\_]): Array[Seq[TaskLocation]] = {
    if (!cacheLocs.contains(rdd.id)) {
      val blockIds = rdd.partitions.indices.map(index => RDDBlockId(rdd.id, index)).toArray[BlockId]
      val locs = BlockManager.blockIdsToBlockManagers(blockIds, env, blockManagerMaster)
      cacheLocs(rdd.id) = blockIds.map { id =>
        locs.getOrElse(id, Nil).map(bm => TaskLocation(bm.host, bm.executorId))
      }
    }
    cacheLocs(rdd.id)
  }
{noformat}
Probably getOrElseUpdate pattern would be better for this code.


---

* [SPARK-4447](https://issues.apache.org/jira/browse/SPARK-4447) | *Critical* | **Remove layers of abstraction in YARN code no longer needed after dropping yarn-alpha**

For example, YarnRMClient and YarnRMClientImpl can be merged
YarnAllocator and YarnAllocationHandler can be merged


---

* [SPARK-4437](https://issues.apache.org/jira/browse/SPARK-4437) | *Major* | **Docs for difference between WholeTextFileRecordReader and WholeCombineFileRecordReader**

Tracking per this dev@ thread:

{quote}
On Sun, Nov 16, 2014 at 4:49 PM, Reynold Xin <rxin@databricks.com> wrote:
I don't think the code is immediately obvious.

Davies - I think you added the code, and Josh reviewed it. Can you guys
explain and maybe submit a patch to add more documentation on the whole
thing?

Thanks.


On Sun, Nov 16, 2014 at 3:22 AM, Vibhanshu Prasad <vibhanshugsoc2@gmail.com>
wrote:

> Hello Everyone,
>
> I am going through the source code of rdd and Record readers
> There are found 2 classes
>
> 1. WholeTextFileRecordReader
> 2. WholeCombineFileRecordReader  ( extends CombineFileRecordReader )
>
> The description of both the classes is perfectly similar.
>
> I am not able to understand why we have 2 classes. Is
> CombineFileRecordReader providing some extra advantage?
>
> Regards
> Vibhanshu
{quote}


---

* [SPARK-4430](https://issues.apache.org/jira/browse/SPARK-4430) | *Major* | **Apache RAT Checks fail spuriously on test files**

Several of my recent runs of {{./dev/run-tests}} have failed quickly due to Apache RAT checks, e.g.:

{code}
$ ./dev/run-tests

=========================================================================
Running Apache RAT checks
=========================================================================
Could not find Apache license headers in the following files:
 !????? /Users/ryan/c/spark/streaming/FailureSuite/b732c105-4fd3-4330-ba6d-a366b340c303/test/28
 !????? /Users/ryan/c/spark/streaming/FailureSuite/b732c105-4fd3-4330-ba6d-a366b340c303/test/29
 !????? /Users/ryan/c/spark/streaming/FailureSuite/b732c105-4fd3-4330-ba6d-a366b340c303/test/30
 !????? /Users/ryan/c/spark/streaming/FailureSuite/b98beebe-98b0-472a-b4a5-060bcd91e401/test/10
 !????? /Users/ryan/c/spark/streaming/FailureSuite/b98beebe-98b0-472a-b4a5-060bcd91e401/test/11
 !????? /Users/ryan/c/spark/streaming/FailureSuite/b98beebe-98b0-472a-b4a5-060bcd91e401/test/12
 !????? /Users/ryan/c/spark/streaming/FailureSuite/b98beebe-98b0-472a-b4a5-060bcd91e401/test/13
 !????? /Users/ryan/c/spark/streaming/FailureSuite/b98beebe-98b0-472a-b4a5-060bcd91e401/test/14
 !????? /Users/ryan/c/spark/streaming/FailureSuite/b98beebe-98b0-472a-b4a5-060bcd91e401/test/15
 !????? /Users/ryan/c/spark/streaming/FailureSuite/b98beebe-98b0-472a-b4a5-060bcd91e401/test/16
 !????? /Users/ryan/c/spark/streaming/FailureSuite/b98beebe-98b0-472a-b4a5-060bcd91e401/test/17
 !????? /Users/ryan/c/spark/streaming/FailureSuite/b98beebe-98b0-472a-b4a5-060bcd91e401/test/18
 !????? /Users/ryan/c/spark/streaming/FailureSuite/b98beebe-98b0-472a-b4a5-060bcd91e401/test/19
 !????? /Users/ryan/c/spark/streaming/FailureSuite/b98beebe-98b0-472a-b4a5-060bcd91e401/test/20
 !????? /Users/ryan/c/spark/streaming/FailureSuite/b98beebe-98b0-472a-b4a5-060bcd91e401/test/21
 !????? /Users/ryan/c/spark/streaming/FailureSuite/b98beebe-98b0-472a-b4a5-060bcd91e401/test/22
 !????? /Users/ryan/c/spark/streaming/FailureSuite/b98beebe-98b0-472a-b4a5-060bcd91e401/test/23
 !????? /Users/ryan/c/spark/streaming/FailureSuite/b98beebe-98b0-472a-b4a5-060bcd91e401/test/24
 !????? /Users/ryan/c/spark/streaming/FailureSuite/b98beebe-98b0-472a-b4a5-060bcd91e401/test/25
 !????? /Users/ryan/c/spark/streaming/FailureSuite/b98beebe-98b0-472a-b4a5-060bcd91e401/test/26
 !????? /Users/ryan/c/spark/streaming/FailureSuite/b98beebe-98b0-472a-b4a5-060bcd91e401/test/27
 !????? /Users/ryan/c/spark/streaming/FailureSuite/b98beebe-98b0-472a-b4a5-060bcd91e401/test/28
 !????? /Users/ryan/c/spark/streaming/FailureSuite/b98beebe-98b0-472a-b4a5-060bcd91e401/test/29
 !????? /Users/ryan/c/spark/streaming/FailureSuite/b98beebe-98b0-472a-b4a5-060bcd91e401/test/30
 !????? /Users/ryan/c/spark/streaming/FailureSuite/b98beebe-98b0-472a-b4a5-060bcd91e401/test/7
 !????? /Users/ryan/c/spark/streaming/FailureSuite/b98beebe-98b0-472a-b4a5-060bcd91e401/test/8
 !????? /Users/ryan/c/spark/streaming/FailureSuite/b98beebe-98b0-472a-b4a5-060bcd91e401/test/9
[error] Got a return code of 1 on line 114 of the run-tests script.
{code}

I think it's fair to say that these are not useful errors for {{run-tests}} to crash on. Ideally we could tell the linter which files we care about having it lint and which we don't.


---

* [SPARK-4409](https://issues.apache.org/jira/browse/SPARK-4409) | *Major* | **Additional (but limited) Linear Algebra Utils**

This ticket is to discuss the addition of a very limited number of local matrix manipulation and generation methods that would be helpful in the further development for algorithms on top of BlockMatrix (SPARK-3974), such as Randomized SVD, and Multi Model Training (SPARK-1486).
The proposed methods for addition are:
For `Matrix`
 -  map: maps the values in the matrix with a given function. Produces a new matrix.
 -  update: the values in the matrix are updated with a given function. Occurs in place.

Factory methods for `DenseMatrix`:
 -  *zeros: Generate a matrix consisting of zeros
 -  *ones: Generate a matrix consisting of ones
 -  *eye: Generate an identity matrix
 -  *rand: Generate a matrix consisting of i.i.d. uniform random numbers
 -  *randn: Generate a matrix consisting of i.i.d. gaussian random numbers
 -  *diag: Generate a diagonal matrix from a supplied vector
*These methods already exist in the factory methods for `Matrices`, however for cases where we require a `DenseMatrix`, you constantly have to add `.asInstanceOf[DenseMatrix]` everywhere, which makes the code "dirtier". I propose moving these functions to factory methods for `DenseMatrix` where the putput will be a `DenseMatrix` and the factory methods for `Matrices` will call these functions directly and output a generic `Matrix`.

Factory methods for `SparseMatrix`:
 -  speye: Identity matrix in sparse format. Saves a ton of memory when dimensions are large, especially in Multi Model Training, where each row requires being multiplied by a scalar.
 -  sprand: Generate a sparse matrix with a given density consisting of i.i.d. uniform random numbers.
 -  sprandn: Generate a sparse matrix with a given density consisting of i.i.d. gaussian random numbers.
 -  diag: Generate a diagonal matrix from a supplied vector, but is memory efficient, because it just stores the diagonal. Again, very helpful in Multi Model Training.

Factory methods for `Matrices`:
 -  Include all the factory methods given above, but return a generic `Matrix` rather than `SparseMatrix` or `DenseMatrix`.
 -  horzCat: Horizontally concatenate matrices to form one larger matrix. Very useful in both Multi Model Training, and for the repartitioning of BlockMatrix.
 -  vertCat: Vertically concatenate matrices to form one larger matrix. Very useful for the repartitioning of BlockMatrix.


---

* [SPARK-4406](https://issues.apache.org/jira/browse/SPARK-4406) | *Minor* | **SVD should check for k \< 1**

When SVD is called with k < 1, it still tries to compute the SVD, causing a lower-level error.  It should fail early.


---

* [SPARK-4405](https://issues.apache.org/jira/browse/SPARK-4405) | *Minor* | **Matrices.\* construction methods should check for rows x cols overflow**

Matrices has several methods which construct new all-0, all-1, or random matrices.  They take numRows, numCols as Int and multiply them to get the matrix size.  They should check for overflow before trying to create the matrix.


---

* [SPARK-4397](https://issues.apache.org/jira/browse/SPARK-4397) | *Minor* | **Reorganize 'implicit's to improve the API convenience**

As I said here, http://mail-archives.apache.org/mod\_mbox/spark-dev/201411.mbox/%3CCAPn6-YTeUwGqvGady=vUjX=9BL\_rE7wB5-DELBvFja842qmz-w@mail.gmail.com%3E
many people asked how to convert a RDD to a PairRDDFunctions.

If we can reorganize the `implicit`s properly, the API will more convenient without importing SparkContext.\_ explicitly.


---

* [SPARK-4387](https://issues.apache.org/jira/browse/SPARK-4387) | *Major* | **Refactoring python profiling code to make it extensible**

SPARK-3478 introduced python profiling for workers which is great but it would be nice to be able to change the profiler and output formats as needed. This is a refactoring of the code to allow that to happen.


---

* [SPARK-4383](https://issues.apache.org/jira/browse/SPARK-4383) | *Major* | **Delay scheduling doesn't work right when jobs have tasks with different locality levels**

Copied from mailing list discussion:

Now our application will load data from hdfs in the same spark cluster, it will get NODE\_LOCAL and RACK\_LOCAL level tasks during loading stage, if the tasks in loading stage have same locality level, ether NODE\_LOCAL or RACK\_LOCAL it works fine.
But if the tasks in loading stage get mixed locality level, such as 3 NODE\_LOCAL tasks, and 2 RACK\_LOCAL tasks, then the TaskSetManager of loading stage will submit the 3 NODE\_LOCAL tasks as soon as resources were offered, then wait for spark.locality.wait.node, which was set to 30 minutes, the 2 RACK\_LOCAL tasks will wait 30 minutes even though resources are available.

Fixing this is quite tricky -- do we need to track the locality level individually for each task?


---

* [SPARK-4381](https://issues.apache.org/jira/browse/SPARK-4381) | *Major* | **User should get warned when set spark.master with local in Spark Streaming**

User should get warned when spark.master is set to local, and no job is started in Spark Streaming.


---

* [SPARK-4377](https://issues.apache.org/jira/browse/SPARK-4377) | *Blocker* | **ZooKeeperPersistenceEngine: java.lang.IllegalStateException: Trying to deserialize a serialized ActorRef without an ActorSystem in scope.**

It looks like ZooKeeperPersistenceEngine is broken in the current Spark master (23f5bdf06a388e08ea5a69e848f0ecd5165aa481).  Here's a log excerpt from a secondary master when it takes over from a failed primary master:

{code}
14/11/13 04:37:12 WARN ConnectionStateManager: There are no ConnectionStateListeners registered.
14/11/13 04:37:19 INFO Master: Registering worker 172.17.0.223:8888 with 8 cores, 984.0 MB RAM
14/11/13 04:37:20 INFO Master: Registering worker 172.17.0.224:8888 with 8 cores, 984.0 MB RAM
14/11/13 04:37:35 INFO Master: Registering worker 172.17.0.223:8888 with 8 cores, 984.0 MB RAM
14/11/13 04:37:35 INFO Master: Registering worker 172.17.0.224:8888 with 8 cores, 984.0 MB RAM
14/11/13 04:37:43 INFO Master: Registering worker 172.17.0.224:8888 with 8 cores, 984.0 MB RAM
14/11/13 04:37:47 INFO Master: Registering worker 172.17.0.223:8888 with 8 cores, 984.0 MB RAM
14/11/13 04:37:51 INFO Master: Registering worker 172.17.0.224:8888 with 8 cores, 984.0 MB RAM
14/11/13 04:37:59 INFO Master: Registering worker 172.17.0.223:8888 with 8 cores, 984.0 MB RAM
14/11/13 04:37:59 INFO Master: Registering worker 172.17.0.224:8888 with 8 cores, 984.0 MB RAM
14/11/13 04:38:06 INFO ZooKeeperLeaderElectionAgent: We have gained leadership
14/11/13 04:38:06 WARN ZooKeeperPersistenceEngine: Exception while reading persisted file, deleting
java.io.IOException: java.lang.IllegalStateException: Trying to deserialize a serialized ActorRef without an ActorSystem in scope. Use 'akka.serialization.Serialization.currentSystem.withValue(system) { ... }'
	at org.apache.spark.util.Utils$.tryOrIOException(Utils.scala:988)
	at org.apache.spark.deploy.master.ApplicationInfo.readObject(ApplicationInfo.scala:51)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at java.io.ObjectStreamClass.invokeReadObject(ObjectStreamClass.java:1017)
	at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1893)
	at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1798)
	at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1350)
	at java.io.ObjectInputStream.readObject(ObjectInputStream.java:370)
	at org.apache.spark.serializer.JavaDeserializationStream.readObject(JavaSerializer.scala:62)
	at org.apache.spark.serializer.JavaSerializerInstance.deserialize(JavaSerializer.scala:81)
	at org.apache.spark.deploy.master.ZooKeeperPersistenceEngine.deserializeFromFile(ZooKeeperPersistenceEngine.scala:69)
	at org.apache.spark.deploy.master.ZooKeeperPersistenceEngine$$anonfun$read$1.apply(ZooKeeperPersistenceEngine.scala:54)
	at org.apache.spark.deploy.master.ZooKeeperPersistenceEngine$$anonfun$read$1.apply(ZooKeeperPersistenceEngine.scala:54)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
	at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
	at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
	at scala.collection.AbstractTraversable.map(Traversable.scala:105)
	at org.apache.spark.deploy.master.ZooKeeperPersistenceEngine.read(ZooKeeperPersistenceEngine.scala:54)
	at org.apache.spark.deploy.master.ZooKeeperPersistenceEngine.read(ZooKeeperPersistenceEngine.scala:32)
	at org.apache.spark.deploy.master.PersistenceEngine$class.readPersistedData(PersistenceEngine.scala:84)
	at org.apache.spark.deploy.master.ZooKeeperPersistenceEngine.readPersistedData(ZooKeeperPersistenceEngine.scala:32)
	at org.apache.spark.deploy.master.Master$$anonfun$receiveWithLogging$1.applyOrElse(Master.scala:181)
	at scala.runtime.AbstractPartialFunction$mcVL$sp.apply$mcVL$sp(AbstractPartialFunction.scala:33)
	at scala.runtime.AbstractPartialFunction$mcVL$sp.apply(AbstractPartialFunction.scala:33)
	at scala.runtime.AbstractPartialFunction$mcVL$sp.apply(AbstractPartialFunction.scala:25)
	at org.apache.spark.util.ActorLogReceive$$anon$1.apply(ActorLogReceive.scala:53)
	at org.apache.spark.util.ActorLogReceive$$anon$1.apply(ActorLogReceive.scala:42)
	at scala.PartialFunction$class.applyOrElse(PartialFunction.scala:118)
	at org.apache.spark.util.ActorLogReceive$$anon$1.applyOrElse(ActorLogReceive.scala:42)
	at akka.actor.Actor$class.aroundReceive(Actor.scala:465)
	at org.apache.spark.deploy.master.Master.aroundReceive(Master.scala:48)
	at akka.actor.ActorCell.receiveMessage(ActorCell.scala:516)
	at akka.actor.ActorCell.invoke(ActorCell.scala:487)
	at akka.dispatch.Mailbox.processMailbox(Mailbox.scala:238)
	at akka.dispatch.Mailbox.run(Mailbox.scala:220)
	at akka.dispatch.ForkJoinExecutorConfigurator$AkkaForkJoinTask.exec(AbstractDispatcher.scala:393)
	at scala.concurrent.forkjoin.ForkJoinTask.doExec(ForkJoinTask.java:260)
	at scala.concurrent.forkjoin.ForkJoinPool$WorkQueue.runTask(ForkJoinPool.java:1339)
	at scala.concurrent.forkjoin.ForkJoinPool.runWorker(ForkJoinPool.java:1979)
	at scala.concurrent.forkjoin.ForkJoinWorkerThread.run(ForkJoinWorkerThread.java:107)
Caused by: java.lang.IllegalStateException: Trying to deserialize a serialized ActorRef without an ActorSystem in scope. Use 'akka.serialization.Serialization.currentSystem.withValue(system) { ... }'
	at akka.actor.SerializedActorRef.readResolve(ActorRef.scala:407)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at java.io.ObjectStreamClass.invokeReadResolve(ObjectStreamClass.java:1104)
	at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1807)
	at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1350)
	at java.io.ObjectInputStream.defaultReadFields(ObjectInputStream.java:1990)
	at java.io.ObjectInputStream.defaultReadObject(ObjectInputStream.java:500)
	at org.apache.spark.deploy.master.ApplicationInfo$$anonfun$readObject$1.apply$mcV$sp(ApplicationInfo.scala:52)
	at org.apache.spark.util.Utils$.tryOrIOException(Utils.scala:985)
	... 44 more
{code}

I found this by running my custom Spark integration tests framework, which has a test that roughly corresponds to Apache Spark's {{FaultToleranceTest}}, specifically the "single-master-halt" test.


---

* [SPARK-4361](https://issues.apache.org/jira/browse/SPARK-4361) | *Minor* | **SparkContext HadoopRDD is not clear about how to use a Hadoop Configuration**

When I answered this question: http://apache-spark-user-list.1001560.n3.nabble.com/How-did-the-RDD-union-work-td18686.html, I found SparkContext did not explain how to use a Hadoop Configuration. More docs to clarify that Configuration will be put into a Broadcast is better.


---

* [SPARK-4344](https://issues.apache.org/jira/browse/SPARK-4344) | *Trivial* | **spark.yarn.user.classpath.first is undocumented**

spark.yarn.user.classpath.first is not documented while spark.files.userClassPathFirst and does not point the corresponding yarn parameter


---

* [SPARK-4337](https://issues.apache.org/jira/browse/SPARK-4337) | *Major* | **Add ability to cancel pending requests to YARN**

This will be useful for things like SPARK-4136


---

* [SPARK-4329](https://issues.apache.org/jira/browse/SPARK-4329) | *Major* | **Add indexing feature for HistoryPage**

Current HistoryPage have links only to previous page or next page.
I suggest to add index to access history pages easily.


---

* [SPARK-4305](https://issues.apache.org/jira/browse/SPARK-4305) | *Minor* | **yarn-alpha profile won't build due to network/yarn module**

SPARK-3797 introduced the {{network/yarn}} module, but its YARN code depends on YARN APIs not present in older versions covered by the {{yarn-alpha}}. As a result builds like {{mvn -Pyarn-alpha -Phadoop-0.23 -Dhadoop.version=0.23.7 -DskipTests clean package}} fail.

The solution is just to not build {{network/yarn}} with profile {{yarn-alpha}}


---

* [SPARK-4298](https://issues.apache.org/jira/browse/SPARK-4298) | *Major* | **The spark-submit cannot read Main-Class from Manifest.**

Consider trivial {{test.scala}}:
{code:title=test.scala|borderStyle=solid}
import org.apache.spark.SparkContext
import org.apache.spark.SparkContext.\_

object Main {
  def main(args: Array[String]) {
    val sc = new SparkContext()
    sc.stop()
  }
}
{code}

When built with {{sbt}} and executed using {{spark-submit target/scala-2.10/test\_2.10-1.0.jar}}, I get the following error:
{code}
Spark assembly has been built with Hive, including Datanucleus jars on classpath
Error: Cannot load main class from JAR: file:/ha/home/straka/s/target/scala-2.10/test\_2.10-1.0.jar
Run with --help for usage help or --verbose for debug output
{code}

When executed using {{spark-submit --class Main target/scala-2.10/test\_2.10-1.0.jar}}, it works.

The jar file has correct MANIFEST.MF:
{code:title=MANIFEST.MF|borderStyle=solid}
Manifest-Version: 1.0
Implementation-Vendor: test
Implementation-Title: test
Implementation-Version: 1.0
Implementation-Vendor-Id: test
Specification-Vendor: test
Specification-Title: test
Specification-Version: 1.0
Main-Class: Main
{code}

The problem is that in {{org.apache.spark.deploy.SparkSubmitArguments}}, line 127:
{code}
  val jar = new JarFile(primaryResource)
{code}
the primaryResource has String value {{"file:/ha/home/straka/s/target/scala-2.10/test\_2.10-1.0.jar"}}, which is URI, but JarFile can use only Path. One way to fix this would be using
{code}
  val uri = new URI(primaryResource)
  val jar = new JarFile(uri.getPath)
{code}


---

* [SPARK-4297](https://issues.apache.org/jira/browse/SPARK-4297) | *Minor* | **Build warning fixes omnibus**

There are a number of warnings generated in a normal, successful build right now. They're mostly Java unchecked cast warnings, which can be suppressed. But there's a grab bag of other Scala language warnings and so on that can all be easily fixed. The forthcoming PR fixes about 90% of the build warnings I see now.


---

* [SPARK-4296](https://issues.apache.org/jira/browse/SPARK-4296) | *Blocker* | **Throw "Expression not in GROUP BY" when using same expression in group by clause and  select clause**

When the input data has a complex structure, using same expression in group by clause and  select clause will throw "Expression not in GROUP BY".

{code:java}
val sqlContext = new org.apache.spark.sql.SQLContext(sc)
import sqlContext.createSchemaRDD
case class Birthday(date: String)
case class Person(name: String, birthday: Birthday)
val people = sc.parallelize(List(Person("John", Birthday("1990-01-22")), Person("Jim", Birthday("1980-02-28"))))
people.registerTempTable("people")
val year = sqlContext.sql("select count(*), upper(birthday.date) from people group by upper(birthday.date)")
year.collect
{code}

Here is the plan of year:
{code:java}
SchemaRDD[3] at RDD at SchemaRDD.scala:105
== Query Plan ==
== Physical Plan ==
org.apache.spark.sql.catalyst.errors.package$TreeNodeException: Expression not in GROUP BY: Upper(birthday#1.date AS date#9) AS c1#3, tree:
Aggregate [Upper(birthday#1.date)], [COUNT(1) AS c0#2L,Upper(birthday#1.date AS date#9) AS c1#3]
 Subquery people
  LogicalRDD [name#0,birthday#1], MapPartitionsRDD[1] at mapPartitions at ExistingRDD.scala:36
{code}

The bug is the equality test for `Upper(birthday#1.date)` and `Upper(birthday#1.date AS date#9)`.

Maybe Spark SQL needs a mechanism to compare Alias expression and non-Alias expression.


---

* [SPARK-4293](https://issues.apache.org/jira/browse/SPARK-4293) | *Critical* | **Make Cast be able to handle complex types.**

Inserting data of type including {{ArrayType.containsNull == false}} or {{MapType.valueContainsNull == false}} or {{StructType.fields.exists(\_.nullable == false)}} into Hive table will fail because {{Cast}} inserted by {{HiveMetastoreCatalog.PreInsertionCasts}} rule of {{Analyzer}} can't handle these types correctly.

Complex type cast rule proposal:

* Cast for non-complex types should be able to cast the same as before.
* Cast for {{ArrayType}} can evaluate if
** Element type can cast
** Nullability rule doesn't break
* Cast for {{MapType}} can evaluate if
** Key type can cast
** Nullability for casted key type is {{false}}
** Value type can cast
** Nullability rule for value type doesn't break
* Cast for {{StructType}} can evaluate if
** The field size is the same
** Each field can cast
** Nullability rule for each field doesn't break
* The nested structure should be the same.

Nullability rule:

* If the casted type is {{nullable == true}}, the target nullability should be {{true}}


---

* [SPARK-4282](https://issues.apache.org/jira/browse/SPARK-4282) | *Major* | **Stopping flag in YarnClientSchedulerBackend should be volatile**

In YarnClientSchedulerBackend, a variable "stopping" is used as a flag and it's accessed by some threads so it should be volatile.


---

* [SPARK-4269](https://issues.apache.org/jira/browse/SPARK-4269) | *Major* | **Make wait time in BroadcastHashJoin configurable**

In BroadcastHashJoin, currently it is using a hard coded value (5 minutes) to wait for the execution and broadcast of the small table. 

In my opinion, it should be a configurable value since broadcast may exceed 5 minutes in some case, like in a busy/congested network environment.


---

* [SPARK-4268](https://issues.apache.org/jira/browse/SPARK-4268) | *Trivial* | **Use #::: to get benefit from Stream in SqlLexical.allCaseVersions**

`allCaseVersions` uses `++` to concat two Stream. However, to get benefit from Stream, using ` #:::` would be better.


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

* [SPARK-4259](https://issues.apache.org/jira/browse/SPARK-4259) | *Major* | **Add Power Iteration Clustering Algorithm with Gaussian Similarity Function**

In recent years, power Iteration clustering has become one of the most popular modern clustering algorithms. It is simple to implement, can be solved efficiently by standard linear algebra software, and very often outperforms traditional clustering algorithms such as the k-means algorithm.

Power iteration clustering is a scalable and efficient algorithm for clustering points given pointwise mutual affinity values.  Internally the algorithm:

computes the Gaussian distance between all pairs of points and represents these distances in an Affinity Matrix
calculates a Normalized Affinity Matrix
calculates the principal eigenvalue and eigenvector
Clusters each of the input points according to their principal eigenvector component value

Details of this algorithm are found within [Power Iteration Clustering, Lin and Cohen]{www.icml2010.org/papers/387.pdf}


---

* [SPARK-4215](https://issues.apache.org/jira/browse/SPARK-4215) | *Critical* | **Allow requesting executors only on Yarn (for now)**

Currently if the user attempts to call `sc.requestExecutors` or enables dynamic allocation on, say, standalone mode, it just fails silently. We must at the very least log a warning to say it's only available for Yarn currently, or maybe even throw an exception.


---

* [SPARK-4187](https://issues.apache.org/jira/browse/SPARK-4187) | *Major* | **External shuffle service should not use Java serializer**

The Java serializer does not make a good solution for talking between JVMs, as the format may change between versions of the code, even if the class itself does not change in an incompatible manner.


---

* [SPARK-4180](https://issues.apache.org/jira/browse/SPARK-4180) | *Blocker* | **SparkContext constructor should throw exception if another SparkContext is already running**

Spark does not currently support multiple concurrently-running SparkContexts in the same JVM (see SPARK-2243).  Therefore, SparkContext's constructor should throw an exception if there is an active SparkContext that has not been shut down via {{stop()}}.

PySpark already does this, but the Scala SparkContext should do the same thing.  The current behavior with multiple active contexts is unspecified / not understood and it may be the source of confusing errors (see the user error report in SPARK-4080, for example).

This should be pretty easy to add: just add a {{activeSparkContext}} field to the SparkContext companion object and {{synchronize}} on it in the constructor and {{stop()}} methods; see PySpark's {{context.py}} file for an example of this approach.


---

* [SPARK-4172](https://issues.apache.org/jira/browse/SPARK-4172) | *Major* | **Progress API in Python**

The poll based progress API for Python


---

* [SPARK-4168](https://issues.apache.org/jira/browse/SPARK-4168) | *Major* | **Completed Stages Number are misleading webUI when stages are more than 1000**

The number of completed stages and failed stages showed on webUI will always be less than 1000. This is really misleading when there are already thousands of stages completed or failed. The number should be correct even  when only partial of all stages listed on the webUI (stage info will be removed if the number is too large).


---

* [SPARK-4161](https://issues.apache.org/jira/browse/SPARK-4161) | *Major* | **Spark shell class path is not correctly set if "spark.driver.extraClassPath" is set in defaults.conf**

(1) I want to launch a spark-shell + with jars that are only required by the driver (ie. not shipped to slaves)
 
(2) I added "spark.driver.extraClassPath  /mypath/to.jar" to my spark-defaults.conf
I launched spark-shell with:  ./spark-shell

Here I see on the WebUI that spark.driver.extraClassPath has been set, but I am NOT able to access any methods in the jar.

(3) I removed "spark.driver.extraClassPath" from my spark-default.conf
I launched spark-shell with  ./spark-shell --driver.class.path /mypath/to.jar

Again I see that the WebUI spark.driver.extraClassPath has been set. 
But this time I am able to access the methods in the jar. 


Looks like when the driver class path is loaded from spark-default.conf, the REPL's classpath is not correctly appended.


---

* [SPARK-4159](https://issues.apache.org/jira/browse/SPARK-4159) | *Critical* | **Maven build doesn't run JUnit test suites**

It turns out our Maven build isn't running any Java test suites, and likely hasn't ever.

After some fishing I believe the following is the issue. We use scalatest [1] in our maven build which, by default can't automatically detect JUnit tests. Scalatest will allow you to enumerate a list of suites via "JUnitClasses", but I cant' find a way for it to auto-detect all JUnit tests. It turns out this works in SBT because of our use of the junit-interface[2] which does this for you. 

An okay fix for this might be to simply enable the normal (surefire) maven tests in addition to our scalatest in the maven build. The only thing to watch out for is that they don't overlap in some way. We'd also have to copy over environment variables, memory settings, etc to that plugin.

[1] http://www.scalatest.org/user\_guide/using\_the\_scalatest\_maven\_plugin
[2] https://github.com/sbt/junit-interface


---

* [SPARK-4156](https://issues.apache.org/jira/browse/SPARK-4156) | *Major* | **Add expectation maximization for Gaussian mixture models to MLLib clustering**

As an additional clustering algorithm, implement expectation maximization for Gaussian mixture models


---

* [SPARK-4147](https://issues.apache.org/jira/browse/SPARK-4147) | *Major* | **Reduce log4j dependency**

spark-core has a hard dependency on log4j, which shouldn't be necessary since slf4j is used. I tried to exclude slf4j-log4j12 and log4j dependencies in my sbt file.

Excluding org.slf4j.slf4j-log4j12 works fine if logback is on the classpath. However, removing the log4j dependency fails because in https://github.com/apache/spark/blob/v1.1.0/core/src/main/scala/org/apache/spark/Logging.scala#L121 a static method of org.apache.log4j.LogManager is accessed *even if* log4j is not in use.

I guess removing all dependencies on log4j may be a bigger task, but it would be a great help if the access to LogManager would be done only if log4j use was detected before. (This is a 2-line change.)


---

* [SPARK-4140](https://issues.apache.org/jira/browse/SPARK-4140) | *Major* | **Document the dynamic allocation feature**

This blocks on SPARK-3795 and SPARK-3822.


---

* [SPARK-4092](https://issues.apache.org/jira/browse/SPARK-4092) | *Critical* | **Input metrics don't work for coalesce()'d RDD's**

In every case where we set input metrics (from both Hadoop and block storage) we currently assume that exactly one input partition is computed within the task. This is not a correct assumption in the general case. The main example in the current API is coalesce(), but user-defined RDD's could also be affected.

To deal with the most general case, we would need to support the notion of a single task having multiple input sources. A more surgical and less general fix is to simply go to HadoopRDD and check if there are already inputMetrics defined for the task with the same "type". If there are, then merge in the new data rather than blowing away the old one.

This wouldn't cover case where, e.g. a single task has input from both on-disk and in-memory blocks. It \_would\_ cover the case where someone calls coalesce on a HadoopRDD... which is more common.


---

* [SPARK-4079](https://issues.apache.org/jira/browse/SPARK-4079) | *Major* | **Snappy bundled with Spark does not work on older Linux distributions**

This issue has existed at least since 1.0, but has been made worse by 1.1 since snappy is now the default compression algorithm. When trying to use it on a CentOS 5 machine, for example, you'll get something like this:

{noformat}
      java.lang.reflect.InvocationTargetException
           at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
           at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
           at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
           at java.lang.reflect.Method.invoke(Method.java:606)
           at org.xerial.snappy.SnappyLoader.loadNativeLibrary(SnappyLoader.java:319)
           at org.xerial.snappy.SnappyLoader.load(SnappyLoader.java:226)
           at org.xerial.snappy.Snappy.<clinit>(Snappy.java:48)
           at org.xerial.snappy.SnappyOutputStream.<init>(SnappyOutputStream.java:79)
           at org.apache.spark.io.SnappyCompressionCodec.compressedOutputStream(CompressionCodec.scala:125)
           at org.apache.spark.broadcast.TorrentBroadcast$.blockifyObject(TorrentBroadcast.scala:207)
       ...
       Caused by: java.lang.UnsatisfiedLinkError: /tmp/snappy-1.0.5.3-af72bf3c-9dab-43af-a662-f9af657f06b1-libsnappyjava.so: /usr/lib64/libstdc++.so.6: version `GLIBCXX\_3.4.9' not found (required by /tmp/snappy-1.0.5.3-af72bf3c-9dab-43af-a662-f9af657f06b1-libsnappyjava.so)
           at java.lang.ClassLoader$NativeLibrary.load(Native Method)
           at java.lang.ClassLoader.loadLibrary1(ClassLoader.java:1957)
           at java.lang.ClassLoader.loadLibrary0(ClassLoader.java:1882)
           at java.lang.ClassLoader.loadLibrary(ClassLoader.java:1843)
           at java.lang.Runtime.load0(Runtime.java:795)
           at java.lang.System.load(System.java:1061)
           at org.xerial.snappy.SnappyNativeLoader.load(SnappyNativeLoader.java:39)
           ... 29 more
{noformat}

There are two approaches I can see here (well, 3):

* Declare CentOS 5 (and similar OSes) not supported, although that would suck for the people who are still on it and already use Spark
* Fallback to another compression codec if Snappy cannot be loaded
* Ask the Snappy guys to compile the library on an older OS...

I think the second would be the best compromise.


---

* [SPARK-4057](https://issues.apache.org/jira/browse/SPARK-4057) | *Trivial* | **Use -agentlib instead of -Xdebug in sbt-launch-lib.bash for debugging**

In -launch-lib.bash, -Xdebug option is used for debugging. We should use -agentlib option for Java 6+.


---

* [SPARK-4048](https://issues.apache.org/jira/browse/SPARK-4048) | *Major* | **Enhance and extend hadoop-provided profile**

The hadoop-provided profile is used to not package Hadoop dependencies inside the Spark assembly. It works, sort of, but it could use some enhancements. A quick list:

- It doesn't include all things that could be removed from the assembly
- It doesn't work well when you're publishing artifacts based on it (SPARK-3812 fixes this)
- There are other dependencies that could use similar treatment: Hive, HBase (for the examples), Flume, Parquet, maybe others I'm missing at the moment.
- Unit tests, more specifically, those that use local-cluster mode, do not work when the assembly is built with this profile enabled.
- The scripts to launch Spark jobs do not add needed "provided" jars to the classpath when this profile is enabled, leaving it for people to figure that out for themselves.
- The examples assembly duplicates a lot of things in the main assembly.

Part of this task is selfish since we build internally with this profile and we'd like to make it easier for us to merge changes without having to keep too many patches on top of upstream. But those feel like good improvements to me, regardless.


---

* [SPARK-4033](https://issues.apache.org/jira/browse/SPARK-4033) | *Major* | **Integer overflow when SparkPi is called with more than 25000 slices**

If input of the SparkPi args is larger than the 25000, the integer 'n' inside the code will be overflow, and may be a negative number.
And it causes  the (0 until n) Seq as an empty seq, then doing the action 'reduce'  will throw the UnsupportedOperationException("empty collection").


---

* [SPARK-4014](https://issues.apache.org/jira/browse/SPARK-4014) | *Minor* | **TaskContext.attemptId returns taskId**

In TaskRunner, we assign the taskId of a task to the attempId of the corresponding TaskContext. Should we rename attemptId to taskId to avoid confusion?


---

* [SPARK-4005](https://issues.apache.org/jira/browse/SPARK-4005) | *Major* | **handle message replies in receive instead of in the individual private methods**

In BlockManagermasterActor, when handling message type UpdateBlockInfo, the message replies is in handled in individual private methods, should handle it in receive of Akka.


---

* [SPARK-4001](https://issues.apache.org/jira/browse/SPARK-4001) | *Major* | **Add FP-growth algorithm to Spark MLlib**

Apriori is the classic algorithm for frequent item set mining in a transactional data set.  It will be useful if Apriori algorithm is added to MLLib in Spark


---

* [SPARK-3996](https://issues.apache.org/jira/browse/SPARK-3996) | *Major* | **Shade Jetty in Spark deliverables**

We'd like to use Spark in a Jetty 9 server, and it's causing a version conflict. Given that Spark's dependency on Jetty is light, it'd be a good idea to shade this dependency.


---

* [SPARK-3977](https://issues.apache.org/jira/browse/SPARK-3977) | *Major* | **Conversions between {Row, Coordinate}Matrix \<-\> BlockMatrix**

Build conversion functions between {Row, Coordinate}Matrix <-> BlockMatrix


---

* [SPARK-3975](https://issues.apache.org/jira/browse/SPARK-3975) | *Major* | **Block Matrix addition and multiplication**

Block matrix addition and multiplication, for the case when partitioning schemes match.


---

* [SPARK-3974](https://issues.apache.org/jira/browse/SPARK-3974) | *Major* | **Block matrix abstracitons and partitioners**

We need abstractions for block matrices with fixed block sizes, with each block being dense. Partitioners along both rows and columns required.


---

* [SPARK-3955](https://issues.apache.org/jira/browse/SPARK-3955) | *Major* | **Different versions between jackson-mapper-asl and jackson-core-asl**

In the parent pom.xml, specified a version of jackson-mapper-asl. This is used by sql/hive/pom.xml. When mvn assembly runs, however, jackson-mapper-asl is not same as jackson-core-asl. This is because other libraries use several versions of jackson, so other version of jackson-core-asl is assembled. Simply, fix this problem if pom.xml has a specific version information of jackson-core-asl. If it's not set, a version 1.9.11 is merged info assembly.jar and we cannot use jackson library properly.

{code}
[INFO] Including org.codehaus.jackson:jackson-mapper-asl:jar:1.8.8 in the shaded jar.
[INFO] Including org.codehaus.jackson:jackson-core-asl:jar:1.9.11 in the shaded jar.
{code}


---

* [SPARK-3926](https://issues.apache.org/jira/browse/SPARK-3926) | *Major* | **result of JavaRDD collectAsMap() is not serializable**

Using the Java API, I want to collect the result of a RDD<String, String> as a HashMap using collectAsMap function:
Map<String, String> map = myJavaRDD.collectAsMap();
This works fine, but when passing this map to another function, such as...
myOtherJavaRDD.mapToPair(new CustomFunction(map))
...this leads to the following error:

Exception in thread "main" org.apache.spark.SparkException: Task not serializable

	at org.apache.spark.util.ClosureCleaner$.ensureSerializable(ClosureCleaner.scala:166)

	at org.apache.spark.util.ClosureCleaner$.clean(ClosureCleaner.scala:158)

	at org.apache.spark.SparkContext.clean(SparkContext.scala:1242)

	at org.apache.spark.rdd.RDD.map(RDD.scala:270)

	at org.apache.spark.api.java.JavaRDDLike$class.mapToPair(JavaRDDLike.scala:99)

	at org.apache.spark.api.java.JavaPairRDD.mapToPair(JavaPairRDD.scala:44)

	../.. MY CLASS ../..

	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)

	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)

	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)

	at java.lang.reflect.Method.invoke(Method.java:606)

	at org.apache.spark.deploy.SparkSubmit$.launch(SparkSubmit.scala:328)

	at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:75)

	at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)

Caused by: java.io.NotSerializableException: scala.collection.convert.Wrappers$MapWrapper

	at java.io.ObjectOutputStream.writeObject0(ObjectOutputStream.java:1183)

	at java.io.ObjectOutputStream.defaultWriteFields(ObjectOutputStream.java:1547)

	at java.io.ObjectOutputStream.writeSerialData(ObjectOutputStream.java:1508)

	at java.io.ObjectOutputStream.writeOrdinaryObject(ObjectOutputStream.java:1431)

	at java.io.ObjectOutputStream.writeObject0(ObjectOutputStream.java:1177)

	at java.io.ObjectOutputStream.defaultWriteFields(ObjectOutputStream.java:1547)

	at java.io.ObjectOutputStream.writeSerialData(ObjectOutputStream.java:1508)

	at java.io.ObjectOutputStream.writeOrdinaryObject(ObjectOutputStream.java:1431)

	at java.io.ObjectOutputStream.writeObject0(ObjectOutputStream.java:1177)

	at java.io.ObjectOutputStream.writeObject(ObjectOutputStream.java:347)

	at org.apache.spark.serializer.JavaSerializationStream.writeObject(JavaSerializer.scala:42)

	at org.apache.spark.serializer.JavaSerializerInstance.serialize(JavaSerializer.scala:73)

at org.apache.spark.util.ClosureCleaner$.ensureSerializable(ClosureCleaner.scala:164)

This seems to be due to WrapAsJava.scala being non serializable
../..
  implicit def mapAsJavaMap[A, B](m: Map[A, B]): ju.Map[A, B] = m match {
    //case JConcurrentMapWrapper(wrapped) => wrapped
    case JMapWrapper(wrapped) => wrapped.asInstanceOf[ju.Map[A, B]]
    case \_ => new MapWrapper(m)
  }
../..

The workaround is to manually wrapper this map into another one (serialized)
Map<String, String> map = myJavaRDD.collectAsMap();
Map<String, String> tmp = new HashMap<String, String>(map);
myOtherJavaRDD.mapToPair(new CustomFunction(tmp))


---

* [SPARK-3891](https://issues.apache.org/jira/browse/SPARK-3891) | *Major* | **Support Hive Percentile UDAF with array of percentile values**

Spark PR 2620 brings in the support of Hive percentile UDAF.
However Hive percentile and percentile\_approx UDAFs also support returning an array of percentile values with the syntax
percentile(BIGINT col, array(p1 [, p2]...)) or 
percentile\_approx(DOUBLE col, array(p1 [, p2]...) [, B])

These queries are failing with the below error:

0: jdbc:hive2://dev-uuppala.sfohi.philips.com> select name, percentile(turnaroundtime,array(0,0.25,0.5,0.75,1)) from exam group by name;

Error: org.apache.spark.SparkException: Job aborted due to stage failure: Task 1 in stage 25.0 failed 4 times, most recent failure: Lost task 1.3 in stage 25.0 (TID 305, Dev-uuppala.sfohi.philips.com): java.lang.ClassCastException: scala.collection.mutable.ArrayBuffer cannot be cast to [Ljava.lang.Object;
        org.apache.hadoop.hive.serde2.objectinspector.StandardListObjectInspector.getListLength(StandardListObjectInspector.java:83)
        org.apache.hadoop.hive.serde2.objectinspector.ObjectInspectorConverters$ListConverter.convert(ObjectInspectorConverters.java:259)
        org.apache.hadoop.hive.ql.udf.generic.GenericUDFUtils$ConversionHelper.convertIfNecessary(GenericUDFUtils.java:349)
        org.apache.hadoop.hive.ql.udf.generic.GenericUDAFBridge$GenericUDAFBridgeEvaluator.iterate(GenericUDAFBridge.java:170)
        org.apache.spark.sql.hive.HiveUdafFunction.update(hiveUdfs.scala:342)
        org.apache.spark.sql.execution.Aggregate$$anonfun$execute$1$$anonfun$7.apply(Aggregate.scala:167)
        org.apache.spark.sql.execution.Aggregate$$anonfun$execute$1$$anonfun$7.apply(Aggregate.scala:151)
        org.apache.spark.rdd.RDD$$anonfun$13.apply(RDD.scala:599)
        org.apache.spark.rdd.RDD$$anonfun$13.apply(RDD.scala:599)
        org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
        org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
        org.apache.spark.rdd.MappedRDD.compute(MappedRDD.scala:31)
        org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
        org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
        org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:61)
        org.apache.spark.scheduler.Task.run(Task.scala:56)
        org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:181)
        java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        java.lang.Thread.run(Thread.java:745)
Driver stacktrace: (state=,code=0)


---

* [SPARK-3883](https://issues.apache.org/jira/browse/SPARK-3883) | *Major* | **Provide SSL support for Akka and HttpServer based connections**

Spark uses at least 4 logical communication channels:
1. Control messages - Akka based
2. JARs and other files - Jetty based (HttpServer)
3. Computation results - Java NIO based
4. Web UI - Jetty based

The aim of this feature is to enable SSL for (1) and (2).

Why:
Spark configuration is sent through (1). Spark configuration may contain sensitive information like credentials for accessing external data sources or streams. Application JAR files (2) may include the application logic and therefore they may include information about the structure of the external data sources, and credentials as well.


---

* [SPARK-3852](https://issues.apache.org/jira/browse/SPARK-3852) | *Major* | **Document spark.driver.extra\* configs**

They are not documented...


---

* [SPARK-3851](https://issues.apache.org/jira/browse/SPARK-3851) | *Blocker* | **Support for reading parquet files with different but compatible schema**

Right now it is required that all of the parquet files have the same schema.  It would be nice to support some safe subset of cases where the schemas of files is different.  For example:

 - Adding and removing nullable columns.
 - Widening types (a column that is of both Int and Long type)


---

* [SPARK-3787](https://issues.apache.org/jira/browse/SPARK-3787) | *Major* | **Assembly jar name is wrong when we build with sbt omitting -Dhadoop.version**

When we build with sbt with profile for hadoop and without property for hadoop version like:

{code}
sbt/sbt -Phadoop-2.2 assembly
{code}

jar name is always used default version (1.0.4).

When we build with maven with same condition for sbt, default version for each profile is used.
For instance, if we  build like:

{code}
mvn -Phadoop-2.2 package
{code}

jar name is used hadoop2.2.0 as a default version of hadoop-2.2.


---

* [SPARK-3782](https://issues.apache.org/jira/browse/SPARK-3782) | *Major* | **Direct use of log4j in AkkaUtils interferes with certain logging configurations**

AkkaUtils is calling setLevel on Logger from log4j. This causes issues when using another implementation of SLF4J such as logback as log4j-over-slf4j.jars implementation of this class does not contain this method on Logger.


---

* [SPARK-3779](https://issues.apache.org/jira/browse/SPARK-3779) | *Major* | **yarn spark.yarn.applicationMaster.waitTries config should be changed to a time period**

in pr https://github.com/apache/spark/pull/2577 I added support to use spark.yarn.applicationMaster.waitTries to client mode.  But the time it waits between loops is different so it could be confusing to the user.  We also don't document how long each loop is in the documentation so this config really isn't clear.

We should just changed this config to be time based,  ms or seconds.


---

* [SPARK-3778](https://issues.apache.org/jira/browse/SPARK-3778) | *Blocker* | **newAPIHadoopRDD doesn't properly pass credentials for secure hdfs on yarn**

The newAPIHadoopRDD routine doesn't properly add the credentials to the conf to be able to access secure hdfs.

Note that newAPIHadoopFile does handle these because the org.apache.hadoop.mapreduce.Job automatically adds it for you.


---

* [SPARK-3739](https://issues.apache.org/jira/browse/SPARK-3739) | *Minor* | **Too many splits for small source file in table scanning**

Source file input split is probably better based on block on HDFS for table scanning, other than the settings of 'mapred.reducer.tasks' or 'taskScheduler.defaultParallelism', see [http://grepcode.com/file/repository.cloudera.com/content/repositories/releases/org.apache.hadoop/hadoop-core/2.3.0-mr1-cdh5.1.0/org/apache/hadoop/mapred/FileInputFormat.java#203].

Currently, it seems too many splits for small source file.


---

* [SPARK-3726](https://issues.apache.org/jira/browse/SPARK-3726) | *Minor* | **RandomForest: Support for bootstrap options**

RandomForest uses BaggedPoint to simulate bootstrapped samples of the data.  The expected size of each sample is the same as the original data (sampling rate = 1.0), and sampling is done with replacement.  Adding support for other sampling rates and for sampling without replacement would be useful.


---

* [SPARK-3722](https://issues.apache.org/jira/browse/SPARK-3722) | *Minor* | **Spark on yarn docs work**

Adding another way to gain containers' log.
Fix outdated link and typo.


---

* [SPARK-3698](https://issues.apache.org/jira/browse/SPARK-3698) | *Major* | **Case sensitive check in spark sql is incompleted.**

Currently HiveQL is case insensitive. But if we run `SELECT a[0].A.A from t`, we don't do case insensitive check for "A.A", which is wrong.


---

* [SPARK-3688](https://issues.apache.org/jira/browse/SPARK-3688) | *Major* | **LogicalPlan can't resolve column correctlly**

How to reproduce this problem:
{code}
CREATE TABLE t1(x INT);
CREATE TABLE t2(a STRUCT<x: INT>, k INT);
SELECT a.x FROM t1 a JOIN t2 b ON a.x = b.k;
{code}


---

* [SPARK-3663](https://issues.apache.org/jira/browse/SPARK-3663) | *Major* | **Document SPARK\_LOG\_DIR and SPARK\_PID\_DIR**

I'm using these two parameters in some puppet scripts for standalone deployment and realized that they're not documented anywhere.  We should document them


---

* [SPARK-3660](https://issues.apache.org/jira/browse/SPARK-3660) | *Major* | **Initial RDD for updateStateByKey transformation**

How to initialize state tranformation updateStateByKey?

I have word counts from previous spark-submit run, and want to load that in next spark-submit job to start counting over that.

One proposal is to add following argument to updateStateByKey methods.
initial : Option [RDD [(K, S)]] = None

This will maintain the backward compatibility as well.

I have a working code as well.

This thread started on spark-user list at:
http://apache-spark-user-list.1001560.n3.nabble.com/How-to-initialize-updateStateByKey-operation-td14772.html


---

* [SPARK-3619](https://issues.apache.org/jira/browse/SPARK-3619) | *Major* | **Upgrade to Mesos 0.21 to work around MESOS-1688**

The Mesos 0.21 release has a fix for https://issues.apache.org/jira/browse/MESOS-1688, which affects Spark jobs.


---

* [SPARK-3607](https://issues.apache.org/jira/browse/SPARK-3607) | *Minor* | **ConnectionManager threads.max configs on the thread pools don't work**

In the ConnectionManager we have a bunch of thread pools. They have settings for the maximum number of threads for each Threadpool (like spark.core.connection.handler.threads.max). 

Those configs don't work because its using a unbounded queue. From the threadpoolexecutor javadoc page: no more than corePoolSize threads will ever be created. (And the value of the maximumPoolSize therefore doesn't have any effect.)

luckily this doesn't matter to much as you can work around it by just increasing the minimum like spark.core.connection.handler.threads.min. 

These configs aren't documented either so its more of an internal thing when someone is reading the code.


---

* [SPARK-3575](https://issues.apache.org/jira/browse/SPARK-3575) | *Blocker* | **Hive Schema is ignored when using convertMetastoreParquet**

This can cause problems when for example one of the columns is defined as TINYINT.  A class cast exception will be thrown since the parquet table scan produces INTs while the rest of the execution is expecting bytes.


---

* [SPARK-3541](https://issues.apache.org/jira/browse/SPARK-3541) | *Major* | **Improve ALS internal storage**

The internal storage of ALS uses many small objects, which increases the GC pressure and makes ALS difficult to scale to very large scale, e.g., 50 billion ratings. In such cases, the full GC may take more than 10 minutes to finish. That is longer than the default heartbeat timeout and hence executors will be removed under default settings.

We can use primitive arrays to reduce the number of objects significantly. This requires big change to the ALS implementation.


---

* [SPARK-3445](https://issues.apache.org/jira/browse/SPARK-3445) | *Major* | **Deprecate and later remove YARN alpha support**

This will depend a bit on both user demand and the commitment level of maintainers, but I'd like to propose the following timeline for yarn-alpha support.

Spark 1.2: Deprecate YARN-alpha
Spark 1.3: Remove YARN-alpha (i.e. require YARN-stable)

Since YARN-alpha is clearly identified as an alpha API, it seems reasonable to drop support for it in a minor release. However, it does depend a bit whether anyone uses this outside of Yahoo!, and that I'm not sure of. In the past this API has been used and maintained by Yahoo, but they'll be migrating soon to the stable API's.


---

* [SPARK-3428](https://issues.apache.org/jira/browse/SPARK-3428) | *Major* | **TaskMetrics for running tasks is missing GC time metrics**

SPARK-2099 added the ability to update helpful metrics like shuffle bytes read/written on the webui via a periodic heartbeat from executors.  It omitted GC time metrics though.

This ticket is for including GC times in the heartbeats.

See the updateAggregateMetrics method here:
https://github.com/apache/spark/pull/1056/files#diff-1f32bcb61f51133bd0959a4177a066a5R175


---

* [SPARK-3424](https://issues.apache.org/jira/browse/SPARK-3424) | *Major* | **KMeans Plus Plus is too slow**

The  KMeansPlusPlus algorithm is implemented in time O( m k^2), where m is the rounds of the KMeansParallel algorithm and k is the number of clusters.  

This can be dramatically improved by maintaining the distance the closest cluster center from round to round and then incrementally updating that value for each point. This incremental update is O(1) time, this reduces the running time for K Means Plus Plus to O( m k ).  For large k, this is significant.


---

* [SPARK-3405](https://issues.apache.org/jira/browse/SPARK-3405) | *Minor* | **EC2 cluster creation on VPC**

It would be very useful to be able to specify the EC2 VPC in which the Spark cluster should be created. 

When creating a Spark cluster on AWS via the spark-ec2 script there is no way to specify a VPC id of the VPC you would like the cluster to be created in. The script always creates the cluster in the default VPC. 

In my case I have deleted the default VPC and the spark-ec2 script errors out with the following : 

Setting up security groups...
Creating security group test-master
ERROR:boto:400 Bad Request
ERROR:boto:<?xml version="1.0" encoding="UTF-8"?>
<Response><Errors><Error><Code>VPCIdNotSpecified</Code><Message>No default VPC for this user</Message></Error></Errors><RequestID>312a2281-81a1-4d3c-ba10-0593a886779d</RequestID></Response>
Traceback (most recent call last):
  File "./spark\_ec2.py", line 860, in <module>
    main()
  File "./spark\_ec2.py", line 852, in main
    real\_main()
  File "./spark\_ec2.py", line 735, in real\_main
    conn, opts, cluster\_name)
  File "./spark\_ec2.py", line 247, in launch\_cluster
    master\_group = get\_or\_make\_group(conn, cluster\_name + "-master")
  File "./spark\_ec2.py", line 143, in get\_or\_make\_group
    return conn.create\_security\_group(name, "Spark EC2 group")
  File "/home/dawson/Develop/spark-1.0.2/ec2/third\_party/boto-2.4.1.zip/boto-2.4.1/boto/ec2/connection.py", line 2011, in create\_security\_group
  File "/home/dawson/Develop/spark-1.0.2/ec2/third\_party/boto-2.4.1.zip/boto-2.4.1/boto/connection.py", line 925, in get\_object
boto.exception.EC2ResponseError: EC2ResponseError: 400 Bad Request
<?xml version="1.0" encoding="UTF-8"?>
<Response><Errors><Error><Code>VPCIdNotSpecified</Code><Message>No default VPC for this user</Message></Error></Errors><RequestID>312a2281-81a1-4d3c-ba10-0593a886779d</RequestID></Response>


---

* [SPARK-3365](https://issues.apache.org/jira/browse/SPARK-3365) | *Blocker* | **Failure to save Lists to Parquet**

Reproduction, same works if type is Seq. (props to [~chrisgrier] for finding this)
{code}
scala> case class Test(x: List[String])
defined class Test

scala> sparkContext.parallelize(Test(List()) :: Nil).saveAsParquetFile("bug")
23:09:51.807 ERROR org.apache.spark.executor.Executor: Exception in task 0.0 in stage 0.0 (TID 0)
java.lang.ArithmeticException: / by zero
	at parquet.hadoop.InternalParquetRecordWriter.initStore(InternalParquetRecordWriter.java:99)
	at parquet.hadoop.InternalParquetRecordWriter.<init>(InternalParquetRecordWriter.java:92)
	at parquet.hadoop.ParquetRecordWriter.<init>(ParquetRecordWriter.java:64)
	at parquet.hadoop.ParquetOutputFormat.getRecordWriter(ParquetOutputFormat.java:282)
	at parquet.hadoop.ParquetOutputFormat.getRecordWriter(ParquetOutputFormat.java:252)
	at org.apache.spark.sql.parquet.InsertIntoParquetTable.org$apache$spark$sql$parquet$InsertIntoParquetTable$$writeShard$1(ParquetTableOperations.scala:300)
	at org.apache.spark.sql.parquet.InsertIntoParquetTable$$anonfun$saveAsHadoopFile$1.apply(ParquetTableOperations.scala:318)
	at org.apache.spark.sql.parquet.InsertIntoParquetTable$$anonfun$saveAsHadoopFile$1.apply(ParquetTableOperations.scala:318)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:62)
	at org.apache.spark.scheduler.Task.run(Task.scala:54)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:178)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:744)
{code}


---

* [SPARK-3340](https://issues.apache.org/jira/browse/SPARK-3340) | *Major* | **Deprecate ADD\_JARS and ADD\_FILES**

These were introduced before Spark submit even existed. Now that there are many better ways of setting jars and python files through Spark submit, we should deprecate these environment variables.


---

* [SPARK-3325](https://issues.apache.org/jira/browse/SPARK-3325) | *Major* | **Add a parameter to the method print in class DStream.**

def print(num: Int = 10)
User can control the number of elements which to print.


---

* [SPARK-3299](https://issues.apache.org/jira/browse/SPARK-3299) | *Minor* | **[SQL] Public API in SQLContext to list tables**

There is no public API in SQLContext to list the current tables.  This would be pretty helpful.


---

* [SPARK-3290](https://issues.apache.org/jira/browse/SPARK-3290) | *Major* | **No unpersist callls in SVDPlusPlus**

The implementation of SVDPlusPlus will cache graph produced by each iteration and do not unpersist them, so as iteration goes on, more and more useless graph will be cached and out of memory happens.


---

* [SPARK-3288](https://issues.apache.org/jira/browse/SPARK-3288) | *Major* | **All fields in TaskMetrics should be private and use getters/setters**

This is particularly bad because we expose this as a developer API. Technically a library could create a TaskMetrics object and then change the values inside of it and pass it onto someone else. It can be written pretty compactly like below:

{code}
  /**
   * Number of bytes written for the shuffle by this task
   */
  @volatile private var \_shuffleBytesWritten: Long = \_
  def incrementShuffleBytesWritten(value: Long) = \_shuffleBytesWritten += value
  def decrementShuffleBytesWritten(value: Long) = \_shuffleBytesWritten -= value
  def shuffleBytesWritten = \_shuffleBytesWritten
{code}


---

* [SPARK-3278](https://issues.apache.org/jira/browse/SPARK-3278) | *Major* | **Isotonic regression**

Add isotonic regression for score calibration.


---

* [SPARK-3180](https://issues.apache.org/jira/browse/SPARK-3180) | *Major* | **Better control of security groups**

Two features can be combined together to provide better control of security group policies:

- The ability to specify the address authorized to access the default security group (instead of letting everyone: 0.0.0.0/0)
- The possibility to place the created machines on a custom security group

One can use the combinations of the two flags to restrict external access to the provided security group (e.g by setting the authorized address to 127.0.0.1/32) while maintaining compatibility with the current behavior.


---

* [SPARK-3060](https://issues.apache.org/jira/browse/SPARK-3060) | *Major* | **spark-shell.cmd doesn't accept application options in Windows OS**

spark-shell.cmd accepts submit options ([SPARK-3006]).
But we have no way to specify the appliaction options with spark-shell.cmd.

This problem is only for the Windows OS.


---

* [SPARK-3039](https://issues.apache.org/jira/browse/SPARK-3039) | *Critical* | **Spark assembly for new hadoop API (hadoop 2) contains avro-mapred for hadoop 1 API**

The spark assembly contains the artifact "org.apache.avro:avro-mapred" as a dependency of "org.spark-project.hive:hive-serde".

The avro-mapred package provides a hadoop FileInputFormat to read and write avro files. There are two versions of this package, distinguished by a classifier. avro-mapred for the new Hadoop API uses the classifier "hadoop2". avro-mapred for the old Hadoop API uses no classifier.

E.g. when reading avro files using 
{code}
sc.newAPIHadoopFile[AvroKey[SomeClass]],NullWritable,AvroKeyInputFormat[SomeClass]]("hdfs://path/to/file.avro")
{code}

The following error occurs:
{code}
java.lang.IncompatibleClassChangeError: Found interface org.apache.hadoop.mapreduce.TaskAttemptContext, but class was expected
        at org.apache.avro.mapreduce.AvroKeyInputFormat.createRecordReader(AvroKeyInputFormat.java:47)
        at org.apache.spark.rdd.NewHadoopRDD$$anon$1.<init>(NewHadoopRDD.scala:111)
        at org.apache.spark.rdd.NewHadoopRDD.compute(NewHadoopRDD.scala:99)
        at org.apache.spark.rdd.NewHadoopRDD.compute(NewHadoopRDD.scala:61)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
        at org.apache.spark.rdd.MappedRDD.compute(MappedRDD.scala:31)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
        at org.apache.spark.rdd.FilteredRDD.compute(FilteredRDD.scala:34)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
        at org.apache.spark.rdd.MappedRDD.compute(MappedRDD.scala:31)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
        at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:158)
        at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:99)
        at org.apache.spark.scheduler.Task.run(Task.scala:51)
        at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:187)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:744)
{code}

This error usually is a hint that there was a mix up of the old and the new Hadoop API. As a work-around, if avro-mapred for hadoop2 is "forced" to appear before the version that is bundled with Spark, reading avro files works fine. 

Also, if Spark is built using avro-mapred for hadoop2, it works fine as well.


---

* [SPARK-3033](https://issues.apache.org/jira/browse/SPARK-3033) | *Major* | **[Hive] java.math.BigDecimal cannot be cast to org.apache.hadoop.hive.common.type.HiveDecimal**

run a complex HiveQL via yarn-cluster, got error as below:
{quote}
14/08/14 15:05:24 WARN org.apache.spark.Logging$class.logWarning(Logging.scala:70): Loss was due to java.lang.ClassCastException
java.lang.ClassCastException: java.math.BigDecimal cannot be cast to org.apache.hadoop.hive.common.type.HiveDecimal
	at org.apache.hadoop.hive.serde2.objectinspector.primitive.JavaHiveDecimalObjectInspector.getPrimitiveJavaObject(JavaHiveDecimalObjectInspector.java:51)
	at org.apache.hadoop.hive.serde2.objectinspector.primitive.PrimitiveObjectInspectorUtils.getHiveDecimal(PrimitiveObjectInspectorUtils.java:1022)
	at org.apache.hadoop.hive.serde2.objectinspector.primitive.PrimitiveObjectInspectorConverter$HiveDecimalConverter.convert(PrimitiveObjectInspectorConverter.java:306)
	at org.apache.hadoop.hive.ql.udf.generic.GenericUDFUtils$ReturnObjectInspectorResolver.convertIfNecessary(GenericUDFUtils.java:179)
	at org.apache.hadoop.hive.ql.udf.generic.GenericUDFIf.evaluate(GenericUDFIf.java:82)
	at org.apache.spark.sql.hive.HiveGenericUdf.eval(hiveUdfs.scala:276)
	at org.apache.spark.sql.catalyst.expressions.Alias.eval(namedExpressions.scala:84)
	at org.apache.spark.sql.catalyst.expressions.MutableProjection.apply(Projection.scala:62)
	at org.apache.spark.sql.catalyst.expressions.MutableProjection.apply(Projection.scala:51)
	at scala.collection.Iterator$$anon$11.next(Iterator.scala:328)
	at scala.collection.Iterator$class.foreach(Iterator.scala:727)
	at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
	at org.apache.spark.sql.execution.BroadcastNestedLoopJoin$$anonfun$4.apply(joins.scala:309)
	at org.apache.spark.sql.execution.BroadcastNestedLoopJoin$$anonfun$4.apply(joins.scala:303)
	at org.apache.spark.rdd.RDD$$anonfun$13.apply(RDD.scala:571)
	at org.apache.spark.rdd.RDD$$anonfun$13.apply(RDD.scala:571)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
	at org.apache.spark.rdd.MappedRDD.compute(MappedRDD.scala:31)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:262)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:229)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:111)
	at org.apache.spark.scheduler.Task.run(Task.scala:51)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:183)
	at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:886)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:908)
	at java.lang.Thread.run(Thread.java:662)
{quote}


---

* [SPARK-2996](https://issues.apache.org/jira/browse/SPARK-2996) | *Major* | **Standalone and Yarn have different settings for adding the user classpath first**

Standalone uses "spark.files.userClassPathFirst" while Yarn uses "spark.yarn.user.classpath.first". Adding support for the former in Yarn should be pretty trivial.

Don't know if Mesos has anything similar.


---

* [SPARK-2984](https://issues.apache.org/jira/browse/SPARK-2984) | *Critical* | **FileNotFoundException on \_temporary directory**

We've seen several stacktraces and threads on the user mailing list where people are having issues with a {{FileNotFoundException}} stemming from an HDFS path containing {{\_temporary}}.

I ([~aash]) think this may be related to {{spark.speculation}}.  I think the error condition might manifest in this circumstance:

1) task T starts on a executor E1
2) it takes a long time, so task T' is started on another executor E2
3) T finishes in E1 so moves its data from {{\_temporary}} to the final destination and deletes the {{\_temporary}} directory during cleanup
4) T' finishes in E2 and attempts to move its data from {{\_temporary}}, but those files no longer exist!  exception

Some samples:

{noformat}
14/08/11 08:05:08 ERROR JobScheduler: Error running job streaming job 1407744300000 ms.0
java.io.FileNotFoundException: File hdfs://hadoopc/user/csong/output/human\_bot/-1407744300000.out/\_temporary/0/task\_201408110805\_0000\_m\_000007 does not exist.
        at org.apache.hadoop.hdfs.DistributedFileSystem.listStatusInternal(DistributedFileSystem.java:654)
        at org.apache.hadoop.hdfs.DistributedFileSystem.access$600(DistributedFileSystem.java:102)
        at org.apache.hadoop.hdfs.DistributedFileSystem$14.doCall(DistributedFileSystem.java:712)
        at org.apache.hadoop.hdfs.DistributedFileSystem$14.doCall(DistributedFileSystem.java:708)
        at org.apache.hadoop.fs.FileSystemLinkResolver.resolve(FileSystemLinkResolver.java:81)
        at org.apache.hadoop.hdfs.DistributedFileSystem.listStatus(DistributedFileSystem.java:708)
        at org.apache.hadoop.mapreduce.lib.output.FileOutputCommitter.mergePaths(FileOutputCommitter.java:360)
        at org.apache.hadoop.mapreduce.lib.output.FileOutputCommitter.commitJob(FileOutputCommitter.java:310)
        at org.apache.hadoop.mapred.FileOutputCommitter.commitJob(FileOutputCommitter.java:136)
        at org.apache.spark.SparkHadoopWriter.commitJob(SparkHadoopWriter.scala:126)
        at org.apache.spark.rdd.PairRDDFunctions.saveAsHadoopDataset(PairRDDFunctions.scala:841)
        at org.apache.spark.rdd.PairRDDFunctions.saveAsHadoopFile(PairRDDFunctions.scala:724)
        at org.apache.spark.rdd.PairRDDFunctions.saveAsHadoopFile(PairRDDFunctions.scala:643)
        at org.apache.spark.rdd.RDD.saveAsTextFile(RDD.scala:1068)
        at org.apache.spark.streaming.dstream.DStream$$anonfun$8.apply(DStream.scala:773)
        at org.apache.spark.streaming.dstream.DStream$$anonfun$8.apply(DStream.scala:771)
        at org.apache.spark.streaming.dstream.ForEachDStream$$anonfun$1.apply$mcV$sp(ForEachDStream.scala:41)
        at org.apache.spark.streaming.dstream.ForEachDStream$$anonfun$1.apply(ForEachDStream.scala:40)
        at org.apache.spark.streaming.dstream.ForEachDStream$$anonfun$1.apply(ForEachDStream.scala:40)
        at scala.util.Try$.apply(Try.scala:161)
        at org.apache.spark.streaming.scheduler.Job.run(Job.scala:32)
        at org.apache.spark.streaming.scheduler.JobScheduler$JobHandler.run(JobScheduler.scala:172)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:745)
{noformat}
-- Chen Song at http://apache-spark-user-list.1001560.n3.nabble.com/saveAsTextFiles-file-not-found-exception-td10686.html



{noformat}
I am running a Spark Streaming job that uses saveAsTextFiles to save results into hdfs files. However, it has an exception after 20 batches

result-1406312340000/\_temporary/0/task\_201407251119\_0000\_m\_000003 does not exist.
{noformat}
and
{noformat}
org.apache.hadoop.ipc.RemoteException(org.apache.hadoop.hdfs.server.namenode.LeaseExpiredException): No lease on /apps/data/vddil/real-time/checkpoint/temp: File does not exist. Holder DFSClient\_NONMAPREDUCE\_327993456\_13 does not have any open files.
	at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.checkLease(FSNamesystem.java:2946)
	at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.analyzeFileState(FSNamesystem.java:2766)
	at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.getAdditionalBlock(FSNamesystem.java:2674)
	at org.apache.hadoop.hdfs.server.namenode.NameNodeRpcServer.addBlock(NameNodeRpcServer.java:584)
	at org.apache.hadoop.hdfs.protocolPB.ClientNamenodeProtocolServerSideTranslatorPB.addBlock(ClientNamenodeProtocolServerSideTranslatorPB.java:440)
	at org.apache.hadoop.hdfs.protocol.proto.ClientNamenodeProtocolProtos$ClientNamenodeProtocol$2.callBlockingMethod(ClientNamenodeProtocolProtos.java)
	at org.apache.hadoop.ipc.ProtobufRpcEngine$Server$ProtoBufRpcInvoker.call(ProtobufRpcEngine.java:585)
	at org.apache.hadoop.ipc.RPC$Server.call(RPC.java:928)
	at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2013)
	at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2009)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:415)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1557)
	at org.apache.hadoop.ipc.Server$Handler.run(Server.java:2007)

	at org.apache.hadoop.ipc.Client.call(Client.java:1410)
	at org.apache.hadoop.ipc.Client.call(Client.java:1363)
	at org.apache.hadoop.ipc.ProtobufRpcEngine$Invoker.invoke(ProtobufRpcEngine.java:206)
	at com.sun.proxy.$Proxy14.addBlock(Unknown Source)
	at sun.reflect.GeneratedMethodAccessor146.invoke(Unknown Source)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.io.retry.RetryInvocationHandler.invokeMethod(RetryInvocationHandler.java:190)
	at org.apache.hadoop.io.retry.RetryInvocationHandler.invoke(RetryInvocationHandler.java:103)
	at com.sun.proxy.$Proxy14.addBlock(Unknown Source)
	at org.apache.hadoop.hdfs.protocolPB.ClientNamenodeProtocolTranslatorPB.addBlock(ClientNamenodeProtocolTranslatorPB.java:361)
	at org.apache.hadoop.hdfs.DFSOutputStream$DataStreamer.locateFollowingBlock(DFSOutputStream.java:1439)
	at org.apache.hadoop.hdfs.DFSOutputStream$DataStreamer.nextBlockOutputStream(DFSOutputStream.java:1261)
	at org.apache.hadoop.hdfs.DFSOutputStream$DataStreamer.run(DFSOutputStream.java:525)
14/07/25 14:45:12 WARN CheckpointWriter: Error in attempt 1 of writing checkpoint to hdfs://gnosis-01-01-01.crl.samsung.com/apps/data/vddil/real-time/checkpoint/checkpoint-1406324700000
{noformat}
-- Bill Jay at http://apache-spark-user-list.1001560.n3.nabble.com/saveAsTextFiles-file-not-found-exception-td10686.html




{noformat}
scala> d3.sample(false,0.01,1).map( pair => pair.\_2 ).saveAsTextFile("10000.txt")


14/06/09 22:06:40 ERROR TaskSetManager: Task 0.0:0 failed 4 times; aborting job
org.apache.spark.SparkException: Job aborted: Task 0.0:0 failed 4 times (most recent failure: Exception failure: java.io.IOException: The temporary job-output directory file:/data/spark-0.9.1-bin-hadoop1/10000.txt/\_temporary doesn't exist!)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$abortStage$1.apply(DAGScheduler.scala:1020)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$abortStage$1.apply(DAGScheduler.scala:1018)
	at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
	at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
	at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$abortStage(DAGScheduler.scala:1018)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$processEvent$10.apply(DAGScheduler.scala:604)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$processEvent$10.apply(DAGScheduler.scala:604)
	at scala.Option.foreach(Option.scala:236)
	at org.apache.spark.scheduler.DAGScheduler.processEvent(DAGScheduler.scala:604)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$start$1$$anon$2$$anonfun$receive$1.applyOrElse(DAGScheduler.scala:190)
	at akka.actor.ActorCell.receiveMessage(ActorCell.scala:498)
	at akka.actor.ActorCell.invoke(ActorCell.scala:456)
	at akka.dispatch.Mailbox.processMailbox(Mailbox.scala:237)
	at akka.dispatch.Mailbox.run(Mailbox.scala:219)
	at akka.dispatch.ForkJoinExecutorConfigurator$AkkaForkJoinTask.exec(AbstractDispatcher.scala:386)
	at scala.concurrent.forkjoin.ForkJoinTask.doExec(ForkJoinTask.java:260)
	at scala.concurrent.forkjoin.ForkJoinPool$WorkQueue.runTask(ForkJoinPool.java:1339)
	at scala.concurrent.forkjoin.ForkJoinPool.runWorker(ForkJoinPool.java:1979)
	at scala.concurrent.forkjoin.ForkJoinWorkerThread.run(ForkJoinWorkerThread.java:107)
{noformat}
-- Oleg Proudnikov at http://mail-archives.apache.org/mod\_mbox/incubator-spark-user/201406.mbox/%3CCAFEaGwKYSXz2Gyviqu44-DvP-V1JzbVFAPd1x5dLHCQBOgTnjg@mail.gmail.com%3E




{noformat}
[INFO] 11 Dec 2013 12:00:33 - org.apache.spark.Logging$class - Loss was due to org.apache.hadoop.util.Shell$ExitCodeException
org.apache.hadoop.util.Shell$ExitCodeException: chmod: getting attributes of `/cygdrive/c/somepath/\_temporary/\_attempt\_201312111200\_0000\_m\_000000\_0/part-00000': No such file or directory
        at org.apache.hadoop.util.Shell.runCommand(Shell.java:261)
        at org.apache.hadoop.util.Shell.run(Shell.java:188)
        at org.apache.hadoop.util.Shell$ShellCommandExecutor.execute(Shell.java:381)
        at org.apache.hadoop.util.Shell.execCommand(Shell.java:467)
        at org.apache.hadoop.util.Shell.execCommand(Shell.java:450)
        at org.apache.hadoop.fs.RawLocalFileSystem.execCommand(RawLocalFileSystem.java:593)
        at org.apache.hadoop.fs.RawLocalFileSystem.setPermission(RawLocalFileSystem.java:584)
        at org.apache.hadoop.fs.FilterFileSystem.setPermission(FilterFileSystem.java:427)
        at org.apache.hadoop.fs.ChecksumFileSystem.create(ChecksumFileSystem.java:465)
        at org.apache.hadoop.fs.ChecksumFileSystem.create(ChecksumFileSystem.java:433)
        at org.apache.hadoop.fs.FileSystem.create(FileSystem.java:886)
        at org.apache.hadoop.fs.FileSystem.create(FileSystem.java:781)
        at org.apache.hadoop.mapred.TextOutputFormat.getRecordWriter(TextOutputFormat.java:118)
        at org.apache.hadoop.mapred.SparkHadoopWriter.open(SparkHadoopWriter.scala:86)
        at org.apache.spark.rdd.PairRDDFunctions.writeToFile$1(PairRDDFunctions.scala:667)
        at org.apache.spark.rdd.PairRDDFunctions$$anonfun$saveAsHadoopDataset$2.apply(PairRDDFunctions.scala:680)
        at org.apache.spark.rdd.PairRDDFunctions$$anonfun$saveAsHadoopDataset$2.apply(PairRDDFunctions.scala:680)
        at org.apache.spark.scheduler.ResultTask.run(ResultTask.scala:99)
        at org.apache.spark.scheduler.local.LocalScheduler.runTask(LocalScheduler.scala:198)
        at org.apache.spark.scheduler.local.LocalActor$$anonfun$launchTask$1$$anon$1.run(LocalScheduler.scala:68)
        at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:471)
        at java.util.concurrent.FutureTask.run(FutureTask.java:262)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:744)
[INFO] 11 Dec 2013 12:00:33 - org.apache.spark.Logging$class - Remove TaskSet 0.0 from pool
[INFO] 11 Dec 2013 12:00:33 - org.apache.spark.Logging$class - Failed to run saveAsTextFile at Test.scala:19
Exception in thread "main" org.apache.spark.SparkException: Job failed: Task 0.0:0 failed more than 4 times; aborting job org.apache.hadoop.util.Shell$ExitCodeException: chmod: getting attributes of `/cygdrive/c/somepath/\_temporary/\_attempt\_201312111200\_0000\_m\_000000\_0/part-00000': No such file or directory
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:760)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:758)
        at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:60)
        at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
        at org.apache.spark.scheduler.DAGScheduler.abortStage(DAGScheduler.scala:758)
        at org.apache.spark.scheduler.DAGScheduler.processEvent(DAGScheduler.scala:379)
        at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$run(DAGScheduler.scala:441)
        at org.apache.spark.scheduler.DAGScheduler$$anon$1.run(DAGScheduler.scala:149)
{noformat}
On a Windows box!
-- Nathan Kronenfeld at http://mail-archives.apache.org/mod\_mbox/spark-user/201312.mbox/%3CCAEpWh49EvUEWdnsfKJGvU5MB9V5QsR=HQ=wHpufUmEetU19frg@mail.gmail.com%3E




{noformat}
14/07/29 16:16:57 ERROR executor.Executor: Exception in task ID 6087
 java.io.IOException: The temporary job-output directory hdfs://mybox:8020/path/to/a/dir/\_temporary doesn't exist!
         at org.apache.hadoop.mapred.FileOutputCommitter.getWorkPath(FileOutputCommitter.java:250)
         at org.apache.hadoop.mapred.FileOutputFormat.getTaskOutputPath(FileOutputFormat.java:240)
         at org.apache.avro.mapred.AvroOutputFormat.getRecordWriter(AvroOutputFormat.java:154)
         at org.apache.hadoop.mapred.SparkHadoopWriter.open(SparkHadoopWriter.scala:90)
         at org.apache.spark.rdd.PairRDDFunctions.org$apache$spark$rdd$PairRDDFunctions$$writeToFile$1(PairRDDFunctions.scala:728)
         at org.apache.spark.rdd.PairRDDFunctions$$anonfun$saveAsHadoopDataset$2.apply(PairRDDFunctions.scala:741)
         at org.apache.spark.rdd.PairRDDFunctions$$anonfun$saveAsHadoopDataset$2.apply(PairRDDFunctions.scala:741)
         at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:109)
         at org.apache.spark.scheduler.Task.run(Task.scala:53)
         at org.apache.spark.executor.Executor$TaskRunner$$anonfun$run$1.apply$mcV$sp(Executor.scala:211)
         at org.apache.spark.deploy.SparkHadoopUtil$$anon$1.run(SparkHadoopUtil.scala:42)
         at org.apache.spark.deploy.SparkHadoopUtil$$anon$1.run(SparkHadoopUtil.scala:41)
         at java.security.AccessController.doPrivileged(Native Method)
         at javax.security.auth.Subject.doAs(Subject.java:415)
         at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1408)
         at org.apache.spark.deploy.SparkHadoopUtil.runAsUser(SparkHadoopUtil.scala:41)
         at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:176)
         at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
         at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
         at java.lang.Thread.run(Thread.java:745)
{noformat}
and
{noformat}
14/07/29 16:16:57 ERROR executor.Executor: Exception in task ID 6158
 org.apache.hadoop.ipc.RemoteException(org.apache.hadoop.hdfs.server.namenode.LeaseExpiredException): No lease on /path/to/a/dir/\_temporary/\_attempt\_201407291616\_0000\_m\_0002
         at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.checkLease(FSNamesystem.java:2445)
         at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.checkLease(FSNamesystem.java:2437)
         at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.completeFileInternal(FSNamesystem.java:2503)
         at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.completeFile(FSNamesystem.java:2480)
         at org.apache.hadoop.hdfs.server.namenode.NameNodeRpcServer.complete(NameNodeRpcServer.java:556)
         at org.apache.hadoop.hdfs.protocolPB.ClientNamenodeProtocolServerSideTranslatorPB.complete(ClientNamenodeProtocolServerSideTranslatorPB.java:337)
         at org.apache.hadoop.hdfs.protocol.proto.ClientNamenodeProtocolProtos$ClientNamenodeProtocol$2.callBlockingMethod(ClientNamenodeProtocolProtos.java:44958)
         at org.apache.hadoop.ipc.ProtobufRpcEngine$Server$ProtoBufRpcInvoker.call(ProtobufRpcEngine.java:453)
         at org.apache.hadoop.ipc.RPC$Server.call(RPC.java:1002)
         at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:1751)
         at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:1747)
         at java.security.AccessController.doPrivileged(Native Method)
         at javax.security.auth.Subject.doAs(Subject.java:415)
         at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1408)
         at org.apache.hadoop.ipc.Server$Handler.run(Server.java:1745)

         at org.apache.hadoop.ipc.Client.call(Client.java:1225)
         at org.apache.hadoop.ipc.ProtobufRpcEngine$Invoker.invoke(ProtobufRpcEngine.java:202)
         at com.sun.proxy.$Proxy13.complete(Unknown Source)
         at sun.reflect.GeneratedMethodAccessor45.invoke(Unknown Source)
         at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
         at java.lang.reflect.Method.invoke(Method.java:606)
         at org.apache.hadoop.io.retry.RetryInvocationHandler.invokeMethod(RetryInvocationHandler.java:164)
         at org.apache.hadoop.io.retry.RetryInvocationHandler.invoke(RetryInvocationHandler.java:83)
         at com.sun.proxy.$Proxy13.complete(Unknown Source)
         at org.apache.hadoop.hdfs.protocolPB.ClientNamenodeProtocolTranslatorPB.complete(ClientNamenodeProtocolTranslatorPB.java:329)
         at org.apache.hadoop.hdfs.DFSOutputStream.completeFile(DFSOutputStream.java:1769)
         at org.apache.hadoop.hdfs.DFSOutputStream.close(DFSOutputStream.java:1756)
         at org.apache.hadoop.fs.FSDataOutputStream$PositionCache.close(FSDataOutputStream.java:66)
         at org.apache.hadoop.fs.FSDataOutputStream.close(FSDataOutputStream.java:99)
         at java.io.FilterOutputStream.close(FilterOutputStream.java:160)
         at java.io.FilterOutputStream.close(FilterOutputStream.java:160)
         at org.apache.avro.file.DataFileWriter.close(DataFileWriter.java:376)
         at org.apache.avro.mapred.AvroOutputFormat$1.close(AvroOutputFormat.java:163)
         at org.apache.hadoop.mapred.SparkHadoopWriter.close(SparkHadoopWriter.scala:102)
         at org.apache.spark.rdd.PairRDDFunctions.org$apache$spark$rdd$PairRDDFunctions$$writeToFile$1(PairRDDFunctions.scala:737)
         at org.apache.spark.rdd.PairRDDFunctions$$anonfun$saveAsHadoopDataset$2.apply(PairRDDFunctions.scala:741)
         at org.apache.spark.rdd.PairRDDFunctions$$anonfun$saveAsHadoopDataset$2.apply(PairRDDFunctions.scala:741)
         at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:109)
         at org.apache.spark.scheduler.Task.run(Task.scala:53)
         at org.apache.spark.executor.Executor$TaskRunner$$anonfun$run$1.apply$mcV$sp(Executor.scala:211)
         at org.apache.spark.deploy.SparkHadoopUtil$$anon$1.run(SparkHadoopUtil.scala:42)
{noformat}
and
{noformat}
14/07/29 21:01:33 ERROR executor.Executor: Exception in task ID 150
 org.apache.hadoop.ipc.RemoteException(org.apache.hadoop.hdfs.server.namenode.LeaseExpiredException): No lease on /path/to/dir/main/\_temporary/\_attempt\_201407292101\_0000\_m\_000125\_150/part-0012
         at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.checkLease(FSNamesystem.java:2445)
         at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.checkLease(FSNamesystem.java:2437)
         at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.completeFileInternal(FSNamesystem.java:2503)
         at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.completeFile(FSNamesystem.java:2480)
         at org.apache.hadoop.hdfs.server.namenode.NameNodeRpcServer.complete(NameNodeRpcServer.java:556)
         at org.apache.hadoop.hdfs.protocolPB.ClientNamenodeProtocolServerSideTranslatorPB.complete(ClientNamenodeProtocolServerSideTranslatorPB.java:337)
         at org.apache.hadoop.hdfs.protocol.proto.ClientNamenodeProtocolProtos$ClientNamenodeProtocol$2.callBlockingMethod(ClientNamenodeProtocolProtos.java:44958)
         at org.apache.hadoop.ipc.ProtobufRpcEngine$Server$ProtoBufRpcInvoker.call(ProtobufRpcEngine.java:453)
         at org.apache.hadoop.ipc.RPC$Server.call(RPC.java:1002)
         at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:1751)
         at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:1747)
         at java.security.AccessController.doPrivileged(Native Method)
         at javax.security.auth.Subject.doAs(Subject.java:415)
         at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1408)
         at org.apache.hadoop.ipc.Server$Handler.run(Server.java:1745)
{noformat}
-- Andrew Ash


---

* [SPARK-2945](https://issues.apache.org/jira/browse/SPARK-2945) | *Major* | **Allow specifying num of executors in the context configuration**

Running on YARN, the only way to specify the number of executors seems to be on the command line of spark-submit, via the --num-executors switch.

In many cases this is too early. Our Spark app receives some cmdline arguments which determine the amount of work that needs to be done - and that affects the number of executors it ideally requires. Ideally, the Spark context configuration would support specifying this like any other config param.

Our current workaround is a wrapper script that determines how much work is needed, and which itself launches spark-submit with the number passed to --num-executors - it's a shame to have to do this.


---

* [SPARK-2909](https://issues.apache.org/jira/browse/SPARK-2909) | *Minor* | **Indexing for SparseVector in pyspark**

SparseVector in pyspark does not currently support indexing, except by examining the internal representation.  Though indexing is a pricy operation, it would be useful for, e.g., iterating through a dataset (RDD[LabeledPoint]) and operating on a single feature.


---

* [SPARK-2823](https://issues.apache.org/jira/browse/SPARK-2823) | *Major* | **GraphX jobs throw IllegalArgumentException**

If the users set “spark.default.parallelism” and the value is different with the EdgeRDD partition number, GraphX jobs will throw IllegalArgumentException:

14/07/26 21:06:51 WARN DAGScheduler: Creating new stage failed due to exception - job: 1
java.lang.IllegalArgumentException: Can't zip RDDs with unequal numbers of partitions
        at org.apache.spark.rdd.ZippedPartitionsBaseRDD.getPartitions(ZippedPartitionsRDD.scala:60)
        at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:204)
        at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:202)
        at scala.Option.getOrElse(Option.scala:120)
        at org.apache.spark.rdd.RDD.partitions(RDD.scala:202)
        at org.apache.spark.rdd.ZippedPartitionsBaseRDD.getPartitions(ZippedPartitionsRDD.scala:54)
        at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:204)
        at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:202)
        at scala.Option.getOrElse(Option.scala:120)
        at org.apache.spark.rdd.RDD.partitions(RDD.scala:202)
        at org.apache.spark.rdd.MapPartitionsRDD.getPartitions(MapPartitionsRDD.scala:32)
        at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:204)
        at org.apache.spark.rdd.RDD$$anonfun$partitions$2.apply(RDD.scala:202)
        at scala.Option.getOrElse(Option.scala:120)
        at org.apache.spark.rdd.RDD.partitions(RDD.scala:202)
        at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$getShuffleMapStage(DAGScheduler.scala:1
97)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$visit$1$1.apply(DAGScheduler.s
cala:272)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$visit$1$1.apply(DAGScheduler.s
cala:269)
        at scala.collection.immutable.List.foreach(List.scala:318)
        at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$visit$1(DAGScheduler.scala:269)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$visit$1$1.apply(DAGScheduler.s
cala:274)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$visit$1$1.apply(DAGScheduler.s
cala:269)
        at scala.collection.immutable.List.foreach(List.scala:318)
        at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$visit$1(DAGScheduler.scala:269)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$visit$1$1.apply(DAGScheduler.s
cala:274)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$visit$1$1.apply(DAGScheduler.s
cala:269)
        at scala.collection.immutable.List.foreach(List.scala:318)
        at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$visit$1(DAGScheduler.scala:269)
        at org.apache.spark.scheduler.DAGScheduler.getParentStages(DAGScheduler.scala:279)
        at org.apache.spark.scheduler.DAGScheduler.newStage(DAGScheduler.scala:219)
        at org.apache.spark.scheduler.DAGScheduler.handleJobSubmitted(DAGScheduler.scala:672)
        at org.apache.spark.scheduler.DAGSchedulerEventProcessActor$$anonfun$receive$2.applyOrElse(DAGScheduler.scala:1184)
        at akka.actor.ActorCell.receiveMessage(ActorCell.scala:498)
        at akka.actor.ActorCell.invoke(ActorCell.scala:456)
        at akka.dispatch.Mailbox.processMailbox(Mailbox.scala:237)
        at akka.dispatch.Mailbox.run(Mailbox.scala:219)
        at akka.dispatch.ForkJoinExecutorConfigurator$AkkaForkJoinTask.exec(AbstractDispatcher.scala:386)
        at scala.concurrent.forkjoin.ForkJoinTask.doExec(ForkJoinTask.java:260)
        at scala.concurrent.forkjoin.ForkJoinPool$WorkQueue.runTask(ForkJoinPool.java:1339)
        at scala.concurrent.forkjoin.ForkJoinPool.runWorker(ForkJoinPool.java:1979)
        at scala.concurrent.forkjoin.ForkJoinWorkerThread.run(ForkJoinWorkerThread.java:107)


---

* [SPARK-2757](https://issues.apache.org/jira/browse/SPARK-2757) | *Major* | **Add Mima test for Spark Sink after 1.1.0 is released**

We are adding it in 1.1.0, so it is excluded from Mima right now. Once we release 1.1.0, we should add it to Mima so we do binary compat checks.


---

* [SPARK-2672](https://issues.apache.org/jira/browse/SPARK-2672) | *Major* | **Support compression in wholeFile()**

The wholeFile() can not read compressed files, it should be, just like textFile().


---

* [SPARK-2663](https://issues.apache.org/jira/browse/SPARK-2663) | *Major* | **Support the GroupingSet/ROLLUP/CUBE**

Add the feature of GroupingSet, including CUBE, ROLLUP, GROUPING\_\_ID.


---

* [SPARK-2554](https://issues.apache.org/jira/browse/SPARK-2554) | *Minor* | **CountDistinct and SumDistinct should do partial aggregation**

{{CountDistinct}} and {{SumDistinct}} should first do a partial aggregation and return unique value sets in each partition as partial results. Shuffle IO can be greatly reduced in in cases that there are only a few unique values.


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

* [SPARK-2458](https://issues.apache.org/jira/browse/SPARK-2458) | *Major* | **Make failed application log visible on History Server**

History server is very helpful for debugging application correctness & performance after the application finished. However, when the application failed, the link is not listed on the hisotry server UI and history can't be viewed.
It would be very useful if we can check the history of failed application.


---

* [SPARK-2450](https://issues.apache.org/jira/browse/SPARK-2450) | *Major* | **Provide link to YARN executor logs on UI**

When running under YARN, provide links to executor logs from the web UI to avoid the need to drill down through the YARN UI.


---

* [SPARK-2313](https://issues.apache.org/jira/browse/SPARK-2313) | *Major* | **PySpark should accept port via a command line argument rather than STDIN**

Relying on stdin is a brittle mechanism and has broken several times in the past. From what I can tell this is used only to bootstrap worker.py one time. It would be strictly simpler to just pass it is a command line.


---

* [SPARK-2309](https://issues.apache.org/jira/browse/SPARK-2309) | *Critical* | **Generalize the binary logistic regression into multinomial logistic regression**

Currently, there is no multi-class classifier in mllib. Logistic regression can be extended to multinomial one straightforwardly. 


The following formula will be implemented. 
http://www.slideshare.net/dbtsai/2014-0620-mlor-36132297/25


---

* [SPARK-2261](https://issues.apache.org/jira/browse/SPARK-2261) | *Minor* | **Spark application event logs are not very NameNode-friendly**

Currently, EventLoggingListener will generate application logs using, in the worst case, five different entries in the file system:

* The directory to hold the files
* One file for the Spark version
* One file for the event logs
* One file to identify the compression codec of the event logs
* One file to say the application is finished.

It would be better to be more friendly to the NameNodes and use a single entry for all of those.


---

* [SPARK-2165](https://issues.apache.org/jira/browse/SPARK-2165) | *Major* | **spark on yarn: add support for setting maxAppAttempts in the ApplicationSubmissionContext**

Hadoop 2.x adds support for allowing the application to specify the maximum application attempts. We should add support for it by setting in the ApplicationSubmissionContext.


---

* [SPARK-2075](https://issues.apache.org/jira/browse/SPARK-2075) | *Critical* | **Anonymous classes are missing from Spark distribution**

Running a job built against the Maven dep for 1.0.0 and the hadoop1 distribution produces:

{code}
java.lang.ClassNotFoundException:
org.apache.spark.rdd.RDD$$anonfun$saveAsTextFile$1
{code}

Here's what's in the Maven dep as of 1.0.0:

{code}
jar tvf ~/.m2/repository/org/apache/spark/spark-core\_2.10/1.0.0/spark-core\_2.10-1.0.0.jar | grep 'rdd/RDD' | grep 'saveAs'
  1519 Mon May 26 13:57:58 PDT 2014 org/apache/spark/rdd/RDD$anonfun$saveAsTextFile$1.class
  1560 Mon May 26 13:57:58 PDT 2014 org/apache/spark/rdd/RDD$anonfun$saveAsTextFile$2.class
{code}

And here's what's in the hadoop1 distribution:

{code}
jar tvf spark-assembly-1.0.0-hadoop1.0.4.jar| grep 'rdd/RDD' | grep 'saveAs'
{code}

I.e., it's not there.  It is in the hadoop2 distribution:

{code}
jar tvf spark-assembly-1.0.0-hadoop2.2.0.jar| grep 'rdd/RDD' | grep 'saveAs'
  1519 Mon May 26 07:29:54 PDT 2014 org/apache/spark/rdd/RDD$anonfun$saveAsTextFile$1.class
  1560 Mon May 26 07:29:54 PDT 2014 org/apache/spark/rdd/RDD$anonfun$saveAsTextFile$2.class
{code}


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

* [SPARK-1953](https://issues.apache.org/jira/browse/SPARK-1953) | *Major* | **yarn client mode Application Master memory size is same as driver memory size**

With Spark on yarn in client mode, the application master that gets created to allocated containers gets the same amount of memory as the driver running on the client. (--driver-memory option through spark-submit)  This could definitely be more then what is really needed, thus wasting resources.  The Application Master should be very small and require very little memory since all its doing is allocating and starting containers.  

We should allow the memory for the application master to be configurable separate from the driver in client mode. 

 We probably need to be careful about how we do this as to not cause confusion about what the options do in the various modes.


---

* [SPARK-1934](https://issues.apache.org/jira/browse/SPARK-1934) | *Minor* | **"this" reference escape to "selectorThread" during construction in ConnectionManager**

`selectorThread` starts in the construction of `org.apache.spark.network.ConnectionManager`, which may cause `writeRunnableStarted` and `readRunnableStarted` are uninitialized before them are used.

Indirectly, `BlockManager.this` also escape since it calls `new ConnectionManager(...)` and will be used in some threads of `ConnectionManager`. Some threads may view an uninitialized `BlockManager`.

In summary, it's dangerous and hard to analyse the correctness of concurrency. Such escape should be avoided.


---

* [SPARK-1911](https://issues.apache.org/jira/browse/SPARK-1911) | *Major* | **Warn users if their assembly jars are not built with Java 6**

The root cause of the problem is detailed in: https://issues.apache.org/jira/browse/SPARK-1520.

In short, an assembly jar built with Java 7+ is not always accessible by Python or other versions of Java (especially Java 6). If the assembly jar is not built on the cluster itself, this problem may manifest itself in strange exceptions that are not trivial to debug. This is an issue especially for PySpark on YARN, which relies on the python files included within the assembly jar.

Currently we warn users only in make-distribution.sh, but most users build the jars directly. At the very least we need to emphasize this in the docs (currently missing entirely). The next step is to add a warning prompt in the mvn scripts whenever Java 7+ is detected.


---

* [SPARK-1830](https://issues.apache.org/jira/browse/SPARK-1830) | *Major* | **Deploy failover, Make Persistence engine and LeaderAgent Pluggable.**

With current code base it is difficult to plugin an external user specified "Persistence Engine" or "Election Agent". It would be good to expose this as a pluggable API.


---

* [SPARK-1825](https://issues.apache.org/jira/browse/SPARK-1825) | *Major* | **Windows Spark fails to work with Linux YARN**

Windows Spark fails to work with Linux YARN.
This is a cross-platform problem.

This error occurs when 'yarn-client' mode is used.
(yarn-cluster/yarn-standalone mode was not tested.)

On YARN side, Hadoop 2.4.0 resolved the issue as follows:
https://issues.apache.org/jira/browse/YARN-1824

But Spark YARN module does not incorporate the new YARN API yet, so problem persists for Spark.

First, the following source files should be changed:
- /yarn/common/src/main/scala/org/apache/spark/deploy/yarn/ClientBase.scala
- /yarn/common/src/main/scala/org/apache/spark/deploy/yarn/ExecutorRunnableUtil.scala

Change is as follows:
- Replace .$() to .$$()
- Replace File.pathSeparator for Environment.CLASSPATH.name to ApplicationConstants.CLASS\_PATH\_SEPARATOR (import org.apache.hadoop.yarn.api.ApplicationConstants is required for this)

Unless the above are applied, launch\_container.sh will contain invalid shell script statements(since they will contain Windows-specific separators), and job will fail.
Also, the following symptom should also be fixed (I could not find the relevant source code):
- SPARK\_HOME environment variable is copied straight to launch\_container.sh. It should be changed to the path format for the server OS, or, the better, a separate environment variable or a configuration variable should be created.
- '%HADOOP\_MAPRED\_HOME%' string still exists in launch\_container.sh, after the above change is applied. maybe I missed a few lines.

I'm not sure whether this is all, since I'm new to both Spark and YARN.


---

* [SPARK-1670](https://issues.apache.org/jira/browse/SPARK-1670) | *Major* | **PySpark Fails to Create SparkContext Due To Debugging Options in conf/java-opts**

When JVM debugging options are in conf/java-opts, it causes pyspark to fail when creating the SparkContext. The java-opts file looks like the following:
{code}-agentlib:jdwp=transport=dt\_socket,server=y,suspend=n,address=5005
{code}
Here's the error:
{code}---------------------------------------------------------------------------
ValueError                                Traceback (most recent call last)
/Library/Python/2.7/site-packages/IPython/utils/py3compat.pyc in execfile(fname, *where)
    202             else:
    203                 filename = fname
--> 204             \_\_builtin\_\_.execfile(filename, *where)

/Users/pat/Projects/spark/python/pyspark/shell.py in <module>()
     41     SparkContext.setSystemProperty("spark.executor.uri", os.environ["SPARK\_EXECUTOR\_URI"])
     42 
---> 43 sc = SparkContext(os.environ.get("MASTER", "local[*]"), "PySparkShell", pyFiles=add\_files)
     44 
     45 print("""Welcome to

/Users/pat/Projects/spark/python/pyspark/context.pyc in \_\_init\_\_(self, master, appName, sparkHome, pyFiles, environment, batchSize, serializer, conf, gateway)
     92             tempNamedTuple = namedtuple("Callsite", "function file linenum")
     93             self.\_callsite = tempNamedTuple(function=None, file=None, linenum=None)
---> 94         SparkContext.\_ensure\_initialized(self, gateway=gateway)
     95 
     96         self.environment = environment or {}

/Users/pat/Projects/spark/python/pyspark/context.pyc in \_ensure\_initialized(cls, instance, gateway)
    172         with SparkContext.\_lock:
    173             if not SparkContext.\_gateway:
--> 174                 SparkContext.\_gateway = gateway or launch\_gateway()
    175                 SparkContext.\_jvm = SparkContext.\_gateway.jvm
    176                 SparkContext.\_writeToFile = SparkContext.\_jvm.PythonRDD.writeToFile

/Users/pat/Projects/spark/python/pyspark/java\_gateway.pyc in launch\_gateway()
     44         proc = Popen(command, stdout=PIPE, stdin=PIPE)
     45     # Determine which ephemeral port the server started on:
---> 46     port = int(proc.stdout.readline())
     47     # Create a thread to echo output from the GatewayServer, which is required
     48     # for Java log output to show up:

ValueError: invalid literal for int() with base 10: 'Listening for transport dt\_socket at address: 5005\n'
{code}

Note that when you use JVM debugging, the very first line of output (e.g. when running spark-shell) looks like this:
{code}Listening for transport dt\_socket at address: 5005{code}


---

* [SPARK-1600](https://issues.apache.org/jira/browse/SPARK-1600) | *Major* | **flaky "recovery with file input stream" test in streaming.CheckpointSuite**

the case "recovery with file input stream.recovery with file input stream  " sometimes fails when the Jenkins is very busy with an unrelated change 

I have met it for 3 times, I also saw it in other places, 

the latest example is in 

https://amplab.cs.berkeley.edu/jenkins/job/SparkPullRequestBuilder/14397/

where the modification is just in YARN related files....

I once reported in dev mail list: http://apache-spark-developers-list.1001551.n3.nabble.com/a-weird-test-case-in-Streaming-td6116.html


---

* [SPARK-1507](https://issues.apache.org/jira/browse/SPARK-1507) | *Major* | **Spark on Yarn: Add support for user to specify # cores for ApplicationMaster**

Now that Hadoop 2.x can schedule cores as a resource we should allow the user to specify the # of cores for the ApplicationMaster.


---

* [SPARK-1405](https://issues.apache.org/jira/browse/SPARK-1405) | *Critical* | **parallel Latent Dirichlet Allocation (LDA) atop of spark in MLlib**

Latent Dirichlet Allocation (a.k.a. LDA) is a topic model which extracts topics from text corpus. Different with current machine learning algorithms in MLlib, instead of using optimization algorithms such as gradient desent, LDA uses expectation algorithms such as Gibbs sampling. 

In this PR, I prepare a LDA implementation based on Gibbs sampling, with a wholeTextFiles API (solved yet), a word segmentation (import from Lucene), and a Gibbs sampling core.


---

* [SPARK-1302](https://issues.apache.org/jira/browse/SPARK-1302) | *Minor* | **httpd doesn't start in spark-ec2 (cc2.8xlarge)**

In a cc2.8xlarge EC2 cluster launched from master branch, httpd won't start (i.e ganglia doesn't work). The reason seems to be httpd.conf is wrong (newer httpd version ?).  The config file contains a bunch of non-existent modules and this happens because we overwrite the default conf with our config file from spark-ec2. We could explore using patch or something like that to just apply the diff we need


---

* [SPARK-1182](https://issues.apache.org/jira/browse/SPARK-1182) | *Minor* | **Sort the configuration parameters in configuration.md**

It is a little bit confusing right now since the config options are all over the place in some arbitrarily sorted order.

https://github.com/apache/spark/blob/master/docs/configuration.md


---

* [SPARK-1037](https://issues.apache.org/jira/browse/SPARK-1037) | *Minor* | **the name of findTaskFromList & findTask in TaskSetManager.scala is confusing**

the name of these two functions is confusing 

though in the comments the author said that the method does "dequeue" tasks from the list but from the name, it is not explicitly indicating that the method will mutate the parameter

in 

{code}
private def findTaskFromList(list: ArrayBuffer[Int]): Option[Int] = {
    while (!list.isEmpty) {
      val index = list.last
      list.trimEnd(1)
      if (copiesRunning(index) == 0 && !successful(index)) {
        return Some(index)
      }
    }
    None
  }
{code}


---

* [SPARK-960](https://issues.apache.org/jira/browse/SPARK-960) | *Major* | **JobCancellationSuite "two jobs sharing the same stage" is broken**

This test doesn't work as it appears to be intended since the map tasks can never acquire sem2.  The simplest way to demonstrate this is to comment out f1.cancel() in the future.  I believe the intention is that f1 and f2 would then complete normally; but they won't.  Instead, both jobs block, waiting on sem2.  It doesn't look like closing over Semaphores works even in a Local context, since sem2.hashCode() is different in each of f1, f2 and in the future containing f1.cancel, so the map jobs never see the sem2.release(10) in the future.

Instead, the test only completes because all of the stages (the two final stages and the common dependent stage) get cancelled and aborted.  When job <--> stage dependencies are fully accounted for and job cancellation changed so that f1.cancel does not abort the common stage, then this test can never finish since it then becomes hung waiting on sem2.


---

* [SPARK-874](https://issues.apache.org/jira/browse/SPARK-874) | *Minor* | **Have a --wait flag in ./sbin/stop-all.sh that polls until Worker's are finished**

When running benchmarking jobs, sometimes the cluster takes a long time to shut down. We should add a feature where it will ssh into all the workers every few seconds and check that the processes are dead, and won't return until they are all dead. This would help a lot with automating benchmarking scripts.

There is some equivalent logic here written in python, we just need to add it to the shell script:
https://github.com/pwendell/spark-perf/blob/master/bin/run#L117


---

* [SPARK-794](https://issues.apache.org/jira/browse/SPARK-794) | *Major* | **Remove sleep() in ClusterScheduler.stop**

This temporary change made a while back slows down the unit tests quite a bit.


---

* [SPARK-785](https://issues.apache.org/jira/browse/SPARK-785) | *Major* | **ClosureCleaner not invoked on most PairRDDFunctions**

It's pretty weird that we've missed this so far, but it seems to be the case. Unfortunately it may not be good to fix this in 0.7.3 because it could change behavior in unexpected ways; I haven't decided yet. But we should definitely do it for 0.8, and add tests.


---

* [SPARK-733](https://issues.apache.org/jira/browse/SPARK-733) | *Major* | **Add documentation on use of accumulators in lazy transformation**

Accumulators updates are side-effects of RDD computations.  Unlike RDDs, accumulators do not carry lineage that would allow them to be computed when their values are accessed on the master.

This can lead to confusion when accumulators are used in lazy transformations like `map`:

{code}
    val acc = sc.accumulator(0)
    data.map(x => acc += x; f(x))
    // Here, acc is 0 because no actions have cause the `map` to be computed.
{code}

As far as I can tell, our  documentation only includes examples of using accumulators in `foreach`, for which this problem does not occur.

This pattern of using accumulators in map() occurs in Bagel and other Spark code found in the wild.

It might be nice to document this behavior in the accumulators section of the Spark programming guide.



