
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

## Release 2.1.0 - 2016-12-18



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-16664](https://issues.apache.org/jira/browse/SPARK-16664) | Spark 1.6.2 - Persist call on Data frames with more than 200 columns is wiping out the data. |  Blocker | Spark Core | Satish Kolli | Wesley Tang |
| [SPARK-16751](https://issues.apache.org/jira/browse/SPARK-16751) | Upgrade derby to 10.12.1.1 from 10.11.1.1 |  Major | Build | Adam Roberts | Adam Roberts |
| [SPARK-18125](https://issues.apache.org/jira/browse/SPARK-18125) | Spark generated code causes CompileException when groupByKey, reduceGroups and map(\_.\_2) are used |  Critical | SQL | Ray Qiu | Liang-Chi Hsieh |
| [SPARK-18166](https://issues.apache.org/jira/browse/SPARK-18166) | GeneralizedLinearRegression Wrong Value Range for Poisson Distribution |  Major | ML | Wayne Zhang | Wayne Zhang |
| [SPARK-18498](https://issues.apache.org/jira/browse/SPARK-18498) | Clean up HDFSMetadataLog API for better testing |  Minor | SQL, Structured Streaming | Tyson Condie | Tyson Condie |
| [SPARK-18701](https://issues.apache.org/jira/browse/SPARK-18701) | Poisson GLM fails due to wrong initialization |  Critical | ML | Wayne Zhang | Wayne Zhang |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-15207](https://issues.apache.org/jira/browse/SPARK-15207) | Use Travis CI for Java Linter and JDK7/8 compilation test |  Minor | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-16272](https://issues.apache.org/jira/browse/SPARK-16272) | Allow configs to reference other configs, env and system properties |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-16706](https://issues.apache.org/jira/browse/SPARK-16706) | support java map in encoder |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-15271](https://issues.apache.org/jira/browse/SPARK-15271) | Allow force pulling executor docker images |  Major | Mesos | Philipp Hoffmann | Philipp Hoffmann |
| [SPARK-16809](https://issues.apache.org/jira/browse/SPARK-16809) | Link Mesos Dispatcher and History Server |  Minor | Mesos | Michael Gummelt | Michael Gummelt |
| [SPARK-16956](https://issues.apache.org/jira/browse/SPARK-16956) | Make ApplicationState.MAX\_NUM\_RETRY configurable |  Major | Deploy | Josh Rosen | Josh Rosen |
| [SPARK-16927](https://issues.apache.org/jira/browse/SPARK-16927) | Mesos Cluster Dispatcher default properties |  Minor | Mesos | Michael Gummelt | Michael Gummelt |
| [SPARK-16958](https://issues.apache.org/jira/browse/SPARK-16958) | Reuse subqueries within single query |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-17069](https://issues.apache.org/jira/browse/SPARK-17069) | Expose spark.range() as table-valued function in SQL |  Minor | SQL | Eric Liang | Eric Liang |
| [SPARK-7159](https://issues.apache.org/jira/browse/SPARK-7159) | Support multiclass logistic regression in spark.ml |  Critical | ML | Joseph K. Bradley | Seth Hendrickson |
| [SPARK-17150](https://issues.apache.org/jira/browse/SPARK-17150) | Support SQL generation for inline tables |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-17187](https://issues.apache.org/jira/browse/SPARK-17187) | Support using arbitrary Java object as internal aggregation buffer object |  Major | SQL | Sean Zhong | Sean Zhong |
| [SPARK-5682](https://issues.apache.org/jira/browse/SPARK-5682) | Add encrypted shuffle in spark |  Major | Shuffle | liyunzhang\_intel | Ferdinand Xu |
| [SPARK-17351](https://issues.apache.org/jira/browse/SPARK-17351) | Refactor JDBCRDD to expose JDBC -\> SparkSQL conversion functionality |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-17315](https://issues.apache.org/jira/browse/SPARK-17315) | Add Kolmogorov-Smirnov Test to SparkR |  Major | . | Junyang Qian | Junyang Qian |
| [SPARK-17456](https://issues.apache.org/jira/browse/SPARK-17456) | Utility for parsing Spark versions |  Minor | Spark Core | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-11496](https://issues.apache.org/jira/browse/SPARK-11496) | Parallel implementation of personalized pagerank |  Minor | GraphX | Yves Raimond | Yves Raimond |
| [SPARK-10747](https://issues.apache.org/jira/browse/SPARK-10747) | add support for NULLS FIRST\|LAST in ORDER BY clause |  Major | SQL | N Campbell | Xin Wu |
| [SPARK-17017](https://issues.apache.org/jira/browse/SPARK-17017) | Add a chiSquare Selector based on False Positive Rate (FPR) test |  Minor | . | Peng Meng | Peng Meng |
| [SPARK-14077](https://issues.apache.org/jira/browse/SPARK-14077) | Support weighted instances in naive Bayes |  Major | ML | Xiangrui Meng | zhengruifeng |
| [SPARK-17338](https://issues.apache.org/jira/browse/SPARK-17338) | Add global temp view support |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17720](https://issues.apache.org/jira/browse/SPARK-17720) | Static configurations in SQL |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11272](https://issues.apache.org/jira/browse/SPARK-11272) | Support importing and exporting event logs from HistoryServer web portal |  Minor | Spark Core, Web UI | Saisai Shao | Alex Bozarth |
| [SPARK-14634](https://issues.apache.org/jira/browse/SPARK-14634) | Add BisectingKMeansSummary |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-11775](https://issues.apache.org/jira/browse/SPARK-11775) | Allow PySpark to register Java UDF |  Major | PySpark, SQL | Jeff Zhang | Jeff Zhang |
| [SPARK-17748](https://issues.apache.org/jira/browse/SPARK-17748) | One-pass algorithm for linear regression with L1 and elastic-net penalties |  Major | ML | Seth Hendrickson | Seth Hendrickson |
| [SPARK-4411](https://issues.apache.org/jira/browse/SPARK-4411) | Add "kill" link for jobs in the UI |  Minor | Web UI | Kay Ousterhout | Alex Bozarth |
| [SPARK-5992](https://issues.apache.org/jira/browse/SPARK-5992) | Locality Sensitive Hashing (LSH) |  Major | ML | Joseph K. Bradley | Yun Ni |
| [SPARK-18182](https://issues.apache.org/jira/browse/SPARK-18182) | Expose ReplayListenerBus.replay() overload which accepts Iterator\<String\> |  Minor | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-15472](https://issues.apache.org/jira/browse/SPARK-15472) | Add support for writing partitioned \`csv\`, \`json\`, \`text\` formats in Structured Streaming |  Major | Structured Streaming | Liwei Lin(Inactive) | Reynold Xin |
| [SPARK-18177](https://issues.apache.org/jira/browse/SPARK-18177) | Add missing 'subsamplingRate' of pyspark GBTClassifier |  Minor | ML, PySpark | zhengruifeng | zhengruifeng |
| [SPARK-18261](https://issues.apache.org/jira/browse/SPARK-18261) | Add statistics to MemorySink for joining |  Major | SQL, Structured Streaming | Burak Yavuz | Liwei Lin |
| [SPARK-18351](https://issues.apache.org/jira/browse/SPARK-18351) | from\_json and to\_json for parsing JSON for string columns |  Major | SQL | Reynold Xin | Michael Armbrust |
| [SPARK-18124](https://issues.apache.org/jira/browse/SPARK-18124) | Observed delay based event time watermarks |  Major | Structured Streaming | Tathagata Das | Michael Armbrust |
| [SPARK-18361](https://issues.apache.org/jira/browse/SPARK-18361) | Expose RDD localCheckpoint in PySpark |  Major | PySpark | Gabriel Huang | Gabriel Huang |
| [SPARK-18282](https://issues.apache.org/jira/browse/SPARK-18282) | Add model summaries for Python GMM and BisectingKMeans |  Minor | ML, PySpark | Seth Hendrickson | Seth Hendrickson |
| [SPARK-18366](https://issues.apache.org/jira/browse/SPARK-18366) | Add handleInvalid to Pyspark for QuantileDiscretizer and Bucketizer |  Minor | ML, PySpark | Seth Hendrickson | Sandeep Singh |
| [SPARK-18714](https://issues.apache.org/jira/browse/SPARK-18714) | SparkSession.time - a simple timer function |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-18590](https://issues.apache.org/jira/browse/SPARK-18590) | R - Include package vignettes and help pages, build source package in Spark distribution |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-18760](https://issues.apache.org/jira/browse/SPARK-18760) | Provide consistent format output for all file formats |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-18869](https://issues.apache.org/jira/browse/SPARK-18869) | Add TreeNode.p that returns BaseType |  Major | SQL | Reynold Xin | Reynold Xin |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-14963](https://issues.apache.org/jira/browse/SPARK-14963) | YarnShuffleService should use YARN getRecoveryPath() for leveldb location |  Major | Shuffle, YARN | Thomas Graves | Saisai Shao |
| [SPARK-15263](https://issues.apache.org/jira/browse/SPARK-15263) | Make shuffle service dir cleanup faster by using \`rm -rf\` |  Minor | Shuffle, Spark Core | Tejas Patil | Tejas Patil |
| [SPARK-14269](https://issues.apache.org/jira/browse/SPARK-14269) | Eliminate unnecessary submitStage() call. |  Major | Scheduler | Takuya Ueshin | Takuya Ueshin |
| [SPARK-10530](https://issues.apache.org/jira/browse/SPARK-10530) | Kill other task attempts when one taskattempt belonging the same task is succeeded in speculation |  Minor | Scheduler, Spark Core | Jeff Zhang | Devaraj K |
| [SPARK-15076](https://issues.apache.org/jira/browse/SPARK-15076) | Add ReorderAssociativeOperator optimizer |  Major | Optimizer, SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14851](https://issues.apache.org/jira/browse/SPARK-14851) | Support radix sort with nullable longs |  Major | Spark Core | Eric Liang | Eric Liang |
| [SPARK-16159](https://issues.apache.org/jira/browse/SPARK-16159) | Move RDD creation logic from FileSourceStrategy.apply |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15660](https://issues.apache.org/jira/browse/SPARK-15660) | Update RDD \`variance/stdev\` description and add popVariance/popStdev |  Minor | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-16186](https://issues.apache.org/jira/browse/SPARK-16186) | Support partition batch pruning with \`IN\` predicate in InMemoryTableScanExec |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-15958](https://issues.apache.org/jira/browse/SPARK-15958) | Make initial buffer size for the Sorter configurable |  Minor | Spark Core | Sital Kedia | Sital Kedia |
| [SPARK-1301](https://issues.apache.org/jira/browse/SPARK-1301) | Add UI elements to collapse "Aggregated Metrics by Executor" pane on stage page |  Minor | Web UI | Matei Zaharia | Alex Bozarth |
| [SPARK-16128](https://issues.apache.org/jira/browse/SPARK-16128) | Allow setting length of characters to be truncated to, in Dataset.show function. |  Minor | . | Prashant Sharma | Prashant Sharma |
| [SPARK-15990](https://issues.apache.org/jira/browse/SPARK-15990) | Support rolling log aggregation for Spark running on YARN |  Minor | YARN | Saisai Shao | Saisai Shao |
| [SPARK-16134](https://issues.apache.org/jira/browse/SPARK-16134) | optimizer rules for typed filter |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-16331](https://issues.apache.org/jira/browse/SPARK-16331) | [SQL] Reduce code generation time |  Major | SQL | Hiroshi Inoue | Hiroshi Inoue |
| [SPARK-16208](https://issues.apache.org/jira/browse/SPARK-16208) | Add \`PropagateEmptyRelation\` optimizer |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-15204](https://issues.apache.org/jira/browse/SPARK-15204) | Improve nullability inference for Aggregator |  Minor | SQL | koert kuipers | Koert Kuipers |
| [SPARK-16358](https://issues.apache.org/jira/browse/SPARK-16358) | Remove InsertIntoHiveTable From Logical Plan |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-15198](https://issues.apache.org/jira/browse/SPARK-15198) | Support for filter push down for boolean types in ORC |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-16360](https://issues.apache.org/jira/browse/SPARK-16360) | Speed up SQL query performance by removing redundant \`executePlan\` call in \`Dataset\` |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-16340](https://issues.apache.org/jira/browse/SPARK-16340) | In regexp\_replace function column and/or column expression should also allowed as replacement. |  Minor | SQL | Mukul Garg | Dongjoon Hyun |
| [SPARK-16389](https://issues.apache.org/jira/browse/SPARK-16389) | Remove useless \`MetastoreRelation\` from \`SparkHiveWriterContainer\` and \`SparkHiveDynamicPartitionWriterContainer\` |  Minor | SQL | Xiao Li | Xiao Li |
| [SPARK-16021](https://issues.apache.org/jira/browse/SPARK-16021) | Zero out freed memory in test to help catch correctness bugs |  Major | . | Eric Liang | Eric Liang |
| [SPARK-16374](https://issues.apache.org/jira/browse/SPARK-16374) | Remove Alias from MetastoreRelation and SimpleCatalogRelation |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-16398](https://issues.apache.org/jira/browse/SPARK-16398) | Make cancelJob and cancelStage API public |  Trivial | Spark Core | Mitesh | Mitesh Patel |
| [SPARK-15885](https://issues.apache.org/jira/browse/SPARK-15885) | Provide links to executor logs from stage details page in UI |  Trivial | Web UI | Tom Magrino | Tom Magrino |
| [SPARK-16399](https://issues.apache.org/jira/browse/SPARK-16399) | Set PYSPARK\_PYTHON to point to "python" instead of "python2.7" |  Minor | PySpark | Manoj Kumar | Manoj Kumar |
| [SPARK-16174](https://issues.apache.org/jira/browse/SPARK-16174) | Improve \`OptimizeIn\` optimizer to remove literal repetitions |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-16052](https://issues.apache.org/jira/browse/SPARK-16052) | Improve \`CollapseRepartition\` optimizer for Repartition/RepartitionBy |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-16429](https://issues.apache.org/jira/browse/SPARK-16429) | Include \`StringType\` columns in \`describe()\` |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-12639](https://issues.apache.org/jira/browse/SPARK-12639) | Improve Explain for DataSources with Handled Predicate Pushdowns |  Minor | SQL | Russell Spitzer | Russell Spitzer |
| [SPARK-16199](https://issues.apache.org/jira/browse/SPARK-16199) | Add a method to list the referenced columns in data source Filter |  Major | SQL | Reynold Xin | Peter Lee |
| [SPARK-16189](https://issues.apache.org/jira/browse/SPARK-16189) | Add ExistingRDD logical plan for input with RDD to have a chance to eliminate serialize/deserialize. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-15752](https://issues.apache.org/jira/browse/SPARK-15752) | Optimize metadata only query that has an aggregate whose children are deterministic project or filter operators |  Major | SQL | Lianhui Wang | Lianhui Wang |
| [SPARK-16405](https://issues.apache.org/jira/browse/SPARK-16405) | Add metrics and source for external shuffle service |  Major | Shuffle | YangyangLiu | YangyangLiu |
| [SPARK-16119](https://issues.apache.org/jira/browse/SPARK-16119) | Support "DROP TABLE ... PURGE" if Hive client supports it |  Major | SQL | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-16536](https://issues.apache.org/jira/browse/SPARK-16536) | Expose \`sql\` in PySpark shell |  Minor | PySpark, SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-16343](https://issues.apache.org/jira/browse/SPARK-16343) | Improve the PushDownPredicate rule to pushdown predicates currectly in non-deterministic condition |  Critical | SQL | Jiang Xingbo | Jiang Xingbo |
| [SPARK-16543](https://issues.apache.org/jira/browse/SPARK-16543) | Rename the columns of \`SHOW PARTITION/COLUMNS\` commands |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-16546](https://issues.apache.org/jira/browse/SPARK-16546) | Dataframe.drop supported multi-columns in spark api and should make python api also support it. |  Major | PySpark, SQL | Weichen Xu | Weichen Xu |
| [SPARK-16351](https://issues.apache.org/jira/browse/SPARK-16351) | Avoid record-per type dispatch in JSON when writing |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-16535](https://issues.apache.org/jira/browse/SPARK-16535) | pom.xml warning: "Definition of groupId is redundant, because it's inherited from the parent" |  Trivial | Build | Xin Ren | Xin Ren |
| [SPARK-16395](https://issues.apache.org/jira/browse/SPARK-16395) | Fail if too many CheckpointWriteHandlers are queued up in the fixed thread pool |  Major | DStreams | Yan Chen | Sean Owen |
| [SPARK-16478](https://issues.apache.org/jira/browse/SPARK-16478) | strongly connected components doesn't cache returned RDD |  Minor | GraphX | Michał Wesołowski | Michał Wesołowski |
| [SPARK-16494](https://issues.apache.org/jira/browse/SPARK-16494) | Upgrade breeze version to 0.12 |  Minor | ML, MLlib | Yanbo Liang | Yanbo Liang |
| [SPARK-14702](https://issues.apache.org/jira/browse/SPARK-14702) | Expose SparkLauncher's ProcessBuilder for user flexibility |  Major | Spark Submit | Shuo Zheng | Andrew Duffy |
| [SPARK-16568](https://issues.apache.org/jira/browse/SPARK-16568) | update sql programing guide refreshTable API |  Major | Documentation, SQL | Weichen Xu | Weichen Xu |
| [SPARK-15951](https://issues.apache.org/jira/browse/SPARK-15951) | Change Executors Page to use datatables to support sorting columns and searching |  Minor | Web UI | Kishor Patil | Kishor Patil |
| [SPARK-16226](https://issues.apache.org/jira/browse/SPARK-16226) | Weaken JDBC isolation level to avoid locking when writing partitions |  Minor | SQL | lihongli | Sean Owen |
| [SPARK-16640](https://issues.apache.org/jira/browse/SPARK-16640) | Add codegen for Elt function |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-16194](https://issues.apache.org/jira/browse/SPARK-16194) | No way to dynamically set env vars on driver in cluster mode |  Minor | . | Michael Gummelt | Michael Gummelt |
| [SPARK-16662](https://issues.apache.org/jira/browse/SPARK-16662) | The HiveContext deprecate warning in python always shown even if do not use HiveContext |  Minor | PySpark, SQL | Weichen Xu | Weichen Xu |
| [SPARK-16463](https://issues.apache.org/jira/browse/SPARK-16463) |  Support \`truncate\` option in Overwrite mode for JDBC DataFrameWriter |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-16645](https://issues.apache.org/jira/browse/SPARK-16645) | rename CatalogStorageFormat.serdeProperties to properties |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-5581](https://issues.apache.org/jira/browse/SPARK-5581) | When writing sorted map output file, avoid open / close between each partition |  Major | Shuffle | Sandy Ryza | Brian Cho |
| [SPARK-16674](https://issues.apache.org/jira/browse/SPARK-16674) | Avoid per-record type dispatch in JDBC when reading |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-16660](https://issues.apache.org/jira/browse/SPARK-16660) | CreateViewCommand should not take CatalogTable |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-16691](https://issues.apache.org/jira/browse/SPARK-16691) | move BucketSpec to catalyst module and use it in CatalogTable |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-16653](https://issues.apache.org/jira/browse/SPARK-16653) | Make convergence tolerance param in ANN default value consistent with other algorithm using LBFGS |  Trivial | ML, Optimizer | Weichen Xu | Weichen Xu |
| [SPARK-16685](https://issues.apache.org/jira/browse/SPARK-16685) | Remove defunct audit-release dir |  Minor | Build | jay vyas | Reynold Xin |
| [SPARK-16166](https://issues.apache.org/jira/browse/SPARK-16166) | Correctly honor off heap memory usage in web ui and log display |  Minor | Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-16675](https://issues.apache.org/jira/browse/SPARK-16675) | Avoid per-record type dispatch in JDBC when writing |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-16697](https://issues.apache.org/jira/browse/SPARK-16697) | redundant RDD computation in LDAOptimizer |  Minor | ML, MLlib | Weichen Xu | Weichen Xu |
| [SPARK-16663](https://issues.apache.org/jira/browse/SPARK-16663) | desc table should be consistent between data source and hive serde tables |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-15703](https://issues.apache.org/jira/browse/SPARK-15703) | Make ListenerBus event queue size configurable |  Minor | Scheduler, Web UI | Thomas Graves | Dhruve Ashar |
| [SPARK-5847](https://issues.apache.org/jira/browse/SPARK-5847) | Allow for configuring MetricsSystem's use of app ID to namespace all metrics |  Minor | Spark Core | Ryan Williams | Mark Grover |
| [SPARK-16552](https://issues.apache.org/jira/browse/SPARK-16552) | Store the Inferred Schemas into External Catalog Tables when Creating Tables |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-16764](https://issues.apache.org/jira/browse/SPARK-16764) | Recommend disabling vectorized parquet reader on OutOfMemoryError |  Major | . | Sameer Agarwal | Sameer Agarwal |
| [SPARK-16772](https://issues.apache.org/jira/browse/SPARK-16772) | Correct API doc references to PySpark classes + formatting fixes |  Trivial | Documentation, PySpark | Nicholas Chammas | Nicholas Chammas |
| [SPARK-16694](https://issues.apache.org/jira/browse/SPARK-16694) | Use for/foreach rather than map for Unit expressions whose side effects are required |  Minor | DStreams, Examples, MLlib, Spark Core, SQL | Sean Owen | Sean Owen |
| [SPARK-16696](https://issues.apache.org/jira/browse/SPARK-16696) | unused broadcast variables should call destroy instead of unpersist |  Minor | ML, MLlib | Weichen Xu | Weichen Xu |
| [SPARK-16812](https://issues.apache.org/jira/browse/SPARK-16812) | Open up SparkILoop.getAddedJars |  Major | Spark Shell | Reynold Xin | Reynold Xin |
| [SPARK-16813](https://issues.apache.org/jira/browse/SPARK-16813) | Remove private[sql] and private[spark] from catalyst package |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-16731](https://issues.apache.org/jira/browse/SPARK-16731) | use StructType in CatalogTable and remove CatalogColumn |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-16805](https://issues.apache.org/jira/browse/SPARK-16805) | Log timezone when query result does not match |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-16726](https://issues.apache.org/jira/browse/SPARK-16726) | Improve \`Union/Intersect/Except\` error messages on incompatible types |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-16828](https://issues.apache.org/jira/browse/SPARK-16828) | remove MaxOf and MinOf |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-16793](https://issues.apache.org/jira/browse/SPARK-16793) | Set the temporary warehouse path to sc'conf in TestHive |  Minor | SQL | Jiang Xingbo | Jiang Xingbo |
| [SPARK-16851](https://issues.apache.org/jira/browse/SPARK-16851) | Incorrect threshould length in 'setThresholds()' evoke Exception |  Trivial | ML | zhengruifeng | zhengruifeng |
| [SPARK-16855](https://issues.apache.org/jira/browse/SPARK-16855) | move Greatest and Least from conditionalExpressions.scala to arithmetic.scala |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-16858](https://issues.apache.org/jira/browse/SPARK-16858) | Removal of TestHiveSharedState |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-16796](https://issues.apache.org/jira/browse/SPARK-16796) | Visible passwords on Spark environment page |  Trivial | Web UI | Artur Sukhenko | Artur Sukhenko |
| [SPARK-16596](https://issues.apache.org/jira/browse/SPARK-16596) | Refactor DataSourceScanExec to do partition discovery at execution instead of planning time |  Minor | SQL | Eric Liang | Eric Liang |
| [SPARK-16888](https://issues.apache.org/jira/browse/SPARK-16888) | Implements eval method for expression AssertNotNull |  Minor | SQL | Sean Zhong | Sean Zhong |
| [SPARK-16867](https://issues.apache.org/jira/browse/SPARK-16867) | createTable and alterTable in ExternalCatalog should not take db |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-16884](https://issues.apache.org/jira/browse/SPARK-16884) | Move DataSourceScanExec out of ExistingRDD.scala file |  Trivial | SQL | Eric Liang | Eric Liang |
| [SPARK-16875](https://issues.apache.org/jira/browse/SPARK-16875) | Add args checking for DataSet randomSplit and sample |  Minor | SQL | zhengruifeng | zhengruifeng |
| [SPARK-16877](https://issues.apache.org/jira/browse/SPARK-16877) | Add a rule for preventing use Java's Override annotation |  Minor | Build | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-15074](https://issues.apache.org/jira/browse/SPARK-15074) | Spark shuffle service bottlenecked while fetching large amount of intermediate data |  Major | Shuffle | Sital Kedia | Sital Kedia |
| [SPARK-16879](https://issues.apache.org/jira/browse/SPARK-16879) | unify logical plans for CREATE TABLE and CTAS |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-13238](https://issues.apache.org/jira/browse/SPARK-13238) | Add ganglia dmax parameter |  Minor | Spark Core | Ekasit Kijsipongse | Ekasit Kijsipongse |
| [SPARK-16847](https://issues.apache.org/jira/browse/SPARK-16847) | Prevent to potentially read corrupt statstics on binary in Parquet via VectorizedReader |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-16932](https://issues.apache.org/jira/browse/SPARK-16932) | Programming-guide Accumulator section should be more clear w.r.t new API |  Trivial | Documentation | Bryan Cutler | Bryan Cutler |
| [SPARK-16870](https://issues.apache.org/jira/browse/SPARK-16870) | add "spark.sql.broadcastTimeout" into docs/sql-programming-guide.md to help people to how to fix this timeout error when it happenned |  Trivial | Documentation | Liang Ke | Liang Ke |
| [SPARK-16909](https://issues.apache.org/jira/browse/SPARK-16909) | Streaming for postgreSQL JDBC driver |  Minor | Spark Core | prince john wesley | prince john wesley |
| [SPARK-16919](https://issues.apache.org/jira/browse/SPARK-16919) | Configurable update interval for console progress bar |  Trivial | Spark Core | Tejas Patil | Tejas Patil |
| [SPARK-16749](https://issues.apache.org/jira/browse/SPARK-16749) | Clean-up OffsetWindowFrame |  Minor | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-16606](https://issues.apache.org/jira/browse/SPARK-16606) | Misleading warning for SparkContext.getOrCreate "WARN SparkContext: Use an existing SparkContext, some configuration may not take effect." |  Minor | Spark Core | Jacek Laskowski | Sean Owen |
| [SPARK-16964](https://issues.apache.org/jira/browse/SPARK-16964) | Remove private[sql] and private[spark] from sql.execution package |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-16933](https://issues.apache.org/jira/browse/SPARK-16933) | AFTAggregator in AFTSurvivalRegression serializes unnecessary data |  Major | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-10601](https://issues.apache.org/jira/browse/SPARK-10601) | Spark SQL - Support for MINUS |  Major | SQL | Richard Garris | Dongjoon Hyun |
| [SPARK-16324](https://issues.apache.org/jira/browse/SPARK-16324) | regexp\_extract should doc that it returns empty string when match fails |  Minor | PySpark, SQL | Max Moroz | Sean Owen |
| [SPARK-15639](https://issues.apache.org/jira/browse/SPARK-15639) | Try to push down filter at RowGroups level for parquet reader |  Blocker | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-16710](https://issues.apache.org/jira/browse/SPARK-16710) | SparkR spark.glm should support weightCol |  Major | ML, SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-16928](https://issues.apache.org/jira/browse/SPARK-16928) | Recursive call of ColumnVector::getInt() breaks JIT inlining |  Minor | SQL | Qifan Pu | Qifan Pu |
| [SPARK-12920](https://issues.apache.org/jira/browse/SPARK-12920) | Honor "spark.ui.retainedStages" to reduce mem-pressure |  Major | SQL | Rajesh Balamohan | Rajesh Balamohan |
| [SPARK-14743](https://issues.apache.org/jira/browse/SPARK-14743) | Improve delegation token handling in secure clusters |  Major | Spark Core, YARN | Marcelo Vanzin | Saisai Shao |
| [SPARK-17021](https://issues.apache.org/jira/browse/SPARK-17021) | simplify the constructor parameters of QuantileSummaries |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-13081](https://issues.apache.org/jira/browse/SPARK-13081) | Allow set pythonExec of driver and executor through configuration |  Minor | PySpark, Spark Submit | Jeff Zhang | Jeff Zhang |
| [SPARK-16434](https://issues.apache.org/jira/browse/SPARK-16434) | Avoid record-per type dispatch in JSON when reading |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-12370](https://issues.apache.org/jira/browse/SPARK-12370) | Documentation should link to examples from its own release version |  Minor | Documentation | Brian London | Jagadeesan A S |
| [SPARK-16968](https://issues.apache.org/jira/browse/SPARK-16968) | Allow to add additional options when creating a new table in DF's JDBC writer. |  Minor | SQL | Jie Huang | Jie Huang |
| [SPARK-17023](https://issues.apache.org/jira/browse/SPARK-17023) | Update Kafka connetor to use Kafka 0.10.0.1 |  Trivial | Build | Luciano Resende | Luciano Resende |
| [SPARK-11714](https://issues.apache.org/jira/browse/SPARK-11714) | Make Spark on Mesos honor port restrictions |  Major | Mesos | Charles Allen | Stavros Kontopoulos |
| [SPARK-16934](https://issues.apache.org/jira/browse/SPARK-16934) | Update LogisticCostAggregator serialization code to make it consistent with LinearRegression |  Major | ML, MLlib | Weichen Xu | Weichen Xu |
| [SPARK-17033](https://issues.apache.org/jira/browse/SPARK-17033) | GaussianMixture should use treeAggregate to improve performance |  Minor | ML, MLlib | Yanbo Liang | Yanbo Liang |
| [SPARK-16671](https://issues.apache.org/jira/browse/SPARK-16671) | Merge variable substitution code in core and SQL |  Minor | Spark Core, SQL | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-16916](https://issues.apache.org/jira/browse/SPARK-16916) | serde/storage properties should not have limitations |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17084](https://issues.apache.org/jira/browse/SPARK-17084) | Rename ParserUtils.assert to validate |  Minor | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-17068](https://issues.apache.org/jira/browse/SPARK-17068) | Retain view visibility information through out Analysis |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-17032](https://issues.apache.org/jira/browse/SPARK-17032) | Add test cases for methods in ParserUtils |  Minor | SQL | Jiang Xingbo | Jiang Xingbo |
| [SPARK-17106](https://issues.apache.org/jira/browse/SPARK-17106) | Simplify subquery interface |  Minor | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-16736](https://issues.apache.org/jira/browse/SPARK-16736) | remove redundant FileSystem status checks calls from Spark codebase |  Minor | Spark Core | Steve Loughran | Steve Loughran |
| [SPARK-17107](https://issues.apache.org/jira/browse/SPARK-17107) | Remove redundant pushdown rule for Union |  Minor | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-16947](https://issues.apache.org/jira/browse/SPARK-16947) | Support type coercion and foldable expression for inline tables |  Major | SQL | Herman van Hovell | Peter Lee |
| [SPARK-15018](https://issues.apache.org/jira/browse/SPARK-15018) | PySpark ML Pipeline raises unclear error when no stages set |  Minor | ML, PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-17002](https://issues.apache.org/jira/browse/SPARK-17002) | Document that spark.ssl.protocol. is required for SSL |  Trivial | Documentation, Spark Core | Michael Gummelt | Miao Wang |
| [SPARK-16498](https://issues.apache.org/jira/browse/SPARK-16498) | move hive hack for data source table into HiveExternalCatalog |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17127](https://issues.apache.org/jira/browse/SPARK-17127) | Include AArch64 in the check of cached unaligned-access capability |  Minor | Spark Core | Richael Zhuang | Richael Zhuang |
| [SPARK-15113](https://issues.apache.org/jira/browse/SPARK-15113) | Add missing numFeatures & numClasses to wrapped JavaClassificationModel |  Minor | ML, PySpark | holdenk | holdenk |
| [SPARK-16320](https://issues.apache.org/jira/browse/SPARK-16320) | Document G1 heap region's effect on spark 2.0 vs 1.6 |  Minor | Documentation, SQL | Maciej Bryński | Sean Owen |
| [SPARK-17173](https://issues.apache.org/jira/browse/SPARK-17173) | Refactor R mllib for easier ml implementations |  Major | MLlib, SparkR | Felix Cheung | Felix Cheung |
| [SPARK-17144](https://issues.apache.org/jira/browse/SPARK-17144) | Removal of useless CreateHiveTableAsSelectLogicalPlan |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-17199](https://issues.apache.org/jira/browse/SPARK-17199) | Use CatalystConf.resolver for case-sensitivity comparison |  Trivial | SQL | Jacek Laskowski | Jacek Laskowski |
| [SPARK-17095](https://issues.apache.org/jira/browse/SPARK-17095) | Latex and Scala doc do not play nicely |  Trivial | Documentation | Seth Hendrickson | Jagadeesan A S |
| [SPARK-13286](https://issues.apache.org/jira/browse/SPARK-13286) | JDBC driver doesn't report full exception |  Minor | SQL | Adrian Bridgett | Davies Liu |
| [SPARK-16862](https://issues.apache.org/jira/browse/SPARK-16862) | Configurable buffer size in \`UnsafeSorterSpillReader\` |  Minor | Spark Core | Tejas Patil | Tejas Patil |
| [SPARK-16822](https://issues.apache.org/jira/browse/SPARK-16822) | Support latex in scaladoc with MathJax |  Minor | Documentation | Shuai Lin | Shuai Lin |
| [SPARK-17186](https://issues.apache.org/jira/browse/SPARK-17186) | remove catalog table type INDEX |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-16216](https://issues.apache.org/jira/browse/SPARK-16216) | CSV data source does not write date and timestamp correctly |  Blocker | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-17190](https://issues.apache.org/jira/browse/SPARK-17190) | Removal of HiveSharedState |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-17215](https://issues.apache.org/jira/browse/SPARK-17215) | Method \`SQLContext.parseDataType(dataTypeString: String)\` could be removed. |  Major | SQL | Jiang Xingbo | Jiang Xingbo |
| [SPARK-17193](https://issues.apache.org/jira/browse/SPARK-17193) | HadoopRDD NPE at DEBUG log level when getLocationInfo == null |  Trivial | Spark Core | Sean Owen | Sean Owen |
| [SPARK-17197](https://issues.apache.org/jira/browse/SPARK-17197) | PySpark LiR/LoR supports tree aggregation level configurable |  Minor | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-17231](https://issues.apache.org/jira/browse/SPARK-17231) | Avoid building debug or trace log messages unless the respective log level is enabled |  Minor | Spark Core | Michael Allman | Michael Allman |
| [SPARK-17260](https://issues.apache.org/jira/browse/SPARK-17260) | move CreateTables to HiveStrategies |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17192](https://issues.apache.org/jira/browse/SPARK-17192) | Issuing an exception when users specify the partitioning columns without a given schema |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-17250](https://issues.apache.org/jira/browse/SPARK-17250) | Remove HiveClient and setCurrentDatabase from HiveSessionCatalog |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-17246](https://issues.apache.org/jira/browse/SPARK-17246) | Support BigDecimal literal parsing |  Minor | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-17001](https://issues.apache.org/jira/browse/SPARK-17001) | Enable standardScaler to standardize sparse vectors when withMean=True |  Minor | . | Tobi Bosede | Sean Owen |
| [SPARK-17063](https://issues.apache.org/jira/browse/SPARK-17063) | MSCK REPAIR TABLE is super slow with Hive metastore |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-17301](https://issues.apache.org/jira/browse/SPARK-17301) | Remove unused classTag field from AtomicType base class |  Minor | SQL | Josh Rosen | Josh Rosen |
| [SPARK-17276](https://issues.apache.org/jira/browse/SPARK-17276) | Stop environment parameters flooding Jenkins build output |  Minor | Spark Core, Tests | Xin Ren | Xin Ren |
| [SPARK-17314](https://issues.apache.org/jira/browse/SPARK-17314) | Use Netty's DefaultThreadFactory to enable its fast ThreadLocal impl |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-15985](https://issues.apache.org/jira/browse/SPARK-15985) | Reduce runtime overhead of a program that reads an primitive array in Dataset |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-17178](https://issues.apache.org/jira/browse/SPARK-17178) | Allow to set sparkr shell command through --conf |  Minor | Spark Submit, SparkR | Jeff Zhang | Jeff Zhang |
| [SPARK-17316](https://issues.apache.org/jira/browse/SPARK-17316) | Don't block StandaloneSchedulerBackend.executorRemoved |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-17332](https://issues.apache.org/jira/browse/SPARK-17332) | Make Java Loggers static members |  Trivial | Spark Core | Sean Owen | Sean Owen |
| [SPARK-17241](https://issues.apache.org/jira/browse/SPARK-17241) | SparkR spark.glm should have configurable regularization parameter |  Major | . | Junyang Qian | Xin Ren |
| [SPARK-17329](https://issues.apache.org/jira/browse/SPARK-17329) | Don't build PRs with -Pyarn unless YARN code changed |  Minor | Build, YARN | Sean Owen | Sean Owen |
| [SPARK-17257](https://issues.apache.org/jira/browse/SPARK-17257) | the physical plan of CREATE TABLE or CTAS should take CatalogTable |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17263](https://issues.apache.org/jira/browse/SPARK-17263) | Support binary literals in SQL |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-17331](https://issues.apache.org/jira/browse/SPARK-17331) | Avoid allocating 0-length arrays |  Trivial | MLlib, Spark Core | Sean Owen | Sean Owen |
| [SPARK-16461](https://issues.apache.org/jira/browse/SPARK-16461) | Support partition batch pruning with \`\<=\>\` (EqualNullSafe) predicate in InMemoryTableScanExec |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-16302](https://issues.apache.org/jira/browse/SPARK-16302) | Set the right number of partitions for reading data from a local collection. |  Minor | SQL | Lianhui Wang | Lianhui Wang |
| [SPARK-15509](https://issues.apache.org/jira/browse/SPARK-15509) | R MLlib algorithms should support input columns "features" and "label" |  Major | ML, SparkR | Joseph K. Bradley | Xin Ren |
| [SPARK-16935](https://issues.apache.org/jira/browse/SPARK-16935) | Verification of Function-related ExternalCatalog APIs |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-17347](https://issues.apache.org/jira/browse/SPARK-17347) | Encoder in Dataset example has incorrect type |  Trivial | Examples | Nan Zhu | Nan Zhu |
| [SPARK-17324](https://issues.apache.org/jira/browse/SPARK-17324) | Remove Direct Usage of HiveClient in InsertIntoHiveTable |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-17308](https://issues.apache.org/jira/browse/SPARK-17308) | Replace all pattern match on boolean value by if/else block. |  Trivial | Spark Core | Shivansh | Shivansh |
| [SPARK-17311](https://issues.apache.org/jira/browse/SPARK-17311) | Standardize Python-Java MLlib API to accept optional long seeds in all cases |  Minor | MLlib, PySpark | Sean Owen | Sean Owen |
| [SPARK-17279](https://issues.apache.org/jira/browse/SPARK-17279) | better error message for exceptions during ScalaUDF execution |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17378](https://issues.apache.org/jira/browse/SPARK-17378) | Upgrade snappy-java to 1.1.2.6 |  Trivial | Build | Adam Roberts | Adam Roberts |
| [SPARK-17238](https://issues.apache.org/jira/browse/SPARK-17238) | simplify the logic for converting data source table into hive compatible format |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17359](https://issues.apache.org/jira/browse/SPARK-17359) | Use +=(A) instead of append(A) in performance critical paths |  Minor | MLlib, SQL | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [SPARK-17052](https://issues.apache.org/jira/browse/SPARK-17052) | Remove Duplicate Test Cases auto\_join from HiveCompatibilitySuite.scala |  Minor | SQL | Xiao Li | Xiao Li |
| [SPARK-15487](https://issues.apache.org/jira/browse/SPARK-15487) | Spark Master UI to reverse proxy Application and Workers UI |  Minor | Web UI | Gurvinder | Gurvinder |
| [SPARK-17389](https://issues.apache.org/jira/browse/SPARK-17389) | KMeans speedup with better choice of k-means\|\| init steps = 2 |  Minor | MLlib | Sean Owen | Sean Owen |
| [SPARK-17330](https://issues.apache.org/jira/browse/SPARK-17330) | Clean up spark-warehouse in UT |  Minor | SQL, Tests | tone | tone |
| [SPARK-17415](https://issues.apache.org/jira/browse/SPARK-17415) | Better error message for driver-side broadcast join OOMs |  Minor | . | Sameer Agarwal | Sameer Agarwal |
| [SPARK-17486](https://issues.apache.org/jira/browse/SPARK-17486) | Remove unused TaskMetricsUIData.updatedBlockStatuses field |  Major | Web UI | Josh Rosen | Josh Rosen |
| [SPARK-17171](https://issues.apache.org/jira/browse/SPARK-17171) | DAG will list all partitions in the graph |  Minor | Web UI | cen yuhai | cen yuhai |
| [SPARK-17447](https://issues.apache.org/jira/browse/SPARK-17447) | performance improvement in Partitioner.DefaultPartitioner |  Trivial | Spark Core | Jianfei Wang | Sean Owen |
| [SPARK-17483](https://issues.apache.org/jira/browse/SPARK-17483) | Minor refactoring and cleanup in BlockManager block status reporting and block removal |  Major | Block Manager | Josh Rosen | Josh Rosen |
| [SPARK-17530](https://issues.apache.org/jira/browse/SPARK-17530) | Add Statistics into DESCRIBE FORMATTED |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-17317](https://issues.apache.org/jira/browse/SPARK-17317) | Add package vignette to SparkR |  Major | . | Junyang Qian | Junyang Qian |
| [SPARK-17449](https://issues.apache.org/jira/browse/SPARK-17449) | Relation between heartbeatInterval and network timeout |  Minor | Documentation | Yang Liang | Sean Owen |
| [SPARK-17480](https://issues.apache.org/jira/browse/SPARK-17480) | CompressibleColumnBuilder inefficiently call gatherCompressibilityStats |  Minor | SQL | Ergin Seyfe | Ergin Seyfe |
| [SPARK-17445](https://issues.apache.org/jira/browse/SPARK-17445) | Reference an ASF page as the main place to find third-party packages |  Minor | . | Matei Zaharia | Sean Owen |
| [SPARK-17472](https://issues.apache.org/jira/browse/SPARK-17472) | Better error message for serialization failures of large objects in Python |  Minor | PySpark | Eric Liang | Eric Liang |
| [SPARK-17507](https://issues.apache.org/jira/browse/SPARK-17507) | check weight vector size in ANN |  Trivial | ML, MLlib | Weichen Xu | Weichen Xu |
| [SPARK-17524](https://issues.apache.org/jira/browse/SPARK-17524) | RowBasedKeyValueBatchSuite always uses 64 mb page size |  Trivial | Tests | Adam Roberts | Adam Roberts |
| [SPARK-17406](https://issues.apache.org/jira/browse/SPARK-17406) | Event Timeline will be very slow when there are too many executor events |  Minor | Web UI | cen yuhai | cen yuhai |
| [SPARK-17536](https://issues.apache.org/jira/browse/SPARK-17536) | Minor performance improvement to JDBC batch inserts |  Trivial | SQL | John Muller | John Muller |
| [SPARK-17451](https://issues.apache.org/jira/browse/SPARK-17451) | CoarseGrainedExecutorBackend should inform driver before self-kill |  Minor | Spark Core | Tejas Patil | Tejas Patil |
| [SPARK-17379](https://issues.apache.org/jira/browse/SPARK-17379) | Upgrade netty-all to 4.0.41.Final (4.1.5-Final not compatible) |  Trivial | Build | Adam Roberts | Adam Roberts |
| [SPARK-17484](https://issues.apache.org/jira/browse/SPARK-17484) | Race condition when cancelling a job during a cache write can lead to block fetch failures |  Major | Block Manager | Josh Rosen | Josh Rosen |
| [SPARK-17534](https://issues.apache.org/jira/browse/SPARK-17534) | Increase timeouts for DirectKafkaStreamSuite tests |  Trivial | Tests | Adam Roberts | Adam Roberts |
| [SPARK-17529](https://issues.apache.org/jira/browse/SPARK-17529) | On highly skewed data, outer join merges are slow |  Major | Spark Core | David C Navas | David C. Navas |
| [SPARK-17506](https://issues.apache.org/jira/browse/SPARK-17506) | Improve the check double values equality rule |  Minor | SQL, Tests | Jiang Xingbo | Jiang Xingbo |
| [SPARK-17297](https://issues.apache.org/jira/browse/SPARK-17297) | Clarify window/slide duration as absolute time, not relative to a calendar |  Trivial | Documentation | Pete Baker | Sean Owen |
| [SPARK-17558](https://issues.apache.org/jira/browse/SPARK-17558) | Bump Hadoop 2.7 version from 2.7.2 to 2.7.3 |  Trivial | Build | Reynold Xin | Steve Loughran |
| [SPARK-17437](https://issues.apache.org/jira/browse/SPARK-17437) | uiWebUrl is not accessible to JavaSparkContext or pyspark.SparkContext |  Minor | Java API, PySpark, Web UI | Adrian Petrescu | Adrian Petrescu |
| [SPARK-17585](https://issues.apache.org/jira/browse/SPARK-17585) | PySpark SparkContext.addFile supports adding files recursively |  Minor | PySpark, Spark Core | Yanbo Liang | Yanbo Liang |
| [SPARK-17595](https://issues.apache.org/jira/browse/SPARK-17595) | Inefficient selection in Word2VecModel.findSynonyms |  Minor | MLlib | William Benton | William Benton |
| [SPARK-17583](https://issues.apache.org/jira/browse/SPARK-17583) | Remove unused rowSeparator variable and set auto-expanding buffer as default for maxCharsPerColumn option in CSV |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-17590](https://issues.apache.org/jira/browse/SPARK-17590) | Analyze CTE definitions at once and allow CTE subquery to define CTE |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-4563](https://issues.apache.org/jira/browse/SPARK-4563) | Allow spark driver to bind to different ip then advertise ip |  Minor | Deploy | Long Nguyen | Marcelo Vanzin |
| [SPARK-17623](https://issues.apache.org/jira/browse/SPARK-17623) | Failed tasks end reason is always a TaskFailedReason, types should reflect this |  Minor | Scheduler, Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-17569](https://issues.apache.org/jira/browse/SPARK-17569) | Don't recheck existence of files when generating File Relation resolution in StructuredStreaming |  Major | . | Burak Yavuz | Burak Yavuz |
| [SPARK-17577](https://issues.apache.org/jira/browse/SPARK-17577) | SparkR support add files to Spark job and get by executors |  Major | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-17609](https://issues.apache.org/jira/browse/SPARK-17609) | SessionCatalog.tableExists should not check temp view |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17421](https://issues.apache.org/jira/browse/SPARK-17421) | Document warnings about "MaxPermSize" parameter when building with Maven and Java 8 |  Trivial | Build | Frederick Reiss | Frederick Reiss |
| [SPARK-17281](https://issues.apache.org/jira/browse/SPARK-17281) | Add treeAggregateDepth parameter for AFTSurvivalRegression |  Minor | ML, MLlib | Weichen Xu | Weichen Xu |
| [SPARK-17365](https://issues.apache.org/jira/browse/SPARK-17365) | Kill multiple executors together to reduce lock contention |  Major | Spark Core | Dhruve Ashar | Dhruve Ashar |
| [SPARK-17485](https://issues.apache.org/jira/browse/SPARK-17485) | Failed remote cached block reads can lead to whole job failure |  Critical | Block Manager | Josh Rosen | Josh Rosen |
| [SPARK-17638](https://issues.apache.org/jira/browse/SPARK-17638) | Stop JVM StreamingContext when the Python process is dead |  Minor | DStreams | Shixiong Zhu | Shixiong Zhu |
| [SPARK-16719](https://issues.apache.org/jira/browse/SPARK-16719) | RandomForest: communicate fewer trees on each iteration |  Critical | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-16240](https://issues.apache.org/jira/browse/SPARK-16240) | model loading backward compatibility for ml.clustering.LDA |  Major | . | yuhao yang | Gayathri Murali |
| [SPARK-17640](https://issues.apache.org/jira/browse/SPARK-17640) | Avoid using -1 as the default batchId for FileStreamSource.FileEntry |  Minor | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-16861](https://issues.apache.org/jira/browse/SPARK-16861) | Refactor PySpark accumulator API to be on top of AccumulatorV2 API |  Minor | PySpark, Spark Core | holdenk | holdenk |
| [SPARK-17499](https://issues.apache.org/jira/browse/SPARK-17499) | make the default params in sparkR spark.mlp consistent with MultilayerPerceptronClassifier |  Major | . | Weichen Xu | Weichen Xu |
| [SPARK-12221](https://issues.apache.org/jira/browse/SPARK-12221) | Add CPU time metric to TaskMetrics |  Major | Spark Core, Web UI | Jisoo Kim | Jisoo Kim |
| [SPARK-17651](https://issues.apache.org/jira/browse/SPARK-17651) | Automate Spark version update for documentations |  Major | Build, Documentation | Reynold Xin | Shivaram Venkataraman |
| [SPARK-10835](https://issues.apache.org/jira/browse/SPARK-10835) | Word2Vec should accept non-null string array, in addition to existing null string array |  Minor | ML | Sumit Chawla | yuhao yang |
| [SPARK-17057](https://issues.apache.org/jira/browse/SPARK-17057) | ProbabilisticClassifierModels' thresholds should have at most one 0 |  Minor | ML | zhengruifeng | Sean Owen |
| [SPARK-17551](https://issues.apache.org/jira/browse/SPARK-17551) | support null ordering for DataFrame API |  Major | SQL | Xin Wu | Xin Wu |
| [SPARK-14525](https://issues.apache.org/jira/browse/SPARK-14525) | DataFrameWriter's save method should delegate to jdbc for jdbc datasource |  Minor | SQL | Justin Pihony | Justin Pihony |
| [SPARK-17649](https://issues.apache.org/jira/browse/SPARK-17649) | Log how many Spark events got dropped in LiveListenerBus |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-15962](https://issues.apache.org/jira/browse/SPARK-15962) | Introduce additonal implementation with a dense format for UnsafeArrayData |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-16516](https://issues.apache.org/jira/browse/SPARK-16516) | Support for pushing down filters for decimal and timestamp types in ORC |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-17682](https://issues.apache.org/jira/browse/SPARK-17682) | nit: Mark children as final for Unary, Binary, Leaf expression and plan nodes |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-17677](https://issues.apache.org/jira/browse/SPARK-17677) | Break WindowExec.scala into multiple files |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-17614](https://issues.apache.org/jira/browse/SPARK-17614) | sparkSession.read() .jdbc(\*\*\*) use the sql syntax "where 1=0" that Cassandra does not support |  Minor | SQL | Paul Wu | Sean Owen |
| [SPARK-17648](https://issues.apache.org/jira/browse/SPARK-17648) | TaskSchedulerImpl.resourceOffers should take an IndexedSeq, not a Seq |  Minor | Scheduler, Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-17715](https://issues.apache.org/jira/browse/SPARK-17715) | Log INFO per task launch creates a large driver log |  Trivial | Scheduler | Brian Cho | Brian Cho |
| [SPARK-17653](https://issues.apache.org/jira/browse/SPARK-17653) | Optimizer should remove unnecessary distincts (in multiple unions) |  Major | SQL | Reynold Xin | Liang-Chi Hsieh |
| [SPARK-17717](https://issues.apache.org/jira/browse/SPARK-17717) | Add existence checks to user facing catalog |  Minor | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-17703](https://issues.apache.org/jira/browse/SPARK-17703) | Add unnamed version of addReferenceObj for minor objects. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-17739](https://issues.apache.org/jira/browse/SPARK-17739) | Collapse adjacent similar Window operators |  Major | SQL | Herman van Hovell | Dongjoon Hyun |
| [SPARK-17704](https://issues.apache.org/jira/browse/SPARK-17704) | ChiSqSelector performance improvement. |  Minor | ML, MLlib | Yanbo Liang | Yanbo Liang |
| [SPARK-17509](https://issues.apache.org/jira/browse/SPARK-17509) | When wrapping catalyst datatype to Hive data type avoid pattern matching |  Major | SQL | Sital Kedia | Sital Kedia |
| [SPARK-17598](https://issues.apache.org/jira/browse/SPARK-17598) | User-friendly name for Spark Thrift Server in web UI |  Trivial | SQL, Web UI | Jacek Laskowski | Alex Bozarth |
| [SPARK-17671](https://issues.apache.org/jira/browse/SPARK-17671) | Spark 2.0 history server summary page is slow even set spark.history.ui.maxApplications |  Minor | Web UI | Gang Wu | Sean Owen |
| [SPARK-16962](https://issues.apache.org/jira/browse/SPARK-16962) | Unsafe accesses (Platform.getLong()) not supported on unaligned boundaries in SPARC/Solaris |  Major | Spark Core, SQL | Suman Somasundar | Suman Somasundar |
| [SPARK-17744](https://issues.apache.org/jira/browse/SPARK-17744) | Parity check between the ml and mllib test suites for NB |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-17258](https://issues.apache.org/jira/browse/SPARK-17258) | Scientific decimals should be parsed as Decimals |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-17780](https://issues.apache.org/jira/browse/SPARK-17780) | Report NoClassDefFoundError in StreamExecution |  Major | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-16960](https://issues.apache.org/jira/browse/SPARK-16960) | Deprecate approxCountDistinct, toDegrees and toRadians according to FunctionRegistry in Scala and Python |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-17665](https://issues.apache.org/jira/browse/SPARK-17665) | SparkR does not support options in other types consistently other APIs |  Minor | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-17761](https://issues.apache.org/jira/browse/SPARK-17761) | Simplify InternalRow hierarchy |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-14082](https://issues.apache.org/jira/browse/SPARK-14082) | Add support for GPU resource when running on Mesos |  Minor | Mesos | Timothy Chen | Timothy Chen |
| [SPARK-14610](https://issues.apache.org/jira/browse/SPARK-14610) | Remove superfluous split from random forest findSplitsForContinousFeature |  Minor | ML | Seth Hendrickson | Seth Hendrickson |
| [SPARK-17719](https://issues.apache.org/jira/browse/SPARK-17719) | Unify and tie up options in a single place in JDBC datasource API |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-17776](https://issues.apache.org/jira/browse/SPARK-17776) | Potentially duplicated names which might have conflicts between JDBC options and properties instance |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-17844](https://issues.apache.org/jira/browse/SPARK-17844) | DataFrame API should simplify defining frame boundaries without partitioning/ordering |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15957](https://issues.apache.org/jira/browse/SPARK-15957) | RFormula supports forcing to index label |  Major | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-17821](https://issues.apache.org/jira/browse/SPARK-17821) | Expression Canonicalization should support Add and Or |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-11560](https://issues.apache.org/jira/browse/SPARK-11560) | Optimize KMeans implementation / remove 'runs' from implementation |  Minor | MLlib | Xiangrui Meng | Sean Owen |
| [SPARK-17845](https://issues.apache.org/jira/browse/SPARK-17845) | Improve window function frame boundary API in DataFrame |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-17745](https://issues.apache.org/jira/browse/SPARK-17745) | Update Python API for NB to support weighted instances |  Minor | ML, PySpark | zhengruifeng | Weichen Xu |
| [SPARK-17835](https://issues.apache.org/jira/browse/SPARK-17835) | Optimize NaiveBayes mllib wrapper to eliminate extra pass on data |  Major | ML, MLlib | Yanbo Liang | Yanbo Liang |
| [SPARK-17899](https://issues.apache.org/jira/browse/SPARK-17899) | add a debug mode to keep raw table properties in HiveExternalCatalog |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17686](https://issues.apache.org/jira/browse/SPARK-17686) | Propose to print Scala version in "spark-submit --version" command |  Minor | Spark Submit | Saisai Shao | Saisai Shao |
| [SPARK-17661](https://issues.apache.org/jira/browse/SPARK-17661) | Consolidate various listLeafFiles implementations |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-17903](https://issues.apache.org/jira/browse/SPARK-17903) | MetastoreRelation should talk to external catalog instead of hive client |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-15402](https://issues.apache.org/jira/browse/SPARK-15402) | PySpark ml.evaluation should support save/load |  Major | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-16063](https://issues.apache.org/jira/browse/SPARK-16063) | Add storageLevel to Dataset |  Minor | SQL | Nick Pentreath | Nick Pentreath |
| [SPARK-17839](https://issues.apache.org/jira/browse/SPARK-17839) | Use Nio's directbuffer instead of BufferedInputStream in order to avoid additional copy from os buffer cache to user buffer |  Minor | Shuffle | Sital Kedia | Sital Kedia |
| [SPARK-17751](https://issues.apache.org/jira/browse/SPARK-17751) | Remove spark.sql.eagerAnalysis |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-17388](https://issues.apache.org/jira/browse/SPARK-17388) | Support for inferring type date/timestamp/decimal for partition column |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-17930](https://issues.apache.org/jira/browse/SPARK-17930) | The SerializerInstance instance used when deserializing a TaskResult is not reused |  Major | Spark Core | Guoqiang Li | Guoqiang Li |
| [SPARK-17955](https://issues.apache.org/jira/browse/SPARK-17955) | Use the same read path in DataFrameReader.jdbc and DataFrameReader.format("jdbc") |  Trivial | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-10541](https://issues.apache.org/jira/browse/SPARK-10541) | Allow ApplicationHistoryProviders to provide their own text when there aren't any complete apps |  Minor | Web UI | Steve Loughran | Alex Bozarth |
| [SPARK-11653](https://issues.apache.org/jira/browse/SPARK-11653) | Would be very useful if spark-daemon.sh supported foreground operations |  Minor | Deploy | Adrian Bridgett | Mike Ihbe |
| [SPARK-17796](https://issues.apache.org/jira/browse/SPARK-17796) | spark HiveThriftServer2 sql AnalysisException: LOAD DATA input path does not exist. if sql query is existed wild card characters |  Minor | Spark Core | Tran Quyet Thang | Dongjoon Hyun |
| [SPARK-17999](https://issues.apache.org/jira/browse/SPARK-17999) | Add getPreferredLocations for KafkaSourceRDD |  Minor | Structured Streaming | Saisai Shao | Saisai Shao |
| [SPARK-17960](https://issues.apache.org/jira/browse/SPARK-17960) | Upgrade to Py4J 0.10.4 |  Trivial | PySpark | holdenk | Jagadeesan A S |
| [SPARK-18044](https://issues.apache.org/jira/browse/SPARK-18044) | FileStreamSource should not infer partitions in every batch |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-928](https://issues.apache.org/jira/browse/SPARK-928) | Add support for Unsafe-based serializer in Kryo 2.22 |  Minor | Spark Core | Matei Zaharia | Sandeep Singh |
| [SPARK-18038](https://issues.apache.org/jira/browse/SPARK-18038) | Move output partitioning definition from UnaryNodeExec to its children |  Trivial | SQL | Tejas Patil | Tejas Patil |
| [SPARK-18049](https://issues.apache.org/jira/browse/SPARK-18049) | Add missing tests for truePositiveRate and weightedTruePositiveRate |  Trivial | MLlib, Tests | zhengruifeng | zhengruifeng |
| [SPARK-18028](https://issues.apache.org/jira/browse/SPARK-18028) | simplify TableFileCatalog |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18010](https://issues.apache.org/jira/browse/SPARK-18010) | Remove unneeded heavy work performed by FsHistoryProvider for building up the application listing UI page |  Major | Spark Core, Web UI | Vinayak Joshi | Vinayak Joshi |
| [SPARK-18007](https://issues.apache.org/jira/browse/SPARK-18007) | update SparkR MLP - add initalWeights parameter |  Minor | ML, SparkR | Weichen Xu | Weichen Xu |
| [SPARK-17802](https://issues.apache.org/jira/browse/SPARK-17802) | Lots of "java.lang.ClassNotFoundException: org.apache.hadoop.ipc.CallerContext" In spark logs |  Minor | Spark Core | Shuai Lin | Shuai Lin |
| [SPARK-17961](https://issues.apache.org/jira/browse/SPARK-17961) | Add storageLevel to Dataset for SparkR |  Major | SparkR, SQL | Weichen Xu | Weichen Xu |
| [SPARK-18126](https://issues.apache.org/jira/browse/SPARK-18126) | getIteratorZipWithIndex accepts negative value as index. |  Major | Spark Core | Miao Wang | Miao Wang |
| [SPARK-17219](https://issues.apache.org/jira/browse/SPARK-17219) | QuantileDiscretizer should handle NaN values gracefully |  Major | ML | Barry Becker | Vincent |
| [SPARK-3261](https://issues.apache.org/jira/browse/SPARK-3261) | KMeans clusterer can return duplicate cluster centers |  Minor | MLlib | Derrick Burns | Sean Owen |
| [SPARK-18103](https://issues.apache.org/jira/browse/SPARK-18103) | Rename \*FileCatalog to \*FileProvider |  Minor | SQL | Eric Liang | Eric Liang |
| [SPARK-15994](https://issues.apache.org/jira/browse/SPARK-15994) | Allow enabling Mesos fetch cache in coarse executor backend |  Minor | Mesos | Charles Allen | Charles Allen |
| [SPARK-17848](https://issues.apache.org/jira/browse/SPARK-17848) | Move LabelCol datatype cast into Predictor.fit |  Major | ML | zhengruifeng | zhengruifeng |
| [SPARK-18088](https://issues.apache.org/jira/browse/SPARK-18088) | ChiSqSelector FPR PR cleanups |  Minor | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-16411](https://issues.apache.org/jira/browse/SPARK-16411) | Add textFile API to structured streaming. |  Minor | Structured Streaming | Prashant Sharma | Prashant Sharma |
| [SPARK-18216](https://issues.apache.org/jira/browse/SPARK-18216) | Make Column.expr public |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-17532](https://issues.apache.org/jira/browse/SPARK-17532) | Add thread lock information from JMX to thread dump UI |  Major | Web UI | Ryan Blue | Ryan Blue |
| [SPARK-18198](https://issues.apache.org/jira/browse/SPARK-18198) | Highlight code snippets for Streaming integretion docs |  Minor | Documentation, DStreams, Structured Streaming | Liwei Lin | Liwei Lin |
| [SPARK-17683](https://issues.apache.org/jira/browse/SPARK-17683) | Support ArrayType in Literal.apply |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-17058](https://issues.apache.org/jira/browse/SPARK-17058) | Add maven snapshots-and-staging profile to build/test against staging artifacts |  Minor | Build | Steve Loughran | Steve Loughran |
| [SPARK-18214](https://issues.apache.org/jira/browse/SPARK-18214) | Simplify RuntimeReplaceable type coercion |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-17470](https://issues.apache.org/jira/browse/SPARK-17470) | unify path for data source table and locationUri for hive serde table |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18197](https://issues.apache.org/jira/browse/SPARK-18197) | Optimise AppendOnlyMap implementation |  Minor | Spark Core | Adam Roberts | Adam Roberts |
| [SPARK-18287](https://issues.apache.org/jira/browse/SPARK-18287) | Move hash expressions from misc.scala into hash.scala |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-18276](https://issues.apache.org/jira/browse/SPARK-18276) | Some ML training summaries are not copied when {{copy()}} is called. |  Minor | ML | Seth Hendrickson | Seth Hendrickson |
| [SPARK-17854](https://issues.apache.org/jira/browse/SPARK-17854) | rand(null) should be supported |  Minor | SQL | chenerlu | Hyukjin Kwon |
| [SPARK-18296](https://issues.apache.org/jira/browse/SPARK-18296) | Use consistent naming for expression test suites |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-17490](https://issues.apache.org/jira/browse/SPARK-17490) | Optimize SerializeFromObject for primitive array |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-13770](https://issues.apache.org/jira/browse/SPARK-13770) | Document the ML feature Interaction |  Minor | Documentation, ML | Abbass Marouni | chie hayashida |
| [SPARK-17829](https://issues.apache.org/jira/browse/SPARK-17829) | Stable format for offset log |  Major | Structured Streaming | Michael Armbrust | Tyson Condie |
| [SPARK-17843](https://issues.apache.org/jira/browse/SPARK-17843) | History Server gives no feedback about the application list being incomplete |  Minor | Web UI | Vinayak Joshi | Vinayak Joshi |
| [SPARK-18375](https://issues.apache.org/jira/browse/SPARK-18375) | Upgrade netty to 4.0.42.Final |  Minor | Build, Spark Core | Guoqiang Li | Guoqiang Li |
| [SPARK-18396](https://issues.apache.org/jira/browse/SPARK-18396) | "Duration" column makes search result confused, maybe we should make it unsearchable |  Trivial | Web UI | Tao Wang | Tao Wang |
| [SPARK-17510](https://issues.apache.org/jira/browse/SPARK-17510) | Set Streaming MaxRate Independently For Multiple Streams |  Major | DStreams | Jeff Nadler | Cody Koeninger |
| [SPARK-18428](https://issues.apache.org/jira/browse/SPARK-18428) | Update docs for GraphX |  Minor | Documentation, GraphX | zhengruifeng | zhengruifeng |
| [SPARK-18427](https://issues.apache.org/jira/browse/SPARK-18427) | Update docs of mllib.KMeans |  Trivial | Documentation, MLlib | zhengruifeng | zhengruifeng |
| [SPARK-13027](https://issues.apache.org/jira/browse/SPARK-13027) | Add API for updateStateByKey to provide batch time as input |  Major | DStreams | Aaditya Ramesh | Aaditya Ramesh |
| [SPARK-18337](https://issues.apache.org/jira/browse/SPARK-18337) | Memory Sink should be able to recover from checkpoints in Complete OutputMode |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-18377](https://issues.apache.org/jira/browse/SPARK-18377) | warehouse path should be a static conf |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18438](https://issues.apache.org/jira/browse/SPARK-18438) | spark.mlp should support RFormula |  Major | ML, SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-18433](https://issues.apache.org/jira/browse/SPARK-18433) | Improve DataSource option keys to be more case-insensitive |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-18410](https://issues.apache.org/jira/browse/SPARK-18410) | Add structured kafka example |  Minor | Structured Streaming | Genmao Yu | Genmao Yu |
| [SPARK-18434](https://issues.apache.org/jira/browse/SPARK-18434) | Add missing ParamValidations for ML algos |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-18446](https://issues.apache.org/jira/browse/SPARK-18446) | make sure all ML algos have links to API docs |  Trivial | Documentation, ML | zhengruifeng | zhengruifeng |
| [SPARK-18420](https://issues.apache.org/jira/browse/SPARK-18420) | Fix the errors caused by lint check in Java |  Minor | Build | coneyliu | coneyliu |
| [SPARK-17268](https://issues.apache.org/jira/browse/SPARK-17268) | Break Optimizer.scala apart |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-16865](https://issues.apache.org/jira/browse/SPARK-16865) | A file-based end-to-end SQL query suite |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-17462](https://issues.apache.org/jira/browse/SPARK-17462) | Check for places within MLlib which should use VersionUtils to parse Spark version strings |  Minor | ML, MLlib | Joseph K. Bradley | Vincent |
| [SPARK-18490](https://issues.apache.org/jira/browse/SPARK-18490) | duplicate nodename extrainfo of ShuffleExchange |  Trivial | SQL | Song Jun | Song Jun |
| [SPARK-18448](https://issues.apache.org/jira/browse/SPARK-18448) | SparkSession should implement java.lang.AutoCloseable like JavaSparkContext |  Trivial | Spark Core | Andrew Ash | Sean Owen |
| [SPARK-18467](https://issues.apache.org/jira/browse/SPARK-18467) | Refactor StaticInvoke, Invoke and NewInstance. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-18456](https://issues.apache.org/jira/browse/SPARK-18456) | Use matrix abstraction for LogisticRegression coefficients during training |  Minor | ML | Seth Hendrickson | Seth Hendrickson |
| [SPARK-18398](https://issues.apache.org/jira/browse/SPARK-18398) | Fix nullabilities of MapObjects and optimize not to check null if lambda is not nullable. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-18493](https://issues.apache.org/jira/browse/SPARK-18493) | Add withWatermark and checkpoint to python dataframe |  Major | PySpark, SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-18465](https://issues.apache.org/jira/browse/SPARK-18465) | Uncache Table shouldn't throw an exception when table doesn't exist |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-18179](https://issues.apache.org/jira/browse/SPARK-18179) | Throws analysis exception with a proper message for unsupported argument types in reflect/java\_method function |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-18073](https://issues.apache.org/jira/browse/SPARK-18073) | Migrate wiki to spark.apache.org web site |  Critical | Documentation | Sean Owen | Sean Owen |
| [SPARK-18557](https://issues.apache.org/jira/browse/SPARK-18557) | Downgrade the memory leak warning message |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-18520](https://issues.apache.org/jira/browse/SPARK-18520) | Add missing setXXXCol methods for BisectingKMeansModel and GaussianMixtureModel |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-18575](https://issues.apache.org/jira/browse/SPARK-18575) | Keep same style: adjust the position of driver log links |  Trivial | Web UI | Genmao Yu | Genmao Yu |
| [SPARK-18481](https://issues.apache.org/jira/browse/SPARK-18481) | ML 2.1 QA: Remove deprecated methods for ML |  Minor | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-18585](https://issues.apache.org/jira/browse/SPARK-18585) | Use \`ev.isNull = "false"\` if possible for Janino to have a chance to optimize. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-18604](https://issues.apache.org/jira/browse/SPARK-18604) | Collapse Window optimizer rule changes column order |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-18408](https://issues.apache.org/jira/browse/SPARK-18408) | API Improvements for LSH |  Major | ML | Yun Ni | Yun Ni |
| [SPARK-18547](https://issues.apache.org/jira/browse/SPARK-18547) | Decouple I/O encryption key propagation from UserGroupInformation |  Major | Spark Core, YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-18513](https://issues.apache.org/jira/browse/SPARK-18513) | Record and recover watermark |  Blocker | Structured Streaming | Liwei Lin | Tyson Condie |
| [SPARK-18188](https://issues.apache.org/jira/browse/SPARK-18188) | Add checksum for block of broadcast |  Major | . | Davies Liu | Davies Liu |
| [SPARK-18615](https://issues.apache.org/jira/browse/SPARK-18615) | Switch to multi-line doc to avoid a genjavadoc bug for backticks |  Minor | Documentation | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-18592](https://issues.apache.org/jira/browse/SPARK-18592) | Move DT/RF/GBT Param setter methods to subclasses |  Major | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-18516](https://issues.apache.org/jira/browse/SPARK-18516) | Separate instantaneous state from progress performance statistics |  Blocker | Structured Streaming | Michael Armbrust | Michael Armbrust |
| [SPARK-17861](https://issues.apache.org/jira/browse/SPARK-17861) | Store data source partitions in metastore and push partition pruning into metastore |  Critical | SQL | Reynold Xin | Eric Liang |
| [SPARK-15819](https://issues.apache.org/jira/browse/SPARK-15819) | Add KMeanSummary in KMeans of PySpark |  Major | ML, PySpark | Jeff Zhang | Jeff Zhang |
| [SPARK-18612](https://issues.apache.org/jira/browse/SPARK-18612) | Leaked broadcasted variable in LBFGS |  Trivial | MLlib | Anthony Truchet | Anthony Truchet |
| [SPARK-18666](https://issues.apache.org/jira/browse/SPARK-18666) | Remove the codes checking deprecated config spark.sql.unsafe.enabled |  Trivial | Web UI | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-9876](https://issues.apache.org/jira/browse/SPARK-9876) | Upgrade parquet-mr to 1.8.1 |  Major | SQL | Cheng Lian | Ryan Blue |
| [SPARK-18674](https://issues.apache.org/jira/browse/SPARK-18674) | improve the error message of using join |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18690](https://issues.apache.org/jira/browse/SPARK-18690) | Backward compatibility of unbounded frames |  Minor | PySpark, SQL | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-18625](https://issues.apache.org/jira/browse/SPARK-18625) | OneVsRestModel should support setFeaturesCol and setPredictionCol |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-18694](https://issues.apache.org/jira/browse/SPARK-18694) | Add StreamingQuery.explain and exception to Python and fix StreamingQueryException |  Blocker | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18729](https://issues.apache.org/jira/browse/SPARK-18729) | MemorySink should not call DataFrame.collect when holding a lock |  Critical | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18572](https://issues.apache.org/jira/browse/SPARK-18572) | Use the hive client method "getPartitionNames" to answer "SHOW PARTITIONS" queries on partitioned Hive tables |  Major | SQL | Michael Allman | Michael Allman |
| [SPARK-18734](https://issues.apache.org/jira/browse/SPARK-18734) | Represent timestamp in StreamingQueryProgress as formatted string instead of millis |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-18686](https://issues.apache.org/jira/browse/SPARK-18686) | Several cleanup and improvements for spark.logit |  Major | ML, SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-18764](https://issues.apache.org/jira/browse/SPARK-18764) | Add a warning log when skipping a corrupted file |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18754](https://issues.apache.org/jira/browse/SPARK-18754) | Rename recentProgresses to recentProgress |  Major | Structured Streaming | Michael Armbrust | Michael Armbrust |
| [SPARK-18774](https://issues.apache.org/jira/browse/SPARK-18774) | Ignore non-existing files when ignoreCorruptFiles is enabled |  Major | Spark Core, SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18751](https://issues.apache.org/jira/browse/SPARK-18751) | Deadlock when SparkContext.stop is called in Utils.tryOrStopSparkContext |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18349](https://issues.apache.org/jira/browse/SPARK-18349) | Update R API documentation on ml model summary |  Major | ML, SparkR | Felix Cheung | Miao Wang |
| [SPARK-18811](https://issues.apache.org/jira/browse/SPARK-18811) | Stream Source resolution should happen in StreamExecution thread, not main thread |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-18628](https://issues.apache.org/jira/browse/SPARK-18628) | Update handle invalid documentation string |  Trivial | ML, PySpark | holdenk | Krishna Kalyan |
| [SPARK-18790](https://issues.apache.org/jira/browse/SPARK-18790) | Keep a general offset history of stream batches |  Major | Structured Streaming | Tyson Condie | Tyson Condie |
| [SPARK-18797](https://issues.apache.org/jira/browse/SPARK-18797) | Update spark.logit in sparkr-vignettes |  Major | SparkR | Miao Wang | Miao Wang |
| [SPARK-18834](https://issues.apache.org/jira/browse/SPARK-18834) | Expose event time time stats through StreamingQueryProgress |  Critical | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-18852](https://issues.apache.org/jira/browse/SPARK-18852) | StreamingQuery.lastProgress should be null when recentProgress is empty |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18826](https://issues.apache.org/jira/browse/SPARK-18826) | Make FileStream be able to start with most recent files |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-15386](https://issues.apache.org/jira/browse/SPARK-15386) | Master doesn't compile against Java 1.7 |  Blocker | Spark Core | Marcelo Vanzin | Sean Owen |
| [SPARK-15078](https://issues.apache.org/jira/browse/SPARK-15078) | Add all TPCDS 1.4 benchmark queries for SparkSQL |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-14204](https://issues.apache.org/jira/browse/SPARK-14204) | [SQL] Failure to register URL-derived JDBC driver on executors in cluster mode |  Major | SQL | Kevin McHale | Kevin McHale |
| [SPARK-16138](https://issues.apache.org/jira/browse/SPARK-16138) | YarnAllocator tries to cancel executor requests when we have none |  Minor | YARN | Peter Ableda | Peter Ableda |
| [SPARK-15963](https://issues.apache.org/jira/browse/SPARK-15963) | \`TaskKilledException\` is not correctly caught in \`Executor.TaskRunner\` |  Major | Spark Core | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [SPARK-16106](https://issues.apache.org/jira/browse/SPARK-16106) | TaskSchedulerImpl does not correctly handle new executors on existing hosts |  Trivial | Scheduler | Imran Rashid | Imran Rashid |
| [SPARK-16202](https://issues.apache.org/jira/browse/SPARK-16202) | Misleading Description of CreatableRelationProvider's createRelation |  Minor | SQL | Xiao Li | Xiao Li |
| [SPARK-15858](https://issues.apache.org/jira/browse/SPARK-15858) | "evaluateEachIteration" will fail on trying to run it on a model with 500+ trees |  Major | . | Mahmoud Rawas | Mahmoud Rawas |
| [SPARK-15865](https://issues.apache.org/jira/browse/SPARK-15865) | Blacklist should not result in job hanging with less than 4 executors |  Major | Scheduler | Imran Rashid | Imran Rashid |
| [SPARK-16329](https://issues.apache.org/jira/browse/SPARK-16329) | select \* from temp\_table\_no\_cols fails |  Major | SQL | Adrian Ionescu | Xiao Li |
| [SPARK-16388](https://issues.apache.org/jira/browse/SPARK-16388) | Remove spark.sql.nativeView and spark.sql.nativeView.canonical config |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-16304](https://issues.apache.org/jira/browse/SPARK-16304) | LinkageError should not crash Spark executor |  Major | Spark Core | Reynold Xin | Peter Lee |
| [SPARK-16400](https://issues.apache.org/jira/browse/SPARK-16400) | Remove InSet filter pushdown from Parquet |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15467](https://issues.apache.org/jira/browse/SPARK-15467) | Getting stack overflow when attempting to query a wide Dataset (\>200 fields) |  Major | SQL | Don Drake | Kazuaki Ishizaki |
| [SPARK-16349](https://issues.apache.org/jira/browse/SPARK-16349) | IsolatedClientLoader ignores needed Hadoop classes not present in Spark's loader |  Major | SQL | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-16448](https://issues.apache.org/jira/browse/SPARK-16448) | RemoveAliasOnlyProject should not remove alias with metadata |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-16505](https://issues.apache.org/jira/browse/SPARK-16505) | YARN shuffle service should throw errors when it fails to start |  Major | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-16530](https://issues.apache.org/jira/browse/SPARK-16530) | Wrong Keyword in ALTER TABLE CHANGE COLUMN |  Trivial | SQL | Xiao Li | Xiao Li |
| [SPARK-16426](https://issues.apache.org/jira/browse/SPARK-16426) | IsotonicRegression produces NaNs with certain data |  Minor | MLlib | Nic Eggert | Nic Eggert |
| [SPARK-16027](https://issues.apache.org/jira/browse/SPARK-16027) | Fix SparkR session unit test |  Major | SparkR | Shivaram Venkataraman | Felix Cheung |
| [SPARK-10683](https://issues.apache.org/jira/browse/SPARK-10683) | Source code missing for SparkR test JAR |  Minor | SparkR | Terry Moschou | Shivaram Venkataraman |
| [SPARK-16632](https://issues.apache.org/jira/browse/SPARK-16632) | Vectorized parquet reader fails to read certain fields from Hive tables |  Major | SQL | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-16613](https://issues.apache.org/jira/browse/SPARK-16613) | RDD.pipe returns values for empty partitions |  Major | . | Alex Krasnyansky | Sean Owen |
| [SPARK-16634](https://issues.apache.org/jira/browse/SPARK-16634) | GenericArrayData can't be loaded in certain JVMs |  Minor | SQL | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-16344](https://issues.apache.org/jira/browse/SPARK-16344) | Array of struct with a single field name "element" can't be decoded from Parquet files written by Spark 1.6+ |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-16644](https://issues.apache.org/jira/browse/SPARK-16644) | constraints propagation may fail the query |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-16656](https://issues.apache.org/jira/browse/SPARK-16656) | CreateTableAsSelectSuite is flaky |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-16556](https://issues.apache.org/jira/browse/SPARK-16556) | Silent Ignore Bucket Specification When Creating Table Using Schema Inference |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-16487](https://issues.apache.org/jira/browse/SPARK-16487) | Some batches might not get marked as fully processed in JobGenerator |  Major | DStreams | Ahmed Mahran | Ahmed Mahran |
| [SPARK-16622](https://issues.apache.org/jira/browse/SPARK-16622) | Fix NullPointerException when the returned value of the called method in Invoke is null |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-16561](https://issues.apache.org/jira/browse/SPARK-16561) | Potential numerical problem in MultivariateOnlineSummarizer min/max |  Major | MLlib | Weichen Xu | Weichen Xu |
| [SPARK-16416](https://issues.apache.org/jira/browse/SPARK-16416) | Logging in shutdown hook does not work properly with Log4j 2.x |  Minor | Spark Core | Mikael Ståldal | Mikael Ståldal |
| [SPARK-16699](https://issues.apache.org/jira/browse/SPARK-16699) | Fix performance bug in hash aggregate on long string keys |  Major | Spark Core | Qifan Pu | Qifan Pu |
| [SPARK-16648](https://issues.apache.org/jira/browse/SPARK-16648) | LAST\_VALUE(FALSE) OVER () throws IndexOutOfBoundsException |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-16698](https://issues.apache.org/jira/browse/SPARK-16698) | json parsing regression - "." in keys |  Major | SQL | TobiasP | Hyukjin Kwon |
| [SPARK-16703](https://issues.apache.org/jira/browse/SPARK-16703) | Extra space in WindowSpecDefinition SQL representation |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-16715](https://issues.apache.org/jira/browse/SPARK-16715) | Fix a potential ExprId conflict for SubexpressionEliminationSuite."Semantic equals and hash" |  Major | Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-16678](https://issues.apache.org/jira/browse/SPARK-16678) | Disallow Creating/Altering a View when the same-name Table Exists |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-16677](https://issues.apache.org/jira/browse/SPARK-16677) | Strange Error when Issuing Load Table Against A View |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-16672](https://issues.apache.org/jira/browse/SPARK-16672) | SQLBuilder should not raise exceptions on EXISTS queries |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-16724](https://issues.apache.org/jira/browse/SPARK-16724) | Expose DefinedByConstructorParams |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-16633](https://issues.apache.org/jira/browse/SPARK-16633) | lag/lead using constant input values does not return the default value when the offset row does not exist |  Critical | SQL | Yin Huai | Yin Huai |
| [SPARK-16642](https://issues.apache.org/jira/browse/SPARK-16642) | ResolveWindowFrame should not be triggered on UnresolvedFunctions. |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-16721](https://issues.apache.org/jira/browse/SPARK-16721) | Lead/lag needs to respect nulls |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-16686](https://issues.apache.org/jira/browse/SPARK-16686) | Dataset.sample with seed: result seems to depend on downstream usage |  Major | SQL | Joseph K. Bradley | Liang-Chi Hsieh |
| [SPARK-16729](https://issues.apache.org/jira/browse/SPARK-16729) | Spark should throw analysis exception for invalid casts to date type |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-16110](https://issues.apache.org/jira/browse/SPARK-16110) | Can't set Python via spark-submit for YARN cluster mode when PYSPARK\_PYTHON & PYSPARK\_DRIVER\_PYTHON are set |  Major | PySpark, YARN | Kevin Grealish | Kevin Grealish |
| [SPARK-16730](https://issues.apache.org/jira/browse/SPARK-16730) | Spark 2.0 breaks various Hive cast functions |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-16639](https://issues.apache.org/jira/browse/SPARK-16639) | query fails if having condition contains grouping column |  Major | SQL | Wenchen Fan | Liang-Chi Hsieh |
| [SPARK-16740](https://issues.apache.org/jira/browse/SPARK-16740) | joins.LongToUnsafeRowMap crashes with NegativeArraySizeException |  Major | PySpark, Spark Core, SQL | Sylvain Zimmer | Sylvain Zimmer |
| [SPARK-16750](https://issues.apache.org/jira/browse/SPARK-16750) | ML GaussianMixture training failed due to feature column type mistake |  Major | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-16748](https://issues.apache.org/jira/browse/SPARK-16748) | Errors thrown by UDFs cause TreeNodeException when the query has an ORDER BY clause |  Major | SQL | Yin Huai | Tathagata Das |
| [SPARK-16732](https://issues.apache.org/jira/browse/SPARK-16732) | Remove unused codes in subexpressionEliminationForWholeStageCodegen |  Major | SQL | yucai | yucai |
| [SPARK-16818](https://issues.apache.org/jira/browse/SPARK-16818) | Exchange reuse incorrectly reuses scans over different sets of partitions |  Critical | SQL | Eric Liang | Eric Liang |
| [SPARK-16791](https://issues.apache.org/jira/browse/SPARK-16791) | casting structs fails on Timestamp fields (interpreted mode only) |  Minor | SQL | Eyal Farago | Eyal Farago |
| [SPARK-15869](https://issues.apache.org/jira/browse/SPARK-15869) | HTTP 500 and NPE on streaming batch details page |  Major | DStreams, Web UI | Maciej Bryński | Shixiong Zhu |
| [SPARK-16850](https://issues.apache.org/jira/browse/SPARK-16850) | Improve error message for greatest/least |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-16558](https://issues.apache.org/jira/browse/SPARK-16558) | examples/mllib/LDAExample should use MLVector instead of MLlib Vector |  Minor | Examples, MLlib | Xusen Yin | Xusen Yin |
| [SPARK-16837](https://issues.apache.org/jira/browse/SPARK-16837) | TimeWindow incorrectly drops slideDuration in constructors |  Major | SQL | Tom Magrino | Tom Magrino |
| [SPARK-16062](https://issues.apache.org/jira/browse/SPARK-16062) | PySpark SQL python-only UDTs don't work well |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-15989](https://issues.apache.org/jira/browse/SPARK-15989) | PySpark SQL python-only UDTs don't support nested types |  Major | PySpark, SQL | Vladimir Feinberg | Liang-Chi Hsieh |
| [SPARK-16836](https://issues.apache.org/jira/browse/SPARK-16836) | Hive date/time function error |  Minor | SQL | Jesse Lord | Herman van Hovell |
| [SPARK-16787](https://issues.apache.org/jira/browse/SPARK-16787) | SparkContext.addFile() should not fail if called twice with the same file |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-16831](https://issues.apache.org/jira/browse/SPARK-16831) | PySpark CrossValidator reports incorrect avgMetrics |  Major | ML, PySpark | Max Moroz | Max Moroz |
| [SPARK-16714](https://issues.apache.org/jira/browse/SPARK-16714) | Fail to create a decimal arrays with literals having different inferred precessions and scales |  Major | . | Yin Huai | Wenchen Fan |
| [SPARK-16646](https://issues.apache.org/jira/browse/SPARK-16646) | LEAST doesn't accept numeric arguments with different data types |  Major | SQL | Cheng Lian | Wenchen Fan |
| [SPARK-16770](https://issues.apache.org/jira/browse/SPARK-16770) | Spark shell not usable with german keyboard due to JLine version |  Minor | Spark Shell | Stefan Schulze | Stefan Schulze |
| [SPARK-16873](https://issues.apache.org/jira/browse/SPARK-16873) | force spill NPE |  Major | Spark Core | sharkd tu | sharkd tu |
| [SPARK-16853](https://issues.apache.org/jira/browse/SPARK-16853) | Analysis error for DataSet typed selection |  Major | SQL | Sean Zhong | Sean Zhong |
| [SPARK-16802](https://issues.apache.org/jira/browse/SPARK-16802) | joins.LongToUnsafeRowMap crashes with ArrayIndexOutOfBoundsException |  Critical | SQL | Sylvain Zimmer | Davies Liu |
| [SPARK-16880](https://issues.apache.org/jira/browse/SPARK-16880) | Improve ANN training, add training data persist if needed |  Minor | ML, MLlib | Weichen Xu | Weichen Xu |
| [SPARK-16907](https://issues.apache.org/jira/browse/SPARK-16907) | Parquet table reading performance regression when vectorized record reader is not used |  Major | SQL | Sean Zhong | Sean Zhong |
| [SPARK-15726](https://issues.apache.org/jira/browse/SPARK-15726) | Make DatasetBenchmark fairer among Dataset, DataFrame and RDD |  Minor | SQL | Hiroshi Inoue | Hiroshi Inoue |
| [SPARK-16625](https://issues.apache.org/jira/browse/SPARK-16625) | Oracle JDBC table creation fails with ORA-00902: invalid datatype |  Major | SQL | Daniel Darabos | Yuming Wang |
| [SPARK-16826](https://issues.apache.org/jira/browse/SPARK-16826) | java.util.Hashtable limits the throughput of PARSE\_URL() |  Major | SQL | Sylvain Zimmer | Sylvain Zimmer |
| [SPARK-16901](https://issues.apache.org/jira/browse/SPARK-16901) | Hive settings in hive-site.xml may be overridden by Hive's default values |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-16925](https://issues.apache.org/jira/browse/SPARK-16925) | Spark tasks which cause JVM to exit with a zero exit code may cause app to hang in Standalone mode |  Critical | Deploy | Josh Rosen | Josh Rosen |
| [SPARK-16409](https://issues.apache.org/jira/browse/SPARK-16409) | regexp\_extract with optional groups causes NPE |  Major | Spark Core | Max Moroz | Sean Owen |
| [SPARK-16804](https://issues.apache.org/jira/browse/SPARK-16804) | Correlated subqueries containing non-deterministic operators return incorrect results |  Major | SQL | Nattavut Sutyanyong | Nattavut Sutyanyong |
| [SPARK-16906](https://issues.apache.org/jira/browse/SPARK-16906) | Adds more input type information for TypedAggregateExpression |  Minor | SQL | Sean Zhong | Sean Zhong |
| [SPARK-16457](https://issues.apache.org/jira/browse/SPARK-16457) | Wrong messages when CTAS with a Partition By clause |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-16936](https://issues.apache.org/jira/browse/SPARK-16936) | Case Sensitivity Support for Refresh Temp Table |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-16586](https://issues.apache.org/jira/browse/SPARK-16586) | spark-class crash with "[: too many arguments" instead of displaying the correct error message |  Minor | . | Xiang Gao | Marcelo Vanzin |
| [SPARK-16953](https://issues.apache.org/jira/browse/SPARK-16953) | Make requestTotalExecutors public to be consistent with requestExecutors/killExecutors |  Major | Spark Core | Tathagata Das | Tathagata Das |
| [SPARK-16898](https://issues.apache.org/jira/browse/SPARK-16898) | Adds argument type information for typed logical plan like MapElements, TypedFilter, and AppendColumn |  Minor | SQL | Sean Zhong | Sean Zhong |
| [SPARK-16563](https://issues.apache.org/jira/browse/SPARK-16563) | Repeat calling Spark SQL thrift server fetchResults return empty for ExecuteStatement operation |  Minor | SQL | Gu Huiqin Alice | Gu Huiqin Alice |
| [SPARK-16610](https://issues.apache.org/jira/browse/SPARK-16610) | When writing ORC files, orc.compress should not be overridden if users do not set "compression" in the options |  Major | SQL | Yin Huai | Hyukjin Kwon |
| [SPARK-16940](https://issues.apache.org/jira/browse/SPARK-16940) | \`checkAnswer\` should raise \`TestFailedException\` for wrong results |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-16950](https://issues.apache.org/jira/browse/SPARK-16950) | fromOffsets parameter in Kafka's Direct Streams does not work in python3 |  Major | PySpark | Mariusz Strzelecki | Mariusz Strzelecki |
| [SPARK-16905](https://issues.apache.org/jira/browse/SPARK-16905) | Support SQL DDL: MSCK REPAIR TABLE |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-16959](https://issues.apache.org/jira/browse/SPARK-16959) | Table Comment in the CatalogTable returned from HiveMetastore is Always Empty |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-16522](https://issues.apache.org/jira/browse/SPARK-16522) | [MESOS] Spark application throws exception on exit |  Major | Mesos | Sun Rui | Sun Rui |
| [SPARK-16185](https://issues.apache.org/jira/browse/SPARK-16185) | Unresolved Operator When Creating Table As Select Without Enabling Hive Support |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-15899](https://issues.apache.org/jira/browse/SPARK-15899) | file scheme should be used correctly |  Major | Spark Core | Kazuaki Ishizaki | Alexander Ulanov |
| [SPARK-17010](https://issues.apache.org/jira/browse/SPARK-17010) | [MINOR]Wrong description in memory management document |  Trivial | Documentation | Tao Wang | Tao Wang |
| [SPARK-17016](https://issues.apache.org/jira/browse/SPARK-17016) | group-by/order-by ordinal should throw AnalysisException instead of UnresolvedException |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-16941](https://issues.apache.org/jira/browse/SPARK-16941) | SparkSQLOperationManager should use synchronized Map to store SessionHandle |  Minor | SQL | carlmartin | carlmartin |
| [SPARK-16886](https://issues.apache.org/jira/browse/SPARK-16886) | StructuredNetworkWordCount code comment incorrectly refers to DataFrame instead of Dataset |  Minor | Examples | Ganesh Chand | Hyukjin Kwon |
| [SPARK-16952](https://issues.apache.org/jira/browse/SPARK-16952) | [MESOS] MesosCoarseGrainedSchedulerBackend requires spark.mesos.executor.home even if spark.executor.uri is set |  Minor | Mesos, Scheduler | Charles Allen | Michael Gummelt |
| [SPARK-13602](https://issues.apache.org/jira/browse/SPARK-13602) | o.a.s.deploy.worker.DriverRunner may leak the driver processes |  Major | Spark Core | Shixiong Zhu | Bryan Cutler |
| [SPARK-16868](https://issues.apache.org/jira/browse/SPARK-16868) | Executor will be both dead and alive when this executor reregister itself to driver. |  Minor | Web UI | carlmartin | carlmartin |
| [SPARK-17022](https://issues.apache.org/jira/browse/SPARK-17022) | Potential deadlock in driver handling message |  Critical | YARN | Tao Wang | Tao Wang |
| [SPARK-17013](https://issues.apache.org/jira/browse/SPARK-17013) | negative numeric literal parsing |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-16975](https://issues.apache.org/jira/browse/SPARK-16975) | Spark-2.0.0 unable to infer schema for parquet data written by Spark-1.6.2 |  Major | Input/Output | immerrr again | Dongjoon Hyun |
| [SPARK-16985](https://issues.apache.org/jira/browse/SPARK-16985) | SQL Output maybe overrided |  Major | SQL | Hong Shen | Hong Shen |
| [SPARK-16955](https://issues.apache.org/jira/browse/SPARK-16955) | Using ordinals in ORDER BY causes an analysis error when the query has a GROUP BY clause using ordinals |  Major | SQL | Yin Huai | Peter Lee |
| [SPARK-16771](https://issues.apache.org/jira/browse/SPARK-16771) | Infinite recursion loop in org.apache.spark.sql.catalyst.trees.TreeNode when table name collides. |  Major | SQL | Furcy Pin | Dongjoon Hyun |
| [SPARK-16966](https://issues.apache.org/jira/browse/SPARK-16966) | App Name is a randomUUID even when "spark.app.name" exists |  Major | Spark Core | Weiqing Yang | Sean Owen |
| [SPARK-17027](https://issues.apache.org/jira/browse/SPARK-17027) | PolynomialExpansion.choose is prone to integer overflow |  Minor | ML | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-16321](https://issues.apache.org/jira/browse/SPARK-16321) | [Spark 2.0] Performance regression when reading parquet and using PPD and non-vectorized reader |  Critical | SQL | Maciej Bryński | Liang-Chi Hsieh |
| [SPARK-16700](https://issues.apache.org/jira/browse/SPARK-16700) | StructType doesn't accept Python dicts anymore |  Major | PySpark | Sylvain Zimmer | Davies Liu |
| [SPARK-17065](https://issues.apache.org/jira/browse/SPARK-17065) | Improve the error message when encountering an incompatible DataSourceRegister |  Major | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-17034](https://issues.apache.org/jira/browse/SPARK-17034) | Ordinal in ORDER BY or GROUP BY should be treated as an unresolved expression |  Major | SQL | Sean Zhong | Sean Zhong |
| [SPARK-17035](https://issues.apache.org/jira/browse/SPARK-17035) | Conversion of datetime.max to microseconds produces incorrect value |  Minor | PySpark | Michael Styles | Dongjoon Hyun |
| [SPARK-16930](https://issues.apache.org/jira/browse/SPARK-16930) | ApplicationMaster's code that waits for SparkContext is race-prone |  Minor | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-17038](https://issues.apache.org/jira/browse/SPARK-17038) | StreamingSource reports metrics for lastCompletedBatch instead of lastReceivedBatch |  Minor | DStreams | Oz Ben-Ami | Xin Ren |
| [SPARK-16995](https://issues.apache.org/jira/browse/SPARK-16995) | TreeNodeException when flat mapping RelationalGroupedDataset created from DataFrame containing a column created with lit/expr |  Major | SQL | Cédric Perriard | Liang-Chi Hsieh |
| [SPARK-17117](https://issues.apache.org/jira/browse/SPARK-17117) | 'SELECT 1 / NULL\` throws AnalysisException, while 'SELECT 1 \* NULL\` works |  Major | SQL | Josh Rosen | Peter Lee |
| [SPARK-16961](https://issues.apache.org/jira/browse/SPARK-16961) | Utils.randomizeInPlace does not shuffle arrays uniformly |  Minor | Spark Core | Nicholas | Nicholas |
| [SPARK-17141](https://issues.apache.org/jira/browse/SPARK-17141) | MinMaxScaler behaves weird when min and max have the same value and some values are NaN |  Minor | ML | Alberto Bonsanto | Yanbo Liang |
| [SPARK-16965](https://issues.apache.org/jira/browse/SPARK-16965) | Fix bound checking for SparseVector |  Minor | MLlib, PySpark | Jeff Zhang | Jeff Zhang |
| [SPARK-16994](https://issues.apache.org/jira/browse/SPARK-16994) | Filter and limit are illegally permuted. |  Major | SQL | TobiasP | Reynold Xin |
| [SPARK-16673](https://issues.apache.org/jira/browse/SPARK-16673) | New Executor Page displays columns that used to be conditionally hidden |  Major | Web UI | Alex Bozarth | Alex Bozarth |
| [SPARK-11227](https://issues.apache.org/jira/browse/SPARK-11227) | Spark1.5+ HDFS HA mode throw java.net.UnknownHostException: nameservice1 |  Major | Spark Core | Yuri Saito | Kousuke Saruta |
| [SPARK-15382](https://issues.apache.org/jira/browse/SPARK-15382) | monotonicallyIncreasingId doesn't work when data is upsampled |  Major | SQL | Mateusz Buśkiewicz | Takeshi Yamamuro |
| [SPARK-17113](https://issues.apache.org/jira/browse/SPARK-17113) | Job failure due to Executor OOM in offheap mode |  Major | Spark Core | Sital Kedia | Sital Kedia |
| [SPARK-17158](https://issues.apache.org/jira/browse/SPARK-17158) | Improve error message for numeric literal parsing |  Minor | SQL | Srinath | Srinath |
| [SPARK-17104](https://issues.apache.org/jira/browse/SPARK-17104) | LogicalRelation.newInstance should follow the semantics of MultiInstanceRelation |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-17124](https://issues.apache.org/jira/browse/SPARK-17124) | RelationalGroupedDataset.agg should be order preserving and allow duplicate column names |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-12666](https://issues.apache.org/jira/browse/SPARK-12666) | spark-shell --packages cannot load artifacts which are publishLocal'd by SBT |  Major | Spark Submit | Josh Rosen | Bryan Cutler |
| [SPARK-17098](https://issues.apache.org/jira/browse/SPARK-17098) | "SELECT COUNT(NULL) OVER ()" throws UnsupportedOperationException during analysis |  Major | SQL | Josh Rosen | Dongjoon Hyun |
| [SPARK-15285](https://issues.apache.org/jira/browse/SPARK-15285) | Generated SpecificSafeProjection.apply method grows beyond 64 KB |  Major | SQL | Konstantin Shaposhnikov | Kazuaki Ishizaki |
| [SPARK-17115](https://issues.apache.org/jira/browse/SPARK-17115) | Improve the performance of UnsafeProjection for wide table |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-17162](https://issues.apache.org/jira/browse/SPARK-17162) | Range does not support SQL generation |  Minor | SQL | Eric Liang | Eric Liang |
| [SPARK-16550](https://issues.apache.org/jira/browse/SPARK-16550) | Caching data with replication doesn't replicate data |  Major | Block Manager, Spark Core | Shubham Chopra | Eric Liang |
| [SPARK-17182](https://issues.apache.org/jira/browse/SPARK-17182) | CollectList and CollectSet should be marked as non-deterministic |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-17194](https://issues.apache.org/jira/browse/SPARK-17194) | When emitting SQL for string literals Spark should use single quotes, not double |  Minor | SQL | Josh Rosen | Josh Rosen |
| [SPARK-17086](https://issues.apache.org/jira/browse/SPARK-17086) | QuantileDiscretizer throws InvalidArgumentException (parameter splits given invalid value) on valid data |  Major | ML | Barry Becker | Vincent |
| [SPARK-16781](https://issues.apache.org/jira/browse/SPARK-16781) | java launched by PySpark as gateway may not be the same java used in the spark environment |  Major | PySpark | Michael Berman | Sean Owen |
| [SPARK-16983](https://issues.apache.org/jira/browse/SPARK-16983) | Add \`prettyName\` to row\_number, dense\_rank, percent\_rank, cume\_dist |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-15083](https://issues.apache.org/jira/browse/SPARK-15083) | History Server would OOM due to unlimited TaskUIData in some stages |  Major | Web UI | Zheng Tan | Alex Bozarth |
| [SPARK-17228](https://issues.apache.org/jira/browse/SPARK-17228) | Not infer/propagate non-deterministic constraints |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-17093](https://issues.apache.org/jira/browse/SPARK-17093) | Roundtrip encoding of array\<struct\<\>\> fields is wrong when whole-stage codegen is disabled |  Blocker | SQL | Josh Rosen | Liwei Lin(Inactive) |
| [SPARK-17061](https://issues.apache.org/jira/browse/SPARK-17061) | Incorrect results returned following a join of two datasets and a map step where total number of columns \>100 |  Critical | Spark Core | Jamie Hutton | Liwei Lin(Inactive) |
| [SPARK-16991](https://issues.apache.org/jira/browse/SPARK-16991) | Full outer join followed by inner join produces wrong results |  Critical | SQL | Jonas Jarutis | Xiao Li |
| [SPARK-17099](https://issues.apache.org/jira/browse/SPARK-17099) | Incorrect result when HAVING clause is added to group by query |  Blocker | SQL | Josh Rosen | Xiao Li |
| [SPARK-17120](https://issues.apache.org/jira/browse/SPARK-17120) | Analyzer incorrectly optimizes plan to empty LocalRelation |  Blocker | SQL | Josh Rosen | Xiao Li |
| [SPARK-17229](https://issues.apache.org/jira/browse/SPARK-17229) | Postgres JDBC dialect should not widen float and short types during reads |  Minor | SQL | Josh Rosen | Josh Rosen |
| [SPARK-17205](https://issues.apache.org/jira/browse/SPARK-17205) | Literal.sql does not properly convert NaN and Infinity literals |  Minor | SQL | Josh Rosen | Josh Rosen |
| [SPARK-17240](https://issues.apache.org/jira/browse/SPARK-17240) | SparkConf is Serializable but contains a non-serializable field |  Major | Spark Core | Michael Gummelt | Marcelo Vanzin |
| [SPARK-17212](https://issues.apache.org/jira/browse/SPARK-17212) | TypeCoercion support widening conversion between DateType and TimestampType |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-17207](https://issues.apache.org/jira/browse/SPARK-17207) | Comparing Vector in relative tolerance or absolute tolerance in UnitTests error |  Major | ML, MLlib | Peng Meng | Peng Meng |
| [SPARK-17244](https://issues.apache.org/jira/browse/SPARK-17244) | Joins should not pushdown non-deterministic conditions |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-17266](https://issues.apache.org/jira/browse/SPARK-17266) | PrefixComparatorsSuite's "String prefix comparator" failed when both input strings are empty strings |  Major | SQL, Tests | Yin Huai | Yin Huai |
| [SPARK-17216](https://issues.apache.org/jira/browse/SPARK-17216) | Even timeline for a stage doesn't core 100% of the bar timeline bar in chrome |  Major | Web UI | Robert Kruszewski | Robert Kruszewski |
| [SPARK-17271](https://issues.apache.org/jira/browse/SPARK-17271) | Planner adds un-necessary Sort even if child ordering is semantically same as required ordering |  Major | SQL | Tejas Patil | Tejas Patil |
| [SPARK-17303](https://issues.apache.org/jira/browse/SPARK-17303) | dev/run-tests fails if spark-warehouse directory exists |  Minor | Build | Frederick Reiss | Frederick Reiss |
| [SPARK-17234](https://issues.apache.org/jira/browse/SPARK-17234) | Table Existence Checking when Index Table with the Same Name Exists |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-17264](https://issues.apache.org/jira/browse/SPARK-17264) | DataStreamWriter should document that it only supports Parquet for now |  Trivial | Documentation, Input/Output | Bill Reed | Sean Owen |
| [SPARK-17304](https://issues.apache.org/jira/browse/SPARK-17304) | TaskSetManager.abortIfCompletelyBlacklisted is a perf. hotspot in scheduler benchmark |  Minor | Scheduler | Josh Rosen | Josh Rosen |
| [SPARK-17243](https://issues.apache.org/jira/browse/SPARK-17243) | Spark 2.0 history server summary page gets stuck at "loading history summary" with 10K+ application history |  Major | Web UI | Gang Wu | Alex Bozarth |
| [SPARK-17180](https://issues.apache.org/jira/browse/SPARK-17180) | Unable to Alter the Temporary View Using ALTER VIEW command |  Major | SQL | Xiao Li | Wenchen Fan |
| [SPARK-17309](https://issues.apache.org/jira/browse/SPARK-17309) | ALTER VIEW should throw exception if view not exist |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17323](https://issues.apache.org/jira/browse/SPARK-17323) | ALTER VIEW AS should keep the previous table properties, comment, create\_time, etc. |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17353](https://issues.apache.org/jira/browse/SPARK-17353) | CREATE TABLE LIKE statements when Source is a VIEW |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-16943](https://issues.apache.org/jira/browse/SPARK-16943) | CREATE TABLE LIKE generates a non-empty table when source is a data source table |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-16942](https://issues.apache.org/jira/browse/SPARK-16942) | CREATE TABLE LIKE generates External table when source table is an External Hive Serde table |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-16533](https://issues.apache.org/jira/browse/SPARK-16533) | Spark application not handling preemption messages |  Major | EC2, Input/Output, Optimizer, Scheduler, Spark Submit, YARN | Lucas Winkelmann | Angus Gerry |
| [SPARK-16926](https://issues.apache.org/jira/browse/SPARK-16926) | Partition columns are present in columns metadata for partition but not table |  Major | SQL | Brian Cho | Brian Cho |
| [SPARK-17355](https://issues.apache.org/jira/browse/SPARK-17355) | Work around exception thrown by HiveResultSetMetaData.isSigned |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-17342](https://issues.apache.org/jira/browse/SPARK-17342) | Style of event timeline is broken |  Major | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-16883](https://issues.apache.org/jira/browse/SPARK-16883) | SQL decimal type is not properly cast to number when collecting SparkDataFrame |  Major | SparkR | Hossein Falaki | Miao Wang |
| [SPARK-17352](https://issues.apache.org/jira/browse/SPARK-17352) | Executor computing time can be negative-number because of calculation error |  Minor | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-16984](https://issues.apache.org/jira/browse/SPARK-16984) | executeTake tries all partitions if first parition is empty |  Major | . | Robert Kruszewski | Robert Kruszewski |
| [SPARK-17261](https://issues.apache.org/jira/browse/SPARK-17261) | Using HiveContext after re-creating SparkContext in Spark 2.0 throws "Java.lang.illegalStateException: Cannot call methods on a stopped sparkContext" |  Major | PySpark | Rahul Jain | Jeff Zhang |
| [SPARK-17376](https://issues.apache.org/jira/browse/SPARK-17376) | Spark version should be available in R |  Minor | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-16711](https://issues.apache.org/jira/browse/SPARK-16711) | YarnShuffleService doesn't re-init properly on YARN rolling upgrade |  Major | Shuffle, YARN | Thomas Graves | Thomas Graves |
| [SPARK-17230](https://issues.apache.org/jira/browse/SPARK-17230) | Writing decimal to csv will result empty string if the decimal exceeds (20, 18) |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-16334](https://issues.apache.org/jira/browse/SPARK-16334) | SQL query on parquet table java.lang.ArrayIndexOutOfBoundsException |  Critical | SQL | Egor Pahomov | Sameer Agarwal |
| [SPARK-17335](https://issues.apache.org/jira/browse/SPARK-17335) | Creating Hive table from Spark data |  Major | SQL | Michal Kielbowicz | Herman van Hovell |
| [SPARK-17363](https://issues.apache.org/jira/browse/SPARK-17363) | fix MultivariateOnlineSummerizer.numNonZeros |  Minor | ML, MLlib | Weichen Xu | Weichen Xu |
| [SPARK-16829](https://issues.apache.org/jira/browse/SPARK-16829) | sparkR sc.setLogLevel doesn't work |  Major | SparkR | Miao Wang | Miao Wang |
| [SPARK-17393](https://issues.apache.org/jira/browse/SPARK-17393) | Error Handling when CTAS Against the Same Data Source Table Using Overwrite Mode |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-17394](https://issues.apache.org/jira/browse/SPARK-17394) | should not allow specify database in table/view name after RENAME TO |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17358](https://issues.apache.org/jira/browse/SPARK-17358) | Cached table(parquet/orc) should be shard between beelines |  Major | SQL | Yadong Qi | Yadong Qi |
| [SPARK-17361](https://issues.apache.org/jira/browse/SPARK-17361) | file-based external table without path should not be created |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17369](https://issues.apache.org/jira/browse/SPARK-17369) | MetastoreRelation toJSON throws exception |  Minor | SQL | Sean Zhong | Sean Zhong |
| [SPARK-17356](https://issues.apache.org/jira/browse/SPARK-17356) | A large Metadata filed in Alias can cause OOM when calling TreeNode.toJSON |  Major | SQL | Sean Zhong | Sean Zhong |
| [SPARK-17374](https://issues.apache.org/jira/browse/SPARK-17374) | Improves the error message when fails to parse some json file lines in DataFrameReader |  Major | SQL | Sean Zhong | Sean Zhong |
| [SPARK-16922](https://issues.apache.org/jira/browse/SPARK-16922) | Query with Broadcast Hash join fails due to executor OOM in Spark 2.0 |  Major | Shuffle | Sital Kedia | Davies Liu |
| [SPARK-17211](https://issues.apache.org/jira/browse/SPARK-17211) | Broadcast join produces incorrect results when compressed Oops differs between driver, executor |  Major | PySpark | Jarno Seppanen | Davies Liu |
| [SPARK-17299](https://issues.apache.org/jira/browse/SPARK-17299) | TRIM/LTRIM/RTRIM strips characters other than spaces |  Minor | Documentation, SQL | Jeremy Beard | Sandeep Singh |
| [SPARK-17110](https://issues.apache.org/jira/browse/SPARK-17110) | Pyspark with locality ANY throw java.io.StreamCorruptedException |  Critical | PySpark | Tomer Kaftan | Josh Rosen |
| [SPARK-15891](https://issues.apache.org/jira/browse/SPARK-15891) | Make YARN logs less noisy |  Minor | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-17296](https://issues.apache.org/jira/browse/SPARK-17296) | Spark SQL: cross join + two joins = BUG |  Major | SQL | Furcy Pin | Herman van Hovell |
| [SPARK-17371](https://issues.apache.org/jira/browse/SPARK-17371) | Resubmitted stage outputs deleted by zombie map tasks on stop() |  Major | Spark Core | Eric Liang | Eric Liang |
| [SPARK-17408](https://issues.apache.org/jira/browse/SPARK-17408) | Flaky test: org.apache.spark.sql.hive.StatisticsSuite |  Major | SQL | Yin Huai | Xiao Li |
| [SPARK-16785](https://issues.apache.org/jira/browse/SPARK-16785) | dapply doesn't return array or raw columns |  Minor | SparkR | Clark Fitzgerald | Clark Fitzgerald |
| [SPARK-17339](https://issues.apache.org/jira/browse/SPARK-17339) | Fix SparkR tests on Windows |  Major | SparkR, Tests | Shivaram Venkataraman | Hyukjin Kwon |
| [SPARK-17427](https://issues.apache.org/jira/browse/SPARK-17427) | function SIZE should return -1 when parameter is null |  Minor | SQL | Adrian Wang | Adrian Wang |
| [SPARK-17370](https://issues.apache.org/jira/browse/SPARK-17370) | Shuffle service files not invalidated when a slave is lost |  Major | Spark Core | Eric Liang | Eric Liang |
| [SPARK-17432](https://issues.apache.org/jira/browse/SPARK-17432) | PreprocessDDL should respect case sensitivity when checking duplicated columns |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17442](https://issues.apache.org/jira/browse/SPARK-17442) | Additional arguments in write.df are not passed to data source |  Blocker | SparkR | Hossein Falaki | Felix Cheung |
| [SPARK-17405](https://issues.apache.org/jira/browse/SPARK-17405) | Simple aggregation query OOMing after SPARK-16525 |  Blocker | SQL | Josh Rosen | Eric Liang |
| [SPARK-17464](https://issues.apache.org/jira/browse/SPARK-17464) | SparkR spark.als arguments reg should be 0.1 by default |  Minor | ML, SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-17433](https://issues.apache.org/jira/browse/SPARK-17433) | YarnShuffleService doesn't handle moving credentials levelDb |  Major | YARN | Thomas Graves | Thomas Graves |
| [SPARK-17354](https://issues.apache.org/jira/browse/SPARK-17354) | java.lang.ClassCastException: java.lang.Integer cannot be cast to java.sql.Date |  Minor | SQL | Amit Baghel | Hyukjin Kwon |
| [SPARK-17396](https://issues.apache.org/jira/browse/SPARK-17396) | Threads number keep increasing when query on external CSV partitioned table |  Major | Spark Core | pin\_zhang | Ryan Blue |
| [SPARK-17439](https://issues.apache.org/jira/browse/SPARK-17439) | QuantilesSummaries returns the wrong result after compression |  Major | . | Tim Hunter | Tim Hunter |
| [SPARK-17306](https://issues.apache.org/jira/browse/SPARK-17306) | QuantileSummaries doesn't compress |  Major | SQL | Sean Zhong | Sean Owen |
| [SPARK-17336](https://issues.apache.org/jira/browse/SPARK-17336) | Repeated calls sbin/spark-config.sh file Causes ${PYTHONPATH} Value duplicate |  Minor | PySpark | anxu | Bryan Cutler |
| [SPARK-17503](https://issues.apache.org/jira/browse/SPARK-17503) | Memory leak in Memory store when unable to cache the whole RDD in memory |  Major | Spark Core | Sean Zhong | Sean Zhong |
| [SPARK-14818](https://issues.apache.org/jira/browse/SPARK-14818) | Move sketch and mllibLocal out from mima exclusion |  Blocker | Build | Yin Huai | Josh Rosen |
| [SPARK-17474](https://issues.apache.org/jira/browse/SPARK-17474) | Python UDF does not work between Sort and Limit |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-17515](https://issues.apache.org/jira/browse/SPARK-17515) | CollectLimit.execute() should perform per-partition limits |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-17142](https://issues.apache.org/jira/browse/SPARK-17142) | Complex query triggers binding error in HashAggregateExec |  Blocker | SQL | Josh Rosen | Jiang Xingbo |
| [SPARK-17531](https://issues.apache.org/jira/browse/SPARK-17531) | Don't initialize Hive Listeners for the Execution Client |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-17525](https://issues.apache.org/jira/browse/SPARK-17525) | SparkContext.clearFiles() still present in the PySpark bindings though the underlying Scala method was removed in Spark 2.0 |  Trivial | PySpark | Sami Jaktholm | Sami Jaktholm |
| [SPARK-17409](https://issues.apache.org/jira/browse/SPARK-17409) | Query in CTAS is Optimized Twice |  Critical | SQL | Xiao Li | Xiao Li |
| [SPARK-17514](https://issues.apache.org/jira/browse/SPARK-17514) | df.take(1) and df.limit(1).collect() perform differently in Python |  Major | PySpark, SQL | Josh Rosen | Josh Rosen |
| [SPARK-17511](https://issues.apache.org/jira/browse/SPARK-17511) | Dynamic allocation race condition: Containers getting marked failed while releasing |  Major | YARN | Kishor Patil | Kishor Patil |
| [SPARK-17465](https://issues.apache.org/jira/browse/SPARK-17465) | Inappropriate memory management in \`org.apache.spark.storage.MemoryStore\` may lead to memory leak |  Major | Spark Core | Xing Shi | Xing Shi |
| [SPARK-17440](https://issues.apache.org/jira/browse/SPARK-17440) | Issue Exception when ALTER TABLE commands try to alter a VIEW |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-17441](https://issues.apache.org/jira/browse/SPARK-17441) | Issue Exceptions when ALTER TABLE RENAME PARTITION tries to alter a data source table |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-17521](https://issues.apache.org/jira/browse/SPARK-17521) | Error when I use sparkContext.makeRDD(Seq()) |  Trivial | Spark Core | Jianfei Wang | Jianfei Wang |
| [SPARK-17547](https://issues.apache.org/jira/browse/SPARK-17547) | Temporary shuffle data files may be leaked following exception in write |  Major | Shuffle | Josh Rosen | Josh Rosen |
| [SPARK-17114](https://issues.apache.org/jira/browse/SPARK-17114) | Adding a 'GROUP BY 1' where first column is literal results in wrong answer |  Major | SQL | Josh Rosen | Herman van Hovell |
| [SPARK-17429](https://issues.apache.org/jira/browse/SPARK-17429) | spark sql length(1) return error |  Major | SQL | cen yuhai | cen yuhai |
| [SPARK-17364](https://issues.apache.org/jira/browse/SPARK-17364) | Can not query hive table starting with number |  Major | SQL | Egor Pahomov | Sean Zhong |
| [SPARK-17458](https://issues.apache.org/jira/browse/SPARK-17458) | Alias specified for aggregates in a pivot are not honored |  Major | SQL | Ravi Somepalli | Andrew Ray |
| [SPARK-17543](https://issues.apache.org/jira/browse/SPARK-17543) | Missing log4j config file for tests in common/network-shuffle |  Trivial | . | Frederick Reiss | Jagadeesan A S |
| [SPARK-17426](https://issues.apache.org/jira/browse/SPARK-17426) | Current TreeNode.toJSON may trigger OOM under some corner cases |  Major | SQL | Sean Zhong | Sean Zhong |
| [SPARK-17567](https://issues.apache.org/jira/browse/SPARK-17567) | Broken link to Spark paper |  Trivial | Documentation | Ondrej Galbavy | Xin Ren |
| [SPARK-17548](https://issues.apache.org/jira/browse/SPARK-17548) | Word2VecModel.findSynonyms can spuriously reject the best match when invoked with a vector |  Minor | MLlib | William Benton | William Benton |
| [SPARK-17491](https://issues.apache.org/jira/browse/SPARK-17491) | MemoryStore.putIteratorAsBytes() may silently lose values when KryoSerializer is used |  Blocker | Block Manager | Josh Rosen | Josh Rosen |
| [SPARK-17518](https://issues.apache.org/jira/browse/SPARK-17518) | Block Users to Specify the Internal Data Source Provider Hive |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-17541](https://issues.apache.org/jira/browse/SPARK-17541) | fix some DDL bugs about table management when same-name temp view exists |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17546](https://issues.apache.org/jira/browse/SPARK-17546) | start-\* scripts should use hostname -f |  Minor | . | Kevin Burton | Sean Owen |
| [SPARK-16462](https://issues.apache.org/jira/browse/SPARK-16462) | Spark 2.0 CSV does not cast null values to certain data types properly |  Major | SQL | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [SPARK-16460](https://issues.apache.org/jira/browse/SPARK-16460) | Spark 2.0 CSV ignores NULL value in Date format |  Minor | SQL | Marcel Boldt | Liwei Lin(Inactive) |
| [SPARK-17571](https://issues.apache.org/jira/browse/SPARK-17571) | AssertOnQuery.condition should be consistent in requiring Boolean return type |  Major | Structured Streaming | Peter Lee | Peter Lee |
| [SPARK-17438](https://issues.apache.org/jira/browse/SPARK-17438) | Master UI should show the correct core limit when \`ApplicationInfo.executorLimit\` is set |  Major | Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-16439](https://issues.apache.org/jira/browse/SPARK-16439) | Incorrect information in SQL Query details |  Minor | SQL, Web UI | Maciej Bryński | Davies Liu |
| [SPARK-17100](https://issues.apache.org/jira/browse/SPARK-17100) | pyspark filter on a udf column after join gives java.lang.UnsupportedOperationException |  Major | PySpark | Tim Sell | Davies Liu |
| [SPARK-16296](https://issues.apache.org/jira/browse/SPARK-16296) | add null check for key when create map data in encoder |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17160](https://issues.apache.org/jira/browse/SPARK-17160) | GetExternalRowField does not properly escape field names, causing generated code not to compile |  Critical | SQL | Josh Rosen | Josh Rosen |
| [SPARK-17502](https://issues.apache.org/jira/browse/SPARK-17502) | Multiple Bugs in DDL Statements on Temporary Views |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-17051](https://issues.apache.org/jira/browse/SPARK-17051) | we should use hadoopConf in InsertIntoHiveTable |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17611](https://issues.apache.org/jira/browse/SPARK-17611) | YarnShuffleServiceSuite swallows exceptions, doesn't really test a few things |  Minor | Tests, YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-17545](https://issues.apache.org/jira/browse/SPARK-17545) | Spark SQL Catalyst doesn't handle ISO 8601 date without colon in offset |  Major | SQL | Nathan Beyer | Hyukjin Kwon |
| [SPARK-17617](https://issues.apache.org/jira/browse/SPARK-17617) | Remainder(%) expression.eval returns incorrect result |  Major | SQL | Sean Zhong | Sean Zhong |
| [SPARK-17599](https://issues.apache.org/jira/browse/SPARK-17599) | Folder deletion after globbing may fail StructuredStreaming jobs |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-17418](https://issues.apache.org/jira/browse/SPARK-17418) | Spark release must NOT distribute Kinesis related assembly artifact |  Blocker | Build, DStreams | Luciano Resende | Josh Rosen |
| [SPARK-17627](https://issues.apache.org/jira/browse/SPARK-17627) | Streaming Providers should be labeled Experimental |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-17494](https://issues.apache.org/jira/browse/SPARK-17494) | Floor/ceil of decimal returns wrong result if it's in compact format |  Major | SQL | Gokhan Civan | Davies Liu |
| [SPARK-17425](https://issues.apache.org/jira/browse/SPARK-17425) | Override sameResult in HiveTableScanExec to make ReuseExchange work in text format table |  Major | SQL | Yadong Qi | Yadong Qi |
| [SPARK-17492](https://issues.apache.org/jira/browse/SPARK-17492) | Reading Cataloged Data Sources without Extending SchemaRelationProvider |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-17625](https://issues.apache.org/jira/browse/SPARK-17625) | expectedOutputAttributes should be set when converting SimpleCatalogRelation to LogicalRelation |  Minor | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-14209](https://issues.apache.org/jira/browse/SPARK-14209) | Application failure during preemption. |  Major | Block Manager | Miles Crawford | Josh Rosen |
| [SPARK-17613](https://issues.apache.org/jira/browse/SPARK-17613) | PartitioningAwareFileCatalog.allFiles doesn't handle URI specified path at parent |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-17635](https://issues.apache.org/jira/browse/SPARK-17635) | Remove hardcode "agg\_plan" in HashAggregateExec |  Major | SQL | yucai | yucai |
| [SPARK-17616](https://issues.apache.org/jira/browse/SPARK-17616) | Getting "java.lang.RuntimeException: Distinct columns cannot exist in Aggregate " |  Minor | SQL | Egor Pahomov | Herman van Hovell |
| [SPARK-17639](https://issues.apache.org/jira/browse/SPARK-17639) | Need to add jce.jar to bootclasspath |  Minor | Build | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-17210](https://issues.apache.org/jira/browse/SPARK-17210) | sparkr.zip is not distributed to executors when run sparkr in RStudio |  Major | SparkR | Jeff Zhang | Jeff Zhang |
| [SPARK-17643](https://issues.apache.org/jira/browse/SPARK-17643) | Remove comparable requirement from Offset |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-17650](https://issues.apache.org/jira/browse/SPARK-17650) | Adding a malformed URL to sc.addJar and/or sc.addFile bricks Executors |  Major | Spark Core | Burak Yavuz | Burak Yavuz |
| [SPARK-17153](https://issues.apache.org/jira/browse/SPARK-17153) | [Structured streams] readStream ignores partition columns |  Major | Structured Streaming | Dmitri Carpov | Liang-Chi Hsieh |
| [SPARK-17652](https://issues.apache.org/jira/browse/SPARK-17652) | Fix confusing exception message while reserving capacity |  Minor | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-17660](https://issues.apache.org/jira/browse/SPARK-17660) | DESC FORMATTED for VIEW Lacks View Definition |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-17618](https://issues.apache.org/jira/browse/SPARK-17618) | Dataframe except returns incorrect results when combined with coalesce |  Blocker | SQL | Graeme Edwards | Josh Rosen |
| [SPARK-17056](https://issues.apache.org/jira/browse/SPARK-17056) | Fix a wrong assert in MemoryStore |  Minor | Block Manager | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-17666](https://issues.apache.org/jira/browse/SPARK-17666) | take() or isEmpty() on dataset leaks s3a connections |  Blocker | SQL | Igor Berman | Josh Rosen |
| [SPARK-17673](https://issues.apache.org/jira/browse/SPARK-17673) | Reused Exchange Aggregations Produce Incorrect Results |  Blocker | SQL | Russell Spitzer | Eric Liang |
| [SPARK-17641](https://issues.apache.org/jira/browse/SPARK-17641) | collect\_set should ignore null values |  Major | SQL | Xiangrui Meng | Xiangrui Meng |
| [SPARK-17644](https://issues.apache.org/jira/browse/SPARK-17644) | The failed stage never resubmitted due to abort stage in another thread |  Major | Scheduler, Spark Core | Fei Wang | Fei Wang |
| [SPARK-17710](https://issues.apache.org/jira/browse/SPARK-17710) | ReplSuite fails with ClassCircularityError in master Maven builds |  Critical | Tests | Josh Rosen | Weiqing Yang |
| [SPARK-17712](https://issues.apache.org/jira/browse/SPARK-17712) | Incorrect result due to invalid pushdown of data-independent filter beneath aggregate |  Minor | SQL | Josh Rosen | Josh Rosen |
| [SPARK-17612](https://issues.apache.org/jira/browse/SPARK-17612) | Support \`DESCRIBE table PARTITION\` SQL syntax |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-17676](https://issues.apache.org/jira/browse/SPARK-17676) | FsHistoryProvider should ignore hidden files |  Minor | Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-17697](https://issues.apache.org/jira/browse/SPARK-17697) | BinaryLogisticRegressionSummary, GLM Summary should handle non-Double numeric types |  Major | ML | Joseph K. Bradley | Bryan Cutler |
| [SPARK-17721](https://issues.apache.org/jira/browse/SPARK-17721) | Erroneous computation in multiplication of transposed SparseMatrix with SparseVector |  Critical | ML, MLlib | Bjarne Fruergaard | Bjarne Fruergaard |
| [SPARK-17512](https://issues.apache.org/jira/browse/SPARK-17512) | Specifying remote files for Python based Spark jobs in Yarn cluster mode not working |  Major | PySpark, Spark Submit, YARN | Udit Mehrotra | Saisai Shao |
| [SPARK-17752](https://issues.apache.org/jira/browse/SPARK-17752) | Spark returns incorrect result when 'collect()'ing a cached Dataset with many columns |  Critical | SparkR | Kevin Ushey | Shivaram Venkataraman |
| [SPARK-17679](https://issues.apache.org/jira/browse/SPARK-17679) | Remove unnecessary Py4J ListConverter patch |  Minor | PySpark | Jason White | Jason White |
| [SPARK-17587](https://issues.apache.org/jira/browse/SPARK-17587) | SparseVector \_\_getitem\_\_ should follow \_\_getitem\_\_ contract |  Minor | ML, MLlib, PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-17753](https://issues.apache.org/jira/browse/SPARK-17753) | Simple case in spark sql throws ParseException |  Major | SQL | kanika dhuria | Herman van Hovell |
| [SPARK-17112](https://issues.apache.org/jira/browse/SPARK-17112) | "select if(true, null, null)" via JDBC triggers IllegalArgumentException in Thriftserver |  Minor | SQL | Josh Rosen | Dongjoon Hyun |
| [SPARK-17702](https://issues.apache.org/jira/browse/SPARK-17702) | Code generation including too many mutable states exceeds JVM size limit. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-17773](https://issues.apache.org/jira/browse/SPARK-17773) | HiveInspector wrapper for JavaVoidObjectInspector is missing |  Minor | Input/Output | Ergin Seyfe | Ergin Seyfe |
| [SPARK-17559](https://issues.apache.org/jira/browse/SPARK-17559) | PeriodicGraphCheckpointer did not persist edges as expected in some cases |  Minor | MLlib | ding | dingding |
| [SPARK-17549](https://issues.apache.org/jira/browse/SPARK-17549) | InMemoryRelation doesn't scale to large tables |  Major | SQL | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-17658](https://issues.apache.org/jira/browse/SPARK-17658) | write.df API requires path which is not actually always nessasary in SparkR |  Minor | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-17328](https://issues.apache.org/jira/browse/SPARK-17328) | NPE with EXPLAIN DESCRIBE TABLE |  Minor | SQL | Jacek Laskowski | Dongjoon Hyun |
| [SPARK-17758](https://issues.apache.org/jira/browse/SPARK-17758) | Spark Aggregate function  LAST returns null on an empty partition |  Major | Input/Output | Franck Tago | Herman van Hovell |
| [SPARK-17750](https://issues.apache.org/jira/browse/SPARK-17750) | Cannot create view which includes interval arithmetic |  Major | SQL | Andreas Damm | Dongjoon Hyun |
| [SPARK-17798](https://issues.apache.org/jira/browse/SPARK-17798) | Remove redundant Experimental annotations in sql.streaming package |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-17463](https://issues.apache.org/jira/browse/SPARK-17463) | Serialization of accumulators in heartbeats is not thread-safe |  Critical | Spark Core | Josh Rosen | Shixiong Zhu |
| [SPARK-17792](https://issues.apache.org/jira/browse/SPARK-17792) | L-BFGS solver for linear regression does not accept general numeric label column types |  Minor | ML | Seth Hendrickson | Seth Hendrickson |
| [SPARK-17805](https://issues.apache.org/jira/browse/SPARK-17805) | sqlContext.read.text() does not work with a list of paths |  Minor | PySpark | Laurent Legrand | Bryan Cutler |
| [SPARK-17795](https://issues.apache.org/jira/browse/SPARK-17795) | Sorting on stage or job tables doesn’t reload page on that table |  Minor | Web UI | Alex Bozarth | Alex Bozarth |
| [SPARK-17707](https://issues.apache.org/jira/browse/SPARK-17707) | Web UI prevents spark-submit application to be finished |  Major | . | Nick Orka | Sean Owen |
| [SPARK-15621](https://issues.apache.org/jira/browse/SPARK-15621) | BatchEvalPythonExec fails with OOM |  Major | SQL | Krisztian Szucs | Davies Liu |
| [SPARK-17806](https://issues.apache.org/jira/browse/SPARK-17806) | Incorrect result when work with data from parquet |  Blocker | SQL | Vitaly Gerasimov | Davies Liu |
| [SPARK-17793](https://issues.apache.org/jira/browse/SPARK-17793) | Sorting on the description on the Job or Stage page doesn’t always work |  Minor | Web UI | Alex Bozarth | Alex Bozarth |
| [SPARK-17768](https://issues.apache.org/jira/browse/SPARK-17768) | Small {Sum,Count,Mean}Evaluator problems and suboptimalities |  Major | Spark Core | Sean Owen | Sean Owen |
| [SPARK-17832](https://issues.apache.org/jira/browse/SPARK-17832) | TableIdentifier.quotedString creates un-parseable names when name contains a backtick |  Minor | SQL | Herman van Hovell | Jiang Xingbo |
| [SPARK-17741](https://issues.apache.org/jira/browse/SPARK-17741) | Grammar to parse top level and nested data fields separately |  Trivial | SQL | Tejas Patil | Jiang Xingbo |
| [SPARK-17417](https://issues.apache.org/jira/browse/SPARK-17417) | Fix sorting of part files while reconstructing RDD/partition from checkpointed files. |  Major | Spark Core | Dhruve Ashar | Dhruve Ashar |
| [SPARK-16896](https://issues.apache.org/jira/browse/SPARK-16896) | Loading csv with duplicate column names |  Major | SQL | Aseem Bansal | Hyukjin Kwon |
| [SPARK-17816](https://issues.apache.org/jira/browse/SPARK-17816) | Json serialzation of accumulators are failing with ConcurrentModificationException |  Major | Spark Core | Ergin Seyfe | Ergin Seyfe |
| [SPARK-17808](https://issues.apache.org/jira/browse/SPARK-17808) | BinaryType fails in Python 3 due to outdated Pyrolite |  Major | PySpark | Pete Fein | Bryan Cutler |
| [SPARK-17817](https://issues.apache.org/jira/browse/SPARK-17817) | PySpark RDD Repartitioning Results in Highly Skewed Partition Sizes |  Major | PySpark | Mike Dusenberry | Liang-Chi Hsieh |
| [SPARK-15153](https://issues.apache.org/jira/browse/SPARK-15153) | SparkR spark.naiveBayes throws error when label is numeric type |  Major | ML, SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-17387](https://issues.apache.org/jira/browse/SPARK-17387) | Creating SparkContext() from python without spark-submit ignores user conf |  Minor | PySpark | Marcelo Vanzin | Jeff Zhang |
| [SPARK-17880](https://issues.apache.org/jira/browse/SPARK-17880) | The url linking to \`AccumulatorV2\` in the document is incorrect. |  Trivial | Documentation | Kousuke Saruta | Kousuke Saruta |
| [SPARK-17853](https://issues.apache.org/jira/browse/SPARK-17853) | Kafka OffsetOutOfRangeException on DStreams union from separate Kafka clusters with identical topic names. |  Major | DStreams | Marcin Kuthan | Cody Koeninger |
| [SPARK-14761](https://issues.apache.org/jira/browse/SPARK-14761) | PySpark DataFrame.join should reject invalid join methods even when join columns are not specified |  Minor | PySpark, SQL | Josh Rosen | Bijay Kumar Pathak |
| [SPARK-17884](https://issues.apache.org/jira/browse/SPARK-17884) | In the cast expression, casting from empty string to interval type throws NullPointerException |  Major | SQL | Priyanka Garg | Priyanka Garg |
| [SPARK-17782](https://issues.apache.org/jira/browse/SPARK-17782) | Kafka 010 test is flaky |  Major | DStreams | Herman van Hovell | Cody Koeninger |
| [SPARK-17876](https://issues.apache.org/jira/browse/SPARK-17876) | Write StructuredStreaming WAL to a stream instead of materializing all at once |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-17867](https://issues.apache.org/jira/browse/SPARK-17867) | Dataset.dropDuplicates (i.e. distinct) should consider the columns with same column name |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-17657](https://issues.apache.org/jira/browse/SPARK-17657) | Disallow Users to Change Table Type |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-17882](https://issues.apache.org/jira/browse/SPARK-17882) | RBackendHandler swallowing errors |  Minor | SparkR | James Shuster | James Shuster |
| [SPARK-17368](https://issues.apache.org/jira/browse/SPARK-17368) | Scala value classes create encoder problems and break at runtime |  Major | Spark Core, SQL | Aris Vlasakakis | Jakob Odersky |
| [SPARK-17870](https://issues.apache.org/jira/browse/SPARK-17870) | ML/MLLIB: ChiSquareSelector based on Statistics.chiSqTest(RDD) is wrong |  Critical | ML, MLlib | Peng Meng | Peng Meng |
| [SPARK-17855](https://issues.apache.org/jira/browse/SPARK-17855) | Spark worker throw Exception when uber jar's http url contains query string |  Major | Spark Core | Hao Ren | Hao Ren |
| [SPARK-17863](https://issues.apache.org/jira/browse/SPARK-17863) | SELECT distinct does not work if there is a order by clause |  Blocker | SQL | Yin Huai | Davies Liu |
| [SPARK-17936](https://issues.apache.org/jira/browse/SPARK-17936) | "CodeGenerator - failed to compile: org.codehaus.janino.JaninoRuntimeException: Code of" method Error |  Major | Spark Core | Justin Miller | Takuya Ueshin |
| [SPARK-17819](https://issues.apache.org/jira/browse/SPARK-17819) | Specified database in JDBC URL is ignored when connecting to thriftserver |  Major | SQL | Todd Nemet | Dongjoon Hyun |
| [SPARK-17620](https://issues.apache.org/jira/browse/SPARK-17620) | hive.default.fileformat=orc does not set OrcSerde |  Minor | SQL | Brian Cho | Dilip Biswal |
| [SPARK-17841](https://issues.apache.org/jira/browse/SPARK-17841) | Kafka 0.10 commitQueue needs to be drained |  Major | . | Cody Koeninger | Cody Koeninger |
| [SPARK-17873](https://issues.apache.org/jira/browse/SPARK-17873) | ALTER TABLE ... RENAME TO ... should allow users to specify database in destination table name |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18001](https://issues.apache.org/jira/browse/SPARK-18001) | Broke link to R DataFrame In sql-programming-guide |  Trivial | Documentation | Wenpei Yu | Wenpei Yu |
| [SPARK-17985](https://issues.apache.org/jira/browse/SPARK-17985) | Bump commons-lang3 version to 3.5. |  Minor | Spark Core | Takuya Ueshin | Takuya Ueshin |
| [SPARK-17989](https://issues.apache.org/jira/browse/SPARK-17989) | Check ascendingOrder type in sort\_array function ahead |  Trivial | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-18003](https://issues.apache.org/jira/browse/SPARK-18003) | RDD zipWithIndex generate wrong result when one partition contains more than 2147483647 records. |  Major | Spark Core | Weichen Xu | Weichen Xu |
| [SPARK-17860](https://issues.apache.org/jira/browse/SPARK-17860) | SHOW COLUMN's database conflict check should respect case sensitivity setting |  Minor | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-17698](https://issues.apache.org/jira/browse/SPARK-17698) | Join predicates should not contain filter clauses |  Minor | SQL | Tejas Patil | Tejas Patil |
| [SPARK-18029](https://issues.apache.org/jira/browse/SPARK-18029) | PruneFileSourcePartitions should not change the output of LogicalRelation |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-13275](https://issues.apache.org/jira/browse/SPARK-13275) | With dynamic allocation, executors appear to be added before job starts |  Minor | Web UI | Stephanie Bodoff | Alex Bozarth |
| [SPARK-18034](https://issues.apache.org/jira/browse/SPARK-18034) | Upgrade to MiMa 0.1.11 |  Major | Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-17929](https://issues.apache.org/jira/browse/SPARK-17929) | Deadlock when AM restart and send RemoveExecutor on reset |  Minor | Spark Core | Weizhong | Fei Wang |
| [SPARK-17850](https://issues.apache.org/jira/browse/SPARK-17850) | HadoopRDD should not swallow EOFException |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-17811](https://issues.apache.org/jira/browse/SPARK-17811) | SparkR cannot parallelize data.frame with NA or NULL in Date columns |  Major | SparkR | Hossein Falaki | Hossein Falaki |
| [SPARK-17944](https://issues.apache.org/jira/browse/SPARK-17944) | sbin/start-\* scripts use of \`hostname -f\` fail with Solaris |  Trivial | Deploy | Erik O'Shaughnessy | Erik O'Shaughnessy |
| [SPARK-17986](https://issues.apache.org/jira/browse/SPARK-17986) | SQLTransformer leaks temporary tables |  Minor | ML | Drew Robb | Drew Robb |
| [SPARK-17123](https://issues.apache.org/jira/browse/SPARK-17123) | Performing set operations that combine string and date / timestamp columns may result in generated projection code which doesn't compile |  Minor | SQL | Josh Rosen | Hyukjin Kwon |
| [SPARK-18051](https://issues.apache.org/jira/browse/SPARK-18051) | Custom PartitionCoalescer cause serialization exception |  Major | Spark Core | Weichen Xu | Weichen Xu |
| [SPARK-18035](https://issues.apache.org/jira/browse/SPARK-18035) | Introduce performant and memory efficient APIs to create ArrayBasedMapData |  Minor | SQL | Tejas Patil | Tejas Patil |
| [SPARK-18058](https://issues.apache.org/jira/browse/SPARK-18058) | AnalysisException may be thrown when union two DFs whose struct fields have different nullability |  Major | SQL | Cheng Lian | Nan Zhu |
| [SPARK-17810](https://issues.apache.org/jira/browse/SPARK-17810) | Default spark.sql.warehouse.dir is relative to local FS but can resolve as HDFS path |  Major | SQL | Sean Owen | Sean Owen |
| [SPARK-17894](https://issues.apache.org/jira/browse/SPARK-17894) | Ensure uniqueness of TaskSetManager name |  Major | Scheduler | Eren Avsarogullari | Eren Avsarogullari |
| [SPARK-18070](https://issues.apache.org/jira/browse/SPARK-18070) | binary operator should not consider nullability when comparing input types |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-16988](https://issues.apache.org/jira/browse/SPARK-16988) | spark history server log needs to be fixed to show https url when ssl is enabled |  Minor | Web UI | Yesha Vora | chie hayashida |
| [SPARK-17693](https://issues.apache.org/jira/browse/SPARK-17693) | Fixed Insert Failure To Data Source Tables when the Schema has the Comment Field |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-18022](https://issues.apache.org/jira/browse/SPARK-18022) | java.lang.NullPointerException instead of real exception when saving DF to MySQL |  Minor | SQL | Maciej Bryński | Sean Owen |
| [SPARK-18027](https://issues.apache.org/jira/browse/SPARK-18027) | .sparkStaging not clean on RM ApplicationNotFoundException |  Minor | YARN | David Shar | Sean Owen |
| [SPARK-17733](https://issues.apache.org/jira/browse/SPARK-17733) | InferFiltersFromConstraints rule never terminates for query |  Critical | SQL | Josh Rosen | Jiang Xingbo |
| [SPARK-18093](https://issues.apache.org/jira/browse/SPARK-18093) | Fix default value test in SQLConfSuite to work regardless of warehouse dir's existence |  Minor | SQL | Mark Grover | Mark Grover |
| [SPARK-18063](https://issues.apache.org/jira/browse/SPARK-18063) | Failed to infer constraints over multiple aliases |  Minor | SQL | Jiang Xingbo | Jiang Xingbo |
| [SPARK-18009](https://issues.apache.org/jira/browse/SPARK-18009) | Spark 2.0.1 SQL Thrift Error |  Critical | SQL | Jerryjung | Dilip Biswal |
| [SPARK-18132](https://issues.apache.org/jira/browse/SPARK-18132) | spark 2.0 branch's spark-release-publish failed because style check failed. |  Blocker | Build | Yin Huai | Yin Huai |
| [SPARK-18121](https://issues.apache.org/jira/browse/SPARK-18121) |  Unable to query global temp views when hive support is enabled. |  Major | SQL | Sunitha Kambhampati | Sunitha Kambhampati |
| [SPARK-18133](https://issues.apache.org/jira/browse/SPARK-18133) | Python ML Pipeline Example has syntax errors |  Minor | Examples, ML | Nirmal Fernando | Jagadeesan A S |
| [SPARK-18106](https://issues.apache.org/jira/browse/SPARK-18106) | Analyze Table accepts a garbage identifier at the end |  Minor | SQL | Srinath | Dongjoon Hyun |
| [SPARK-18110](https://issues.apache.org/jira/browse/SPARK-18110) | Missing parameter in Python for RandomForest regression and classification |  Major | PySpark | Felix Cheung | Felix Cheung |
| [SPARK-17972](https://issues.apache.org/jira/browse/SPARK-17972) | Query planning slows down dramatically for large query plans even when sub-trees are cached |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-18030](https://issues.apache.org/jira/browse/SPARK-18030) | Flaky test: org.apache.spark.sql.streaming.FileStreamSourceSuite |  Major | Structured Streaming | Davies Liu | Shixiong Zhu |
| [SPARK-18107](https://issues.apache.org/jira/browse/SPARK-18107) | Insert overwrite statement runs much slower in spark-sql than it does in hive-client |  Major | SQL | J.P Feng | Liang-Chi Hsieh |
| [SPARK-18111](https://issues.apache.org/jira/browse/SPARK-18111) | Wrong ApproximatePercentile answer when multiple records have the minimum value |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-18114](https://issues.apache.org/jira/browse/SPARK-18114) | MesosClusterScheduler generate bad command options |  Major | Mesos | Leighton Wong | Leighton Wong |
| [SPARK-17996](https://issues.apache.org/jira/browse/SPARK-17996) | catalog.getFunction(name) returns wrong result for a permanent function |  Minor | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-16839](https://issues.apache.org/jira/browse/SPARK-16839) | CleanupAliases may leave redundant aliases at end of analysis state |  Minor | SQL | Eyal Farago | Eyal Farago |
| [SPARK-18189](https://issues.apache.org/jira/browse/SPARK-18189) | task not serializable with groupByKey() + mapGroups() + map |  Major | SQL | Yang Yang | Ergin Seyfe |
| [SPARK-18148](https://issues.apache.org/jira/browse/SPARK-18148) | Misleading Error Message for Aggregation Without Window/GroupBy |  Major | SQL | Pat McDonough | Jiang Xingbo |
| [SPARK-16007](https://issues.apache.org/jira/browse/SPARK-16007) | Empty DataFrame created with spark.read.csv() does not respect user specified schema |  Minor | SQL | Tathagata Das | Tathagata Das |
| [SPARK-17350](https://issues.apache.org/jira/browse/SPARK-17350) | Disable default use of KryoSerializer in Thrift Server |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-17267](https://issues.apache.org/jira/browse/SPARK-17267) | Long running structured streaming requirements |  Blocker | Structured Streaming | Reynold Xin | Peter Lee |
| [SPARK-18144](https://issues.apache.org/jira/browse/SPARK-18144) | StreamingQueryListener.QueryStartedEvent is not written to event log |  Minor | Structured Streaming | Shixiong Zhu | Nan Zhu |
| [SPARK-18076](https://issues.apache.org/jira/browse/SPARK-18076) | Fix default Locale used in DateFormat, NumberFormat to Locale.US |  Major | MLlib, Spark Core, SQL | Sean Owen | Sean Owen |
| [SPARK-14393](https://issues.apache.org/jira/browse/SPARK-14393) | values generated by non-deterministic functions shouldn't change after coalesce or union |  Blocker | SQL | Jason Piper | Xiangrui Meng |
| [SPARK-18160](https://issues.apache.org/jira/browse/SPARK-18160) | spark.files & spark.jars should not be passed to driver in yarn mode |  Critical | Spark Core, YARN | Jeff Zhang | Jeff Zhang |
| [SPARK-18200](https://issues.apache.org/jira/browse/SPARK-18200) | GraphX Invalid initial capacity when running triangleCount |  Major | GraphX | Denny Lee | Dongjoon Hyun |
| [SPARK-17122](https://issues.apache.org/jira/browse/SPARK-17122) | Failed to drop database when use the database in Spark 2.0 |  Major | SQL | Yi Zhou | Adrian Wang |
| [SPARK-17981](https://issues.apache.org/jira/browse/SPARK-17981) | Incorrectly Set Nullability to False in FilterExec |  Critical | SQL | Xiao Li | Xiao Li |
| [SPARK-17957](https://issues.apache.org/jira/browse/SPARK-17957) | Calling outer join and na.fill(0) and then inner join will miss rows |  Critical | SQL | Linbo | Xiao Li |
| [SPARK-18237](https://issues.apache.org/jira/browse/SPARK-18237) | hive.exec.stagingdir have no effect in spark2.0.1 |  Major | SQL | ClassNotFoundExp | ClassNotFoundExp |
| [SPARK-18099](https://issues.apache.org/jira/browse/SPARK-18099) | Spark distributed cache should throw exception if same file is specified to dropped in --files --archives |  Major | YARN | Kishor Patil | Kishor Patil |
| [SPARK-18212](https://issues.apache.org/jira/browse/SPARK-18212) | Flaky test: org.apache.spark.sql.kafka010.KafkaSourceSuite.assign from specific offsets |  Major | Structured Streaming | Davies Liu | Cody Koeninger |
| [SPARK-18257](https://issues.apache.org/jira/browse/SPARK-18257) | Improve error reporting for FileStressSuite in streaming |  Major | Structured Streaming | Reynold Xin | Reynold Xin |
| [SPARK-18259](https://issues.apache.org/jira/browse/SPARK-18259) | QueryExecution should not catch Throwable |  Minor | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-17337](https://issues.apache.org/jira/browse/SPARK-17337) | Incomplete algorithm for name resolution in Catalyst paser may lead to incorrect result |  Major | SQL | Nattavut Sutyanyong | Herman van Hovell |
| [SPARK-17849](https://issues.apache.org/jira/browse/SPARK-17849) | grouping set throws NPE |  Major | SQL | Yang Wang | Yang Wang |
| [SPARK-18210](https://issues.apache.org/jira/browse/SPARK-18210) | Pipeline.copy does not create an instance with the same UID |  Minor | ML | Wojciech Szymanski | Wojciech Szymanski |
| [SPARK-18269](https://issues.apache.org/jira/browse/SPARK-18269) | NumberFormatException when reading csv for a nullable column |  Major | SQL | Jork Zijlstra | Hyukjin Kwon |
| [SPARK-17108](https://issues.apache.org/jira/browse/SPARK-17108) | BIGINT and INT comparison failure in spark sql |  Major | SQL | Sai Krishna Kishore Beathanabhotla | Weiqing Yang |
| [SPARK-18086](https://issues.apache.org/jira/browse/SPARK-18086) | Regression: Hive variables no longer work in Spark 2.0 |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-16575](https://issues.apache.org/jira/browse/SPARK-16575) | partition calculation mismatch with sc.binaryFiles |  Critical | Input/Output, Java API, Shuffle, Spark Core, Spark Shell | Suhas | Tarun Kumar |
| [SPARK-17446](https://issues.apache.org/jira/browse/SPARK-17446) | no total size for data source tables in InMemoryCatalog |  Major | SQL | Zhenhua Wang | Wenchen Fan |
| [SPARK-18207](https://issues.apache.org/jira/browse/SPARK-18207) | class "org.apache.spark.sql.catalyst.expressions.GeneratedClass$SpecificUnsafeProjection" grows beyond 64 KB |  Major | Optimizer, SQL | Don Drake | Kazuaki Ishizaki |
| [SPARK-18137](https://issues.apache.org/jira/browse/SPARK-18137) | RewriteDistinctAggregates UnresolvedException when a UDAF has a foldable TypeCheck |  Major | SQL | Song Jun | Song Jun |
| [SPARK-18346](https://issues.apache.org/jira/browse/SPARK-18346) | TRUNCATE TABLE should fail if no partition is matched for the given non-partial partition spec |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18357](https://issues.apache.org/jira/browse/SPARK-18357) | YARN --files/--archives broke |  Blocker | YARN | Thomas Graves | Kishor Patil |
| [SPARK-18280](https://issues.apache.org/jira/browse/SPARK-18280) | Potential deadlock in \`StandaloneSchedulerBackend.dead\` |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18342](https://issues.apache.org/jira/browse/SPARK-18342) | HDFSBackedStateStore can fail to rename files causing snapshotting and recovery to fail |  Critical | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-17659](https://issues.apache.org/jira/browse/SPARK-17659) | Partitioned View is Not Supported In SHOW CREATE TABLE |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-18292](https://issues.apache.org/jira/browse/SPARK-18292) | LogicalPlanToSQLSuite should not use resource dependent path for golden file generation |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-16808](https://issues.apache.org/jira/browse/SPARK-16808) | History Server main page does not honor APPLICATION\_WEB\_PROXY\_BASE |  Major | . | Michael Gummelt | Vinayak Joshi |
| [SPARK-18368](https://issues.apache.org/jira/browse/SPARK-18368) | Regular expression replace throws NullPointerException when serialized |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-18370](https://issues.apache.org/jira/browse/SPARK-18370) | InsertIntoHadoopFsRelationCommand should keep track of its table |  Minor | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-18147](https://issues.apache.org/jira/browse/SPARK-18147) | Broken Spark SQL Codegen |  Critical | SQL | koert kuipers | Liang-Chi Hsieh |
| [SPARK-18262](https://issues.apache.org/jira/browse/SPARK-18262) | JSON.org license is now CatX |  Blocker | . | Sean Busbey | Sean Owen |
| [SPARK-17993](https://issues.apache.org/jira/browse/SPARK-17993) | Spark prints an avalanche of warning messages from Parquet when reading parquet files written by older versions of Parquet-mr |  Major | SQL | Michael Allman | Michael Allman |
| [SPARK-18401](https://issues.apache.org/jira/browse/SPARK-18401) | SparkR random forest should support output original label |  Major | ML, SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-17982](https://issues.apache.org/jira/browse/SPARK-17982) | SQLBuilder should wrap the generated SQL with parenthesis for LIMIT |  Blocker | SQL | Franck Tago | Dongjoon Hyun |
| [SPARK-18387](https://issues.apache.org/jira/browse/SPARK-18387) | Test that expressions can be serialized |  Blocker | . | Ryan Blue | Ryan Blue |
| [SPARK-18383](https://issues.apache.org/jira/browse/SPARK-18383) | Utils.isBindCollision does not properly handle all possible address-port collisions when binding |  Minor | Spark Core | Guoqiang Li | Guoqiang Li |
| [SPARK-18418](https://issues.apache.org/jira/browse/SPARK-18418) | Make release script hadoop profiles aren't correctly specified. |  Critical | Build, Project Infra | holdenk | holdenk |
| [SPARK-18412](https://issues.apache.org/jira/browse/SPARK-18412) | SparkR spark.randomForest classification throws exception when training on libsvm data |  Major | ML, SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-18382](https://issues.apache.org/jira/browse/SPARK-18382) | "run at null:-1" in UI when no file/line info in call site info |  Trivial | Spark Core, Web UI | Emiliano Amendola | Sean Owen |
| [SPARK-17348](https://issues.apache.org/jira/browse/SPARK-17348) | Incorrect results from subquery transformation |  Major | SQL | Nattavut Sutyanyong | Nattavut Sutyanyong |
| [SPARK-18430](https://issues.apache.org/jira/browse/SPARK-18430) | Returned Message Null when Hitting an Invocation Exception of Function Lookup. |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-18300](https://issues.apache.org/jira/browse/SPARK-18300) | ClassCastException during count distinct |  Major | SQL | Emlyn Corrin | Herman van Hovell |
| [SPARK-18400](https://issues.apache.org/jira/browse/SPARK-18400) | NPE when resharding Kinesis Stream |  Minor | DStreams | Brian ONeill | Sean Owen |
| [SPARK-18172](https://issues.apache.org/jira/browse/SPARK-18172) | AnalysisException in first/last during aggregation |  Major | SQL | Emlyn Corrin | Song Jun |
| [SPARK-18442](https://issues.apache.org/jira/browse/SPARK-18442) | Fix nullability of WrapOption. |  Minor | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-18464](https://issues.apache.org/jira/browse/SPARK-18464) | Spark SQL fails to load tables created without providing a schema |  Blocker | SQL | Yin Huai | Wenchen Fan |
| [SPARK-18365](https://issues.apache.org/jira/browse/SPARK-18365) | Improve Documentation for Sample Methods |  Major | . | Bill Chambers | Bill Chambers |
| [SPARK-18480](https://issues.apache.org/jira/browse/SPARK-18480) | Link validation for ML guides |  Trivial | Documentation | zhengruifeng | zhengruifeng |
| [SPARK-18360](https://issues.apache.org/jira/browse/SPARK-18360) | default table path of tables in default database should depend on the location of default database |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18462](https://issues.apache.org/jira/browse/SPARK-18462) | SparkListenerDriverAccumUpdates event does not deserialize properly in history server |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-11785](https://issues.apache.org/jira/browse/SPARK-11785) | When deployed against remote Hive metastore with lower versions, JDBC metadata calls throws exception |  Critical | SQL | Cheng Lian | Cheng Lian |
| [SPARK-18187](https://issues.apache.org/jira/browse/SPARK-18187) | CompactibleFileStreamLog should not rely on "compactInterval" to detect a compaction batch |  Critical | Structured Streaming | Shixiong Zhu | Tyson Condie |
| [SPARK-18457](https://issues.apache.org/jira/browse/SPARK-18457) | ORC and other columnar formats using HiveShim read all columns when doing a simple count |  Minor | SQL | Andrew Ray | Andrew Ray |
| [SPARK-18497](https://issues.apache.org/jira/browse/SPARK-18497) | ForeachSink fails with "assertion failed: No plan for EventTimeWatermark" |  Critical | Structured Streaming | Aaron Davidson | Shixiong Zhu |
| [SPARK-18353](https://issues.apache.org/jira/browse/SPARK-18353) | spark.rpc.askTimeout defalut value is not 120s |  Minor | Spark Core | Jason Pan | Sean Owen |
| [SPARK-18458](https://issues.apache.org/jira/browse/SPARK-18458) | core dumped running Spark SQL on large data volume (100TB) |  Critical | SQL | JESSE CHEN | Kazuaki Ishizaki |
| [SPARK-18508](https://issues.apache.org/jira/browse/SPARK-18508) | Fix documentation for DateDiff |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-17765](https://issues.apache.org/jira/browse/SPARK-17765) | org.apache.spark.mllib.linalg.VectorUDT cannot be cast to org.apache.spark.sql.types.StructType |  Major | MLlib, PySpark, SQL | Alexander Shorin | Hyukjin Kwon |
| [SPARK-18517](https://issues.apache.org/jira/browse/SPARK-18517) | DROP TABLE IF EXISTS should not warn for non-existing tables |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-18444](https://issues.apache.org/jira/browse/SPARK-18444) | SparkR running in yarn-cluster mode should not download Spark package |  Critical | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-18519](https://issues.apache.org/jira/browse/SPARK-18519) | map type can not be used in EqualTo |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18504](https://issues.apache.org/jira/browse/SPARK-18504) | Scalar subquery with extra group by columns returning incorrect result |  Major | SQL | Nattavut Sutyanyong | Nattavut Sutyanyong |
| [SPARK-18373](https://issues.apache.org/jira/browse/SPARK-18373) | Make KafkaSource's failOnDataLoss=false work with Spark jobs |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18529](https://issues.apache.org/jira/browse/SPARK-18529) | Timeouts shouldn't be AssertionErrors |  Major | Structured Streaming | Michael Armbrust | Shixiong Zhu |
| [SPARK-16803](https://issues.apache.org/jira/browse/SPARK-16803) | SaveAsTable does not work when source DataFrame is built on a Hive Table |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-18533](https://issues.apache.org/jira/browse/SPARK-18533) | Raise correct error upon specification of schema for datasource tables created through CTAS |  Minor | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-18530](https://issues.apache.org/jira/browse/SPARK-18530) | Kafka timestamp should be TimestampType |  Blocker | Structured Streaming | Michael Armbrust | Shixiong Zhu |
| [SPARK-18501](https://issues.apache.org/jira/browse/SPARK-18501) | SparkR spark.glm error on collinear data |  Major | ML, SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-18053](https://issues.apache.org/jira/browse/SPARK-18053) | ARRAY equality is broken in Spark 2.0 |  Major | SQL | Cheng Lian | Wenchen Fan |
| [SPARK-18050](https://issues.apache.org/jira/browse/SPARK-18050) | spark 2.0.1 enable hive throw AlreadyExistsException(message:Database default already exists) |  Major | SQL | todd.chen | Wenchen Fan |
| [SPARK-18510](https://issues.apache.org/jira/browse/SPARK-18510) | Partition schema inference corrupts data |  Blocker | SQL, Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-18578](https://issues.apache.org/jira/browse/SPARK-18578) | Full outer join in correlated subquery returns incorrect results |  Major | SQL | Nattavut Sutyanyong | Nattavut Sutyanyong |
| [SPARK-18119](https://issues.apache.org/jira/browse/SPARK-18119) | Namenode safemode check is only performed on one namenode which can stuck the startup of SparkHistory server |  Minor | Spark Core | Nicolas Fraison | Nicolas Fraison |
| [SPARK-18436](https://issues.apache.org/jira/browse/SPARK-18436) | isin causing SQL syntax error with JDBC |  Major | SQL | Dan | Jiang Xingbo |
| [SPARK-18583](https://issues.apache.org/jira/browse/SPARK-18583) | Fix nullability of InputFileName. |  Minor | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-17251](https://issues.apache.org/jira/browse/SPARK-17251) | "ClassCastException: OuterReference cannot be cast to NamedExpression" for correlated subquery on the RHS of an IN operator |  Major | SQL | Josh Rosen | Dongjoon Hyun |
| [SPARK-18407](https://issues.apache.org/jira/browse/SPARK-18407) | Inferred partition columns cause assertion error |  Critical | Structured Streaming | Michael Armbrust | Burak Yavuz |
| [SPARK-18118](https://issues.apache.org/jira/browse/SPARK-18118) | SpecificSafeProjection.apply of Java Object from Dataset to JavaRDD Grows Beyond 64 KB |  Major | SQL | Aleksander Eskilson | Kazuaki Ishizaki |
| [SPARK-17783](https://issues.apache.org/jira/browse/SPARK-17783) | Hide Credentials in CREATE and DESC FORMATTED/EXTENDED a PERSISTENT/TEMP Table for JDBC |  Critical | SQL | Xiao Li | Xiao Li |
| [SPARK-18597](https://issues.apache.org/jira/browse/SPARK-18597) | Do not push down filters for LEFT ANTI JOIN |  Minor | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-18602](https://issues.apache.org/jira/browse/SPARK-18602) | Dependency list still shows that the version of org.codehaus.janino:commons-compiler is 2.7.6 |  Major | Build, SQL | Yin Huai | Yin Huai |
| [SPARK-18527](https://issues.apache.org/jira/browse/SPARK-18527) | UDAFPercentile (bigint, array\<double\>) needs explicity cast to double |  Major | SQL | Fabian Boehnlein | Jiang Xingbo |
| [SPARK-18523](https://issues.apache.org/jira/browse/SPARK-18523) | OOM killer may leave SparkContext in broken state causing Connection Refused errors |  Major | PySpark | Alexander Shorin | Alexander Shorin |
| [SPARK-18339](https://issues.apache.org/jira/browse/SPARK-18339) | Don't push down current\_timestamp for filters in StructuredStreaming |  Critical | Structured Streaming | Burak Yavuz | Tyson Condie |
| [SPARK-3359](https://issues.apache.org/jira/browse/SPARK-3359) | \`sbt/sbt unidoc\` doesn't work with Java 8 |  Minor | Documentation | Xiangrui Meng | Hyukjin Kwon |
| [SPARK-18614](https://issues.apache.org/jira/browse/SPARK-18614) | Incorrect predicate pushdown from ExistenceJoin |  Minor | SQL | Nattavut Sutyanyong | Nattavut Sutyanyong |
| [SPARK-18622](https://issues.apache.org/jira/browse/SPARK-18622) | Missing Reference in Multi Union Clauses Cause by TypeCoercion |  Major | SQL | Yerui Sun | Herman van Hovell |
| [SPARK-18617](https://issues.apache.org/jira/browse/SPARK-18617) | Close "kryo auto pick" feature for Spark Streaming |  Major | . | Genmao Yu | Genmao Yu |
| [SPARK-17897](https://issues.apache.org/jira/browse/SPARK-17897) | not isnotnull is converted to the always false condition isnotnull && not isnotnull |  Major | Optimizer | Jordan Halterman | Xiao Li |
| [SPARK-18220](https://issues.apache.org/jira/browse/SPARK-18220) | ClassCastException occurs when using select query on ORC file |  Blocker | SQL | Jerryjung | Wenchen Fan |
| [SPARK-18546](https://issues.apache.org/jira/browse/SPARK-18546) | UnsafeShuffleWriter corrupts encrypted shuffle files when merging |  Critical | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-18655](https://issues.apache.org/jira/browse/SPARK-18655) | Ignore Structured Streaming 2.0.2 logs in history server |  Blocker | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18476](https://issues.apache.org/jira/browse/SPARK-18476) | SparkR Logistic Regression should output original label |  Major | SparkR | Miao Wang | Miao Wang |
| [SPARK-18645](https://issues.apache.org/jira/browse/SPARK-18645) | spark-daemon.sh arguments error lead to throws Unrecognized option |  Major | Deploy | Yuming Wang | Yuming Wang |
| [SPARK-18553](https://issues.apache.org/jira/browse/SPARK-18553) | Executor loss may cause TaskSetManager to be leaked |  Blocker | Scheduler | Josh Rosen | Josh Rosen |
| [SPARK-18274](https://issues.apache.org/jira/browse/SPARK-18274) | Memory leak in PySpark StringIndexer |  Critical | ML, PySpark | Jonas Amrich | Sandeep Singh |
| [SPARK-18141](https://issues.apache.org/jira/browse/SPARK-18141) | jdbc datasource read fails when  quoted  columns (eg:mixed case, reserved words) in source table are used  in the filter. |  Major | SQL | Suresh Thalamati | Suresh Thalamati |
| [SPARK-18538](https://issues.apache.org/jira/browse/SPARK-18538) | Concurrent Fetching DataFrameReader JDBC APIs Do Not Work |  Blocker | SQL | Xiao Li | Xiao Li |
| [SPARK-18647](https://issues.apache.org/jira/browse/SPARK-18647) | do not put provider in table properties for Hive serde table |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17213](https://issues.apache.org/jira/browse/SPARK-17213) | Parquet String Pushdown for Non-Eq Comparisons Broken |  Major | SQL | Andrew Duffy | Cheng Lian |
| [SPARK-18640](https://issues.apache.org/jira/browse/SPARK-18640) | Fix minor synchronization issue in TaskSchedulerImpl.runningTasksByExecutors |  Minor | Scheduler | Josh Rosen | Josh Rosen |
| [SPARK-18419](https://issues.apache.org/jira/browse/SPARK-18419) | \`JDBCRelation.insert\` should not remove Spark options |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-18677](https://issues.apache.org/jira/browse/SPARK-18677) | Json path implementation fails to parse ['key'] |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-18670](https://issues.apache.org/jira/browse/SPARK-18670) | Limit the number of StreamingQueryListener.StreamProgressEvent when there is no data |  Critical | Structured Streaming | Tathagata Das | Shixiong Zhu |
| [SPARK-18091](https://issues.apache.org/jira/browse/SPARK-18091) | Deep if expressions cause Generated SpecificUnsafeProjection code to exceed JVM code size limit |  Critical | SQL | Kapil Singh | Kapil Singh |
| [SPARK-18643](https://issues.apache.org/jira/browse/SPARK-18643) | SparkR hangs at session start when installed as a package without SPARK\_HOME set |  Critical | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-18711](https://issues.apache.org/jira/browse/SPARK-18711) | NPE in generated SpecificMutableProjection for Aggregator |  Major | SQL | koert kuipers | Wenchen Fan |
| [SPARK-18634](https://issues.apache.org/jira/browse/SPARK-18634) | Corruption and Correctness issues with exploding Python UDFs |  Major | PySpark, SQL | Burak Yavuz | Liang-Chi Hsieh |
| [SPARK-18657](https://issues.apache.org/jira/browse/SPARK-18657) | Persist UUID across query restart |  Critical | Structured Streaming | Michael Armbrust | Tathagata Das |
| [SPARK-18668](https://issues.apache.org/jira/browse/SPARK-18668) | Do not auto-generate query name |  Critical | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-18722](https://issues.apache.org/jira/browse/SPARK-18722) | Move no data rate limit from StreamExecution to ProgressReporter |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18721](https://issues.apache.org/jira/browse/SPARK-18721) | ForeachSink breaks Watermark in append mode |  Critical | Structured Streaming | Cristian Opris | Shixiong Zhu |
| [SPARK-18671](https://issues.apache.org/jira/browse/SPARK-18671) | Add tests to ensure stability of that all Structured Streaming log formats |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-16948](https://issues.apache.org/jira/browse/SPARK-16948) | Use metastore schema instead of inferring schema for ORC in HiveMetastoreCatalog |  Minor | SQL | Rajesh Balamohan | Eric Liang |
| [SPARK-18678](https://issues.apache.org/jira/browse/SPARK-18678) | Skewed reservoir sampling in SamplingUtils |  Major | ML | Bjoern Toldbod | Sean Owen |
| [SPARK-18208](https://issues.apache.org/jira/browse/SPARK-18208) | Executor OOM due to a memory leak in BytesToBytesMap |  Major | Shuffle | Jie Xiong | Jie Xiong |
| [SPARK-17760](https://issues.apache.org/jira/browse/SPARK-17760) | DataFrame's pivot doesn't see column created in groupBy |  Major | PySpark | Alberto Bonsanto | Andrew Ray |
| [SPARK-18762](https://issues.apache.org/jira/browse/SPARK-18762) | Web UI should be http:4040 instead of https:4040 |  Blocker | Spark Shell, Web UI | Xiangrui Meng | Kousuke Saruta |
| [SPARK-18758](https://issues.apache.org/jira/browse/SPARK-18758) | StreamingQueryListener events from a StreamingQuery should be sent only to the listeners in the same session as the query |  Critical | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-18667](https://issues.apache.org/jira/browse/SPARK-18667) | input\_file\_name function does not work with UDF |  Major | PySpark | Hyukjin Kwon | Liang-Chi Hsieh |
| [SPARK-16589](https://issues.apache.org/jira/browse/SPARK-16589) | Chained cartesian produces incorrect number of records |  Major | PySpark | Maciej Szymkiewicz | Andrew Ray |
| [SPARK-18776](https://issues.apache.org/jira/browse/SPARK-18776) | Offset for FileStreamSource is not json formatted |  Critical | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-18637](https://issues.apache.org/jira/browse/SPARK-18637) | Stateful UDF should be considered as nondeterministic |  Major | SQL | Zhan Zhang | Zhan Zhang |
| [SPARK-17822](https://issues.apache.org/jira/browse/SPARK-17822) | JVMObjectTracker.objMap may leak JVM objects |  Major | SparkR | Yin Huai | Xiangrui Meng |
| [SPARK-18745](https://issues.apache.org/jira/browse/SPARK-18745) | java.lang.IndexOutOfBoundsException running query 68 Spark SQL on (100TB) |  Critical | SQL | JESSE CHEN | Kazuaki Ishizaki |
| [SPARK-18807](https://issues.apache.org/jira/browse/SPARK-18807) | Should suppress output print for calls to JVM methods with void return values |  Minor | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-17460](https://issues.apache.org/jira/browse/SPARK-17460) | Dataset.joinWith broadcasts gigabyte sized table, causes OOM Exception |  Major | SQL | Chris Perluss | Huaxin Gao |
| [SPARK-18681](https://issues.apache.org/jira/browse/SPARK-18681) | Throw Filtering is supported only on partition keys of type string exception |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-18810](https://issues.apache.org/jira/browse/SPARK-18810) | SparkR install.spark does not work for RCs, snapshots |  Major | SparkR | Shivaram Venkataraman | Felix Cheung |
| [SPARK-18796](https://issues.apache.org/jira/browse/SPARK-18796) | StreamingQueryManager should not hold a lock when starting a query |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18835](https://issues.apache.org/jira/browse/SPARK-18835) | Do not expose shaded types in JavaTypeInference API |  Minor | SQL | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-18816](https://issues.apache.org/jira/browse/SPARK-18816) | executor page fails to show log links if executors are added after an app is launched |  Blocker | Web UI | Yin Huai | Alex Bozarth |
| [SPARK-18843](https://issues.apache.org/jira/browse/SPARK-18843) | Fix timeout in awaitResultInForkJoinSafely |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18840](https://issues.apache.org/jira/browse/SPARK-18840) | HDFSCredentialProvider throws exception in non-HDFS security environment |  Minor | YARN | Saisai Shao | Saisai Shao |
| [SPARK-18814](https://issues.apache.org/jira/browse/SPARK-18814) | CheckAnalysis rejects TPCDS query 32 |  Blocker | SQL | Eric Liang | Nattavut Sutyanyong |
| [SPARK-18730](https://issues.apache.org/jira/browse/SPARK-18730) | Ask the build script to link to Jenkins test report page instead of full console output page when posting to GitHub |  Minor | Build | Cheng Lian | Cheng Lian |
| [SPARK-18753](https://issues.apache.org/jira/browse/SPARK-18753) | Inconsistent behavior after writing to parquet files |  Major | SQL | Shixiong Zhu | Hyukjin Kwon |
| [SPARK-18853](https://issues.apache.org/jira/browse/SPARK-18853) | Project (UnaryNode) is way too aggressive in estimating statistics |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-18854](https://issues.apache.org/jira/browse/SPARK-18854) | getNodeNumbered and generateTreeString are not consistent |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-18856](https://issues.apache.org/jira/browse/SPARK-18856) | Newly created catalog table assumed to have 0 rows and 0 bytes |  Blocker | SQL | Reynold Xin | Wenchen Fan |
| [SPARK-18875](https://issues.apache.org/jira/browse/SPARK-18875) | Fix R API doc generation by adding \`DESCRIPTION\` file |  Minor | Documentation, SparkR | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-18870](https://issues.apache.org/jira/browse/SPARK-18870) | Distinct aggregates give incorrect answers on streaming dataframes |  Blocker | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-18888](https://issues.apache.org/jira/browse/SPARK-18888) | partitionBy in DataStreamWriter in Python throws \_to\_seq not defined |  Blocker | PySpark, Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-12777](https://issues.apache.org/jira/browse/SPARK-12777) | Dataset fields can't be Scala tuples |  Major | SQL | Chris Jansen | Jakob Odersky |
| [SPARK-19696](https://issues.apache.org/jira/browse/SPARK-19696) | Wrong Documentation for Java Word Count Example |  Minor | Documentation | gaurav gupta | Sean Owen |
| [SPARK-18970](https://issues.apache.org/jira/browse/SPARK-18970) | FileSource failure during file list refresh doesn't cause an application to fail, but stops further processing |  Major | SQL, Structured Streaming | Lev |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-15433](https://issues.apache.org/jira/browse/SPARK-15433) | PySpark core test should not use SerDe from PythonMLLibAPI |  Minor | PySpark | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-15714](https://issues.apache.org/jira/browse/SPARK-15714) | Fix Flaky Test: o.a.s.scheduler.BlacklistIntegrationSuite |  Minor | Scheduler | Imran Rashid | Imran Rashid |
| [SPARK-15783](https://issues.apache.org/jira/browse/SPARK-15783) | Fix more flakiness: o.a.s.scheduler.BlacklistIntegrationSuite |  Minor | Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-16136](https://issues.apache.org/jira/browse/SPARK-16136) | Flaky Test: TaskManagerSuite "Kill other task attempts when one attempt belonging to the same task succeeds" |  Minor | Tests | Imran Rashid | Imran Rashid |
| [SPARK-16307](https://issues.apache.org/jira/browse/SPARK-16307) | Improve testing for DecisionTree variances |  Minor | . | Manoj Kumar | Manoj Kumar |
| [SPARK-16690](https://issues.apache.org/jira/browse/SPARK-16690) | rename SQLTestUtils.withTempTable to withTempView |  Major | Tests | Wenchen Fan | Wenchen Fan |
| [SPARK-16668](https://issues.apache.org/jira/browse/SPARK-16668) | Test parquet reader for row groups containing both dictionary and plain encoded pages |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-16722](https://issues.apache.org/jira/browse/SPARK-16722) | Fix a StreamingContext leak in StreamingContextSuite when eventually fails |  Major | Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-16598](https://issues.apache.org/jira/browse/SPARK-16598) | Added a test case for verifying the table identifier parsing |  Minor | SQL | Xiao Li | Xiao Li |
| [SPARK-17102](https://issues.apache.org/jira/browse/SPARK-17102) | bypass UserDefinedGenerator for json format check |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17326](https://issues.apache.org/jira/browse/SPARK-17326) | Tests with HiveContext in SparkR being skipped always |  Major | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-17318](https://issues.apache.org/jira/browse/SPARK-17318) | Fix flaky test: o.a.s.repl.ReplSuite replicating blocks of object with class defined in repl |  Major | . | Shixiong Zhu | Shixiong Zhu |
| [SPARK-17200](https://issues.apache.org/jira/browse/SPARK-17200) | Automate building and testing on Windows |  Major | Build, Project Infra | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-17473](https://issues.apache.org/jira/browse/SPARK-17473) | jdbc docker tests are failing with java.lang.AbstractMethodError: |  Major | SQL | Suresh Thalamati | Suresh Thalamati |
| [SPARK-16356](https://issues.apache.org/jira/browse/SPARK-16356) | Add testImplicits for ML unit tests and promote toDF() |  Minor | ML | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-17713](https://issues.apache.org/jira/browse/SPARK-17713) | Move row-datasource related tests out of JDBCSuite |  Trivial | SQL | Eric Liang | Eric Liang |
| [SPARK-17412](https://issues.apache.org/jira/browse/SPARK-17412) | FsHistoryProviderSuite fails if \`root\` user runs it |  Minor | Documentation, Tests | Amita Chaudhary | Dongjoon Hyun |
| [SPARK-17740](https://issues.apache.org/jira/browse/SPARK-17740) | Spark tests should mock / interpose HDFS to ensure that streams are closed |  Major | Spark Core | Eric Liang | Eric Liang |
| [SPARK-14914](https://issues.apache.org/jira/browse/SPARK-14914) | Test Cases fail on Windows |  Major | Tests | Tao LI | Tao LI |
| [SPARK-17778](https://issues.apache.org/jira/browse/SPARK-17778) | Mock SparkContext to reduce memory usage of BlockManagerSuite |  Minor | Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-17738](https://issues.apache.org/jira/browse/SPARK-17738) | Flaky test: org.apache.spark.sql.execution.columnar.ColumnTypeSuite MAP append/extract |  Major | Tests | Davies Liu | Davies Liu |
| [SPARK-17941](https://issues.apache.org/jira/browse/SPARK-17941) | Logistic regression test suites should use weights when comparing to glmnet |  Minor | ML | Seth Hendrickson | Seth Hendrickson |
| [SPARK-17674](https://issues.apache.org/jira/browse/SPARK-17674) | Warnings from SparkR tests being ignored without redirecting to errors |  Major | SparkR | Hyukjin Kwon | Felix Cheung |
| [SPARK-18045](https://issues.apache.org/jira/browse/SPARK-18045) | Move \`HiveDataFrameAnalyticsSuite\` to package \`sql\` |  Minor | SQL | Jiang Xingbo | Jiang Xingbo |
| [SPARK-17624](https://issues.apache.org/jira/browse/SPARK-17624) | Flaky test? StateStoreSuite maintenance |  Minor | Tests | Adam Roberts | Tathagata Das |
| [SPARK-18094](https://issues.apache.org/jira/browse/SPARK-18094) | Move group analytics test cases from \`SQLQuerySuite\` into a query file test |  Minor | SQL | Jiang Xingbo | Jiang Xingbo |
| [SPARK-18175](https://issues.apache.org/jira/browse/SPARK-18175) | Improve the test case coverage of implicit type casting |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-18425](https://issues.apache.org/jira/browse/SPARK-18425) | Test \`CompactibleFileStreamLog\` directly |  Minor | Structured Streaming, Tests | Liwei Lin | Liwei Lin |
| [SPARK-18482](https://issues.apache.org/jira/browse/SPARK-18482) | make sure Spark can access the table metadata created by older version of spark |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17905](https://issues.apache.org/jira/browse/SPARK-17905) | Added test cases for InMemoryRelation |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-17680](https://issues.apache.org/jira/browse/SPARK-17680) | Unicode Character Support for Column Names and Comments |  Major | SQL | Xiao Li | Xiao Li |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10372](https://issues.apache.org/jira/browse/SPARK-10372) | Add end-to-end tests for the scheduling code |  Major | Scheduler, Tests | Imran Rashid | Imran Rashid |
| [SPARK-15927](https://issues.apache.org/jira/browse/SPARK-15927) | Eliminate redundant code in DAGScheduler's getParentStages and getAncestorShuffleDependencies methods. |  Minor | Scheduler | Kay Ousterhout | Kay Ousterhout |
| [SPARK-15926](https://issues.apache.org/jira/browse/SPARK-15926) | Improve readability of DAGScheduler stage creation methods |  Minor | Scheduler | Kay Ousterhout | Kay Ousterhout |
| [SPARK-16104](https://issues.apache.org/jira/browse/SPARK-16104) | Do not creaate CSV writer object for every flush when writing |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-15591](https://issues.apache.org/jira/browse/SPARK-15591) | Paginate Stage Table in Stages tab |  Major | Web UI | Yin Huai | Tao Lin |
| [SPARK-16436](https://issues.apache.org/jira/browse/SPARK-16436) | checkEvaluation should support NaN values |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-16318](https://issues.apache.org/jira/browse/SPARK-16318) | xpath\_int, xpath\_short, xpath\_long, xpath\_float, xpath\_double, xpath\_string, and xpath |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-16403](https://issues.apache.org/jira/browse/SPARK-16403) | Example cleanup and fix minor issues |  Minor | Examples, PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-16510](https://issues.apache.org/jira/browse/SPARK-16510) | Move SparkR test JAR into Spark, include its source code |  Major | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-16287](https://issues.apache.org/jira/browse/SPARK-16287) | Implement str\_to\_map SQL function |  Major | SQL | Reynold Xin | Sandeep Singh |
| [SPARK-16380](https://issues.apache.org/jira/browse/SPARK-16380) | Update SQL examples and programming guide for Python language binding |  Major | Documentation, Examples | Cheng Lian | Miao Wang |
| [SPARK-15590](https://issues.apache.org/jira/browse/SPARK-15590) | Paginate Job Table in Jobs tab |  Major | Web UI | Yin Huai | Tao Lin |
| [SPARK-16524](https://issues.apache.org/jira/browse/SPARK-16524) | Add RowBatch and RowBasedHashMapGenerator |  Major | SQL | Qifan Pu | Qifan Pu |
| [SPARK-16621](https://issues.apache.org/jira/browse/SPARK-16621) | Generate stable SQLs in SQLBuilder |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-15232](https://issues.apache.org/jira/browse/SPARK-15232) | Add subquery SQL building tests to LogicalPlanToSQLSuite |  Minor | SQL | Herman van Hovell | Dongjoon Hyun |
| [SPARK-16800](https://issues.apache.org/jira/browse/SPARK-16800) | Fix Java Examples that throw exception |  Minor | Examples, ML | Bryan Cutler | Bryan Cutler |
| [SPARK-16778](https://issues.apache.org/jira/browse/SPARK-16778) | Fix use of deprecated SQLContext constructor |  Trivial | SQL | holdenk | holdenk |
| [SPARK-16776](https://issues.apache.org/jira/browse/SPARK-16776) | Fix Kafka deprecation warnings |  Minor | DStreams | holdenk | Hyukjin Kwon |
| [SPARK-16774](https://issues.apache.org/jira/browse/SPARK-16774) | Fix use of deprecated TimeStamp constructor (also providing incorrect results) |  Minor | SQL | holdenk | holdenk |
| [SPARK-16734](https://issues.apache.org/jira/browse/SPARK-16734) | Make sure examples in all language bindings are consistent |  Minor | Examples, SQL | Cheng Lian | Cheng Lian |
| [SPARK-16735](https://issues.apache.org/jira/browse/SPARK-16735) | Fail to create a map contains decimal type with literals having different inferred precessions and scales |  Major | . | Liang Ke | Wenchen Fan |
| [SPARK-16814](https://issues.apache.org/jira/browse/SPARK-16814) | Fix deprecated use of ParquetWriter in Parquet test suites |  Minor | SQL | holdenk | holdenk |
| [SPARK-16312](https://issues.apache.org/jira/browse/SPARK-16312) | Docs for Kafka 0.10 consumer integration |  Major | DStreams | Cody Koeninger | Cody Koeninger |
| [SPARK-16421](https://issues.apache.org/jira/browse/SPARK-16421) | Improve output from ML examples |  Major | Examples, ML | Bryan Cutler | Bryan Cutler |
| [SPARK-16779](https://issues.apache.org/jira/browse/SPARK-16779) | Fix unnecessary use of postfix operations |  Major | SQL | holdenk | holdenk |
| [SPARK-16866](https://issues.apache.org/jira/browse/SPARK-16866) | Basic infrastructure for file-based SQL end-to-end tests |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-16579](https://issues.apache.org/jira/browse/SPARK-16579) | Add a spark install function |  Major | SparkR | Shivaram Venkataraman | Junyang Qian |
| [SPARK-17008](https://issues.apache.org/jira/browse/SPARK-17008) | Normalize query results using sorting |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-17009](https://issues.apache.org/jira/browse/SPARK-17009) | Use a new SparkSession for each test case |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-17007](https://issues.apache.org/jira/browse/SPARK-17007) | Move test data files into a test-data folder |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-17011](https://issues.apache.org/jira/browse/SPARK-17011) | Support testing exceptions in queries |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-17015](https://issues.apache.org/jira/browse/SPARK-17015) | group-by-ordinal and order-by-ordinal test cases |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-17018](https://issues.apache.org/jira/browse/SPARK-17018) | literals.sql for testing literal parsing |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-16519](https://issues.apache.org/jira/browse/SPARK-16519) | Handle SparkR RDD generics that create warnings in R CMD check |  Major | SparkR | Shivaram Venkataraman | Felix Cheung |
| [SPARK-16444](https://issues.apache.org/jira/browse/SPARK-16444) | Isotonic Regression wrapper in SparkR |  Major | MLlib, SparkR | Xiangrui Meng | Miao Wang |
| [SPARK-16446](https://issues.apache.org/jira/browse/SPARK-16446) | Gaussian Mixture Model wrapper in SparkR |  Major | MLlib, SparkR | Xiangrui Meng | Yanbo Liang |
| [SPARK-17096](https://issues.apache.org/jira/browse/SPARK-17096) | Fix StreamingQueryListener to return message and stacktrace of actual exception |  Minor | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-16391](https://issues.apache.org/jira/browse/SPARK-16391) | KeyValueGroupedDataset.reduceGroups should support partial aggregation |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-16447](https://issues.apache.org/jira/browse/SPARK-16447) | LDA wrapper in SparkR |  Major | MLlib, SparkR | Xiangrui Meng | Xusen Yin |
| [SPARK-16443](https://issues.apache.org/jira/browse/SPARK-16443) | ALS wrapper in SparkR |  Major | MLlib, SparkR | Xiangrui Meng | Junyang Qian |
| [SPARK-17149](https://issues.apache.org/jira/browse/SPARK-17149) | array.sql for testing array related functions |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-17090](https://issues.apache.org/jira/browse/SPARK-17090) | Make tree aggregation level in linear/logistic regression configurable |  Minor | ML | Seth Hendrickson | Qian Huang |
| [SPARK-17042](https://issues.apache.org/jira/browse/SPARK-17042) | Repl-defined classes cannot be replicated |  Major | Block Manager, Spark Core | Eric Liang | Eric Liang |
| [SPARK-16577](https://issues.apache.org/jira/browse/SPARK-16577) | Add check-cran script to Jenkins |  Major | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-17188](https://issues.apache.org/jira/browse/SPARK-17188) | Moves QuantileSummaries to project catalyst from sql so that it can be used to implement percentile\_approx |  Major | SQL | Sean Zhong | Sean Zhong |
| [SPARK-16508](https://issues.apache.org/jira/browse/SPARK-16508) | Fix documentation warnings found by R CMD check |  Major | SparkR | Shivaram Venkataraman | Junyang Qian |
| [SPARK-16445](https://issues.apache.org/jira/browse/SPARK-16445) | Multilayer Perceptron Classifier wrapper in SparkR |  Major | MLlib, SparkR | Xiangrui Meng | Xin Ren |
| [SPARK-17165](https://issues.apache.org/jira/browse/SPARK-17165) | FileStreamSource should not track the list of seen files indefinitely |  Major | Structured Streaming | Reynold Xin | Peter Lee |
| [SPARK-17235](https://issues.apache.org/jira/browse/SPARK-17235) | MetadataLog should support purging old logs |  Major | Structured Streaming | Peter Lee | Peter Lee |
| [SPARK-17270](https://issues.apache.org/jira/browse/SPARK-17270) | Move object optimization rules into its own file |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-17269](https://issues.apache.org/jira/browse/SPARK-17269) | Move finish analysis stage into its own file |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-17272](https://issues.apache.org/jira/browse/SPARK-17272) | Move subquery optimizer rules into its own file |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-17273](https://issues.apache.org/jira/browse/SPARK-17273) | Move expression optimizer rules into a separate file |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-17274](https://issues.apache.org/jira/browse/SPARK-17274) | Move join optimizer rules into a separate file |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-16581](https://issues.apache.org/jira/browse/SPARK-16581) | Making JVM backend calling functions public |  Major | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-16283](https://issues.apache.org/jira/browse/SPARK-16283) | Implement percentile\_approx SQL function |  Major | SQL | Reynold Xin | Sean Zhong |
| [SPARK-16525](https://issues.apache.org/jira/browse/SPARK-16525) | Enable Row Based HashMap in HashAggregateExec |  Major | SQL | Qifan Pu | Qifan Pu |
| [SPARK-17072](https://issues.apache.org/jira/browse/SPARK-17072) | generate table level stats:stats generation/storing/loading |  Major | Optimizer | Ron Hu | Zhenhua Wang |
| [SPARK-17372](https://issues.apache.org/jira/browse/SPARK-17372) | Running a file stream on a directory with partitioned subdirs throw NotSerializableException/StackOverflowError |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-15453](https://issues.apache.org/jira/browse/SPARK-15453) | FileSourceScanExec to extract \`outputOrdering\` information |  Minor | SQL | Tejas Patil | Tejas Patil |
| [SPARK-17586](https://issues.apache.org/jira/browse/SPARK-17586) | Use Static member not via instance reference |  Trivial | Build | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-17163](https://issues.apache.org/jira/browse/SPARK-17163) | Merge MLOR into a single LOR interface |  Major | ML, MLlib | Seth Hendrickson | Seth Hendrickson |
| [SPARK-17513](https://issues.apache.org/jira/browse/SPARK-17513) | StreamExecution should discard unneeded metadata |  Major | Structured Streaming | Frederick Reiss | Frederick Reiss |
| [SPARK-15698](https://issues.apache.org/jira/browse/SPARK-15698) | Ability to remove old metadata for structure streaming MetadataLog |  Major | Structured Streaming | Saisai Shao | Saisai Shao |
| [SPARK-16757](https://issues.apache.org/jira/browse/SPARK-16757) | Set up caller context to HDFS and Yarn |  Major | YARN | Weiqing Yang | Weiqing Yang |
| [SPARK-16777](https://issues.apache.org/jira/browse/SPARK-16777) | Parquet schema converter depends on deprecated APIs |  Major | SQL | holdenk | Hyukjin Kwon |
| [SPARK-17699](https://issues.apache.org/jira/browse/SPARK-17699) | from\_json function for parsing json Strings into Structs |  Critical | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-15353](https://issues.apache.org/jira/browse/SPARK-15353) | Making peer selection for block replication pluggable |  Major | Block Manager, Spark Core | Shubham Chopra | Shubham Chopra |
| [SPARK-17073](https://issues.apache.org/jira/browse/SPARK-17073) | generate basic stats for column |  Major | Optimizer | Ron Hu | Zhenhua Wang |
| [SPARK-17346](https://issues.apache.org/jira/browse/SPARK-17346) | Kafka 0.10 support in Structured Streaming |  Major | Structured Streaming | Frederick Reiss | Shixiong Zhu |
| [SPARK-17800](https://issues.apache.org/jira/browse/SPARK-17800) | Introduce InterfaceStability annotation definition |  Major | Build | Reynold Xin | Reynold Xin |
| [SPARK-17830](https://issues.apache.org/jira/browse/SPARK-17830) | Annotate Spark SQL public APIs with InterfaceStability |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-17864](https://issues.apache.org/jira/browse/SPARK-17864) | Mark data type APIs as stable, rather than DeveloperApi |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-17790](https://issues.apache.org/jira/browse/SPARK-17790) | Support for parallelizing R data.frame larger than 2GB |  Major | SparkR | Hossein Falaki | Hossein Falaki |
| [SPARK-17827](https://issues.apache.org/jira/browse/SPARK-17827) | StatisticsColumnSuite failures on big endian platforms |  Major | SQL | Pete Robbins | Pete Robbins |
| [SPARK-17834](https://issues.apache.org/jira/browse/SPARK-17834) | Fetch the earliest offsets manually in KafkaSource instead of counting on KafkaConsumer |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-17731](https://issues.apache.org/jira/browse/SPARK-17731) | Metrics for Structured Streaming |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-17927](https://issues.apache.org/jira/browse/SPARK-17927) | Remove dead code in WriterContainer |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-17925](https://issues.apache.org/jira/browse/SPARK-17925) | Break fileSourceInterfaces.scala into multiple pieces |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-17900](https://issues.apache.org/jira/browse/SPARK-17900) | Mark the following Spark SQL APIs as stable |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-17946](https://issues.apache.org/jira/browse/SPARK-17946) | Python crossJoin API similar to Scala |  Major | . | Srinath | Srinath |
| [SPARK-16980](https://issues.apache.org/jira/browse/SPARK-16980) | Load only catalog table partition metadata required to answer a query |  Major | SQL | Michael Allman | Michael Allman |
| [SPARK-17974](https://issues.apache.org/jira/browse/SPARK-17974) | Refactor FileCatalog classes to simplify the inheritance tree |  Minor | SQL | Eric Liang | Eric Liang |
| [SPARK-17980](https://issues.apache.org/jira/browse/SPARK-17980) | Fix refreshByPath for converted Hive tables |  Minor | SQL | Eric Liang | Eric Liang |
| [SPARK-18012](https://issues.apache.org/jira/browse/SPARK-18012) | Simplify WriterContainer code |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-17991](https://issues.apache.org/jira/browse/SPARK-17991) | Enable metastore partition pruning for unconverted hive tables by default |  Major | SQL | Eric Liang | Eric Liang |
| [SPARK-15780](https://issues.apache.org/jira/browse/SPARK-15780) | Support mapValues on KeyValueGroupedDataset |  Minor | SQL | koert kuipers | Koert Kuipers |
| [SPARK-18021](https://issues.apache.org/jira/browse/SPARK-18021) | Refactor file name specification for data sources |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-17926](https://issues.apache.org/jira/browse/SPARK-17926) | Add methods to convert StreamingQueryStatus to json |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-17812](https://issues.apache.org/jira/browse/SPARK-17812) | More granular control of starting offsets (assign) |  Major | Structured Streaming | Michael Armbrust | Cody Koeninger |
| [SPARK-18042](https://issues.apache.org/jira/browse/SPARK-18042) | OutputWriter needs to return the path of the file written |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-18013](https://issues.apache.org/jira/browse/SPARK-18013) | R cross join API similar to python and Scala |  Major | . | Srinath | Felix Cheung |
| [SPARK-17994](https://issues.apache.org/jira/browse/SPARK-17994) | Add back a file status cache for catalog tables |  Major | SQL | Eric Liang | Eric Liang |
| [SPARK-18026](https://issues.apache.org/jira/browse/SPARK-18026) | should not always lowercase partition columns of partition spec in parser |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18019](https://issues.apache.org/jira/browse/SPARK-18019) | Log instrumentation in GBTs |  Major | ML, MLlib | Seth Hendrickson | Seth Hendrickson |
| [SPARK-14300](https://issues.apache.org/jira/browse/SPARK-14300) | Scala MLlib examples code merge and clean up |  Minor | Examples | Xusen Yin | Xin Ren |
| [SPARK-16963](https://issues.apache.org/jira/browse/SPARK-16963) | Change Source API so that sources do not need to keep unbounded state |  Major | Structured Streaming | Frederick Reiss | Frederick Reiss |
| [SPARK-17157](https://issues.apache.org/jira/browse/SPARK-17157) | Add multiclass logistic regression SparkR Wrapper |  Major | SparkR | Miao Wang | Miao Wang |
| [SPARK-17813](https://issues.apache.org/jira/browse/SPARK-17813) | Maximum data per trigger |  Major | Structured Streaming | Michael Armbrust | Cody Koeninger |
| [SPARK-17970](https://issues.apache.org/jira/browse/SPARK-17970) | Use metastore for managing filesource table partitions as well |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18109](https://issues.apache.org/jira/browse/SPARK-18109) | Log instrumentation in GMM |  Major | ML | zhengruifeng | zhengruifeng |
| [SPARK-18164](https://issues.apache.org/jira/browse/SPARK-18164) | ForeachSink should fail the Spark job if \`process\` throws exception |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18146](https://issues.apache.org/jira/browse/SPARK-18146) | Avoid using Union to chain together create table and repair partition commands |  Minor | SQL | Eric Liang | Eric Liang |
| [SPARK-16137](https://issues.apache.org/jira/browse/SPARK-16137) | Random Forest wrapper in SparkR |  Major | ML, SparkR | Kai Jiang | Felix Cheung |
| [SPARK-18143](https://issues.apache.org/jira/browse/SPARK-18143) | History Server is broken because of the refactoring work in Structured Streaming |  Blocker | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18087](https://issues.apache.org/jira/browse/SPARK-18087) | Optimize insert to not require REPAIR TABLE |  Major | SQL | Eric Liang | Eric Liang |
| [SPARK-18024](https://issues.apache.org/jira/browse/SPARK-18024) | Introduce an internal commit protocol API along with OutputCommitter implementation |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-17764](https://issues.apache.org/jira/browse/SPARK-17764) | to\_json function for parsing Structs to json Strings |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-16000](https://issues.apache.org/jira/browse/SPARK-16000) | Make model loading backward compatible with saved models using old vector columns |  Major | ML, MLlib | Xiangrui Meng | yuhao yang |
| [SPARK-18025](https://issues.apache.org/jira/browse/SPARK-18025) | Port streaming to use the commit protocol API |  Major | SQL, Structured Streaming | Reynold Xin | Reynold Xin |
| [SPARK-17992](https://issues.apache.org/jira/browse/SPARK-17992) | HiveClient.getPartitionsByFilter throws an exception for some unsupported filters when hive.metastore.try.direct.sql=false |  Major | SQL | Michael Allman | Michael Allman |
| [SPARK-17475](https://issues.apache.org/jira/browse/SPARK-17475) | HDFSMetadataLog should not leak CRC files |  Major | Structured Streaming | Frederick Reiss | Frederick Reiss |
| [SPARK-18183](https://issues.apache.org/jira/browse/SPARK-18183) | INSERT OVERWRITE TABLE ... PARTITION will overwrite the entire Datasource table instead of just the specified partition |  Major | SQL | Eric Liang | Eric Liang |
| [SPARK-18184](https://issues.apache.org/jira/browse/SPARK-18184) | INSERT [INTO\|OVERWRITE] TABLE ... PARTITION for Datasource tables cannot handle partitions with custom locations |  Major | SQL | Eric Liang | Eric Liang |
| [SPARK-18192](https://issues.apache.org/jira/browse/SPARK-18192) | Support all file formats in structured streaming |  Major | SQL, Structured Streaming | Reynold Xin | Reynold Xin |
| [SPARK-18244](https://issues.apache.org/jira/browse/SPARK-18244) | Rename partitionProviderIsHive -\> tracksPartitionsInCatalog |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-17138](https://issues.apache.org/jira/browse/SPARK-17138) | Python API for multinomial logistic regression |  Major | ML | Seth Hendrickson | Weichen Xu |
| [SPARK-18260](https://issues.apache.org/jira/browse/SPARK-18260) | from\_json can throw a better exception when it can't find the column or be nullSafe |  Blocker | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-17183](https://issues.apache.org/jira/browse/SPARK-17183) | put hive serde table schema to table properties like data source table |  Blocker | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17983](https://issues.apache.org/jira/browse/SPARK-17983) | Can't filter over mixed case parquet columns of converted Hive tables |  Critical | SQL | Eric Liang | Wenchen Fan |
| [SPARK-18101](https://issues.apache.org/jira/browse/SPARK-18101) | ExternalCatalogSuite should test with mixed case fields |  Major | SQL | Eric Liang | Wenchen Fan |
| [SPARK-17964](https://issues.apache.org/jira/browse/SPARK-17964) | Enable SparkR with Mesos client mode |  Minor | SparkR | Sun Rui | Susan X. Huynh |
| [SPARK-18173](https://issues.apache.org/jira/browse/SPARK-18173) | data source tables should support truncating partition |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-16904](https://issues.apache.org/jira/browse/SPARK-16904) | Removal of Hive Built-in Hash Functions and TestHiveFunctionRegistry |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-18283](https://issues.apache.org/jira/browse/SPARK-18283) | Add a test to make sure the default starting offset is latest |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-18295](https://issues.apache.org/jira/browse/SPARK-18295) | Match up to\_json to from\_json in null safety |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-18217](https://issues.apache.org/jira/browse/SPARK-18217) | Disallow creating permanent views based on temporary views or UDFs |  Major | SQL | Reynold Xin | Xiao Li |
| [SPARK-18191](https://issues.apache.org/jira/browse/SPARK-18191) | Port RDD API to use commit protocol |  Major | Spark Core | Reynold Xin | Jiang Xingbo |
| [SPARK-18239](https://issues.apache.org/jira/browse/SPARK-18239) | Gradient Boosted Tree wrapper in SparkR |  Major | ML, SparkR | Felix Cheung | Felix Cheung |
| [SPARK-18333](https://issues.apache.org/jira/browse/SPARK-18333) | Revert hacks in parquet and orc reader to support case insensitive resolution |  Major | SQL | Eric Liang | Eric Liang |
| [SPARK-17990](https://issues.apache.org/jira/browse/SPARK-17990) | ALTER TABLE ... ADD PARTITION does not play nice with mixed-case partition column names |  Major | SQL | Michael Allman | Wenchen Fan |
| [SPARK-18302](https://issues.apache.org/jira/browse/SPARK-18302) | correct several partition related behaviours of ExternalCatalog |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18185](https://issues.apache.org/jira/browse/SPARK-18185) | Should fix INSERT OVERWRITE TABLE of Datasource tables with dynamic partitions |  Major | SQL | Eric Liang | Eric Liang |
| [SPARK-18264](https://issues.apache.org/jira/browse/SPARK-18264) | Build and package R vignettes |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-18060](https://issues.apache.org/jira/browse/SPARK-18060) | Avoid unnecessary standardization in multinomial logistic regression training |  Major | ML | Seth Hendrickson | Seth Hendrickson |
| [SPARK-18416](https://issues.apache.org/jira/browse/SPARK-18416) | State Store leaks temporary files |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-18440](https://issues.apache.org/jira/browse/SPARK-18440) | Fix FileStreamSink with aggregation + watermark + append mode |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-18423](https://issues.apache.org/jira/browse/SPARK-18423) | ReceiverTracker should close checkpoint dir when stopped even if it was not started |  Major | DStreams | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-18459](https://issues.apache.org/jira/browse/SPARK-18459) | Rename triggerId to batchId in StreamingQueryStatus.triggerDetails |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-18461](https://issues.apache.org/jira/browse/SPARK-18461) | Improve docs on StreamingQueryListener and StreamingQuery.status |  Major | Documentation, Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-1267](https://issues.apache.org/jira/browse/SPARK-1267) | Add a pip installer for PySpark |  Minor | PySpark | Prabin Banka | holdenk |
| [SPARK-18129](https://issues.apache.org/jira/browse/SPARK-18129) | Sign pip artifacts |  Major | PySpark | holdenk | holdenk |
| [SPARK-18321](https://issues.apache.org/jira/browse/SPARK-18321) | ML 2.1 QA: API: Java compatibility, docs |  Blocker | Documentation, Java API, ML, MLlib | Joseph K. Bradley | Seth Hendrickson |
| [SPARK-18422](https://issues.apache.org/jira/browse/SPARK-18422) | Fix wholeTextFiles test to pass on Windows in JavaAPISuite |  Minor | Spark Core, Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-18477](https://issues.apache.org/jira/browse/SPARK-18477) | Enable interrupts for HDFS in HDFSMetadataLog |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18505](https://issues.apache.org/jira/browse/SPARK-18505) | Simplify AnalyzeColumnCommand |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-18445](https://issues.apache.org/jira/browse/SPARK-18445) | Fix \`Note:\`/\`NOTE:\`/\`Note that\` across Scala/Java API documentation |  Minor | Documentation | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-18514](https://issues.apache.org/jira/browse/SPARK-18514) | Fix \`Note:\`/\`NOTE:\`/\`Note that\` across R API documentation |  Trivial | Documentation | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-18447](https://issues.apache.org/jira/browse/SPARK-18447) | Fix \`Note:\`/\`NOTE:\`/\`Note that\` across Python API documentation |  Minor | Documentation | Aditya | Hyukjin Kwon |
| [SPARK-18507](https://issues.apache.org/jira/browse/SPARK-18507) | Major performance regression in SHOW PARTITIONS on partitioned Hive tables |  Critical | SQL | Michael Allman | Wenchen Fan |
| [SPARK-18545](https://issues.apache.org/jira/browse/SPARK-18545) | Verify number of hive client RPCs in PartitionedTablePerfStatsSuite |  Minor | SQL | Eric Liang | Eric Liang |
| [SPARK-18522](https://issues.apache.org/jira/browse/SPARK-18522) | Create explicit contract for column stats serialization |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-16282](https://issues.apache.org/jira/browse/SPARK-16282) | Implement percentile SQL function |  Major | SQL | Reynold Xin | Jiang Xingbo |
| [SPARK-18320](https://issues.apache.org/jira/browse/SPARK-18320) | ML 2.1 QA: API: Python API coverage |  Blocker | Documentation, ML, PySpark | Joseph K. Bradley | Seth Hendrickson |
| [SPARK-18460](https://issues.apache.org/jira/browse/SPARK-18460) | Include triggerDetails in StreamingQueryStatus.json |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-18544](https://issues.apache.org/jira/browse/SPARK-18544) | Append with df.saveAsTable writes data to wrong location |  Blocker | SQL | Eric Liang | Eric Liang |
| [SPARK-17965](https://issues.apache.org/jira/browse/SPARK-17965) | Enable SparkR with Mesos cluster mode |  Major | SparkR | Sun Rui | Susan X. Huynh |
| [SPARK-18319](https://issues.apache.org/jira/browse/SPARK-18319) | ML, Graph 2.1 QA: API: Experimental, DeveloperApi, final, sealed audit |  Blocker | Documentation, GraphX, ML, MLlib | Joseph K. Bradley | yuhao yang |
| [SPARK-18145](https://issues.apache.org/jira/browse/SPARK-18145) | Update documentation for hive partition management in 2.1 |  Major | SQL | Eric Liang | Eric Liang |
| [SPARK-18318](https://issues.apache.org/jira/browse/SPARK-18318) | ML, Graph 2.1 QA: API: New Scala APIs, docs |  Blocker | Documentation, GraphX, ML, MLlib | Joseph K. Bradley | Yanbo Liang |
| [SPARK-18635](https://issues.apache.org/jira/browse/SPARK-18635) | Partition name/values not escaped correctly in some cases |  Critical | SQL | Eric Liang | Eric Liang |
| [SPARK-18639](https://issues.apache.org/jira/browse/SPARK-18639) | Build only a single pip package |  Major | Build | Reynold Xin | Reynold Xin |
| [SPARK-18679](https://issues.apache.org/jira/browse/SPARK-18679) | Regression in file listing performance |  Blocker | SQL | Eric Liang | Eric Liang |
| [SPARK-18659](https://issues.apache.org/jira/browse/SPARK-18659) | Incorrect behaviors in overwrite table for datasource tables |  Blocker | SQL | Eric Liang | Eric Liang |
| [SPARK-18324](https://issues.apache.org/jira/browse/SPARK-18324) | ML, Graph 2.1 QA: Programming guide update and migration guide |  Critical | Documentation, GraphX, ML, MLlib | Joseph K. Bradley | Yanbo Liang |
| [SPARK-18685](https://issues.apache.org/jira/browse/SPARK-18685) | Fix all tests in ExecutorClassLoaderSuite to pass on Windows |  Minor | Spark Shell, Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-18582](https://issues.apache.org/jira/browse/SPARK-18582) | Whitelist LogicalPlan operators allowed in correlated subqueries |  Major | SQL | Nattavut Sutyanyong | Nattavut Sutyanyong |
| [SPARK-18661](https://issues.apache.org/jira/browse/SPARK-18661) | Creating a partitioned datasource table should not scan all files for table |  Blocker | SQL | Eric Liang | Eric Liang |
| [SPARK-18652](https://issues.apache.org/jira/browse/SPARK-18652) | Include the example data and third-party licenses in pyspark package |  Minor | PySpark | Shuai Lin | Shuai Lin |
| [SPARK-18326](https://issues.apache.org/jira/browse/SPARK-18326) | SparkR 2.1 QA: New R APIs and API docs |  Blocker | Documentation, SparkR | Joseph K. Bradley | Yanbo Liang |
| [SPARK-18323](https://issues.apache.org/jira/browse/SPARK-18323) | Update MLlib, GraphX websites for 2.1 |  Critical | Documentation, GraphX, ML, MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-18815](https://issues.apache.org/jira/browse/SPARK-18815) | NPE when collecting column stats for string/binary column having only null values |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-18325](https://issues.apache.org/jira/browse/SPARK-18325) | SparkR 2.1 QA: Check for new R APIs requiring example code |  Major | Documentation, SparkR | Joseph K. Bradley | Yanbo Liang |
| [SPARK-18332](https://issues.apache.org/jira/browse/SPARK-18332) | SparkR 2.1 QA: Programming guide, migration guide, vignettes updates |  Critical | Documentation, SparkR | Joseph K. Bradley | Xiangrui Meng |
| [SPARK-14480](https://issues.apache.org/jira/browse/SPARK-14480) | Remove meaningless StringIteratorReader for CSV data source for better performance |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-15254](https://issues.apache.org/jira/browse/SPARK-15254) | Improve ML pipeline Cross Validation Scaladoc & PyDoc |  Minor | Documentation, ML | holdenk | Krishna Kalyan |
| [SPARK-16761](https://issues.apache.org/jira/browse/SPARK-16761) | Fix doc link in docs/ml-guide.md |  Trivial | MLlib | Dapeng Sun | Dapeng Sun |
| [SPARK-16816](https://issues.apache.org/jira/browse/SPARK-16816) | Add documentation to create JavaSparkContext from SparkSession |  Trivial | Documentation | sandeep purohit | sandeep purohit |
| [SPARK-16911](https://issues.apache.org/jira/browse/SPARK-16911) | Remove migrating to a Spark 1.x version in programming guide documentation |  Minor | Documentation | Shivansh | Shivansh |
| [SPARK-17089](https://issues.apache.org/jira/browse/SPARK-17089) | Remove link of api doc for mapReduceTriplets because its removed from api. |  Trivial | Documentation | sandeep purohit | sandeep purohit |
| [SPARK-9288](https://issues.apache.org/jira/browse/SPARK-9288) | Improve test speed |  Major | Build, Tests | Reynold Xin | Josh Rosen |
| [SPARK-17087](https://issues.apache.org/jira/browse/SPARK-17087) | Make Spark on Mesos honor port restrictions - Documentation |  Trivial | Mesos | Stavros Kontopoulos | Stavros Kontopoulos |
| [SPARK-17085](https://issues.apache.org/jira/browse/SPARK-17085) | Documentation and actual code differs - Unsupported Operations |  Minor | Structured Streaming | Samritti | Jagadeesan A S |
| [SPARK-17242](https://issues.apache.org/jira/browse/SPARK-17242) | Update links of external dstream projects |  Major | Documentation | Shixiong Zhu | Shixiong Zhu |
| [SPARK-16619](https://issues.apache.org/jira/browse/SPARK-16619) | Add shuffle service metrics entry in monitoring docs |  Trivial | Documentation | YangyangLiu | YangyangLiu |
| [SPARK-17298](https://issues.apache.org/jira/browse/SPARK-17298) | Require explicit CROSS join for cartesian products by default |  Minor | SQL | Srinath | Srinath |
| [SPARK-17561](https://issues.apache.org/jira/browse/SPARK-17561) | DataFrameWriter documentation formatting problems |  Trivial | SQL | Aseem Bansal | Sean Owen |
| [SPARK-17575](https://issues.apache.org/jira/browse/SPARK-17575) | Make correction in configuration documentation table tags |  Trivial | Documentation | sandeep purohit | sandeep purohit |
| [SPARK-17736](https://issues.apache.org/jira/browse/SPARK-17736) | Update R README for rmarkdown, pandoc |  Trivial | Documentation, SparkR | Joseph K. Bradley | Jagadeesan A S |
| [SPARK-17718](https://issues.apache.org/jira/browse/SPARK-17718) | Make loss function formulation label note clearer in MLlib docs |  Trivial | . | Tobi Bosede | Sean Owen |
| [SPARK-17239](https://issues.apache.org/jira/browse/SPARK-17239) | User guide for multiclass logistic regression in spark.ml |  Major | Documentation | Joseph K. Bradley | Seth Hendrickson |
| [SPARK-17803](https://issues.apache.org/jira/browse/SPARK-17803) | Docker integration tests don't run with "Docker for Mac" |  Minor | Tests | Christian Kadner | Christian Kadner |
| [SPARK-17828](https://issues.apache.org/jira/browse/SPARK-17828) | Remove obsolete generate-changelist.py |  Trivial | Build | Adam Roberts | Adam Roberts |
| [SPARK-17840](https://issues.apache.org/jira/browse/SPARK-17840) | Add some pointers for wiki/CONTRIBUTING.md in README.md and some warnings in PULL\_REQUEST\_TEMPLATE |  Trivial | Documentation | Hyukjin Kwon | Sean Owen |
| [SPARK-17883](https://issues.apache.org/jira/browse/SPARK-17883) | Possible typo in comments of Row.scala |  Trivial | SQL | Weiluo Ren | Weiluo Ren |
| [SPARK-17953](https://issues.apache.org/jira/browse/SPARK-17953) | Fix typo in SparkSession scaladoc |  Trivial | Documentation | Tae Jun Kim | Tae Jun Kim |
| [SPARK-17947](https://issues.apache.org/jira/browse/SPARK-17947) | Document the impact of \`spark.sql.debug\` |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-17898](https://issues.apache.org/jira/browse/SPARK-17898) | --repositories  needs username and password |  Trivial | . | lichenglin | Sean Owen |
| [SPARK-18104](https://issues.apache.org/jira/browse/SPARK-18104) | Don't build KafkaSource doc |  Major | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-17770](https://issues.apache.org/jira/browse/SPARK-17770) | Make ObjectType SQL Type Public |  Major | SQL | Aleksander Eskilson | Aleksander Eskilson |
| [SPARK-17919](https://issues.apache.org/jira/browse/SPARK-17919) | Make timeout to RBackend configurable in SparkR |  Major | SparkR | Hossein Falaki | Hossein Falaki |
| [SPARK-16442](https://issues.apache.org/jira/browse/SPARK-16442) | MLlib wrappers for SparkR 2.1 |  Major | MLlib, SparkR | Xiangrui Meng | Xiangrui Meng |
| [SPARK-15944](https://issues.apache.org/jira/browse/SPARK-15944) | Make spark.ml package backward compatible with spark.mllib vectors |  Critical | ML, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-17895](https://issues.apache.org/jira/browse/SPARK-17895) | Improve documentation of "rowsBetween" and "rangeBetween" |  Minor | PySpark, SparkR, SQL | Weiluo Ren | Weiluo Ren |
| [SPARK-13417](https://issues.apache.org/jira/browse/SPARK-13417) | SQL subquery support |  Major | SQL | Reynold Xin |  |
| [SPARK-17963](https://issues.apache.org/jira/browse/SPARK-17963) | Add examples (extend) in each function and improve documentation |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-18426](https://issues.apache.org/jira/browse/SPARK-18426) | Python Documentation Fix for Structured Streaming Programming Guide |  Minor | Documentation | Denny Lee | Denny Lee |
| [SPARK-18432](https://issues.apache.org/jira/browse/SPARK-18432) | Fix HDFS block size in programming guide |  Trivial | Documentation | Noritaka Sekiyama | Noritaka Sekiyama |
| [SPARK-17692](https://issues.apache.org/jira/browse/SPARK-17692) | Document ML/MLlib behavior changes in Spark 2.1 |  Major | ML, MLlib | Yanbo Liang | Yanbo Liang |
| [SPARK-18081](https://issues.apache.org/jira/browse/SPARK-18081) | Locality Sensitive Hashing (LSH) User Guide |  Major | Documentation, ML | Joseph K. Bradley | Yun Ni |
| [SPARK-18279](https://issues.apache.org/jira/browse/SPARK-18279) | ML programming guide should have R examples |  Major | ML, SparkR | Felix Cheung | Yanbo Liang |
| [SPARK-18633](https://issues.apache.org/jira/browse/SPARK-18633) | Add multiclass logistic regression summary python example and document |  Minor | ML | Miao Wang | Miao Wang |
| [SPARK-18705](https://issues.apache.org/jira/browse/SPARK-18705) | Docs for one-pass solver for linear regression with L1 and elastic-net penalties |  Minor | Documentation, ML | Yanbo Liang | Seth Hendrickson |
| [SPARK-18812](https://issues.apache.org/jira/browse/SPARK-18812) | Clarify "Spark ML" |  Major | ML, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-18793](https://issues.apache.org/jira/browse/SPARK-18793) | SparkR vignette update: random forest |  Major | Documentation, SparkR | Joseph K. Bradley | Xiangrui Meng |
| [SPARK-18794](https://issues.apache.org/jira/browse/SPARK-18794) | SparkR vignette update: gbt |  Major | Documentation, SparkR | Joseph K. Bradley | Xiangrui Meng |
| [SPARK-18795](https://issues.apache.org/jira/browse/SPARK-18795) | SparkR vignette update: ksTest |  Major | Documentation, SparkR | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-18865](https://issues.apache.org/jira/browse/SPARK-18865) | SparkR vignettes MLP and LDA updates |  Major | SparkR | Miao Wang | Miao Wang |
| [SPARK-18849](https://issues.apache.org/jira/browse/SPARK-18849) | Vignettes final checks for Spark 2.1 |  Major | Documentation, SparkR | Xiangrui Meng | Felix Cheung |
| [SPARK-18329](https://issues.apache.org/jira/browse/SPARK-18329) | Spark R 2.1 QA umbrella |  Critical | Documentation, SparkR | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-16383](https://issues.apache.org/jira/browse/SPARK-16383) | Remove \`SessionState.executeSql\` |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-16477](https://issues.apache.org/jira/browse/SPARK-16477) | Bump master version to 2.1.0-SNAPSHOT |  Major | Build | Reynold Xin | Reynold Xin |
| [SPARK-16637](https://issues.apache.org/jira/browse/SPARK-16637) | Support Mesos Unified Containerizer |  Major | Mesos | Michael Gummelt | Michael Gummelt |
| [SPARK-16945](https://issues.apache.org/jira/browse/SPARK-16945) | Fix Java Lint errors |  Trivial | Build | Weiqing Yang | Weiqing Yang |
| [SPARK-16923](https://issues.apache.org/jira/browse/SPARK-16923) | Mesos cluster scheduler duplicates config vars by setting them in the environment and as --conf |  Minor | Mesos | Michael Gummelt | Michael Gummelt |
| [SPARK-16967](https://issues.apache.org/jira/browse/SPARK-16967) | Collect Mesos support code into a module/profile |  Critical | Mesos, Spark Core | Sean Owen | Michael Gummelt |
| [SPARK-17320](https://issues.apache.org/jira/browse/SPARK-17320) | Spark Mesos module not building on PRs |  Minor | Mesos | Michael Gummelt | Michael Gummelt |
| [SPARK-17675](https://issues.apache.org/jira/browse/SPARK-17675) | Add Blacklisting of Executors & Nodes within one TaskSet |  Major | Scheduler | Imran Rashid | Imran Rashid |
| [SPARK-16881](https://issues.apache.org/jira/browse/SPARK-16881) | Migrate Mesos configs to use ConfigEntry |  Minor | Mesos | Michael Gummelt | Sandeep Singh |
| [SPARK-18138](https://issues.apache.org/jira/browse/SPARK-18138) | More officially deprecate support for Python 2.6, Java 7, and Scala 2.10 |  Blocker | . | Reynold Xin | Sean Owen |


