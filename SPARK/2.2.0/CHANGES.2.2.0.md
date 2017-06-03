
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

## Release 2.2.0 - Unreleased (as of 2017-06-03)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-18715](https://issues.apache.org/jira/browse/SPARK-18715) | Fix wrong AIC calculation in Binomial GLM |  Major | ML | Wayne Zhang | Wayne Zhang |
| [SPARK-16845](https://issues.apache.org/jira/browse/SPARK-16845) | org.apache.spark.sql.catalyst.expressions.GeneratedClass$SpecificOrdering" grows beyond 64 KB |  Major | SQL | hejie | Liwei Lin |
| [SPARK-18917](https://issues.apache.org/jira/browse/SPARK-18917) | Dataframe - Time Out Issues / Taking long time in append mode on object stores |  Minor | EC2, SQL, YARN | Anbu Cheeralan | Reynold Xin |
| [SPARK-18929](https://issues.apache.org/jira/browse/SPARK-18929) | Add Tweedie distribution in GLM |  Major | ML | Wayne Zhang | Wayne Zhang |
| [SPARK-19407](https://issues.apache.org/jira/browse/SPARK-19407) | defaultFS is used FileSystem.get instead of getting it from uri scheme |  Major | Structured Streaming | Amit Assudani | Genmao Yu |
| [SPARK-19488](https://issues.apache.org/jira/browse/SPARK-19488) | CSV infer schema does not take into account Inf,-Inf,NaN |  Major | Spark Core | Shivam Dalmia | Song Jun |
| [SPARK-19115](https://issues.apache.org/jira/browse/SPARK-19115) | SparkSQL unsupports the command " create external table if not exist  new\_tbl like old\_tbl location '/warehouse/new\_tbl' " |  Major | SQL | Xiaochen Ouyang | Xiaochen Ouyang |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-17711](https://issues.apache.org/jira/browse/SPARK-17711) | Compress rolled executor logs |  Major | . | Yu Peng | Yu Peng |
| [SPARK-18702](https://issues.apache.org/jira/browse/SPARK-18702) | input\_file\_block\_start and input\_file\_block\_length function |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-18775](https://issues.apache.org/jira/browse/SPARK-18775) | Limit the max number of records written per file |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-18234](https://issues.apache.org/jira/browse/SPARK-18234) | Update mode in structured streaming |  Critical | Structured Streaming | Michael Armbrust | Tathagata Das |
| [SPARK-18537](https://issues.apache.org/jira/browse/SPARK-18537) | Add a REST api to spark streaming |  Major | Web UI | Peter Chan | Xing Shi |
| [SPARK-17645](https://issues.apache.org/jira/browse/SPARK-17645) | Add feature selector methods based on: False Discovery Rate (FDR) and Family Wise Error rate (FWE) |  Minor | ML, MLlib | Peng Meng | Peng Meng |
| [SPARK-14975](https://issues.apache.org/jira/browse/SPARK-14975) | Predicted Probability per training instance for Gradient Boosted Trees |  Minor | ML | Partha Talukder | Ilya Matiach |
| [SPARK-14709](https://issues.apache.org/jira/browse/SPARK-14709) | spark.ml API for linear SVM |  Major | ML | Joseph K. Bradley | yuhao yang |
| [SPARK-19139](https://issues.apache.org/jira/browse/SPARK-19139) | AES-based authentication mechanism for Spark |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-18821](https://issues.apache.org/jira/browse/SPARK-18821) | Bisecting k-means wrapper in SparkR |  Major | ML, SparkR | Felix Cheung | Miao Wang |
| [SPARK-18788](https://issues.apache.org/jira/browse/SPARK-18788) | Add getNumPartitions() to SparkR |  Minor | SparkR | Raela Wang | Felix Cheung |
| [SPARK-19336](https://issues.apache.org/jira/browse/SPARK-19336) | LinearSVC Python API |  Major | ML, PySpark | Joseph K. Bradley | Miao Wang |
| [SPARK-19495](https://issues.apache.org/jira/browse/SPARK-19495) | Make SQLConf slightly more extensible |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-18682](https://issues.apache.org/jira/browse/SPARK-18682) | Batch Source for Kafka |  Major | SQL, Structured Streaming | Michael Armbrust | Tyson Condie |
| [SPARK-16554](https://issues.apache.org/jira/browse/SPARK-16554) | Spark should kill executors when they are blacklisted |  Major | Scheduler | Imran Rashid | Jose Soltren |
| [SPARK-19549](https://issues.apache.org/jira/browse/SPARK-19549) | Allow providing reasons for stage/job cancelling |  Minor | Spark Core | Ala Luszczak | Ala Luszczak |
| [SPARK-19456](https://issues.apache.org/jira/browse/SPARK-19456) | Add LinearSVC R API |  Major | SparkR | Miao Wang | Miao Wang |
| [SPARK-19607](https://issues.apache.org/jira/browse/SPARK-19607) | Finding QueryExecution that matches provided executionId |  Major | SQL | Ala Luszczak | Ala Luszczak |
| [SPARK-18080](https://issues.apache.org/jira/browse/SPARK-18080) | Locality Sensitive Hashing (LSH) Python API |  Major | ML, PySpark | Joseph K. Bradley | Yun Ni |
| [SPARK-18352](https://issues.apache.org/jira/browse/SPARK-18352) | Parse normal, multi-line JSON files (not just JSON Lines) |  Major | SQL | Reynold Xin | Nathan Howell |
| [SPARK-19669](https://issues.apache.org/jira/browse/SPARK-19669) | Open up visibility for sharedState, sessionState, and a few other functions |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-16122](https://issues.apache.org/jira/browse/SPARK-16122) | Spark History Server REST API missing an environment endpoint per application |  Minor | Documentation, Web UI | Neelesh Srinivas Salian | Genmao Yu |
| [SPARK-19497](https://issues.apache.org/jira/browse/SPARK-19497) | dropDuplicates with watermark |  Critical | Structured Streaming | Michael Armbrust | Shixiong Zhu |
| [SPARK-19633](https://issues.apache.org/jira/browse/SPARK-19633) | FileSource read from FileSink |  Critical | Structured Streaming | Michael Armbrust | Liwei Lin |
| [SPARK-19535](https://issues.apache.org/jira/browse/SPARK-19535) | ALSModel recommendAll analogs |  Major | ML | Joseph K. Bradley | Sue Ann Hong |
| [SPARK-19719](https://issues.apache.org/jira/browse/SPARK-19719) | Structured Streaming write to Kafka |  Major | Structured Streaming | Tyson Condie | Tyson Condie |
| [SPARK-19637](https://issues.apache.org/jira/browse/SPARK-19637) | add to\_json APIs to SQL |  Major | SQL | Burak Yavuz | Takeshi Yamamuro |
| [SPARK-17629](https://issues.apache.org/jira/browse/SPARK-17629) | Add local version of Word2Vec findSynonyms for spark.ml |  Minor | ML | Asher Krim | Asher Krim |
| [SPARK-19702](https://issues.apache.org/jira/browse/SPARK-19702) | Increasse refuse\_seconds timeout in the Mesos Spark Dispatcher |  Minor | Mesos | Michael Gummelt | Michael Gummelt |
| [SPARK-19715](https://issues.apache.org/jira/browse/SPARK-19715) | Option to Strip Paths in FileSource |  Major | Structured Streaming | Michael Armbrust | Liwei Lin |
| [SPARK-13568](https://issues.apache.org/jira/browse/SPARK-13568) | Create feature transformer to impute missing values |  Minor | ML | Nick Pentreath | yuhao yang |
| [SPARK-19967](https://issues.apache.org/jira/browse/SPARK-19967) | Add from\_json APIs to SQL |  Major | SQL | Xiao Li | Takeshi Yamamuro |
| [SPARK-19067](https://issues.apache.org/jira/browse/SPARK-19067) | mapGroupsWithState - arbitrary stateful operations with Structured Streaming (similar to DStream.mapWithState) |  Critical | Structured Streaming | Michael Armbrust | Tathagata Das |
| [SPARK-15040](https://issues.apache.org/jira/browse/SPARK-15040) | PySpark impl for ml.feature.Imputer |  Minor | ML | yuhao yang | Nick Pentreath |
| [SPARK-19911](https://issues.apache.org/jira/browse/SPARK-19911) | Add builder interface for Kinesis DStreams |  Minor | DStreams | Adam Budde | Adam Budde |
| [SPARK-17471](https://issues.apache.org/jira/browse/SPARK-17471) | Add compressed method for Matrix class |  Major | ML | Seth Hendrickson | Seth Hendrickson |
| [SPARK-20040](https://issues.apache.org/jira/browse/SPARK-20040) | Python API for ml.stat.ChiSquareTest |  Major | ML, PySpark | Joseph K. Bradley | Bago Amirbekian |
| [SPARK-20134](https://issues.apache.org/jira/browse/SPARK-20134) | SQLMetrics.postDriverMetricUpdates to simplify driver side metric updates |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-19716](https://issues.apache.org/jira/browse/SPARK-19716) | Dataset should allow by-name resolution for struct type elements in array |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-20283](https://issues.apache.org/jira/browse/SPARK-20283) | Add preOptimizationBatches |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-18127](https://issues.apache.org/jira/browse/SPARK-18127) | Add hooks and extension points to Spark |  Major | SQL | Srinath | Sameer Agarwal |
| [SPARK-20047](https://issues.apache.org/jira/browse/SPARK-20047) | Constrained Logistic Regression |  Major | MLlib | DB Tsai | Yanbo Liang |
| [SPARK-14471](https://issues.apache.org/jira/browse/SPARK-14471) | The alias created in SELECT could be used in GROUP BY and followed expressions |  Major | SQL | Davies Liu | Takeshi Yamamuro |
| [SPARK-20300](https://issues.apache.org/jira/browse/SPARK-20300) | Python API for ALSModel.recommendForAllUsers,Items |  Major | ML, PySpark | Joseph K. Bradley | Nick Pentreath |
| [SPARK-20576](https://issues.apache.org/jira/browse/SPARK-20576) | Support generic hint function in Dataset/DataFrame |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-18350](https://issues.apache.org/jira/browse/SPARK-18350) | Support session local timezone |  Major | SQL | Reynold Xin | Takuya Ueshin |
| [SPARK-10643](https://issues.apache.org/jira/browse/SPARK-10643) | Support remote application download in client mode spark submit |  Minor | Spark Submit | Alan Braithwaite | Yu Peng |
| [SPARK-15352](https://issues.apache.org/jira/browse/SPARK-15352) | Topology aware block replication |  Major | Block Manager, Mesos, Spark Core, YARN | Shubham Chopra | Shubham Chopra |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-18204](https://issues.apache.org/jira/browse/SPARK-18204) | Remove SparkUI.appUIAddress |  Minor | Web UI | Jacek Laskowski | Jacek Laskowski |
| [SPARK-17058](https://issues.apache.org/jira/browse/SPARK-17058) | Add maven snapshots-and-staging profile to build/test against staging artifacts |  Minor | Build | Steve Loughran | Steve Loughran |
| [SPARK-17949](https://issues.apache.org/jira/browse/SPARK-17949) | Introduce a JVM object based aggregate operator |  Major | SQL | Reynold Xin | Cheng Lian |
| [SPARK-18256](https://issues.apache.org/jira/browse/SPARK-18256) | Improve performance of event log replay in HistoryServer based on profiler results |  Major | . | Josh Rosen | Josh Rosen |
| [SPARK-18236](https://issues.apache.org/jira/browse/SPARK-18236) | Reduce memory usage of Spark UI and HistoryServer by reducing duplicate objects |  Major | Web UI | Josh Rosen | Josh Rosen |
| [SPARK-17868](https://issues.apache.org/jira/browse/SPARK-17868) | Do not use bitmasks during parsing and analysis of CUBE/ROLLUP/GROUPING SETS |  Major | SQL | Herman van Hovell | Jiang Xingbo |
| [SPARK-18268](https://issues.apache.org/jira/browse/SPARK-18268) | ALS.run fail with UnsupportedOperationException if run on an empty ratings RDD |  Minor | MLlib | Mikael Ståldal | Sandeep Singh |
| [SPARK-13331](https://issues.apache.org/jira/browse/SPARK-13331) | AES support for over-the-wire encryption |  Minor | Deploy | Dong Chen | Junjie Chen |
| [SPARK-17843](https://issues.apache.org/jira/browse/SPARK-17843) | History Server gives no feedback about the application list being incomplete |  Minor | Web UI | Vinayak Joshi | Vinayak Joshi |
| [SPARK-18232](https://issues.apache.org/jira/browse/SPARK-18232) | Support Mesos CNI |  Major | Mesos | Michael Gummelt | Michael Gummelt |
| [SPARK-18379](https://issues.apache.org/jira/browse/SPARK-18379) | Make the parallelism of parallelPartitionDiscovery configurable. |  Minor | SQL | Genmao Yu | Genmao Yu |
| [SPARK-18417](https://issues.apache.org/jira/browse/SPARK-18417) | Define 'spark.yarn.am.port' in yarn config object |  Minor | YARN | Weiqing Yang | Weiqing Yang |
| [SPARK-18186](https://issues.apache.org/jira/browse/SPARK-18186) | Migrate HiveUDAFFunction to TypedImperativeAggregate for partial aggregation support |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-17062](https://issues.apache.org/jira/browse/SPARK-17062) | Add --conf to mesos dispatcher process |  Major | Mesos | Stavros Kontopoulos | Stavros Kontopoulos |
| [SPARK-15214](https://issues.apache.org/jira/browse/SPARK-15214) | Implement code generation for Generate |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-18413](https://issues.apache.org/jira/browse/SPARK-18413) | Add a property to control the number of partitions when save a jdbc rdd |  Minor | SQL | lichenglin | Dongjoon Hyun |
| [SPARK-18356](https://issues.apache.org/jira/browse/SPARK-18356) | KMeans should cache RDD before training |  Minor | ML | zakaria hili | zakaria hili |
| [SPARK-18632](https://issues.apache.org/jira/browse/SPARK-18632) | AggregateFunction should not ImplicitCastInputTypes |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-18362](https://issues.apache.org/jira/browse/SPARK-18362) | Use TextFileFormat in implementation of CSVFileFormat |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-18638](https://issues.apache.org/jira/browse/SPARK-18638) | Upgrade sbt, zinc and maven plugins |  Minor | Build | Weiqing Yang | Weiqing Yang |
| [SPARK-18719](https://issues.apache.org/jira/browse/SPARK-18719) | Document spark.ui.showConsoleProgress |  Minor | Documentation | Nicholas Chammas | Nicholas Chammas |
| [SPARK-18720](https://issues.apache.org/jira/browse/SPARK-18720) | Code Refactoring of withColumn |  Minor | SQL | Xiao Li | Xiao Li |
| [SPARK-18740](https://issues.apache.org/jira/browse/SPARK-18740) | Log spark.app.name in driver log |  Minor | . | Peter Ableda | Peter Ableda |
| [SPARK-18744](https://issues.apache.org/jira/browse/SPARK-18744) | Remove workaround for Netty memory leak |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18171](https://issues.apache.org/jira/browse/SPARK-18171) | Show correct framework address in mesos master web ui when the advertised address is used |  Minor | Mesos | Shuai Lin | Shuai Lin |
| [SPARK-18662](https://issues.apache.org/jira/browse/SPARK-18662) | Move cluster managers into their own sub-directory |  Minor | Scheduler | Anirudh Ramanathan | Anirudh Ramanathan |
| [SPARK-18654](https://issues.apache.org/jira/browse/SPARK-18654) | JacksonParser.makeRootConverter has effectively unreachable code |  Minor | SQL | Nathan Howell | Nathan Howell |
| [SPARK-8617](https://issues.apache.org/jira/browse/SPARK-8617) | Handle history files better |  Major | Spark Core | Thomas Graves | Ergin Seyfe |
| [SPARK-18697](https://issues.apache.org/jira/browse/SPARK-18697) | Upgrade sbt plugins |  Trivial | Build | Weiqing Yang | Weiqing Yang |
| [SPARK-18606](https://issues.apache.org/jira/browse/SPARK-18606) | [HISTORYSERVER]It will check html elems while searching HistoryServer |  Minor | Web UI | Tao Wang | Tao Wang |
| [SPARK-18766](https://issues.apache.org/jira/browse/SPARK-18766) | Push Down Filter Through BatchEvalPython |  Major | PySpark, SQL | Xiao Li | Xiao Li |
| [SPARK-18809](https://issues.apache.org/jira/browse/SPARK-18809) | Kinesis deaggregation issue on master |  Minor | PySpark | Brian ONeill | Brian ONeill |
| [SPARK-18773](https://issues.apache.org/jira/browse/SPARK-18773) | Make translation of Spark configs to commons-crypto configs consistent |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-18471](https://issues.apache.org/jira/browse/SPARK-18471) | In treeAggregate, generate (big) zeros instead of sending them. |  Minor | MLlib, Spark Core | Anthony Truchet | Anthony Truchet |
| [SPARK-18566](https://issues.apache.org/jira/browse/SPARK-18566) | remove OverwriteOptions |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-8425](https://issues.apache.org/jira/browse/SPARK-8425) | Add blacklist mechanism for task scheduling |  Minor | Scheduler, YARN | Saisai Shao | Mao, Wei |
| [SPARK-18742](https://issues.apache.org/jira/browse/SPARK-18742) | Clarify that user-defined BroadcastFactory is not supported |  Trivial | Documentation | Song Jun | Song Jun |
| [SPARK-18708](https://issues.apache.org/jira/browse/SPARK-18708) | Improve documentation in SparkContext.scala file |  Minor | Spark Core | Bedrytski Aliaksandr | Bedrytski Aliaksandr |
| [SPARK-17769](https://issues.apache.org/jira/browse/SPARK-17769) | Some FetchFailure refactoring in the DAGScheduler |  Minor | Scheduler | Mark Hamstra | Mark Hamstra |
| [SPARK-18624](https://issues.apache.org/jira/browse/SPARK-18624) | Implict cast between ArrayTypes |  Minor | SQL | Jiang Xingbo | Jiang Xingbo |
| [SPARK-18836](https://issues.apache.org/jira/browse/SPARK-18836) | Serialize Task Metrics once per stage |  Major | Scheduler | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-17838](https://issues.apache.org/jira/browse/SPARK-17838) | Strict type checking for arguments with a better messages across APIs. |  Major | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-18576](https://issues.apache.org/jira/browse/SPARK-18576) | Expose basic TaskContext info in PySpark |  Minor | PySpark | holdenk | holdenk |
| [SPARK-18949](https://issues.apache.org/jira/browse/SPARK-18949) | Add recoverPartitions API to Catalog |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-18923](https://issues.apache.org/jira/browse/SPARK-18923) | Support SKIP\_PYTHONDOC/RDOC in doc generation |  Minor | Build, Documentation | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-18947](https://issues.apache.org/jira/browse/SPARK-18947) | SQLContext.tableNames should not call Catalog.listTables |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18903](https://issues.apache.org/jira/browse/SPARK-18903) | uiWebUrl is not accessible to SparkR |  Minor | SparkR, Web UI | Diogo Munaro Vieira | Felix Cheung |
| [SPARK-18953](https://issues.apache.org/jira/browse/SPARK-18953) | Do not show the link to a dead worker on the master page |  Minor | Web UI | Yin Huai | Dongjoon Hyun |
| [SPARK-18975](https://issues.apache.org/jira/browse/SPARK-18975) | Add an API to remove SparkListener from SparkContext |  Minor | Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-18985](https://issues.apache.org/jira/browse/SPARK-18985) | Add missing @InterfaceStability.Evolving for Structured Streaming APIs |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18972](https://issues.apache.org/jira/browse/SPARK-18972) | Fix the netty thread names for RPC |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18991](https://issues.apache.org/jira/browse/SPARK-18991) | Change ContextCleaner.referenceBuffer to ConcurrentHashMap to make it faster |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18800](https://issues.apache.org/jira/browse/SPARK-18800) | Correct the assert in UnsafeKVExternalSorter which ensures array size |  Minor | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-18837](https://issues.apache.org/jira/browse/SPARK-18837) | Very long stage descriptions do not wrap in the UI |  Minor | Web UI | Yuming Wang | Kousuke Saruta |
| [SPARK-18943](https://issues.apache.org/jira/browse/SPARK-18943) | Avoid per-record type dispatch in CSV when reading |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-18980](https://issues.apache.org/jira/browse/SPARK-18980) | implement Aggregator with TypedImperativeAggregate |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18999](https://issues.apache.org/jira/browse/SPARK-18999) | simplify Literal codegen |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18992](https://issues.apache.org/jira/browse/SPARK-18992) | Move spark.sql.hive.thriftServer.singleSession to SQLConf |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-19010](https://issues.apache.org/jira/browse/SPARK-19010) | Include Kryo exception in case of overflow |  Trivial | . | Sergei Lebedev | Sergei Lebedev |
| [SPARK-18960](https://issues.apache.org/jira/browse/SPARK-18960) | Avoid double reading file which is being copied. |  Minor | SQL, Structured Streaming | Genmao Yu | Genmao Yu |
| [SPARK-16213](https://issues.apache.org/jira/browse/SPARK-16213) | Reduce runtime overhead of a program that creates an primitive array in DataFrame |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-18567](https://issues.apache.org/jira/browse/SPARK-18567) | Simplify CreateDataSourceTableAsSelectCommand |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18669](https://issues.apache.org/jira/browse/SPARK-18669) | Update Apache docs regard watermarking in Structured Streaming |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-18698](https://issues.apache.org/jira/browse/SPARK-18698) | public constructor with uid for IndexToString-class |  Minor | ML | Bjoern Toldbod | Ilya Matiach |
| [SPARK-18808](https://issues.apache.org/jira/browse/SPARK-18808) | ml.KMeansModel.transform is very inefficient |  Minor | ML | Michel Lemay | Sean Owen |
| [SPARK-19041](https://issues.apache.org/jira/browse/SPARK-19041) | Fix code snippet compilation issues in Structured Streaming Programming Guide |  Minor | Structured Streaming | Liwei Lin | Liwei Lin |
| [SPARK-19002](https://issues.apache.org/jira/browse/SPARK-19002) | Check pep8 against all the python scripts |  Major | Build | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-19029](https://issues.apache.org/jira/browse/SPARK-19029) | Remove databaseName  from SimpleCatalogRelation |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-18932](https://issues.apache.org/jira/browse/SPARK-18932) | Partial aggregation for collect\_set / collect\_list |  Major | SQL, Structured Streaming | Michael Armbrust | Liang-Chi Hsieh |
| [SPARK-19060](https://issues.apache.org/jira/browse/SPARK-19060) | remove the supportsPartial flag in AggregateFunction |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-19054](https://issues.apache.org/jira/browse/SPARK-19054) | Eliminate extra pass in NB |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-19070](https://issues.apache.org/jira/browse/SPARK-19070) | Clean-up dataset actions |  Minor | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-19009](https://issues.apache.org/jira/browse/SPARK-19009) | Add doc for Streaming Rest API |  Major | Documentation | Genmao Yu | Genmao Yu |
| [SPARK-18885](https://issues.apache.org/jira/browse/SPARK-18885) | unify CREATE TABLE syntax for data source and hive serde tables |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17931](https://issues.apache.org/jira/browse/SPARK-17931) | taskScheduler has some unneeded serialization |  Major | Scheduler | Guoqiang Li | Kay Ousterhout |
| [SPARK-19074](https://issues.apache.org/jira/browse/SPARK-19074) | Update Structured Streaming Programming guide for Update Mode |  Major | Documentation, Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-13748](https://issues.apache.org/jira/browse/SPARK-13748) | Document behavior of createDataFrame and rows with omitted fields |  Trivial | Documentation, PySpark, SQL | Ethan Aubin | Hyukjin Kwon |
| [SPARK-19085](https://issues.apache.org/jira/browse/SPARK-19085) | cleanup OutputWriterFactory and OutputWriter |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-19026](https://issues.apache.org/jira/browse/SPARK-19026) | local directories cannot be cleanuped when create directory of "executor-\*\*\*" throws IOException such as there is no more free disk space to create it etc. |  Minor | Spark Core | zuotingbing | zuotingbing |
| [SPARK-18862](https://issues.apache.org/jira/browse/SPARK-18862) | Split SparkR mllib.R into multiple files |  Major | ML, SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-19127](https://issues.apache.org/jira/browse/SPARK-19127) | Inconsistencies in dense\_rank and rank documentation |  Minor | . | Bill Chambers | Bill Chambers |
| [SPARK-19126](https://issues.apache.org/jira/browse/SPARK-19126) | Join Documentation Improvements |  Minor | . | Bill Chambers | Bill Chambers |
| [SPARK-17847](https://issues.apache.org/jira/browse/SPARK-17847) | Reduce shuffled data size of GaussianMixture & copy the implementation from mllib to ml |  Major | ML, MLlib | Yanbo Liang | Yanbo Liang |
| [SPARK-19107](https://issues.apache.org/jira/browse/SPARK-19107) | support creating hive table with DataFrameWriter and Catalog |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18997](https://issues.apache.org/jira/browse/SPARK-18997) | Recommended upgrade libthrift  to 0.9.3 |  Minor | Build | meiyoula | Sean Owen |
| [SPARK-19140](https://issues.apache.org/jira/browse/SPARK-19140) | Allow update mode for non-aggregation streaming queries |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-19021](https://issues.apache.org/jira/browse/SPARK-19021) | Generailize HDFSCredentialProvider to support non HDFS security FS |  Minor | YARN | Saisai Shao | Saisai Shao |
| [SPARK-17568](https://issues.apache.org/jira/browse/SPARK-17568) | Add spark-submit option for user to override ivy settings used to resolve packages/artifacts |  Major | Deploy, Spark Core | Bryan Cutler | Bryan Cutler |
| [SPARK-16848](https://issues.apache.org/jira/browse/SPARK-16848) | Check schema validation for user-specified schema in jdbc and table APIs |  Trivial | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-18335](https://issues.apache.org/jira/browse/SPARK-18335) | Add a numSlices parameter to SparkR's createDataFrame |  Major | SparkR | Shixiong Zhu | Felix Cheung |
| [SPARK-19207](https://issues.apache.org/jira/browse/SPARK-19207) | LocalSparkSession should use Slf4JLoggerFactory.INSTANCE instead of creating new object via constructor |  Trivial | . | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [SPARK-19148](https://issues.apache.org/jira/browse/SPARK-19148) | do not expose the external table concept in Catalog |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-19240](https://issues.apache.org/jira/browse/SPARK-19240) | add test for setting location for managed table |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-19219](https://issues.apache.org/jira/browse/SPARK-19219) | Parquet log output overly verbose by default |  Minor | Spark Core, SQL | Nicholas | Nicholas |
| [SPARK-19239](https://issues.apache.org/jira/browse/SPARK-19239) | Check the lowerBound and upperBound whether equal None in jdbc API |  Major | PySpark | DjvuLee | DjvuLee |
| [SPARK-13721](https://issues.apache.org/jira/browse/SPARK-13721) | Add support for LATERAL VIEW OUTER explode() |  Major | SQL | Ian Hellstrom | Bogdan Raducanu |
| [SPARK-19227](https://issues.apache.org/jira/browse/SPARK-19227) | Typo  in \`org.apache.spark.internal.config.ConfigEntry\` |  Trivial | Spark Core | Biao Ma | Genmao Yu |
| [SPARK-19251](https://issues.apache.org/jira/browse/SPARK-19251) | remove unused imports and outdated comments |  Trivial | DStreams, GraphX, MLlib, Spark Core, SQL | Genmao Yu | Genmao Yu |
| [SPARK-19168](https://issues.apache.org/jira/browse/SPARK-19168) | StateStore should be aborted upon error |  Minor | Structured Streaming | Liwei Lin | Liwei Lin |
| [SPARK-19182](https://issues.apache.org/jira/browse/SPARK-19182) | Optimize the lock in StreamingJobProgressListener to not block UI when generating Streaming jobs |  Minor | DStreams | Shixiong Zhu | Genmao Yu |
| [SPARK-19183](https://issues.apache.org/jira/browse/SPARK-19183) | Add deleteWithJob hook to internal commit protocol API |  Major | SQL | Eric Liang | Eric Liang |
| [SPARK-19265](https://issues.apache.org/jira/browse/SPARK-19265) | make table relation cache general and does not depend on hive |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-19249](https://issues.apache.org/jira/browse/SPARK-19249) | Update Download page to describe how to download archived releases |  Trivial | Documentation | Luciano Resende | Luciano Resende |
| [SPARK-14272](https://issues.apache.org/jira/browse/SPARK-14272) | Evaluate GaussianMixtureModel with LogLikelihood |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-16654](https://issues.apache.org/jira/browse/SPARK-16654) | UI Should show blacklisted executors & nodes |  Major | Scheduler, Web UI | Imran Rashid | Jose Soltren |
| [SPARK-19295](https://issues.apache.org/jira/browse/SPARK-19295) | IsolatedClientLoader's downloadVersion should log the location of downloaded metastore client jars |  Minor | SQL | Yin Huai | Yin Huai |
| [SPARK-17912](https://issues.apache.org/jira/browse/SPARK-17912) | Refactor code generation to get data for ColumnVector/ColumnarBatch |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-19302](https://issues.apache.org/jira/browse/SPARK-19302) | Fix the wrong item format in security.md |  Trivial | Documentation | Kousuke Saruta | Kousuke Saruta |
| [SPARK-17724](https://issues.apache.org/jira/browse/SPARK-17724) | Unevaluated new lines in tooltip in DAG Visualization of a job |  Minor | Web UI | Jacek Laskowski | Xin Ren |
| [SPARK-19291](https://issues.apache.org/jira/browse/SPARK-19291) | spark.gaussianMixture supports output log-likelihood |  Minor | ML, SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-19146](https://issues.apache.org/jira/browse/SPARK-19146) | Drop more elements when stageData.taskData.size \> retainedTasks to reduce the number of times on call drop |  Minor | Spark Core | Yuming Wang | Yuming Wang |
| [SPARK-17747](https://issues.apache.org/jira/browse/SPARK-17747) | WeightCol support non-double datatypes |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-19290](https://issues.apache.org/jira/browse/SPARK-19290) | add a new extending interface in Analyzer for post-hoc resolution |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-14049](https://issues.apache.org/jira/browse/SPARK-14049) | Add functionality in spark history sever API to query applications by end time |  Major | Spark Core | Parag Chaudhari | Parag Chaudhari |
| [SPARK-19330](https://issues.apache.org/jira/browse/SPARK-19330) | Also show tooltip for successful batches |  Trivial | DStreams | Liwei Lin | Liwei Lin |
| [SPARK-18495](https://issues.apache.org/jira/browse/SPARK-18495) | Web UI should document meaning of green dot in DAG visualization |  Trivial | Web UI | Nicholas Chammas | Genmao Yu |
| [SPARK-19333](https://issues.apache.org/jira/browse/SPARK-19333) | Files out of compliance with ASF policy |  Minor | . | John D. Ament | Felix Cheung |
| [SPARK-19365](https://issues.apache.org/jira/browse/SPARK-19365) | Optimize RequestMessage serialization |  Major | . | Shixiong Zhu | Shixiong Zhu |
| [SPARK-19359](https://issues.apache.org/jira/browse/SPARK-19359) | partition path created by Hive should be deleted after rename a partition with upper-case |  Minor | SQL | Song Jun | Song Jun |
| [SPARK-19384](https://issues.apache.org/jira/browse/SPARK-19384) | forget unpersist input dataset in IsotonicRegression |  Trivial | ML | zhengruifeng | zhengruifeng |
| [SPARK-19385](https://issues.apache.org/jira/browse/SPARK-19385) | During canonicalization, \`NOT(l, r)\` should not expect such cases that l.hashcode \> r.hashcode |  Minor | SQL | Liwei Lin | Liwei Lin |
| [SPARK-19296](https://issues.apache.org/jira/browse/SPARK-19296) | Awkward changes for JdbcUtils.saveTable in Spark 2.1.0 |  Minor | SQL | Paul Wu | Hyukjin Kwon |
| [SPARK-19377](https://issues.apache.org/jira/browse/SPARK-19377) | Killed tasks should have the status as KILLED |  Minor | Spark Core, Web UI | Devaraj K | Devaraj K |
| [SPARK-19411](https://issues.apache.org/jira/browse/SPARK-19411) | Remove the metadata used to mark optional columns in merged Parquet schema for filter predicate pushdown |  Major | . | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-18909](https://issues.apache.org/jira/browse/SPARK-18909) | The error message in \`ExpressionEncoder.toRow\` and \`fromRow\` is too verbose |  Minor | SQL | Wenchen Fan | Dongjoon Hyun |
| [SPARK-17161](https://issues.apache.org/jira/browse/SPARK-17161) | Add PySpark-ML JavaWrapper convenience function to create py4j JavaArrays |  Minor | ML, PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-16043](https://issues.apache.org/jira/browse/SPARK-16043) | Prepare GenericArrayData implementation specialized for a primitive array |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-19244](https://issues.apache.org/jira/browse/SPARK-19244) | Sort MemoryConsumers according to their memory usage when spilling |  Major | Spark Core | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-19446](https://issues.apache.org/jira/browse/SPARK-19446) | Remove unused findTightestCommonType in TypeCoercion |  Trivial | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-19247](https://issues.apache.org/jira/browse/SPARK-19247) | Improve ml word2vec save/load scalability |  Major | ML | Asher Krim | Asher Krim |
| [SPARK-19421](https://issues.apache.org/jira/browse/SPARK-19421) | Remove numClasses and numFeatures methods in LinearSVC |  Minor | ML, PySpark | zhengruifeng | zhengruifeng |
| [SPARK-19080](https://issues.apache.org/jira/browse/SPARK-19080) | simplify data source analysis |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-19398](https://issues.apache.org/jira/browse/SPARK-19398) | Log in TaskSetManager is not correct |  Trivial | Scheduler | jin xing | jin xing |
| [SPARK-19441](https://issues.apache.org/jira/browse/SPARK-19441) | Remove IN type coercion from PromoteStrings |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-19467](https://issues.apache.org/jira/browse/SPARK-19467) | PySpark ML shouldn't use circular imports |  Minor | ML, PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-18601](https://issues.apache.org/jira/browse/SPARK-18601) | Simplify Create/Get complex expression pairs in optimizer |  Major | SQL | Herman van Hovell | Eyal Farago |
| [SPARK-16609](https://issues.apache.org/jira/browse/SPARK-16609) | Single function for parsing timestamps/dates |  Major | SQL | Michael Armbrust | Bill Chambers |
| [SPARK-19499](https://issues.apache.org/jira/browse/SPARK-19499) | Add more notes in the comments of Sink.addBatch() |  Minor | Structured Streaming | Nan Zhu | Nan Zhu |
| [SPARK-19464](https://issues.apache.org/jira/browse/SPARK-19464) | Remove support for Hadoop 2.5 and earlier |  Major | Spark Core, YARN | Sean Owen | Sean Owen |
| [SPARK-17874](https://issues.apache.org/jira/browse/SPARK-17874) | Additional SSL port on HistoryServer should be configurable |  Major | Web UI | Andrew Ash | Marcelo Vanzin |
| [SPARK-10748](https://issues.apache.org/jira/browse/SPARK-10748) | Log error instead of crashing Spark Mesos dispatcher when a job is misconfigured |  Minor | Mesos | Timothy Chen | Devaraj K |
| [SPARK-19466](https://issues.apache.org/jira/browse/SPARK-19466) | Improve Fair Scheduler Logging |  Minor | Scheduler | Eren Avsarogullari | Eren Avsarogullari |
| [SPARK-18613](https://issues.apache.org/jira/browse/SPARK-18613) | spark.ml LDA classes should not expose spark.mllib in APIs |  Critical | ML | Joseph K. Bradley | Sue Ann Hong |
| [SPARK-19537](https://issues.apache.org/jira/browse/SPARK-19537) | Move the pendingPartitions variable from Stage to ShuffleMapStage |  Minor | Scheduler | Kay Ousterhout | Kay Ousterhout |
| [SPARK-19448](https://issues.apache.org/jira/browse/SPARK-19448) | unify some duplication function in MetaStoreRelation |  Minor | SQL | Song Jun | Song Jun |
| [SPARK-19562](https://issues.apache.org/jira/browse/SPARK-19562) | Gitignore Misses Folder dev/pr-deps |  Trivial | Spark Core | Armin Braun | Armin Braun |
| [SPARK-19544](https://issues.apache.org/jira/browse/SPARK-19544) | Improve error message when some column types are compatible and others are not in set/union operations |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-19542](https://issues.apache.org/jira/browse/SPARK-19542) | Delete the temp checkpoint if a query is stopped without errors |  Minor | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-19435](https://issues.apache.org/jira/browse/SPARK-19435) | Type coercion between ArrayTypes |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-19589](https://issues.apache.org/jira/browse/SPARK-19589) | Removal of SQLGEN files |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-19453](https://issues.apache.org/jira/browse/SPARK-19453) | Correct DataFrame.replace docs |  Minor | Documentation, PySpark, SQL | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-18541](https://issues.apache.org/jira/browse/SPARK-18541) | Add pyspark.sql.Column.aliasWithMetadata to allow dynamic metadata management in pyspark SQL API |  Minor | PySpark, SQL | Shea Parkes | Shea Parkes |
| [SPARK-19501](https://issues.apache.org/jira/browse/SPARK-19501) | Slow checking if there are many spark.yarn.jars, which are already on HDFS |  Minor | YARN | Jong Wook Kim | Jong Wook Kim |
| [SPARK-16475](https://issues.apache.org/jira/browse/SPARK-16475) | Broadcast Hint for SQL Queries |  Major | . | Reynold Xin | Reynold Xin |
| [SPARK-19599](https://issues.apache.org/jira/browse/SPARK-19599) | Clean up HDFSMetadataLog |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-19436](https://issues.apache.org/jira/browse/SPARK-19436) | Add missing tests for approxQuantiles |  Major | SQL | zhengruifeng | zhengruifeng |
| [SPARK-19557](https://issues.apache.org/jira/browse/SPARK-19557) | Output parameters are not present in SQL Query Plan |  Major | SQL | Salil Surendran | Wenchen Fan |
| [SPARK-18285](https://issues.apache.org/jira/browse/SPARK-18285) | approxQuantile in R support multi-column |  Major | SparkR | zhengruifeng | Yanbo Liang |
| [SPARK-19450](https://issues.apache.org/jira/browse/SPARK-19450) | Replace askWithRetry with askSync. |  Minor | Spark Core | jin xing | jin xing |
| [SPARK-19598](https://issues.apache.org/jira/browse/SPARK-19598) | Remove the alias parameter in UnresolvedRelation |  Major | SQL | Reynold Xin | Song Jun |
| [SPARK-19563](https://issues.apache.org/jira/browse/SPARK-19563) | advoid unnecessary sort in FileFormatWriter |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-19508](https://issues.apache.org/jira/browse/SPARK-19508) | Improve error message when binding service fails |  Trivial | Spark Core | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-19694](https://issues.apache.org/jira/browse/SPARK-19694) | Add missing 'setTopicDistributionCol' for LDAModel |  Trivial | ML | zhengruifeng | zhengruifeng |
| [SPARK-19679](https://issues.apache.org/jira/browse/SPARK-19679) | Destroy broadcasted object without blocking |  Trivial | ML | zhengruifeng | zhengruifeng |
| [SPARK-19405](https://issues.apache.org/jira/browse/SPARK-19405) | Add support to KinesisUtils for cross-account Kinesis reads via STS |  Minor | DStreams | Adam Budde | Adam Budde |
| [SPARK-19616](https://issues.apache.org/jira/browse/SPARK-19616) | weightCol and aggregationDepth should be improved for some SparkR APIs |  Minor | SparkR | Miao Wang | Miao Wang |
| [SPARK-19554](https://issues.apache.org/jira/browse/SPARK-19554) | YARN backend should use history server URL for tracking when UI is disabled |  Minor | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-19658](https://issues.apache.org/jira/browse/SPARK-19658) | Set NumPartitions of RepartitionByExpression In Analyzer |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-19695](https://issues.apache.org/jira/browse/SPARK-19695) | Throw an exception if a \`columnNameOfCorruptRecord\` field violates requirements in Json formats |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-19682](https://issues.apache.org/jira/browse/SPARK-19682) | Issue warning (or error) when subset method "[[" takes vector index |  Minor | SparkR | Wayne Zhang | Wayne Zhang |
| [SPARK-19706](https://issues.apache.org/jira/browse/SPARK-19706) | add Column.contains in pyspark |  Major | PySpark | Wenchen Fan | Wenchen Fan |
| [SPARK-19684](https://issues.apache.org/jira/browse/SPARK-19684) | Move info about running specific tests to developer website |  Minor | Documentation | Kay Ousterhout | Kay Ousterhout |
| [SPARK-19664](https://issues.apache.org/jira/browse/SPARK-19664) | put 'hive.metastore.warehouse.dir' in hadoopConf place |  Minor | SQL | Song Jun | Song Jun |
| [SPARK-19735](https://issues.apache.org/jira/browse/SPARK-19735) | Remove HOLD\_DDLTIME from Catalog APIs |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-15288](https://issues.apache.org/jira/browse/SPARK-15288) | Mesos dispatcher should handle gracefully when any thread gets UncaughtException |  Minor | Deploy, Mesos | Devaraj K | Devaraj K |
| [SPARK-19746](https://issues.apache.org/jira/browse/SPARK-19746) | LogisticAggregator is inefficient in indexing |  Major | ML | Seth Hendrickson | Seth Hendrickson |
| [SPARK-19749](https://issues.apache.org/jira/browse/SPARK-19749) | Name socket source with a meaningful name |  Trivial | Structured Streaming | Genmao Yu | Genmao Yu |
| [SPARK-19660](https://issues.apache.org/jira/browse/SPARK-19660) | Replace the configuration property names that are deprecated in the version of Hadoop 2.6 |  Major | Spark Core, SQL | Yuming Wang | Yuming Wang |
| [SPARK-19678](https://issues.apache.org/jira/browse/SPARK-19678) | remove MetastoreRelation |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-19572](https://issues.apache.org/jira/browse/SPARK-19572) | Allow to disable hive in sparkR shell |  Minor | SparkR | Jeff Zhang | Jeff Zhang |
| [SPARK-19787](https://issues.apache.org/jira/browse/SPARK-19787) | Different default regParam values in ALS |  Trivial | MLlib | Vasilis Vryniotis |  |
| [SPARK-19777](https://issues.apache.org/jira/browse/SPARK-19777) | Scan runningTasksSet when check speculatable tasks in TaskSetManager. |  Minor | Scheduler | jin xing | jin xing |
| [SPARK-19733](https://issues.apache.org/jira/browse/SPARK-19733) | ALS performs unnecessary casting on item and user ids |  Major | ML | Vasilis Vryniotis | Vasilis Vryniotis |
| [SPARK-19704](https://issues.apache.org/jira/browse/SPARK-19704) | AFTSurvivalRegression should support numeric censorCol |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-19745](https://issues.apache.org/jira/browse/SPARK-19745) | SVCAggregator serializes coefficients |  Major | ML | Seth Hendrickson | Seth Hendrickson |
| [SPARK-19739](https://issues.apache.org/jira/browse/SPARK-19739) | SparkHadoopUtil.appendS3AndSparkHadoopConfigurations to propagate full set of AWS env vars |  Minor | Spark Core | Steve Loughran | Genmao Yu |
| [SPARK-13446](https://issues.apache.org/jira/browse/SPARK-13446) | Spark need to support reading data from Hive 2.0.0 metastore |  Major | SQL | Lifeng Wang | Xiao Li |
| [SPARK-19805](https://issues.apache.org/jira/browse/SPARK-19805) | Log the row type when query result dose not match |  Minor | Tests | Genmao Yu | Genmao Yu |
| [SPARK-19254](https://issues.apache.org/jira/browse/SPARK-19254) | Support Seq, Map, and Struct in functions.lit |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-19257](https://issues.apache.org/jira/browse/SPARK-19257) | The type of CatalogStorageFormat.locationUri should be java.net.URI instead of String |  Major | SQL | Wenchen Fan | Song Jun |
| [SPARK-19304](https://issues.apache.org/jira/browse/SPARK-19304) | Kinesis checkpoint recovery is 10x slow |  Major | Spark Core | Gaurav Shah | Gaurav Shah |
| [SPARK-17498](https://issues.apache.org/jira/browse/SPARK-17498) | StringIndexer.setHandleInvalid should have another option 'new' |  Minor | ML | Miroslav Balaz | Vincent |
| [SPARK-19516](https://issues.apache.org/jira/browse/SPARK-19516) | update public doc to use SparkSession instead of SparkContext |  Major | Documentation | Wenchen Fan | Wenchen Fan |
| [SPARK-19843](https://issues.apache.org/jira/browse/SPARK-19843) | UTF8String =\> (int / long) conversion expensive for invalid inputs |  Major | SQL | Tejas Patil | Tejas Patil |
| [SPARK-19806](https://issues.apache.org/jira/browse/SPARK-19806) | PySpark GLR supports tweedie distribution |  Minor | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-19693](https://issues.apache.org/jira/browse/SPARK-19693) | SET mapreduce.job.reduces automatically converted to spark.sql.shuffle.partitions |  Minor | SQL | Yuming Wang | Yuming Wang |
| [SPARK-15463](https://issues.apache.org/jira/browse/SPARK-15463) | Support for creating a dataframe from CSV in Dataset[String] |  Major | SQL | PJ Fanning | Hyukjin Kwon |
| [SPARK-19540](https://issues.apache.org/jira/browse/SPARK-19540) | Add ability to clone SparkSession with an identical copy of the SessionState |  Major | SQL | Kunal Khamar | Kunal Khamar |
| [SPARK-19757](https://issues.apache.org/jira/browse/SPARK-19757) | Executor with task scheduled could be killed due to idleness |  Minor | Scheduler, Spark Core | jin xing | Jimmy Xiang |
| [SPARK-12334](https://issues.apache.org/jira/browse/SPARK-12334) | Support read from multiple input paths for orc file in DataFrameReader.orc |  Minor | PySpark, SQL | Jeff Zhang | Jeff Zhang |
| [SPARK-19008](https://issues.apache.org/jira/browse/SPARK-19008) | Avoid boxing/unboxing overhead of calling a lambda with primitive type from Dataset program |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-19786](https://issues.apache.org/jira/browse/SPARK-19786) | Facilitate loop optimizations in a JIT compiler regarding range() |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-17979](https://issues.apache.org/jira/browse/SPARK-17979) | Remove deprecated support for config SPARK\_YARN\_USER\_ENV |  Trivial | . | Kishor Patil | Yong Tang |
| [SPARK-19723](https://issues.apache.org/jira/browse/SPARK-19723) | create table for data source tables should work with an non-existent location |  Major | SQL | Song Jun | Song Jun |
| [SPARK-19831](https://issues.apache.org/jira/browse/SPARK-19831) | Sending the heartbeat  master from worker  maybe blocked by other rpc messages |  Minor | Spark Core | hustfxj | hustfxj |
| [SPARK-19916](https://issues.apache.org/jira/browse/SPARK-19916) | simplify bad file handling |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-19921](https://issues.apache.org/jira/browse/SPARK-19921) | Enable end-to-end testing using different Hive metastore versions. |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-19391](https://issues.apache.org/jira/browse/SPARK-19391) | Tweedie GLM API in SparkR |  Major | SparkR | Wayne Zhang | Wayne Zhang |
| [SPARK-19944](https://issues.apache.org/jira/browse/SPARK-19944) | Move SQLConf from sql/core to sql/catalyst |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-19850](https://issues.apache.org/jira/browse/SPARK-19850) | Support aliased expressions in function parameters |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-19922](https://issues.apache.org/jira/browse/SPARK-19922) | faster Word2Vec findSynonyms |  Minor | MLlib | Asher Krim | Asher Krim |
| [SPARK-11569](https://issues.apache.org/jira/browse/SPARK-11569) | StringIndexer transform fails when column contains nulls |  Major | ML, PySpark | Maciej Szymkiewicz | Menglong TAN |
| [SPARK-18961](https://issues.apache.org/jira/browse/SPARK-18961) | Support \`SHOW TABLE EXTENDED ... PARTITION\` statement |  Major | SQL | Jiang Xingbo | Jiang Xingbo |
| [SPARK-19923](https://issues.apache.org/jira/browse/SPARK-19923) | Remove unnecessary type conversion per call in Hive |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-19918](https://issues.apache.org/jira/browse/SPARK-19918) | Use TextFileFormat in implementation of JsonFileFormat |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-19889](https://issues.apache.org/jira/browse/SPARK-19889) | Make TaskContext callbacks synchronized |  Major | Spark Core | Herman van Hovell | Herman van Hovell |
| [SPARK-19961](https://issues.apache.org/jira/browse/SPARK-19961) | unify a exception erro msg for dropdatabase |  Trivial | SQL | Song Jun | Song Jun |
| [SPARK-19830](https://issues.apache.org/jira/browse/SPARK-19830) | Add parseTableSchema API to ParserInterface |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-19946](https://issues.apache.org/jira/browse/SPARK-19946) | DebugFilesystem.assertNoOpenStreams should report the open streams to help debugging |  Minor | Tests | Bogdan Raducanu | Bogdan Raducanu |
| [SPARK-19987](https://issues.apache.org/jira/browse/SPARK-19987) | Pass all filters into FileIndex |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-13369](https://issues.apache.org/jira/browse/SPARK-13369) |  Number of consecutive fetch failures for a stage before the job is aborted should be configurable |  Minor | Spark Core | Sital Kedia | Sital Kedia |
| [SPARK-19986](https://issues.apache.org/jira/browse/SPARK-19986) | Make pyspark.streaming.tests.CheckpointTests more stable |  Major | Tests | Shixiong Zhu |  |
| [SPARK-19849](https://issues.apache.org/jira/browse/SPARK-19849) | Support ArrayType in to\_json function/expression |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-19899](https://issues.apache.org/jira/browse/SPARK-19899) | FPGrowth input column naming |  Major | ML | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-19949](https://issues.apache.org/jira/browse/SPARK-19949) | unify bad record handling in CSV and JSON |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-20011](https://issues.apache.org/jira/browse/SPARK-20011) | inconsistent terminology in als api docs and tutorial |  Trivial | MLlib | chris snow | chris snow |
| [SPARK-19998](https://issues.apache.org/jira/browse/SPARK-19998) | BlockRDD block not found Exception add RDD id info |  Trivial | Block Manager | jianran.tfh | jianran.tfh |
| [SPARK-20041](https://issues.apache.org/jira/browse/SPARK-20041) | Update docs for NaN handling in approxQuantile |  Trivial | PySpark, SparkR | zhengruifeng | zhengruifeng |
| [SPARK-19261](https://issues.apache.org/jira/browse/SPARK-19261) | Support \`ALTER TABLE table\_name ADD COLUMNS(..)\` statement |  Major | SQL | StanZhai | Xin Wu |
| [SPARK-20039](https://issues.apache.org/jira/browse/SPARK-20039) | Rename ml.stat.ChiSquare to ml.stat.ChiSquareTest |  Minor | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-19919](https://issues.apache.org/jira/browse/SPARK-19919) | Defer input path validation into DataSource in CSV datasource |  Trivial | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-19876](https://issues.apache.org/jira/browse/SPARK-19876) | Add OneTime trigger executor |  Major | Structured Streaming | Tyson Condie | Tyson Condie |
| [SPARK-19567](https://issues.apache.org/jira/browse/SPARK-19567) | Support some Schedulable variables immutability and access |  Minor | Scheduler | Eren Avsarogullari | Eren Avsarogullari |
| [SPARK-10849](https://issues.apache.org/jira/browse/SPARK-10849) | Allow user to specify database column type for data frame fields when writing data to jdbc data sources. |  Minor | SQL | Suresh Thalamati | Suresh Thalamati |
| [SPARK-16929](https://issues.apache.org/jira/browse/SPARK-16929) | Speculation-related synchronization bottleneck in checkSpeculatableTasks |  Major | Scheduler | Nicholas Brown | jin xing |
| [SPARK-19820](https://issues.apache.org/jira/browse/SPARK-19820) | Allow users to kill tasks, and propagate a kill reason |  Minor | Spark Core | Eric Liang | Eric Liang |
| [SPARK-19846](https://issues.apache.org/jira/browse/SPARK-19846) | Add a flag to disable constraint propagation |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-20078](https://issues.apache.org/jira/browse/SPARK-20078) | Mesos executor configurability for task name and labels |  Minor | Mesos | Kalvin Chau | Kalvin Chau |
| [SPARK-20092](https://issues.apache.org/jira/browse/SPARK-20092) | Trigger AppVeyor R tests for changes in Scala code related with R API |  Minor | Project Infra, SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-20046](https://issues.apache.org/jira/browse/SPARK-20046) | Facilitate loop optimizations in a JIT compiler regarding sqlContext.read.parquet() |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-19904](https://issues.apache.org/jira/browse/SPARK-19904) | SPIP Add Spark Project Improvement Proposal doc to website |  Major | Documentation | Cody Koeninger | Cody Koeninger |
| [SPARK-19088](https://issues.apache.org/jira/browse/SPARK-19088) | Optimize sequence type deserialization codegen |  Minor | SQL | Michal Šenkýř | Michal Šenkýř |
| [SPARK-20126](https://issues.apache.org/jira/browse/SPARK-20126) | Remove HiveSessionState |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-20009](https://issues.apache.org/jira/browse/SPARK-20009) | Use user-friendly DDL formats for defining a schema  in functions.from\_json |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-20120](https://issues.apache.org/jira/browse/SPARK-20120) | spark-sql CLI support silent mode |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-20146](https://issues.apache.org/jira/browse/SPARK-20146) | Column comment information is missing for Thrift Server's TableSchema |  Minor | SQL | Bo Meng | Bo Meng |
| [SPARK-20136](https://issues.apache.org/jira/browse/SPARK-20136) | Add num files and metadata operation timing to scan metrics |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-20148](https://issues.apache.org/jira/browse/SPARK-20148) | Extend the file commit interface to allow subscribing to task commit messages |  Minor | SQL | Eric Liang | Eric Liang |
| [SPARK-20107](https://issues.apache.org/jira/browse/SPARK-20107) | Add spark.hadoop.mapreduce.fileoutputcommitter.algorithm.version option to configuration.md |  Trivial | Documentation | Yuming Wang | Yuming Wang |
| [SPARK-19999](https://issues.apache.org/jira/browse/SPARK-19999) | Test failures in Spark Core due to java.nio.Bits.unaligned() |  Minor | Spark Core | Sonia Garudi | Sonia Garudi |
| [SPARK-20127](https://issues.apache.org/jira/browse/SPARK-20127) | Minor code cleanup |  Minor | Spark Core | Denis Bolshakov | Denis Bolshakov |
| [SPARK-20121](https://issues.apache.org/jira/browse/SPARK-20121) | simplify NullPropagation with NullIntolerant |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-20151](https://issues.apache.org/jira/browse/SPARK-20151) | Account for partition pruning in scan metadataTime metrics |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-20084](https://issues.apache.org/jira/browse/SPARK-20084) | Remove internal.metrics.updatedBlockStatuses accumulator from history files |  Major | Spark Core, Web UI | Ryan Blue | Ryan Blue |
| [SPARK-20160](https://issues.apache.org/jira/browse/SPARK-20160) | Move ParquetConversions and OrcConversions Out Of HiveSessionCatalog |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-20177](https://issues.apache.org/jira/browse/SPARK-20177) | Document about compression way has some little detail changes. |  Trivial | Documentation | guoxiaolongzte | guoxiaolongzte |
| [SPARK-20143](https://issues.apache.org/jira/browse/SPARK-20143) | DataType.fromJson should throw an exception with better message |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-20166](https://issues.apache.org/jira/browse/SPARK-20166) | Use XXX for ISO timezone instead of ZZ which is FastDateFormat specific in CSV/JSON time related options |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-20194](https://issues.apache.org/jira/browse/SPARK-20194) | Support partition pruning for InMemoryCatalog |  Major | Optimizer | Adrian Ionescu | Adrian Ionescu |
| [SPARK-20067](https://issues.apache.org/jira/browse/SPARK-20067) | Unify and Clean Up Desc Commands Using Catalog Interface |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-20204](https://issues.apache.org/jira/browse/SPARK-20204) | remove SimpleCatalystConf and CatalystConf type alias |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-19807](https://issues.apache.org/jira/browse/SPARK-19807) | Add reason for cancellation when a stage is killed using web UI |  Trivial | Web UI | Jacek Laskowski | shaolinliu |
| [SPARK-19454](https://issues.apache.org/jira/browse/SPARK-19454) | Improve DataFrame.replace API |  Major | PySpark, SQL | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-20085](https://issues.apache.org/jira/browse/SPARK-20085) | Configurable mesos labels for executors |  Minor | Mesos | Kalvin Chau | Kalvin Chau |
| [SPARK-20064](https://issues.apache.org/jira/browse/SPARK-20064) | Bump the PySpark verison number to 2.2 |  Trivial | PySpark | holdenk | holdenk |
| [SPARK-17019](https://issues.apache.org/jira/browse/SPARK-17019) | Expose off-heap memory usage in various places |  Minor | Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-20245](https://issues.apache.org/jira/browse/SPARK-20245) | pass output to LogicalRelation directly |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-20218](https://issues.apache.org/jira/browse/SPARK-20218) | '/applications/[app-id]/stages' in REST API,add description. |  Trivial | Documentation | guoxiaolongzte | guoxiaolongzte |
| [SPARK-20255](https://issues.apache.org/jira/browse/SPARK-20255) | FileIndex hierarchy inconsistency |  Minor | Spark Core | Adrian Ionescu | Adrian Ionescu |
| [SPARK-19991](https://issues.apache.org/jira/browse/SPARK-19991) | FileSegmentManagedBuffer performance improvement. |  Minor | Shuffle | Guoqiang Li | Sean Owen |
| [SPARK-20253](https://issues.apache.org/jira/browse/SPARK-20253) | Remove unnecessary nullchecks of a return value from Spark runtime routines in generated Java code |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-20229](https://issues.apache.org/jira/browse/SPARK-20229) | add semanticHash to QueryPlan |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-19518](https://issues.apache.org/jira/browse/SPARK-19518) | IGNORE NULLS in first\_value / last\_value should be supported in SQL statements |  Major | SQL | Ferenc Erdelyi | Hyukjin Kwon |
| [SPARK-17564](https://issues.apache.org/jira/browse/SPARK-17564) | Flaky RequestTimeoutIntegrationSuite, furtherRequestsDelay |  Minor | Tests | Adam Roberts | Shixiong Zhu |
| [SPARK-20097](https://issues.apache.org/jira/browse/SPARK-20097) | Fix visibility discrepancy with numInstances and degreesOfFreedom in LR and GLR |  Trivial | ML | Benjamin Fradet | Benjamin Fradet |
| [SPARK-20175](https://issues.apache.org/jira/browse/SPARK-20175) | Exists should not be evaluated in Join operator and can be converted to ScalarSubquery if no correlated reference |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-20289](https://issues.apache.org/jira/browse/SPARK-20289) | Use StaticInvoke rather than NewInstance for boxing primitive types |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-20302](https://issues.apache.org/jira/browse/SPARK-20302) | Short circuit cast when from and to types are structurally the same |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-20303](https://issues.apache.org/jira/browse/SPARK-20303) | Rename createTempFunction to registerFunction |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-20304](https://issues.apache.org/jira/browse/SPARK-20304) | AssertNotNull should not include path in string representation |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-19570](https://issues.apache.org/jira/browse/SPARK-19570) | Allow to disable hive in pyspark shell |  Minor | PySpark, SQL | Jeff Zhang | Jeff Zhang |
| [SPARK-20265](https://issues.apache.org/jira/browse/SPARK-20265) | Improve Prefix'span pre-processing efficiency |  Minor | MLlib | Cyril de Vogelaere | Cyril de Vogelaere |
| [SPARK-20284](https://issues.apache.org/jira/browse/SPARK-20284) | Make SerializationStream and DeserializationStream extend Closeable |  Trivial | Spark Core | Sergei Lebedev | Sergei Lebedev |
| [SPARK-20232](https://issues.apache.org/jira/browse/SPARK-20232) | Better combineByKey documentation: clarify memory allocation, better example |  Trivial | Documentation | David Gingrich | David Gingrich |
| [SPARK-20038](https://issues.apache.org/jira/browse/SPARK-20038) | FileFormatWriter.ExecuteWriteTask.releaseResources() implementations to be re-entrant |  Minor | Spark Core | Steve Loughran | Steve Loughran |
| [SPARK-20316](https://issues.apache.org/jira/browse/SPARK-20316) | In SparkSQLCLIDriver, val and var should strictly follow the Scala syntax |  Trivial | SQL | Xiaochen Ouyang | Xiaochen Ouyang |
| [SPARK-19740](https://issues.apache.org/jira/browse/SPARK-19740) | Spark executor always runs as root when running on mesos |  Minor | Mesos | Ji Yan | Ji Yan |
| [SPARK-20344](https://issues.apache.org/jira/browse/SPARK-20344) | Duplicate call in FairSchedulableBuilder.addTaskSetManager |  Trivial | Scheduler | Robert Stupp | Robert Stupp |
| [SPARK-20360](https://issues.apache.org/jira/browse/SPARK-20360) | Create repr functions for interpreters to use |  Minor | PySpark | Kyle Kelley | Kyle Kelley |
| [SPARK-20036](https://issues.apache.org/jira/browse/SPARK-20036) | impossible to read a whole kafka topic using kafka 0.10 and spark 2.0.0 |  Minor | Documentation | Daniel Nuriyev | Cody Koeninger |
| [SPARK-20350](https://issues.apache.org/jira/browse/SPARK-20350) | Apply Complementation Laws during boolean expression simplification |  Major | Optimizer | Michael Styles | Michael Styles |
| [SPARK-20409](https://issues.apache.org/jira/browse/SPARK-20409) | fail early if aggregate function in GROUP BY |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-20410](https://issues.apache.org/jira/browse/SPARK-20410) | Make SparkConf a def instead of a val in SharedSQLContext |  Trivial | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-20420](https://issues.apache.org/jira/browse/SPARK-20420) | Add events to the external catalog |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-20423](https://issues.apache.org/jira/browse/SPARK-20423) | fix MLOR coeffs centering when reg == 0 |  Minor | ML | Weichen Xu |  |
| [SPARK-20401](https://issues.apache.org/jira/browse/SPARK-20401) | In the spark official configuration document, the 'spark.driver.supervise' configuration parameter specification and default values are necessary. |  Trivial | Documentation | guoxiaolongzte | guoxiaolongzte |
| [SPARK-20385](https://issues.apache.org/jira/browse/SPARK-20385) | 'Submitted Time' field, the date format needs to be formatted, in running Drivers table or Completed Drivers table in master web ui |  Minor | Web UI | guoxiaolongzte | guoxiaolongzte |
| [SPARK-18901](https://issues.apache.org/jira/browse/SPARK-18901) | Require in LR LogisticAggregator is redundant |  Minor | ML | yuhao yang | Miao Wang |
| [SPARK-20404](https://issues.apache.org/jira/browse/SPARK-20404) | Regression with accumulator names when migrating from 1.6 to 2.x |  Minor | Spark Core | Sergey Zhemzhitsky | Sergey Zhemzhitsky |
| [SPARK-20449](https://issues.apache.org/jira/browse/SPARK-20449) | Upgrade breeze version to 0.13.1 |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-20400](https://issues.apache.org/jira/browse/SPARK-20400) | Remove References to Third Party Vendors from Spark ASF Documentation |  Trivial | Documentation | Bill Chambers | Bill Chambers |
| [SPARK-20391](https://issues.apache.org/jira/browse/SPARK-20391) | Properly rename the memory related fields in ExecutorSummary REST API |  Blocker | Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-20426](https://issues.apache.org/jira/browse/SPARK-20426) | OneForOneStreamManager occupies too much memory. |  Major | Shuffle | jin xing | jin xing |
| [SPARK-20487](https://issues.apache.org/jira/browse/SPARK-20487) | \`HiveTableScan\` node is quite verbose in explained plan |  Trivial | SQL | Tejas Patil | Tejas Patil |
| [SPARK-19282](https://issues.apache.org/jira/browse/SPARK-19282) | RandomForestRegressionModel should expose getMaxDepth in R |  Minor | ML, SparkR | Nick Lothian | Xin Ren |
| [SPARK-20465](https://issues.apache.org/jira/browse/SPARK-20465) | Throws a proper exception rather than ArrayIndexOutOfBoundsException when temp directories could not be got/created |  Trivial | Spark Core, Spark Submit | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-19525](https://issues.apache.org/jira/browse/SPARK-19525) | Enable Compression of RDD Checkpoints |  Major | Spark Core | Aaditya Ramesh | Aaditya Ramesh |
| [SPARK-20521](https://issues.apache.org/jira/browse/SPARK-20521) | The default of  'spark.worker.cleanup.appDataTtl'  should be 604800 in spark-standalone.md. |  Trivial | Documentation | guoxiaolongzte | guoxiaolongzte |
| [SPARK-20492](https://issues.apache.org/jira/browse/SPARK-20492) | Do not print empty parentheses for invalid primitive types in parser |  Trivial | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-6227](https://issues.apache.org/jira/browse/SPARK-6227) | PCA and SVD for PySpark |  Major | MLlib, PySpark | Julien Amelot | Manoj Kumar |
| [SPARK-20523](https://issues.apache.org/jira/browse/SPARK-20523) | Clean up build warnings for 2.2.0 release |  Minor | Build, ML, Spark Core, Structured Streaming | Sean Owen | Sean Owen |
| [SPARK-19956](https://issues.apache.org/jira/browse/SPARK-19956) | Optimize a location order of blocks with topology information |  Major | Spark Core | coneyliu | coneyliu |
| [SPARK-20621](https://issues.apache.org/jira/browse/SPARK-20621) | Delete deprecated config parameter in 'spark-env.sh' |  Minor | Deploy | coneyliu | coneyliu |
| [SPARK-11968](https://issues.apache.org/jira/browse/SPARK-11968) | ALS recommend all methods spend most of time in GC |  Major | ML, MLlib | Joseph K. Bradley | Peng Meng |
| [SPARK-20587](https://issues.apache.org/jira/browse/SPARK-20587) | Improve performance of ML ALS recommendForAll |  Major | ML | Nick Pentreath | Nick Pentreath |
| [SPARK-20606](https://issues.apache.org/jira/browse/SPARK-20606) | ML 2.2 QA: Remove deprecated methods for ML |  Minor | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-20674](https://issues.apache.org/jira/browse/SPARK-20674) | Support registering UserDefinedFunction as named UDF |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-20627](https://issues.apache.org/jira/browse/SPARK-20627) | Remove pip local version string (PEP440) |  Major | PySpark | holdenk | holdenk |
| [SPARK-20600](https://issues.apache.org/jira/browse/SPARK-20600) | KafkaRelation should be pretty printed in web UI (Details for Query) |  Trivial | Structured Streaming | Jacek Laskowski | Jacek Laskowski |
| [SPARK-20554](https://issues.apache.org/jira/browse/SPARK-20554) | Remove usage of scala.language.reflectiveCalls |  Trivial | ML, Spark Core, SQL, Structured Streaming | Sean Owen | Sean Owen |
| [SPARK-18990](https://issues.apache.org/jira/browse/SPARK-18990) | make DatasetBenchmark fairer for Dataset |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-20710](https://issues.apache.org/jira/browse/SPARK-20710) | Support aliases in CUBE/ROLLUP/GROUPING SETS |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-20669](https://issues.apache.org/jira/browse/SPARK-20669) | LogisticRegression family should be case insensitive |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-20588](https://issues.apache.org/jira/browse/SPARK-20588) | from\_utc\_timestamp causes bottleneck |  Major | SQL | Ameen Tayyebi | Takuya Ueshin |
| [SPARK-20707](https://issues.apache.org/jira/browse/SPARK-20707) | ML deprecated APIs should be removed in major release. |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-20677](https://issues.apache.org/jira/browse/SPARK-20677) | Clean up ALS recommend all improvement code. |  Minor | ML, MLlib | Nick Pentreath | Nick Pentreath |
| [SPARK-20776](https://issues.apache.org/jira/browse/SPARK-20776) | Fix JobProgressListener perf. problems caused by empty TaskMetrics initialization |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-19555](https://issues.apache.org/jira/browse/SPARK-19555) | Improve inefficient StringUtils.escapeLikeRegex() method |  Major | SQL | Josh Rosen |  |
| [SPARK-14584](https://issues.apache.org/jira/browse/SPARK-14584) | Improve recognition of non-nullability in Dataset transformations |  Major | SQL | Josh Rosen |  |
| [SPARK-20796](https://issues.apache.org/jira/browse/SPARK-20796) | the location of start-master.sh in spark-standalone.md is wrong |  Trivial | Documentation | liuzhaokun | liuzhaokun |
| [SPARK-20759](https://issues.apache.org/jira/browse/SPARK-20759) | SCALA\_VERSION in \_config.yml,LICENSE and Dockerfile should be consistent with pom.xml |  Trivial | Documentation | liuzhaokun | liuzhaokun |
| [SPARK-19089](https://issues.apache.org/jira/browse/SPARK-19089) | Support nested arrays/seqs in Datasets |  Minor | SQL | Michal Šenkýř | Michal Šenkýř |
| [SPARK-20764](https://issues.apache.org/jira/browse/SPARK-20764) | Fix visibility discrepancy with numInstances and degreesOfFreedom in LR and GLR - Python version |  Minor | ML, PySpark | Nick Pentreath | Peng Meng |
| [SPARK-20857](https://issues.apache.org/jira/browse/SPARK-20857) | Generic resolved hint node |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-19659](https://issues.apache.org/jira/browse/SPARK-19659) | Fetch big blocks to disk when shuffle-read |  Major | Shuffle | jin xing | jin xing |
| [SPARK-20768](https://issues.apache.org/jira/browse/SPARK-20768) | PySpark FPGrowth does not expose numPartitions (expert)  param |  Minor | ML, PySpark | Nick Pentreath | Yan Facai (颜发才) |
| [SPARK-20741](https://issues.apache.org/jira/browse/SPARK-20741) | SparkSubmit does not clean up after uploading spark\_libs to the distributed cache |  Minor | Spark Submit | Lior Regev | Lior Regev |
| [SPARK-20868](https://issues.apache.org/jira/browse/SPARK-20868) | UnsafeShuffleWriter should verify the position after FileChannel.transferTo |  Major | Spark Core | Wenchen Fan | Wenchen Fan |
| [SPARK-20907](https://issues.apache.org/jira/browse/SPARK-20907) | Use testQuietly for test suites that generate long log output |  Minor | Tests | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-20854](https://issues.apache.org/jira/browse/SPARK-20854) | extend hint syntax to support any expression, not just identifiers or strings |  Blocker | SQL | Bogdan Raducanu | Bogdan Raducanu |
| [SPARK-17203](https://issues.apache.org/jira/browse/SPARK-17203) | data source options should always be case insensitive |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-19150](https://issues.apache.org/jira/browse/SPARK-19150) | completely support using hive as data source to create tables |  Major | SQL | Wenchen Fan |  |
| [SPARK-20942](https://issues.apache.org/jira/browse/SPARK-20942) | The title style about field is error in the history server web ui. |  Minor | Web UI | guoxiaolongzte | guoxiaolongzte |
| [SPARK-20967](https://issues.apache.org/jira/browse/SPARK-20967) | SharedState.externalCatalog is not really lazy |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-20946](https://issues.apache.org/jira/browse/SPARK-20946) | simplify the config setting logic in SparkSession.getOrCreate |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-20955](https://issues.apache.org/jira/browse/SPARK-20955) | A lot of duplicated "executorId" strings in "TaskUIData"s |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-19236](https://issues.apache.org/jira/browse/SPARK-19236) | Add createOrReplaceGlobalTempView |  Minor | Spark Core | Arman Yazdani | Arman Yazdani |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-18099](https://issues.apache.org/jira/browse/SPARK-18099) | Spark distributed cache should throw exception if same file is specified to dropped in --files --archives |  Major | YARN | Kishor Patil | Kishor Patil |
| [SPARK-18357](https://issues.apache.org/jira/browse/SPARK-18357) | YARN --files/--archives broke |  Blocker | YARN | Thomas Graves | Kishor Patil |
| [SPARK-18338](https://issues.apache.org/jira/browse/SPARK-18338) | ObjectHashAggregateSuite fails under Maven builds |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-18403](https://issues.apache.org/jira/browse/SPARK-18403) | ObjectHashAggregateSuite is being flaky (occasional OOM errors) |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-18418](https://issues.apache.org/jira/browse/SPARK-18418) | Make release script hadoop profiles aren't correctly specified. |  Critical | Build, Project Infra | holdenk | holdenk |
| [SPARK-16998](https://issues.apache.org/jira/browse/SPARK-16998) | select($"column1", explode($"column2")) is extremely slow |  Major | SQL | TobiasP | Herman van Hovell |
| [SPARK-18535](https://issues.apache.org/jira/browse/SPARK-18535) | Redact sensitive information from Spark logs and UI |  Major | Web UI, YARN | Mark Grover | Mark Grover |
| [SPARK-18631](https://issues.apache.org/jira/browse/SPARK-18631) | Avoid making data skew worse in ExchangeCoordinator |  Major | SQL | Mark Hamstra | Mark Hamstra |
| [SPARK-17932](https://issues.apache.org/jira/browse/SPARK-17932) | Failed to run SQL "show table extended  like table\_name"  in Spark2.0.0 |  Major | SQL | pin\_zhang | Jiang Xingbo |
| [SPARK-18251](https://issues.apache.org/jira/browse/SPARK-18251) | DataSet API \| RuntimeException: Null value appeared in non-nullable field when holding Option Case Class |  Major | Spark Core | Aniket Bhatnagar | Wenchen Fan |
| [SPARK-18553](https://issues.apache.org/jira/browse/SPARK-18553) | Executor loss may cause TaskSetManager to be leaked |  Blocker | Scheduler | Josh Rosen | Josh Rosen |
| [SPARK-18274](https://issues.apache.org/jira/browse/SPARK-18274) | Memory leak in PySpark StringIndexer |  Critical | ML, PySpark | Jonas Amrich | Sandeep Singh |
| [SPARK-18284](https://issues.apache.org/jira/browse/SPARK-18284) | Scheme of DataFrame generated from RDD is different between master and 2.0 |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-18629](https://issues.apache.org/jira/browse/SPARK-18629) | Fix numPartition of JDBCSuite Testcase |  Trivial | SQL | Weiqing Yang | Weiqing Yang |
| [SPARK-18586](https://issues.apache.org/jira/browse/SPARK-18586) | netty-3.8.0.Final.jar has vulnerability CVE-2014-3488  and CVE-2014-0193 |  Minor | Build | meiyoula | Sean Owen |
| [SPARK-18555](https://issues.apache.org/jira/browse/SPARK-18555) | na.fill miss up original values in long integers |  Critical | SQL | Mahmoud Rawas | Song Jun |
| [SPARK-18374](https://issues.apache.org/jira/browse/SPARK-18374) | Incorrect words in StopWords/english.txt |  Minor | ML | nirav patel | yuhao yang |
| [SPARK-18620](https://issues.apache.org/jira/browse/SPARK-18620) | Spark Streaming + Kinesis : Receiver MaxRate is violated |  Minor | DStreams | david przybill | Takeshi Yamamuro |
| [SPARK-4105](https://issues.apache.org/jira/browse/SPARK-4105) | FAILED\_TO\_UNCOMPRESS(5) errors when fetching shuffle data with sort-based shuffle |  Critical | Shuffle, Spark Core | Josh Rosen | Davies Liu |
| [SPARK-15844](https://issues.apache.org/jira/browse/SPARK-15844) | HistoryServer doesn't come up if spark.authenticate = true |  Minor | Spark Core | Steve Loughran | Steve Loughran |
| [SPARK-16297](https://issues.apache.org/jira/browse/SPARK-16297) | Mapping Boolean and string  to BIT and NVARCHAR(MAX) for SQL Server jdbc dialect |  Minor | SQL | Oussama Mekni | Oussama Mekni |
| [SPARK-18752](https://issues.apache.org/jira/browse/SPARK-18752) | "isSrcLocal" parameter to Hive loadTable / loadPartition should come from user |  Minor | SQL | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-18717](https://issues.apache.org/jira/browse/SPARK-18717) | Datasets - crash (compile exception) when mapping to immutable scala map |  Major | . | Damian Momot | Andrew Ray |
| [SPARK-18675](https://issues.apache.org/jira/browse/SPARK-18675) | CTAS for hive serde table should work for all hive versions |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18746](https://issues.apache.org/jira/browse/SPARK-18746) | Add implicit encoders for BigDecimal, timestamp and date |  Major | SQL | Weiqing Yang | Weiqing Yang |
| [SPARK-18730](https://issues.apache.org/jira/browse/SPARK-18730) | Ask the build script to link to Jenkins test report page instead of full console output page when posting to GitHub |  Minor | Build | Cheng Lian | Cheng Lian |
| [SPARK-18753](https://issues.apache.org/jira/browse/SPARK-18753) | Inconsistent behavior after writing to parquet files |  Major | SQL | Shixiong Zhu | Hyukjin Kwon |
| [SPARK-18703](https://issues.apache.org/jira/browse/SPARK-18703) | Insertion/CTAS against Hive Tables: Staging Directories and Data Files Not Dropped Until Normal Termination of JVM |  Critical | SQL | Xiao Li | Xiao Li |
| [SPARK-17910](https://issues.apache.org/jira/browse/SPARK-17910) | Allow users to update the comment of a column |  Major | SQL | Yin Huai | Jiang Xingbo |
| [SPARK-18845](https://issues.apache.org/jira/browse/SPARK-18845) | PageRank has incorrect initialization value that leads to slow convergence |  Major | GraphX | Andrew Ray | Andrew Ray |
| [SPARK-18108](https://issues.apache.org/jira/browse/SPARK-18108) | Partition discovery fails with explicitly written long partitions |  Minor | SQL | Richard Moorhead | Takeshi Yamamuro |
| [SPARK-18897](https://issues.apache.org/jira/browse/SPARK-18897) | Fix SparkR SQL Test to drop test table |  Major | SparkR, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-18485](https://issues.apache.org/jira/browse/SPARK-18485) | Underlying integer overflow when create ChunkedByteBufferOutputStream in MemoryStore |  Minor | . | Genmao Yu | Genmao Yu |
| [SPARK-18700](https://issues.apache.org/jira/browse/SPARK-18700) | getCached in HiveMetastoreCatalog not thread safe cause driver OOM |  Major | SQL | Li Yuanjian | Li Yuanjian |
| [SPARK-18928](https://issues.apache.org/jira/browse/SPARK-18928) | FileScanRDD, JDBCRDD, and UnsafeSorter should support task cancellation |  Major | Spark Core, SQL | Josh Rosen | Josh Rosen |
| [SPARK-18761](https://issues.apache.org/jira/browse/SPARK-18761) | Uncancellable / unkillable tasks may starve jobs of resoures |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-18899](https://issues.apache.org/jira/browse/SPARK-18899) | append data to a bucketed table with mismatched bucketing should fail |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18912](https://issues.apache.org/jira/browse/SPARK-18912) | append to a non-file-based data source table should detect columns number mismatch |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18913](https://issues.apache.org/jira/browse/SPARK-18913) | append to a table with special column names should work |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18927](https://issues.apache.org/jira/browse/SPARK-18927) | MemorySink for StructuredStreaming can't recover from checkpoint if location is provided in conf |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-18951](https://issues.apache.org/jira/browse/SPARK-18951) | Upgrade com.thoughtworks.paranamer/paranamer to 2.6 |  Major | Build | Yin Huai | Yin Huai |
| [SPARK-18894](https://issues.apache.org/jira/browse/SPARK-18894) | Event time watermark delay threshold specified in months or years gives incorrect results |  Critical | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-18031](https://issues.apache.org/jira/browse/SPARK-18031) | Flaky test: org.apache.spark.streaming.scheduler.ExecutorAllocationManagerSuite basic functionality |  Major | Spark Core | Davies Liu | Shixiong Zhu |
| [SPARK-18954](https://issues.apache.org/jira/browse/SPARK-18954) | Fix flaky test: o.a.s.streaming.BasicOperationsSuite rdd cleanup - map and window |  Major | Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18588](https://issues.apache.org/jira/browse/SPARK-18588) | KafkaSourceStressForDontFailOnDataLossSuite is flaky |  Major | Structured Streaming | Herman van Hovell | Shixiong Zhu |
| [SPARK-18528](https://issues.apache.org/jira/browse/SPARK-18528) | limit + groupBy leads to java.lang.NullPointerException |  Major | PySpark, SQL | Corey | Takeshi Yamamuro |
| [SPARK-18908](https://issues.apache.org/jira/browse/SPARK-18908) | It's hard for the user to see the failure if StreamExecution fails to create the logical plan |  Critical | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-17807](https://issues.apache.org/jira/browse/SPARK-17807) | Scalatest listed as compile dependency in spark-tags |  Trivial | Spark Core | Tom Standard | Ryan Williams |
| [SPARK-18963](https://issues.apache.org/jira/browse/SPARK-18963) | Test Failuire on big endian; o.a.s.unsafe.types.UTF8StringSuite.writeToOutputStreamIntArray |  Minor | Tests | Pete Robbins | Pete Robbins |
| [SPARK-17755](https://issues.apache.org/jira/browse/SPARK-17755) | Master may ask a worker to launch an executor before the worker actually got the response of registration |  Major | Spark Core | Yin Huai | Shixiong Zhu |
| [SPARK-18989](https://issues.apache.org/jira/browse/SPARK-18989) | DESC TABLE should not fail with format class not found |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-19004](https://issues.apache.org/jira/browse/SPARK-19004) | Fix \`JDBCWriteSuite.testH2Dialect\` by removing \`getCatalystType\` |  Minor | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-18993](https://issues.apache.org/jira/browse/SPARK-18993) | Unable to build/compile Spark in IntelliJ due to missing Scala deps in spark-tags |  Critical | Build | Xiao Li | Sean Owen |
| [SPARK-18958](https://issues.apache.org/jira/browse/SPARK-18958) | SparkR should support toJSON on DataFrame |  Minor | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-19012](https://issues.apache.org/jira/browse/SPARK-19012) | CreateOrReplaceTempView throws org.apache.spark.sql.catalyst.parser.ParseException when viewName first char is numerical |  Major | SQL | Jork Zijlstra | Dongjoon Hyun |
| [SPARK-19016](https://issues.apache.org/jira/browse/SPARK-19016) | Document scalable partition handling feature in the programming guide |  Minor | Documentation | Cheng Lian | Cheng Lian |
| [SPARK-19028](https://issues.apache.org/jira/browse/SPARK-19028) | Fixed non-thread-safe functions used in SessionCatalog |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-19050](https://issues.apache.org/jira/browse/SPARK-19050) | Fix EventTimeWatermarkSuite 'delay in months and years handled correctly' |  Major | Structured Streaming, Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18877](https://issues.apache.org/jira/browse/SPARK-18877) | Unable to read given csv data. Excepion: java.lang.IllegalArgumentException: requirement failed: Decimal precision 28 exceeds max precision 20 |  Major | SQL | Navya Krishnappa | Dongjoon Hyun |
| [SPARK-15555](https://issues.apache.org/jira/browse/SPARK-15555) | Driver with --supervise option cannot be killed in Mesos mode |  Major | Deploy, Mesos | Devaraj K | Devaraj K |
| [SPARK-19072](https://issues.apache.org/jira/browse/SPARK-19072) | Catalyst's IN always returns false for infinity |  Major | SQL, Tests | Kay Ousterhout | Wenchen Fan |
| [SPARK-19073](https://issues.apache.org/jira/browse/SPARK-19073) | LauncherState should be only set to SUBMITTED after the application is submitted |  Major | Deploy | shimingfei | shimingfei |
| [SPARK-19062](https://issues.apache.org/jira/browse/SPARK-19062) | Utils.writeByteBuffer should not modify buffer position |  Minor | Spark Core | Kay Ousterhout | Kay Ousterhout |
| [SPARK-19058](https://issues.apache.org/jira/browse/SPARK-19058) | fix partition related behaviors with DataFrameWriter.saveAsTable |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-14958](https://issues.apache.org/jira/browse/SPARK-14958) | Failed task hangs if error is encountered when getting task result |  Major | . | Rui Li | Rui Li |
| [SPARK-16792](https://issues.apache.org/jira/browse/SPARK-16792) | Dataset containing a Case Class with a List type causes a CompileException (converting sequence to list) |  Critical | SQL | Jamie Hutton | Michal Šenkýř |
| [SPARK-16815](https://issues.apache.org/jira/browse/SPARK-16815) | Dataset[List[T]] leads to ArrayStoreException |  Minor | SQL | TobiasP | Michal Šenkýř |
| [SPARK-19033](https://issues.apache.org/jira/browse/SPARK-19033) | HistoryServer still uses old ACLs even if ACLs are updated |  Minor | Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-19083](https://issues.apache.org/jira/browse/SPARK-19083) | sbin/start-history-server.sh scripts use of $@ without "" |  Trivial | . | zuotingbing | zuotingbing |
| [SPARK-19106](https://issues.apache.org/jira/browse/SPARK-19106) | Styling for the configuration docs is broken |  Trivial | Documentation | Nicholas Chammas | Sean Owen |
| [SPARK-19110](https://issues.apache.org/jira/browse/SPARK-19110) | DistributedLDAModel returns different logPrior for original and loaded model |  Major | ML, MLlib | Miao Wang | Miao Wang |
| [SPARK-19093](https://issues.apache.org/jira/browse/SPARK-19093) | Cached tables are not used in SubqueryExpression |  Major | SQL | Josh Rosen | Dilip Biswal |
| [SPARK-18952](https://issues.apache.org/jira/browse/SPARK-18952) | regex strings not properly escaped in codegen for aggregations |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-19117](https://issues.apache.org/jira/browse/SPARK-19117) | script transformation does not work on Windows due to fixed bash executable location |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-18857](https://issues.apache.org/jira/browse/SPARK-18857) | SparkSQL ThriftServer hangs while extracting huge data volumes in incremental collect mode |  Major | SQL | vishal agrawal | Dongjoon Hyun |
| [SPARK-19137](https://issues.apache.org/jira/browse/SPARK-19137) | Garbage left in source tree after SQL tests are run |  Minor | SQL, Structured Streaming, Tests | Marcelo Vanzin | Dongjoon Hyun |
| [SPARK-19133](https://issues.apache.org/jira/browse/SPARK-19133) | SparkR glm Gamma family results in error |  Major | ML, SparkR | Felix Cheung | Felix Cheung |
| [SPARK-19157](https://issues.apache.org/jira/browse/SPARK-19157) | should be able to change spark.sql.runSQLOnFiles at runtime |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-19130](https://issues.apache.org/jira/browse/SPARK-19130) | SparkR should support setting and adding new column with singular value implicitly |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-19158](https://issues.apache.org/jira/browse/SPARK-19158) | ml.R example fails in yarn-cluster mode due to lacks of e1071 package |  Major | Examples | Yesha Vora | Yanbo Liang |
| [SPARK-18969](https://issues.apache.org/jira/browse/SPARK-18969) | PullOutNondeterministic should work for Aggregate operator |  Major | SQL | Reynold Xin | Wenchen Fan |
| [SPARK-19055](https://issues.apache.org/jira/browse/SPARK-19055) | SparkSession initialization will be associated with invalid SparkContext when new SparkContext is created to replace stopped SparkContext |  Major | PySpark, SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-18687](https://issues.apache.org/jira/browse/SPARK-18687) | Backward compatibility - creating a Dataframe on a new SQLContext object fails with a Derby error |  Major | PySpark, SQL | Vinayak Joshi | Vinayak Joshi |
| [SPARK-19178](https://issues.apache.org/jira/browse/SPARK-19178) | convert string of large numbers to int should return null |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-19142](https://issues.apache.org/jira/browse/SPARK-19142) | spark.kmeans should take seed, initSteps, and tol as parameters |  Major | SparkR | Miao Wang | Miao Wang |
| [SPARK-17237](https://issues.apache.org/jira/browse/SPARK-17237) | DataFrame fill after pivot causing org.apache.spark.sql.AnalysisException |  Major | SQL | Jiang Qiqi | Takeshi Yamamuro |
| [SPARK-19092](https://issues.apache.org/jira/browse/SPARK-19092) | Save() API of DataFrameWriter should not scan all the saved files |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-19180](https://issues.apache.org/jira/browse/SPARK-19180) | the offset of short is 4 in OffHeapColumnVector's putShorts |  Major | SQL | yucai | yucai |
| [SPARK-19221](https://issues.apache.org/jira/browse/SPARK-19221) | Add winutils binaries to Path in AppVeyor for Hadoop libraries to call native libraries properly |  Major | Project Infra, SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-19042](https://issues.apache.org/jira/browse/SPARK-19042) | Remove query string from jar url for executor |  Minor | . | hustfxj | hustfxj |
| [SPARK-18971](https://issues.apache.org/jira/browse/SPARK-18971) | Netty issue may cause the shuffle client hang |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-19206](https://issues.apache.org/jira/browse/SPARK-19206) | Update outdated parameter descriptions in external-kafka module |  Minor | DStreams | Genmao Yu | Genmao Yu |
| [SPARK-19120](https://issues.apache.org/jira/browse/SPARK-19120) | Returned an Empty Result after Loading a Hive Table |  Critical | SQL | Xiao Li | Xiao Li |
| [SPARK-19082](https://issues.apache.org/jira/browse/SPARK-19082) | The config ignoreCorruptFiles doesn't work for Parquet |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-19066](https://issues.apache.org/jira/browse/SPARK-19066) | SparkR LDA doesn't set optimizer correctly |  Major | SparkR | Miao Wang | Miao Wang |
| [SPARK-19232](https://issues.apache.org/jira/browse/SPARK-19232) | SparkR distribution cache location is wrong on Windows |  Trivial | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-18828](https://issues.apache.org/jira/browse/SPARK-18828) | Refactor SparkR build and test scripts |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-18905](https://issues.apache.org/jira/browse/SPARK-18905) | Potential Issue of Semantics of BatchCompleted |  Major | DStreams | Nan Zhu | Nan Zhu |
| [SPARK-19179](https://issues.apache.org/jira/browse/SPARK-19179) | spark.yarn.access.namenodes description is wrong |  Minor | YARN | Thomas Graves | Saisai Shao |
| [SPARK-19019](https://issues.apache.org/jira/browse/SPARK-19019) | PySpark does not work with Python 3.6.0 |  Critical | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-19065](https://issues.apache.org/jira/browse/SPARK-19065) | dropDuplicates uses the same expression id for Alias and Attribute and breaks attribute replacement |  Major | Structured Streaming | Michael Armbrust | Shixiong Zhu |
| [SPARK-19129](https://issues.apache.org/jira/browse/SPARK-19129) | alter table table\_name drop partition with a empty string will drop the whole table |  Critical | SQL | lichenglin | Xiao Li |
| [SPARK-19223](https://issues.apache.org/jira/browse/SPARK-19223) | InputFileBlockHolder doesn't work with Python UDF for datasource other than FileFormat |  Major | PySpark, SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-18559](https://issues.apache.org/jira/browse/SPARK-18559) | Fix HLL++ with small relative error |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-19231](https://issues.apache.org/jira/browse/SPARK-19231) | SparkR hangs when there is download or untar failure |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-18113](https://issues.apache.org/jira/browse/SPARK-18113) | Sending AskPermissionToCommitOutput failed, driver enter into task deadloop |  Major | Scheduler | xuqing | jin xing |
| [SPARK-19059](https://issues.apache.org/jira/browse/SPARK-19059) | Unable to retrieve data from a parquet table whose name starts with underscore |  Major | Spark Core | Giambattista | Jayadevan M |
| [SPARK-19292](https://issues.apache.org/jira/browse/SPARK-19292) | filter with partition columns should be case-insensitive on Hive tables |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-19134](https://issues.apache.org/jira/browse/SPARK-19134) | Fix several sql, mllib and status api examples not working |  Minor | MLlib, PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-19069](https://issues.apache.org/jira/browse/SPARK-19069) | Expose task 'status' and 'duration' in spark history server REST API. |  Major | Spark Core | Parag Chaudhari | Parag Chaudhari |
| [SPARK-19314](https://issues.apache.org/jira/browse/SPARK-19314) | Do not allow sort before aggregation in Structured Streaming plan |  Blocker | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-18589](https://issues.apache.org/jira/browse/SPARK-18589) | persist() resolves "java.lang.RuntimeException: Invalid PythonUDF \<lambda\>(...), requires attributes from more than one child" |  Critical | PySpark, SQL | Nicholas Chammas | Davies Liu |
| [SPARK-19267](https://issues.apache.org/jira/browse/SPARK-19267) | Fix a race condition when stopping StateStore |  Minor | . | Shixiong Zhu | Shixiong Zhu |
| [SPARK-14536](https://issues.apache.org/jira/browse/SPARK-14536) | NPE in JDBCRDD when array column contains nulls (postgresql) |  Major | SQL | Jeremy Smith | Suresh Thalamati |
| [SPARK-19305](https://issues.apache.org/jira/browse/SPARK-19305) | partitioned table should always put partition columns at the end of table schema |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-19155](https://issues.apache.org/jira/browse/SPARK-19155) | MLlib GeneralizedLinearRegression family and link should case insensitive |  Major | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-19229](https://issues.apache.org/jira/browse/SPARK-19229) | Disallow Creating Hive Source Tables when Hive Support is Not Enabled |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-19309](https://issues.apache.org/jira/browse/SPARK-19309) | disable common subexpression elimination for conditional expressions |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-19218](https://issues.apache.org/jira/browse/SPARK-19218) | Fix SET command to show a result correctly and in a sorted order |  Trivial | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-19284](https://issues.apache.org/jira/browse/SPARK-19284) | append to a existed partitioned datasource table should have no CustomPartitionLocations |  Minor | SQL | Song Jun | Song Jun |
| [SPARK-17455](https://issues.apache.org/jira/browse/SPARK-17455) | IsotonicRegression takes non-polynomial time for some inputs |  Major | MLlib | Nic Eggert | Nic Eggert |
| [SPARK-19306](https://issues.apache.org/jira/browse/SPARK-19306) | Fix inconsistent state in DiskBlockObjectWriter when exception occurred |  Minor | Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-9435](https://issues.apache.org/jira/browse/SPARK-9435) | Java UDFs don't work with GROUP BY expressions |  Major | SQL | James Aley | Hyukjin Kwon |
| [SPARK-19268](https://issues.apache.org/jira/browse/SPARK-19268) | File does not exist: /tmp/temporary-157b89c1-27bb-49f3-a70c-ca1b75022b4d/state/0/2/1.delta |  Critical | Structured Streaming | liyan | Shixiong Zhu |
| [SPARK-16473](https://issues.apache.org/jira/browse/SPARK-16473) | BisectingKMeans Algorithm failing with java.util.NoSuchElementException: key not found |  Major | ML, MLlib | Alok Bhandari | Ilya Matiach |
| [SPARK-19246](https://issues.apache.org/jira/browse/SPARK-19246) | CataLogTable's partitionSchema should check order&exist |  Major | SQL | Song Jun | Song Jun |
| [SPARK-17913](https://issues.apache.org/jira/browse/SPARK-17913) | Filter/join expressions can return incorrect results when comparing strings to longs |  Major | SQL | Ming Beckwith | Wenchen Fan |
| [SPARK-18036](https://issues.apache.org/jira/browse/SPARK-18036) | Decision Trees do not handle edge cases |  Minor | ML, MLlib | Seth Hendrickson | Ilya Matiach |
| [SPARK-10651](https://issues.apache.org/jira/browse/SPARK-10651) | Flaky test: BroadcastSuite |  Major | Spark Core, Tests | Xiangrui Meng | Shixiong Zhu |
| [SPARK-19017](https://issues.apache.org/jira/browse/SPARK-19017) | NOT IN subquery with more than one column may return incorrect results |  Major | SQL | Nattavut Sutyanyong | Nattavut Sutyanyong |
| [SPARK-19334](https://issues.apache.org/jira/browse/SPARK-19334) | Fix the code injection vulnerability related to Generator functions. |  Blocker | SQL | Kousuke Saruta | Kousuke Saruta |
| [SPARK-18750](https://issues.apache.org/jira/browse/SPARK-18750) | spark should be able to control the number of executor and should not throw stack overslow |  Major | . | Neerja Khattar | Marcelo Vanzin |
| [SPARK-19313](https://issues.apache.org/jira/browse/SPARK-19313) | GaussianMixture throws cryptic error when number of features is too high |  Minor | ML, MLlib | Seth Hendrickson | Seth Hendrickson |
| [SPARK-18863](https://issues.apache.org/jira/browse/SPARK-18863) | Output non-aggregate expressions without GROUP BY in a subquery does not yield an error |  Major | SQL | Nattavut Sutyanyong | Nattavut Sutyanyong |
| [SPARK-19311](https://issues.apache.org/jira/browse/SPARK-19311) | UDFs disregard UDT type hierarchy |  Major | SQL | Gregor Moehler | Gregor Moehler |
| [SPARK-14804](https://issues.apache.org/jira/browse/SPARK-14804) | Graph vertexRDD/EdgeRDD checkpoint results ClassCastException: |  Minor | GraphX | SuYan | Tathagata Das |
| [SPARK-18020](https://issues.apache.org/jira/browse/SPARK-18020) | Kinesis receiver does not snapshot when shard completes |  Minor | DStreams | Yonathan Randolph | Takeshi Yamamuro |
| [SPARK-19220](https://issues.apache.org/jira/browse/SPARK-19220) | SSL redirect handler only redirects the server's root |  Major | Web UI | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-19338](https://issues.apache.org/jira/browse/SPARK-19338) | Always Identical Name for UDF in the EXPLAIN output |  Major | SQL | Xiao Li | Takeshi Yamamuro |
| [SPARK-12970](https://issues.apache.org/jira/browse/SPARK-12970) | Error in documentation on creating rows with schemas defined by structs |  Minor | Documentation | Haidar Hadi | Hyukjin Kwon |
| [SPARK-19324](https://issues.apache.org/jira/browse/SPARK-19324) | JVM stdout output is dropped in SparkR |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-19403](https://issues.apache.org/jira/browse/SPARK-19403) | pyspark.sql.column exports non-existent names |  Major | . | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-19396](https://issues.apache.org/jira/browse/SPARK-19396) | [DOC] Options are case-insensitive since Spark 2.1 |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-19406](https://issues.apache.org/jira/browse/SPARK-19406) | Function to\_json ignores the user-provided options |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-19409](https://issues.apache.org/jira/browse/SPARK-19409) | Upgrade Parquet to 1.8.2 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-19395](https://issues.apache.org/jira/browse/SPARK-19395) | Convert coefficients in summary to matrix |  Major | SparkR | Wayne Zhang | Wayne Zhang |
| [SPARK-19319](https://issues.apache.org/jira/browse/SPARK-19319) | SparkR Kmeans summary returns error when the cluster size doesn't equal to k |  Major | ML, SparkR | Miao Wang | Miao Wang |
| [SPARK-19347](https://issues.apache.org/jira/browse/SPARK-19347) | ReceiverSupervisorImpl can add block to ReceiverTracker multiple times because of askWithRetry |  Major | DStreams, Spark Core | jin xing | jin xing |
| [SPARK-19432](https://issues.apache.org/jira/browse/SPARK-19432) | Fix an unexpected failure when connecting timeout |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-19437](https://issues.apache.org/jira/browse/SPARK-19437) | ExecutorId in HearbeatReceiverSuite is incorrect. |  Major | Spark Core | jin xing | jin xing |
| [SPARK-19386](https://issues.apache.org/jira/browse/SPARK-19386) | Bisecting k-means in SparkR documentation |  Major | ML, SparkR | Felix Cheung | Krishna Kalyan |
| [SPARK-19425](https://issues.apache.org/jira/browse/SPARK-19425) | Make ExtractEquiJoinKeys support UDT columns |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-19452](https://issues.apache.org/jira/browse/SPARK-19452) | Fix bug in the name assignment method in SparkR |  Major | SparkR | Wayne Zhang | Wayne Zhang |
| [SPARK-19279](https://issues.apache.org/jira/browse/SPARK-19279) | Disallow Users to Create a Hive Table With an Empty Schema |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-17663](https://issues.apache.org/jira/browse/SPARK-17663) | SchedulableBuilder should handle invalid data access via scheduler.allocation.file |  Major | Scheduler | Eren Avsarogullari | Eren Avsarogullari |
| [SPARK-19472](https://issues.apache.org/jira/browse/SPARK-19472) | [SQL]SQLParser fails to resolve nested CASE WHEN statement with parentheses |  Major | SQL | StanZhai | Herman van Hovell |
| [SPARK-18967](https://issues.apache.org/jira/browse/SPARK-18967) | Locality preferences should be used when scheduling even when delay scheduling is turned off |  Major | Scheduler | Imran Rashid | Imran Rashid |
| [SPARK-19260](https://issues.apache.org/jira/browse/SPARK-19260) |  Spaces or "%20" in path parameter are not correctly handled with HistoryServer |  Minor | Spark Core | zuotingbing | zuotingbing |
| [SPARK-19447](https://issues.apache.org/jira/browse/SPARK-19447) | Fix input metrics for range operator |  Major | SQL | Reynold Xin | Ala Luszczak |
| [SPARK-18609](https://issues.apache.org/jira/browse/SPARK-18609) | [SQL] column mixup with CROSS JOIN |  Major | SQL | Furcy Pin | Herman van Hovell |
| [SPARK-18841](https://issues.apache.org/jira/browse/SPARK-18841) | PushProjectionThroughUnion exception when there are same column |  Major | SQL | Song Jun | Herman van Hovell |
| [SPARK-19397](https://issues.apache.org/jira/browse/SPARK-19397) | Option names of LIBSVM and TEXT are not case insensitive. |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-19400](https://issues.apache.org/jira/browse/SPARK-19400) | GLM fails for intercept only model |  Major | ML | Wayne Zhang | Wayne Zhang |
| [SPARK-19514](https://issues.apache.org/jira/browse/SPARK-19514) | Range is not interruptible |  Major | SQL | Ala Luszczak | Ala Luszczak |
| [SPARK-19512](https://issues.apache.org/jira/browse/SPARK-19512) | codegen for compare structs fails |  Major | SQL | Bogdan Raducanu | Bogdan Raducanu |
| [SPARK-17975](https://issues.apache.org/jira/browse/SPARK-17975) | EMLDAOptimizer fails with ClassCastException on YARN |  Major | MLlib | Jeff Stein | Tathagata Das |
| [SPARK-19543](https://issues.apache.org/jira/browse/SPARK-19543) | from\_json fails when the input row is empty |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-19545](https://issues.apache.org/jira/browse/SPARK-19545) | Compilation error with method not found when build against Hadoop 2.6.0. |  Major | YARN | Saisai Shao | Saisai Shao |
| [SPARK-19459](https://issues.apache.org/jira/browse/SPARK-19459) | ORC tables cannot be read when they contain char/varchar columns |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-19548](https://issues.apache.org/jira/browse/SPARK-19548) | Hive UDF should support List and Map types |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-19559](https://issues.apache.org/jira/browse/SPARK-19559) | Fix flaky KafkaSourceSuite.subscribing topic by pattern with topic deletions |  Major | Structured Streaming, Tests | Kay Ousterhout | Liwei Lin |
| [SPARK-19564](https://issues.apache.org/jira/browse/SPARK-19564) | KafkaOffsetReader's consumers should not be in the same group |  Minor | Structured Streaming | Liwei Lin | Liwei Lin |
| [SPARK-19574](https://issues.apache.org/jira/browse/SPARK-19574) | Liquid Exception: Start indices amount is not equal to end indices amount |  Trivial | Documentation | Xiao Li | Xiao Li |
| [SPARK-19496](https://issues.apache.org/jira/browse/SPARK-19496) | to\_date with format has weird behavior |  Major | SQL | Wenchen Fan | Song Jun |
| [SPARK-19342](https://issues.apache.org/jira/browse/SPARK-19342) | Datatype tImestamp is converted to numeric in collect method |  Major | SparkR | Fangzhou Yang | Fangzhou Yang |
| [SPARK-19506](https://issues.apache.org/jira/browse/SPARK-19506) | Missing warnings import in pyspark.ml.util |  Minor | ML, PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-17714](https://issues.apache.org/jira/browse/SPARK-17714) | ClassCircularityError is thrown when using org.apache.spark.util.Utils.classForName |  Major | Spark Core | Weiqing Yang | Shixiong Zhu |
| [SPARK-19520](https://issues.apache.org/jira/browse/SPARK-19520) | WAL should not be encrypted |  Major | DStreams | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-19429](https://issues.apache.org/jira/browse/SPARK-19429) | Column.\_\_getitem\_\_ should support slice arguments |  Minor | PySpark, SQL | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-19539](https://issues.apache.org/jira/browse/SPARK-19539) | CREATE TEMPORARY TABLE needs to avoid existing temp view |  Major | SQL | Xin Wu | Xin Wu |
| [SPARK-19585](https://issues.apache.org/jira/browse/SPARK-19585) | Fix the cacheTable and uncacheTable API call in the SQL Programming Guide |  Minor | Documentation | Sunitha Kambhampati | Sunitha Kambhampati |
| [SPARK-19529](https://issues.apache.org/jira/browse/SPARK-19529) | TransportClientFactory.createClient() shouldn't call awaitUninterruptibly() |  Major | Shuffle, Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-19318](https://issues.apache.org/jira/browse/SPARK-19318) | Docker test case failure: \`SPARK-16625: General data types to be mapped to Oracle\` |  Major | SQL | Xiao Li | Suresh Thalamati |
| [SPARK-19587](https://issues.apache.org/jira/browse/SPARK-19587) | Disallow when sort columns are part of partitioning columns |  Major | SQL | Tejas Patil | Wenchen Fan |
| [SPARK-19399](https://issues.apache.org/jira/browse/SPARK-19399) | R Coalesce on DataFrame and coalesce on column |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-19329](https://issues.apache.org/jira/browse/SPARK-19329) | after alter a datasource table's location to a not exist location and then insert data throw Exception |  Major | SQL | Song Jun | Song Jun |
| [SPARK-19603](https://issues.apache.org/jira/browse/SPARK-19603) | Fix StreamingQuery explain command |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-19618](https://issues.apache.org/jira/browse/SPARK-19618) | Inconsistency wrt max. buckets allowed from Dataframe API vs SQL |  Major | SQL | Tejas Patil | Tejas Patil |
| [SPARK-18120](https://issues.apache.org/jira/browse/SPARK-18120) | QueryExecutionListener method doesnt' get executed for DataFrameWriter methods |  Major | SQL | Salil Surendran | Wenchen Fan |
| [SPARK-19622](https://issues.apache.org/jira/browse/SPARK-19622) | Fix a http error in a paged table when using a \`Go\` button to search. |  Minor | Web UI | StanZhai | StanZhai |
| [SPARK-19500](https://issues.apache.org/jira/browse/SPARK-19500) | Fail to spill the aggregated hash map when radix sort is used |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-18986](https://issues.apache.org/jira/browse/SPARK-18986) | ExternalAppendOnlyMap shouldn't fail when forced to spill before calling its iterator |  Major | Spark Core | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-19517](https://issues.apache.org/jira/browse/SPARK-19517) | KafkaSource fails to initialize partition offsets |  Blocker | Structured Streaming | Roberto Agostino Vitillo | Roberto Agostino Vitillo |
| [SPARK-19263](https://issues.apache.org/jira/browse/SPARK-19263) | DAGScheduler should avoid sending conflicting task set. |  Major | Scheduler | jin xing | jin xing |
| [SPARK-19646](https://issues.apache.org/jira/browse/SPARK-19646) | binaryRecords replicates records in scala API |  Major | Spark Core | BahaaEddin AlAila | Sean Owen |
| [SPARK-19626](https://issues.apache.org/jira/browse/SPARK-19626) | Configuration \`spark.yarn.credentials.updateTime\` takes no effect |  Minor | Spark Core, YARN | Kent Yao | Kent Yao |
| [SPARK-19617](https://issues.apache.org/jira/browse/SPARK-19617) | Fix the race condition when starting and stopping a query quickly |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-19666](https://issues.apache.org/jira/browse/SPARK-19666) | Exception when calling createDataFrame with typed RDD |  Major | SQL | Colin Breame | Hyukjin Kwon |
| [SPARK-19652](https://issues.apache.org/jira/browse/SPARK-19652) | REST API does not perform user auth for individual apps |  Major | Web UI | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-15615](https://issues.apache.org/jira/browse/SPARK-15615) | Support for creating a dataframe from JSON in Dataset[String] |  Major | . | PJ Fanning | PJ Fanning |
| [SPARK-19691](https://issues.apache.org/jira/browse/SPARK-19691) | Calculating percentile of decimal column fails with ClassCastException |  Major | SQL | Josh Rosen | Takeshi Yamamuro |
| [SPARK-18699](https://issues.apache.org/jira/browse/SPARK-18699) | Spark CSV parsing types other than String throws exception when malformed |  Major | SQL | Jakub Nowacki | Takeshi Yamamuro |
| [SPARK-19674](https://issues.apache.org/jira/browse/SPARK-19674) | Ignore driver accumulator updates don't belong to the execution when merging all accumulator updates |  Minor | SQL | Carson Wang | Carson Wang |
| [SPARK-19707](https://issues.apache.org/jira/browse/SPARK-19707) | Improve the invalid path check for sc.addJar |  Major | Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-19038](https://issues.apache.org/jira/browse/SPARK-19038) | Can't find keytab file when using Hive catalog |  Major | YARN | Peter Parente | Saisai Shao |
| [SPARK-13330](https://issues.apache.org/jira/browse/SPARK-13330) | PYTHONHASHSEED is not propgated to python worker |  Major | PySpark | Jeff Zhang | Jeff Zhang |
| [SPARK-19650](https://issues.apache.org/jira/browse/SPARK-19650) | Metastore-only operations shouldn't trigger a spark job |  Major | SQL | Sameer Agarwal | Herman van Hovell |
| [SPARK-19673](https://issues.apache.org/jira/browse/SPARK-19673) | ThriftServer default app name is changed wrong |  Trivial | SQL | LvDongrong | LvDongrong |
| [SPARK-14772](https://issues.apache.org/jira/browse/SPARK-14772) | Python ML Params.copy treats uid, paramMaps differently than Scala |  Major | ML, PySpark | Joseph K. Bradley | Bryan Cutler |
| [SPARK-19594](https://issues.apache.org/jira/browse/SPARK-19594) | StreamingQueryListener fails to handle QueryTerminatedEvent if more then one listeners exists |  Minor | Structured Streaming | Eyal Zituny | Eyal Zituny |
| [SPARK-19748](https://issues.apache.org/jira/browse/SPARK-19748) | refresh for InMemoryFileIndex with FileStatusCache does not work correctly |  Major | SQL | Song Jun | Song Jun |
| [SPARK-14489](https://issues.apache.org/jira/browse/SPARK-14489) | RegressionEvaluator returns NaN for ALS in Spark ml |  Major | ML | Boris Clémençon | Nick Pentreath |
| [SPARK-19677](https://issues.apache.org/jira/browse/SPARK-19677) | HDFSBackedStateStoreProvider fails to overwrite existing file |  Critical | Structured Streaming | Roberto Agostino Vitillo | Roberto Agostino Vitillo |
| [SPARK-19463](https://issues.apache.org/jira/browse/SPARK-19463) | refresh the table cache after InsertIntoHadoopFsRelation |  Major | SQL | Song Jun | Song Jun |
| [SPARK-19373](https://issues.apache.org/jira/browse/SPARK-19373) | Mesos implementation of spark.scheduler.minRegisteredResourcesRatio looks at acquired cores rather than registerd cores |  Major | Mesos | Michael Gummelt | Michael Gummelt |
| [SPARK-19460](https://issues.apache.org/jira/browse/SPARK-19460) | Update dataset used in R documentation, examples to reduce warning noise and confusions |  Major | SparkR | Felix Cheung | Miao Wang |
| [SPARK-19736](https://issues.apache.org/jira/browse/SPARK-19736) | refreshByPath should clear all cached plans with the specified path |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-19766](https://issues.apache.org/jira/browse/SPARK-19766) | INNER JOIN on constant alias columns return incorrect results |  Critical | SQL | StanZhai | StanZhai |
| [SPARK-19775](https://issues.apache.org/jira/browse/SPARK-19775) | Remove an obsolete \`partitionBy().insertInto()\` test case |  Trivial | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-13931](https://issues.apache.org/jira/browse/SPARK-13931) | Resolve stage hanging up problem in a particular case |  Major | Scheduler | ZhengYaofeng |  |
| [SPARK-19583](https://issues.apache.org/jira/browse/SPARK-19583) | CTAS for data source tables with an created location does not work |  Major | SQL | Xiao Li | Song Jun |
| [SPARK-19720](https://issues.apache.org/jira/browse/SPARK-19720) | Redact sensitive information from SparkSubmit console output |  Major | Spark Submit | Mark Grover | Mark Grover |
| [SPARK-19631](https://issues.apache.org/jira/browse/SPARK-19631) | OutputCommitCoordinator should not allow commits for already failed tasks |  Major | Scheduler | Patrick Woody | Patrick Woody |
| [SPARK-19276](https://issues.apache.org/jira/browse/SPARK-19276) | FetchFailures can be hidden by user (or sql) exception handling |  Critical | Scheduler, Spark Core, SQL | Imran Rashid | Imran Rashid |
| [SPARK-19779](https://issues.apache.org/jira/browse/SPARK-19779) | structured streaming exist needless tmp file |  Minor | Structured Streaming | Feng Gui | Feng Gui |
| [SPARK-18726](https://issues.apache.org/jira/browse/SPARK-18726) | Filesystem unnecessarily scanned twice during creation of non-catalog table |  Major | SQL | Eric Liang | Song Jun |
| [SPARK-19797](https://issues.apache.org/jira/browse/SPARK-19797) | ML pipelines document error |  Trivial | ML | Zhe Sun | Zhe Sun |
| [SPARK-19801](https://issues.apache.org/jira/browse/SPARK-19801) | Remove JDK7 from Travis CI |  Minor | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-19758](https://issues.apache.org/jira/browse/SPARK-19758) | Casting string to timestamp in inline table definition fails with AnalysisException |  Blocker | SQL | Josh Rosen | Liang-Chi Hsieh |
| [SPARK-19710](https://issues.apache.org/jira/browse/SPARK-19710) | Test Failures in SQLQueryTests on big endian platforms |  Minor | SQL | Pete Robbins | Pete Robbins |
| [SPARK-19774](https://issues.apache.org/jira/browse/SPARK-19774) | StreamExecution should call stop() on sources when a stream fails |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-19718](https://issues.apache.org/jira/browse/SPARK-19718) | Fix flaky test: org.apache.spark.sql.kafka010.KafkaSourceStressForDontFailOnDataLossSuite: stress test for failOnDataLoss=false |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-19804](https://issues.apache.org/jira/browse/SPARK-19804) | HiveClientImpl does not work with Hive 2.2.0 metastore |  Minor | SQL | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-19792](https://issues.apache.org/jira/browse/SPARK-19792) | In the Master Page,the column named “Memory per Node” ,I think  it is not all right |  Trivial | Web UI | liuxian | liuxian |
| [SPARK-19795](https://issues.apache.org/jira/browse/SPARK-19795) | R should support column functions to\_json, from\_json |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-19595](https://issues.apache.org/jira/browse/SPARK-19595) | from\_json produces only a single row when input is a json array |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-19701](https://issues.apache.org/jira/browse/SPARK-19701) | the \`in\` operator in pyspark is broken |  Major | PySpark | Wenchen Fan | Hyukjin Kwon |
| [SPARK-19822](https://issues.apache.org/jira/browse/SPARK-19822) | CheckpointSuite.testCheckpointedOperation: should not check checkpointFilesOfLatestTime by the PATH string. |  Minor | Tests | Genmao Yu | Genmao Yu |
| [SPARK-19064](https://issues.apache.org/jira/browse/SPARK-19064) | Fix pip install issue with ml sub components |  Trivial | PySpark | holdenk | holdenk |
| [SPARK-19737](https://issues.apache.org/jira/browse/SPARK-19737) | New analysis rule for reporting unregistered functions without relying on relation resolution |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-19796](https://issues.apache.org/jira/browse/SPARK-19796) | taskScheduler fails serializing long statements received by thrift server |  Blocker | Spark Core | Giambattista | Imran Rashid |
| [SPARK-19709](https://issues.apache.org/jira/browse/SPARK-19709) | CSV datasource fails to read empty file |  Minor | SQL | Hyukjin Kwon | Wojciech Szymanski |
| [SPARK-19818](https://issues.apache.org/jira/browse/SPARK-19818) | rbind should check for name consistency of input data frames |  Minor | SparkR | Wayne Zhang | Wayne Zhang |
| [SPARK-19832](https://issues.apache.org/jira/browse/SPARK-19832) | DynamicPartitionWriteTask should escape the partition name |  Major | SQL | Song Jun | Song Jun |
| [SPARK-19765](https://issues.apache.org/jira/browse/SPARK-19765) | UNCACHE TABLE should also un-cache all cached plans that refer to this table |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18549](https://issues.apache.org/jira/browse/SPARK-18549) | Failed to Uncache a View that References a Dropped Table. |  Critical | SQL | Xiao Li | Wenchen Fan |
| [SPARK-19561](https://issues.apache.org/jira/browse/SPARK-19561) | Pyspark Dataframes don't allow timestamps near epoch |  Major | PySpark, SQL | Jason White | Jason White |
| [SPARK-19857](https://issues.apache.org/jira/browse/SPARK-19857) | CredentialUpdater calculates the wrong time for next update |  Major | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-19841](https://issues.apache.org/jira/browse/SPARK-19841) | StreamingDeduplicateExec.watermarkPredicate should filter rows based on keys |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-19859](https://issues.apache.org/jira/browse/SPARK-19859) | The new watermark should override the old one |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-19348](https://issues.apache.org/jira/browse/SPARK-19348) | pyspark.ml.Pipeline gets corrupted under multi threaded use |  Major | ML, PySpark | Vinayak Joshi | Bryan Cutler |
| [SPARK-18055](https://issues.apache.org/jira/browse/SPARK-18055) | Dataset.flatMap can't work with types from customized jar |  Major | SQL | Davies Liu | Michael Armbrust |
| [SPARK-19601](https://issues.apache.org/jira/browse/SPARK-19601) | Fix CollapseRepartition rule to preserve shuffle-enabled Repartition |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-19864](https://issues.apache.org/jira/browse/SPARK-19864) | add makeQualifiedPath in SQLTestUtils to optimize some code |  Minor | SQL | Song Jun | Song Jun |
| [SPARK-19727](https://issues.apache.org/jira/browse/SPARK-19727) | Spark SQL round function modifies original column |  Minor | SQL | Sławomir Bogutyn | Wojciech Szymanski |
| [SPARK-19813](https://issues.apache.org/jira/browse/SPARK-19813) | maxFilesPerTrigger combo latestFirst may miss old files in combination with maxFileAge in FileStreamSource |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-19874](https://issues.apache.org/jira/browse/SPARK-19874) | Hide API docs for "org.apache.spark.sql.internal" |  Minor | Build | Shixiong Zhu | Shixiong Zhu |
| [SPARK-19763](https://issues.apache.org/jira/browse/SPARK-19763) | qualified external datasource table location stored in catalog |  Major | SQL | Song Jun | Song Jun |
| [SPARK-19793](https://issues.apache.org/jira/browse/SPARK-19793) | Use clock.getTimeMillis when mark task as finished in TaskSetManager. |  Minor | Scheduler | jin xing | jin xing |
| [SPARK-19861](https://issues.apache.org/jira/browse/SPARK-19861) | watermark should not be a negative time. |  Minor | Structured Streaming | Genmao Yu | Genmao Yu |
| [SPARK-19611](https://issues.apache.org/jira/browse/SPARK-19611) | Spark 2.1.0 breaks some Hive tables backed by case-sensitive data files |  Major | SQL | Adam Budde | Adam Budde |
| [SPARK-19886](https://issues.apache.org/jira/browse/SPARK-19886) | reportDataLoss cause != null check is wrong for Structured Streaming KafkaSource |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-19891](https://issues.apache.org/jira/browse/SPARK-19891) | Await Batch Lock not signaled on stream execution exit |  Major | Structured Streaming | Tyson Condie | Tyson Condie |
| [SPARK-19885](https://issues.apache.org/jira/browse/SPARK-19885) | The config ignoreCorruptFiles doesn't work for CSV |  Major | SQL | Shixiong Zhu |  |
| [SPARK-19620](https://issues.apache.org/jira/browse/SPARK-19620) | Incorrect exchange coordinator Id in physical plan |  Minor | SQL | Carson Wang | Carson Wang |
| [SPARK-19905](https://issues.apache.org/jira/browse/SPARK-19905) | Dataset.inputFiles is broken for Hive SerDe tables |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-19893](https://issues.apache.org/jira/browse/SPARK-19893) | should not run DataFrame set oprations with map type |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-19853](https://issues.apache.org/jira/browse/SPARK-19853) | Uppercase Kafka topics fail when startingOffsets are SpecificOffsets |  Trivial | Structured Streaming | Chris Bowden | Genmao Yu |
| [SPARK-19924](https://issues.apache.org/jira/browse/SPARK-19924) | Handle InvocationTargetException for all Hive Shim |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-19940](https://issues.apache.org/jira/browse/SPARK-19940) | FPGrowthModel.transform should skip duplicated items |  Minor | ML | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-19933](https://issues.apache.org/jira/browse/SPARK-19933) | TPCDS Q70 went wrong while explaining |  Major | SQL | Zhenhua Wang | Herman van Hovell |
| [SPARK-19887](https://issues.apache.org/jira/browse/SPARK-19887) | \_\_HIVE\_DEFAULT\_PARTITION\_\_ is not interpreted as NULL partition value in partitioned persisted tables |  Major | SQL | Cheng Lian | Wenchen Fan |
| [SPARK-19828](https://issues.apache.org/jira/browse/SPARK-19828) | R to support JSON array in column from\_json |  Major | SparkR, SQL | Felix Cheung | Hyukjin Kwon |
| [SPARK-18112](https://issues.apache.org/jira/browse/SPARK-18112) | Spark2.x does not support read data from Hive 2.x metastore |  Critical | SQL | KaiXu | Xiao Li |
| [SPARK-19872](https://issues.apache.org/jira/browse/SPARK-19872) | UnicodeDecodeError in Pyspark on sc.textFile read with repartition |  Major | PySpark | Brian Bruggeman | Hyukjin Kwon |
| [SPARK-13450](https://issues.apache.org/jira/browse/SPARK-13450) | SortMergeJoin will OOM when join rows have lot of same keys |  Major | SQL | Hong Shen | Tejas Patil |
| [SPARK-19931](https://issues.apache.org/jira/browse/SPARK-19931) | InMemoryTableScanExec should rewrite output partitioning and ordering when aliasing output attributes |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-19751](https://issues.apache.org/jira/browse/SPARK-19751) | Create Data frame API fails with a self referencing bean |  Minor | SQL | Avinash Venkateshaiah | Takeshi Yamamuro |
| [SPARK-19945](https://issues.apache.org/jira/browse/SPARK-19945) | Add test suite for SessionCatalog with HiveExternalCatalog |  Major | SQL | Song Jun | Song Jun |
| [SPARK-19882](https://issues.apache.org/jira/browse/SPARK-19882) | Pivot with null as the pivot value throws NPE |  Major | SQL | Hyukjin Kwon | Andrew Ray |
| [SPARK-19721](https://issues.apache.org/jira/browse/SPARK-19721) | Good error message for version mismatch in log files |  Blocker | Structured Streaming | Michael Armbrust | Liwei Lin |
| [SPARK-18847](https://issues.apache.org/jira/browse/SPARK-18847) | PageRank gives incorrect results for graphs with sinks |  Major | GraphX | Andrew Ray | Andrew Ray |
| [SPARK-19873](https://issues.apache.org/jira/browse/SPARK-19873) | If the user changes the number of shuffle partitions between batches, Streaming aggregation will fail. |  Major | Structured Streaming | Kunal Khamar |  |
| [SPARK-19896](https://issues.apache.org/jira/browse/SPARK-19896) | toDS throws StackOverflowError if case classes have circular references |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-19654](https://issues.apache.org/jira/browse/SPARK-19654) | Structured Streaming API for R |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-19994](https://issues.apache.org/jira/browse/SPARK-19994) | Wrong outputOrdering for right/full outer smj |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-20020](https://issues.apache.org/jira/browse/SPARK-20020) | SparkR should support checkpointing DataFrame |  Major | Documentation, SparkR | Felix Cheung | Felix Cheung |
| [SPARK-19990](https://issues.apache.org/jira/browse/SPARK-19990) | Flaky test: org.apache.spark.sql.hive.execution.HiveCatalogedDDLSuite: create temporary view using |  Major | SQL, Tests | Kay Ousterhout | Song Jun |
| [SPARK-19970](https://issues.apache.org/jira/browse/SPARK-19970) | Table owner should be USER instead of PRINCIPAL in kerberized clusters |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-19573](https://issues.apache.org/jira/browse/SPARK-19573) | Make NaN/null handling consistent in approxQuantile |  Major | SQL | zhengruifeng | zhengruifeng |
| [SPARK-20010](https://issues.apache.org/jira/browse/SPARK-20010) | Sort information is lost after sort merge join |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-19980](https://issues.apache.org/jira/browse/SPARK-19980) | Basic Dataset transformation on POJOs does not preserves nulls. |  Major | SQL | Michel Lemay | Takeshi Yamamuro |
| [SPARK-17204](https://issues.apache.org/jira/browse/SPARK-17204) | Spark 2.0 off heap RDD persistence with replication factor 2 leads to in-memory data corruption |  Major | Spark Core | Michael Allman | Michael Allman |
| [SPARK-19912](https://issues.apache.org/jira/browse/SPARK-19912) | String literals are not escaped while performing Hive metastore level partition pruning |  Major | SQL | Cheng Lian | Dongjoon Hyun |
| [SPARK-20024](https://issues.apache.org/jira/browse/SPARK-20024) | SessionCatalog reset need to set the current database of ExternalCatalog |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-20017](https://issues.apache.org/jira/browse/SPARK-20017) | Functions "str\_to\_map" and "explode" throws NPE exceptioin |  Major | SQL | roncenzhao | roncenzhao |
| [SPARK-19237](https://issues.apache.org/jira/browse/SPARK-19237) | SparkR package on Windows waiting for a long time when no java is found launching spark-submit |  Major | Spark Core, SparkR | Felix Cheung | Felix Cheung |
| [SPARK-20051](https://issues.apache.org/jira/browse/SPARK-20051) | Fix StreamSuite.recover from v2.1 checkpoint failing with IOException |  Major | Structured Streaming | Kunal Khamar |  |
| [SPARK-19925](https://issues.apache.org/jira/browse/SPARK-19925) | SparkR spark.getSparkFiles fails on executor |  Critical | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-20023](https://issues.apache.org/jira/browse/SPARK-20023) | Can not see table comment when describe formatted table |  Major | SQL | chenerlu | Xiao Li |
| [SPARK-20021](https://issues.apache.org/jira/browse/SPARK-20021) | Miss backslash in python code |  Trivial | PySpark | Genmao Yu | Genmao Yu |
| [SPARK-20027](https://issues.apache.org/jira/browse/SPARK-20027) | Compilation fixed in java docs. |  Trivial | Documentation, Spark Core | Prashant Sharma | Prashant Sharma |
| [SPARK-20018](https://issues.apache.org/jira/browse/SPARK-20018) | Pivot with timestamp and count should not print internal representation |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-18579](https://issues.apache.org/jira/browse/SPARK-18579) | spark-csv strips whitespace (pyspark) |  Minor | Input/Output | Adrian Bridgett | Hyukjin Kwon |
| [SPARK-19728](https://issues.apache.org/jira/browse/SPARK-19728) |  PythonUDF with multiple parents shouldn't be pushed down when used as a predicate |  Major | PySpark, SQL | Maciej Szymkiewicz |  |
| [SPARK-19959](https://issues.apache.org/jira/browse/SPARK-19959) | df[java.lang.Long].collect throws NullPointerException if df includes null |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-20070](https://issues.apache.org/jira/browse/SPARK-20070) | Redact datasource explain output |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-20086](https://issues.apache.org/jira/browse/SPARK-20086) | issue with pyspark 2.1.0 window function |  Major | PySpark | mandar uapdhye | Herman van Hovell |
| [SPARK-20088](https://issues.apache.org/jira/browse/SPARK-20088) | Do not create new SparkContext in SparkR createSparkContext |  Major | SparkR | Hossein Falaki | Hossein Falaki |
| [SPARK-20102](https://issues.apache.org/jira/browse/SPARK-20102) | Fix two minor build script issues blocking 2.1.1 RC + master snapshot builds |  Major | Build | Josh Rosen | Josh Rosen |
| [SPARK-20111](https://issues.apache.org/jira/browse/SPARK-20111) | codegen bug surfaced by GraphFrames issue 165 |  Major | SQL | Joseph K. Bradley |  |
| [SPARK-19803](https://issues.apache.org/jira/browse/SPARK-19803) | Flaky BlockManagerProactiveReplicationSuite tests |  Major | Spark Core, Tests | Sital Kedia | Shubham Chopra |
| [SPARK-20100](https://issues.apache.org/jira/browse/SPARK-20100) | Consolidate SessionState construction |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-20119](https://issues.apache.org/jira/browse/SPARK-20119) | Flaky Test: org.apache.spark.sql.execution. DataSourceScanExecRedactionSuite |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-20094](https://issues.apache.org/jira/browse/SPARK-20094) | Should Prevent push down of IN subquery to Join operator |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-19995](https://issues.apache.org/jira/browse/SPARK-19995) | Using real user to connect HiveMetastore in HiveClientImpl |  Major | SQL | Saisai Shao | Saisai Shao |
| [SPARK-19868](https://issues.apache.org/jira/browse/SPARK-19868) | conflict TasksetManager lead to spark stopped |  Major | Spark Core | liujianhui | liujianhui |
| [SPARK-20125](https://issues.apache.org/jira/browse/SPARK-20125) | Dataset of type option of map does not work |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-20043](https://issues.apache.org/jira/browse/SPARK-20043) | Decision Tree loader does not handle uppercase impurity param values |  Major | ML | Zied Sellami | Yan Facai (颜发才) |
| [SPARK-19556](https://issues.apache.org/jira/browse/SPARK-19556) | Broadcast data is not encrypted when I/O encryption is on |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-20059](https://issues.apache.org/jira/browse/SPARK-20059) | HbaseCredentialProvider uses wrong classloader |  Major | YARN | Saisai Shao | Saisai Shao |
| [SPARK-20048](https://issues.apache.org/jira/browse/SPARK-20048) | Cloning SessionState does not clone query execution listeners |  Major | SQL | Kunal Khamar | Kunal Khamar |
| [SPARK-20096](https://issues.apache.org/jira/browse/SPARK-20096) | Expose the real queue name not null while using --verbose |  Minor | Spark Submit | Kent Yao | Kent Yao |
| [SPARK-20164](https://issues.apache.org/jira/browse/SPARK-20164) | AnalysisException not tolerant of null query plan |  Major | SQL | Kunal Khamar | Kunal Khamar |
| [SPARK-20123](https://issues.apache.org/jira/browse/SPARK-20123) | $SPARK\_HOME variable might have spaces in it(e.g. $SPARK\_HOME=/home/spark build/spark), then build spark failed. |  Minor | Build | zuotingbing | zuotingbing |
| [SPARK-20173](https://issues.apache.org/jira/browse/SPARK-20173) | Throw NullPointerException when HiveThriftServer2 is shutdown |  Minor | SQL | zuotingbing | zuotingbing |
| [SPARK-20159](https://issues.apache.org/jira/browse/SPARK-20159) | Support complete Catalog API in R |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-20197](https://issues.apache.org/jira/browse/SPARK-20197) | CRAN check fail with package installation |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-19985](https://issues.apache.org/jira/browse/SPARK-19985) | Some ML Models error when copy or do not set parent |  Major | ML | Bryan Cutler | Bryan Cutler |
| [SPARK-9002](https://issues.apache.org/jira/browse/SPARK-9002) | KryoSerializer initialization does not include 'Array[Int]' |  Minor | Spark Core | Randy Kerber |  |
| [SPARK-19641](https://issues.apache.org/jira/browse/SPARK-19641) | JSON schema inference in DROPMALFORMED mode produces incorrect schema |  Major | SQL | Nathan Howell | Hyukjin Kwon |
| [SPARK-18893](https://issues.apache.org/jira/browse/SPARK-18893) | Not support "alter table .. add columns .." |  Major | SQL | zuotingbing |  |
| [SPARK-20145](https://issues.apache.org/jira/browse/SPARK-20145) | "SELECT \* FROM range(1)" works, but "SELECT \* FROM RANGE(1)" doesn't |  Major | SQL | Juliusz Sompolski | sam elamin |
| [SPARK-20190](https://issues.apache.org/jira/browse/SPARK-20190) | '/applications/[app-id]/jobs' in rest api,status should be [running\|succeeded\|failed\|unknown] |  Trivial | Documentation | guoxiaolongzte | guoxiaolongzte |
| [SPARK-20198](https://issues.apache.org/jira/browse/SPARK-20198) | Remove the inconsistency in table/function name conventions in SparkSession.Catalog APIs |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-20191](https://issues.apache.org/jira/browse/SPARK-20191) | RackResolver not correctly being overridden in YARN tests |  Major | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-20003](https://issues.apache.org/jira/browse/SPARK-20003) | FPGrowthModel setMinConfidence should affect rules generation and transform |  Minor | ML | yuhao yang | yuhao yang |
| [SPARK-20209](https://issues.apache.org/jira/browse/SPARK-20209) | Execute next trigger immediately if previous batch took longer than trigger interval |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-20042](https://issues.apache.org/jira/browse/SPARK-20042) | Buttons on executor log page don't work with spark.ui.reverseProxy=true |  Minor | Web UI | Oliver Koeth | Oliver Koeth |
| [SPARK-20223](https://issues.apache.org/jira/browse/SPARK-20223) | Typo in tpcds q77.sql |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-20214](https://issues.apache.org/jira/browse/SPARK-20214) | pyspark linalg \_convert\_to\_vector should check for sorted indices |  Major | ML, MLlib, PySpark, Tests | Joseph K. Bradley | Liang-Chi Hsieh |
| [SPARK-20217](https://issues.apache.org/jira/browse/SPARK-20217) | Executor should not fail stage if killed task throws non-interrupted exception |  Major | Spark Core | Eric Liang | Eric Liang |
| [SPARK-19953](https://issues.apache.org/jira/browse/SPARK-19953) | RandomForest Models should use the UID of Estimator when fit |  Minor | ML | Bryan Cutler | Bryan Cutler |
| [SPARK-20196](https://issues.apache.org/jira/browse/SPARK-20196) | Python to add catalog API for refreshByPath |  Major | PySpark, SQL | Felix Cheung | Felix Cheung |
| [SPARK-20195](https://issues.apache.org/jira/browse/SPARK-20195) | SparkR to add createTable catalog API and deprecate createExternalTable |  Major | SparkR, SQL | Felix Cheung | Felix Cheung |
| [SPARK-20026](https://issues.apache.org/jira/browse/SPARK-20026) | Document R GLM Tweedie family support in programming guide and code example |  Major | Documentation, SparkR | Felix Cheung | Wayne Zhang |
| [SPARK-20258](https://issues.apache.org/jira/browse/SPARK-20258) | SparkR logistic regression example did not converge in programming guide |  Major | SparkR | Wayne Zhang | Wayne Zhang |
| [SPARK-20246](https://issues.apache.org/jira/browse/SPARK-20246) | Should check determinism when pushing predicates down through aggregation |  Major | SQL | Weiluo Ren | Wenchen Fan |
| [SPARK-20262](https://issues.apache.org/jira/browse/SPARK-20262) | AssertNotNull should throw NullPointerException |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-20260](https://issues.apache.org/jira/browse/SPARK-20260) | MLUtils parseLibSVMRecord has incorrect string interpolation for error message |  Minor | ML | Vijay Krishna Ramesh | Vijay Krishna Ramesh |
| [SPARK-20264](https://issues.apache.org/jira/browse/SPARK-20264) | asm should be non-test dependency in sql/core |  Major | Build, SQL | Reynold Xin | Reynold Xin |
| [SPARK-20270](https://issues.apache.org/jira/browse/SPARK-20270) | na.fill will change the values in long or integer when the default value is in double |  Critical | SQL | DB Tsai | DB Tsai |
| [SPARK-20243](https://issues.apache.org/jira/browse/SPARK-20243) | DebugFilesystem.assertNoOpenStreams thread race |  Major | Tests | Bogdan Raducanu | Bogdan Raducanu |
| [SPARK-20273](https://issues.apache.org/jira/browse/SPARK-20273) | Disallow Non-deterministic Filter push-down into Join Conditions |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-20156](https://issues.apache.org/jira/browse/SPARK-20156) | Java String toLowerCase "Turkish locale bug" causes Spark problems |  Major | Spark Shell | Serkan Taş | Sean Owen |
| [SPARK-20280](https://issues.apache.org/jira/browse/SPARK-20280) | SharedInMemoryCache Weigher integer overflow |  Major | Spark Core | Bogdan Raducanu | Bogdan Raducanu |
| [SPARK-20285](https://issues.apache.org/jira/browse/SPARK-20285) | Flaky test: pyspark.streaming.tests.BasicOperationTests.test\_cogroup |  Minor | Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-20274](https://issues.apache.org/jira/browse/SPARK-20274) | support compatible array element type in encoder |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-19505](https://issues.apache.org/jira/browse/SPARK-19505) | AttributeError on Exception.message in Python3; hides true exceptions in cloudpickle.py and broadcast.py |  Minor | PySpark | David Gingrich | David Gingrich |
| [SPARK-20291](https://issues.apache.org/jira/browse/SPARK-20291) | NaNvl(FloatType, NullType) should not be cast to NaNvl(DoubleType, DoubleType) |  Major | SQL | DB Tsai | DB Tsai |
| [SPARK-20298](https://issues.apache.org/jira/browse/SPARK-20298) | Spelling mistake: charactor |  Trivial | SparkR | Brendan Dwyer | Brendan Dwyer |
| [SPARK-20131](https://issues.apache.org/jira/browse/SPARK-20131) | Flaky Test: o.a.s.streaming.StreamingContextSuite.SPARK-18560 Receiver data should be deserialized properly |  Minor | DStreams | Takuya Ueshin | Shixiong Zhu |
| [SPARK-20335](https://issues.apache.org/jira/browse/SPARK-20335) | Children expressions of Hive UDF impacts the determinism of Hive UDF |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-20343](https://issues.apache.org/jira/browse/SPARK-20343) | SBT master build for Hadoop 2.6 in Jenkins fails due to Avro version resolution |  Major | Build | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-20278](https://issues.apache.org/jira/browse/SPARK-20278) | Disable 'multiple\_dots\_linter' lint rule that is against project's code style |  Minor | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-20349](https://issues.apache.org/jira/browse/SPARK-20349) | ListFunctions returns duplicate functions after using persistent functions |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-17647](https://issues.apache.org/jira/browse/SPARK-17647) | SQL LIKE does not handle backslashes correctly |  Major | SQL | Xiangrui Meng | Xiangrui Meng |
| [SPARK-20354](https://issues.apache.org/jira/browse/SPARK-20354) | When I request access to the 'http: //ip:port/api/v1/applications' link, return 'sparkUser' is empty in REST API. |  Minor | Spark Core | guoxiaolongzte | guoxiaolongzte |
| [SPARK-20377](https://issues.apache.org/jira/browse/SPARK-20377) | Fix JavaStructuredSessionization example |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-20254](https://issues.apache.org/jira/browse/SPARK-20254) | SPARK-19716 generates unnecessary data conversion for Dataset with primitive array |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-20359](https://issues.apache.org/jira/browse/SPARK-20359) | Catalyst EliminateOuterJoin optimization can cause NPE |  Major | SQL | koert kuipers | Koert Kuipers |
| [SPARK-20356](https://issues.apache.org/jira/browse/SPARK-20356) | Spark sql group by returns incorrect results after join + distinct transformations |  Major | SQL | Chris Kipers | Liang-Chi Hsieh |
| [SPARK-20398](https://issues.apache.org/jira/browse/SPARK-20398) | range() operator should include cancellation reason when killed |  Major | SQL | Eric Liang | Eric Liang |
| [SPARK-20405](https://issues.apache.org/jira/browse/SPARK-20405) | Dataset.withNewExecutionId should be private |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-20407](https://issues.apache.org/jira/browse/SPARK-20407) | ParquetQuerySuite 'Enabling/disabling ignoreCorruptFiles' flaky test |  Major | Tests | Bogdan Raducanu | Bogdan Raducanu |
| [SPARK-20358](https://issues.apache.org/jira/browse/SPARK-20358) | Executors failing stage on interrupted exception thrown by cancelled tasks |  Major | Spark Core | Eric Liang | Eric Liang |
| [SPARK-20172](https://issues.apache.org/jira/browse/SPARK-20172) | Event log without read permission should be filtered out before actually reading it |  Minor | Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-20367](https://issues.apache.org/jira/browse/SPARK-20367) | Spark silently escapes partition column names |  Minor | SQL | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-20329](https://issues.apache.org/jira/browse/SPARK-20329) | Resolution error when HAVING clause uses GROUP BY expression that involves implicit type coercion |  Blocker | SQL | Josh Rosen | Herman van Hovell |
| [SPARK-20412](https://issues.apache.org/jira/browse/SPARK-20412) | NullPointerException in places expecting non-optional partitionSpec. |  Major | SQL | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-20341](https://issues.apache.org/jira/browse/SPARK-20341) | Support BigIngeger values \> 19 precision |  Major | SQL | Paul Zaczkieiwcz | Kazuaki Ishizaki |
| [SPARK-20386](https://issues.apache.org/jira/browse/SPARK-20386) | The log info "Added %s in memory on %s (size: %s, free: %s)"  in function "org.apache.spark.storage.BlockManagerInfo.updateBlockInfo" is not accurate if the block exists on the slave already |  Trivial | Spark Core | eaton | eaton |
| [SPARK-20430](https://issues.apache.org/jira/browse/SPARK-20430) | Throw an NullPointerException in range when wholeStage is off |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-20439](https://issues.apache.org/jira/browse/SPARK-20439) | Catalog.listTables() depends on all libraries used to create tables |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-20239](https://issues.apache.org/jira/browse/SPARK-20239) | Improve HistoryServer ACL mechanism |  Major | Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-20451](https://issues.apache.org/jira/browse/SPARK-20451) | Filter out nested mapType datatypes from sort order in randomSplit |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-5484](https://issues.apache.org/jira/browse/SPARK-5484) | Pregel should checkpoint periodically to avoid StackOverflowError |  Major | GraphX | Ankur Dave | dingding |
| [SPARK-16548](https://issues.apache.org/jira/browse/SPARK-16548) | java.io.CharConversionException: Invalid UTF-32 character  prevents me from querying my data |  Minor | SQL | Egor Pahomov |  |
| [SPARK-19812](https://issues.apache.org/jira/browse/SPARK-19812) | YARN shuffle service fails to relocate recovery DB across NFS directories |  Major | YARN | Thomas Graves | Thomas Graves |
| [SPARK-20473](https://issues.apache.org/jira/browse/SPARK-20473) | ColumnVector.Array is missing accessors for some types |  Major | Spark Core | Michal Szafranski | Michal Szafranski |
| [SPARK-20474](https://issues.apache.org/jira/browse/SPARK-20474) | OnHeapColumnVector realocation may not copy existing data |  Major | Spark Core | Michal Szafranski | Michal Szafranski |
| [SPARK-12868](https://issues.apache.org/jira/browse/SPARK-12868) | ADD JAR via sparkSQL JDBC will fail when using a HDFS URL |  Major | SQL | Trystan Leftwich | Weiqing Yang |
| [SPARK-20435](https://issues.apache.org/jira/browse/SPARK-20435) | More thorough redaction of sensitive information from logs/UI, more unit tests |  Major | Spark Core | Mark Grover | Mark Grover |
| [SPARK-20312](https://issues.apache.org/jira/browse/SPARK-20312) | query optimizer calls udf with null values when it doesn't expect them |  Major | SQL | Albert Meltzer |  |
| [SPARK-20483](https://issues.apache.org/jira/browse/SPARK-20483) | Mesos Coarse mode may starve other Mesos frameworks if max cores is not a multiple of executor cores |  Minor | Mesos | Davis Shepherd | Davis Shepherd |
| [SPARK-20482](https://issues.apache.org/jira/browse/SPARK-20482) | Resolving Casts is too strict on having time zone set |  Major | SQL | Kris Mok | Kris Mok |
| [SPARK-20461](https://issues.apache.org/jira/browse/SPARK-20461) | CachedKafkaConsumer may hang forever when it's interrupted |  Major | Structured Streaming | Shixiong Zhu |  |
| [SPARK-20452](https://issues.apache.org/jira/browse/SPARK-20452) | Cancel a batch Kafka query and rerun the same DataFrame may cause ConcurrentModificationException |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-20476](https://issues.apache.org/jira/browse/SPARK-20476) | Exception between "create table as" and "get\_json\_object" |  Major | SQL | cen yuhai | Xiao Li |
| [SPARK-20496](https://issues.apache.org/jira/browse/SPARK-20496) | KafkaWriter Uses Unanalyzed Logical Plan |  Major | Structured Streaming | Bill Chambers | Bill Chambers |
| [SPARK-20514](https://issues.apache.org/jira/browse/SPARK-20514) | Upgrade Jetty to 9.3.11.v20160721 |  Major | Spark Core | Mark Grover | Mark Grover |
| [SPARK-20471](https://issues.apache.org/jira/browse/SPARK-20471) | Remove AggregateBenchmark testsuite warning: Two level hashmap is disabled but vectorized hashmap is enabled. |  Major | Tests | caoxuewen | caoxuewen |
| [SPARK-20541](https://issues.apache.org/jira/browse/SPARK-20541) | SparkR SS should support awaitTermination without timeout |  Major | SparkR, Structured Streaming | Felix Cheung | Felix Cheung |
| [SPARK-20534](https://issues.apache.org/jira/browse/SPARK-20534) | Outer generators skip missing records if used alone |  Major | SQL | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-20517](https://issues.apache.org/jira/browse/SPARK-20517) | Download link in history server UI is not correct |  Minor | Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-20464](https://issues.apache.org/jira/browse/SPARK-20464) | Add a job group and an informative description for streaming queries |  Major | Structured Streaming | Kunal Khamar | Kunal Khamar |
| [SPARK-20540](https://issues.apache.org/jira/browse/SPARK-20540) | Dynamic allocation constantly requests and kills executors |  Major | Spark Core, YARN | Ryan Blue | Ryan Blue |
| [SPARK-20459](https://issues.apache.org/jira/browse/SPARK-20459) | JdbcUtils throws IllegalStateException: Cause already initialized after getting SQLException |  Minor | SQL | Jessie Yu | Sean Owen |
| [SPARK-20537](https://issues.apache.org/jira/browse/SPARK-20537) | OffHeapColumnVector reallocation may not copy existing data |  Major | Spark Core | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-20549](https://issues.apache.org/jira/browse/SPARK-20549) | java.io.CharConversionException: Invalid UTF-32 in JsonToStructs |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-20558](https://issues.apache.org/jira/browse/SPARK-20558) | clear InheritableThreadLocal variables in SparkContext when stopping it |  Major | Spark Core | Wenchen Fan | Wenchen Fan |
| [SPARK-20567](https://issues.apache.org/jira/browse/SPARK-20567) | Failure to bind when using explode and collect\_set in streaming |  Critical | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-19965](https://issues.apache.org/jira/browse/SPARK-19965) | DataFrame batch reader may fail to infer partitions when reading FileStreamSink's output |  Major | Structured Streaming | Shixiong Zhu | Liwei Lin |
| [SPARK-20543](https://issues.apache.org/jira/browse/SPARK-20543) | R should skip long running or non-essential tests when running on CRAN |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-20574](https://issues.apache.org/jira/browse/SPARK-20574) | Allow Bucketizer to handle non-Double column |  Major | ML | Wayne Zhang | Wayne Zhang |
| [SPARK-20546](https://issues.apache.org/jira/browse/SPARK-20546) | spark-class gets syntax error in posix mode |  Minor | Deploy | Jessie Yu | Jessie Yu |
| [SPARK-20613](https://issues.apache.org/jira/browse/SPARK-20613) | Double quotes in Windows batch script |  Major | Windows | Jarrett Meyer | Jarrett Meyer |
| [SPARK-20381](https://issues.apache.org/jira/browse/SPARK-20381) | ObjectHashAggregateExec is missing numOutputRows |  Major | SQL | yucai | yucai |
| [SPARK-20616](https://issues.apache.org/jira/browse/SPARK-20616) | RuleExecutor logDebug of batch results should show diff to start of batch |  Major | SQL | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-20626](https://issues.apache.org/jira/browse/SPARK-20626) | Fix SparkR test warning on Windows with timestamp time zone |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-20661](https://issues.apache.org/jira/browse/SPARK-20661) | SparkR tableNames() test fails |  Major | SparkR | Hossein Falaki | Hossein Falaki |
| [SPARK-20615](https://issues.apache.org/jira/browse/SPARK-20615) | SparseVector.argmax throws IndexOutOfBoundsException when the sparse vector has a size greater than zero but no elements defined. |  Minor | ML, MLlib | Jon McLean | Jon McLean |
| [SPARK-20548](https://issues.apache.org/jira/browse/SPARK-20548) | Flaky Test:  ReplSuite.newProductSeqEncoder with REPL defined class |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-17685](https://issues.apache.org/jira/browse/SPARK-17685) | WholeStageCodegenExec throws IndexOutOfBoundsException |  Minor | SQL | Yuming Wang | Yuming Wang |
| [SPARK-20590](https://issues.apache.org/jira/browse/SPARK-20590) | Map default input data source formats to inlined classes |  Major | SQL | Sameer Agarwal | Hyukjin Kwon |
| [SPARK-20686](https://issues.apache.org/jira/browse/SPARK-20686) | PropagateEmptyRelation incorrectly handles aggregate without grouping expressions |  Major | Optimizer, SQL | Josh Rosen | Josh Rosen |
| [SPARK-20631](https://issues.apache.org/jira/browse/SPARK-20631) | LogisticRegression.\_checkThresholdConsistency should use values not Params |  Minor | ML, PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-20630](https://issues.apache.org/jira/browse/SPARK-20630) | Thread Dump link available in Executors tab irrespective of spark.ui.threadDumpsEnabled |  Minor | Web UI | Jacek Laskowski | Alex Bozarth |
| [SPARK-20393](https://issues.apache.org/jira/browse/SPARK-20393) | Strengthen Spark to prevent XSS vulnerabilities |  Major | Web UI | Nicholas Marion | Nicholas Marion |
| [SPARK-20688](https://issues.apache.org/jira/browse/SPARK-20688) | correctly check analysis for scalar sub-queries |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-20685](https://issues.apache.org/jira/browse/SPARK-20685) | BatchPythonEvaluation UDF evaluator fails for case of single UDF with repeated argument |  Major | PySpark | Josh Rosen | Josh Rosen |
| [SPARK-20569](https://issues.apache.org/jira/browse/SPARK-20569) | RuntimeReplaceable functions accept invalid third parameter |  Trivial | SQL | liuxian | Wenchen Fan |
| [SPARK-20373](https://issues.apache.org/jira/browse/SPARK-20373) | Batch queries with 'Dataset/DataFrame.withWatermark()\` does not execute |  Minor | Structured Streaming | Tathagata Das | Genmao Yu |
| [SPARK-20399](https://issues.apache.org/jira/browse/SPARK-20399) | Can't use same regex pattern between 1.6 and 2.x due to unescaped sql string in parser |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-20665](https://issues.apache.org/jira/browse/SPARK-20665) | Spark-sql, "Bround" and "Round" function return NULL |  Major | SQL | liuxian | liuxian |
| [SPARK-20718](https://issues.apache.org/jira/browse/SPARK-20718) | FileSourceScanExec with different filter orders should be the same after canonicalization |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-17424](https://issues.apache.org/jira/browse/SPARK-17424) | Dataset job fails from unsound substitution in ScalaReflect |  Major | Spark Core | Ryan Blue | Ryan Blue |
| [SPARK-20704](https://issues.apache.org/jira/browse/SPARK-20704) | CRAN test should run single threaded |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-20702](https://issues.apache.org/jira/browse/SPARK-20702) | TaskContextImpl.markTaskCompleted should not hide the original error |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-20594](https://issues.apache.org/jira/browse/SPARK-20594) | The staging directory should be appended with ".hive-staging" to avoid being deleted if we set hive.exec.stagingdir under the table directory without start with "." |  Major | SQL | zuotingbing | zuotingbing |
| [SPARK-18772](https://issues.apache.org/jira/browse/SPARK-18772) | Unnecessary conversion try for special floats in JSON |  Minor | SQL | Nathan Howell | Hyukjin Kwon |
| [SPARK-20725](https://issues.apache.org/jira/browse/SPARK-20725) | partial aggregate should behave correctly for sameResult |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-20705](https://issues.apache.org/jira/browse/SPARK-20705) | The sort function can not be used in the master page when you use Firefox or Google Chrome. |  Minor | Web UI | guoxiaolongzte | guoxiaolongzte |
| [SPARK-20666](https://issues.apache.org/jira/browse/SPARK-20666) | Flaky test - SparkListenerBus randomly failing java.lang.IllegalAccessError |  Critical | ML, Spark Core, SparkR | Felix Cheung | Wenchen Fan |
| [SPARK-20716](https://issues.apache.org/jira/browse/SPARK-20716) | StateStore.abort() should not throw further exception |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-20735](https://issues.apache.org/jira/browse/SPARK-20735) | Enable cross join in TPCDSQueryBenchmark |  Minor | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-20529](https://issues.apache.org/jira/browse/SPARK-20529) | Worker should not use the received Master address |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-19372](https://issues.apache.org/jira/browse/SPARK-19372) | Code generation for Filter predicate including many OR conditions exceeds JVM method size limit |  Major | . | Jay Pranavamurthi | Kazuaki Ishizaki |
| [SPARK-20769](https://issues.apache.org/jira/browse/SPARK-20769) | Incorrect documentation for using Jupyter notebook |  Minor | Documentation | Andrew Ray | Andrew Ray |
| [SPARK-20788](https://issues.apache.org/jira/browse/SPARK-20788) | Fix the Executor task reaper's false alarm warning logs |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-13747](https://issues.apache.org/jira/browse/SPARK-13747) | Concurrent execution in SQL doesn't work with Scala ForkJoinPool |  Major | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-20700](https://issues.apache.org/jira/browse/SPARK-20700) | InferFiltersFromConstraints stackoverflows for query (v2) |  Major | Optimizer, SQL | Josh Rosen | Jiang Xingbo |
| [SPARK-20364](https://issues.apache.org/jira/browse/SPARK-20364) | Parquet predicate pushdown on columns with dots return empty results |  Critical | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-20798](https://issues.apache.org/jira/browse/SPARK-20798) | GenerateUnsafeProjection should check if value is null before calling the getter |  Major | SQL | Ala Luszczak | Ala Luszczak |
| [SPARK-20773](https://issues.apache.org/jira/browse/SPARK-20773) | ParquetWriteSupport.writeFields is quadratic in number of fields |  Minor | SQL | T Poterba | T Poterba |
| [SPARK-20763](https://issues.apache.org/jira/browse/SPARK-20763) | The function of  \`month\` and \`day\` return a value which is not we expected |  Minor | SQL | liuxian | liuxian |
| [SPARK-20781](https://issues.apache.org/jira/browse/SPARK-20781) | the location of Dockerfile in docker.properties.template is wrong |  Minor | Mesos | liuzhaokun | liuzhaokun |
| [SPARK-20687](https://issues.apache.org/jira/browse/SPARK-20687) | mllib.Matrices.fromBreeze may crash when converting from Breeze sparse matrix |  Minor | MLlib | Ignacio Bermudez Corrales | Ignacio Bermudez Corrales |
| [SPARK-20813](https://issues.apache.org/jira/browse/SPARK-20813) | Web UI executor page tab search by status not working |  Trivial | Web UI | Jong Yoon Lee | Jong Yoon Lee |
| [SPARK-20831](https://issues.apache.org/jira/browse/SPARK-20831) | Unresolved operator when INSERT OVERWRITE data source tables with IF NOT EXISTS |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-20815](https://issues.apache.org/jira/browse/SPARK-20815) | NullPointerException in RPackageUtils#checkManifestForR |  Major | SparkR | Andrew Ash | James Shuster |
| [SPARK-18651](https://issues.apache.org/jira/browse/SPARK-18651) | KeyValueGroupedDataset[K, V].reduceGroups cannot handle primitive for V |  Major | SQL | koert kuipers |  |
| [SPARK-18406](https://issues.apache.org/jira/browse/SPARK-18406) | Race between end-of-task and completion iterator read lock release |  Major | Block Manager, Spark Core | Josh Rosen | Jiang Xingbo |
| [SPARK-20862](https://issues.apache.org/jira/browse/SPARK-20862) | LogisticRegressionModel throws TypeError |  Minor | MLlib, PySpark | Bago Amirbekian | Bago Amirbekian |
| [SPARK-20848](https://issues.apache.org/jira/browse/SPARK-20848) | Dangling threads when reading parquet files in local mode |  Major | Input/Output, SQL | Nick Pritchard | Liang-Chi Hsieh |
| [SPARK-20872](https://issues.apache.org/jira/browse/SPARK-20872) | ShuffleExchange.nodeName should handle null coordinator |  Trivial | SQL | Kris Mok | Kris Mok |
| [SPARK-20403](https://issues.apache.org/jira/browse/SPARK-20403) | It is wrong to the instructions of some functions,such as  boolean，tinyint，smallint，int，bigint，float，double，decimal，date，timestamp，binary，string |  Minor | Documentation, SQL | liuxian | liuxian |
| [SPARK-20866](https://issues.apache.org/jira/browse/SPARK-20866) | Dataset map does not respect nullable field |  Major | SQL | Colin Breame |  |
| [SPARK-20250](https://issues.apache.org/jira/browse/SPARK-20250) | Improper OOM error when a task been killed while spilling data |  Major | Spark Core | Feng Zhu | coneyliu |
| [SPARK-20874](https://issues.apache.org/jira/browse/SPARK-20874) | The "examples" project doesn't depend on Structured Streaming Kafka source |  Minor | Examples | Shixiong Zhu | Shixiong Zhu |
| [SPARK-20843](https://issues.apache.org/jira/browse/SPARK-20843) | Cannot gracefully kill drivers which take longer than 10 seconds to die |  Major | Spark Core | Michael Allman | Shixiong Zhu |
| [SPARK-20897](https://issues.apache.org/jira/browse/SPARK-20897) | cached self-join should not fail |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-20908](https://issues.apache.org/jira/browse/SPARK-20908) | Cache Manager: Hint should be ignored in plan matching |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-19968](https://issues.apache.org/jira/browse/SPARK-19968) | Use a cached instance of KafkaProducer for writing to kafka via KafkaSink. |  Major | Structured Streaming | Prashant Sharma | Prashant Sharma |
| [SPARK-20924](https://issues.apache.org/jira/browse/SPARK-20924) | Unable to call the function registered in the not-current database |  Critical | SQL | Xiao Li | Xiao Li |
| [SPARK-20275](https://issues.apache.org/jira/browse/SPARK-20275) | HistoryServer page shows incorrect complete date of inprogress apps |  Minor | Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-20790](https://issues.apache.org/jira/browse/SPARK-20790) | ALS with implicit feedback ignores negative values |  Major | ML, MLlib | David Eis | David Eis |
| [SPARK-20940](https://issues.apache.org/jira/browse/SPARK-20940) | AccumulatorV2 should not throw IllegalAccessError |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-20244](https://issues.apache.org/jira/browse/SPARK-20244) | Incorrect input size in UI with pyspark |  Minor | Web UI | Artur Sukhenko | Saisai Shao |
| [SPARK-20941](https://issues.apache.org/jira/browse/SPARK-20941) | Subquery Reuse does not work |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-20147](https://issues.apache.org/jira/browse/SPARK-20147) | Cloning SessionState does not clone streaming query listeners |  Major | Structured Streaming | Kunal Khamar | Kunal Khamar |
| [SPARK-20974](https://issues.apache.org/jira/browse/SPARK-20974) | we should run REPL tests if SQL core has code changes |  Major | Build | Wenchen Fan | Wenchen Fan |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-18117](https://issues.apache.org/jira/browse/SPARK-18117) | Add Test for Interaction of TaskSchedulerImpl with TaskSetBlacklist |  Major | Scheduler | Imran Rashid | Imran Rashid |
| [SPARK-18846](https://issues.apache.org/jira/browse/SPARK-18846) | Fix flakiness in SchedulerIntegrationSuite |  Minor | Scheduler | Imran Rashid | Imran Rashid |
| [SPARK-18868](https://issues.apache.org/jira/browse/SPARK-18868) | Flaky Test: StreamingQueryListenerSuite |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-18904](https://issues.apache.org/jira/browse/SPARK-18904) | Merge two FileStreamSourceSuite files |  Minor | Structured Streaming, Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18900](https://issues.apache.org/jira/browse/SPARK-18900) | Flaky Test: StateStoreSuite.maintenance |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-17772](https://issues.apache.org/jira/browse/SPARK-17772) | Add helper testing methods for instance weighting |  Minor | ML | Seth Hendrickson | Seth Hendrickson |
| [SPARK-19022](https://issues.apache.org/jira/browse/SPARK-19022) | Fix tests dependent on OS due to different newline characters |  Minor | Structured Streaming, Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-19113](https://issues.apache.org/jira/browse/SPARK-19113) | Fix flaky test: o.a.s.sql.streaming.StreamSuite fatal errors from a source should be sent to the user |  Minor | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-19481](https://issues.apache.org/jira/browse/SPARK-19481) | Fix flaky test: o.a.s.repl.ReplSuite should clone and clean line object in ClosureCleaner |  Major | Spark Shell | Shixiong Zhu | Shixiong Zhu |
| [SPARK-19670](https://issues.apache.org/jira/browse/SPARK-19670) | Enable Bucketed Table Reading and Writing Testing Without Hive Support |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-19597](https://issues.apache.org/jira/browse/SPARK-19597) | ExecutorSuite should have test for tasks that are not deserialiazable |  Minor | Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-19816](https://issues.apache.org/jira/browse/SPARK-19816) | DataFrameCallbackSuite doesn't recover the log level |  Major | SQL, Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-19382](https://issues.apache.org/jira/browse/SPARK-19382) | Test sparse vectors in LinearSVCSuite |  Minor | ML | Joseph K. Bradley | Miao Wang |
| [SPARK-19235](https://issues.apache.org/jira/browse/SPARK-19235) | Enable Test Cases in DDLSuite with Hive Metastore |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-18066](https://issues.apache.org/jira/browse/SPARK-18066) | Add Pool usage policies test coverage for FIFO & FAIR Schedulers |  Minor | Scheduler | Eren Avsarogullari | Eren Avsarogullari |
| [SPARK-19988](https://issues.apache.org/jira/browse/SPARK-19988) | Flaky Test: OrcSourceSuite SPARK-19459/SPARK-18220: read char/varchar column written by Hive |  Major | SQL, Tests | Imran Rashid | Xiao Li |
| [SPARK-20105](https://issues.apache.org/jira/browse/SPARK-20105) | Add tests for checkType and type string in structField in R |  Minor | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-20282](https://issues.apache.org/jira/browse/SPARK-20282) | Flaky test: org.apache.spark.sql.streaming/StreamingQuerySuite/OneTime\_trigger\_\_commit\_log\_\_and\_exception |  Minor | Structured Streaming, Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18692](https://issues.apache.org/jira/browse/SPARK-18692) | Test Java 8 unidoc build on Jenkins master builder |  Major | Build, Documentation | Joseph K. Bradley | Hyukjin Kwon |
| [SPARK-20301](https://issues.apache.org/jira/browse/SPARK-20301) | Flakiness in StreamingAggregationSuite |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-20189](https://issues.apache.org/jira/browse/SPARK-20189) | Fix spark kinesis testcases to remove deprecated createStream and use Builders |  Minor | DStreams | Yash Sharma | Yash Sharma |
| [SPARK-20397](https://issues.apache.org/jira/browse/SPARK-20397) | Flaky Test: test\_streaming.R.Terminated by error |  Minor | SparkR, Structured Streaming, Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-20571](https://issues.apache.org/jira/browse/SPARK-20571) | Flaky SparkR StructuredStreaming tests |  Major | SparkR, Structured Streaming | Burak Yavuz | Felix Cheung |
| [SPARK-20603](https://issues.apache.org/jira/browse/SPARK-20603) | Flaky test: o.a.s.sql.kafka010.KafkaSourceSuite deserialization of initial offset with Spark 2.1.0 |  Minor | Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-20596](https://issues.apache.org/jira/browse/SPARK-20596) | Improve ALS recommend all test cases |  Minor | ML, Tests | Nick Pentreath | Nick Pentreath |
| [SPARK-20667](https://issues.apache.org/jira/browse/SPARK-20667) | Cleanup the cataloged metadata after completing the package of sql/core and sql/hive |  Major | SQL | Xiao Li | Xiao Li |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-18219](https://issues.apache.org/jira/browse/SPARK-18219) | Move commit protocol API from sql to core module |  Major | Spark Core, SQL | Reynold Xin | Reynold Xin |
| [SPARK-18239](https://issues.apache.org/jira/browse/SPARK-18239) | Gradient Boosted Tree wrapper in SparkR |  Major | ML, SparkR | Felix Cheung | Felix Cheung |
| [SPARK-16759](https://issues.apache.org/jira/browse/SPARK-16759) | Spark expose an API to pass in Caller Context into it |  Major | . | Weiqing Yang | Weiqing Yang |
| [SPARK-1267](https://issues.apache.org/jira/browse/SPARK-1267) | Add a pip installer for PySpark |  Minor | PySpark | Prabin Banka | holdenk |
| [SPARK-18129](https://issues.apache.org/jira/browse/SPARK-18129) | Sign pip artifacts |  Major | PySpark | holdenk | holdenk |
| [SPARK-18429](https://issues.apache.org/jira/browse/SPARK-18429) | SQL aggregate function for CountMinSketch |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-18663](https://issues.apache.org/jira/browse/SPARK-18663) | Simplify CountMinSketch aggregate implementation |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-18658](https://issues.apache.org/jira/browse/SPARK-18658) | Writing to a text DataSource buffers one or more lines in memory |  Minor | SQL | Nathan Howell | Nathan Howell |
| [SPARK-18672](https://issues.apache.org/jira/browse/SPARK-18672) | Close recordwriter in SparkHadoopMapReduceWriter before committing |  Major | Spark Core | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-18718](https://issues.apache.org/jira/browse/SPARK-18718) | Skip some test failures due to path length limitation and fix tests to pass on Windows |  Minor | Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-18803](https://issues.apache.org/jira/browse/SPARK-18803) | Fix path-related and JarEntry-related test failures and skip some tests failed on Windows due to path length limitation |  Minor | Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-18830](https://issues.apache.org/jira/browse/SPARK-18830) | Fix tests in PipedRDDSuite to pass on Winodws |  Minor | Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-18892](https://issues.apache.org/jira/browse/SPARK-18892) | Alias percentile\_approx approx\_percentile |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-18895](https://issues.apache.org/jira/browse/SPARK-18895) | Fix resource-closing-related and path-related test failures in identified ones on Windows |  Minor | Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-18911](https://issues.apache.org/jira/browse/SPARK-18911) | Decouple Statistics and CatalogTable |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-18842](https://issues.apache.org/jira/browse/SPARK-18842) | De-duplicate paths in classpaths in processes for local-cluster mode to work around the length limitation on Windows |  Major | Spark Core, Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-18998](https://issues.apache.org/jira/browse/SPARK-18998) | Add a cbo conf to switch between default statistics and cbo estimated statistics |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-18194](https://issues.apache.org/jira/browse/SPARK-18194) | Log instrumentation in OneVsRest, CrossValidator, TrainValidationSplit |  Major | ML | zhengruifeng | Sue Ann Hong |
| [SPARK-17077](https://issues.apache.org/jira/browse/SPARK-17077) | Cardinality estimation of project operator |  Major | Optimizer | Ron Hu | Zhenhua Wang |
| [SPARK-19020](https://issues.apache.org/jira/browse/SPARK-19020) | Cardinality estimation of aggregate operator |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-18922](https://issues.apache.org/jira/browse/SPARK-18922) | Fix more resource-closing-related and path-related test failures in identified ones on Windows |  Minor | Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-19149](https://issues.apache.org/jira/browse/SPARK-19149) | Unify two sets of statistics in LogicalPlan |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-19132](https://issues.apache.org/jira/browse/SPARK-19132) | Add test cases for row size estimation |  Major | SQL | Reynold Xin | Zhenhua Wang |
| [SPARK-19164](https://issues.apache.org/jira/browse/SPARK-19164) | Remove unused UserDefinedFunction.\_broadcast |  Major | PySpark, SQL | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-19151](https://issues.apache.org/jira/browse/SPARK-19151) | DataFrameWriter.saveAsTable should work with hive format with overwrite mode |  Major | SQL | Wenchen Fan | Song Jun |
| [SPARK-3249](https://issues.apache.org/jira/browse/SPARK-3249) | Fix links in ScalaDoc that cause warning messages in \`sbt/sbt unidoc\` |  Minor | Documentation, MLlib | Xiangrui Meng | Hyukjin Kwon |
| [SPARK-18206](https://issues.apache.org/jira/browse/SPARK-18206) | Log instrumentation in MPC, NB, LDA, AFT, GLR, Isotonic, LinReg |  Minor | ML | Joseph K. Bradley | zhengruifeng |
| [SPARK-18243](https://issues.apache.org/jira/browse/SPARK-18243) | Converge the insert path of Hive tables with data source tables |  Major | SQL | Reynold Xin | Wenchen Fan |
| [SPARK-19024](https://issues.apache.org/jira/browse/SPARK-19024) | Implement new approach to write a permanent view |  Major | SQL | Jiang Xingbo | Jiang Xingbo |
| [SPARK-19271](https://issues.apache.org/jira/browse/SPARK-19271) | Change non-cbo estimation of aggregate |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-16101](https://issues.apache.org/jira/browse/SPARK-16101) | Refactoring CSV data source to be consistent with JSON data source |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-19153](https://issues.apache.org/jira/browse/SPARK-19153) | DataFrameWriter.saveAsTable should work with hive format to create partitioned table |  Major | SQL | Wenchen Fan | Song Jun |
| [SPARK-19272](https://issues.apache.org/jira/browse/SPARK-19272) | Remove the param \`viewOriginalText\` from \`CatalogTable\` |  Major | SQL | Jiang Xingbo | Jiang Xingbo |
| [SPARK-19152](https://issues.apache.org/jira/browse/SPARK-19152) | DataFrameWriter.saveAsTable should work with hive format with append mode |  Major | SQL | Wenchen Fan | Song Jun |
| [SPARK-18936](https://issues.apache.org/jira/browse/SPARK-18936) | Infrastructure for session local timezone support |  Major | SQL | Reynold Xin | Takuya Ueshin |
| [SPARK-18872](https://issues.apache.org/jira/browse/SPARK-18872) | New test cases for EXISTS subquery |  Major | SQL, Tests | Nattavut Sutyanyong | Dilip Biswal |
| [SPARK-19212](https://issues.apache.org/jira/browse/SPARK-19212) | Parse the view query in HiveSessionCatalog |  Major | SQL | Jiang Xingbo | Wenchen Fan |
| [SPARK-19118](https://issues.apache.org/jira/browse/SPARK-19118) | Percentile support for frequency distribution table |  Major | SQL | gagan taneja | gagan taneja |
| [SPARK-19413](https://issues.apache.org/jira/browse/SPARK-19413) | Basic mapGroupsWithState API |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-19025](https://issues.apache.org/jira/browse/SPARK-19025) | Remove SQL builder for operators |  Major | SQL | Jiang Xingbo | Jiang Xingbo |
| [SPARK-19427](https://issues.apache.org/jira/browse/SPARK-19427) | UserDefinedFunction should support data types strings |  Major | PySpark, SQL | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-19162](https://issues.apache.org/jira/browse/SPARK-19162) | UserDefinedFunction constructor should verify that func is callable |  Minor | PySpark, SQL | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-19163](https://issues.apache.org/jira/browse/SPARK-19163) | Lazy creation of the \_judf |  Major | PySpark, SQL | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-19387](https://issues.apache.org/jira/browse/SPARK-19387) | CRAN tests do not run with SparkR source package |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-17076](https://issues.apache.org/jira/browse/SPARK-17076) | Cardinality estimation of join operator |  Major | Optimizer | Ron Hu | Zhenhua Wang |
| [SPARK-18873](https://issues.apache.org/jira/browse/SPARK-18873) | New test cases for scalar subquery |  Major | SQL, Tests | Nattavut Sutyanyong | Nattavut Sutyanyong |
| [SPARK-19160](https://issues.apache.org/jira/browse/SPARK-19160) | Decorator for UDF creation. |  Major | PySpark, SQL | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-19331](https://issues.apache.org/jira/browse/SPARK-19331) | Improve the test coverage of SQLViewSuite |  Minor | SQL | Jiang Xingbo | Jiang Xingbo |
| [SPARK-18937](https://issues.apache.org/jira/browse/SPARK-18937) | Timezone support in CSV/JSON parsing |  Major | SQL | Reynold Xin | Takuya Ueshin |
| [SPARK-19550](https://issues.apache.org/jira/browse/SPARK-19550) | Remove reflection, docs, build elements related to Java 7 |  Major | Build, Documentation, Spark Core | Sean Owen | Sean Owen |
| [SPARK-19533](https://issues.apache.org/jira/browse/SPARK-19533) | Convert Java examples to use lambdas, Java 8 features |  Major | Examples | Sean Owen | Sean Owen |
| [SPARK-19534](https://issues.apache.org/jira/browse/SPARK-19534) | Convert Java tests to use lambdas, Java 8 features |  Major | Tests | Sean Owen | Sean Owen |
| [SPARK-17075](https://issues.apache.org/jira/browse/SPARK-17075) | Cardinality Estimation of Predicate Expressions |  Major | Optimizer | Ron Hu | Ron Hu |
| [SPARK-19161](https://issues.apache.org/jira/browse/SPARK-19161) | Improving UDF Docstrings |  Major | PySpark, SQL | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-17078](https://issues.apache.org/jira/browse/SPARK-17078) | show estimated stats when doing explain |  Major | Optimizer | Ron Hu | Zhenhua Wang |
| [SPARK-15355](https://issues.apache.org/jira/browse/SPARK-15355) | Pro-active block replenishment in case of node/executor failures |  Major | Block Manager, Spark Core | Shubham Chopra | Shubham Chopra |
| [SPARK-19610](https://issues.apache.org/jira/browse/SPARK-19610) | multi line support for CSV |  Major | SQL | Wenchen Fan | Hyukjin Kwon |
| [SPARK-14503](https://issues.apache.org/jira/browse/SPARK-14503) | spark.ml Scala API for FPGrowth |  Major | ML | Joseph K. Bradley | yuhao yang |
| [SPARK-18939](https://issues.apache.org/jira/browse/SPARK-18939) | Timezone support in partition values. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-19211](https://issues.apache.org/jira/browse/SPARK-19211) | Explicitly prevent Insert into View or Create View As Insert |  Major | SQL | Jiang Xingbo | Jiang Xingbo |
| [SPARK-19350](https://issues.apache.org/jira/browse/SPARK-19350) | Cardinality estimation of Limit and Sample |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-18389](https://issues.apache.org/jira/browse/SPARK-18389) | Disallow cyclic view reference |  Major | SQL | Reynold Xin | Jiang Xingbo |
| [SPARK-17080](https://issues.apache.org/jira/browse/SPARK-17080) | join reorder |  Major | Optimizer | Ron Hu | Zhenhua Wang |
| [SPARK-19865](https://issues.apache.org/jira/browse/SPARK-19865) | remove the view identifier in SubqueryAlias |  Major | SQL | Wenchen Fan | Jiang Xingbo |
| [SPARK-19858](https://issues.apache.org/jira/browse/SPARK-19858) | Add output mode to flatMapGroupsWithState and disallow invalid cases |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18874](https://issues.apache.org/jira/browse/SPARK-18874) | First phase: Deferring the correlated predicate pull up to Optimizer phase |  Major | SQL | Nattavut Sutyanyong | Dilip Biswal |
| [SPARK-18966](https://issues.apache.org/jira/browse/SPARK-18966) | NOT IN subquery with correlated expressions may return incorrect result |  Major | SQL | Nattavut Sutyanyong | Nattavut Sutyanyong |
| [SPARK-19817](https://issues.apache.org/jira/browse/SPARK-19817) | make it clear that \`timeZone\` option is a general option in DataFrameReader/Writer, DataStreamReader/Writer |  Major | SQL, Structured Streaming | Wenchen Fan | Takuya Ueshin |
| [SPARK-19877](https://issues.apache.org/jira/browse/SPARK-19877) | Restrict the nested level of a view |  Major | SQL | Jiang Xingbo | Jiang Xingbo |
| [SPARK-19960](https://issues.apache.org/jira/browse/SPARK-19960) | Move \`SparkHadoopWriter\` to \`internal/io/\` |  Major | Spark Core | Jiang Xingbo | Jiang Xingbo |
| [SPARK-19635](https://issues.apache.org/jira/browse/SPARK-19635) | Feature parity for Chi-square hypothesis testing in MLlib |  Major | ML | Timothy Hunter | Joseph K. Bradley |
| [SPARK-19915](https://issues.apache.org/jira/browse/SPARK-19915) | Improve join reorder: Exclude cartesian product candidates to reduce the search space |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-18817](https://issues.apache.org/jira/browse/SPARK-18817) | Ensure nothing is written outside R's tempdir() by default |  Critical | SparkR | Brendan Dwyer | Felix Cheung |
| [SPARK-17791](https://issues.apache.org/jira/browse/SPARK-17791) | Join reordering using star schema detection |  Critical | SQL | Ioana Delaney | Ioana Delaney |
| [SPARK-19838](https://issues.apache.org/jira/browse/SPARK-19838) | Adding Processing Time based timeout |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-20030](https://issues.apache.org/jira/browse/SPARK-20030) | Add Event Time based Timeout |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-20057](https://issues.apache.org/jira/browse/SPARK-20057) | Renamed KeyedState to GroupState |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-19636](https://issues.apache.org/jira/browse/SPARK-19636) | Feature parity for correlation statistics in MLlib |  Major | ML | Timothy Hunter | Timothy Hunter |
| [SPARK-17137](https://issues.apache.org/jira/browse/SPARK-17137) | Add compressed support for multinomial logistic regression coefficients |  Minor | ML | Seth Hendrickson | Seth Hendrickson |
| [SPARK-19281](https://issues.apache.org/jira/browse/SPARK-19281) | spark.ml Python API for FPGrowth |  Major | ML, PySpark | Joseph K. Bradley | Maciej Szymkiewicz |
| [SPARK-20104](https://issues.apache.org/jira/browse/SPARK-20104) | Don't estimate IsNull or IsNotNull predicates for non-leaf node |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-20124](https://issues.apache.org/jira/browse/SPARK-20124) | Join reorder should keep the same order of final project attributes |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-19955](https://issues.apache.org/jira/browse/SPARK-19955) | Update run-tests to support conda |  Major | Project Infra, PySpark | holdenk | holdenk |
| [SPARK-15354](https://issues.apache.org/jira/browse/SPARK-15354) | Topology aware block replication strategies |  Major | Mesos, Spark Core, YARN | Shubham Chopra | Shubham Chopra |
| [SPARK-20165](https://issues.apache.org/jira/browse/SPARK-20165) | Resolve state encoder's deserializer in driver in FlatMapGroupsWithStateExec |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-20186](https://issues.apache.org/jira/browse/SPARK-20186) | BroadcastHint should use child's stats |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-19408](https://issues.apache.org/jira/browse/SPARK-19408) | cardinality estimation involving two columns of the same table |  Major | Optimizer | Ron Hu | Ron Hu |
| [SPARK-10364](https://issues.apache.org/jira/browse/SPARK-10364) | Support Parquet logical type TIMESTAMP\_MILLIS |  Major | SQL | Cheng Lian | Dilip Biswal |
| [SPARK-20183](https://issues.apache.org/jira/browse/SPARK-20183) | Add outlierRatio option to testOutliersWithSmallWeights |  Major | ML, Tests | Joseph K. Bradley | Seth Hendrickson |
| [SPARK-20224](https://issues.apache.org/jira/browse/SPARK-20224) | Update apache docs |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-20231](https://issues.apache.org/jira/browse/SPARK-20231) | Refactor star schema code for the subsequent star join detection in CBO |  Minor | SQL | Ioana Delaney | Ioana Delaney |
| [SPARK-19825](https://issues.apache.org/jira/browse/SPARK-19825) | spark.ml R API for FPGrowth |  Major | ML, SparkR | Felix Cheung | Maciej Szymkiewicz |
| [SPARK-20076](https://issues.apache.org/jira/browse/SPARK-20076) | Python interface for ml.stats.Correlation |  Major | ML | Timothy Hunter | Liang-Chi Hsieh |
| [SPARK-19993](https://issues.apache.org/jira/browse/SPARK-19993) | Caching logical plans containing subquery expressions does not work. |  Major | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-20233](https://issues.apache.org/jira/browse/SPARK-20233) | Apply star-join filter heuristics to dynamic programming join enumeration |  Critical | SQL | Ioana Delaney | Ioana Delaney |
| [SPARK-20318](https://issues.apache.org/jira/browse/SPARK-20318) | Use Catalyst type for min/max in ColumnStat for ease of estimation |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-20366](https://issues.apache.org/jira/browse/SPARK-20366) | Fix recursive join reordering: inside joins are not reordered |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-20334](https://issues.apache.org/jira/browse/SPARK-20334) | Return a better error message when correlated predicates contain aggregate expression that has mixture of outer and local references |  Minor | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-19791](https://issues.apache.org/jira/browse/SPARK-19791) | Add doc and example for fpgrowth |  Major | ML | yuhao yang | yuhao yang |
| [SPARK-20583](https://issues.apache.org/jira/browse/SPARK-20583) | Scala/Java generic hint support |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-20584](https://issues.apache.org/jira/browse/SPARK-20584) | Python generic hint support |  Major | SQL | Reynold Xin | Maciej Szymkiewicz |
| [SPARK-20585](https://issues.apache.org/jira/browse/SPARK-20585) | R generic hint support |  Major | SQL | Reynold Xin | Maciej Szymkiewicz |
| [SPARK-20678](https://issues.apache.org/jira/browse/SPARK-20678) | Ndv for columns not in filter condition should also be updated |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-20714](https://issues.apache.org/jira/browse/SPARK-20714) | Fix match error when watermark is set with timeout = no timeout / processing timeout |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-20717](https://issues.apache.org/jira/browse/SPARK-20717) | Tweak MapGroupsWithState update function behavior |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-20501](https://issues.apache.org/jira/browse/SPARK-20501) | ML, Graph 2.2 QA: API: New Scala APIs, docs |  Blocker | Documentation, GraphX, ML, MLlib | Joseph K. Bradley | Yanbo Liang |
| [SPARK-20505](https://issues.apache.org/jira/browse/SPARK-20505) | ML, Graph 2.2 QA: Update user guide for new features & APIs |  Critical | Documentation, GraphX, ML, MLlib | Joseph K. Bradley | Yanbo Liang |
| [SPARK-20506](https://issues.apache.org/jira/browse/SPARK-20506) | ML, Graph 2.2 QA: Programming guide update and migration guide |  Critical | Documentation, GraphX, ML, MLlib | Joseph K. Bradley | Nick Pentreath |
| [SPARK-20792](https://issues.apache.org/jira/browse/SPARK-20792) | Support same timeout operations in mapGroupsWithState function in batch queries as in streaming queries |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-20801](https://issues.apache.org/jira/browse/SPARK-20801) | Store accurate size of blocks in MapStatus when it's above threshold. |  Major | Spark Core | jin xing | jin xing |
| [SPARK-20727](https://issues.apache.org/jira/browse/SPARK-20727) | Skip SparkR tests when missing Hadoop winutils on CRAN windows machines |  Major | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-20877](https://issues.apache.org/jira/browse/SPARK-20877) | Investigate if tests will time out on CRAN |  Major | SparkR | Felix Cheung | Felix Cheung |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-18723](https://issues.apache.org/jira/browse/SPARK-18723) | Expanded programming guide information on wholeTextFiles |  Minor | Documentation | Michal Šenkýř | Michal Šenkýř |
| [SPARK-19006](https://issues.apache.org/jira/browse/SPARK-19006) | should mentioned the max value allowed for spark.kryoserializer.buffer.max in doc |  Trivial | . | Yuexin Zhang | Yuexin Zhang |
| [SPARK-19003](https://issues.apache.org/jira/browse/SPARK-19003) | Add Java examples in "Spark Streaming  Guide", section "Design Patterns for using foreachRDD" |  Minor | Documentation | Tushar Adeshara | Tushar Adeshara |
| [SPARK-19156](https://issues.apache.org/jira/browse/SPARK-19156) | Example in the doc not working |  Minor | Java API | Rafael Guglielmetti | Rafael Guglielmetti |
| [SPARK-14567](https://issues.apache.org/jira/browse/SPARK-14567) | Add instrumentation logs to MLlib training algorithms |  Major | ML, MLlib | Timothy Hunter | Timothy Hunter |
| [SPARK-18823](https://issues.apache.org/jira/browse/SPARK-18823) | Assignation by column name variable not available or bug? |  Major | SparkR | Vicente Masip | Felix Cheung |
| [SPARK-16046](https://issues.apache.org/jira/browse/SPARK-16046) | Add Aggregations Section to Spark SQL programming guide |  Major | Documentation, SQL | Pedro Rodriguez | Anton Okolnychyi |
| [SPARK-19402](https://issues.apache.org/jira/browse/SPARK-19402) | Fix warnings in Scala/Java APIs generation by unidoc/genjavadoc |  Minor | Documentation | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-19410](https://issues.apache.org/jira/browse/SPARK-19410) | Links to API documentation are broken |  Trivial | Documentation | Aseem Bansal | zhengruifeng |
| [SPARK-19389](https://issues.apache.org/jira/browse/SPARK-19389) | Minor doc fixes, including Since tags in Python Params |  Minor | Documentation, ML, PySpark | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-19444](https://issues.apache.org/jira/browse/SPARK-19444) | Tokenizer example does not compile without extra imports |  Minor | Documentation | Aseem Bansal | Aseem Bansal |
| [SPARK-19584](https://issues.apache.org/jira/browse/SPARK-19584) | Update Structured Streaming documentation to include Batch query description |  Major | Documentation | Tyson Condie | Tyson Condie |
| [SPARK-19590](https://issues.apache.org/jira/browse/SPARK-19590) | Update the document for QuantileDiscretizer in pyspark |  Major | ML, PySpark | Vincent | Vincent |
| [SPARK-19337](https://issues.apache.org/jira/browse/SPARK-19337) | Documentation and examples for LinearSVC |  Major | Documentation, ML | Joseph K. Bradley | yuhao yang |
| [SPARK-19639](https://issues.apache.org/jira/browse/SPARK-19639) | Add spark.svmLinear example and update vignettes |  Major | SparkR | Miao Wang | Miao Wang |
| [SPARK-19769](https://issues.apache.org/jira/browse/SPARK-19769) | Quickstart self-contained application instructions do not work with current sbt |  Trivial | Documentation | Michael McCune | Michael McCune |
| [SPARK-19734](https://issues.apache.org/jira/browse/SPARK-19734) | OneHotEncoder \_\_init\_\_ uses dropLast but doc strings all say includeFirst |  Minor | PySpark | Corey | Mark Grover |
| [SPARK-19345](https://issues.apache.org/jira/browse/SPARK-19345) | Add doc for "coldStartStrategy" usage in ALS |  Minor | ML | Nick Pentreath | Nick Pentreath |
| [SPARK-19948](https://issues.apache.org/jira/browse/SPARK-19948) | Document that saveAsTable uses catalog as source of truth for table existence. |  Major | Documentation | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-19906](https://issues.apache.org/jira/browse/SPARK-19906) | Add Documentation for Kafka Write paths |  Major | Structured Streaming | Tyson Condie |  |
| [SPARK-19969](https://issues.apache.org/jira/browse/SPARK-19969) | Doc and examples for Imputer |  Major | ML | Nick Pentreath | yuhao yang |
| [SPARK-20296](https://issues.apache.org/jira/browse/SPARK-20296) | UnsupportedOperationChecker text on distinct aggregations differs from docs |  Trivial | Structured Streaming | Jason Tokayer | Jason Tokayer |
| [SPARK-20132](https://issues.apache.org/jira/browse/SPARK-20132) | Add documentation for column string functions |  Minor | PySpark, SQL | Michael Patterson | Michael Patterson |
| [SPARK-20455](https://issues.apache.org/jira/browse/SPARK-20455) | Missing Test Target in Documentation for "Running Docker-based Integration Test Suites" |  Trivial | Documentation | Armin Braun | Armin Braun |
| [SPARK-12837](https://issues.apache.org/jira/browse/SPARK-12837) | Spark driver requires large memory space for serialized results even there are no data collected to the driver |  Critical | SQL | Tien-Dung LE | Wenchen Fan |
| [SPARK-20208](https://issues.apache.org/jira/browse/SPARK-20208) | Document R fpGrowth support in vignettes, programming guide and code example |  Major | Documentation, SparkR | Felix Cheung | Maciej Szymkiewicz |
| [SPARK-20478](https://issues.apache.org/jira/browse/SPARK-20478) | Document LinearSVC in R programming guide |  Major | SparkR | Felix Cheung | Miao Wang |
| [SPARK-20477](https://issues.apache.org/jira/browse/SPARK-20477) | Document R bisecting k-means in R programming guide |  Major | SparkR | Felix Cheung | Miao Wang |
| [SPARK-20192](https://issues.apache.org/jira/browse/SPARK-20192) | SparkR 2.2.0 migration guide, release note |  Major | Documentation, SparkR | Felix Cheung | Felix Cheung |
| [SPARK-20015](https://issues.apache.org/jira/browse/SPARK-20015) | Document R Structured Streaming (experimental) in R vignettes and R & SS programming guide, R example |  Major | Documentation, SparkR, Structured Streaming | Felix Cheung | Felix Cheung |
| [SPARK-20637](https://issues.apache.org/jira/browse/SPARK-20637) | MappedRDD, FilteredRDD, etc. are still referenced in code comments |  Trivial | Spark Core | Michael Mior | Michael Mior |
| [SPARK-20553](https://issues.apache.org/jira/browse/SPARK-20553) | Update ALS examples for ML to illustrate recommend all |  Minor | ML, PySpark | Nick Pentreath | Nick Pentreath |
| [SPARK-20694](https://issues.apache.org/jira/browse/SPARK-20694) | Document DataFrameWriter partitionBy, bucketBy and sortBy in SQL guide |  Major | Documentation, Examples, SQL | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-18695](https://issues.apache.org/jira/browse/SPARK-18695) | Bump master branch version to 2.2.0-SNAPSHOT |  Major | . | Reynold Xin | Reynold Xin |
| [SPARK-18973](https://issues.apache.org/jira/browse/SPARK-18973) | Remove SortPartitions and RedistributeData |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14453](https://issues.apache.org/jira/browse/SPARK-14453) | Remove SPARK\_JAVA\_OPTS environment variable |  Minor | Spark Core, YARN | Saisai Shao | Yong Tang |
| [SPARK-20421](https://issues.apache.org/jira/browse/SPARK-20421) | Mark JobProgressListener (and related classes) as deprecated |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-20888](https://issues.apache.org/jira/browse/SPARK-20888) | Document HiveCaseSensitiveInferenceMode.INFER\_AND\_SAVE in Spark SQL 2.1 to 2.2 migration notes |  Critical | Documentation, SQL | Michael Allman | Michael Allman |
| [SPARK-20844](https://issues.apache.org/jira/browse/SPARK-20844) | Remove experimental from API and docs |  Blocker | Structured Streaming | Michael Armbrust | Michael Armbrust |


