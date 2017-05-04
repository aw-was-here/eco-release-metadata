
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

## Release 2.1.1 - Unreleased (as of 2017-05-04)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-16845](https://issues.apache.org/jira/browse/SPARK-16845) | org.apache.spark.sql.catalyst.expressions.GeneratedClass$SpecificOrdering" grows beyond 64 KB |  Major | SQL | hejie | Liwei Lin |
| [SPARK-19407](https://issues.apache.org/jira/browse/SPARK-19407) | defaultFS is used FileSystem.get instead of getting it from uri scheme |  Major | Structured Streaming | Amit Assudani | Genmao Yu |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-18234](https://issues.apache.org/jira/browse/SPARK-18234) | Update mode in structured streaming |  Critical | Structured Streaming | Michael Armbrust | Tathagata Das |
| [SPARK-18788](https://issues.apache.org/jira/browse/SPARK-18788) | Add getNumPartitions() to SparkR |  Minor | SparkR | Raela Wang | Felix Cheung |
| [SPARK-18682](https://issues.apache.org/jira/browse/SPARK-18682) | Batch Source for Kafka |  Major | SQL, Structured Streaming | Michael Armbrust | Tyson Condie |
| [SPARK-20134](https://issues.apache.org/jira/browse/SPARK-20134) | SQLMetrics.postDriverMetricUpdates to simplify driver side metric updates |  Major | SQL | Reynold Xin | Reynold Xin |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-18379](https://issues.apache.org/jira/browse/SPARK-18379) | Make the parallelism of parallelPartitionDiscovery configurable. |  Minor | SQL | Genmao Yu | Genmao Yu |
| [SPARK-18850](https://issues.apache.org/jira/browse/SPARK-18850) | Make StreamExecution and progress classes serializable |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18921](https://issues.apache.org/jira/browse/SPARK-18921) | check database existence with Hive.databaseExists instead of getDatabase |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18949](https://issues.apache.org/jira/browse/SPARK-18949) | Add recoverPartitions API to Catalog |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-18947](https://issues.apache.org/jira/browse/SPARK-18947) | SQLContext.tableNames should not call Catalog.listTables |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18903](https://issues.apache.org/jira/browse/SPARK-18903) | uiWebUrl is not accessible to SparkR |  Minor | SparkR, Web UI | Diogo Munaro Vieira | Felix Cheung |
| [SPARK-18985](https://issues.apache.org/jira/browse/SPARK-18985) | Add missing @InterfaceStability.Evolving for Structured Streaming APIs |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18972](https://issues.apache.org/jira/browse/SPARK-18972) | Fix the netty thread names for RPC |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18991](https://issues.apache.org/jira/browse/SPARK-18991) | Change ContextCleaner.referenceBuffer to ConcurrentHashMap to make it faster |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18837](https://issues.apache.org/jira/browse/SPARK-18837) | Very long stage descriptions do not wrap in the UI |  Minor | Web UI | Yuming Wang | Kousuke Saruta |
| [SPARK-18669](https://issues.apache.org/jira/browse/SPARK-18669) | Update Apache docs regard watermarking in Structured Streaming |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-19041](https://issues.apache.org/jira/browse/SPARK-19041) | Fix code snippet compilation issues in Structured Streaming Programming Guide |  Minor | Structured Streaming | Liwei Lin | Liwei Lin |
| [SPARK-19074](https://issues.apache.org/jira/browse/SPARK-19074) | Update Structured Streaming Programming guide for Update Mode |  Major | Documentation, Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-19127](https://issues.apache.org/jira/browse/SPARK-19127) | Inconsistencies in dense\_rank and rank documentation |  Minor | . | Bill Chambers | Bill Chambers |
| [SPARK-19126](https://issues.apache.org/jira/browse/SPARK-19126) | Join Documentation Improvements |  Minor | . | Bill Chambers | Bill Chambers |
| [SPARK-18997](https://issues.apache.org/jira/browse/SPARK-18997) | Recommended upgrade libthrift  to 0.9.3 |  Minor | Build | meiyoula | Sean Owen |
| [SPARK-19140](https://issues.apache.org/jira/browse/SPARK-19140) | Allow update mode for non-aggregation streaming queries |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18335](https://issues.apache.org/jira/browse/SPARK-18335) | Add a numSlices parameter to SparkR's createDataFrame |  Major | SparkR | Shixiong Zhu | Felix Cheung |
| [SPARK-19168](https://issues.apache.org/jira/browse/SPARK-19168) | StateStore should be aborted upon error |  Minor | Structured Streaming | Liwei Lin | Liwei Lin |
| [SPARK-19330](https://issues.apache.org/jira/browse/SPARK-19330) | Also show tooltip for successful batches |  Trivial | DStreams | Liwei Lin | Liwei Lin |
| [SPARK-19333](https://issues.apache.org/jira/browse/SPARK-19333) | Files out of compliance with ASF policy |  Minor | . | John D. Ament | Felix Cheung |
| [SPARK-19377](https://issues.apache.org/jira/browse/SPARK-19377) | Killed tasks should have the status as KILLED |  Minor | Spark Core, Web UI | Devaraj K | Devaraj K |
| [SPARK-19499](https://issues.apache.org/jira/browse/SPARK-19499) | Add more notes in the comments of Sink.addBatch() |  Minor | Structured Streaming | Nan Zhu | Nan Zhu |
| [SPARK-19542](https://issues.apache.org/jira/browse/SPARK-19542) | Delete the temp checkpoint if a query is stopped without errors |  Minor | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-19501](https://issues.apache.org/jira/browse/SPARK-19501) | Slow checking if there are many spark.yarn.jars, which are already on HDFS |  Minor | YARN | Jong Wook Kim | Jong Wook Kim |
| [SPARK-19599](https://issues.apache.org/jira/browse/SPARK-19599) | Clean up HDFSMetadataLog |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-19682](https://issues.apache.org/jira/browse/SPARK-19682) | Issue warning (or error) when subset method "[[" takes vector index |  Minor | SparkR | Wayne Zhang | Wayne Zhang |
| [SPARK-19572](https://issues.apache.org/jira/browse/SPARK-19572) | Allow to disable hive in sparkR shell |  Minor | SparkR | Jeff Zhang | Jeff Zhang |
| [SPARK-19944](https://issues.apache.org/jira/browse/SPARK-19944) | Move SQLConf from sql/core to sql/catalyst |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-19946](https://issues.apache.org/jira/browse/SPARK-19946) | DebugFilesystem.assertNoOpenStreams should report the open streams to help debugging |  Minor | Tests | Bogdan Raducanu | Bogdan Raducanu |
| [SPARK-19986](https://issues.apache.org/jira/browse/SPARK-19986) | Make pyspark.streaming.tests.CheckpointTests more stable |  Major | Tests | Shixiong Zhu |  |
| [SPARK-19999](https://issues.apache.org/jira/browse/SPARK-19999) | Test failures in Spark Core due to java.nio.Bits.unaligned() |  Minor | Spark Core | Sonia Garudi | Sonia Garudi |
| [SPARK-17564](https://issues.apache.org/jira/browse/SPARK-17564) | Flaky RequestTimeoutIntegrationSuite, furtherRequestsDelay |  Minor | Tests | Adam Roberts | Shixiong Zhu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-18555](https://issues.apache.org/jira/browse/SPARK-18555) | na.fill miss up original values in long integers |  Critical | SQL | Mahmoud Rawas | Song Jun |
| [SPARK-18717](https://issues.apache.org/jira/browse/SPARK-18717) | Datasets - crash (compile exception) when mapping to immutable scala map |  Major | . | Damian Momot | Andrew Ray |
| [SPARK-18675](https://issues.apache.org/jira/browse/SPARK-18675) | CTAS for hive serde table should work for all hive versions |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18703](https://issues.apache.org/jira/browse/SPARK-18703) | Insertion/CTAS against Hive Tables: Staging Directories and Data Files Not Dropped Until Normal Termination of JVM |  Critical | SQL | Xiao Li | Xiao Li |
| [SPARK-18108](https://issues.apache.org/jira/browse/SPARK-18108) | Partition discovery fails with explicitly written long partitions |  Minor | SQL | Richard Moorhead | Takeshi Yamamuro |
| [SPARK-18897](https://issues.apache.org/jira/browse/SPARK-18897) | Fix SparkR SQL Test to drop test table |  Major | SparkR, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-18918](https://issues.apache.org/jira/browse/SPARK-18918) | Missing \</td\> in Configuration page |  Minor | Documentation | Xiao Li | Xiao Li |
| [SPARK-18827](https://issues.apache.org/jira/browse/SPARK-18827) | Cann't read broadcast if broadcast blocks are stored on-disk |  Major | Spark Core | Yuming Wang | Yuming Wang |
| [SPARK-18700](https://issues.apache.org/jira/browse/SPARK-18700) | getCached in HiveMetastoreCatalog not thread safe cause driver OOM |  Major | SQL | Li Yuanjian | Li Yuanjian |
| [SPARK-18928](https://issues.apache.org/jira/browse/SPARK-18928) | FileScanRDD, JDBCRDD, and UnsafeSorter should support task cancellation |  Major | Spark Core, SQL | Josh Rosen | Josh Rosen |
| [SPARK-18761](https://issues.apache.org/jira/browse/SPARK-18761) | Uncancellable / unkillable tasks may starve jobs of resoures |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-18899](https://issues.apache.org/jira/browse/SPARK-18899) | append data to a bucketed table with mismatched bucketing should fail |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18912](https://issues.apache.org/jira/browse/SPARK-18912) | append to a non-file-based data source table should detect columns number mismatch |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18913](https://issues.apache.org/jira/browse/SPARK-18913) | append to a table with special column names should work |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18281](https://issues.apache.org/jira/browse/SPARK-18281) | toLocalIterator yields time out error on pyspark2 |  Major | PySpark | Luke Miner | Liang-Chi Hsieh |
| [SPARK-18927](https://issues.apache.org/jira/browse/SPARK-18927) | MemorySink for StructuredStreaming can't recover from checkpoint if location is provided in conf |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-18894](https://issues.apache.org/jira/browse/SPARK-18894) | Event time watermark delay threshold specified in months or years gives incorrect results |  Critical | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-18031](https://issues.apache.org/jira/browse/SPARK-18031) | Flaky test: org.apache.spark.streaming.scheduler.ExecutorAllocationManagerSuite basic functionality |  Major | Spark Core | Davies Liu | Shixiong Zhu |
| [SPARK-18954](https://issues.apache.org/jira/browse/SPARK-18954) | Fix flaky test: o.a.s.streaming.BasicOperationsSuite rdd cleanup - map and window |  Major | Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18588](https://issues.apache.org/jira/browse/SPARK-18588) | KafkaSourceStressForDontFailOnDataLossSuite is flaky |  Major | Structured Streaming | Herman van Hovell | Shixiong Zhu |
| [SPARK-18528](https://issues.apache.org/jira/browse/SPARK-18528) | limit + groupBy leads to java.lang.NullPointerException |  Major | PySpark, SQL | Corey | Takeshi Yamamuro |
| [SPARK-18908](https://issues.apache.org/jira/browse/SPARK-18908) | It's hard for the user to see the failure if StreamExecution fails to create the logical plan |  Critical | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-17807](https://issues.apache.org/jira/browse/SPARK-17807) | Scalatest listed as compile dependency in spark-tags |  Trivial | Spark Core | Tom Standard | Ryan Williams |
| [SPARK-18993](https://issues.apache.org/jira/browse/SPARK-18993) | Unable to build/compile Spark in IntelliJ due to missing Scala deps in spark-tags |  Critical | Build | Xiao Li | Sean Owen |
| [SPARK-19016](https://issues.apache.org/jira/browse/SPARK-19016) | Document scalable partition handling feature in the programming guide |  Minor | Documentation | Cheng Lian | Cheng Lian |
| [SPARK-19050](https://issues.apache.org/jira/browse/SPARK-19050) | Fix EventTimeWatermarkSuite 'delay in months and years handled correctly' |  Major | Structured Streaming, Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18877](https://issues.apache.org/jira/browse/SPARK-18877) | Unable to read given csv data. Excepion: java.lang.IllegalArgumentException: requirement failed: Decimal precision 28 exceeds max precision 20 |  Major | SQL | Navya Krishnappa | Dongjoon Hyun |
| [SPARK-19033](https://issues.apache.org/jira/browse/SPARK-19033) | HistoryServer still uses old ACLs even if ACLs are updated |  Minor | Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-19083](https://issues.apache.org/jira/browse/SPARK-19083) | sbin/start-history-server.sh scripts use of $@ without "" |  Trivial | . | zuotingbing | zuotingbing |
| [SPARK-19106](https://issues.apache.org/jira/browse/SPARK-19106) | Styling for the configuration docs is broken |  Trivial | Documentation | Nicholas Chammas | Sean Owen |
| [SPARK-19110](https://issues.apache.org/jira/browse/SPARK-19110) | DistributedLDAModel returns different logPrior for original and loaded model |  Major | ML, MLlib | Miao Wang | Miao Wang |
| [SPARK-19093](https://issues.apache.org/jira/browse/SPARK-19093) | Cached tables are not used in SubqueryExpression |  Major | SQL | Josh Rosen | Dilip Biswal |
| [SPARK-18952](https://issues.apache.org/jira/browse/SPARK-18952) | regex strings not properly escaped in codegen for aggregations |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-18857](https://issues.apache.org/jira/browse/SPARK-18857) | SparkSQL ThriftServer hangs while extracting huge data volumes in incremental collect mode |  Major | SQL | vishal agrawal | Dongjoon Hyun |
| [SPARK-19137](https://issues.apache.org/jira/browse/SPARK-19137) | Garbage left in source tree after SQL tests are run |  Minor | SQL, Structured Streaming, Tests | Marcelo Vanzin | Dongjoon Hyun |
| [SPARK-19133](https://issues.apache.org/jira/browse/SPARK-19133) | SparkR glm Gamma family results in error |  Major | ML, SparkR | Felix Cheung | Felix Cheung |
| [SPARK-19130](https://issues.apache.org/jira/browse/SPARK-19130) | SparkR should support setting and adding new column with singular value implicitly |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-19158](https://issues.apache.org/jira/browse/SPARK-19158) | ml.R example fails in yarn-cluster mode due to lacks of e1071 package |  Major | Examples | Yesha Vora | Yanbo Liang |
| [SPARK-18969](https://issues.apache.org/jira/browse/SPARK-18969) | PullOutNondeterministic should work for Aggregate operator |  Major | SQL | Reynold Xin | Wenchen Fan |
| [SPARK-19055](https://issues.apache.org/jira/browse/SPARK-19055) | SparkSession initialization will be associated with invalid SparkContext when new SparkContext is created to replace stopped SparkContext |  Major | PySpark, SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-18687](https://issues.apache.org/jira/browse/SPARK-18687) | Backward compatibility - creating a Dataframe on a new SQLContext object fails with a Derby error |  Major | PySpark, SQL | Vinayak Joshi | Vinayak Joshi |
| [SPARK-19178](https://issues.apache.org/jira/browse/SPARK-19178) | convert string of large numbers to int should return null |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17237](https://issues.apache.org/jira/browse/SPARK-17237) | DataFrame fill after pivot causing org.apache.spark.sql.AnalysisException |  Major | SQL | Jiang Qiqi | Takeshi Yamamuro |
| [SPARK-19092](https://issues.apache.org/jira/browse/SPARK-19092) | Save() API of DataFrameWriter should not scan all the saved files |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-19180](https://issues.apache.org/jira/browse/SPARK-19180) | the offset of short is 4 in OffHeapColumnVector's putShorts |  Major | SQL | yucai | yucai |
| [SPARK-19120](https://issues.apache.org/jira/browse/SPARK-19120) | Returned an Empty Result after Loading a Hive Table |  Critical | SQL | Xiao Li | Xiao Li |
| [SPARK-19082](https://issues.apache.org/jira/browse/SPARK-19082) | The config ignoreCorruptFiles doesn't work for Parquet |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-19066](https://issues.apache.org/jira/browse/SPARK-19066) | SparkR LDA doesn't set optimizer correctly |  Major | SparkR | Miao Wang | Miao Wang |
| [SPARK-19232](https://issues.apache.org/jira/browse/SPARK-19232) | SparkR distribution cache location is wrong on Windows |  Trivial | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-18905](https://issues.apache.org/jira/browse/SPARK-18905) | Potential Issue of Semantics of BatchCompleted |  Major | DStreams | Nan Zhu | Nan Zhu |
| [SPARK-19019](https://issues.apache.org/jira/browse/SPARK-19019) | PySpark does not work with Python 3.6.0 |  Critical | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-19065](https://issues.apache.org/jira/browse/SPARK-19065) | dropDuplicates uses the same expression id for Alias and Attribute and breaks attribute replacement |  Major | Structured Streaming | Michael Armbrust | Shixiong Zhu |
| [SPARK-19129](https://issues.apache.org/jira/browse/SPARK-19129) | alter table table\_name drop partition with a empty string will drop the whole table |  Critical | SQL | lichenglin | Xiao Li |
| [SPARK-18559](https://issues.apache.org/jira/browse/SPARK-18559) | Fix HLL++ with small relative error |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-19231](https://issues.apache.org/jira/browse/SPARK-19231) | SparkR hangs when there is download or untar failure |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-19314](https://issues.apache.org/jira/browse/SPARK-19314) | Do not allow sort before aggregation in Structured Streaming plan |  Blocker | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-18589](https://issues.apache.org/jira/browse/SPARK-18589) | persist() resolves "java.lang.RuntimeException: Invalid PythonUDF \<lambda\>(...), requires attributes from more than one child" |  Critical | PySpark, SQL | Nicholas Chammas | Davies Liu |
| [SPARK-19267](https://issues.apache.org/jira/browse/SPARK-19267) | Fix a race condition when stopping StateStore |  Minor | . | Shixiong Zhu | Shixiong Zhu |
| [SPARK-14536](https://issues.apache.org/jira/browse/SPARK-14536) | NPE in JDBCRDD when array column contains nulls (postgresql) |  Major | SQL | Jeremy Smith | Suresh Thalamati |
| [SPARK-19155](https://issues.apache.org/jira/browse/SPARK-19155) | MLlib GeneralizedLinearRegression family and link should case insensitive |  Major | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-19306](https://issues.apache.org/jira/browse/SPARK-19306) | Fix inconsistent state in DiskBlockObjectWriter when exception occurred |  Minor | Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-9435](https://issues.apache.org/jira/browse/SPARK-9435) | Java UDFs don't work with GROUP BY expressions |  Major | SQL | James Aley | Hyukjin Kwon |
| [SPARK-19268](https://issues.apache.org/jira/browse/SPARK-19268) | File does not exist: /tmp/temporary-157b89c1-27bb-49f3-a70c-ca1b75022b4d/state/0/2/1.delta |  Critical | Structured Streaming | liyan | Shixiong Zhu |
| [SPARK-16473](https://issues.apache.org/jira/browse/SPARK-16473) | BisectingKMeans Algorithm failing with java.util.NoSuchElementException: key not found |  Major | ML, MLlib | Alok Bhandari | Ilya Matiach |
| [SPARK-19017](https://issues.apache.org/jira/browse/SPARK-19017) | NOT IN subquery with more than one column may return incorrect results |  Major | SQL | Nattavut Sutyanyong | Nattavut Sutyanyong |
| [SPARK-18750](https://issues.apache.org/jira/browse/SPARK-18750) | spark should be able to control the number of executor and should not throw stack overslow |  Major | . | Neerja Khattar | Marcelo Vanzin |
| [SPARK-18863](https://issues.apache.org/jira/browse/SPARK-18863) | Output non-aggregate expressions without GROUP BY in a subquery does not yield an error |  Major | SQL | Nattavut Sutyanyong | Nattavut Sutyanyong |
| [SPARK-19311](https://issues.apache.org/jira/browse/SPARK-19311) | UDFs disregard UDT type hierarchy |  Major | SQL | Gregor Moehler | Gregor Moehler |
| [SPARK-14804](https://issues.apache.org/jira/browse/SPARK-14804) | Graph vertexRDD/EdgeRDD checkpoint results ClassCastException: |  Minor | GraphX | SuYan | Tathagata Das |
| [SPARK-19220](https://issues.apache.org/jira/browse/SPARK-19220) | SSL redirect handler only redirects the server's root |  Major | Web UI | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-19338](https://issues.apache.org/jira/browse/SPARK-19338) | Always Identical Name for UDF in the EXPLAIN output |  Major | SQL | Xiao Li | Takeshi Yamamuro |
| [SPARK-19324](https://issues.apache.org/jira/browse/SPARK-19324) | JVM stdout output is dropped in SparkR |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-19396](https://issues.apache.org/jira/browse/SPARK-19396) | [DOC] Options are case-insensitive since Spark 2.1 |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-19406](https://issues.apache.org/jira/browse/SPARK-19406) | Function to\_json ignores the user-provided options |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-19378](https://issues.apache.org/jira/browse/SPARK-19378) | StateOperator metrics should still return the total number of rows in state even if there was no data for a trigger |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-19319](https://issues.apache.org/jira/browse/SPARK-19319) | SparkR Kmeans summary returns error when the cluster size doesn't equal to k |  Major | ML, SparkR | Miao Wang | Miao Wang |
| [SPARK-19432](https://issues.apache.org/jira/browse/SPARK-19432) | Fix an unexpected failure when connecting timeout |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-19472](https://issues.apache.org/jira/browse/SPARK-19472) | [SQL]SQLParser fails to resolve nested CASE WHEN statement with parentheses |  Major | SQL | StanZhai | Herman van Hovell |
| [SPARK-18609](https://issues.apache.org/jira/browse/SPARK-18609) | [SQL] column mixup with CROSS JOIN |  Major | SQL | Furcy Pin | Herman van Hovell |
| [SPARK-18841](https://issues.apache.org/jira/browse/SPARK-18841) | PushProjectionThroughUnion exception when there are same column |  Major | SQL | Song Jun | Herman van Hovell |
| [SPARK-19512](https://issues.apache.org/jira/browse/SPARK-19512) | codegen for compare structs fails |  Major | SQL | Bogdan Raducanu | Bogdan Raducanu |
| [SPARK-17975](https://issues.apache.org/jira/browse/SPARK-17975) | EMLDAOptimizer fails with ClassCastException on YARN |  Major | MLlib | Jeff Stein | Tathagata Das |
| [SPARK-19509](https://issues.apache.org/jira/browse/SPARK-19509) | GROUPING SETS throws NullPointerException when use an empty column |  Major | SQL | StanZhai | StanZhai |
| [SPARK-19543](https://issues.apache.org/jira/browse/SPARK-19543) | from\_json fails when the input row is empty |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-19459](https://issues.apache.org/jira/browse/SPARK-19459) | ORC tables cannot be read when they contain char/varchar columns |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-19559](https://issues.apache.org/jira/browse/SPARK-19559) | Fix flaky KafkaSourceSuite.subscribing topic by pattern with topic deletions |  Major | Structured Streaming, Tests | Kay Ousterhout | Liwei Lin |
| [SPARK-19564](https://issues.apache.org/jira/browse/SPARK-19564) | KafkaOffsetReader's consumers should not be in the same group |  Minor | Structured Streaming | Liwei Lin | Liwei Lin |
| [SPARK-19574](https://issues.apache.org/jira/browse/SPARK-19574) | Liquid Exception: Start indices amount is not equal to end indices amount |  Trivial | Documentation | Xiao Li | Xiao Li |
| [SPARK-19342](https://issues.apache.org/jira/browse/SPARK-19342) | Datatype tImestamp is converted to numeric in collect method |  Major | SparkR | Fangzhou Yang | Fangzhou Yang |
| [SPARK-19506](https://issues.apache.org/jira/browse/SPARK-19506) | Missing warnings import in pyspark.ml.util |  Minor | ML, PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-17714](https://issues.apache.org/jira/browse/SPARK-17714) | ClassCircularityError is thrown when using org.apache.spark.util.Utils.classForName |  Major | Spark Core | Weiqing Yang | Shixiong Zhu |
| [SPARK-19520](https://issues.apache.org/jira/browse/SPARK-19520) | WAL should not be encrypted |  Major | DStreams | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-19585](https://issues.apache.org/jira/browse/SPARK-19585) | Fix the cacheTable and uncacheTable API call in the SQL Programming Guide |  Minor | Documentation | Sunitha Kambhampati | Sunitha Kambhampati |
| [SPARK-19529](https://issues.apache.org/jira/browse/SPARK-19529) | TransportClientFactory.createClient() shouldn't call awaitUninterruptibly() |  Major | Shuffle, Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-19399](https://issues.apache.org/jira/browse/SPARK-19399) | R Coalesce on DataFrame and coalesce on column |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-19329](https://issues.apache.org/jira/browse/SPARK-19329) | after alter a datasource table's location to a not exist location and then insert data throw Exception |  Major | SQL | Song Jun | Song Jun |
| [SPARK-19603](https://issues.apache.org/jira/browse/SPARK-19603) | Fix StreamingQuery explain command |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-19622](https://issues.apache.org/jira/browse/SPARK-19622) | Fix a http error in a paged table when using a \`Go\` button to search. |  Minor | Web UI | StanZhai | StanZhai |
| [SPARK-19500](https://issues.apache.org/jira/browse/SPARK-19500) | Fail to spill the aggregated hash map when radix sort is used |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-19517](https://issues.apache.org/jira/browse/SPARK-19517) | KafkaSource fails to initialize partition offsets |  Blocker | Structured Streaming | Roberto Agostino Vitillo | Roberto Agostino Vitillo |
| [SPARK-19646](https://issues.apache.org/jira/browse/SPARK-19646) | binaryRecords replicates records in scala API |  Major | Spark Core | BahaaEddin AlAila | Sean Owen |
| [SPARK-19626](https://issues.apache.org/jira/browse/SPARK-19626) | Configuration \`spark.yarn.credentials.updateTime\` takes no effect |  Minor | Spark Core, YARN | Kent Yao | Kent Yao |
| [SPARK-19617](https://issues.apache.org/jira/browse/SPARK-19617) | Fix the race condition when starting and stopping a query quickly |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-19652](https://issues.apache.org/jira/browse/SPARK-19652) | REST API does not perform user auth for individual apps |  Major | Web UI | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-19691](https://issues.apache.org/jira/browse/SPARK-19691) | Calculating percentile of decimal column fails with ClassCastException |  Major | SQL | Josh Rosen | Takeshi Yamamuro |
| [SPARK-19674](https://issues.apache.org/jira/browse/SPARK-19674) | Ignore driver accumulator updates don't belong to the execution when merging all accumulator updates |  Minor | SQL | Carson Wang | Carson Wang |
| [SPARK-19707](https://issues.apache.org/jira/browse/SPARK-19707) | Improve the invalid path check for sc.addJar |  Major | Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-19038](https://issues.apache.org/jira/browse/SPARK-19038) | Can't find keytab file when using Hive catalog |  Major | YARN | Peter Parente | Saisai Shao |
| [SPARK-14772](https://issues.apache.org/jira/browse/SPARK-14772) | Python ML Params.copy treats uid, paramMaps differently than Scala |  Major | ML, PySpark | Joseph K. Bradley | Bryan Cutler |
| [SPARK-19594](https://issues.apache.org/jira/browse/SPARK-19594) | StreamingQueryListener fails to handle QueryTerminatedEvent if more then one listeners exists |  Minor | Structured Streaming | Eyal Zituny | Eyal Zituny |
| [SPARK-19748](https://issues.apache.org/jira/browse/SPARK-19748) | refresh for InMemoryFileIndex with FileStatusCache does not work correctly |  Major | SQL | Song Jun | Song Jun |
| [SPARK-19677](https://issues.apache.org/jira/browse/SPARK-19677) | HDFSBackedStateStoreProvider fails to overwrite existing file |  Critical | Structured Streaming | Roberto Agostino Vitillo | Roberto Agostino Vitillo |
| [SPARK-19373](https://issues.apache.org/jira/browse/SPARK-19373) | Mesos implementation of spark.scheduler.minRegisteredResourcesRatio looks at acquired cores rather than registerd cores |  Major | Mesos | Michael Gummelt | Michael Gummelt |
| [SPARK-19736](https://issues.apache.org/jira/browse/SPARK-19736) | refreshByPath should clear all cached plans with the specified path |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-19766](https://issues.apache.org/jira/browse/SPARK-19766) | INNER JOIN on constant alias columns return incorrect results |  Critical | SQL | StanZhai | StanZhai |
| [SPARK-19750](https://issues.apache.org/jira/browse/SPARK-19750) | Spark UI http -\> https redirect error |  Major | Web UI | Saisai Shao | Saisai Shao |
| [SPARK-19779](https://issues.apache.org/jira/browse/SPARK-19779) | structured streaming exist needless tmp file |  Minor | Structured Streaming | Feng Gui | Feng Gui |
| [SPARK-19797](https://issues.apache.org/jira/browse/SPARK-19797) | ML pipelines document error |  Trivial | ML | Zhe Sun | Zhe Sun |
| [SPARK-19774](https://issues.apache.org/jira/browse/SPARK-19774) | StreamExecution should call stop() on sources when a stream fails |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-19822](https://issues.apache.org/jira/browse/SPARK-19822) | CheckpointSuite.testCheckpointedOperation: should not check checkpointFilesOfLatestTime by the PATH string. |  Minor | Tests | Genmao Yu | Genmao Yu |
| [SPARK-19064](https://issues.apache.org/jira/browse/SPARK-19064) | Fix pip install issue with ml sub components |  Trivial | PySpark | holdenk | holdenk |
| [SPARK-19765](https://issues.apache.org/jira/browse/SPARK-19765) | UNCACHE TABLE should also un-cache all cached plans that refer to this table |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18549](https://issues.apache.org/jira/browse/SPARK-18549) | Failed to Uncache a View that References a Dropped Table. |  Critical | SQL | Xiao Li | Wenchen Fan |
| [SPARK-19561](https://issues.apache.org/jira/browse/SPARK-19561) | Pyspark Dataframes don't allow timestamps near epoch |  Major | PySpark, SQL | Jason White | Jason White |
| [SPARK-19857](https://issues.apache.org/jira/browse/SPARK-19857) | CredentialUpdater calculates the wrong time for next update |  Major | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-19859](https://issues.apache.org/jira/browse/SPARK-19859) | The new watermark should override the old one |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-19348](https://issues.apache.org/jira/browse/SPARK-19348) | pyspark.ml.Pipeline gets corrupted under multi threaded use |  Major | ML, PySpark | Vinayak Joshi | Bryan Cutler |
| [SPARK-18055](https://issues.apache.org/jira/browse/SPARK-18055) | Dataset.flatMap can't work with types from customized jar |  Major | SQL | Davies Liu | Michael Armbrust |
| [SPARK-19813](https://issues.apache.org/jira/browse/SPARK-19813) | maxFilesPerTrigger combo latestFirst may miss old files in combination with maxFileAge in FileStreamSource |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-19874](https://issues.apache.org/jira/browse/SPARK-19874) | Hide API docs for "org.apache.spark.sql.internal" |  Minor | Build | Shixiong Zhu | Shixiong Zhu |
| [SPARK-19861](https://issues.apache.org/jira/browse/SPARK-19861) | watermark should not be a negative time. |  Minor | Structured Streaming | Genmao Yu | Genmao Yu |
| [SPARK-19611](https://issues.apache.org/jira/browse/SPARK-19611) | Spark 2.1.0 breaks some Hive tables backed by case-sensitive data files |  Major | SQL | Adam Budde | Adam Budde |
| [SPARK-19886](https://issues.apache.org/jira/browse/SPARK-19886) | reportDataLoss cause != null check is wrong for Structured Streaming KafkaSource |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-19891](https://issues.apache.org/jira/browse/SPARK-19891) | Await Batch Lock not signaled on stream execution exit |  Major | Structured Streaming | Tyson Condie | Tyson Condie |
| [SPARK-19893](https://issues.apache.org/jira/browse/SPARK-19893) | should not run DataFrame set oprations with map type |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-19853](https://issues.apache.org/jira/browse/SPARK-19853) | Uppercase Kafka topics fail when startingOffsets are SpecificOffsets |  Trivial | Structured Streaming | Chris Bowden | Genmao Yu |
| [SPARK-19924](https://issues.apache.org/jira/browse/SPARK-19924) | Handle InvocationTargetException for all Hive Shim |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-19887](https://issues.apache.org/jira/browse/SPARK-19887) | \_\_HIVE\_DEFAULT\_PARTITION\_\_ is not interpreted as NULL partition value in partitioned persisted tables |  Major | SQL | Cheng Lian | Wenchen Fan |
| [SPARK-19872](https://issues.apache.org/jira/browse/SPARK-19872) | UnicodeDecodeError in Pyspark on sc.textFile read with repartition |  Major | PySpark | Brian Bruggeman | Hyukjin Kwon |
| [SPARK-19721](https://issues.apache.org/jira/browse/SPARK-19721) | Good error message for version mismatch in log files |  Blocker | Structured Streaming | Michael Armbrust | Liwei Lin |
| [SPARK-19994](https://issues.apache.org/jira/browse/SPARK-19994) | Wrong outputOrdering for right/full outer smj |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-19970](https://issues.apache.org/jira/browse/SPARK-19970) | Table owner should be USER instead of PRINCIPAL in kerberized clusters |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-19980](https://issues.apache.org/jira/browse/SPARK-19980) | Basic Dataset transformation on POJOs does not preserves nulls. |  Major | SQL | Michel Lemay | Takeshi Yamamuro |
| [SPARK-17204](https://issues.apache.org/jira/browse/SPARK-17204) | Spark 2.0 off heap RDD persistence with replication factor 2 leads to in-memory data corruption |  Major | Spark Core | Michael Allman | Michael Allman |
| [SPARK-19912](https://issues.apache.org/jira/browse/SPARK-19912) | String literals are not escaped while performing Hive metastore level partition pruning |  Major | SQL | Cheng Lian | Dongjoon Hyun |
| [SPARK-20017](https://issues.apache.org/jira/browse/SPARK-20017) | Functions "str\_to\_map" and "explode" throws NPE exceptioin |  Major | SQL | roncenzhao | roncenzhao |
| [SPARK-19237](https://issues.apache.org/jira/browse/SPARK-19237) | SparkR package on Windows waiting for a long time when no java is found launching spark-submit |  Major | Spark Core, SparkR | Felix Cheung | Felix Cheung |
| [SPARK-19925](https://issues.apache.org/jira/browse/SPARK-19925) | SparkR spark.getSparkFiles fails on executor |  Critical | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-20021](https://issues.apache.org/jira/browse/SPARK-20021) | Miss backslash in python code |  Trivial | PySpark | Genmao Yu | Genmao Yu |
| [SPARK-19959](https://issues.apache.org/jira/browse/SPARK-19959) | df[java.lang.Long].collect throws NullPointerException if df includes null |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-20086](https://issues.apache.org/jira/browse/SPARK-20086) | issue with pyspark 2.1.0 window function |  Major | PySpark | mandar uapdhye | Herman van Hovell |
| [SPARK-20102](https://issues.apache.org/jira/browse/SPARK-20102) | Fix two minor build script issues blocking 2.1.1 RC + master snapshot builds |  Major | Build | Josh Rosen | Josh Rosen |
| [SPARK-20111](https://issues.apache.org/jira/browse/SPARK-20111) | codegen bug surfaced by GraphFrames issue 165 |  Major | SQL | Joseph K. Bradley |  |
| [SPARK-19995](https://issues.apache.org/jira/browse/SPARK-19995) | Using real user to connect HiveMetastore in HiveClientImpl |  Major | SQL | Saisai Shao | Saisai Shao |
| [SPARK-20125](https://issues.apache.org/jira/browse/SPARK-20125) | Dataset of type option of map does not work |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-20043](https://issues.apache.org/jira/browse/SPARK-20043) | Decision Tree loader does not handle uppercase impurity param values |  Major | ML | Zied Sellami | Yan Facai (颜发才) |
| [SPARK-20059](https://issues.apache.org/jira/browse/SPARK-20059) | HbaseCredentialProvider uses wrong classloader |  Major | YARN | Saisai Shao | Saisai Shao |
| [SPARK-20197](https://issues.apache.org/jira/browse/SPARK-20197) | CRAN check fail with package installation |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-20190](https://issues.apache.org/jira/browse/SPARK-20190) | '/applications/[app-id]/jobs' in rest api,status should be [running\|succeeded\|failed\|unknown] |  Trivial | Documentation | guoxiaolongzte | guoxiaolongzte |
| [SPARK-20214](https://issues.apache.org/jira/browse/SPARK-20214) | pyspark linalg \_convert\_to\_vector should check for sorted indices |  Major | ML, MLlib, PySpark, Tests | Joseph K. Bradley | Liang-Chi Hsieh |
| [SPARK-20270](https://issues.apache.org/jira/browse/SPARK-20270) | na.fill will change the values in long or integer when the default value is in double |  Critical | SQL | DB Tsai | DB Tsai |
| [SPARK-20243](https://issues.apache.org/jira/browse/SPARK-20243) | DebugFilesystem.assertNoOpenStreams thread race |  Major | Tests | Bogdan Raducanu | Bogdan Raducanu |
| [SPARK-20280](https://issues.apache.org/jira/browse/SPARK-20280) | SharedInMemoryCache Weigher integer overflow |  Major | Spark Core | Bogdan Raducanu | Bogdan Raducanu |
| [SPARK-20285](https://issues.apache.org/jira/browse/SPARK-20285) | Flaky test: pyspark.streaming.tests.BasicOperationTests.test\_cogroup |  Minor | Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-20291](https://issues.apache.org/jira/browse/SPARK-20291) | NaNvl(FloatType, NullType) should not be cast to NaNvl(DoubleType, DoubleType) |  Major | SQL | DB Tsai | DB Tsai |
| [SPARK-20131](https://issues.apache.org/jira/browse/SPARK-20131) | Flaky Test: o.a.s.streaming.StreamingContextSuite.SPARK-18560 Receiver data should be deserialized properly |  Minor | DStreams | Takuya Ueshin | Shixiong Zhu |
| [SPARK-20335](https://issues.apache.org/jira/browse/SPARK-20335) | Children expressions of Hive UDF impacts the determinism of Hive UDF |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-17647](https://issues.apache.org/jira/browse/SPARK-17647) | SQL LIKE does not handle backslashes correctly |  Major | SQL | Xiangrui Meng | Xiangrui Meng |
| [SPARK-20359](https://issues.apache.org/jira/browse/SPARK-20359) | Catalyst EliminateOuterJoin optimization can cause NPE |  Major | SQL | koert kuipers | Koert Kuipers |
| [SPARK-20407](https://issues.apache.org/jira/browse/SPARK-20407) | ParquetQuerySuite 'Enabling/disabling ignoreCorruptFiles' flaky test |  Major | Tests | Bogdan Raducanu | Bogdan Raducanu |
| [SPARK-20439](https://issues.apache.org/jira/browse/SPARK-20439) | Catalog.listTables() depends on all libraries used to create tables |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-20450](https://issues.apache.org/jira/browse/SPARK-20450) | Unexpected first-query schema inference cost with 2.1.1 RC |  Major | SQL | Eric Liang | Eric Liang |
| [SPARK-20451](https://issues.apache.org/jira/browse/SPARK-20451) | Filter out nested mapType datatypes from sort order in randomSplit |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-20312](https://issues.apache.org/jira/browse/SPARK-20312) | query optimizer calls udf with null values when it doesn't expect them |  Major | SQL | Albert Meltzer |  |
| [SPARK-20570](https://issues.apache.org/jira/browse/SPARK-20570) | The main version number on docs/latest/index.html |  Major | Documentation | liucht-inspur | Michael Armbrust |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-18868](https://issues.apache.org/jira/browse/SPARK-18868) | Flaky Test: StreamingQueryListenerSuite |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-18904](https://issues.apache.org/jira/browse/SPARK-18904) | Merge two FileStreamSourceSuite files |  Minor | Structured Streaming, Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18900](https://issues.apache.org/jira/browse/SPARK-18900) | Flaky Test: StateStoreSuite.maintenance |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-19113](https://issues.apache.org/jira/browse/SPARK-19113) | Fix flaky test: o.a.s.sql.streaming.StreamSuite fatal errors from a source should be sent to the user |  Minor | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-19481](https://issues.apache.org/jira/browse/SPARK-19481) | Fix flaky test: o.a.s.repl.ReplSuite should clone and clean line object in ClosureCleaner |  Major | Spark Shell | Shixiong Zhu | Shixiong Zhu |
| [SPARK-19604](https://issues.apache.org/jira/browse/SPARK-19604) | Log the start of every Python test |  Major | Tests | Yin Huai | Yin Huai |
| [SPARK-19816](https://issues.apache.org/jira/browse/SPARK-19816) | DataFrameCallbackSuite doesn't recover the log level |  Major | SQL, Tests | Shixiong Zhu | Shixiong Zhu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-18892](https://issues.apache.org/jira/browse/SPARK-18892) | Alias percentile\_approx approx\_percentile |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-19387](https://issues.apache.org/jira/browse/SPARK-19387) | CRAN tests do not run with SparkR source package |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-18817](https://issues.apache.org/jira/browse/SPARK-18817) | Ensure nothing is written outside R's tempdir() by default |  Critical | SparkR | Brendan Dwyer | Felix Cheung |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-19003](https://issues.apache.org/jira/browse/SPARK-19003) | Add Java examples in "Spark Streaming  Guide", section "Design Patterns for using foreachRDD" |  Minor | Documentation | Tushar Adeshara | Tushar Adeshara |
| [SPARK-18823](https://issues.apache.org/jira/browse/SPARK-18823) | Assignation by column name variable not available or bug? |  Major | SparkR | Vicente Masip | Felix Cheung |
| [SPARK-16046](https://issues.apache.org/jira/browse/SPARK-16046) | Add Aggregations Section to Spark SQL programming guide |  Major | Documentation, SQL | Pedro Rodriguez | Anton Okolnychyi |
| [SPARK-19410](https://issues.apache.org/jira/browse/SPARK-19410) | Links to API documentation are broken |  Trivial | Documentation | Aseem Bansal | zhengruifeng |
| [SPARK-19444](https://issues.apache.org/jira/browse/SPARK-19444) | Tokenizer example does not compile without extra imports |  Minor | Documentation | Aseem Bansal | Aseem Bansal |
| [SPARK-19584](https://issues.apache.org/jira/browse/SPARK-19584) | Update Structured Streaming documentation to include Batch query description |  Major | Documentation | Tyson Condie | Tyson Condie |
| [SPARK-19769](https://issues.apache.org/jira/browse/SPARK-19769) | Quickstart self-contained application instructions do not work with current sbt |  Trivial | Documentation | Michael McCune | Michael McCune |
| [SPARK-18973](https://issues.apache.org/jira/browse/SPARK-18973) | Remove SortPartitions and RedistributeData |  Major | SQL | Reynold Xin | Reynold Xin |


