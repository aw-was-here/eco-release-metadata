
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

## Release 2.2.1 - Unreleased (as of 2017-08-26)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-21339](https://issues.apache.org/jira/browse/SPARK-21339) | spark-shell --packages option does not add jars to classpath on windows |  Major | Spark Shell, Windows | Goran Blankendal | Devaraj K |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-21267](https://issues.apache.org/jira/browse/SPARK-21267) | Improvements to the Structured Streaming programming guide |  Major | Documentation, Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-21321](https://issues.apache.org/jira/browse/SPARK-21321) | Spark very verbose on shutdown confusing users |  Minor | Spark Core | Jong Yoon Lee | Jong Yoon Lee |
| [SPARK-21243](https://issues.apache.org/jira/browse/SPARK-21243) | Limit the number of maps in a single shuffle fetch |  Minor | Spark Core | Dhruve Ashar | Dhruve Ashar |
| [SPARK-21434](https://issues.apache.org/jira/browse/SPARK-21434) | Add PySpark pip documentation |  Minor | Documentation, PySpark | holdenk | holdenk |
| [SPARK-21538](https://issues.apache.org/jira/browse/SPARK-21538) | Attribute resolution inconsistency in Dataset API |  Major | SQL | Adrian Ionescu | Anton Okolnychyi |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-21170](https://issues.apache.org/jira/browse/SPARK-21170) | Utils.tryWithSafeFinallyAndFailureCallbacks throws IllegalArgumentException: Self-suppression not permitted |  Minor | Spark Core | Devaraj K | Devaraj K |
| [SPARK-20256](https://issues.apache.org/jira/browse/SPARK-20256) | Fail to start SparkContext/SparkSession with Hive support enabled when user does not have read/write privilege to Hive metastore warehouse dir |  Critical | SQL | Xin Wu | Dongjoon Hyun |
| [SPARK-21300](https://issues.apache.org/jira/browse/SPARK-21300) | ExternalMapToCatalyst should null-check map key prior to converting to internal value. |  Minor | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-21312](https://issues.apache.org/jira/browse/SPARK-21312) | UnsafeRow writeToStream has incorrect offsetInByteArray calculation for non-zero offset |  Major | SQL | Sumedh Wale | Sumedh Wale |
| [SPARK-21228](https://issues.apache.org/jira/browse/SPARK-21228) | InSet incorrect handling of structs |  Major | SQL | Bogdan Raducanu | Bogdan Raducanu |
| [SPARK-21345](https://issues.apache.org/jira/browse/SPARK-21345) | SparkSessionBuilderSuite should clean up stopped sessions |  Major | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-20342](https://issues.apache.org/jira/browse/SPARK-20342) | DAGScheduler sends SparkListenerTaskEnd before updating task's accumulators |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-21343](https://issues.apache.org/jira/browse/SPARK-21343) | Refine the document for spark.reducer.maxReqSizeShuffleToMem |  Major | Spark Core | jin xing | jin xing |
| [SPARK-21219](https://issues.apache.org/jira/browse/SPARK-21219) | Task retry occurs on same executor due to race condition with blacklisting |  Minor | Scheduler | Eric Vandenberg | Eric Vandenberg |
| [SPARK-21342](https://issues.apache.org/jira/browse/SPARK-21342) | Fix DownloadCallback to work well with RetryingBlockFetcher |  Major | Spark Core | jin xing | jin xing |
| [SPARK-21272](https://issues.apache.org/jira/browse/SPARK-21272) | SortMergeJoin LeftAnti does not update numOutputRows |  Trivial | SQL | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-21369](https://issues.apache.org/jira/browse/SPARK-21369) | Don't use Scala classes in external shuffle service |  Major | Shuffle, YARN | Shixiong Zhu | Shixiong Zhu |
| [SPARK-21376](https://issues.apache.org/jira/browse/SPARK-21376) | Token is not renewed in yarn client process in cluster mode |  Minor | YARN | Yesha Vora | Saisai Shao |
| [SPARK-21344](https://issues.apache.org/jira/browse/SPARK-21344) | BinaryType comparison does signed byte array comparison |  Major | SQL | Shubham Chopra | Kazuaki Ishizaki |
| [SPARK-21445](https://issues.apache.org/jira/browse/SPARK-21445) | NotSerializableException thrown by UTF8String.IntWrapper |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-21332](https://issues.apache.org/jira/browse/SPARK-21332) | Incorrect result type inferred for some decimal expressions |  Major | SQL | Alexander Shkapsky | Anton Okolnychyi |
| [SPARK-21457](https://issues.apache.org/jira/browse/SPARK-21457) | ExternalCatalog.listPartitions should correctly handle partition values with dot |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-21414](https://issues.apache.org/jira/browse/SPARK-21414) | Buffer in SlidingWindowFunctionFrame could be big though window is small |  Major | SQL | jin xing | jin xing |
| [SPARK-21441](https://issues.apache.org/jira/browse/SPARK-21441) | Incorrect Codegen in SortMergeJoinExec results failures in some cases |  Major | SQL | Feng Zhu | Feng Zhu |
| [SPARK-21446](https://issues.apache.org/jira/browse/SPARK-21446) | [SQL] JDBC Postgres fetchsize parameter ignored again |  Major | SQL | Albert Jang | Albert Jang |
| [SPARK-21333](https://issues.apache.org/jira/browse/SPARK-21333) | joinWith documents and analysis allow invalid join types |  Minor | Documentation | Corey Woodfield | Corey Woodfield |
| [SPARK-20904](https://issues.apache.org/jira/browse/SPARK-20904) | Task failures during shutdown cause problems with preempted executors |  Major | Spark Core, YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-21383](https://issues.apache.org/jira/browse/SPARK-21383) | YARN can allocate too many executors |  Major | YARN | Thomas Graves | DjvuLee |
| [SPARK-21447](https://issues.apache.org/jira/browse/SPARK-21447) | Spark history server fails to render compressed inprogress history file in some cases. |  Minor | Web UI | Eric Vandenberg | Eric Vandenberg |
| [SPARK-21494](https://issues.apache.org/jira/browse/SPARK-21494) | Spark 2.2.0 AES encryption not working with External shuffle |  Major | Block Manager, Shuffle | Udit Mehrotra | Marcelo Vanzin |
| [SPARK-21306](https://issues.apache.org/jira/browse/SPARK-21306) | OneVsRest Conceals Columns That May Be Relevant To Underlying Classifier |  Critical | ML | Cathal Garvey | Yan Facai (颜发才) |
| [SPARK-21508](https://issues.apache.org/jira/browse/SPARK-21508) | Documentation on 'Spark Streaming Custom Receivers' has error in example code |  Minor | Documentation | Remis Haroon | Remis Haroon |
| [SPARK-21555](https://issues.apache.org/jira/browse/SPARK-21555) | GROUP BY don't work with expressions with NVL and nested objects |  Major | SQL | Vitaly Gerasimov | Liang-Chi Hsieh |
| [SPARK-21522](https://issues.apache.org/jira/browse/SPARK-21522) | Flaky test: LauncherServerSuite.testStreamFiltering |  Minor | Tests | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-21593](https://issues.apache.org/jira/browse/SPARK-21593) | Fix broken configuration page |  Minor | Documentation | Artur Sukhenko | Sean Owen |
| [SPARK-12717](https://issues.apache.org/jira/browse/SPARK-12717) | pyspark broadcast fails when using multiple threads |  Critical | PySpark | Edward Walker | Bryan Cutler |
| [SPARK-21597](https://issues.apache.org/jira/browse/SPARK-21597) | Avg event time calculated in progress may be wrong |  Minor | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-21546](https://issues.apache.org/jira/browse/SPARK-21546) | dropDuplicates with watermark yields RuntimeException due to binding failure |  Major | Structured Streaming | Jacek Laskowski | Shixiong Zhu |
| [SPARK-21330](https://issues.apache.org/jira/browse/SPARK-21330) | Bad partitioning does not allow to read a JDBC table with extreme values on the partition column |  Major | SQL | Stefano Parmesan | Andrew Ray |
| [SPARK-21374](https://issues.apache.org/jira/browse/SPARK-21374) | Reading globbed paths from S3 into DF doesn't work if filesystem caching is disabled |  Major | Spark Core | Andrey Taptunov | Andrey Taptunov |
| [SPARK-21588](https://issues.apache.org/jira/browse/SPARK-21588) | SQLContext.getConf(key, null) should return null, but it throws NPE |  Minor | SQL | Burak Yavuz | Vinod KC |
| [SPARK-21621](https://issues.apache.org/jira/browse/SPARK-21621) | Reset numRecordsWritten after DiskBlockObjectWriter.commitAndGet called |  Major | Spark Core | Xianyang Liu | Xianyang Liu |
| [SPARK-21647](https://issues.apache.org/jira/browse/SPARK-21647) | SortMergeJoin failed when using CROSS |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-21565](https://issues.apache.org/jira/browse/SPARK-21565) | aggregate query fails with watermark on eventTime but works with watermark on timestamp column generated by current\_timestamp |  Major | Structured Streaming | Amit Assudani | Jose Torres |
| [SPARK-21648](https://issues.apache.org/jira/browse/SPARK-21648) | Confusing assert failure in JDBC source when users misspell the option \`partitionColumn\` |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-21580](https://issues.apache.org/jira/browse/SPARK-21580) | There's a bug with  \`Group by ordinal\` |  Major | SQL | liuxian | liuxian |
| [SPARK-21503](https://issues.apache.org/jira/browse/SPARK-21503) | Spark UI shows incorrect task status for a killed Executor Process |  Minor | Spark Core | Parth Gandhi | Parth Gandhi |
| [SPARK-21523](https://issues.apache.org/jira/browse/SPARK-21523) | Fix bug of strong wolfe linesearch \`init\` parameter lose effectiveness |  Critical | MLlib | Weichen Xu | Weichen Xu |
| [SPARK-21596](https://issues.apache.org/jira/browse/SPARK-21596) | Audit the places calling HDFSMetadataLog.get |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-21595](https://issues.apache.org/jira/browse/SPARK-21595) | introduction of spark.sql.windowExec.buffer.spill.threshold in spark 2.2 breaks existing workflow |  Minor | Documentation, PySpark | Stephan Reiling | Tejas Patil |
| [SPARK-21563](https://issues.apache.org/jira/browse/SPARK-21563) | Race condition when serializing TaskDescriptions and adding jars |  Major | Scheduler, Spark Core | Andrew Ash | Andrew Ash |
| [SPARK-21696](https://issues.apache.org/jira/browse/SPARK-21696) | State Store can't handle corrupted snapshots |  Critical | Structured Streaming | Alexander Bessonov |  |
| [SPARK-21721](https://issues.apache.org/jira/browse/SPARK-21721) | Memory leak in org.apache.spark.sql.hive.execution.InsertIntoHiveTable |  Critical | SQL | yzheng616 | Liang-Chi Hsieh |
| [SPARK-21723](https://issues.apache.org/jira/browse/SPARK-21723) | Can't write LibSVM - key not found: numFeatures |  Major | Input/Output, ML | Jan Vršovský | Jan Vršovský |
| [SPARK-21656](https://issues.apache.org/jira/browse/SPARK-21656) | spark dynamic allocation should not idle timeout executors when there are enough tasks to run on them |  Major | Spark Core | Jong Yoon Lee | Jong Yoon Lee |
| [SPARK-21739](https://issues.apache.org/jira/browse/SPARK-21739) | timestamp partition would fail in v2.2.0 |  Critical | SQL | wangzhihao | Feng Zhu |
| [SPARK-21793](https://issues.apache.org/jira/browse/SPARK-21793) | Correct validateAndTransformSchema in GaussianMixture and AFTSurvivalRegression |  Minor | MLlib | Cedric Pelvet | Cedric Pelvet |
| [SPARK-21617](https://issues.apache.org/jira/browse/SPARK-21617) | ALTER TABLE...ADD COLUMNS broken in Hive 2.1 for DS tables |  Major | SQL | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-21805](https://issues.apache.org/jira/browse/SPARK-21805) | disable R vignettes code on Windows |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-21826](https://issues.apache.org/jira/browse/SPARK-21826) | outer broadcast hash join should not throw NPE |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-21681](https://issues.apache.org/jira/browse/SPARK-21681) | MLOR do not work correctly when featureStd contains zero |  Major | ML | Weichen Xu | Weichen Xu |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-21464](https://issues.apache.org/jira/browse/SPARK-21464) | Minimize deprecation warnings caused by ProcessingTime class |  Minor | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-21663](https://issues.apache.org/jira/browse/SPARK-21663) | MapOutputTrackerSuite case test("remote fetch below max RPC message size") should call stop |  Minor | Tests | wangjiaochun | wangjiaochun |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-21083](https://issues.apache.org/jira/browse/SPARK-21083) | Store zero size and row count after analyzing empty table |  Major | SQL | Zhenhua Wang | Zhenhua Wang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-21069](https://issues.apache.org/jira/browse/SPARK-21069) | Add rate source to programming guide |  Major | Documentation, Structured Streaming | Shixiong Zhu | Prashant Sharma |
| [SPARK-21366](https://issues.apache.org/jira/browse/SPARK-21366) | Add sql test for window functions |  Minor | SQL | Jiang Xingbo | Jiang Xingbo |
| [SPARK-21699](https://issues.apache.org/jira/browse/SPARK-21699) | Remove unused getTableOption in ExternalCatalog |  Major | SQL | Reynold Xin | Reynold Xin |


