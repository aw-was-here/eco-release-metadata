
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

## Release 2.4.0 - Unreleased (as of 2018-03-22)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-22119](https://issues.apache.org/jira/browse/SPARK-22119) | Add cosine distance to KMeans |  Minor | ML, MLlib | Marco Gaido | Marco Gaido |
| [SPARK-23235](https://issues.apache.org/jira/browse/SPARK-23235) | Add executor Threaddump to api |  Minor | Web UI | Imran Rashid | Attila Zsolt Piros |
| [SPARK-23541](https://issues.apache.org/jira/browse/SPARK-23541) | Allow Kafka source to read data with greater parallelism than the number of topic-partitions |  Major | Structured Streaming | Tathagata Das | Tathagata Das |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-23043](https://issues.apache.org/jira/browse/SPARK-23043) | Upgrade json4s-jackson to 3.5.3 |  Minor | Build | Takako Shimamoto | Takako Shimamoto |
| [SPARK-22959](https://issues.apache.org/jira/browse/SPARK-22959) | Configuration to select the modules for daemon and worker in PySpark |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23031](https://issues.apache.org/jira/browse/SPARK-23031) | Merge script should allow arbitrary assignees |  Minor | Project Infra | Marcelo Vanzin | Imran Rashid |
| [SPARK-23024](https://issues.apache.org/jira/browse/SPARK-23024) | Spark ui about the contents of the form need to have hidden and show features, when the table records very much. |  Minor | Web UI | guoxiaolongzte | guoxiaolongzte |
| [SPARK-23085](https://issues.apache.org/jira/browse/SPARK-23085) | API parity for mllib.linalg.Vectors.sparse |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-11630](https://issues.apache.org/jira/browse/SPARK-11630) | ClosureCleaner incorrectly warns for class based closures |  Trivial | Spark Core | Frens Jan Rumph | Rekha Joshi |
| [SPARK-23174](https://issues.apache.org/jira/browse/SPARK-23174) | Fix pep8 to latest official version |  Trivial | Build | Rekha Joshi | Rekha Joshi |
| [SPARK-22068](https://issues.apache.org/jira/browse/SPARK-22068) | Reduce the duplicate code between putIteratorAsValues and putIteratorAsBytes |  Major | Spark Core | Xianyang Liu | Xianyang Liu |
| [SPARK-23166](https://issues.apache.org/jira/browse/SPARK-23166) | Add maxDF Parameter to CountVectorizer |  Minor | ML | Yacine Mazari | Yacine Mazari |
| [SPARK-23228](https://issues.apache.org/jira/browse/SPARK-23228) | Able to track Python create SparkSession in JVM |  Minor | PySpark | Saisai Shao | Saisai Shao |
| [SPARK-23247](https://issues.apache.org/jira/browse/SPARK-23247) | combines Unsafe operations and statistics operations in Scan Data Source |  Major | SQL | caoxuewen | caoxuewen |
| [SPARK-23188](https://issues.apache.org/jira/browse/SPARK-23188) | Make vectorized columar reader batch size configurable |  Major | SQL | Jiang Xingbo | Jiang Xingbo |
| [SPARK-23202](https://issues.apache.org/jira/browse/SPARK-23202) | Add new API in DataSourceWriter: onDataWriterCommit |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-23253](https://issues.apache.org/jira/browse/SPARK-23253) | Only write shuffle temporary index file when there is not an existing one |  Major | Shuffle, Spark Core | Kent Yao | Kent Yao |
| [SPARK-23295](https://issues.apache.org/jira/browse/SPARK-23295) | Exclude Waring message when generating versions  in make-distribution.sh |  Minor | Build | Kent Yao | Kent Yao |
| [SPARK-21860](https://issues.apache.org/jira/browse/SPARK-21860) | Improve memory reuse for heap memory in \`HeapMemoryAllocator\` |  Minor | Spark Core | liuxian | liuxian |
| [SPARK-23336](https://issues.apache.org/jira/browse/SPARK-23336) | Upgrade snappy-java to 1.1.7.1 |  Minor | Build | Yuming Wang | Yuming Wang |
| [SPARK-16501](https://issues.apache.org/jira/browse/SPARK-16501) | spark.mesos.secret exposed on UI and command line |  Major | Spark Submit, Web UI | Eric Daniel | Rob Vesse |
| [SPARK-23344](https://issues.apache.org/jira/browse/SPARK-23344) | Add KMeans distanceMeasure param to PySpark |  Minor | ML, PySpark | Marco Gaido | Marco Gaido |
| [SPARK-23084](https://issues.apache.org/jira/browse/SPARK-23084) | Add unboundedPreceding(), unboundedFollowing() and currentRow() to PySpark |  Major | PySpark | Xiao Li | Huaxin Gao |
| [SPARK-22624](https://issues.apache.org/jira/browse/SPARK-22624) | Expose range partitioning shuffle introduced by SPARK-22614 |  Major | PySpark | Adrian Ionescu | xubo245 |
| [SPARK-23378](https://issues.apache.org/jira/browse/SPARK-23378) | move setCurrentDatabase from HiveExternalCatalog to HiveClientImpl |  Major | SQL | Feng Liu | Feng Liu |
| [SPARK-23379](https://issues.apache.org/jira/browse/SPARK-23379) | remove redundant metastore access if the current database name is the same |  Major | SQL | Feng Liu | Feng Liu |
| [SPARK-23303](https://issues.apache.org/jira/browse/SPARK-23303) | improve the explain result for data source v2 relations |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-23318](https://issues.apache.org/jira/browse/SPARK-23318) | FP-growth: WARN FPGrowth: Input data is not cached |  Minor | ML | Arseniy Tashoyan | Arseniy Tashoyan |
| [SPARK-20659](https://issues.apache.org/jira/browse/SPARK-20659) | Remove StorageStatus, or make it private. |  Major | Spark Core | Marcelo Vanzin | Attila Zsolt Piros |
| [SPARK-23382](https://issues.apache.org/jira/browse/SPARK-23382) | Spark Streaming ui about the contents of the form need to have hidden and show features, when the table records very much. |  Minor | Web UI | guoxiaolongzte | guoxiaolongzte |
| [SPARK-23217](https://issues.apache.org/jira/browse/SPARK-23217) | Add cosine distance measure to ClusteringEvaluator |  Major | ML | Marco Gaido | Marco Gaido |
| [SPARK-23366](https://issues.apache.org/jira/browse/SPARK-23366) | Improve hot reading path in ReadAheadInputStream |  Major | Spark Core | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-23359](https://issues.apache.org/jira/browse/SPARK-23359) | Adds an alias 'names' of 'fieldNames' in Scala's StructType |  Trivial | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23447](https://issues.apache.org/jira/browse/SPARK-23447) | Cleanup codegen template for Literal |  Major | SQL | Kris Mok | Kris Mok |
| [SPARK-23383](https://issues.apache.org/jira/browse/SPARK-23383) | Make a distribution should exit with usage while detecting wrong options |  Minor | Build | Kent Yao | Kent Yao |
| [SPARK-23456](https://issues.apache.org/jira/browse/SPARK-23456) | Turn on \`native\` ORC implementation by default |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-21783](https://issues.apache.org/jira/browse/SPARK-21783) | Turn on ORC filter push-down by default |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23424](https://issues.apache.org/jira/browse/SPARK-23424) | Add codegenStageId in comment |  Minor | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-23445](https://issues.apache.org/jira/browse/SPARK-23445) | ColumnStat refactoring |  Major | SQL | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-23389](https://issues.apache.org/jira/browse/SPARK-23389) | When the shuffle dependency specifies aggregation ,and \`dependency.mapSideCombine=false\`,  we should be able to use serialized sorting. |  Major | Spark Core | liuxian | liuxian |
| [SPARK-23510](https://issues.apache.org/jira/browse/SPARK-23510) | Support read data from Hive 2.2 and Hive 2.3 metastore |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-23518](https://issues.apache.org/jira/browse/SPARK-23518) | Avoid metastore access when users only want to read and store data frames |  Major | SQL | Feng Liu | Feng Liu |
| [SPARK-3159](https://issues.apache.org/jira/browse/SPARK-3159) | Check for reducible DecisionTree |  Minor | MLlib | Joseph K. Bradley | Alessandro Solimando |
| [SPARK-23040](https://issues.apache.org/jira/browse/SPARK-23040) | BlockStoreShuffleReader's return Iterator isn't interruptible if aggregator or ordering is specified |  Minor | Spark Core | Xianjin YE | Xianjin YE |
| [SPARK-23538](https://issues.apache.org/jira/browse/SPARK-23538) | Simplify SSL configuration for https client |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-23604](https://issues.apache.org/jira/browse/SPARK-23604) | ParquetInteroperabilityTest timestamp test should use Statistics.hasNonNullValue |  Minor | SQL | Henry Robinson | Henry Robinson |
| [SPARK-23159](https://issues.apache.org/jira/browse/SPARK-23159) | Update Cloudpickle to match version 0.4.3 |  Major | PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-22751](https://issues.apache.org/jira/browse/SPARK-22751) | Improve ML RandomForest shuffle performance |  Minor | ML | lucio35 | lucio35 |
| [SPARK-23628](https://issues.apache.org/jira/browse/SPARK-23628) | WholeStageCodegen can generate methods with too many params |  Major | SQL | Marco Gaido | Marco Gaido |
| [SPARK-23624](https://issues.apache.org/jira/browse/SPARK-23624) | Revise doc of method pushFilters |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-23412](https://issues.apache.org/jira/browse/SPARK-23412) | Add cosine distance measure to BisectingKMeans |  Minor | ML, MLlib | Marco Gaido | Marco Gaido |
| [SPARK-23550](https://issues.apache.org/jira/browse/SPARK-23550) | Cleanup unused / redundant methods in Utils object |  Trivial | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-23656](https://issues.apache.org/jira/browse/SPARK-23656) | Assertion in XXH64Suite.testKnownByteArrayInputs() is not performed on big endian platform |  Minor | Tests | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-23695](https://issues.apache.org/jira/browse/SPARK-23695) | Confusing error message for PySpark's Kinesis tests when its jar is missing but enabled |  Trivial | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23644](https://issues.apache.org/jira/browse/SPARK-23644) | SHS with proxy doesn't show applications |  Minor | Spark Core, Web UI | Marco Gaido | Marco Gaido |
| [SPARK-23553](https://issues.apache.org/jira/browse/SPARK-23553) | Tests should not assume the default value of \`spark.sql.sources.default\` |  Major | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-15009](https://issues.apache.org/jira/browse/SPARK-15009) | PySpark CountVectorizerModel should be able to construct from vocabulary list |  Minor | ML, PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-23683](https://issues.apache.org/jira/browse/SPARK-23683) | FileCommitProtocol.instantiate to require 3-arg constructor for dynamic partition overwrite |  Major | Spark Core | Steve Loughran | Steve Loughran |
| [SPARK-23708](https://issues.apache.org/jira/browse/SPARK-23708) | Comment of ShutdownHookManager.addShutdownHook is error |  Minor | Spark Core | zhoukang | zhoukang |
| [SPARK-23691](https://issues.apache.org/jira/browse/SPARK-23691) | Use sql\_conf util in PySpark tests where possible |  Minor | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23500](https://issues.apache.org/jira/browse/SPARK-23500) | Filters on named\_structs could be pushed into scans |  Major | SQL | Henry Robinson | Henry Robinson |
| [SPARK-23568](https://issues.apache.org/jira/browse/SPARK-23568) | Silhouette should get number of features from metadata if available |  Minor | ML | Marco Gaido | Marco Gaido |
| [SPARK-23264](https://issues.apache.org/jira/browse/SPARK-23264) | Support interval values without INTERVAL clauses |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-23372](https://issues.apache.org/jira/browse/SPARK-23372) | Writing empty struct in parquet fails during execution. It should fail earlier during analysis. |  Minor | SQL | Dilip Biswal | Dilip Biswal |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-22949](https://issues.apache.org/jira/browse/SPARK-22949) | Reduce memory requirement for TrainValidationSplit |  Critical | ML | Bago Amirbekian | Bago Amirbekian |
| [SPARK-23028](https://issues.apache.org/jira/browse/SPARK-23028) | Bump master branch version to 2.4.0-SNAPSHOT |  Major | Build | Xiao Li | Xiao Li |
| [SPARK-23038](https://issues.apache.org/jira/browse/SPARK-23038) | Update docker/spark-test (JDK/OS) |  Minor | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-22956](https://issues.apache.org/jira/browse/SPARK-22956) | Union Stream Failover Cause \`IllegalStateException\` |  Major | Structured Streaming | Li Yuanjian | Li Yuanjian |
| [SPARK-23044](https://issues.apache.org/jira/browse/SPARK-23044) | merge script has bug when assigning jiras to non-contributors |  Minor | Project Infra | Imran Rashid | Imran Rashid |
| [SPARK-20947](https://issues.apache.org/jira/browse/SPARK-20947) | Encoding/decoding issue in PySpark pipe implementation |  Major | PySpark | Xiaozhe Wang | Xiaozhe Wang |
| [SPARK-17088](https://issues.apache.org/jira/browse/SPARK-17088) | IsolatedClientLoader fails to load Hive client when sharesHadoopClasses is false |  Minor | SQL | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-22577](https://issues.apache.org/jira/browse/SPARK-22577) | executor page blacklist status should update with TaskSet level blacklisting |  Major | Scheduler | Thomas Graves | Attila Zsolt Piros |
| [SPARK-23152](https://issues.apache.org/jira/browse/SPARK-23152) | Invalid guard condition in org.apache.spark.ml.classification.Classifier |  Minor | ML, MLlib | Matthew Tovbin | Matthew Tovbin |
| [SPARK-22297](https://issues.apache.org/jira/browse/SPARK-22297) | Flaky test: BlockManagerSuite "Shuffle registration timeout and maxAttempts conf" |  Minor | Spark Core, Tests | Marcelo Vanzin | Mark Petruska |
| [SPARK-23059](https://issues.apache.org/jira/browse/SPARK-23059) | Correct some improper with view related method usage |  Minor | SQL, Tests | xubo245 | xubo245 |
| [SPARK-23088](https://issues.apache.org/jira/browse/SPARK-23088) | History server not showing incomplete/running applications |  Minor | Spark Core, Web UI | paul mackles | paul mackles |
| [SPARK-21525](https://issues.apache.org/jira/browse/SPARK-21525) | ReceiverSupervisorImpl seems to ignore the error code when writing to the WAL |  Major | DStreams | Mark Grover | Marcelo Vanzin |
| [SPARK-23020](https://issues.apache.org/jira/browse/SPARK-23020) | Re-enable Flaky Test: org.apache.spark.launcher.SparkLauncherSuite.testInProcessLauncher |  Blocker | Tests | Sameer Agarwal | Marcelo Vanzin |
| [SPARK-23306](https://issues.apache.org/jira/browse/SPARK-23306) | Race condition in TaskMemoryManager |  Minor | Spark Core | Zhan Zhang | Zhan Zhang |
| [SPARK-23189](https://issues.apache.org/jira/browse/SPARK-23189) | reflect stage level blacklisting on executor tab |  Major | Web UI | Attila Zsolt Piros | Attila Zsolt Piros |
| [SPARK-23394](https://issues.apache.org/jira/browse/SPARK-23394) | Storage info's Cached Partitions doesn't consider the replications (but sc.getRDDStorageInfo does) |  Major | Spark Core | Attila Zsolt Piros | Attila Zsolt Piros |
| [SPARK-23406](https://issues.apache.org/jira/browse/SPARK-23406) | Stream-stream self joins does not work |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-23340](https://issues.apache.org/jira/browse/SPARK-23340) | Upgrade Apache ORC to 1.4.3 |  Major | Build, SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23377](https://issues.apache.org/jira/browse/SPARK-23377) | Bucketizer with multiple columns persistence bug |  Blocker | ML | Bago Amirbekian | Liang-Chi Hsieh |
| [SPARK-23457](https://issues.apache.org/jira/browse/SPARK-23457) | Register task completion listeners first for ParquetFileFormat |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23436](https://issues.apache.org/jira/browse/SPARK-23436) | Incorrect Date column Inference in partition discovery |  Major | SQL | Apoorva Sareen | Marco Gaido |
| [SPARK-23240](https://issues.apache.org/jira/browse/SPARK-23240) | PythonWorkerFactory issues unhelpful message when pyspark.daemon produces bogus stdout |  Minor | PySpark | Bruce Robbins | Bruce Robbins |
| [SPARK-23434](https://issues.apache.org/jira/browse/SPARK-23434) | Spark should not warn \`metadata directory\` for a HDFS file path |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23476](https://issues.apache.org/jira/browse/SPARK-23476) | Spark will not start in local mode with authentication on |  Minor | Spark Core, Spark Shell | Gabor Somogyi | Gabor Somogyi |
| [SPARK-23490](https://issues.apache.org/jira/browse/SPARK-23490) | Check storage.locationUri with existing table in CreateTable |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-23408](https://issues.apache.org/jira/browse/SPARK-23408) | Flaky test: StreamingOuterJoinSuite.left outer early state exclusion on right |  Minor | SQL, Tests | Marcelo Vanzin | Tathagata Das |
| [SPARK-23459](https://issues.apache.org/jira/browse/SPARK-23459) | Improve the error message when unknown column is specified in partition columns |  Major | SQL | Xiao Li | Kazuaki Ishizaki |
| [SPARK-23438](https://issues.apache.org/jira/browse/SPARK-23438) | DStreams could lose blocks with WAL enabled when driver crashes |  Critical | DStreams | Gabor Somogyi | Gabor Somogyi |
| [SPARK-23449](https://issues.apache.org/jira/browse/SPARK-23449) | Extra java options lose order in Docker context |  Minor | Kubernetes | Andrew Korzhuev | Andrew Korzhuev |
| [SPARK-17147](https://issues.apache.org/jira/browse/SPARK-17147) | Spark Streaming Kafka 0.10 Consumer Can't Handle Non-consecutive Offsets (i.e. Log Compaction) |  Major | DStreams | Robert Conrad | Cody Koeninger |
| [SPARK-23523](https://issues.apache.org/jira/browse/SPARK-23523) | Incorrect result caused by the rule OptimizeMetadataOnlyQuery |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-23365](https://issues.apache.org/jira/browse/SPARK-23365) | DynamicAllocation with failure in straggler task can lead to a hung spark job |  Major | Scheduler | Imran Rashid | Imran Rashid |
| [SPARK-23417](https://issues.apache.org/jira/browse/SPARK-23417) | pyspark tests give wrong sbt instructions |  Minor | PySpark | Jose Torres | Bruce Robbins |
| [SPARK-23508](https://issues.apache.org/jira/browse/SPARK-23508) | blockManagerIdCache in BlockManagerId may cause oom |  Major | Deploy, Spark Core | zhoukang | zhoukang |
| [SPARK-23514](https://issues.apache.org/jira/browse/SPARK-23514) | Replace spark.sparkContext.hadoopConfiguration by spark.sessionState.newHadoopConf() |  Major | SQL | Xiao Li | Juliusz Sompolski |
| [SPARK-23405](https://issues.apache.org/jira/browse/SPARK-23405) | The task will hang up when a small table left semi join a big table |  Major | SQL | KaiXinXIaoLei | KaiXinXIaoLei |
| [SPARK-23551](https://issues.apache.org/jira/browse/SPARK-23551) | Exclude \`hadoop-mapreduce-client-core\` dependency from \`orc-mapreduce\` |  Minor | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23570](https://issues.apache.org/jira/browse/SPARK-23570) | Add Spark-2.3 in HiveExternalCatalogVersionsSuite |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-23569](https://issues.apache.org/jira/browse/SPARK-23569) | pandas\_udf does not work with type-annotated python functions |  Major | PySpark | Stu (Michael Stewart) | Stu (Michael Stewart) |
| [SPARK-23496](https://issues.apache.org/jira/browse/SPARK-23496) | Locality of coalesced partitions can be severely skewed by the order of input partitions |  Major | Spark Core | Ala Luszczak | Ala Luszczak |
| [SPARK-22430](https://issues.apache.org/jira/browse/SPARK-22430) | Unknown tag warnings when building R docs with Roxygen 6.0.1 |  Trivial | Documentation | Joel Croteau | Rekha Joshi |
| [SPARK-18630](https://issues.apache.org/jira/browse/SPARK-18630) | PySpark ML memory leak |  Minor | ML, PySpark | holdenk | yogesh garg |
| [SPARK-23291](https://issues.apache.org/jira/browse/SPARK-23291) | SparkR : substr : In SparkR dataframe , starting and ending position arguments in "substr" is giving wrong result  when the position is greater than 1 |  Major | SparkR | Narendra | Liang-Chi Hsieh |
| [SPARK-23525](https://issues.apache.org/jira/browse/SPARK-23525) | ALTER TABLE CHANGE COLUMN doesn't work for external hive table |  Major | SQL | Pavlo Skliar | Jiang Xingbo |
| [SPARK-23524](https://issues.apache.org/jira/browse/SPARK-23524) | Big local shuffle blocks should not be checked for corruption. |  Major | Spark Core | jin xing | jin xing |
| [SPARK-23620](https://issues.apache.org/jira/browse/SPARK-23620) | Split thread dump lines by using the br tag |  Minor | Web UI | Maxim Gekk | Maxim Gekk |
| [SPARK-23522](https://issues.apache.org/jira/browse/SPARK-23522) | pyspark should always use sys.exit rather than exit |  Major | PySpark | Benjamin Peterson | Benjamin Peterson |
| [SPARK-23602](https://issues.apache.org/jira/browse/SPARK-23602) | PrintToStderr should behave the same in interpreted mode |  Trivial | SQL | Herman van Hovell | Marco Gaido |
| [SPARK-23271](https://issues.apache.org/jira/browse/SPARK-23271) | Parquet output contains only "\_SUCCESS" file after empty DataFrame saving |  Minor | SQL | Pavlo Z. | Dilip Biswal |
| [SPARK-23630](https://issues.apache.org/jira/browse/SPARK-23630) | Spark-on-YARN missing user customizations of hadoop config |  Major | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-23173](https://issues.apache.org/jira/browse/SPARK-23173) | from\_json can produce nulls for fields which are marked as non-nullable |  Major | SQL | Herman van Hovell | Michał Świtakowski |
| [SPARK-23462](https://issues.apache.org/jira/browse/SPARK-23462) | Improve the error message in \`StructType\` |  Major | SQL | Xiao Li | Xiayun Sun |
| [SPARK-23547](https://issues.apache.org/jira/browse/SPARK-23547) | Cleanup the .pipeout file when the Hive Session closed |  Major | SQL | zuotingbing | zuotingbing |
| [SPARK-23598](https://issues.apache.org/jira/browse/SPARK-23598) | WholeStageCodegen can lead to IllegalAccessError  calling append for HashAggregateExec |  Major | Spark Core | David Vogelbacher | Kazuaki Ishizaki |
| [SPARK-23658](https://issues.apache.org/jira/browse/SPARK-23658) | InProcessAppHandle uses the wrong class in getLogger |  Minor | Spark Submit | Sahil Takiar | Sahil Takiar |
| [SPARK-23671](https://issues.apache.org/jira/browse/SPARK-23671) | SHS is ignoring number of replay threads |  Critical | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-23608](https://issues.apache.org/jira/browse/SPARK-23608) | SHS needs synchronization between attachSparkUI and detachSparkUI functions |  Minor | Spark Core, Web UI | Ye Zhou | Ye Zhou |
| [SPARK-23670](https://issues.apache.org/jira/browse/SPARK-23670) | Memory leak of SparkPlanGraphWrapper in sparkUI |  Major | SQL | Myroslav Lisniak | Myroslav Lisniak |
| [SPARK-23635](https://issues.apache.org/jira/browse/SPARK-23635) | Spark executor env variable is overwritten by same name AM env variable |  Minor | YARN | Saisai Shao | Saisai Shao |
| [SPARK-18371](https://issues.apache.org/jira/browse/SPARK-18371) | Spark Streaming backpressure bug - generates a batch with large number of records |  Major | DStreams | mapreduced | Sebastian Arzt |
| [SPARK-23623](https://issues.apache.org/jira/browse/SPARK-23623) | Avoid concurrent use of cached KafkaConsumer in CachedKafkaConsumer (kafka-0-10-sql) |  Critical | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-23660](https://issues.apache.org/jira/browse/SPARK-23660) | Yarn throws exception in cluster mode when the application is small |  Minor | YARN | Gabor Somogyi | Gabor Somogyi |
| [SPARK-23574](https://issues.apache.org/jira/browse/SPARK-23574) | SinglePartition in data source V2 scan |  Major | Spark Core | Jose Torres | Jose Torres |
| [SPARK-23666](https://issues.apache.org/jira/browse/SPARK-23666) | Undeterministic column name with UDFs |  Minor | SQL | Daniel Darabos | Takeshi Yamamuro |
| [SPARK-23288](https://issues.apache.org/jira/browse/SPARK-23288) | Incorrect number of written records in structured streaming |  Major | SQL, Structured Streaming | Yuriy Bondaruk | Gabor Somogyi |
| [SPARK-23729](https://issues.apache.org/jira/browse/SPARK-23729) | Glob resolution breaks remote naming of files/archives |  Major | Spark Submit | Mihaly Toth | Mihaly Toth |
| [SPARK-23760](https://issues.apache.org/jira/browse/SPARK-23760) | CodegenContext.withSubExprEliminationExprs should save/restore CSE state correctly |  Major | SQL | Kris Mok | Kris Mok |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-16139](https://issues.apache.org/jira/browse/SPARK-16139) | Audit tests for leaked threads |  Major | Tests | Imran Rashid | Gabor Somogyi |
| [SPARK-23169](https://issues.apache.org/jira/browse/SPARK-23169) | Run lintr on the changes of lint-r script and .lintr configuration |  Minor | Project Infra | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23392](https://issues.apache.org/jira/browse/SPARK-23392) | Add some test case for images feature |  Trivial | ML, Tests | xubo245 | xubo245 |
| [SPARK-22886](https://issues.apache.org/jira/browse/SPARK-22886) | ML test for StructuredStreaming: spark.ml.recommendation |  Major | ML, Tests | Joseph K. Bradley | Gabor Somogyi |
| [SPARK-22882](https://issues.apache.org/jira/browse/SPARK-22882) | ML test for StructuredStreaming: spark.ml.classification |  Major | ML, Tests | Joseph K. Bradley | Weichen Xu |
| [SPARK-22915](https://issues.apache.org/jira/browse/SPARK-22915) | ML test for StructuredStreaming: spark.ml.feature, N-Z |  Major | ML, Tests | Joseph K. Bradley | Attila Zsolt Piros |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-23046](https://issues.apache.org/jira/browse/SPARK-23046) | Have RFormula include VectorSizeHint in pipeline |  Major | ML | Bago Amirbekian | Bago Amirbekian |
| [SPARK-22274](https://issues.apache.org/jira/browse/SPARK-22274) | User-defined aggregation functions with pandas udf |  Major | PySpark | Li Jin | Li Jin |
| [SPARK-23352](https://issues.apache.org/jira/browse/SPARK-23352) | Explicitly specify supported types in Pandas UDFs |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23323](https://issues.apache.org/jira/browse/SPARK-23323) | DataSourceV2 should use the output commit coordinator. |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-23203](https://issues.apache.org/jira/browse/SPARK-23203) | DataSourceV2 should use immutable trees. |  Blocker | SQL | Ryan Blue | Ryan Blue |
| [SPARK-23418](https://issues.apache.org/jira/browse/SPARK-23418) | DataSourceV2 should not allow userSpecifiedSchema without ReadSupportWithSchema |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-23585](https://issues.apache.org/jira/browse/SPARK-23585) | Add interpreted execution for UnwrapOption expression |  Major | SQL | Herman van Hovell | Marco Gaido |
| [SPARK-23586](https://issues.apache.org/jira/browse/SPARK-23586) | Add interpreted execution for WrapOption expression |  Major | SQL | Herman van Hovell | Marco Gaido |
| [SPARK-23594](https://issues.apache.org/jira/browse/SPARK-23594) | Add interpreted execution for GetExternalRowField expression |  Major | SQL | Herman van Hovell | Takeshi Yamamuro |
| [SPARK-23590](https://issues.apache.org/jira/browse/SPARK-23590) | Add interpreted execution for CreateExternalRow expression |  Major | SQL | Herman van Hovell | Marco Gaido |
| [SPARK-23611](https://issues.apache.org/jira/browse/SPARK-23611) | Extend ExpressionEvalHelper harness to also test failures |  Major | SQL | Herman van Hovell | Takeshi Yamamuro |
| [SPARK-23591](https://issues.apache.org/jira/browse/SPARK-23591) | Add interpreted execution for EncodeUsingSerializer expression |  Major | SQL | Herman van Hovell | Marco Gaido |
| [SPARK-23380](https://issues.apache.org/jira/browse/SPARK-23380) | Adds a conf for Arrow fallback in toPandas/createDataFrame with Pandas DataFrame |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23011](https://issues.apache.org/jira/browse/SPARK-23011) | Support alternative function form with group aggregate pandas UDF |  Major | PySpark | Li Jin | Li Jin |
| [SPARK-23592](https://issues.apache.org/jira/browse/SPARK-23592) | Add interpreted execution for DecodeUsingSerializer expression |  Major | SQL | Herman van Hovell | Marco Gaido |
| [SPARK-23581](https://issues.apache.org/jira/browse/SPARK-23581) | Add an interpreted version of GenerateUnsafeProjection |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-23706](https://issues.apache.org/jira/browse/SPARK-23706) | spark.conf.get(value, default=None) should produce None in PySpark |  Minor | PySpark | Hyukjin Kwon |  |
| [SPARK-21898](https://issues.apache.org/jira/browse/SPARK-21898) | Feature parity for KolmogorovSmirnovTest in MLlib |  Minor | ML, MLlib | Weichen Xu | Weichen Xu |
| [SPARK-10884](https://issues.apache.org/jira/browse/SPARK-10884) | Support prediction on single instance for regression and classification related models |  Major | ML | Yanbo Liang | Weichen Xu |
| [SPARK-23577](https://issues.apache.org/jira/browse/SPARK-23577) | Supports line separator for text datasource |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-23256](https://issues.apache.org/jira/browse/SPARK-23256) | Add columnSchema method to PySpark image reader |  Minor | ML, PySpark | Nick Pentreath | Hyukjin Kwon |
| [SPARK-23509](https://issues.apache.org/jira/browse/SPARK-23509) | Upgrade commons-net from 2.2 to 3.1 |  Minor | Spark Core | PandaMonkey | Kazuaki Ishizaki |
| [SPARK-23566](https://issues.apache.org/jira/browse/SPARK-23566) | Arguement name fix |  Minor | Documentation | Anirudh | Anirudh |
| [SPARK-23329](https://issues.apache.org/jira/browse/SPARK-23329) | Update the function descriptions with the arguments and returned values of the trigonometric functions |  Minor | SQL | Xiao Li | Mihaly Toth |
| [SPARK-23642](https://issues.apache.org/jira/browse/SPARK-23642) | isZero scaladoc for LongAccumulator describes wrong method |  Minor | Documentation | Sean | Sean |
| [SPARK-23501](https://issues.apache.org/jira/browse/SPARK-23501) | Refactor AllStagesPage in order to avoid redundant code |  Trivial | Web UI | Marco Gaido | Marco Gaido |
| [SPARK-23601](https://issues.apache.org/jira/browse/SPARK-23601) | Remove .md5 files from release |  Minor | Build | Sean Owen | Sean Owen |
| [SPARK-23533](https://issues.apache.org/jira/browse/SPARK-23533) | Add support for changing ContinuousDataReader's startOffset |  Major | Structured Streaming | Li Yuanjian | Li Yuanjian |


