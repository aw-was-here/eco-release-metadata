
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
# Apache Spark Changelog

## Release 2.0.3 - Unreleased (as of 2018-09-12)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-18125](https://issues.apache.org/jira/browse/SPARK-18125) | Spark generated code causes CompileException when groupByKey, reduceGroups and map(\_.\_2) are used |  Critical | SQL | Ray Qiu | Liang-Chi Hsieh |
| [SPARK-16845](https://issues.apache.org/jira/browse/SPARK-16845) | org.apache.spark.sql.catalyst.expressions.GeneratedClass$SpecificOrdering" grows beyond 64 KB |  Major | SQL | hejie | Liwei Lin |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-18869](https://issues.apache.org/jira/browse/SPARK-18869) | Add TreeNode.p that returns BaseType |  Major | SQL | Reynold Xin | Reynold Xin |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-16968](https://issues.apache.org/jira/browse/SPARK-16968) | Allow to add additional options when creating a new table in DF's JDBC writer. |  Minor | SQL | Jie Huang | Jie Huang |
| [SPARK-17703](https://issues.apache.org/jira/browse/SPARK-17703) | Add unnamed version of addReferenceObj for minor objects. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-18010](https://issues.apache.org/jira/browse/SPARK-18010) | Remove unneeded heavy work performed by FsHistoryProvider for building up the application listing UI page |  Major | Spark Core, Web UI | Vinayak Joshi | Vinayak Joshi |
| [SPARK-17843](https://issues.apache.org/jira/browse/SPARK-17843) | History Server gives no feedback about the application list being incomplete |  Minor | Web UI | Vinayak Joshi | Vinayak Joshi |
| [SPARK-18337](https://issues.apache.org/jira/browse/SPARK-18337) | Memory Sink should be able to recover from checkpoints in Complete OutputMode |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-18674](https://issues.apache.org/jira/browse/SPARK-18674) | improve the error message of using join |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18790](https://issues.apache.org/jira/browse/SPARK-18790) | Keep a general offset history of stream batches |  Major | Structured Streaming | Tyson Condie | Tyson Condie |
| [SPARK-18947](https://issues.apache.org/jira/browse/SPARK-18947) | SQLContext.tableNames should not call Catalog.listTables |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18972](https://issues.apache.org/jira/browse/SPARK-18972) | Fix the netty thread names for RPC |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18997](https://issues.apache.org/jira/browse/SPARK-18997) | Recommended upgrade libthrift  to 0.9.3 |  Minor | Build | meiyoula | Sean Owen |
| [SPARK-19333](https://issues.apache.org/jira/browse/SPARK-19333) | Files out of compliance with ASF policy |  Minor | . | John D. Ament | Felix Cheung |
| [SPARK-19501](https://issues.apache.org/jira/browse/SPARK-19501) | Slow checking if there are many spark.yarn.jars, which are already on HDFS |  Minor | YARN | Jong Wook Kim | Jong Wook Kim |
| [SPARK-19986](https://issues.apache.org/jira/browse/SPARK-19986) | Make pyspark.streaming.tests.CheckpointTests more stable |  Major | Tests | Shixiong Zhu |  |
| [SPARK-20475](https://issues.apache.org/jira/browse/SPARK-20475) | Whether use "broadcast join" depends on hive configuration |  Major | SQL | Lijia Liu |  |
| [SPARK-20868](https://issues.apache.org/jira/browse/SPARK-20868) | UnsafeShuffleWriter should verify the position after FileChannel.transferTo |  Major | Spark Core | Wenchen Fan | Wenchen Fan |
| [SPARK-25089](https://issues.apache.org/jira/browse/SPARK-25089) | remove lintr checks for 2.0 and 2.1 |  Minor | Build | shane knapp | shane knapp |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-17458](https://issues.apache.org/jira/browse/SPARK-17458) | Alias specified for aggregates in a pivot are not honored |  Major | SQL | Ravi Somepalli | Andrew Ray |
| [SPARK-17693](https://issues.apache.org/jira/browse/SPARK-17693) | Fixed Insert Failure To Data Source Tables when the Schema has the Comment Field |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-18133](https://issues.apache.org/jira/browse/SPARK-18133) | Python ML Pipeline Example has syntax errors |  Minor | Examples, ML | Nirmal Fernando | Jagadeesan A S |
| [SPARK-18111](https://issues.apache.org/jira/browse/SPARK-18111) | Wrong ApproximatePercentile answer when multiple records have the minimum value |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-18144](https://issues.apache.org/jira/browse/SPARK-18144) | StreamingQueryListener.QueryStartedEvent is not written to event log |  Minor | Structured Streaming | Shixiong Zhu | Nan Zhu |
| [SPARK-18160](https://issues.apache.org/jira/browse/SPARK-18160) | spark.files & spark.jars should not be passed to driver in yarn mode |  Critical | Spark Core, YARN | Jeff Zhang | Jeff Zhang |
| [SPARK-18200](https://issues.apache.org/jira/browse/SPARK-18200) | GraphX Invalid initial capacity when running triangleCount |  Major | GraphX | Denny Lee | Dongjoon Hyun |
| [SPARK-17981](https://issues.apache.org/jira/browse/SPARK-17981) | Incorrectly Set Nullability to False in FilterExec |  Critical | SQL | Xiao Li | Xiao Li |
| [SPARK-18237](https://issues.apache.org/jira/browse/SPARK-18237) | hive.exec.stagingdir have no effect in spark2.0.1 |  Major | SQL | ClassNotFoundExp | ClassNotFoundExp |
| [SPARK-17849](https://issues.apache.org/jira/browse/SPARK-17849) | grouping set throws NPE |  Major | SQL | Yang Wang | Yang Wang |
| [SPARK-18137](https://issues.apache.org/jira/browse/SPARK-18137) | RewriteDistinctAggregates UnresolvedException when a UDAF has a foldable TypeCheck |  Major | SQL | Song Jun | Song Jun |
| [SPARK-18280](https://issues.apache.org/jira/browse/SPARK-18280) | Potential deadlock in \`StandaloneSchedulerBackend.dead\` |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-16808](https://issues.apache.org/jira/browse/SPARK-16808) | History Server main page does not honor APPLICATION\_WEB\_PROXY\_BASE |  Major | . | Michael Gummelt | Vinayak Joshi |
| [SPARK-18368](https://issues.apache.org/jira/browse/SPARK-18368) | Regular expression replace throws NullPointerException when serialized |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-17982](https://issues.apache.org/jira/browse/SPARK-17982) | SQLBuilder should wrap the generated SQL with parenthesis for LIMIT |  Blocker | SQL | Franck Tago | Dongjoon Hyun |
| [SPARK-18387](https://issues.apache.org/jira/browse/SPARK-18387) | Test that expressions can be serialized |  Blocker | . | Ryan Blue | Ryan Blue |
| [SPARK-18382](https://issues.apache.org/jira/browse/SPARK-18382) | "run at null:-1" in UI when no file/line info in call site info |  Trivial | Spark Core, Web UI | Emiliano Amendola | Sean Owen |
| [SPARK-17348](https://issues.apache.org/jira/browse/SPARK-17348) | Incorrect results from subquery transformation |  Major | SQL | Nattavut Sutyanyong | Nattavut Sutyanyong |
| [SPARK-18430](https://issues.apache.org/jira/browse/SPARK-18430) | Returned Message Null when Hitting an Invocation Exception of Function Lookup. |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-18300](https://issues.apache.org/jira/browse/SPARK-18300) | ClassCastException during count distinct |  Major | SQL | Emlyn Corrin | Herman van Hovell |
| [SPARK-18400](https://issues.apache.org/jira/browse/SPARK-18400) | NPE when resharding Kinesis Stream |  Minor | DStreams | Brian ONeill | Sean Owen |
| [SPARK-18172](https://issues.apache.org/jira/browse/SPARK-18172) | AnalysisException in first/last during aggregation |  Major | SQL | Emlyn Corrin | Song Jun |
| [SPARK-18462](https://issues.apache.org/jira/browse/SPARK-18462) | SparkListenerDriverAccumUpdates event does not deserialize properly in history server |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-18444](https://issues.apache.org/jira/browse/SPARK-18444) | SparkR running in yarn-cluster mode should not download Spark package |  Critical | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-18519](https://issues.apache.org/jira/browse/SPARK-18519) | map type can not be used in EqualTo |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18504](https://issues.apache.org/jira/browse/SPARK-18504) | Scalar subquery with extra group by columns returning incorrect result |  Major | SQL | Nattavut Sutyanyong | Nattavut Sutyanyong |
| [SPARK-18053](https://issues.apache.org/jira/browse/SPARK-18053) | ARRAY equality is broken in Spark 2.0 |  Major | SQL | Cheng Lian | Wenchen Fan |
| [SPARK-18436](https://issues.apache.org/jira/browse/SPARK-18436) | isin causing SQL syntax error with JDBC |  Major | SQL | Dan | Xingbo Jiang |
| [SPARK-17251](https://issues.apache.org/jira/browse/SPARK-17251) | "ClassCastException: OuterReference cannot be cast to NamedExpression" for correlated subquery on the RHS of an IN operator |  Major | SQL | Josh Rosen | Dongjoon Hyun |
| [SPARK-18118](https://issues.apache.org/jira/browse/SPARK-18118) | SpecificSafeProjection.apply of Java Object from Dataset to JavaRDD Grows Beyond 64 KB |  Major | SQL | Aleksander Eskilson | Kazuaki Ishizaki |
| [SPARK-17783](https://issues.apache.org/jira/browse/SPARK-17783) | Hide Credentials in CREATE and DESC FORMATTED/EXTENDED a PERSISTENT/TEMP Table for JDBC |  Critical | SQL | Xiao Li | Xiao Li |
| [SPARK-18597](https://issues.apache.org/jira/browse/SPARK-18597) | Do not push down filters for LEFT ANTI JOIN |  Minor | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-18617](https://issues.apache.org/jira/browse/SPARK-18617) | Close "kryo auto pick" feature for Spark Streaming |  Major | . | Genmao Yu | Genmao Yu |
| [SPARK-17897](https://issues.apache.org/jira/browse/SPARK-17897) | not isnotnull is converted to the always false condition isnotnull && not isnotnull |  Major | Optimizer | Jordan Halterman | Xiao Li |
| [SPARK-18553](https://issues.apache.org/jira/browse/SPARK-18553) | Executor loss may cause TaskSetManager to be leaked |  Blocker | Scheduler | Josh Rosen | Josh Rosen |
| [SPARK-18274](https://issues.apache.org/jira/browse/SPARK-18274) | Memory leak in PySpark StringIndexer |  Critical | ML, PySpark | Jonas Amrich | Sandeep Singh |
| [SPARK-18640](https://issues.apache.org/jira/browse/SPARK-18640) | Fix minor synchronization issue in TaskSchedulerImpl.runningTasksByExecutors |  Minor | Scheduler | Josh Rosen | Josh Rosen |
| [SPARK-18677](https://issues.apache.org/jira/browse/SPARK-18677) | Json path implementation fails to parse ['key'] |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-18091](https://issues.apache.org/jira/browse/SPARK-18091) | Deep if expressions cause Generated SpecificUnsafeProjection code to exceed JVM code size limit |  Critical | SQL | Kapil Singh | Kapil Singh |
| [SPARK-18634](https://issues.apache.org/jira/browse/SPARK-18634) | Corruption and Correctness issues with exploding Python UDFs |  Major | PySpark, SQL | Burak Yavuz | Liang-Chi Hsieh |
| [SPARK-18555](https://issues.apache.org/jira/browse/SPARK-18555) | na.fill miss up original values in long integers |  Critical | SQL | Mahmoud Rawas | Song Jun |
| [SPARK-18208](https://issues.apache.org/jira/browse/SPARK-18208) | Executor OOM due to a memory leak in BytesToBytesMap |  Major | Shuffle | Jie Xiong | Jie Xiong |
| [SPARK-17760](https://issues.apache.org/jira/browse/SPARK-17760) | DataFrame's pivot doesn't see column created in groupBy |  Major | PySpark | Alberto Bonsanto | Andrew Ray |
| [SPARK-18762](https://issues.apache.org/jira/browse/SPARK-18762) | Web UI should be http:4040 instead of https:4040 |  Blocker | Spark Shell, Web UI | Xiangrui Meng | Kousuke Saruta |
| [SPARK-16589](https://issues.apache.org/jira/browse/SPARK-16589) | Chained cartesian produces incorrect number of records |  Major | PySpark | Maciej Szymkiewicz | Andrew Ray |
| [SPARK-17822](https://issues.apache.org/jira/browse/SPARK-17822) | JVMObjectTracker.objMap may leak JVM objects |  Major | SparkR | Yin Huai | Xiangrui Meng |
| [SPARK-18745](https://issues.apache.org/jira/browse/SPARK-18745) | java.lang.IndexOutOfBoundsException running query 68 Spark SQL on (100TB) |  Critical | SQL | JESSE CHEN | Kazuaki Ishizaki |
| [SPARK-18675](https://issues.apache.org/jira/browse/SPARK-18675) | CTAS for hive serde table should work for all hive versions |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18843](https://issues.apache.org/jira/browse/SPARK-18843) | Fix timeout in awaitResultInForkJoinSafely |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18853](https://issues.apache.org/jira/browse/SPARK-18853) | Project (UnaryNode) is way too aggressive in estimating statistics |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-18854](https://issues.apache.org/jira/browse/SPARK-18854) | getNodeNumbered and generateTreeString are not consistent |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-18703](https://issues.apache.org/jira/browse/SPARK-18703) | Insertion/CTAS against Hive Tables: Staging Directories and Data Files Not Dropped Until Normal Termination of JVM |  Critical | SQL | Xiao Li | Xiao Li |
| [SPARK-18875](https://issues.apache.org/jira/browse/SPARK-18875) | Fix R API doc generation by adding \`DESCRIPTION\` file |  Minor | Documentation, SparkR | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-18897](https://issues.apache.org/jira/browse/SPARK-18897) | Fix SparkR SQL Test to drop test table |  Major | SparkR, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-18827](https://issues.apache.org/jira/browse/SPARK-18827) | Cann't read broadcast if broadcast blocks are stored on-disk |  Major | Spark Core | Yuming Wang | Yuming Wang |
| [SPARK-18700](https://issues.apache.org/jira/browse/SPARK-18700) | getCached in HiveMetastoreCatalog not thread safe cause driver OOM |  Major | SQL | Li Yuanjian | Li Yuanjian |
| [SPARK-18928](https://issues.apache.org/jira/browse/SPARK-18928) | FileScanRDD, JDBCRDD, and UnsafeSorter should support task cancellation |  Major | Spark Core, SQL | Josh Rosen | Josh Rosen |
| [SPARK-18761](https://issues.apache.org/jira/browse/SPARK-18761) | Uncancellable / unkillable tasks may starve jobs of resoures |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-18281](https://issues.apache.org/jira/browse/SPARK-18281) | toLocalIterator yields time out error on pyspark2 |  Major | PySpark | Luke Miner | Liang-Chi Hsieh |
| [SPARK-18031](https://issues.apache.org/jira/browse/SPARK-18031) | Flaky test: org.apache.spark.streaming.scheduler.ExecutorAllocationManagerSuite basic functionality |  Major | Spark Core | Davies Liu | Shixiong Zhu |
| [SPARK-18954](https://issues.apache.org/jira/browse/SPARK-18954) | Fix flaky test: o.a.s.streaming.BasicOperationsSuite rdd cleanup - map and window |  Major | Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18528](https://issues.apache.org/jira/browse/SPARK-18528) | limit + groupBy leads to java.lang.NullPointerException |  Major | PySpark, SQL | Corey | Takeshi Yamamuro |
| [SPARK-17807](https://issues.apache.org/jira/browse/SPARK-17807) | Scalatest listed as compile dependency in spark-tags |  Trivial | Spark Core | Tom Standard | Ryan Williams |
| [SPARK-18993](https://issues.apache.org/jira/browse/SPARK-18993) | Unable to build/compile Spark in IntelliJ due to missing Scala deps in spark-tags |  Critical | Build | Xiao Li | Sean Owen |
| [SPARK-18877](https://issues.apache.org/jira/browse/SPARK-18877) | Unable to read given csv data. Excepion: java.lang.IllegalArgumentException: requirement failed: Decimal precision 28 exceeds max precision 20 |  Major | SQL | Navya Krishnappa | Dongjoon Hyun |
| [SPARK-19110](https://issues.apache.org/jira/browse/SPARK-19110) | DistributedLDAModel returns different logPrior for original and loaded model |  Major | ML, MLlib | Miao Wang | Miao Wang |
| [SPARK-18857](https://issues.apache.org/jira/browse/SPARK-18857) | SparkSQL ThriftServer hangs while extracting huge data volumes in incremental collect mode |  Major | SQL | vishal agrawal | Dongjoon Hyun |
| [SPARK-19133](https://issues.apache.org/jira/browse/SPARK-19133) | SparkR glm Gamma family results in error |  Major | ML, SparkR | Felix Cheung | Felix Cheung |
| [SPARK-18969](https://issues.apache.org/jira/browse/SPARK-18969) | PullOutNondeterministic should work for Aggregate operator |  Major | SQL | Reynold Xin | Wenchen Fan |
| [SPARK-19055](https://issues.apache.org/jira/browse/SPARK-19055) | SparkSession initialization will be associated with invalid SparkContext when new SparkContext is created to replace stopped SparkContext |  Major | PySpark, SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-18687](https://issues.apache.org/jira/browse/SPARK-18687) | Backward compatibility - creating a Dataframe on a new SQLContext object fails with a Derby error |  Major | PySpark, SQL | Vinayak Joshi | Vinayak Joshi |
| [SPARK-19178](https://issues.apache.org/jira/browse/SPARK-19178) | convert string of large numbers to int should return null |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17237](https://issues.apache.org/jira/browse/SPARK-17237) | DataFrame fill after pivot causing org.apache.spark.sql.AnalysisException |  Major | SQL | Jiang Qiqi | Takeshi Yamamuro |
| [SPARK-19180](https://issues.apache.org/jira/browse/SPARK-19180) | the offset of short is 4 in OffHeapColumnVector's putShorts |  Major | SQL | yucai | yucai |
| [SPARK-19019](https://issues.apache.org/jira/browse/SPARK-19019) | PySpark does not work with Python 3.6.0 |  Critical | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-19314](https://issues.apache.org/jira/browse/SPARK-19314) | Do not allow sort before aggregation in Structured Streaming plan |  Blocker | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-18750](https://issues.apache.org/jira/browse/SPARK-18750) | spark should be able to control the number of executor and should not throw stack overslow |  Major | . | Neerja Khattar | Marcelo Vanzin |
| [SPARK-18863](https://issues.apache.org/jira/browse/SPARK-18863) | Output non-aggregate expressions without GROUP BY in a subquery does not yield an error |  Major | SQL | Nattavut Sutyanyong | Nattavut Sutyanyong |
| [SPARK-14804](https://issues.apache.org/jira/browse/SPARK-14804) | Graph vertexRDD/EdgeRDD checkpoint results ClassCastException: |  Minor | GraphX | SuYan | Tathagata Das |
| [SPARK-19220](https://issues.apache.org/jira/browse/SPARK-19220) | SSL redirect handler only redirects the server's root |  Major | Web UI | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-19472](https://issues.apache.org/jira/browse/SPARK-19472) | [SQL]SQLParser fails to resolve nested CASE WHEN statement with parentheses |  Major | SQL | StanZhai | Herman van Hovell |
| [SPARK-17975](https://issues.apache.org/jira/browse/SPARK-17975) | EMLDAOptimizer fails with ClassCastException on YARN |  Major | MLlib | Jeff Stein | Tathagata Das |
| [SPARK-19509](https://issues.apache.org/jira/browse/SPARK-19509) | GROUPING SETS throws NullPointerException when use an empty column |  Major | SQL | StanZhai | StanZhai |
| [SPARK-19585](https://issues.apache.org/jira/browse/SPARK-19585) | Fix the cacheTable and uncacheTable API call in the SQL Programming Guide |  Minor | Documentation | Sunitha Kambhampati | Sunitha Kambhampati |
| [SPARK-19586](https://issues.apache.org/jira/browse/SPARK-19586) | Incorrect push down filter for double negative in SQL |  Major | SQL | Everett Anderson | Xiao Li |
| [SPARK-19529](https://issues.apache.org/jira/browse/SPARK-19529) | TransportClientFactory.createClient() shouldn't call awaitUninterruptibly() |  Major | Shuffle, Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-19500](https://issues.apache.org/jira/browse/SPARK-19500) | Fail to spill the aggregated hash map when radix sort is used |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-19646](https://issues.apache.org/jira/browse/SPARK-19646) | binaryRecords replicates records in scala API |  Major | Spark Core | BahaaEddin AlAila | Sean Owen |
| [SPARK-19652](https://issues.apache.org/jira/browse/SPARK-19652) | REST API does not perform user auth for individual apps |  Major | Web UI | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-19038](https://issues.apache.org/jira/browse/SPARK-19038) | Can't find keytab file when using Hive catalog |  Major | YARN | Peter Parente | Saisai Shao |
| [SPARK-19677](https://issues.apache.org/jira/browse/SPARK-19677) | HDFSBackedStateStoreProvider fails to overwrite existing file |  Critical | Structured Streaming | Roberto Agostino Vitillo | Roberto Agostino Vitillo |
| [SPARK-19766](https://issues.apache.org/jira/browse/SPARK-19766) | INNER JOIN on constant alias columns return incorrect results |  Critical | SQL | StanZhai | StanZhai |
| [SPARK-19750](https://issues.apache.org/jira/browse/SPARK-19750) | Spark UI http -\> https redirect error |  Major | Web UI | Saisai Shao | Saisai Shao |
| [SPARK-19779](https://issues.apache.org/jira/browse/SPARK-19779) | structured streaming exist needless tmp file |  Minor | Structured Streaming | Feng Gui | Feng Gui |
| [SPARK-19822](https://issues.apache.org/jira/browse/SPARK-19822) | CheckpointSuite.testCheckpointedOperation: should not check checkpointFilesOfLatestTime by the PATH string. |  Minor | Tests | Genmao Yu | Genmao Yu |
| [SPARK-19348](https://issues.apache.org/jira/browse/SPARK-19348) | pyspark.ml.Pipeline gets corrupted under multi threaded use |  Major | ML, PySpark | Vinayak Joshi | Bryan Cutler |
| [SPARK-18055](https://issues.apache.org/jira/browse/SPARK-18055) | Dataset.flatMap can't work with types from customized jar |  Major | SQL | Davies Liu | Michael Armbrust |
| [SPARK-19893](https://issues.apache.org/jira/browse/SPARK-19893) | should not run DataFrame set oprations with map type |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-19994](https://issues.apache.org/jira/browse/SPARK-19994) | Wrong outputOrdering for right/full outer smj |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-17204](https://issues.apache.org/jira/browse/SPARK-17204) | Spark 2.0 off heap RDD persistence with replication factor 2 leads to in-memory data corruption |  Major | Spark Core | Michael Allman | Michael Allman |
| [SPARK-19959](https://issues.apache.org/jira/browse/SPARK-19959) | df[java.lang.Long].collect throws NullPointerException if df includes null |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-20223](https://issues.apache.org/jira/browse/SPARK-20223) | Typo in tpcds q77.sql |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-20214](https://issues.apache.org/jira/browse/SPARK-20214) | pyspark linalg \_convert\_to\_vector should check for sorted indices |  Major | ML, MLlib, PySpark, Tests | Joseph K. Bradley | Liang-Chi Hsieh |
| [SPARK-20246](https://issues.apache.org/jira/browse/SPARK-20246) | Should check determinism when pushing predicates down through aggregation |  Major | SQL | Weiluo Ren | Wenchen Fan |
| [SPARK-20270](https://issues.apache.org/jira/browse/SPARK-20270) | na.fill will change the values in long or integer when the default value is in double |  Critical | SQL | DB Tsai | DB Tsai |
| [SPARK-20285](https://issues.apache.org/jira/browse/SPARK-20285) | Flaky test: pyspark.streaming.tests.BasicOperationTests.test\_cogroup |  Minor | Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-20291](https://issues.apache.org/jira/browse/SPARK-20291) | NaNvl(FloatType, NullType) should not be cast to NaNvl(DoubleType, DoubleType) |  Major | SQL | DB Tsai | DB Tsai |
| [SPARK-20239](https://issues.apache.org/jira/browse/SPARK-20239) | Improve HistoryServer ACL mechanism |  Major | Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-20451](https://issues.apache.org/jira/browse/SPARK-20451) | Filter out nested mapType datatypes from sort order in randomSplit |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-20558](https://issues.apache.org/jira/browse/SPARK-20558) | clear InheritableThreadLocal variables in SparkContext when stopping it |  Major | Spark Core | Wenchen Fan | Wenchen Fan |
| [SPARK-20631](https://issues.apache.org/jira/browse/SPARK-20631) | LogisticRegression.\_checkThresholdConsistency should use values not Params |  Minor | ML, PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-20665](https://issues.apache.org/jira/browse/SPARK-20665) | Spark-sql, "Bround" and "Round" function return NULL |  Major | SQL | liuxian | liuxian |
| [SPARK-17424](https://issues.apache.org/jira/browse/SPARK-17424) | Dataset job fails from unsound substitution in ScalaReflect |  Major | Spark Core | Ryan Blue | Ryan Blue |
| [SPARK-20756](https://issues.apache.org/jira/browse/SPARK-20756) | yarn-shuffle jar has references to unshaded guava and contains scala classes |  Major | YARN | Mark Grover | Mark Grover |
| [SPARK-18406](https://issues.apache.org/jira/browse/SPARK-18406) | Race between end-of-task and completion iterator read lock release |  Major | Block Manager, Spark Core | Josh Rosen | Xingbo Jiang |
| [SPARK-20862](https://issues.apache.org/jira/browse/SPARK-20862) | LogisticRegressionModel throws TypeError |  Minor | MLlib, PySpark | Bago Amirbekian | Bago Amirbekian |
| [SPARK-20250](https://issues.apache.org/jira/browse/SPARK-20250) | Improper OOM error when a task been killed while spilling data |  Major | Spark Core | Feng Zhu | Xianyang Liu |
| [SPARK-20940](https://issues.apache.org/jira/browse/SPARK-20940) | AccumulatorV2 should not throw IllegalAccessError |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-20922](https://issues.apache.org/jira/browse/SPARK-20922) | Unsafe deserialization in Spark LauncherConnection |  Major | Spark Submit | Aditya Sharad | Marcelo Vanzin |
| [SPARK-20974](https://issues.apache.org/jira/browse/SPARK-20974) | we should run REPL tests if SQL core has code changes |  Major | Build | Wenchen Fan | Wenchen Fan |
| [SPARK-20211](https://issues.apache.org/jira/browse/SPARK-20211) | \`1 \> 0.0001\` throws Decimal scale (0) cannot be greater than precision (-2) exception |  Major | SQL | StanZhai | Xiao Li |
| [SPARK-16251](https://issues.apache.org/jira/browse/SPARK-16251) | LocalCheckpointSuite's - missing checkpoint block fails with informative message is flaky. |  Minor | . | Prashant Sharma | Xingbo Jiang |
| [SPARK-20200](https://issues.apache.org/jira/browse/SPARK-20200) | Flaky Test: org.apache.spark.rdd.LocalCheckpointSuite |  Minor | Spark Core | Takuya Ueshin | Xingbo Jiang |
| [SPARK-19688](https://issues.apache.org/jira/browse/SPARK-19688) | Spark on Yarn Credentials File set to different application directory |  Minor | DStreams, YARN | Devaraj Jonnadula | Xing Shi |
| [SPARK-21138](https://issues.apache.org/jira/browse/SPARK-21138) | Cannot delete staging dir when the clusters of "spark.yarn.stagingDir" and "spark.hadoop.fs.defaultFS" are different |  Major | YARN | sharkd tu | sharkd tu |
| [SPARK-21282](https://issues.apache.org/jira/browse/SPARK-21282) | Fix test failure in 2.0 |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-21426](https://issues.apache.org/jira/browse/SPARK-21426) | Fix test failure due to unsupported hex literals. |  Major | Tests | Xiao Li | Xiao Li |
| [SPARK-21344](https://issues.apache.org/jira/browse/SPARK-21344) | BinaryType comparison does signed byte array comparison |  Major | SQL | Shubham Chopra | Kazuaki Ishizaki |
| [SPARK-21332](https://issues.apache.org/jira/browse/SPARK-21332) | Incorrect result type inferred for some decimal expressions |  Major | SQL | Alexander Shkapsky | Anton Okolnychyi |
| [SPARK-21306](https://issues.apache.org/jira/browse/SPARK-21306) | OneVsRest Conceals Columns That May Be Relevant To Underlying Classifier |  Critical | ML | Cathal Garvey | Yan Facai (颜发才) |
| [SPARK-21522](https://issues.apache.org/jira/browse/SPARK-21522) | Flaky test: LauncherServerSuite.testStreamFiltering |  Minor | Tests | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-21551](https://issues.apache.org/jira/browse/SPARK-21551) | pyspark's collect fails when getaddrinfo is too slow |  Critical | PySpark | peay | peay |
| [SPARK-21950](https://issues.apache.org/jira/browse/SPARK-21950) | pyspark.sql.tests.SQLTests2 should stop SparkContext. |  Major | PySpark, SQL, Tests | Takuya Ueshin | Takuya Ueshin |
| [SPARK-21991](https://issues.apache.org/jira/browse/SPARK-21991) | [LAUNCHER] LauncherServer acceptConnections thread sometime dies if machine has very high load |  Minor | Spark Submit | Andrea Zito | Andrea Zito |
| [SPARK-22327](https://issues.apache.org/jira/browse/SPARK-22327) | R CRAN check fails on non-latest branches |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-23438](https://issues.apache.org/jira/browse/SPARK-23438) | DStreams could lose blocks with WAL enabled when driver crashes |  Critical | DStreams | Gabor Somogyi | Gabor Somogyi |
| [SPARK-23697](https://issues.apache.org/jira/browse/SPARK-23697) | Accumulators of Spark 1.x no longer work with Spark 2.x |  Major | Spark Core | Sergey Zhemzhitsky | Wenchen Fan |
| [SPARK-24257](https://issues.apache.org/jira/browse/SPARK-24257) | LongToUnsafeRowMap calculate the new size may be wrong |  Blocker | SQL | dzcxzl | dzcxzl |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-19481](https://issues.apache.org/jira/browse/SPARK-19481) | Fix flaky test: o.a.s.repl.ReplSuite should clone and clean line object in ClosureCleaner |  Major | Spark Shell | Shixiong Zhu | Shixiong Zhu |
| [SPARK-19604](https://issues.apache.org/jira/browse/SPARK-19604) | Log the start of every Python test |  Major | Tests | Yin Huai | Yin Huai |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-18283](https://issues.apache.org/jira/browse/SPARK-18283) | Add a test to make sure the default starting offset is latest |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-18416](https://issues.apache.org/jira/browse/SPARK-18416) | State Store leaks temporary files |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-18477](https://issues.apache.org/jira/browse/SPARK-18477) | Enable interrupts for HDFS in HDFSMetadataLog |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18685](https://issues.apache.org/jira/browse/SPARK-18685) | Fix all tests in ExecutorClassLoaderSuite to pass on Windows |  Minor | Spark Shell, Tests | Hyukjin Kwon | Hyukjin Kwon |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-18426](https://issues.apache.org/jira/browse/SPARK-18426) | Python Documentation Fix for Structured Streaming Programming Guide |  Minor | Documentation | Denny Lee | Denny Lee |
| [SPARK-18432](https://issues.apache.org/jira/browse/SPARK-18432) | Fix HDFS block size in programming guide |  Trivial | Documentation | Noritaka Sekiyama | Noritaka Sekiyama |
| [SPARK-19769](https://issues.apache.org/jira/browse/SPARK-19769) | Quickstart self-contained application instructions do not work with current sbt |  Trivial | Documentation | Michael McCune | Michael McCune |


