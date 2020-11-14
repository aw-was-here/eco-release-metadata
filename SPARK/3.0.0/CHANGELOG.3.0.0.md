
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

## Release 3.0.0 - 2020-06-18



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-27061](https://issues.apache.org/jira/browse/SPARK-27061) | Expose Driver UI port on driver service to access UI using service |  Minor | Kubernetes, Spark Core | Chandu Kavar | Chandu Kavar |
| [SPARK-28652](https://issues.apache.org/jira/browse/SPARK-28652) | spark.kubernetes.pyspark.pythonVersion is never passed to executors |  Minor | Kubernetes, Spark Core | nanav yorbiz | L. C. Hsieh |
| [SPARK-29055](https://issues.apache.org/jira/browse/SPARK-29055) | Spark UI storage memory increasing overtime |  Major | Block Manager, Spark Core | George Papa | Jungtaek Lim |
| [SPARK-27296](https://issues.apache.org/jira/browse/SPARK-27296) | Efficient User Defined Aggregators |  Major | Spark Core, SQL, Structured Streaming | Erik Erlandson | Erik Erlandson |
| [SPARK-30590](https://issues.apache.org/jira/browse/SPARK-30590) | can't use more than five type-safe user-defined aggregation in select statement |  Major | Spark Core | Daniel Mantovani | L. C. Hsieh |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-25589](https://issues.apache.org/jira/browse/SPARK-25589) | Add BloomFilterBenchmark |  Major | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-25635](https://issues.apache.org/jira/browse/SPARK-25635) | Support selective direct encoding in native ORC write |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-25202](https://issues.apache.org/jira/browse/SPARK-25202) | SQL Function Split Should Respect Limit Argument |  Minor | Spark Core | Parker Hegstrom | Parker Hegstrom |
| [SPARK-25560](https://issues.apache.org/jira/browse/SPARK-25560) | Allow Function Injection in SparkSessionExtensions |  Major | Spark Core, SQL | Russell Spitzer | Russell Spitzer |
| [SPARK-24434](https://issues.apache.org/jira/browse/SPARK-24434) | Support user-specified driver and executor pod templates |  Major | Kubernetes, Spark Core | Yinan Li | Onur Satici |
| [SPARK-26118](https://issues.apache.org/jira/browse/SPARK-26118) | Make Jetty's requestHeaderSize configurable in Spark |  Major | Web UI | Attila Zsolt Piros | Attila Zsolt Piros |
| [SPARK-25960](https://issues.apache.org/jira/browse/SPARK-25960) | Support subpath mounting with Kubernetes |  Major | Kubernetes, Spark Core | Timothy Chen | Nihar Sheth |
| [SPARK-26236](https://issues.apache.org/jira/browse/SPARK-26236) | Kafka delegation token support documentation |  Major | Documentation, Structured Streaming | Gabor Somogyi | Gabor Somogyi |
| [SPARK-24333](https://issues.apache.org/jira/browse/SPARK-24333) | Add fit with validation set to spark.ml GBT: Python API |  Major | ML, PySpark | Joseph K. Bradley | Huaxin Gao |
| [SPARK-26139](https://issues.apache.org/jira/browse/SPARK-26139) | Support passing shuffle metrics to exchange operator |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-26239](https://issues.apache.org/jira/browse/SPARK-26239) | Add configurable auth secret source in k8s backend |  Major | Kubernetes, Spark Core | Marcelo Masiero Vanzin | Matt Cheah |
| [SPARK-25815](https://issues.apache.org/jira/browse/SPARK-25815) | Kerberos Support in Kubernetes resource manager (Client Mode) |  Major | Kubernetes, Spark Core | Ilan Filonenko | Marcelo Masiero Vanzin |
| [SPARK-26550](https://issues.apache.org/jira/browse/SPARK-26550) | New datasource for benchmarking |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26457](https://issues.apache.org/jira/browse/SPARK-26457) | Show hadoop configurations in HistoryServer environment tab |  Minor | Spark Core, Web UI | deshanxiao | deshanxiao |
| [SPARK-19591](https://issues.apache.org/jira/browse/SPARK-19591) | Add sample weights to decision trees |  Major | ML | Seth Hendrickson | Seth Hendrickson |
| [SPARK-26649](https://issues.apache.org/jira/browse/SPARK-26649) | Noop Streaming Sink using DSV2 |  Major | Structured Streaming | Xiao Li | Gabor Somogyi |
| [SPARK-26595](https://issues.apache.org/jira/browse/SPARK-26595) | Allow delegation token renewal without a keytab |  Major | Spark Core | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-22798](https://issues.apache.org/jira/browse/SPARK-22798) | Add multiple column support to PySpark StringIndexer |  Major | ML, PySpark | Nicholas Pentreath | Huaxin Gao |
| [SPARK-26981](https://issues.apache.org/jira/browse/SPARK-26981) | Add 'Recall\_at\_k' metric to RankingMetrics |  Minor | MLlib | Masahiro Kazama | Masahiro Kazama |
| [SPARK-26288](https://issues.apache.org/jira/browse/SPARK-26288) | add initRegisteredExecutorsDB in ExternalShuffleService |  Major | Kubernetes, Shuffle, Spark Core | weixiuli | weixiuli |
| [SPARK-25196](https://issues.apache.org/jira/browse/SPARK-25196) | Extends the analyze column command for cached tables |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-26946](https://issues.apache.org/jira/browse/SPARK-26946) | Identifiers for multi-catalog Spark |  Major | SQL | John Zhuge | John Zhuge |
| [SPARK-27266](https://issues.apache.org/jira/browse/SPARK-27266) | Support ANALYZE TABLE to collect tables stats for cached catalog views |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-27325](https://issues.apache.org/jira/browse/SPARK-27325) | Support implicit encoders for LocalDate and Instant |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-27225](https://issues.apache.org/jira/browse/SPARK-27225) | Implement join strategy hints |  Major | SQL | Wei Xue | Wei Xue |
| [SPARK-27540](https://issues.apache.org/jira/browse/SPARK-27540) | Add 'meanAveragePrecision\_at\_k' metric to RankingMetrics |  Minor | MLlib | Pham Nguyen Tuan Anh | Tarush Grover |
| [SPARK-27653](https://issues.apache.org/jira/browse/SPARK-27653) | Add max\_by() / min\_by() SQL aggregate functions |  Major | SQL | Josh Rosen | L. C. Hsieh |
| [SPARK-27678](https://issues.apache.org/jira/browse/SPARK-27678) | Support Knox user impersonation in UI |  Minor | Web UI | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-27677](https://issues.apache.org/jira/browse/SPARK-27677) | Disk-persisted RDD blocks served by shuffle service, and ignored for Dynamic Allocation |  Major | Block Manager, Spark Core | Imran Rashid | Attila Zsolt Piros |
| [SPARK-27838](https://issues.apache.org/jira/browse/SPARK-27838) | Support user provided non-nullable avro schema for nullable catalyst schema without any null record |  Major | SQL | DB Tsai | DB Tsai |
| [SPARK-27322](https://issues.apache.org/jira/browse/SPARK-27322) | DataSourceV2 table relation |  Major | SQL | John Zhuge | John Zhuge |
| [SPARK-26412](https://issues.apache.org/jira/browse/SPARK-26412) | Allow Pandas UDF to take an iterator of pd.DataFrames |  Major | PySpark | Xiangrui Meng | Weichen Xu |
| [SPARK-27990](https://issues.apache.org/jira/browse/SPARK-27990) | Recursive data loading from file sources |  Major | ML, SQL | Weichen Xu | Weichen Xu |
| [SPARK-11412](https://issues.apache.org/jira/browse/SPARK-11412) | Support merge schema for ORC |  Major | SQL | Dave | EdisonWang |
| [SPARK-28198](https://issues.apache.org/jira/browse/SPARK-28198) | Add mapPartitionsInPandas to allow an iterator of DataFrames |  Major | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-28226](https://issues.apache.org/jira/browse/SPARK-28226) | Document Pandas UDF mapParitionsInPandas |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-27963](https://issues.apache.org/jira/browse/SPARK-27963) | Allow dynamic allocation without an external shuffle service |  Major | Spark Core | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-28456](https://issues.apache.org/jira/browse/SPARK-28456) | Add a public API \`Encoder.makeCopy\` to allow creating Encoder without touching Scala reflections |  Major | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-28399](https://issues.apache.org/jira/browse/SPARK-28399) | Impl RobustScaler |  Major | ML | zhengruifeng | zhengruifeng |
| [SPARK-27905](https://issues.apache.org/jira/browse/SPARK-27905) | Add higher order function\`forall\` |  Major | SQL | Nikolas Vanderhoof | Nikolas Vanderhoof |
| [SPARK-28238](https://issues.apache.org/jira/browse/SPARK-28238) | DESCRIBE TABLE for Data Source V2 tables |  Major | SQL | Matt Cheah | Matt Cheah |
| [SPARK-28719](https://issues.apache.org/jira/browse/SPARK-28719) | Enable Github Actions for building master |  Major | Build | DB Tsai | DB Tsai |
| [SPARK-28745](https://issues.apache.org/jira/browse/SPARK-28745) | Add benchmarks for \`extract()\` |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-13677](https://issues.apache.org/jira/browse/SPARK-13677) | Support Tree-Based Feature Transformation for ML |  Major | ML | zhengruifeng | zhengruifeng |
| [SPARK-27395](https://issues.apache.org/jira/browse/SPARK-27395) | New format of EXPLAIN command |  Major | SQL | Xiao Li | Dilip Biswal |
| [SPARK-11150](https://issues.apache.org/jira/browse/SPARK-11150) | Dynamic partition pruning |  Major | SQL | Younes | Wei Xue |
| [SPARK-23539](https://issues.apache.org/jira/browse/SPARK-23539) | Add support for Kafka headers in Structured Streaming |  Major | Structured Streaming | Tathagata Das | Dongjin Lee |
| [SPARK-22796](https://issues.apache.org/jira/browse/SPARK-22796) | Add multiple column support to PySpark QuantileDiscretizer |  Major | ML, PySpark | Nicholas Pentreath | Huaxin Gao |
| [SPARK-28989](https://issues.apache.org/jira/browse/SPARK-28989) | Add \`spark.sql.ansi.enabled\` |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-28997](https://issues.apache.org/jira/browse/SPARK-28997) | Add \`spark.sql.dialect\` |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-28970](https://issues.apache.org/jira/browse/SPARK-28970) | implement USE CATALOG/NAMESPACE for Data Source V2 |  Major | SQL | Wenchen Fan | Terry Kim |
| [SPARK-29346](https://issues.apache.org/jira/browse/SPARK-29346) | Create Aggregating Accumulator |  Major | SQL | Herman van Hövell | Herman van Hövell |
| [SPARK-29279](https://issues.apache.org/jira/browse/SPARK-29279) | DataSourceV2: merge SHOW NAMESPACES and SHOW DATABASES code path |  Major | SQL | Terry Kim | Terry Kim |
| [SPARK-29347](https://issues.apache.org/jira/browse/SPARK-29347) | External Row should be JSON serializable |  Major | SQL | Herman van Hövell | Herman van Hövell |
| [SPARK-28762](https://issues.apache.org/jira/browse/SPARK-28762) | Read JAR main class if JAR is not located in local file system |  Minor | Deploy, Spark Core, Spark Submit | Ivan Gozali | Ivan Gozali |
| [SPARK-29489](https://issues.apache.org/jira/browse/SPARK-29489) | ml.evaluation support log-loss |  Major | ML, PySpark | zhengruifeng | zhengruifeng |
| [SPARK-29515](https://issues.apache.org/jira/browse/SPARK-29515) | MapStatuses SerDeser Benchmark |  Major | Spark Core | DB Tsai | DB Tsai |
| [SPARK-29434](https://issues.apache.org/jira/browse/SPARK-29434) | Improve the MapStatuses serialization performance |  Major | Spark Core | DB Tsai | DB Tsai |
| [SPARK-29576](https://issues.apache.org/jira/browse/SPARK-29576) | Use Spark's CompressionCodec for Ser/Deser of MapOutputStatus |  Major | Spark Core | DB Tsai | DB Tsai |
| [SPARK-29566](https://issues.apache.org/jira/browse/SPARK-29566) | Imputer should support single-column input/ouput |  Minor | ML, PySpark | zhengruifeng | Huaxin Gao |
| [SPARK-29565](https://issues.apache.org/jira/browse/SPARK-29565) | OneHotEncoder should support single-column input/ouput |  Minor | ML, PySpark | zhengruifeng | Huaxin Gao |
| [SPARK-20568](https://issues.apache.org/jira/browse/SPARK-20568) | Delete files after processing in structured streaming |  Major | Structured Streaming | Saul Shanabrook | Jungtaek Lim |
| [SPARK-16872](https://issues.apache.org/jira/browse/SPARK-16872) | Impl Gaussian Naive Bayes Classifier |  Major | ML, PySpark | zhengruifeng | zhengruifeng |
| [SPARK-29427](https://issues.apache.org/jira/browse/SPARK-29427) | Add API to convert RelationalGroupedDataset to KeyValueGroupedDataset |  Major | SQL | Alexander Hagerf | L. C. Hsieh |
| [SPARK-29348](https://issues.apache.org/jira/browse/SPARK-29348) | Add observable metrics |  Major | SQL | Herman van Hövell | Herman van Hövell |
| [SPARK-30213](https://issues.apache.org/jira/browse/SPARK-30213) | Remove the mutable status in QueryStage when enable AQE |  Major | SQL | Ke Jia | Ke Jia |
| [SPARK-30192](https://issues.apache.org/jira/browse/SPARK-30192) | support column position in DS v2 |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29224](https://issues.apache.org/jira/browse/SPARK-29224) | Implement Factorization Machines as a ml-pipeline component |  Major | ML | mob-ai | mob-ai |
| [SPARK-30185](https://issues.apache.org/jira/browse/SPARK-30185) | Implement Dataset.tail API |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-30154](https://issues.apache.org/jira/browse/SPARK-30154) | PySpark UDF to convert MLlib vectors to dense arrays |  Major | ML, MLlib, PySpark | Xiangrui Meng | Weichen Xu |
| [SPARK-30546](https://issues.apache.org/jira/browse/SPARK-30546) | Make interval type more future-proof |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-30671](https://issues.apache.org/jira/browse/SPARK-30671) | SparkSession emptyDataFrame should not create an RDD |  Major | SQL | Herman van Hövell | Herman van Hövell |
| [SPARK-30615](https://issues.apache.org/jira/browse/SPARK-30615) | normalize the column name in AlterTable |  Major | SQL | Wenchen Fan | Burak Yavuz |
| [SPARK-30614](https://issues.apache.org/jira/browse/SPARK-30614) | The native ALTER COLUMN syntax should change one thing at a time |  Major | SQL | Wenchen Fan | Terry Kim |
| [SPARK-30780](https://issues.apache.org/jira/browse/SPARK-30780) | LocalRelation should use emptyRDD if it is empty |  Major | SQL | Herman van Hövell | Herman van Hövell |
| [SPARK-31005](https://issues.apache.org/jira/browse/SPARK-31005) | Support time zone ids in casting strings to timestamps |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31064](https://issues.apache.org/jira/browse/SPARK-31064) | New Parquet Predicate Filter APIs with multi-part Identifier Support |  Major | SQL | DB Tsai | DB Tsai |
| [SPARK-31121](https://issues.apache.org/jira/browse/SPARK-31121) | catalog plugin API |  Major | SQL | Wenchen Fan | Ryan Blue |
| [SPARK-30127](https://issues.apache.org/jira/browse/SPARK-30127) | UDF should work for case class like Dataset operations |  Major | SQL | Wenchen Fan | wuyi |
| [SPARK-25556](https://issues.apache.org/jira/browse/SPARK-25556) | Predicate Pushdown for Nested fields |  Major | SQL | DB Tsai | DB Tsai |
| [SPARK-31026](https://issues.apache.org/jira/browse/SPARK-31026) | Parquet predicate pushdown on columns with dots |  Major | SQL | DB Tsai | DB Tsai |
| [SPARK-31392](https://issues.apache.org/jira/browse/SPARK-31392) | Support CalendarInterval to be reflect to CalendarIntervalType |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-31412](https://issues.apache.org/jira/browse/SPARK-31412) | New Adaptive Query Execution in Spark SQL |  Major | SQL | Wenchen Fan |  |
| [SPARK-31582](https://issues.apache.org/jira/browse/SPARK-31582) | Being able to not populate Hadoop classpath |  Major | Spark Core, YARN | DB Tsai | DB Tsai |
| [SPARK-31696](https://issues.apache.org/jira/browse/SPARK-31696) | Support spark.kubernetes.driver.service.annotation |  Major | Kubernetes, Spark Core | Dongjoon Hyun | Dongjoon Hyun |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-25222](https://issues.apache.org/jira/browse/SPARK-25222) | Spark on Kubernetes Pod Watcher dumps raw container status |  Minor | Kubernetes, Spark Core | Rob Vesse | Rob Vesse |
| [SPARK-20636](https://issues.apache.org/jira/browse/SPARK-20636) | Eliminate unnecessary shuffle with adjacent Window expressions |  Major | Optimizer, SQL | Michael Styles | Michael Styles |
| [SPARK-25415](https://issues.apache.org/jira/browse/SPARK-25415) | Make plan change log in RuleExecutor configurable by SQLConf |  Major | SQL | Wei Xue | Wei Xue |
| [SPARK-25338](https://issues.apache.org/jira/browse/SPARK-25338) | Several tests miss calling super.afterAll() in their afterAll() method |  Minor | Tests | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-25426](https://issues.apache.org/jira/browse/SPARK-25426) | Remove the duplicate fallback logic in UnsafeProjection |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-25436](https://issues.apache.org/jira/browse/SPARK-25436) | Bump master branch version to 2.5.0-SNAPSHOT |  Major | Build | Xiao Li | Xiao Li |
| [SPARK-25423](https://issues.apache.org/jira/browse/SPARK-25423) | Output "dataFilters" in DataSourceScanExec.metadata |  Trivial | SQL | Wei Xue | Yuming Wang |
| [SPARK-16323](https://issues.apache.org/jira/browse/SPARK-16323) | Avoid unnecessary cast when doing integral divide |  Minor | SQL | Sean Zhong | Marco Gaido |
| [SPARK-25444](https://issues.apache.org/jira/browse/SPARK-25444) | Refactor GenArrayData.genCodeToCreateArrayData() method |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-25381](https://issues.apache.org/jira/browse/SPARK-25381) | Stratified sampling by Column argument |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-25366](https://issues.apache.org/jira/browse/SPARK-25366) | Document Zstd and brotli CompressionCodec requirements for Parquet files |  Minor | Documentation, SQL | liuxian | liuxian |
| [SPARK-25494](https://issues.apache.org/jira/browse/SPARK-25494) | Upgrade Spark's use of Janino to 3.0.10 |  Major | SQL | Kris Mok | Kris Mok |
| [SPARK-24355](https://issues.apache.org/jira/browse/SPARK-24355) | Improve Spark shuffle server responsiveness to non-ChunkFetch requests |  Major | Shuffle, Spark Core | Min Shen | Sanket Chintapalli |
| [SPARK-25465](https://issues.apache.org/jira/browse/SPARK-25465) | Refactor Parquet test suites in project Hive |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-21291](https://issues.apache.org/jira/browse/SPARK-21291) | R partitionBy API |  Major | SparkR | Felix Cheung | Huaxin Gao |
| [SPARK-25514](https://issues.apache.org/jira/browse/SPARK-25514) | Generating pretty JSON by to\_json |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-21436](https://issues.apache.org/jira/browse/SPARK-21436) | Take advantage of known partioner for distinct on RDDs |  Minor | Spark Core | Holden Karau | Holden Karau |
| [SPARK-25458](https://issues.apache.org/jira/browse/SPARK-25458) | Support FOR ALL COLUMNS in ANALYZE TABLE |  Major | SQL | Xiao Li | Dilip Biswal |
| [SPARK-25429](https://issues.apache.org/jira/browse/SPARK-25429) | SparkListenerBus inefficient due to 'LiveStageMetrics#accumulatorIds:Array[Long]' data structure |  Major | Spark Core | DENG FEI | Yuming Wang |
| [SPARK-25449](https://issues.apache.org/jira/browse/SPARK-25449) | Don't send zero accumulators in heartbeats |  Major | Spark Core | Mukul Murthy | Mukul Murthy |
| [SPARK-25447](https://issues.apache.org/jira/browse/SPARK-25447) | Support JSON options by schema\_of\_json |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-25048](https://issues.apache.org/jira/browse/SPARK-25048) | Pivoting by multiple columns in Scala/Java |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-25565](https://issues.apache.org/jira/browse/SPARK-25565) | Add scala style checker to check add Locale.ROOT to .toLowerCase and .toUpperCase for internal calls |  Minor | Build | Yuming Wang | Hyukjin Kwon |
| [SPARK-18364](https://issues.apache.org/jira/browse/SPARK-18364) | Expose metrics for YarnShuffleService |  Major | Spark Core, YARN | Steven Rand | Marek Simunek |
| [SPARK-25575](https://issues.apache.org/jira/browse/SPARK-25575) | SQL tab in the spark UI doesn't have option of  hiding tables, eventhough other UI tabs has. |  Minor | Web UI | shahid | shahid |
| [SPARK-25592](https://issues.apache.org/jira/browse/SPARK-25592) | Bump master branch version to 3.0.0-SNAPSHOT |  Major | Build | Xiao Li | Xiao Li |
| [SPARK-25581](https://issues.apache.org/jira/browse/SPARK-25581) | Rename method \`benchmark\` in BenchmarkBase as benchmarkSuite |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-25595](https://issues.apache.org/jira/browse/SPARK-25595) | Ignore corrupt Avro file if flag IGNORE\_CORRUPT\_FILES enabled |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-17159](https://issues.apache.org/jira/browse/SPARK-17159) | Improve FileInputDStream.findNewFiles list performance |  Minor | DStreams | Steve Loughran | Steve Loughran |
| [SPARK-25408](https://issues.apache.org/jira/browse/SPARK-25408) | Move to idiomatic Java 8 |  Minor | Spark Core | Fokko Driesprong | Fokko Driesprong |
| [SPARK-25653](https://issues.apache.org/jira/browse/SPARK-25653) | Add tag ExtendedHiveTest for HiveSparkSubmitSuite |  Minor | Tests | Gengliang Wang | Gengliang Wang |
| [SPARK-25062](https://issues.apache.org/jira/browse/SPARK-25062) | Clean up BlockLocations in FileStatus objects |  Major | Spark Core | andrzej.stankevich@gmail.com | Peter Toth |
| [SPARK-25539](https://issues.apache.org/jira/browse/SPARK-25539) | Update lz4-java to get speed improvement |  Minor | Build | Yuming Wang | Yuming Wang |
| [SPARK-25641](https://issues.apache.org/jira/browse/SPARK-25641) | Change the spark.shuffle.server.chunkFetchHandlerThreadsPercent default to 100 |  Minor | Spark Core | Sanket Reddy | Sanket Reddy |
| [SPARK-25497](https://issues.apache.org/jira/browse/SPARK-25497) | limit operation within whole stage codegen should not consume all the inputs |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-24851](https://issues.apache.org/jira/browse/SPARK-24851) | Map a Stage ID to it's Associated Job ID in UI |  Trivial | Spark Core | Parth Gandhi | Parth Gandhi |
| [SPARK-25699](https://issues.apache.org/jira/browse/SPARK-25699) | Partially push down conjunctive predicated in Orc |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-25016](https://issues.apache.org/jira/browse/SPARK-25016) | remove Support for hadoop 2.6 |  Major | Build | Thomas Graves | Sean R. Owen |
| [SPARK-24109](https://issues.apache.org/jira/browse/SPARK-24109) | Remove class SnappyOutputStreamWrapper |  Minor | Block Manager, Input/Output, Spark Core | jinhai | Takeshi Yamamuro |
| [SPARK-25684](https://issues.apache.org/jira/browse/SPARK-25684) | Organize header related codes in CSV datasource |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-25566](https://issues.apache.org/jira/browse/SPARK-25566) | [Spark Job History] SQL UI Page does not support Pagination |  Major | Web UI | ABHISHEK KUMAR GUPTA | shahid |
| [SPARK-25712](https://issues.apache.org/jira/browse/SPARK-25712) | Improve usage message of start-master.sh and start-slave.sh |  Minor | Spark Core | Gengliang Wang | Gengliang Wang |
| [SPARK-20327](https://issues.apache.org/jira/browse/SPARK-20327) | Add CLI support for YARN custom resources, like GPUs |  Major | Spark Shell, Spark Submit | Daniel Templeton | Szilard Nemeth |
| [SPARK-25711](https://issues.apache.org/jira/browse/SPARK-25711) | Allow history server to show usage and remove deprecated options |  Minor | Spark Core | Gengliang Wang | Gengliang Wang |
| [SPARK-25716](https://issues.apache.org/jira/browse/SPARK-25716) | Project and Aggregate generate valid constraints with unnecessary operation |  Minor | SQL | SongYadong | SongYadong |
| [SPARK-25394](https://issues.apache.org/jira/browse/SPARK-25394) | Expose App status metrics as Source |  Major | Spark Core | Stavros Kontopoulos | Stavros Kontopoulos |
| [SPARK-25393](https://issues.apache.org/jira/browse/SPARK-25393) | Parsing CSV strings in a column |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-25734](https://issues.apache.org/jira/browse/SPARK-25734) | Literal should have a value corresponding to dataType |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-25760](https://issues.apache.org/jira/browse/SPARK-25760) | Set AddJarCommand return empty |  Minor | SQL | Yuming Wang | Yuming Wang |
| [SPARK-25683](https://issues.apache.org/jira/browse/SPARK-25683) | Updated the log for the firstTime event Drop occurs. |  Trivial | Spark Core | Devaraj Kavali | Shivu Sondur |
| [SPARK-25269](https://issues.apache.org/jira/browse/SPARK-25269) | SQL interface support specify StorageLevel when cache table |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-25785](https://issues.apache.org/jira/browse/SPARK-25785) | Add prettyNames for from\_json, to\_json, from\_csv, and schema\_of\_json |  Trivial | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-25747](https://issues.apache.org/jira/browse/SPARK-25747) | remove ColumnarBatchScan.needsUnsafeRowConversion |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-25243](https://issues.apache.org/jira/browse/SPARK-25243) | Use FailureSafeParser in from\_json |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-16775](https://issues.apache.org/jira/browse/SPARK-16775) | Remove deprecated accumulator v1 APIs |  Major | PySpark, Spark Core, SQL | Holden Karau | Sean R. Owen |
| [SPARK-24516](https://issues.apache.org/jira/browse/SPARK-24516) | PySpark Bindings for K8S - make Python 3 the default |  Minor | Kubernetes, PySpark, Spark Core | Ondrej Kokes | Ilan Filonenko |
| [SPARK-25746](https://issues.apache.org/jira/browse/SPARK-25746) | Refactoring ExpressionEncoder |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-25808](https://issues.apache.org/jira/browse/SPARK-25808) | upgrade jsr305 version from 1.3.9 to 3.0.0 |  Trivial | Build | ding xiaoyuan | ding xiaoyuan |
| [SPARK-25255](https://issues.apache.org/jira/browse/SPARK-25255) | Add getActiveSession to SparkSession in PySpark |  Trivial | PySpark | Holden Karau | Huaxin Gao |
| [SPARK-25851](https://issues.apache.org/jira/browse/SPARK-25851) | Fix deprecated API warning in SQLListener |  Trivial | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-25828](https://issues.apache.org/jira/browse/SPARK-25828) | Bumping Version of kubernetes.client to latest version |  Minor | Kubernetes, Spark Core | Ilan Filonenko | Ilan Filonenko |
| [SPARK-19851](https://issues.apache.org/jira/browse/SPARK-19851) | Add support for EVERY and ANY (SOME) aggregates |  Major | PySpark, SQL | Michael Styles | Dilip Biswal |
| [SPARK-25806](https://issues.apache.org/jira/browse/SPARK-25806) |  The instanceof FileSplit is redundant for ParquetFileFormat and OrcFileFormat |  Trivial | Input/Output | liuxian | liuxian |
| [SPARK-25856](https://issues.apache.org/jira/browse/SPARK-25856) | Remove AverageLike and CountLike classes. |  Minor | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-25755](https://issues.apache.org/jira/browse/SPARK-25755) | Supplementation of non-CodeGen unit tested for BroadcastHashJoinExec |  Minor | SQL, Tests | caoxuewen | caoxuewen |
| [SPARK-25790](https://issues.apache.org/jira/browse/SPARK-25790) | PCA doesn't support more than 65535 column matrix |  Major | ML, MLlib | shahid | shahid |
| [SPARK-25773](https://issues.apache.org/jira/browse/SPARK-25773) | Cancel zombie tasks in a result stage when the job finishes |  Major | Scheduler, Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-24901](https://issues.apache.org/jira/browse/SPARK-24901) | Merge the codegen of RegularHashMap and fastHashMap to reduce compiler maxCodesize when VectorizedHashMap is false |  Major | SQL | caoxuewen | caoxuewen |
| [SPARK-25886](https://issues.apache.org/jira/browse/SPARK-25886) | Improve error message of \`FailureSafeParser\` and \`from\_avro\` in FAILFAST mode |  Minor | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-25893](https://issues.apache.org/jira/browse/SPARK-25893) | Show a directional error message for unsupported Hive Metastore versions |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-25891](https://issues.apache.org/jira/browse/SPARK-25891) | Upgrade to Py4J 0.10.8.1 |  Major | PySpark | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-25855](https://issues.apache.org/jira/browse/SPARK-25855) | Don't use Erasure Coding for event log files |  Major | Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-23781](https://issues.apache.org/jira/browse/SPARK-23781) | Merge YARN and Mesos token renewal code |  Major | Mesos, Spark Core, YARN | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-25860](https://issues.apache.org/jira/browse/SPARK-25860) | Replace Literal(null, \_) with FalseLiteral whenever possible |  Major | Optimizer, SQL | Anton Okolnychyi | Anton Okolnychyi |
| [SPARK-25672](https://issues.apache.org/jira/browse/SPARK-25672) | Inferring schema from CSV string literal |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-25884](https://issues.apache.org/jira/browse/SPARK-25884) | Add TBLPROPERTIES and COMMENT, and use LOCATION when SHOW CREATE TABLE. |  Major | SQL | Takuya Ueshin | Apache Spark |
| [SPARK-25809](https://issues.apache.org/jira/browse/SPARK-25809) | Support additional K8S cluster types for integration tests |  Major | Kubernetes, Spark Core | Rob Vesse | Rob Vesse |
| [SPARK-25023](https://issues.apache.org/jira/browse/SPARK-25023) | Clarify Spark security documentation |  Minor | Documentation | Thomas Graves | Thomas Graves |
| [SPARK-25861](https://issues.apache.org/jira/browse/SPARK-25861) | Remove unused refreshInterval parameter from the headerSparkPage method. |  Trivial | Web UI | shahid | shahid |
| [SPARK-25638](https://issues.apache.org/jira/browse/SPARK-25638) | Convert structs to CSV strings |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-25913](https://issues.apache.org/jira/browse/SPARK-25913) | Unary SparkPlan nodes should extend UnaryExecNode |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-25900](https://issues.apache.org/jira/browse/SPARK-25900) | When the  the page number is more than the total page size, then fall back to the first page |  Minor | Web UI | ABHISHEK KUMAR GUPTA | shahid |
| [SPARK-25764](https://issues.apache.org/jira/browse/SPARK-25764) | Avoid usage of deprecated methods in examples for BisectingKMeans |  Major | Examples, ML | Marco Gaido | Marco Gaido |
| [SPARK-25926](https://issues.apache.org/jira/browse/SPARK-25926) | Move config entries in core module to internal.config. |  Major | Spark Core | Takuya Ueshin | Takuya Ueshin |
| [SPARK-25871](https://issues.apache.org/jira/browse/SPARK-25871) | Streaming WAL should not use hdfs erasure coding, regardless of FS defaults |  Major | DStreams | Imran Rashid | Imran Rashid |
| [SPARK-25904](https://issues.apache.org/jira/browse/SPARK-25904) | Avoid allocating arrays too large for JVMs |  Major | Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-25885](https://issues.apache.org/jira/browse/SPARK-25885) | HighlyCompressedMapStatus deserialization optimization |  Minor | Spark Core | Artem Kupchinskiy | Artem Kupchinskiy |
| [SPARK-25897](https://issues.apache.org/jira/browse/SPARK-25897) | Cannot run k8s integration tests in sbt |  Major | Kubernetes, Spark Core | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-25971](https://issues.apache.org/jira/browse/SPARK-25971) | Ignore partition byte-size statistics in SQLQueryTestSuite |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-25964](https://issues.apache.org/jira/browse/SPARK-25964) | Revise OrcReadBenchmark/DataSourceReadBenchmark case names and execution instructions |  Trivial | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-25945](https://issues.apache.org/jira/browse/SPARK-25945) | Support locale while parsing date/timestamp from CSV/JSON |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-25973](https://issues.apache.org/jira/browse/SPARK-25973) | Spark History Main page performance improvement |  Minor | Web UI | William Montaz | William Montaz |
| [SPARK-24101](https://issues.apache.org/jira/browse/SPARK-24101) | MulticlassClassificationEvaluator should use sample weight data |  Major | ML | Ilya Matiach | Ilya Matiach |
| [SPARK-25102](https://issues.apache.org/jira/browse/SPARK-25102) | Write Spark version to ORC/Parquet file metadata |  Major | SQL | Zoltan Ivanfi | Dongjoon Hyun |
| [SPARK-25839](https://issues.apache.org/jira/browse/SPARK-25839) | Implement use of KryoPool in KryoSerializer |  Minor | Spark Core | Patrick Brown | Patrick Brown |
| [SPARK-25972](https://issues.apache.org/jira/browse/SPARK-25972) | Missed JSON options in streaming.py |  Trivial | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-19714](https://issues.apache.org/jira/browse/SPARK-19714) | Clarify Bucketizer handling of invalid input |  Minor | ML, MLlib | Bill Chambers | Wojciech Szymanski |
| [SPARK-26013](https://issues.apache.org/jira/browse/SPARK-26013) | Upgrade R tools version to 3.5.1 in AppVeyor build |  Minor | Build, SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-26003](https://issues.apache.org/jira/browse/SPARK-26003) | Improve performance in SQLAppStatusListener |  Trivial | SQL | Marco Gaido | Marco Gaido |
| [SPARK-25947](https://issues.apache.org/jira/browse/SPARK-25947) | Reduce memory usage in ShuffleExchangeExec by selecting only the sort columns |  Major | SQL | Shuheng Dai | Shuheng Dai |
| [SPARK-25868](https://issues.apache.org/jira/browse/SPARK-25868) | One part of Spark MLlib Kmean Logic Performance problem |  Minor | MLlib | Liang Li | Liang Li |
| [SPARK-25118](https://issues.apache.org/jira/browse/SPARK-25118) | Need a solution to persist Spark application console outputs when running in shell/yarn client mode |  Major | Spark Submit | Ankur Gupta | Ankur Gupta |
| [SPARK-25778](https://issues.apache.org/jira/browse/SPARK-25778) | WriteAheadLogBackedBlockRDD in YARN Cluster Mode Fails due lack of access to tmpDir from $PWD to HDFS |  Major | Spark Core, Structured Streaming, YARN | Greg Senia | Greg Senia |
| [SPARK-25986](https://issues.apache.org/jira/browse/SPARK-25986) | Banning throw new Errors |  Major | Build | Xiao Li | Yuanjian Li |
| [SPARK-26014](https://issues.apache.org/jira/browse/SPARK-26014) | Deprecate R \< 3.4 support |  Major | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-25974](https://issues.apache.org/jira/browse/SPARK-25974) | Optimizes Generates bytecode for ordering based on the given order |  Major | SQL | caoxuewen | caoxuewen |
| [SPARK-26055](https://issues.apache.org/jira/browse/SPARK-26055) | InterfaceStability annotations should be retained at runtime |  Major | Spark Core | Wenchen Fan | Wenchen Fan |
| [SPARK-26073](https://issues.apache.org/jira/browse/SPARK-26073) | remove invalid comment as we don't use it anymore |  Major | SQL | caoxuewen | caoxuewen |
| [SPARK-26091](https://issues.apache.org/jira/browse/SPARK-26091) | Upgrade to 2.3.4 for Hive Metastore Client 2.3 |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-26006](https://issues.apache.org/jira/browse/SPARK-26006) | mllib Prefixspan |  Minor | MLlib | idan Levi | shahid |
| [SPARK-26043](https://issues.apache.org/jira/browse/SPARK-26043) | Make SparkHadoopUtil private to Spark |  Minor | Spark Core | Marcelo Masiero Vanzin | Sean R. Owen |
| [SPARK-26090](https://issues.apache.org/jira/browse/SPARK-26090) | Resolve most miscellaneous deprecation and build warnings for Spark 3 |  Minor | ML, Spark Core, SQL | Sean R. Owen | Sean R. Owen |
| [SPARK-26107](https://issues.apache.org/jira/browse/SPARK-26107) | Extend ReplaceNullWithFalseInPredicate to support higher-order functions: ArrayExists, ArrayFilter, MapFilter |  Major | SQL | Kris Mok | Kris Mok |
| [SPARK-26076](https://issues.apache.org/jira/browse/SPARK-26076) | Revise ambiguous error message from load-spark-env.sh |  Trivial | Build | Gengliang Wang | Gengliang Wang |
| [SPARK-26124](https://issues.apache.org/jira/browse/SPARK-26124) | Update plugins, including MiMa |  Minor | Build | Sean R. Owen | Sean R. Owen |
| [SPARK-26122](https://issues.apache.org/jira/browse/SPARK-26122) | Support encoding for multiLine in CSV datasource |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-8288](https://issues.apache.org/jira/browse/SPARK-8288) | ScalaReflection should also try apply methods defined in companion objects when inferring schema from a Product type |  Major | SQL | Cheng Lian | Drew Robb |
| [SPARK-25957](https://issues.apache.org/jira/browse/SPARK-25957) | Skip building spark-r docker image if spark distribution does not have R support |  Major | Kubernetes, Spark Core | Nagaram Prasad Addepally |  |
| [SPARK-26099](https://issues.apache.org/jira/browse/SPARK-26099) | Verification of the corrupt column in from\_csv/from\_json |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-19368](https://issues.apache.org/jira/browse/SPARK-19368) | Very bad performance in BlockMatrix.toIndexedRowMatrix() |  Minor | MLlib | Ohad Raviv | Ohad Raviv |
| [SPARK-26117](https://issues.apache.org/jira/browse/SPARK-26117) | use SparkOutOfMemoryError instead of OutOfMemoryError when catch exception |  Major | Spark Core, SQL | caoxuewen | caoxuewen |
| [SPARK-26156](https://issues.apache.org/jira/browse/SPARK-26156) | Revise summary section of stage page |  Minor | Web UI | Gengliang Wang | Gengliang Wang |
| [SPARK-24762](https://issues.apache.org/jira/browse/SPARK-24762) | Aggregator should be able to use Option of Product encoder |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-26153](https://issues.apache.org/jira/browse/SPARK-26153) | GBT & RandomForest avoid unnecessary \`first\` job to compute \`numFeatures\` |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-26121](https://issues.apache.org/jira/browse/SPARK-26121) | [Structured Streaming] Allow users to define prefix of Kafka's consumer group (group.id) |  Minor | Structured Streaming | Anastasios Zouzias | Anastasios Zouzias |
| [SPARK-21809](https://issues.apache.org/jira/browse/SPARK-21809) | Change Stage Page to use datatables to support sorting columns and searching |  Minor | Web UI | Nuochen Lyu | Parth Gandhi |
| [SPARK-23356](https://issues.apache.org/jira/browse/SPARK-23356) | Pushes Project to both sides of Union when expression is non-deterministic |  Major | SQL | caoxuewen | caoxuewen |
| [SPARK-26025](https://issues.apache.org/jira/browse/SPARK-26025) | Docker image build on dev builds is slow |  Minor | Kubernetes, Spark Core | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-25998](https://issues.apache.org/jira/browse/SPARK-25998) | TorrentBroadcast holds strong reference to broadcast object |  Major | Spark Core | Brandon Krieger | Brandon Krieger |
| [SPARK-26133](https://issues.apache.org/jira/browse/SPARK-26133) | Remove deprecated OneHotEncoder and rename OneHotEncoderEstimator to OneHotEncoder |  Major | ML | L. C. Hsieh | L. C. Hsieh |
| [SPARK-26163](https://issues.apache.org/jira/browse/SPARK-26163) | Parsing decimals from JSON using locale |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26177](https://issues.apache.org/jira/browse/SPARK-26177) | Automated formatting for Scala code |  Major | Build | Cody Koeninger | Cody Koeninger |
| [SPARK-26081](https://issues.apache.org/jira/browse/SPARK-26081) | Do not write empty files by text datasources |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26015](https://issues.apache.org/jira/browse/SPARK-26015) | Include a USER directive in project provided Spark Dockerfiles |  Major | Kubernetes, Spark Core | Rob Vesse | Rob Vesse |
| [SPARK-26158](https://issues.apache.org/jira/browse/SPARK-26158) | Enhance the accuracy of covariance in RowMatrix for DenseVector |  Minor | MLlib | Liang Li | Liang Li |
| [SPARK-25905](https://issues.apache.org/jira/browse/SPARK-25905) | BlockManager should expose getRemoteManagedBuffer to avoid creating bytebuffers |  Major | Spark Core | Imran Rashid | Wing Yew Poon |
| [SPARK-25977](https://issues.apache.org/jira/browse/SPARK-25977) | Parsing decimals from CSV using locale |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-25501](https://issues.apache.org/jira/browse/SPARK-25501) | Kafka delegation token support |  Major | Structured Streaming | Gabor Somogyi | Gabor Somogyi |
| [SPARK-25446](https://issues.apache.org/jira/browse/SPARK-25446) | Add schema\_of\_json() and schema\_of\_csv() to R |  Major | SQL | Maxim Gekk | Hyukjin Kwon |
| [SPARK-26060](https://issues.apache.org/jira/browse/SPARK-26060) | Track SparkConf entries and make SET command reject such entries. |  Major | Spark Core, SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-25876](https://issues.apache.org/jira/browse/SPARK-25876) | Simplify configuration types in k8s backend |  Major | Kubernetes, Spark Core | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-26180](https://issues.apache.org/jira/browse/SPARK-26180) | Add a withCreateTempDir function to the SparkCore test case |  Minor | Spark Core, Tests | caoxuewen | caoxuewen |
| [SPARK-26212](https://issues.apache.org/jira/browse/SPARK-26212) | Upgrade maven from 3.5.4 to 3.6.0 |  Minor | Build | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-26161](https://issues.apache.org/jira/browse/SPARK-26161) | Ignore empty files in load |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26151](https://issues.apache.org/jira/browse/SPARK-26151) | Return partial results for bad CSV records |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26230](https://issues.apache.org/jira/browse/SPARK-26230) | FileIndex: if case sensitive, validate partitions with original column names |  Minor | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-26235](https://issues.apache.org/jira/browse/SPARK-26235) | Change log level for ClassNotFoundException/NoClassDefFoundError in SparkSubmit to Error |  Trivial | Spark Core | Gengliang Wang | Gengliang Wang |
| [SPARK-25515](https://issues.apache.org/jira/browse/SPARK-25515) | Add a config property for disabling auto deletion of PODS for debugging. |  Major | Kubernetes, Spark Core | Prashant Sharma |  |
| [SPARK-25573](https://issues.apache.org/jira/browse/SPARK-25573) | Combine resolveExpression and resolve in the rule ResolveReferences |  Major | SQL | Xiao Li | Dilip Biswal |
| [SPARK-26094](https://issues.apache.org/jira/browse/SPARK-26094) | Streaming WAL should create parent dirs |  Blocker | DStreams | Imran Rashid | Imran Rashid |
| [SPARK-26194](https://issues.apache.org/jira/browse/SPARK-26194) | Support automatic spark.authenticate secret in Kubernetes backend |  Major | Kubernetes, Spark Core | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-26289](https://issues.apache.org/jira/browse/SPARK-26289) | cleanup enablePerfMetrics parameter from BytesToBytesMap |  Major | Spark Core, SQL | caoxuewen | caoxuewen |
| [SPARK-26263](https://issues.apache.org/jira/browse/SPARK-26263) | Throw exception when Partition column value can't be converted to user specified type |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-26298](https://issues.apache.org/jira/browse/SPARK-26298) | Upgrade Janino version to 3.0.11 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-24243](https://issues.apache.org/jira/browse/SPARK-24243) | Expose exceptions from InProcessAppHandle |  Major | Spark Submit | Sahil Takiar | Sahil Takiar |
| [SPARK-26294](https://issues.apache.org/jira/browse/SPARK-26294) | Delete Unnecessary If statement |  Trivial | Spark Core | wangjiaochun | wangjiaochun |
| [SPARK-26304](https://issues.apache.org/jira/browse/SPARK-26304) | Add default value to spark.kafka.sasl.kerberos.service.name parameter |  Major | Structured Streaming | Gabor Somogyi | Gabor Somogyi |
| [SPARK-26287](https://issues.apache.org/jira/browse/SPARK-26287) | Don't need to create an empty spill file when memory has no records |  Minor | Spark Core | wangjiaochun | wangjiaochun |
| [SPARK-26319](https://issues.apache.org/jira/browse/SPARK-26319) | Add appendReadColumns Unit Test for HiveShimSuite |  Minor | SQL | Darcy Shen | Darcy Shen |
| [SPARK-25696](https://issues.apache.org/jira/browse/SPARK-25696) | The storage memory displayed on spark Application UI is incorrect. |  Major | Spark Core, Web UI | hantiantian | hantiantian |
| [SPARK-26312](https://issues.apache.org/jira/browse/SPARK-26312) | Converting converters in RDDConversions into arrays to improve their access performance |  Major | SQL | eaton | eaton |
| [SPARK-26303](https://issues.apache.org/jira/browse/SPARK-26303) | Return partial results for bad JSON records |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26316](https://issues.apache.org/jira/browse/SPARK-26316) | Because of the perf degradation in TPC-DS, we currently partial revert SPARK-21052：Add hash map metrics to join, |  Major | SQL | Ke Jia | Ke Jia |
| [SPARK-26300](https://issues.apache.org/jira/browse/SPARK-26300) | The \`checkForStreaming\`  mothod  may be called twice in \`createQuery\` |  Minor | Structured Streaming | liuxian | liuxian |
| [SPARK-24102](https://issues.apache.org/jira/browse/SPARK-24102) | RegressionEvaluator should use sample weight data |  Major | ML | Ilya Matiach | Ilya Matiach |
| [SPARK-25877](https://issues.apache.org/jira/browse/SPARK-25877) | Put all feature-related code in the feature step itself |  Major | Kubernetes, Spark Core | Marcelo Masiero Vanzin |  |
| [SPARK-26322](https://issues.apache.org/jira/browse/SPARK-26322) | Simplify kafka delegation token sasl.mechanism configuration |  Major | Structured Streaming | Gabor Somogyi | Gabor Somogyi |
| [SPARK-26297](https://issues.apache.org/jira/browse/SPARK-26297) | improve the doc of Distribution/Partitioning |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-26340](https://issues.apache.org/jira/browse/SPARK-26340) | Ensure cores per executor is greater than cpu per task |  Minor | Spark Core | Nicolas Fraison | Nicolas Fraison |
| [SPARK-26313](https://issues.apache.org/jira/browse/SPARK-26313) | move read related methods from Table to read related mix-in traits |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-26098](https://issues.apache.org/jira/browse/SPARK-26098) | Show associated SQL query in Job page |  Major | Web UI | Gengliang Wang | Gengliang Wang |
| [SPARK-26364](https://issues.apache.org/jira/browse/SPARK-26364) | Clean up import statements in pandas udf tests |  Minor | Tests | Li Jin | Li Jin |
| [SPARK-26360](https://issues.apache.org/jira/browse/SPARK-26360) | Avoid extra validateQuery call in createStreamingWriteSupport |  Trivial | Structured Streaming | Wu Wenjie | Wu Wenjie |
| [SPARK-26368](https://issues.apache.org/jira/browse/SPARK-26368) | Make it clear that getOrInferFileFormatSchema doesn't create InMemoryFileIndex |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-26362](https://issues.apache.org/jira/browse/SPARK-26362) | Remove 'spark.driver.allowMultipleContexts' to disallow multiple Spark contexts |  Minor | Spark Core | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-20351](https://issues.apache.org/jira/browse/SPARK-20351) | Add trait hasTrainingSummary to replace the duplicate code |  Minor | ML | yuhao yang | yuhao yang |
| [SPARK-26371](https://issues.apache.org/jira/browse/SPARK-26371) | Increase Kafka ConfigUpdater test coverage |  Minor | Structured Streaming, Tests | Gabor Somogyi | Gabor Somogyi |
| [SPARK-24933](https://issues.apache.org/jira/browse/SPARK-24933) | SinkProgress should report written rows |  Major | Structured Streaming | Vaclav Kosar | Vaclav Kosar |
| [SPARK-26246](https://issues.apache.org/jira/browse/SPARK-26246) | Infer timestamp types from JSON |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26390](https://issues.apache.org/jira/browse/SPARK-26390) | ColumnPruning rule should only do column pruning |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-26262](https://issues.apache.org/jira/browse/SPARK-26262) | Runs SQLQueryTestSuite on mixed config sets: WHOLESTAGE\_CODEGEN\_ENABLED and CODEGEN\_FACTORY\_MODE |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-26318](https://issues.apache.org/jira/browse/SPARK-26318) | Deprecate function merge in Row |  Trivial | SQL | Liang Li | Liang Li |
| [SPARK-26324](https://issues.apache.org/jira/browse/SPARK-26324) | Document Mesos SSL config |  Minor | Mesos | Jorge Machado | Jorge Machado |
| [SPARK-26409](https://issues.apache.org/jira/browse/SPARK-26409) | SQLConf should be serializable in test sessions |  Major | SQL, Tests | Gengliang Wang | Gengliang Wang |
| [SPARK-26392](https://issues.apache.org/jira/browse/SPARK-26392) | Cancel pending allocate requests by taking locality preference into account |  Minor | Spark Core, YARN | wuyi | wuyi |
| [SPARK-25642](https://issues.apache.org/jira/browse/SPARK-25642) | Add new Metrics in External Shuffle Service to help determine Network performance and Connection Handling capabilities of the Shuffle Service |  Minor | Shuffle, Spark Core | Parth Gandhi | Parth Gandhi |
| [SPARK-26428](https://issues.apache.org/jira/browse/SPARK-26428) | Minimize deprecated \`ProcessingTime\` usage |  Minor | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-26285](https://issues.apache.org/jira/browse/SPARK-26285) | Add a metric source for accumulators (aka AccumulatorSource) |  Minor | Spark Core | Alessandro Bellina | Alessandro Bellina |
| [SPARK-14023](https://issues.apache.org/jira/browse/SPARK-14023) | Make exceptions consistent regarding fields and columns |  Trivial | MLlib | Jacek Laskowski | Sean R. Owen |
| [SPARK-26435](https://issues.apache.org/jira/browse/SPARK-26435) | Support creating partitioned table using Hive CTAS by specifying partition column names |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-25892](https://issues.apache.org/jira/browse/SPARK-25892) | AttributeReference.withMetadata method should have return type AttributeReference |  Trivial | SQL | Jari Kujansuu | kevin yu |
| [SPARK-26446](https://issues.apache.org/jira/browse/SPARK-26446) | Add cachedExecutorIdleTimeout docs at ExecutorAllocationManager |  Minor | Documentation, Spark Core | Qingxin Wu | Qingxin Wu |
| [SPARK-26363](https://issues.apache.org/jira/browse/SPARK-26363) |  Avoid duplicated KV store lookups for task table |  Minor | Web UI | Gengliang Wang | Gengliang Wang |
| [SPARK-26504](https://issues.apache.org/jira/browse/SPARK-26504) | Rope-wise dumping of Spark plans |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26495](https://issues.apache.org/jira/browse/SPARK-26495) | Simplify SelectedField extractor |  Major | SQL | Herman van Hövell | Herman van Hövell |
| [SPARK-24544](https://issues.apache.org/jira/browse/SPARK-24544) | Print actual failure cause when look up function failed |  Minor | Spark Core | zhoukang | zhoukang |
| [SPARK-25765](https://issues.apache.org/jira/browse/SPARK-25765) | Add trainingCost to BisectingKMeans summary |  Major | Examples, ML | Marco Gaido | Marco Gaido |
| [SPARK-26227](https://issues.apache.org/jira/browse/SPARK-26227) | from\_[csv\|json] should accept schema\_of\_[csv\|json] in R API |  Minor | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-26508](https://issues.apache.org/jira/browse/SPARK-26508) | Address warning messages in Java by lgtm.com |  Minor | Examples, Spark Core, SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-26502](https://issues.apache.org/jira/browse/SPARK-26502) | Get rid of hiveResultString() in QueryExecution |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26541](https://issues.apache.org/jira/browse/SPARK-26541) | Add \`-Pdocker-integration-tests\` to \`dev/scalastyle\` |  Minor | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-26548](https://issues.apache.org/jira/browse/SPARK-26548) | Don't block during query optimization |  Minor | SQL | Dave DeCaprio | Dave DeCaprio |
| [SPARK-26527](https://issues.apache.org/jira/browse/SPARK-26527) | Let acquireUnrollMemory fail fast if required space exceeds memory limit |  Minor | Spark Core | SongYadong | SongYadong |
| [SPARK-26547](https://issues.apache.org/jira/browse/SPARK-26547) | Remove duplicate toHiveString from HiveUtils |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26383](https://issues.apache.org/jira/browse/SPARK-26383) | NPE when use DataFrameReader.jdbc with wrong URL |  Minor | Spark Core | clouds | clouds |
| [SPARK-24489](https://issues.apache.org/jira/browse/SPARK-24489) | No check for invalid input type of weight data in ml.PowerIterationClustering |  Minor | ML | shahid | shahid |
| [SPARK-25689](https://issues.apache.org/jira/browse/SPARK-25689) | Move token renewal logic to driver in yarn-client mode |  Minor | Spark Core, YARN | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-26065](https://issues.apache.org/jira/browse/SPARK-26065) | Change query hint from a \`LogicalPlan\` to a field |  Major | SQL | Wei Xue | Wei Xue |
| [SPARK-24522](https://issues.apache.org/jira/browse/SPARK-24522) | Centralize code to deal with security-related HTTP features |  Major | Web UI | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-24920](https://issues.apache.org/jira/browse/SPARK-24920) | Spark should allow sharing netty's memory pools across all uses |  Major | Spark Core | Imran Rashid | Attila Zsolt Piros |
| [SPARK-26349](https://issues.apache.org/jira/browse/SPARK-26349) | Pyspark should not accept insecure p4yj gateways |  Blocker | PySpark | Imran Rashid | Imran Rashid |
| [SPARK-26529](https://issues.apache.org/jira/browse/SPARK-26529) | Add debug logs for confArchive when preparing local resource |  Trivial | Deploy, Spark Core | liupengcheng | liupengcheng |
| [SPARK-26448](https://issues.apache.org/jira/browse/SPARK-26448) | retain the difference between 0.0 and -0.0 |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-26493](https://issues.apache.org/jira/browse/SPARK-26493) | spark.sql.extensions should support multiple extensions |  Minor | SQL | Jamison Bennett | Jamison Bennett |
| [SPARK-26459](https://issues.apache.org/jira/browse/SPARK-26459) | remove UpdateNullabilityInAttributeReferences |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-26584](https://issues.apache.org/jira/browse/SPARK-26584) | Remove \`spark.sql.orc.copyBatchToSpark\` internal configuration |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-26580](https://issues.apache.org/jira/browse/SPARK-26580) | remove Scala 2.11 hack for Scala UDF |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-23182](https://issues.apache.org/jira/browse/SPARK-23182) | Allow enabling of TCP keep alive for RPC connections |  Minor | Spark Core | Petar Petrov | Petar Petrov |
| [SPARK-26450](https://issues.apache.org/jira/browse/SPARK-26450) | Map of schema is built too frequently in some wide queries |  Minor | SQL | Bruce Robbins | Bruce Robbins |
| [SPARK-26350](https://issues.apache.org/jira/browse/SPARK-26350) | Allow the user to override the group id of the Kafka's consumer |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-25857](https://issues.apache.org/jira/browse/SPARK-25857) | Document delegation token code in Spark |  Minor | Spark Core | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-26604](https://issues.apache.org/jira/browse/SPARK-26604) | Register channel for stream request |  Minor | Spark Core | L. C. Hsieh | L. C. Hsieh |
| [SPARK-26633](https://issues.apache.org/jira/browse/SPARK-26633) | Add ExecutorClassLoader.getResourceAsStream |  Major | Spark Shell | Kris Mok | Kris Mok |
| [SPARK-26600](https://issues.apache.org/jira/browse/SPARK-26600) | Update spark-submit usage message |  Minor | Spark Core | Luca Canali | Luca Canali |
| [SPARK-26622](https://issues.apache.org/jira/browse/SPARK-26622) | Improve wording in SQLMetrics labels |  Major | SQL | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-26640](https://issues.apache.org/jira/browse/SPARK-26640) | Code cleanup from lgtm.com analysis |  Minor | ML, Spark Core, SQL, Structured Streaming, Tests | Sean R. Owen | Sean R. Owen |
| [SPARK-26642](https://issues.apache.org/jira/browse/SPARK-26642) | Add --num-executors option to spark-submit for Spark on K8S |  Trivial | Kubernetes, Spark Core | Luca Canali | Luca Canali |
| [SPARK-25811](https://issues.apache.org/jira/browse/SPARK-25811) | Support PyArrow's feature to raise an error for unsafe cast |  Major | PySpark | L. C. Hsieh | L. C. Hsieh |
| [SPARK-26616](https://issues.apache.org/jira/browse/SPARK-26616) | Expose document frequency in IDFModel |  Minor | ML, MLlib | Jatin Puri | Jatin Puri |
| [SPARK-24938](https://issues.apache.org/jira/browse/SPARK-24938) | Understand usage of netty's onheap memory use, even with offheap pools |  Minor | Spark Core | Imran Rashid | Nihar Sheth |
| [SPARK-16838](https://issues.apache.org/jira/browse/SPARK-16838) | Add PMML export for ML KMeans in PySpark |  Major | ML, PySpark | Holden Karau | Huaxin Gao |
| [SPARK-25887](https://issues.apache.org/jira/browse/SPARK-25887) | Allow specifying Kubernetes context to use |  Major | Kubernetes, Spark Core | Rob Vesse | Rob Vesse |
| [SPARK-26685](https://issues.apache.org/jira/browse/SPARK-26685) | Building Spark Images with latest Docker does not honour spark\_uid build argument |  Major | Kubernetes, Spark Core | Rob Vesse | Rob Vesse |
| [SPARK-26637](https://issues.apache.org/jira/browse/SPARK-26637) | Makes GetArrayItem nullability more precise |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-26681](https://issues.apache.org/jira/browse/SPARK-26681) | Support Ammonite scopes in OuterScopes |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-26660](https://issues.apache.org/jira/browse/SPARK-26660) | Add warning logs for large taskBinary size |  Minor | Spark Core | liupengcheng | liupengcheng |
| [SPARK-25713](https://issues.apache.org/jira/browse/SPARK-25713) | Implement copy() for ColumnarArray |  Minor | Spark Core | Liwen Sun | Artsiom Yudovin |
| [SPARK-26617](https://issues.apache.org/jira/browse/SPARK-26617) | CacheManager blocks during requery |  Minor | SQL | Dave DeCaprio | Dave DeCaprio |
| [SPARK-26687](https://issues.apache.org/jira/browse/SPARK-26687) | Building Spark Images has non-intuitive behaviour with paths to custom Dockerfiles |  Major | Kubernetes, Spark Core | Rob Vesse | Rob Vesse |
| [SPARK-26530](https://issues.apache.org/jira/browse/SPARK-26530) | Validate heartheat arguments in HeartbeatReceiver |  Major | Deploy, Spark Core | liupengcheng | liupengcheng |
| [SPARK-26697](https://issues.apache.org/jira/browse/SPARK-26697) | ShuffleBlockFetcherIterator can log block sizes in addition to num blocks |  Major | Shuffle, Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-23674](https://issues.apache.org/jira/browse/SPARK-23674) | Add Spark ML Listener for Tracking ML Pipeline Status |  Major | ML | Mingjie Tang | Hyukjin Kwon |
| [SPARK-26720](https://issues.apache.org/jira/browse/SPARK-26720) | Remove unused methods from DateTimeUtils |  Trivial | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26254](https://issues.apache.org/jira/browse/SPARK-26254) | Move delegation token providers into a separate project |  Major | Spark Core | Gabor Somogyi | Gabor Somogyi |
| [SPARK-22404](https://issues.apache.org/jira/browse/SPARK-22404) | Provide an option to use unmanaged AM in yarn-client mode |  Major | Spark Core, YARN | Devaraj Kavali | Devaraj Kavali |
| [SPARK-26170](https://issues.apache.org/jira/browse/SPARK-26170) | Add missing metrics in FlatMapGroupsWithState |  Major | Structured Streaming | Jungtaek Lim |  |
| [SPARK-26630](https://issues.apache.org/jira/browse/SPARK-26630) | Support reading Hive-serde tables whose INPUTFORMAT is org.apache.hadoop.mapreduce |  Major | SQL | Deegue | Deegue |
| [SPARK-26735](https://issues.apache.org/jira/browse/SPARK-26735) | Verify plan integrity for special expressions |  Major | SQL | Kris Mok | Kris Mok |
| [SPARK-26716](https://issues.apache.org/jira/browse/SPARK-26716) | Refactor supportDataType API:  the supported types of read/write should be consistent |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-26700](https://issues.apache.org/jira/browse/SPARK-26700) | enable fetch-big-block-to-memory by default |  Major | Spark Core | Wenchen Fan | Wenchen Fan |
| [SPARK-26432](https://issues.apache.org/jira/browse/SPARK-26432) | Not able to connect Hbase 2.1 service Getting NoSuchMethodException while trying to obtain token from Hbase 2.1 service. |  Major | Spark Core | Sujith Chacko | Sujith Chacko |
| [SPARK-26747](https://issues.apache.org/jira/browse/SPARK-26747) | Makes GetMapValue nullability more precise |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-26566](https://issues.apache.org/jira/browse/SPARK-26566) | Upgrade apache/arrow to 0.12.0 |  Major | PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-26763](https://issues.apache.org/jira/browse/SPARK-26763) | Using fileStatus cache when filterPartitions |  Major | SQL | Xianyang Liu | Xianyang Liu |
| [SPARK-11215](https://issues.apache.org/jira/browse/SPARK-11215) | Add multiple columns support to StringIndexer |  Major | ML | Yanbo Liang | L. C. Hsieh |
| [SPARK-26378](https://issues.apache.org/jira/browse/SPARK-26378) | Queries of wide CSV/JSON data slowed after SPARK-26151 |  Major | SQL | Bruce Robbins | Bruce Robbins |
| [SPARK-23155](https://issues.apache.org/jira/browse/SPARK-23155) | YARN-aggregated executor/driver logs appear unavailable when NM is down |  Major | Deploy | Gera Shegalov | Jungtaek Lim |
| [SPARK-24360](https://issues.apache.org/jira/browse/SPARK-24360) | Support Hive 3.1 metastore |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-26730](https://issues.apache.org/jira/browse/SPARK-26730) | Strip redundant AssertNotNull expression for ExpressionEncoder's serializer |  Major | SQL | wuyi | wuyi |
| [SPARK-26754](https://issues.apache.org/jira/browse/SPARK-26754) | Add hasTrainingSummary to replace duplicate code in PySpark |  Minor | ML, PySpark | Huaxin Gao | Huaxin Gao |
| [SPARK-26771](https://issues.apache.org/jira/browse/SPARK-26771) | Make .unpersist(), .destroy() consistently non-blocking by default |  Major | GraphX, Spark Core | Sean R. Owen | Sean R. Owen |
| [SPARK-18161](https://issues.apache.org/jira/browse/SPARK-18161) | Default PickleSerializer pickle protocol doesn't handle \> 4GB objects |  Major | PySpark | Sloane Simmons | Boris Shminke |
| [SPARK-26805](https://issues.apache.org/jira/browse/SPARK-26805) | Eliminate double checking of stringToDate and stringToTimestamp inputs |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26603](https://issues.apache.org/jira/browse/SPARK-26603) | Update minikube backend in K8s integration tests |  Major | Kubernetes, Spark Core | Stavros Kontopoulos | Stavros Kontopoulos |
| [SPARK-26813](https://issues.apache.org/jira/browse/SPARK-26813) | Consolidate java version across language compilers and build tools |  Minor | Build | Chenxiao Mao | Chenxiao Mao |
| [SPARK-26768](https://issues.apache.org/jira/browse/SPARK-26768) | Remove useless code in BlockManager |  Major | Spark Core | liupengcheng | liupengcheng |
| [SPARK-26733](https://issues.apache.org/jira/browse/SPARK-26733) | Clean up entrypoint.sh |  Minor | Kubernetes, Spark Core | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-26831](https://issues.apache.org/jira/browse/SPARK-26831) | bin/pyspark: avoid hardcoded \`python\` command and improve version checks |  Major | PySpark | Stefaan Lippens | Stefaan Lippens |
| [SPARK-26389](https://issues.apache.org/jira/browse/SPARK-26389) | Add force delete temp checkpoint configuration |  Minor | Structured Streaming | Fengyu Cao | Gabor Somogyi |
| [SPARK-26766](https://issues.apache.org/jira/browse/SPARK-26766) | Remove the list of filesystems from HadoopDelegationTokenProvider.obtainDelegationTokens |  Minor | Spark Core | Gabor Somogyi | Gabor Somogyi |
| [SPARK-26843](https://issues.apache.org/jira/browse/SPARK-26843) | Use ConfigEntry for hardcoded configs for "mesos" resource manager |  Major | Mesos | Jungtaek Lim | Jungtaek Lim |
| [SPARK-26525](https://issues.apache.org/jira/browse/SPARK-26525) | Fast release memory of ShuffleBlockFetcherIterator |  Major | Shuffle, Spark Core | liupengcheng | liupengcheng |
| [SPARK-26696](https://issues.apache.org/jira/browse/SPARK-26696) | Dataset encoder should be publicly accessible |  Major | SQL | Simeon Simeonov | Simeon Simeonov |
| [SPARK-26853](https://issues.apache.org/jira/browse/SPARK-26853) | Add example and version for commonly used aggregate function descriptions |  Minor | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-26835](https://issues.apache.org/jira/browse/SPARK-26835) | Document configuration properties of Spark SQL Generic Load/Save Functions |  Minor | Documentation | Peter Horvath | Peter Horvath |
| [SPARK-26798](https://issues.apache.org/jira/browse/SPARK-26798) | HandleNullInputsForUDF should trust nullability |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-26817](https://issues.apache.org/jira/browse/SPARK-26817) | Use System.nanoTime to measure time intervals |  Minor | Spark Core | Maxim Gekk | Maxim Gekk |
| [SPARK-26861](https://issues.apache.org/jira/browse/SPARK-26861) | deprecate typed sum/count/average |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-26790](https://issues.apache.org/jira/browse/SPARK-26790) | Yarn executor to self-retrieve log urls and attributes |  Major | Spark Core, YARN | Jungtaek Lim | Jungtaek Lim |
| [SPARK-26772](https://issues.apache.org/jira/browse/SPARK-26772) | Delete ServiceCredentialProvider and make HadoopDelegationTokenProvider a developer API |  Major | Spark Core, YARN | Gabor Somogyi | Gabor Somogyi |
| [SPARK-21094](https://issues.apache.org/jira/browse/SPARK-21094) | Allow stdout/stderr pipes in pyspark.java\_gateway.launch\_gateway |  Major | PySpark | Peter Parente | Peter Parente |
| [SPARK-26353](https://issues.apache.org/jira/browse/SPARK-26353) | Add typed aggregate functions(max/min) to the example module |  Minor | SQL | liuxian | liuxian |
| [SPARK-26882](https://issues.apache.org/jira/browse/SPARK-26882) | lint-scala script does not check all components |  Trivial | Build | Holden Karau | Holden Karau |
| [SPARK-26900](https://issues.apache.org/jira/browse/SPARK-26900) | Simplify truncation to quarter of year |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26877](https://issues.apache.org/jira/browse/SPARK-26877) | Support user-level app staging directory in yarn mode when spark.yarn.stagingDir specified |  Minor | Spark Core, YARN | liupengcheng | liupengcheng |
| [SPARK-26917](https://issues.apache.org/jira/browse/SPARK-26917) | CacheManager blocks while traversing plans |  Minor | SQL | Dave DeCaprio | Dave DeCaprio |
| [SPARK-26960](https://issues.apache.org/jira/browse/SPARK-26960) | Reduce flakiness of Spark ML Listener test suite by waiting for listener bus to clear |  Major | ML, Tests | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-26955](https://issues.apache.org/jira/browse/SPARK-26955) | Align Spark's TimSort to JDK 11 TimSort |  Minor | Spark Core | Maxim Gekk | Maxim Gekk |
| [SPARK-26903](https://issues.apache.org/jira/browse/SPARK-26903) | Remove the TimeZone cache |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26908](https://issues.apache.org/jira/browse/SPARK-26908) | Fix toMillis |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26935](https://issues.apache.org/jira/browse/SPARK-26935) | Skip DataFrameReader's CSV first line scan when not used |  Minor | SQL | Douglas Colkitt | Douglas Colkitt |
| [SPARK-25035](https://issues.apache.org/jira/browse/SPARK-25035) | Replicating disk-stored blocks should avoid memory mapping |  Major | Spark Core | Imran Rashid | Attila Zsolt Piros |
| [SPARK-24103](https://issues.apache.org/jira/browse/SPARK-24103) | BinaryClassificationEvaluator should use sample weight data |  Major | ML | Ilya Matiach | Ilya Matiach |
| [SPARK-26674](https://issues.apache.org/jira/browse/SPARK-26674) | Consolidate CompositeByteBuf when reading large frame |  Major | Spark Core | liupengcheng | liupengcheng |
| [SPARK-26952](https://issues.apache.org/jira/browse/SPARK-26952) | Row count statics should respect the data reported by data source |  Major | SQL | Xianyang Liu | Xianyang Liu |
| [SPARK-26978](https://issues.apache.org/jira/browse/SPARK-26978) | Avoid magic time constants |  Trivial | Spark Core, SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26449](https://issues.apache.org/jira/browse/SPARK-26449) | Missing Dataframe.transform API in Python API |  Minor | PySpark, SQL | Hanan Shteingart | Erik Christiansen |
| [SPARK-26902](https://issues.apache.org/jira/browse/SPARK-26902) | Support java.time.Instant as an external type of TimestampType |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26803](https://issues.apache.org/jira/browse/SPARK-26803) | include sbin subdirectory in pyspark |  Minor | Build, PySpark | Oliver Urs Lenz | Oliver Urs Lenz |
| [SPARK-26890](https://issues.apache.org/jira/browse/SPARK-26890) | Add Dropwizard metrics list and additional configuration details to the documentation |  Minor | Documentation, Spark Core | Luca Canali | Luca Canali |
| [SPARK-26774](https://issues.apache.org/jira/browse/SPARK-26774) | Document threading concerns in TaskSchedulerImpl |  Major | Scheduler, Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-27008](https://issues.apache.org/jira/browse/SPARK-27008) | Support java.time.LocalDate as an external type of DateType |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26420](https://issues.apache.org/jira/browse/SPARK-26420) | [kubernetes] driver service id is not random |  Minor | Kubernetes, Spark Core | Viktor Bogdanov | Marcelo Masiero Vanzin |
| [SPARK-27009](https://issues.apache.org/jira/browse/SPARK-27009) | Add standard deviation to Benchmark tests |  Minor | Spark Core | Yifei Huang | Yifei Huang |
| [SPARK-26967](https://issues.apache.org/jira/browse/SPARK-26967) | Put MetricsSystem instance names together for clearer management |  Minor | Spark Core | SongYadong | SongYadong |
| [SPARK-26982](https://issues.apache.org/jira/browse/SPARK-26982) | Enhance describe framework to describe the output of a query |  Minor | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-27007](https://issues.apache.org/jira/browse/SPARK-27007) | add rawPrediction to OneVsRest in PySpark |  Major | ML, PySpark | Huaxin Gao | Huaxin Gao |
| [SPARK-26266](https://issues.apache.org/jira/browse/SPARK-26266) | Update to Scala 2.12.8 |  Minor | Build | Sean R. Owen | Sean R. Owen |
| [SPARK-27016](https://issues.apache.org/jira/browse/SPARK-27016) | Treat all antlr warnings as errors while generating parser from the sql grammar file. |  Major | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-27001](https://issues.apache.org/jira/browse/SPARK-27001) | Refactor "serializerFor" method between ScalaReflection and JavaTypeInference |  Minor | SQL | Jungtaek Lim | Jungtaek Lim |
| [SPARK-26893](https://issues.apache.org/jira/browse/SPARK-26893) | Allow partition pruning with subquery filters on file source |  Minor | SQL | Peter Toth | Peter Toth |
| [SPARK-26965](https://issues.apache.org/jira/browse/SPARK-26965) | Makes ElementAt nullability more precise |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-27046](https://issues.apache.org/jira/browse/SPARK-27046) | Remove SPARK-19185 related references from documentation since its resolved |  Trivial | Documentation, DStreams | Gabor Somogyi | Gabor Somogyi |
| [SPARK-26792](https://issues.apache.org/jira/browse/SPARK-26792) | Apply custom log URL to Spark UI |  Major | Web UI | Jungtaek Lim | Jungtaek Lim |
| [SPARK-26192](https://issues.apache.org/jira/browse/SPARK-26192) | MesosClusterScheduler reads options from dispatcher conf instead of submission conf |  Minor | Mesos | Martin Loncaric | Martin Loncaric |
| [SPARK-26688](https://issues.apache.org/jira/browse/SPARK-26688) | Provide configuration of initially blacklisted YARN nodes |  Major | Spark Core, YARN | Attila Zsolt Piros | Attila Zsolt Piros |
| [SPARK-26016](https://issues.apache.org/jira/browse/SPARK-26016) | Document that UTF-8 is required in text data source |  Major | Java API | Chris Caspanello | Sean R. Owen |
| [SPARK-26205](https://issues.apache.org/jira/browse/SPARK-26205) | Optimize InSet expression for bytes, shorts, ints, dates |  Major | SQL | Anton Okolnychyi | Anton Okolnychyi |
| [SPARK-26928](https://issues.apache.org/jira/browse/SPARK-26928) | Add driver CPU Time to the metrics system |  Minor | Spark Core | Luca Canali | Luca Canali |
| [SPARK-27031](https://issues.apache.org/jira/browse/SPARK-27031) | Avoid double formatting in timestampToString |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-27035](https://issues.apache.org/jira/browse/SPARK-27035) | Current time with microsecond resolution |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-27023](https://issues.apache.org/jira/browse/SPARK-27023) | Kubernetes client timeouts should be configurable |  Major | Kubernetes, Spark Core | Onur Satici | Onur Satici |
| [SPARK-27057](https://issues.apache.org/jira/browse/SPARK-27057) | Common trait for limit exec operators |  Trivial | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-23836](https://issues.apache.org/jira/browse/SPARK-23836) | Support returning StructType to the level support in GroupedMap Arrow's "scalar" UDFS (or similar) |  Major | PySpark | Holden Karau | Bryan Cutler |
| [SPARK-27022](https://issues.apache.org/jira/browse/SPARK-27022) | Kafka delegation token support |  Major | DStreams | Gabor Somogyi | Gabor Somogyi |
| [SPARK-27079](https://issues.apache.org/jira/browse/SPARK-27079) | Fix typo & Remove useless imports |  Trivial | SQL | EdisonWang | EdisonWang |
| [SPARK-27103](https://issues.apache.org/jira/browse/SPARK-27103) | SparkSql reserved keywords don't list in alphabet order |  Minor | SQL | SongYadong | SongYadong |
| [SPARK-27056](https://issues.apache.org/jira/browse/SPARK-27056) | Remove  \`start-shuffle-service.sh\` |  Minor | Mesos | liuxian | liuxian |
| [SPARK-26004](https://issues.apache.org/jira/browse/SPARK-26004) | InMemoryTable support StartsWith predicate push down |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-27118](https://issues.apache.org/jira/browse/SPARK-27118) | Upgrade to latest Hive version for Hive Metastore Client 1.1 and 1.0 |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-27102](https://issues.apache.org/jira/browse/SPARK-27102) | Remove the references to Python's Scala codes in R's Scala codes |  Major | PySpark, R, Spark Core | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-27110](https://issues.apache.org/jira/browse/SPARK-27110) | Moves some functions from AnalyzeColumnCommand to command/CommandUtils for reuse |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-27120](https://issues.apache.org/jira/browse/SPARK-27120) | Upgrade scalatest version to 3.0.5 |  Trivial | Tests | Yuming Wang | Yuming Wang |
| [SPARK-26856](https://issues.apache.org/jira/browse/SPARK-26856) | Python support for "from\_avro" and "to\_avro" APIs |  Major | PySpark, SQL, Structured Streaming | Gabor Somogyi | Gabor Somogyi |
| [SPARK-21351](https://issues.apache.org/jira/browse/SPARK-21351) | Update nullability based on children's output in optimized logical plan |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-26860](https://issues.apache.org/jira/browse/SPARK-26860) | Improve RangeBetween docs in Pyspark, SparkR |  Minor | Documentation, PySpark | Shelby Vanhooser | Jagadesh Kiran N |
| [SPARK-27119](https://issues.apache.org/jira/browse/SPARK-27119) | Do not infer schema when reading Hive serde table with native data source |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-27109](https://issues.apache.org/jira/browse/SPARK-27109) | Refactoring of TimestampFormatter and DateFormatter |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-27125](https://issues.apache.org/jira/browse/SPARK-27125) | Add test suite for sql execution page |  Minor | SQL, Web UI | shahid | shahid |
| [SPARK-27010](https://issues.apache.org/jira/browse/SPARK-27010) | find out the actual port number when hive.server2.thrift.port=0 |  Minor | Spark Core | zuotingbing | zuotingbing |
| [SPARK-26089](https://issues.apache.org/jira/browse/SPARK-26089) | Handle large corrupt shuffle blocks |  Major | Scheduler, Shuffle, Spark Core | Imran Rashid | Ankur Gupta |
| [SPARK-27034](https://issues.apache.org/jira/browse/SPARK-27034) | Nested schema pruning for ORC |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-27045](https://issues.apache.org/jira/browse/SPARK-27045) | SQL tab in UI shows actual SQL instead of callsite in case of SparkSQLDriver |  Major | SQL, Web UI | Ajith S | Ajith S |
| [SPARK-27106](https://issues.apache.org/jira/browse/SPARK-27106) | merge CaseInsensitiveStringMap and DataSourceOptions |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-27145](https://issues.apache.org/jira/browse/SPARK-27145) | Close store after test, in the SQLAppStatusListenerSuite |  Minor | SQL, Tests | shahid | shahid |
| [SPARK-26343](https://issues.apache.org/jira/browse/SPARK-26343) | Speed up running the kubernetes integration tests locally |  Trivial | Kubernetes, Spark Core, Tests | Holden Karau | Holden Karau |
| [SPARK-27166](https://issues.apache.org/jira/browse/SPARK-27166) | Improve \`printSchema\` to print up to the given level |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27122](https://issues.apache.org/jira/browse/SPARK-27122) | YARN test failures in Java 9+ |  Major | Spark Core, YARN | Sean R. Owen | Ajith S |
| [SPARK-26979](https://issues.apache.org/jira/browse/SPARK-26979) | [PySpark] Some SQL functions do not take column names |  Major | PySpark | Andre Sa de Mello | Andre Sa de Mello |
| [SPARK-27161](https://issues.apache.org/jira/browse/SPARK-27161) | improve the document of SQL keywords |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-27193](https://issues.apache.org/jira/browse/SPARK-27193) | CodeFormatter should format multi comment lines correctly |  Trivial | SQL | wuyi | wuyi |
| [SPARK-27151](https://issues.apache.org/jira/browse/SPARK-27151) | ClearCacheCommand extends IgnoreCahedData to avoid plan node copys |  Trivial | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-26176](https://issues.apache.org/jira/browse/SPARK-26176) | Verify column name when creating table via \`STORED AS\` |  Minor | SQL | Xiao Li | Sujith Chacko |
| [SPARK-27099](https://issues.apache.org/jira/browse/SPARK-27099) | Expose xxHash64 as a flexible 64-bit column hash like \`hash\` |  Major | SQL | Huon Wilson | Huon Wilson |
| [SPARK-27199](https://issues.apache.org/jira/browse/SPARK-27199) | Replace TimeZone by ZoneId in TimestampFormatter API |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26729](https://issues.apache.org/jira/browse/SPARK-26729) | Spark on Kubernetes tooling hardcodes default image names |  Major | Kubernetes, Spark Core | Rob Vesse | Rob Vesse |
| [SPARK-27221](https://issues.apache.org/jira/browse/SPARK-27221) | Improve the assert error message in TreeNode.parseToJson |  Minor | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-27163](https://issues.apache.org/jira/browse/SPARK-27163) | Cleanup and consolidate Pandas UDF functionality |  Minor | PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-27222](https://issues.apache.org/jira/browse/SPARK-27222) | Support Instant and LocalDate in Literal.apply |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-27236](https://issues.apache.org/jira/browse/SPARK-27236) | Refactor log-appender pattern in tests |  Minor | Tests | Wei Xue | Wei Xue |
| [SPARK-27212](https://issues.apache.org/jira/browse/SPARK-27212) | Eliminate TimeZone to ZoneId conversion in stringToTimestamp |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-27174](https://issues.apache.org/jira/browse/SPARK-27174) | Support casting integer types to BinaryType |  Minor | SQL | Martin Junghanns | Martin Junghanns |
| [SPARK-27210](https://issues.apache.org/jira/browse/SPARK-27210) | Cleanup incomplete output files in ManifestFileCommitProtocol if task is aborted |  Minor | Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-27108](https://issues.apache.org/jira/browse/SPARK-27108) | Add parsed CreateTable plans to Catalyst |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-27184](https://issues.apache.org/jira/browse/SPARK-27184) | Replace "spark.jars" & "spark.files" with the variables of JARS & FILES in config object |  Minor | Spark Core | hehuiyuan | hehuiyuan |
| [SPARK-27241](https://issues.apache.org/jira/browse/SPARK-27241) | Add map\_keys and map\_values support to SelectedField in nested schema pruning |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-27260](https://issues.apache.org/jira/browse/SPARK-27260) | Upgrade to Kafka 2.2.0 |  Major | Structured Streaming | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27219](https://issues.apache.org/jira/browse/SPARK-27219) | Misleading exceptions in transport code's SASL fallback path |  Minor | Spark Core | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-27261](https://issues.apache.org/jira/browse/SPARK-27261) | Spark submit passing multiple configurations not documented clearly |  Trivial | Deploy | Sujith Chacko | Sujith Chacko |
| [SPARK-26132](https://issues.apache.org/jira/browse/SPARK-26132) | Remove support for Scala 2.11 in Spark 3.0.0 |  Major | Build, Spark Core | Sean R. Owen | Sean R. Owen |
| [SPARK-27240](https://issues.apache.org/jira/browse/SPARK-27240) | Use pandas DataFrame for struct type argument in Scalar Pandas UDF. |  Major | PySpark | Takuya Ueshin | Takuya Ueshin |
| [SPARK-27256](https://issues.apache.org/jira/browse/SPARK-27256) | If the configuration is used to set the number of bytes, we'd better use \`bytesConf\`'. |  Minor | Spark Core, SQL | liuxian | liuxian |
| [SPARK-27209](https://issues.apache.org/jira/browse/SPARK-27209) | Split parsing of SELECT and INSERT into two top-level rules in the grammar file. |  Major | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-27277](https://issues.apache.org/jira/browse/SPARK-27277) | Recover from setting fix version failure in merge script |  Minor | Project Infra | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-24793](https://issues.apache.org/jira/browse/SPARK-24793) | Make spark-submit more useful with k8s |  Major | Kubernetes, Spark Core | Anirudh Ramanathan | Stavros Kontopoulos |
| [SPARK-27242](https://issues.apache.org/jira/browse/SPARK-27242) | Avoid using default time zone in formatting TIMESTAMP/DATE literals |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-27285](https://issues.apache.org/jira/browse/SPARK-27285) | Support describing output of a CTE |  Minor | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-27083](https://issues.apache.org/jira/browse/SPARK-27083) | Add a config to control subqueryReuse |  Minor | SQL | liuxian | liuxian |
| [SPARK-24902](https://issues.apache.org/jira/browse/SPARK-24902) | Add integration tests for PVs |  Minor | Kubernetes, Spark Core | Stavros Kontopoulos | Stavros Kontopoulos |
| [SPARK-27252](https://issues.apache.org/jira/browse/SPARK-27252) | Make current\_date() independent from time zones |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-27202](https://issues.apache.org/jira/browse/SPARK-27202) | update comments to keep according with code |  Trivial | SQL | EdisonWang |  |
| [SPARK-27314](https://issues.apache.org/jira/browse/SPARK-27314) | Deduplicate exprIds for Union. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-27320](https://issues.apache.org/jira/browse/SPARK-27320) | Converting seq to array in AggregationIterator to improve its access performance |  Minor | SQL | eaton | eaton |
| [SPARK-26918](https://issues.apache.org/jira/browse/SPARK-26918) | All .md should have ASF license header |  Minor | Documentation | Felix Cheung | Sean R. Owen |
| [SPARK-27327](https://issues.apache.org/jira/browse/SPARK-27327) | New JSON benchmarks: functions, dataset parsing |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-27333](https://issues.apache.org/jira/browse/SPARK-27333) | Add StatisticsDataReferenceCleaner/process reaper/broadcast-exchange to thread audit whitelist |  Minor | Tests | Dongjoon Hyun | Attila Zsolt Piros |
| [SPARK-27323](https://issues.apache.org/jira/browse/SPARK-27323) | Use Single-Abstract-Method support in Scala 2.12 to simplify code |  Minor | GraphX, Spark Core, SQL, Structured Streaming | Sean R. Owen | Sean R. Owen |
| [SPARK-26775](https://issues.apache.org/jira/browse/SPARK-26775) | Update Jenkins nodes to support local volumes for K8s integration tests |  Major | jenkins, Kubernetes, Spark Core | Stavros Kontopoulos | Shane Knapp |
| [SPARK-27346](https://issues.apache.org/jira/browse/SPARK-27346) | Loosen the newline assert condition on 'examples' field in ExpressionInfo |  Trivial | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-27255](https://issues.apache.org/jira/browse/SPARK-27255) | Aggregate functions should not be allowed in WHERE |  Minor | SQL | Mingcong Han | Dilip Biswal |
| [SPARK-27344](https://issues.apache.org/jira/browse/SPARK-27344) | Support the LocalDate and Instant classes in Java Bean encoders |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-24345](https://issues.apache.org/jira/browse/SPARK-24345) | Improve ParseError stop location when offending symbol is a token |  Minor | Spark Core | Ruben Fiszel | Ruben Fiszel |
| [SPARK-27342](https://issues.apache.org/jira/browse/SPARK-27342) | Optimize limit 0 queries |  Major | SQL | Aayushmaan Jain | Aayushmaan Jain |
| [SPARK-27393](https://issues.apache.org/jira/browse/SPARK-27393) | Show ReusedSubquery in the plan when the subquery is reused |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-27358](https://issues.apache.org/jira/browse/SPARK-27358) | Update jquery to 1.12.x to pick up security fixes |  Major | Web UI | Sean R. Owen | Sean R. Owen |
| [SPARK-27192](https://issues.apache.org/jira/browse/SPARK-27192) | spark.task.cpus should be less or equal than spark.task.cpus when use static executor allocation |  Minor | Spark Core | Lijia Liu | Lijia Liu |
| [SPARK-27399](https://issues.apache.org/jira/browse/SPARK-27399) | Spark streaming of kafka 0.10 contains some scattered config |  Minor | Structured Streaming | jiaan.geng | jiaan.geng |
| [SPARK-13704](https://issues.apache.org/jira/browse/SPARK-13704) | TaskSchedulerImpl.createTaskSetManager can be expensive, and result in lost executors due to blocked heartbeats |  Major | Spark Core | Zhong Wang | Lantao Jin |
| [SPARK-26881](https://issues.apache.org/jira/browse/SPARK-26881) | Scaling issue with Gramian computation for RowMatrix: too many results sent to driver |  Minor | MLlib | Rafael RENAUDIN-AVINO | Rafael RENAUDIN-AVINO |
| [SPARK-27328](https://issues.apache.org/jira/browse/SPARK-27328) | Create 'deprecate' property in ExpressionDescription for SQL functions documentation |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-27401](https://issues.apache.org/jira/browse/SPARK-27401) | Refactoring conversion of Date/Timestamp to/from java.sql.Date/Timestamp |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-27410](https://issues.apache.org/jira/browse/SPARK-27410) | Remove deprecated/no-op mllib.Kmeans get/setRuns methods |  Trivial | MLlib | Sean R. Owen | Sean R. Owen |
| [SPARK-27181](https://issues.apache.org/jira/browse/SPARK-27181) | Add public expression and transform API for DSv2 partitioning |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-27414](https://issues.apache.org/jira/browse/SPARK-27414) | make it clear that date type is timezone independent |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-27422](https://issues.apache.org/jira/browse/SPARK-27422) | CurrentDate should return local date |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-27423](https://issues.apache.org/jira/browse/SPARK-27423) | Cast DATE to/from TIMESTAMP according to SQL standard |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-27088](https://issues.apache.org/jira/browse/SPARK-27088) | Apply conf "spark.sql.optimizer.planChangeLog.level" to batch plan change in RuleExecutor |  Minor | SQL | Wei Xue | Chakravarthi |
| [SPARK-27405](https://issues.apache.org/jira/browse/SPARK-27405) | Restrict the range of generated random timestamps |  Minor | Tests | Maxim Gekk | Maxim Gekk |
| [SPARK-27404](https://issues.apache.org/jira/browse/SPARK-27404) | Fix build warnings for 3.0: postfixOps edition |  Minor | Spark Core, SQL, Structured Streaming, YARN | Sean R. Owen | Sean R. Owen |
| [SPARK-27270](https://issues.apache.org/jira/browse/SPARK-27270) | Add Kafka dynamic JAAS authentication debug possibility |  Major | Structured Streaming | Gabor Somogyi | Gabor Somogyi |
| [SPARK-27451](https://issues.apache.org/jira/browse/SPARK-27451) | Upgrade lz4-java to 1.5.1 |  Minor | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27449](https://issues.apache.org/jira/browse/SPARK-27449) | Clean-up checks in CodegenSupport.limitNotReachedCond |  Major | SQL | Herman van Hövell | Herman van Hövell |
| [SPARK-27470](https://issues.apache.org/jira/browse/SPARK-27470) | Upgrade pyrolite to 4.23 |  Minor | PySpark, Spark Core | Sean R. Owen | Sean R. Owen |
| [SPARK-27397](https://issues.apache.org/jira/browse/SPARK-27397) | Take care of OpenJ9 in JVM dependant parts |  Major | Spark Core | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-27469](https://issues.apache.org/jira/browse/SPARK-27469) | Update Commons BeanUtils to 1.9.3 |  Minor | Spark Core | Sean R. Owen | Sean R. Owen |
| [SPARK-27464](https://issues.apache.org/jira/browse/SPARK-27464) |  Add Constant instead of referring string literal used from many places |  Trivial | Spark Core | Shivu Sondur | Shivu Sondur |
| [SPARK-27476](https://issues.apache.org/jira/browse/SPARK-27476) | Refactoring SchemaPruning rule to remove duplicate code |  Minor | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-27452](https://issues.apache.org/jira/browse/SPARK-27452) | Update zstd-jni to 1.3.8-9 |  Minor | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27458](https://issues.apache.org/jira/browse/SPARK-27458) | Remind developer using IntelliJ to update maven version |  Minor | Documentation | William Wong | William Wong |
| [SPARK-27460](https://issues.apache.org/jira/browse/SPARK-27460) | Running slowest test suites in their own forked JVMs for higher parallelism |  Critical | Tests | Xiao Li | Gengliang Wang |
| [SPARK-27514](https://issues.apache.org/jira/browse/SPARK-27514) | Empty window expression results in error in optimizer |  Major | SQL | Yifei Huang | Yifei Huang |
| [SPARK-27486](https://issues.apache.org/jira/browse/SPARK-27486) | Enable History server storage information test |  Minor | Spark Core | shahid | shahid |
| [SPARK-25079](https://issues.apache.org/jira/browse/SPARK-25079) | [PYTHON] upgrade python 3.4 -\> 3.6 |  Major | Build, PySpark | Shane Knapp | Shane Knapp |
| [SPARK-27276](https://issues.apache.org/jira/browse/SPARK-27276) | Increase the minimum pyarrow version to 0.12.1 |  Major | PySpark, SQL | Bryan Cutler | Shane Knapp |
| [SPARK-27480](https://issues.apache.org/jira/browse/SPARK-27480) | Improve \`EXPLAIN DESC QUERY\` to show the input SQL statement |  Minor | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-27438](https://issues.apache.org/jira/browse/SPARK-27438) | Increase precision of to\_timestamp |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-27531](https://issues.apache.org/jira/browse/SPARK-27531) | Improve explain output of describe table command to show the inputs to the command. |  Minor | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-27528](https://issues.apache.org/jira/browse/SPARK-27528) | Use Parquet logical type TIMESTAMP\_MICROS by default |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26970](https://issues.apache.org/jira/browse/SPARK-26970) | Can't load PipelineModel that was created in Scala with Python due to missing Interaction transformer |  Minor | ML, PySpark | Andrew Crosby | Andrew Crosby |
| [SPARK-27551](https://issues.apache.org/jira/browse/SPARK-27551) |  Improve error message of mismatched types for CASE WHEN |  Minor | SQL | Huon Wilson | L. C. Hsieh |
| [SPARK-27563](https://issues.apache.org/jira/browse/SPARK-27563) | automatically get the latest Spark versions in HiveExternalCatalogVersionsSuite |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-27474](https://issues.apache.org/jira/browse/SPARK-27474) | avoid retrying a task failed with CommitDeniedException many times |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-27536](https://issues.apache.org/jira/browse/SPARK-27536) | Code improvements for 3.0: existentials edition |  Major | ML, Spark Core, SQL, Structured Streaming | Sean R. Owen | Sean R. Owen |
| [SPARK-27571](https://issues.apache.org/jira/browse/SPARK-27571) | Spark 3.0 build warnings: reflectiveCalls edition |  Minor | Examples, Spark Core, YARN | Sean R. Owen | Sean R. Owen |
| [SPARK-27618](https://issues.apache.org/jira/browse/SPARK-27618) | Unnecessary access to externalCatalog |  Major | SQL | Xiao Li | Oliver Caballero Alvarez |
| [SPARK-27606](https://issues.apache.org/jira/browse/SPARK-27606) | Deprecate \`extended\` field in ExpressionDescription/ExpressionInfo |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-27607](https://issues.apache.org/jira/browse/SPARK-27607) | Improve performance of Row.toString() |  Minor | SQL | Josh Rosen | Marco Gaido |
| [SPARK-27601](https://issues.apache.org/jira/browse/SPARK-27601) | Upgrade stream-lib to 2.9.6 |  Minor | Build | Yuming Wang | Yuming Wang |
| [SPARK-27620](https://issues.apache.org/jira/browse/SPARK-27620) | Update jetty to 9.4.18.v20190429 |  Major | Build | Yuming Wang | yuming.wang |
| [SPARK-27586](https://issues.apache.org/jira/browse/SPARK-27586) | Improve binary comparison: replace Scala's for-comprehension if statements with while loop |  Minor | SQL | WoudyGao | WoudyGao |
| [SPARK-27579](https://issues.apache.org/jira/browse/SPARK-27579) | remove BaseStreamingSource and BaseStreamingSink |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-27610](https://issues.apache.org/jira/browse/SPARK-27610) | Yarn external shuffle service fails to start when spark.shuffle.io.mode=EPOLL |  Minor | Shuffle, Spark Core | Adrian Muraru | Adrian Muraru |
| [SPARK-27294](https://issues.apache.org/jira/browse/SPARK-27294) | Multi-cluster Kafka delegation token support |  Major | Structured Streaming | Gabor Somogyi | Gabor Somogyi |
| [SPARK-27639](https://issues.apache.org/jira/browse/SPARK-27639) | InMemoryTableScan shows the table name on UI if possible |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-27642](https://issues.apache.org/jira/browse/SPARK-27642) | make v1 offset extends v2 offset |  Major | Structured Streaming | Wenchen Fan | Wenchen Fan |
| [SPARK-27649](https://issues.apache.org/jira/browse/SPARK-27649) | Unify the way you use 'spark.network.timeout' |  Minor | Structured Streaming | jiaan.geng | jiaan.geng |
| [SPARK-27627](https://issues.apache.org/jira/browse/SPARK-27627) | Make option "pathGlobFilter" as a general option for all file sources |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-27636](https://issues.apache.org/jira/browse/SPARK-27636) | Remove cached RDD blocks after PIC execution |  Minor | MLlib | shahid | shahid |
| [SPARK-26632](https://issues.apache.org/jira/browse/SPARK-26632) | Separate Thread Configurations of Driver and Executor |  Minor | Spark Core | jiafu zhang | jiafu zhang |
| [SPARK-27675](https://issues.apache.org/jira/browse/SPARK-27675) | do not use MutableColumnarRow in ColumnarBatch |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-27343](https://issues.apache.org/jira/browse/SPARK-27343) | Use ConfigEntry for hardcoded configs for spark-sql-kafka |  Minor | Structured Streaming | hehuiyuan | hehuiyuan |
| [SPARK-26601](https://issues.apache.org/jira/browse/SPARK-26601) | Make broadcast-exchange thread pool keepalivetime and maxThreadNumber configurable |  Minor | SQL | zhoukang | zhoukang |
| [SPARK-25719](https://issues.apache.org/jira/browse/SPARK-25719) | Search functionality in datatables in stages page should search over formatted data rather than the raw data |  Minor | Web UI | Parth Gandhi | Parth Gandhi |
| [SPARK-27690](https://issues.apache.org/jira/browse/SPARK-27690) | Remove materialized views first in \`HiveClientImpl.reset\` |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-27713](https://issues.apache.org/jira/browse/SPARK-27713) | Move RecordBinaryComparator and unsafe sorters from catalyst project to core |  Major | SQL | Xianyin Xin | Xianyin Xin |
| [SPARK-27687](https://issues.apache.org/jira/browse/SPARK-27687) | Kafka consumer cache parameter rename and documentation |  Minor | Documentation, Structured Streaming | Gabor Somogyi | Gabor Somogyi |
| [SPARK-27722](https://issues.apache.org/jira/browse/SPARK-27722) | Remove UnsafeKeyValueSorter |  Minor | SQL | L. C. Hsieh | Shivu Sondur |
| [SPARK-27752](https://issues.apache.org/jira/browse/SPARK-27752) | Updata lz4-java from 1.5.1 to 1.6.0 |  Major | Spark Core | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-27699](https://issues.apache.org/jira/browse/SPARK-27699) | Partially push down disjunctive predicated in Parquet/ORC |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-27755](https://issues.apache.org/jira/browse/SPARK-27755) | Update zstd-jni to 1.4.0-1 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27673](https://issues.apache.org/jira/browse/SPARK-27673) | Add since info to random. regex, null expressions |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-27672](https://issues.apache.org/jira/browse/SPARK-27672) | Add since info to string expressions |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-27754](https://issues.apache.org/jira/browse/SPARK-27754) | Introduce spark on k8s config for driver request cores |  Minor | Kubernetes, Spark Core | Arun Mahadevan | Arun Mahadevan |
| [SPARK-27771](https://issues.apache.org/jira/browse/SPARK-27771) | Add SQL description for grouping functions (cube, rollup, grouping and grouping\_id) |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-27694](https://issues.apache.org/jira/browse/SPARK-27694) | Support auto-updating table statistics for data source CTAS command |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-27693](https://issues.apache.org/jira/browse/SPARK-27693) | DataSourceV2: Add default catalog property |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-27637](https://issues.apache.org/jira/browse/SPARK-27637) | If exception occured while  fetching blocks by netty block transfer service, check whether the relative executor is alive before retry |  Major | Shuffle, Spark Core | feiwang | feiwang |
| [SPARK-12045](https://issues.apache.org/jira/browse/SPARK-12045) | Use joda's DateTime to replace Calendar |  Major | SQL | Jeff Zhang | Maxim Gekk |
| [SPARK-27774](https://issues.apache.org/jira/browse/SPARK-27774) | Avoid hardcoded configs |  Minor | MLlib, Spark Core | wenxuanguan | wenxuanguan |
| [SPARK-23153](https://issues.apache.org/jira/browse/SPARK-23153) | Support application dependencies in submission client's local file system |  Major | Kubernetes, Spark Core | Yinan Li | Stavros Kontopoulos |
| [SPARK-27816](https://issues.apache.org/jira/browse/SPARK-27816) | make TreeNode tag type safe |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-27830](https://issues.apache.org/jira/browse/SPARK-27830) | Show Spark version at app lists of Spark History UI |  Major | Spark Core, Web UI | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27801](https://issues.apache.org/jira/browse/SPARK-27801) | InMemoryFileIndex.listLeafFiles should use listLocatedStatus for DistributedFileSystem |  Major | SQL | Rob Russo | Rob Russo |
| [SPARK-27147](https://issues.apache.org/jira/browse/SPARK-27147) | Create new unit test cases for SortShuffleWriter |  Minor | Spark Core, Tests | wangjiaochun | wangjiaochun |
| [SPARK-27787](https://issues.apache.org/jira/browse/SPARK-27787) | Eliminate uncessary job to compute SSreg |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-27074](https://issues.apache.org/jira/browse/SPARK-27074) | Hive 3.1 metastore support HiveClientImpl.runHive |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-24766](https://issues.apache.org/jira/browse/SPARK-24766) | CreateHiveTableAsSelect and InsertIntoHiveDir won't generate decimal column stats in parquet |  Major | SQL | Yuming Wang |  |
| [SPARK-27665](https://issues.apache.org/jira/browse/SPARK-27665) | Split fetch shuffle blocks protocol from OpenBlocks |  Major | Spark Core | Yuanjian Li | Yuanjian Li |
| [SPARK-27777](https://issues.apache.org/jira/browse/SPARK-27777) | Eliminate uncessary sliding job in AreaUnderCurve |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-27071](https://issues.apache.org/jira/browse/SPARK-27071) | Expose additional metrics in status.api.v1.StageData |  Major | Spark Core | Tom van Bussel | Tom van Bussel |
| [SPARK-27859](https://issues.apache.org/jira/browse/SPARK-27859) | Use efficient sorting instead of \`.sorted.reverse\` sequence |  Trivial | Structured Streaming | Dongjoon Hyun | wenxuanguan |
| [SPARK-27776](https://issues.apache.org/jira/browse/SPARK-27776) | Avoid duplicate Java reflection in DataSource |  Trivial | SQL | jiaan.geng | jiaan.geng |
| [SPARK-27829](https://issues.apache.org/jira/browse/SPARK-27829) | In Dataset.joinWith inner joins, don't nest data before shuffling |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-27875](https://issues.apache.org/jira/browse/SPARK-27875) | Wrap all PrintWriter with Utils.tryWithResource |  Major | Spark Core | Yuming Wang | Yuming Wang |
| [SPARK-27757](https://issues.apache.org/jira/browse/SPARK-27757) | Bump Jackson to 2.9.9 |  Minor | Spark Core | Fokko Driesprong | Fokko Driesprong |
| [SPARK-27813](https://issues.apache.org/jira/browse/SPARK-27813) | DataSourceV2: Add DropTable logical operation |  Minor | SQL | John Zhuge | John Zhuge |
| [SPARK-27773](https://issues.apache.org/jira/browse/SPARK-27773) | Add shuffle service metric for number of exceptions caught in ExternalShuffleBlockHandler |  Minor | Shuffle, Spark Core | Steven Rand | Steven Rand |
| [SPARK-27684](https://issues.apache.org/jira/browse/SPARK-27684) | Reduce ScalaUDF conversion overheads for primitives |  Major | SQL | Josh Rosen | Marco Gaido |
| [SPARK-27862](https://issues.apache.org/jira/browse/SPARK-27862) | Upgrade json4s-jackson to 3.6.6 |  Minor | Build | Izek Greenfield | Izek Greenfield |
| [SPARK-27794](https://issues.apache.org/jira/browse/SPARK-27794) | Use secure URLs for downloading CRAN artifacts |  Minor | Documentation, R | Sean R. Owen | Sean R. Owen |
| [SPARK-27811](https://issues.apache.org/jira/browse/SPARK-27811) |  Docs of spark.driver.memoryOverhead and spark.executor.memoryOverhead exists a little ambiguity |  Trivial | Documentation, Spark Core | jiaan.geng | jiaan.geng |
| [SPARK-27847](https://issues.apache.org/jira/browse/SPARK-27847) | One-Pass MultilabelMetrics & MulticlassMetrics |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-27834](https://issues.apache.org/jira/browse/SPARK-27834) | Make separate PySpark/SparkR vectorization configurations |  Major | PySpark, SparkR, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-27831](https://issues.apache.org/jira/browse/SPARK-27831) | Move Hive test jars to maven dependency |  Major | Tests | Yuming Wang | Yuming Wang |
| [SPARK-27920](https://issues.apache.org/jira/browse/SPARK-27920) | Add \`interceptParseException\` test utility function |  Minor | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27748](https://issues.apache.org/jira/browse/SPARK-27748) | Kafka consumer/producer password/token redaction |  Major | Structured Streaming | Gabor Somogyi | Gabor Somogyi |
| [SPARK-27772](https://issues.apache.org/jira/browse/SPARK-27772) | SQLTestUtils Refactoring |  Minor | SQL, Tests | William Wong | William Wong |
| [SPARK-27805](https://issues.apache.org/jira/browse/SPARK-27805) | toPandas does not propagate SparkExceptions with arrow enabled |  Major | PySpark, SQL | David Vogelbacher | David Vogelbacher |
| [SPARK-27909](https://issues.apache.org/jira/browse/SPARK-27909) | Fix CTE substitution dependence on ResolveRelations throwing AnalysisException |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-27933](https://issues.apache.org/jira/browse/SPARK-27933) | Extracting common purge "behaviour" to the parent StreamExecution |  Minor | Structured Streaming | Jacek Laskowski | Jacek Laskowski |
| [SPARK-27964](https://issues.apache.org/jira/browse/SPARK-27964) | Create CatalogV2Util |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-27968](https://issues.apache.org/jira/browse/SPARK-27968) | ArrowEvalPythonExec.evaluate shouldn't eagerly read the first batch |  Major | PySpark, SQL | Xiangrui Meng | Xiangrui Meng |
| [SPARK-27938](https://issues.apache.org/jira/browse/SPARK-27938) | Turn on LEGACY\_PASS\_PARTITION\_BY\_AS\_OPTIONS by default |  Major | SQL | Liwen Sun | Liwen Sun |
| [SPARK-27965](https://issues.apache.org/jira/browse/SPARK-27965) | Add extractors for logical transforms |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-27973](https://issues.apache.org/jira/browse/SPARK-27973) | Streaming sample DirectKafkaWordCount should mention GroupId in usage |  Trivial | Examples | Yuexin Zhang | Yuexin Zhang |
| [SPARK-27970](https://issues.apache.org/jira/browse/SPARK-27970) | Support Hive 3.0 metastore |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-27971](https://issues.apache.org/jira/browse/SPARK-27971) | MapPartitionsInRWithArrowExec.evaluate shouldn't eagerly read the first batch |  Major | SparkR, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-27846](https://issues.apache.org/jira/browse/SPARK-27846) | Eagerly compute Configuration.properties in sc.hadoopConfiguration |  Minor | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-27425](https://issues.apache.org/jira/browse/SPARK-27425) | Add count\_if functions |  Minor | SQL | Chaerim Yeo | Chaerim Yeo |
| [SPARK-27947](https://issues.apache.org/jira/browse/SPARK-27947) | Enhance redactOptions to accept any Map type |  Major | SQL | John Zhuge | John Zhuge |
| [SPARK-27979](https://issues.apache.org/jira/browse/SPARK-27979) | Remove deprecated \`--force\` option in \`build/mvn\` and \`run-tests.py\` |  Minor | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27899](https://issues.apache.org/jira/browse/SPARK-27899) | Make HiveMetastoreClient.getTableObjectsByName available in ExternalCatalog/SessionCatalog API |  Major | SQL | Juliusz Sompolski | Lantao Jin |
| [SPARK-27995](https://issues.apache.org/jira/browse/SPARK-27995) | Note the difference between str of Python 2 and 3 at Arrow optimized |  Minor | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-27701](https://issues.apache.org/jira/browse/SPARK-27701) | Extend NestedColumnAliasing to more nested field cases |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-28013](https://issues.apache.org/jira/browse/SPARK-28013) | Upgrade to Kafka 2.2.1 |  Major | Build, Structured Streaming | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-16692](https://issues.apache.org/jira/browse/SPARK-16692) |  multilabel classification to DataFrame, ML |  Minor | ML, MLlib | Weizhi Li | zhengruifeng |
| [SPARK-28057](https://issues.apache.org/jira/browse/SPARK-28057) | Add method \`clone\` in catalyst TreeNode |  Minor | SQL | Wei Xue | Wei Xue |
| [SPARK-26949](https://issues.apache.org/jira/browse/SPARK-26949) | Prevent "purge" to remove needed batch files in CompactibleFileStreamLog |  Minor | Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-28051](https://issues.apache.org/jira/browse/SPARK-28051) | Exposing JIRA issue component types at GitHub PRs |  Minor | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28004](https://issues.apache.org/jira/browse/SPARK-28004) | Update jquery to 3.4.1 |  Major | Web UI | Sean R. Owen | Sean R. Owen |
| [SPARK-27870](https://issues.apache.org/jira/browse/SPARK-27870) | Flush each batch for pandas UDF (for improving pandas UDFs pipeline) |  Major | PySpark, SQL | Weichen Xu | Hyukjin Kwon |
| [SPARK-28063](https://issues.apache.org/jira/browse/SPARK-28063) | Replace deprecated \`.newInstance()\` in DSv2 \`Catalogs\` |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-24898](https://issues.apache.org/jira/browse/SPARK-24898) | Adding spark.checkpoint.compress to the docs |  Trivial | Documentation | Riccardo Corbella | Sandeep |
| [SPARK-28066](https://issues.apache.org/jira/browse/SPARK-28066) | Optimize UTF8String.trim() for common case of no whitespace |  Minor | Spark Core | Sean R. Owen | Sean R. Owen |
| [SPARK-28041](https://issues.apache.org/jira/browse/SPARK-28041) | Increase the minimum pandas version to 0.23.2 |  Major | PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-27666](https://issues.apache.org/jira/browse/SPARK-27666) | Do not release lock while TaskContext already completed |  Major | SQL | Wenchen Fan | wuyi |
| [SPARK-27783](https://issues.apache.org/jira/browse/SPARK-27783) | Add customizable hint error handler |  Minor | SQL | Wei Xue | Wei Xue |
| [SPARK-27105](https://issues.apache.org/jira/browse/SPARK-27105) | Prevent exponential complexity in ORC \`createFilter\` |  Major | SQL | Ivan Vergiliev | Ivan Vergiliev |
| [SPARK-28096](https://issues.apache.org/jira/browse/SPARK-28096) | Lazy val performance pitfall in Spark SQL LogicalPlans |  Major | SQL | Yesheng Ma | Yesheng Ma |
| [SPARK-28044](https://issues.apache.org/jira/browse/SPARK-28044) | MulticlassClassificationEvaluator support more metrics |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-27839](https://issues.apache.org/jira/browse/SPARK-27839) | Improve UTF8String.replace() / StringReplace performance |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-28102](https://issues.apache.org/jira/browse/SPARK-28102) | Failed LZ4 JNI initialization is repeatedly re-attempted, causing lock contention issues |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-28112](https://issues.apache.org/jira/browse/SPARK-28112) | Fix Kryo exception perf. bottleneck in tests due to absence of ML/MLlib classes |  Major | Spark Core, Tests | Xiao Li | Josh Rosen |
| [SPARK-28012](https://issues.apache.org/jira/browse/SPARK-28012) | Hive UDF supports struct type foldable expression |  Trivial | SQL | dzcxzl | dzcxzl |
| [SPARK-28118](https://issues.apache.org/jira/browse/SPARK-28118) | Add \`spark.eventLog.compression.codec\` configuration |  Minor | Spark Core | Dongjoon Hyun |  |
| [SPARK-28127](https://issues.apache.org/jira/browse/SPARK-28127) | Micro optimization on TreeNode's mapChildren method |  Major | SQL | Yesheng Ma | Yesheng Ma |
| [SPARK-28131](https://issues.apache.org/jira/browse/SPARK-28131) | Update document type conversion between Python data and SQL types in normal UDFs (Python 3.7) |  Minor | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-28128](https://issues.apache.org/jira/browse/SPARK-28128) | Pandas Grouped UDFs should skip over empty partitions |  Major | PySpark, SQL | Bryan Cutler | Bryan Cutler |
| [SPARK-28130](https://issues.apache.org/jira/browse/SPARK-28130) | Pretty messages not being printed for skipped PySpark tests when xmlrunner is available |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-27989](https://issues.apache.org/jira/browse/SPARK-27989) | Add retries on the connection to the driver |  Minor | Spark Core | Jose Luis Pedrosa | Jose Luis Pedrosa |
| [SPARK-28003](https://issues.apache.org/jira/browse/SPARK-28003) | spark.createDataFrame with Arrow doesn't work with pandas.NaT |  Major | PySpark | Li Jin | Li Jin |
| [SPARK-28108](https://issues.apache.org/jira/browse/SPARK-28108) | Simplify OrcFilters |  Minor | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-28045](https://issues.apache.org/jira/browse/SPARK-28045) | add missing RankingEvaluator |  Minor | ML, PySpark | zhengruifeng | zhengruifeng |
| [SPARK-28117](https://issues.apache.org/jira/browse/SPARK-28117) | LDA and BisectingKMeans cache the input dataset if necessary |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-28154](https://issues.apache.org/jira/browse/SPARK-28154) | GMM fix double caching |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-27622](https://issues.apache.org/jira/browse/SPARK-27622) | Avoid the network when block manager fetches disk persisted RDD blocks from the same host |  Major | Block Manager, Spark Core | Attila Zsolt Piros | Attila Zsolt Piros |
| [SPARK-28174](https://issues.apache.org/jira/browse/SPARK-28174) | Upgrade to Kafka 2.3.0 |  Major | Build, Structured Streaming | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27871](https://issues.apache.org/jira/browse/SPARK-27871) | LambdaVariable should use per-query unique IDs instead of globally unique IDs |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-28187](https://issues.apache.org/jira/browse/SPARK-28187) | Add hadoop-cloud module to PR builders |  Minor | Build | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-28179](https://issues.apache.org/jira/browse/SPARK-28179) | Avoid hard-coded config: spark.sql.globalTempDatabase |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28145](https://issues.apache.org/jira/browse/SPARK-28145) | Executor pods polling source can fail to replace dead executors |  Minor | Kubernetes, Spark Core | Onur Satici | Onur Satici |
| [SPARK-27945](https://issues.apache.org/jira/browse/SPARK-27945) | Make minimal changes to support columnar processing |  Major | SQL | Robert Joseph Evans | Robert Joseph Evans |
| [SPARK-28196](https://issues.apache.org/jira/browse/SPARK-28196) | Add a new \`listTables\` and \`listLocalTempViews\` APIs for SessionCatalog |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28170](https://issues.apache.org/jira/browse/SPARK-28170) | DenseVector .toArray() and .values documentation do not specify they are aliases |  Trivial | ML, MLlib, PySpark | Sivam Pasupathipillai | Marco Gaido |
| [SPARK-28248](https://issues.apache.org/jira/browse/SPARK-28248) | Upgrade docker image and library for PostgreSQL integration test |  Minor | Tests | Yuming Wang | Yuming Wang |
| [SPARK-28159](https://issues.apache.org/jira/browse/SPARK-28159) | Make the transform natively in ml framework to avoid extra conversion |  Major | ML | zhengruifeng | zhengruifeng |
| [SPARK-28250](https://issues.apache.org/jira/browse/SPARK-28250) | QueryPlan#references should exclude producedAttributes |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-28140](https://issues.apache.org/jira/browse/SPARK-28140) | Pyspark API to create spark.mllib RowMatrix from DataFrame |  Minor | MLlib, PySpark | Henry Davidge | Henry Davidge |
| [SPARK-28294](https://issues.apache.org/jira/browse/SPARK-28294) | Support \`spark.history.fs.cleaner.maxNum\` configuration |  Major | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28290](https://issues.apache.org/jira/browse/SPARK-28290) | Use \`SslContextFactory.Server\` instead of \`SslContextFactory\` |  Minor | Spark Core, SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27919](https://issues.apache.org/jira/browse/SPARK-27919) | DataSourceV2: Add v2 session catalog |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-28339](https://issues.apache.org/jira/browse/SPARK-28339) | Rename Spark SQL adaptive execution configuration name |  Minor | SQL | Carson Wang | Carson Wang |
| [SPARK-28213](https://issues.apache.org/jira/browse/SPARK-28213) | Remove duplication between columnar and ColumnarBatchScan |  Major | SQL | Robert Joseph Evans | Robert Joseph Evans |
| [SPARK-28055](https://issues.apache.org/jira/browse/SPARK-28055) | Add delegation token custom AdminClient configurations. |  Minor | DStreams, Structured Streaming | Gabor Somogyi | Gabor Somogyi |
| [SPARK-23472](https://issues.apache.org/jira/browse/SPARK-23472) | Add config properties for administrator JVM options |  Major | Spark Core | Ryan Blue | Gabor Somogyi |
| [SPARK-28257](https://issues.apache.org/jira/browse/SPARK-28257) | Use ConfigEntry for hardcoded configs in SQL module |  Minor | SQL | EdisonWang | EdisonWang |
| [SPARK-28355](https://issues.apache.org/jira/browse/SPARK-28355) | Use Spark conf for threshold at which UDF is compressed by broadcast |  Minor | Spark Core | Jesse Cai | Jesse Cai |
| [SPARK-28378](https://issues.apache.org/jira/browse/SPARK-28378) | Remove usage of cgi.escape |  Minor | PySpark | L. C. Hsieh | L. C. Hsieh |
| [SPARK-28199](https://issues.apache.org/jira/browse/SPARK-28199) | Move Trigger implementations to Triggers.scala and avoid exposing these to the end users |  Minor | Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-28381](https://issues.apache.org/jira/browse/SPARK-28381) | Upgraded version of Pyrolite to 4.30 |  Major | PySpark | L. C. Hsieh | L. C. Hsieh |
| [SPARK-28311](https://issues.apache.org/jira/browse/SPARK-28311) | Spark Thrift Server protocol version compatibility setup too late |  Minor | SQL | angerszhu | angerszhu |
| [SPARK-28345](https://issues.apache.org/jira/browse/SPARK-28345) | PythonUDF predicate should be able to pushdown to join |  Major | PySpark, SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-28106](https://issues.apache.org/jira/browse/SPARK-28106) | Spark SQL add jar with wrong hdfs path, SparkContext still add it to jar path ,and cause Task Failed |  Minor | Spark Core, SQL | angerszhu | angerszhu |
| [SPARK-28356](https://issues.apache.org/jira/browse/SPARK-28356) | Do not reduce the number of partitions for repartition in adaptive execution |  Minor | SQL | Carson Wang | Carson Wang |
| [SPARK-27944](https://issues.apache.org/jira/browse/SPARK-27944) | Unify the behavior of checking empty output column names |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-18299](https://issues.apache.org/jira/browse/SPARK-18299) | Allow more aggregations on KeyValueGroupedDataset |  Minor | SQL | Matthias Niehoff | nooberfsh |
| [SPARK-28097](https://issues.apache.org/jira/browse/SPARK-28097) | Map ByteType to SMALLINT when using JDBC with PostgreSQL |  Minor | Input/Output | Seth Fitzsimmons | Seth Fitzsimmons |
| [SPARK-27707](https://issues.apache.org/jira/browse/SPARK-27707) | Prune unnecessary nested fields from Generate |  Major | SQL | Ohad Raviv | L. C. Hsieh |
| [SPARK-28440](https://issues.apache.org/jira/browse/SPARK-28440) | Use TestingUtils to compare floating point values |  Minor | MLlib, Tests | Dongjoon Hyun | Eugen Natucci |
| [SPARK-28433](https://issues.apache.org/jira/browse/SPARK-28433) | Incorrect assertion in scala test for aarch64 platform |  Minor | SQL | huangtianhua | huangtianhua |
| [SPARK-27815](https://issues.apache.org/jira/browse/SPARK-27815) | Improve SQL optimizer's predicate pushdown performance for cascading joins |  Major | SQL | Yesheng Ma | Yesheng Ma |
| [SPARK-28243](https://issues.apache.org/jira/browse/SPARK-28243) | remove setFeatureSubsetStrategy and setSubsamplingRate from Python TreeEnsembleParams |  Minor | ML, PySpark | Huaxin Gao | Huaxin Gao |
| [SPARK-28431](https://issues.apache.org/jira/browse/SPARK-28431) | CSV datasource throw com.univocity.parsers.common.TextParsingException with large size message |  Minor | SQL | Weichen Xu | Weichen Xu |
| [SPARK-28469](https://issues.apache.org/jira/browse/SPARK-28469) | Change CalendarIntervalType's readable string representation from calendarinterval to interval |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28473](https://issues.apache.org/jira/browse/SPARK-28473) | Build command in README should start with ./ |  Trivial | Documentation | Douglas Colkitt | Douglas Colkitt |
| [SPARK-28421](https://issues.apache.org/jira/browse/SPARK-28421) | SparseVector.apply performance optimization |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-28496](https://issues.apache.org/jira/browse/SPARK-28496) | Use branch name instead of tag during dry-run |  Minor | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28499](https://issues.apache.org/jira/browse/SPARK-28499) | Optimize MinMaxScaler |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-28507](https://issues.apache.org/jira/browse/SPARK-28507) | remove deprecated API context(self, sqlContext) from pyspark/ml/util.py |  Trivial | ML, PySpark | Huaxin Gao | Huaxin Gao |
| [SPARK-25285](https://issues.apache.org/jira/browse/SPARK-25285) | Add executor task metrics to track the number of tasks started and of tasks successfully completed |  Minor | Spark Core | Luca Canali | Luca Canali |
| [SPARK-28544](https://issues.apache.org/jira/browse/SPARK-28544) | Update zstd-jni to 1.4.2-1 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28545](https://issues.apache.org/jira/browse/SPARK-28545) | Add the hash map size to the directional log of ObjectAggregationIterator |  Trivial | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-21481](https://issues.apache.org/jira/browse/SPARK-21481) | Add indexOf method in ml.feature.HashingTF similar to mllib.feature.HashingTF |  Minor | ML | Aseem Bansal | Huaxin Gao |
| [SPARK-28549](https://issues.apache.org/jira/browse/SPARK-28549) | Use \`text.StringEscapeUtils\` instead \`lang3.StringEscapeUtils\` |  Major | Build, Spark Core, SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28534](https://issues.apache.org/jira/browse/SPARK-28534) | Update node affinity for DockerForDesktop backend in PVTestsSuite |  Minor | Kubernetes, Spark Core, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28042](https://issues.apache.org/jira/browse/SPARK-28042) | Support mapping spark.local.dir to hostPath volume |  Minor | Kubernetes, Spark Core | Junjie Chen | Junjie Chen |
| [SPARK-28178](https://issues.apache.org/jira/browse/SPARK-28178) | DataSourceV2: DataFrameWriter.insertInfo |  Major | SQL | John Zhuge | John Zhuge |
| [SPARK-26755](https://issues.apache.org/jira/browse/SPARK-26755) | Optimize Spark Scheduler to dequeue speculative tasks more efficiently |  Minor | Scheduler, Spark Core | Parth Gandhi | Parth Gandhi |
| [SPARK-28525](https://issues.apache.org/jira/browse/SPARK-28525) | Allow Launcher to be applied Java options |  Minor | Deploy | Kousuke Saruta | Kousuke Saruta |
| [SPARK-28581](https://issues.apache.org/jira/browse/SPARK-28581) | Replace \_FUNC\_ in UDF ExpressionInfo |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28564](https://issues.apache.org/jira/browse/SPARK-28564) | Access history application defaults to the last attempt id |  Trivial | Spark Core | dzcxzl | dzcxzl |
| [SPARK-28366](https://issues.apache.org/jira/browse/SPARK-28366) | Logging in driver when loading single large unsplittable file |  Minor | Spark Core | Weichen Xu | Weichen Xu |
| [SPARK-26329](https://issues.apache.org/jira/browse/SPARK-26329) | ExecutorMetrics should poll faster than heartbeats |  Major | Spark Core, Web UI | Imran Rashid | Wing Yew Poon |
| [SPARK-28521](https://issues.apache.org/jira/browse/SPARK-28521) | Fix error message for built-in functions |  Minor | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28579](https://issues.apache.org/jira/browse/SPARK-28579) | MaxAbsScaler avoids conversion to breeze.vector |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-20604](https://issues.apache.org/jira/browse/SPARK-20604) | Allow Imputer to handle all numeric types |  Minor | ML | Wayne Zhang | Wayne Zhang |
| [SPARK-28574](https://issues.apache.org/jira/browse/SPARK-28574) | Allow to config different sizes for event queues |  Major | Spark Core | Yun Zou | Yun Zou |
| [SPARK-28604](https://issues.apache.org/jira/browse/SPARK-28604) | Use log1p(x) instead of log(1+x) and expm1(x) instead of exp(x)-1 |  Minor | ML | Sean R. Owen | Sean R. Owen |
| [SPARK-28616](https://issues.apache.org/jira/browse/SPARK-28616) | Improve merge-spark-pr script to warn WIP PRs and strip trailing dots |  Minor | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28593](https://issues.apache.org/jira/browse/SPARK-28593) | Rename ShuffleClient to BlockStoreClient which more close to its usage |  Major | Spark Core | Yuanjian Li | Yuanjian Li |
| [SPARK-28601](https://issues.apache.org/jira/browse/SPARK-28601) | Use StandardCharsets.UTF\_8 instead of "UTF-8" string representation |  Minor | Spark Core | Jungtaek Lim | Jungtaek Lim |
| [SPARK-28622](https://issues.apache.org/jira/browse/SPARK-28622) | Move PullOutPythonUDFInJoinCondition rule into 'Extract Python UDFs' |  Major | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-28514](https://issues.apache.org/jira/browse/SPARK-28514) | Remove the redundant transformImpl method in RF & GBT |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-28615](https://issues.apache.org/jira/browse/SPARK-28615) | Add a guide line for dataframe functions to say column signature function is by default |  Minor | Documentation, SQL | Weichen Xu | Weichen Xu |
| [SPARK-28595](https://issues.apache.org/jira/browse/SPARK-28595) | explain should not trigger partition listing |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-28649](https://issues.apache.org/jira/browse/SPARK-28649) | Git Ignore does not ignore python/.eggs |  Major | Build | Rob Vesse | Rob Vesse |
| [SPARK-28644](https://issues.apache.org/jira/browse/SPARK-28644) | Port HIVE-10646: ColumnValue does not handle NULL\_TYPE |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28654](https://issues.apache.org/jira/browse/SPARK-28654) | Move "Extract Python UDFs" to the last in optimizer |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-28565](https://issues.apache.org/jira/browse/SPARK-28565) | DataSourceV2: DataFrameWriter.saveAsTable |  Major | SQL | John Zhuge | Burak Yavuz |
| [SPARK-28676](https://issues.apache.org/jira/browse/SPARK-28676) | Avoid Excessive logging from ContextCleaner |  Minor | Spark Core | Ajith S | Ajith S |
| [SPARK-28675](https://issues.apache.org/jira/browse/SPARK-28675) | Replace CatalogUtils.maskCredentials with SQLConf.get.redactOptions |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28639](https://issues.apache.org/jira/browse/SPARK-28639) | Configuration doc for Barrier Execution Mode |  Minor | Spark Core | Kousuke Saruta | Kousuke Saruta |
| [SPARK-28383](https://issues.apache.org/jira/browse/SPARK-28383) | SHOW CREATE TABLE is not supported on a temporary view |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28561](https://issues.apache.org/jira/browse/SPARK-28561) | DAG viz for barrier-execution mode |  Major | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-28713](https://issues.apache.org/jira/browse/SPARK-28713) | Bump checkstyle from 8.14 to 8.23 |  Major | Spark Core | Fokko Driesprong | Fokko Driesprong |
| [SPARK-28720](https://issues.apache.org/jira/browse/SPARK-28720) | Update AppVeyor R version to 3.6.1 |  Minor | Build, SparkR | Dongjoon Hyun |  |
| [SPARK-28487](https://issues.apache.org/jira/browse/SPARK-28487) | K8S pod allocator behaves poorly with dynamic allocation |  Major | Kubernetes, Spark Core | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-28265](https://issues.apache.org/jira/browse/SPARK-28265) | Missing TableCatalog API to rename table |  Major | SQL | Edgar Rodriguez | Edgar Rodriguez |
| [SPARK-27739](https://issues.apache.org/jira/browse/SPARK-27739) | df.persist should save stats from optimized plan |  Minor | SQL | John Zhuge | John Zhuge |
| [SPARK-28695](https://issues.apache.org/jira/browse/SPARK-28695) | Make Kafka source more robust with CaseInsensitiveMap |  Minor | Structured Streaming | Gabor Somogyi | Gabor Somogyi |
| [SPARK-27592](https://issues.apache.org/jira/browse/SPARK-27592) | Set the bucketed data source table SerDe correctly |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28722](https://issues.apache.org/jira/browse/SPARK-28722) | Change sequential label sorting in StringIndexer fit to parallel |  Minor | ML | L. C. Hsieh | L. C. Hsieh |
| [SPARK-28758](https://issues.apache.org/jira/browse/SPARK-28758) | Upgrade Janino to 3.0.15 |  Major | Build, SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-25038](https://issues.apache.org/jira/browse/SPARK-25038) | Accelerate Spark Plan generation when Spark SQL read large amount of data |  Major | SQL | Jason Guo | Rob Russo |
| [SPARK-28598](https://issues.apache.org/jira/browse/SPARK-28598) | Few date time manipulation functions does not provide versions supporting Column as input through the Dataframe API |  Minor | SQL | Weichen Xu | Weichen Xu |
| [SPARK-25262](https://issues.apache.org/jira/browse/SPARK-25262) | Support tmpfs for local dirs in k8s |  Major | Kubernetes, Spark Core | Rob Vesse | Rob Vesse |
| [SPARK-28434](https://issues.apache.org/jira/browse/SPARK-28434) | Decision Tree model isn't equal after save and load |  Minor | MLlib | Eugen Natucci | Eugen Natucci |
| [SPARK-28635](https://issues.apache.org/jira/browse/SPARK-28635) | create CatalogManager to track registered v2 catalogs |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-28715](https://issues.apache.org/jira/browse/SPARK-28715) | Introduce collectInPlanAndSubqueries and subqueriesAll in QueryPlan |  Minor | SQL | Ali Afroozeh | Ali Afroozeh |
| [SPARK-28837](https://issues.apache.org/jira/browse/SPARK-28837) | CTAS/RTAS should use nullable schema |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17875](https://issues.apache.org/jira/browse/SPARK-17875) | Remove unneeded direct dependence on Netty 3.x |  Trivial | Build | Sean R. Owen | Sean R. Owen |
| [SPARK-28847](https://issues.apache.org/jira/browse/SPARK-28847) | Annotate HiveExternalCatalogVersionsSuite with ExtendedHiveTest |  Minor | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28769](https://issues.apache.org/jira/browse/SPARK-28769) | Improve warning message in Barrier Execution Mode in case required slots \> maximum slots |  Minor | Spark Core | Kousuke Saruta | Kousuke Saruta |
| [SPARK-28702](https://issues.apache.org/jira/browse/SPARK-28702) | Display useful error message (instead of NPE) for invalid Dataset operations (e.g. calling actions inside of transformations) |  Major | SQL | Josh Rosen | Shivu Sondur |
| [SPARK-28835](https://issues.apache.org/jira/browse/SPARK-28835) | Introduce TPCDSSchema |  Minor | SQL | Ali Afroozeh | Ali Afroozeh |
| [SPARK-28857](https://issues.apache.org/jira/browse/SPARK-28857) | Clean up the comments of PR template during merging |  Minor | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28836](https://issues.apache.org/jira/browse/SPARK-28836) | Remove the canonicalize(attributes) method from PlanExpression |  Minor | SQL | Ali Afroozeh | Ali Afroozeh |
| [SPARK-28716](https://issues.apache.org/jira/browse/SPARK-28716) | Add id to Exchange and Subquery's stringArgs method for easier identifying their reuses in query plans |  Minor | SQL | Ali Afroozeh | Ali Afroozeh |
| [SPARK-28858](https://issues.apache.org/jira/browse/SPARK-28858) | add tree-based transformation in the py side |  Minor | ML, PySpark | zhengruifeng | zhengruifeng |
| [SPARK-28875](https://issues.apache.org/jira/browse/SPARK-28875) | Cover Task retry scenario with test in Kafka connector |  Minor | DStreams, Structured Streaming, Tests | Gabor Somogyi | Gabor Somogyi |
| [SPARK-28691](https://issues.apache.org/jira/browse/SPARK-28691) | Add Java/Scala DirectKerberizedKafkaWordCount examples |  Minor | DStreams, Examples | hong dongdong | hong dongdong |
| [SPARK-28747](https://issues.apache.org/jira/browse/SPARK-28747) | merge the two data source v2 fallback configs |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-28890](https://issues.apache.org/jira/browse/SPARK-28890) | Upgrade Hive Metastore Client to the latest versions for Hive 3.1 |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28760](https://issues.apache.org/jira/browse/SPARK-28760) | Add end-to-end Kafka delegation token test |  Major | Structured Streaming, Tests | Gabor Somogyi | Gabor Somogyi |
| [SPARK-28843](https://issues.apache.org/jira/browse/SPARK-28843) | Set OMP\_NUM\_THREADS to executor cores reduce Python memory consumption |  Major | PySpark | Ryan Blue | Ryan Blue |
| [SPARK-28922](https://issues.apache.org/jira/browse/SPARK-28922) | Safe Kafka parameter redaction |  Minor | Structured Streaming | Gabor Somogyi | Gabor Somogyi |
| [SPARK-28920](https://issues.apache.org/jira/browse/SPARK-28920) | Set up java version for github workflow |  Major | Project Infra | L. C. Hsieh | L. C. Hsieh |
| [SPARK-28866](https://issues.apache.org/jira/browse/SPARK-28866) | Persist item factors RDD when checkpointing in ALS |  Minor | ML | L. C. Hsieh | L. C. Hsieh |
| [SPARK-28573](https://issues.apache.org/jira/browse/SPARK-28573) | Convert InsertIntoTable(HiveTableRelation) to Datasource inserting for partitioned table |  Major | SQL | Xianjin YE | Xianjin YE |
| [SPARK-28694](https://issues.apache.org/jira/browse/SPARK-28694) | Add Java/Scala StructuredKerberizedKafkaWordCount examples |  Minor | Examples, Structured Streaming | hong dongdong | hong dongdong |
| [SPARK-28577](https://issues.apache.org/jira/browse/SPARK-28577) | Ensure executorMemoryHead requested value not less than MEMORY\_OFFHEAP\_SIZE when MEMORY\_OFFHEAP\_ENABLED is true |  Major | Spark Core, YARN | Yang Jie | Yang Jie |
| [SPARK-28901](https://issues.apache.org/jira/browse/SPARK-28901) | SparkThriftServer SparkExecuteStatementOpration handle cancel  status. |  Major | SQL | angerszhu | angerszhu |
| [SPARK-25151](https://issues.apache.org/jira/browse/SPARK-25151) | Apply Apache Commons Pool to KafkaDataConsumer |  Major | Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-28907](https://issues.apache.org/jira/browse/SPARK-28907) | Review invalid usage of new Configuration() |  Minor | Spark Core | Xianjin YE | Xianjin YE |
| [SPARK-28979](https://issues.apache.org/jira/browse/SPARK-28979) | DataSourceV2: Rename UnresolvedTable |  Critical | SQL | Ryan Blue | Ryan Blue |
| [SPARK-28976](https://issues.apache.org/jira/browse/SPARK-28976) | Use KeyLock to simplify MapOutputTracker.getStatuses |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-28878](https://issues.apache.org/jira/browse/SPARK-28878) | DataSourceV2 should not insert extra projection for columnar batches |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-28782](https://issues.apache.org/jira/browse/SPARK-28782) | explode() fails on aggregate expressions |  Major | SQL | Weichen Xu | Weichen Xu |
| [SPARK-28974](https://issues.apache.org/jira/browse/SPARK-28974) | centralize the Data Source V2 table capability checks |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-21870](https://issues.apache.org/jira/browse/SPARK-21870) | Split codegen'd aggregation code into small functions for the HotSpot |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-29011](https://issues.apache.org/jira/browse/SPARK-29011) | Upgrade netty-all to 4.1.39-Final |  Trivial | Build | Nicholas Marion | Nicholas Marion |
| [SPARK-28910](https://issues.apache.org/jira/browse/SPARK-28910) | Prevent schema verification when connecting to in memory derby |  Major | SQL | Juliusz Sompolski | Bogdan Ghit |
| [SPARK-28942](https://issues.apache.org/jira/browse/SPARK-28942) | [Spark][WEB UI]Spark in local mode hostname display localhost in the Host Column of Task Summary Page |  Minor | Web UI | ABHISHEK KUMAR GUPTA | Shivu Sondur |
| [SPARK-27420](https://issues.apache.org/jira/browse/SPARK-27420) | KinesisInputDStream should expose a way to configure CloudWatch metrics |  Major | DStreams, Input/Output | Jerome Gagnon | Kengo Seki |
| [SPARK-28637](https://issues.apache.org/jira/browse/SPARK-28637) | Thriftserver can not support interval type |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28340](https://issues.apache.org/jira/browse/SPARK-28340) | Noisy exceptions when tasks are killed: "DiskBlockObjectWriter: Uncaught exception while reverting partial writes to file: java.nio.channels.ClosedByInterruptException" |  Minor | Spark Core | Josh Rosen | Colin Ma |
| [SPARK-28928](https://issues.apache.org/jira/browse/SPARK-28928) | Use Kafka delegation token protocol on sources/sinks |  Major | Structured Streaming | Gabor Somogyi | Gabor Somogyi |
| [SPARK-23265](https://issues.apache.org/jira/browse/SPARK-23265) | Update multi-column error handling logic in QuantileDiscretizer |  Major | ML | Nicholas Pentreath | Huaxin Gao |
| [SPARK-29026](https://issues.apache.org/jira/browse/SPARK-29026) | Improve error message when constructor in \`ScalaReflection\` isn't found |  Minor | SQL | Mick Jermsurawong | Mick Jermsurawong |
| [SPARK-29057](https://issues.apache.org/jira/browse/SPARK-29057) | remove InsertIntoTable |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-28998](https://issues.apache.org/jira/browse/SPARK-28998) | reorganize the packages of DS v2 interfaces/classes |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29075](https://issues.apache.org/jira/browse/SPARK-29075) | Add enforcer rule to ban duplicated pom dependency |  Minor | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29079](https://issues.apache.org/jira/browse/SPARK-29079) | Enable GitHub Action on PR |  Minor | Project Infra | Dongjoon Hyun |  |
| [SPARK-29080](https://issues.apache.org/jira/browse/SPARK-29080) | Support R file extension case-insensitively |  Minor | SparkR | Dongjoon Hyun | Yue Andy Zhang |
| [SPARK-29081](https://issues.apache.org/jira/browse/SPARK-29081) | Replace calls to SerializationUtils.clone on properties with a faster implementation. |  Minor | Spark Core | David Lewis | David Lewis |
| [SPARK-29087](https://issues.apache.org/jira/browse/SPARK-29087) | Use DelegatingServletContextHandler to avoid CCE |  Major | DStreams, Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29069](https://issues.apache.org/jira/browse/SPARK-29069) | ResolveInsertInto should not do table look up |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29061](https://issues.apache.org/jira/browse/SPARK-29061) | Prints bytecode statistics in debugCodegen |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-29008](https://issues.apache.org/jira/browse/SPARK-29008) | Define an individual method for each common subexpression in HashAggregateExec |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-28996](https://issues.apache.org/jira/browse/SPARK-28996) | Add tests regarding username of HiveClient |  Minor | SQL | Jungtaek Lim | Jungtaek Lim |
| [SPARK-29074](https://issues.apache.org/jira/browse/SPARK-29074) | Optimize \`date\_format\` for foldable \`fmt\` |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-28929](https://issues.apache.org/jira/browse/SPARK-28929) | Spark Logging level should be INFO instead of Debug in Executor Plugin API[SPARK-24918] |  Trivial | Spark Core | jobit mathew | Rakesh Raushan |
| [SPARK-27463](https://issues.apache.org/jira/browse/SPARK-27463) | Support Dataframe Cogroup via Pandas UDFs |  Major | PySpark, SQL | Chris Martin | Chris Martin |
| [SPARK-29124](https://issues.apache.org/jira/browse/SPARK-29124) | Use MurmurHash3  \`bytesHash(data, seed)\` instead of \`bytesHash(data)\` |  Minor | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28972](https://issues.apache.org/jira/browse/SPARK-28972) | [Spark] spark.memory.offHeap.size description require to update in document |  Minor | Documentation | ABHISHEK KUMAR GUPTA | pavithra ramachandran |
| [SPARK-28927](https://issues.apache.org/jira/browse/SPARK-28927) | Improve error for ArrayIndexOutOfBoundsException and Not-stable AUC metrics in ALS for datasets with 12 billion instances |  Minor | ML | Qiang Wang | L. C. Hsieh |
| [SPARK-19926](https://issues.apache.org/jira/browse/SPARK-19926) | Make pyspark exception more readable |  Minor | PySpark | Genmao Yu | Xianjin YE |
| [SPARK-29118](https://issues.apache.org/jira/browse/SPARK-29118) | Avoid redundant computation in GMM.transform && GLR.transform |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-28208](https://issues.apache.org/jira/browse/SPARK-28208) | Upgrade to ORC 1.5.6 |  Major | Build, SQL | Owen O'Malley | Owen O'Malley |
| [SPARK-28091](https://issues.apache.org/jira/browse/SPARK-28091) | Extend Spark metrics system with user-defined metrics using executor plugins |  Minor | Spark Core | Luca Canali | Luca Canali |
| [SPARK-29159](https://issues.apache.org/jira/browse/SPARK-29159) | Increase ReservedCodeCacheSize to 1G |  Minor | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29165](https://issues.apache.org/jira/browse/SPARK-29165) | Set log level of log generated code as ERROR in case of compile error on generated code in UT |  Minor | SQL, Tests | Jungtaek Lim | Jungtaek Lim |
| [SPARK-29158](https://issues.apache.org/jira/browse/SPARK-29158) | Expose SerializableConfiguration for DSv2 |  Major | Spark Core, SQL | Holden Karau | Holden Karau |
| [SPARK-29161](https://issues.apache.org/jira/browse/SPARK-29161) | Unify default wait time for LiveListenerBus.waitUntilEmpty |  Minor | DStreams, Spark Core, SQL, Tests | Jungtaek Lim | Jungtaek Lim |
| [SPARK-29122](https://issues.apache.org/jira/browse/SPARK-29122) | Propagate all the SQL conf to executors in SQLQueryTestSuite |  Major | SQL, Tests | Gengliang Wang | Takeshi Yamamuro |
| [SPARK-29063](https://issues.apache.org/jira/browse/SPARK-29063) | fillna support for joined table |  Major | SQL | Yuanjian Li |  |
| [SPARK-28937](https://issues.apache.org/jira/browse/SPARK-28937) | Improve error reporting in Spark Secrets Test Suite |  Trivial | Kubernetes, Spark Core, Tests | Holden Karau | Holden Karau |
| [SPARK-28936](https://issues.apache.org/jira/browse/SPARK-28936) | Simplify Spark K8s tests by replacing race condition during command execution |  Major | Kubernetes, Spark Core, Tests | Holden Karau | Holden Karau |
| [SPARK-27659](https://issues.apache.org/jira/browse/SPARK-27659) | Allow PySpark toLocalIterator to prefetch data |  Minor | PySpark | Bryan Cutler | Holden Karau |
| [SPARK-19147](https://issues.apache.org/jira/browse/SPARK-19147) | Gracefully handle error in task after executor is stopped |  Minor | Spark Core | cen yuhai | Colin Ma |
| [SPARK-29121](https://issues.apache.org/jira/browse/SPARK-29121) | Support Dot Product for Vectors |  Major | ML, MLlib | Patrick Pisciuneri | Patrick Pisciuneri |
| [SPARK-29190](https://issues.apache.org/jira/browse/SPARK-29190) | Optimize \`extract\`/\`date\_part\` for the milliseconds \`field\` |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29200](https://issues.apache.org/jira/browse/SPARK-29200) | Optimize \`extract\`/\`date\_part\` for epoch |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29162](https://issues.apache.org/jira/browse/SPARK-29162) | Simplify NOT(isnull(x)) and NOT(isnotnull(x)) |  Major | SQL | Josh Rosen | angerszhu |
| [SPARK-29191](https://issues.apache.org/jira/browse/SPARK-29191) | Add tag ExtendedSQLTest for SQLQueryTestSuite |  Minor | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29084](https://issues.apache.org/jira/browse/SPARK-29084) | Check method bytecode size in BenchmarkQueryTest |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-25341](https://issues.apache.org/jira/browse/SPARK-25341) | Support rolling back a shuffle map stage and re-generate the shuffle files |  Major | Spark Core | Wenchen Fan | Yuanjian Li |
| [SPARK-29036](https://issues.apache.org/jira/browse/SPARK-29036) | SparkThriftServer may can't cancel job after call a cancel before start. |  Major | SQL | angerszhu | angerszhu |
| [SPARK-26848](https://issues.apache.org/jira/browse/SPARK-26848) | Introduce new option to Kafka source - specify timestamp to start and end offset |  Major | SQL | Jungtaek Lim | Jungtaek Lim |
| [SPARK-29168](https://issues.apache.org/jira/browse/SPARK-29168) | Use a unique color on selected item on timeline view |  Minor | Web UI | Tomoko Komiyama | Tomoko Komiyama |
| [SPARK-28678](https://issues.apache.org/jira/browse/SPARK-28678) | Specify that start index is 1-based in docstring of pyspark.sql.functions.slice |  Trivial | Documentation | Sivam Pasupathipillai | Ting Yang |
| [SPARK-28292](https://issues.apache.org/jira/browse/SPARK-28292) | Enable inject user-defined Hint |  Major | SQL | angerszhu | Xiao Li |
| [SPARK-29095](https://issues.apache.org/jira/browse/SPARK-29095) | add extractInstances |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-28957](https://issues.apache.org/jira/browse/SPARK-28957) | Copy any "spark.hive.foo=bar" spark properties into hadoop conf as "hive.foo=bar" |  Major | SQL | Weichen Xu | Weichen Xu |
| [SPARK-29215](https://issues.apache.org/jira/browse/SPARK-29215) | current namespace should be tracked in SessionCatalog if the current catalog is session catalog |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29237](https://issues.apache.org/jira/browse/SPARK-29237) | Use \_FUNC\_ in expression examples |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29197](https://issues.apache.org/jira/browse/SPARK-29197) | Remove saveModeForDSV2 in DataFrameWriter |  Blocker | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-29256](https://issues.apache.org/jira/browse/SPARK-29256) | Fix typo in building document |  Trivial | Documentation | Tomoko Komiyama | Tomoko Komiyama |
| [SPARK-29259](https://issues.apache.org/jira/browse/SPARK-29259) | Filesystem.exists is called even when not necessary for append save mode |  Minor | SQL | Rahij Ramsharan | Rahij Ramsharan |
| [SPARK-29246](https://issues.apache.org/jira/browse/SPARK-29246) | Remove unnecessary imports in \`core\` module |  Trivial | Spark Core | Jiaqi Li | Jiaqi Li |
| [SPARK-29175](https://issues.apache.org/jira/browse/SPARK-29175) | Make maven central repository in IsolatedClientLoader configurable |  Major | SQL | Yuanjian Li | Yuanjian Li |
| [SPARK-29258](https://issues.apache.org/jira/browse/SPARK-29258) | parity between ml.evaluator and mllib.metrics |  Minor | ML, PySpark | zhengruifeng |  |
| [SPARK-29070](https://issues.apache.org/jira/browse/SPARK-29070) | Make SparkLauncher log full spark-submit command line |  Minor | Spark Submit | Jeff Evans | Jeff Evans |
| [SPARK-27254](https://issues.apache.org/jira/browse/SPARK-27254) | Cleanup complete but becoming invalid output files in ManifestFileCommitProtocol if job is aborted |  Minor | Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-25440](https://issues.apache.org/jira/browse/SPARK-25440) | Dump query execution info to a file |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-28476](https://issues.apache.org/jira/browse/SPARK-28476) | Support ALTER DATABASE SET LOCATION |  Major | SQL | Xiao Li | yuming.wang |
| [SPARK-29155](https://issues.apache.org/jira/browse/SPARK-29155) | Support special date/timestamp values in the PostgreSQL dialect only |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29247](https://issues.apache.org/jira/browse/SPARK-29247) | HiveClientImpl may be log sensitive information |  Major | SQL | Yuming Wang | angerszhu |
| [SPARK-28074](https://issues.apache.org/jira/browse/SPARK-28074) | [SS] Log warn message on possible correctness issue for multiple stateful operations in single query |  Minor | Documentation, Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-25153](https://issues.apache.org/jira/browse/SPARK-25153) | Improve error messages for columns with dots/periods |  Trivial | SQL | Holden Karau | Jeff Evans |
| [SPARK-29307](https://issues.apache.org/jira/browse/SPARK-29307) | Remove scalatest compile warnings |  Trivial | Build, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29310](https://issues.apache.org/jira/browse/SPARK-29310) | TestMemoryManager should implement getExecutionMemoryUsageForTask() |  Major | Tests | Josh Rosen | Josh Rosen |
| [SPARK-29273](https://issues.apache.org/jira/browse/SPARK-29273) | Spark peakExecutionMemory metrics is zero |  Major | Spark Core | huangweiyi | huangweiyi |
| [SPARK-29332](https://issues.apache.org/jira/browse/SPARK-29332) | Upgrade zstd-jni library to 1.4.3 |  Minor | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27297](https://issues.apache.org/jira/browse/SPARK-27297) | Add higher order functions to Scala API |  Major | SQL | Nikolas Vanderhoof | Nikolas Vanderhoof |
| [SPARK-29317](https://issues.apache.org/jira/browse/SPARK-29317) | Avoid inheritance hierarchy in pandas CoGroup arrow runner and its plan |  Major | PySpark, SQL | Hyukjin Kwon |  |
| [SPARK-29341](https://issues.apache.org/jira/browse/SPARK-29341) | Upgrade cloudpickle to 1.0.0 |  Major | PySpark | L. C. Hsieh | L. C. Hsieh |
| [SPARK-29054](https://issues.apache.org/jira/browse/SPARK-29054) | Invalidate Kafka consumer when new delegation token available |  Major | Structured Streaming | Gabor Somogyi | Gabor Somogyi |
| [SPARK-29339](https://issues.apache.org/jira/browse/SPARK-29339) | Support Arrow 0.14 in vectoried dapply and gapply (test it in AppVeyor build) |  Major | SparkR | Hyukjin Kwon |  |
| [SPARK-29363](https://issues.apache.org/jira/browse/SPARK-29363) | o.a.s.ml.regression.Regressor should be public |  Trivial | ML | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-29233](https://issues.apache.org/jira/browse/SPARK-29233) | Add regex expression checks for executorEnv in K8S mode |  Minor | Kubernetes, Spark Core | merrily01 | merrily01 |
| [SPARK-28938](https://issues.apache.org/jira/browse/SPARK-28938) | Move to supported OpenJDK docker image for Kubernetes |  Minor | Kubernetes, Spark Core | Rodney Aaron Stainback | L. C. Hsieh |
| [SPARK-29189](https://issues.apache.org/jira/browse/SPARK-29189) | Add an option to ignore block locations when listing file |  Major | SQL | Wang, Gang | Wang, Gang |
| [SPARK-25390](https://issues.apache.org/jira/browse/SPARK-25390) | Data source V2 API refactoring |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29402](https://issues.apache.org/jira/browse/SPARK-29402) | Add tests for grouped map pandas\_udf using window |  Major | PySpark, SQL, Tests | Bryan Cutler | Bryan Cutler |
| [SPARK-29410](https://issues.apache.org/jira/browse/SPARK-29410) | Update Commons BeanUtils to 1.9.4 |  Minor | Spark Core | Peter Toth | Peter Toth |
| [SPARK-29380](https://issues.apache.org/jira/browse/SPARK-29380) | RFormula avoid repeated 'first' jobs to get vector size |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-26321](https://issues.apache.org/jira/browse/SPARK-26321) | Split a SQL in a correct way |  Major | SQL | Darcy Shen | Yuming Wang |
| [SPARK-29463](https://issues.apache.org/jira/browse/SPARK-29463) | move v2 commands to a new file |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29412](https://issues.apache.org/jira/browse/SPARK-29412) | refine the document of v2 session catalog config |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29454](https://issues.apache.org/jira/browse/SPARK-29454) | Reduce unsafeProjection call times when read parquet file |  Major | SQL | Yang Jie | Yang Jie |
| [SPARK-29473](https://issues.apache.org/jira/browse/SPARK-29473) | move statement logical plans to a new file |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29182](https://issues.apache.org/jira/browse/SPARK-29182) | Cache preferred locations of checkpointed RDD |  Major | Spark Core | L. C. Hsieh | L. C. Hsieh |
| [SPARK-29470](https://issues.apache.org/jira/browse/SPARK-29470) | Update plugins to latest versions |  Minor | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-24540](https://issues.apache.org/jira/browse/SPARK-24540) | Support for multiple character delimiter in Spark CSV read |  Minor | SQL | Ashwin K | Jeff Evans |
| [SPARK-29423](https://issues.apache.org/jira/browse/SPARK-29423) | leak on  org.apache.spark.sql.execution.streaming.StreamingQueryListenerBus |  Major | Structured Streaming | pin\_zhang | Yuming Wang |
| [SPARK-29469](https://issues.apache.org/jira/browse/SPARK-29469) | Avoid retries by RetryingBlockFetcher when ExternalBlockStoreClient is closed |  Minor | Shuffle, Spark Core | L. C. Hsieh | L. C. Hsieh |
| [SPARK-29349](https://issues.apache.org/jira/browse/SPARK-29349) | Support FETCH\_PRIOR in Thriftserver query results fetching |  Major | SQL | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-23578](https://issues.apache.org/jira/browse/SPARK-23578) | Add multicolumn support for Binarizer |  Minor | ML | Teng Peng | zhengruifeng |
| [SPARK-29483](https://issues.apache.org/jira/browse/SPARK-29483) | Bump Jackson to 2.10.0 |  Major | Spark Core | Fokko Driesprong | Fokko Driesprong |
| [SPARK-29491](https://issues.apache.org/jira/browse/SPARK-29491) | Add bit\_count function support |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-29436](https://issues.apache.org/jira/browse/SPARK-29436) | Support executor for selecting scheduler through scheduler name in the case of k8s multi-scheduler scenario. |  Minor | Kubernetes, Spark Core | merrily01 | merrily01 |
| [SPARK-29464](https://issues.apache.org/jira/browse/SPARK-29464) | PySpark ML should expose Params.clear() to unset a user supplied Param |  Minor | ML, PySpark | Bryan Cutler | Huaxin Gao |
| [SPARK-29092](https://issues.apache.org/jira/browse/SPARK-29092) | EXPLAIN FORMATTED does not work well with DPP |  Major | SQL | Xiao Li | Dilip Biswal |
| [SPARK-29444](https://issues.apache.org/jira/browse/SPARK-29444) | Add configuration to support JacksonGenrator to keep fields with null values |  Major | SQL | Jackey Lee | Jackey Lee |
| [SPARK-29466](https://issues.apache.org/jira/browse/SPARK-29466) | Show \`Duration\` for running drivers in Standalone master web UI |  Minor | Web UI | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29531](https://issues.apache.org/jira/browse/SPARK-29531) | Refine ThriftServerQueryTestSuite.blackList to reuse code of SQLQueryTestSuite.blackList |  Major | Tests | Hu Fuwang | Hu Fuwang |
| [SPARK-29529](https://issues.apache.org/jira/browse/SPARK-29529) | Remove unnecessary orc version and hive version in doc |  Minor | Documentation | Lin Gang Deng | Lin Gang Deng |
| [SPARK-29516](https://issues.apache.org/jira/browse/SPARK-29516) | Test ThriftServerQueryTestSuite asynchronously |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-29352](https://issues.apache.org/jira/browse/SPARK-29352) | Move active streaming query state to the SharedState |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-29499](https://issues.apache.org/jira/browse/SPARK-29499) | Add mapPartitionsWithIndex for RDDBarrier |  Major | PySpark, Spark Core | Xianyang Liu | Xianyang Liu |
| [SPARK-29557](https://issues.apache.org/jira/browse/SPARK-29557) | Upgrade dropwizard metrics library to 3.2.6 |  Minor | Build | Luca Canali | Luca Canali |
| [SPARK-29567](https://issues.apache.org/jira/browse/SPARK-29567) | Update JDBC Integration Test Docker Images |  Minor | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29559](https://issues.apache.org/jira/browse/SPARK-29559) | Support pagination for JDBC/ODBC UI page |  Minor | Web UI | shahid | shahid |
| [SPARK-29532](https://issues.apache.org/jira/browse/SPARK-29532) | simplify interval string parsing |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29227](https://issues.apache.org/jira/browse/SPARK-29227) | Track rule info in optimization phase |  Major | Structured Streaming | wenxuanguan | wenxuanguan |
| [SPARK-29562](https://issues.apache.org/jira/browse/SPARK-29562) | SQLAppStatusListener metrics aggregation is slow and memory hungry |  Major | SQL | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-29461](https://issues.apache.org/jira/browse/SPARK-29461) | Spark dataframe writer does not expose metrics for JDBC writer |  Minor | SQL | ROHIT KALHANS | Jungtaek Lim |
| [SPARK-29500](https://issues.apache.org/jira/browse/SPARK-29500) | Support partition column when writing to Kafka |  Major | SQL, Structured Streaming | Nicola Bova | Nicola Bova |
| [SPARK-29545](https://issues.apache.org/jira/browse/SPARK-29545) | Implement bitwise integer aggregates bit\_xor |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-29608](https://issues.apache.org/jira/browse/SPARK-29608) | Add Hadoop 3.2 profile to binary package |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29554](https://issues.apache.org/jira/browse/SPARK-29554) | Add \`version\` SQL function |  Minor | SQL | Kent Yao | Kent Yao |
| [SPARK-29613](https://issues.apache.org/jira/browse/SPARK-29613) | Upgrade to Kafka 2.3.1 |  Major | Build, Structured Streaming | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29617](https://issues.apache.org/jira/browse/SPARK-29617) | Upgrade to ORC 1.5.7 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28158](https://issues.apache.org/jira/browse/SPARK-28158) | Hive UDFs supports UDT type |  Minor | SQL | Genmao Yu | Genmao Yu |
| [SPARK-29607](https://issues.apache.org/jira/browse/SPARK-29607) | Move static methods from CalendarInterval to IntervalUtils |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-28746](https://issues.apache.org/jira/browse/SPARK-28746) | Add repartitionby hint to support RepartitionByExpression |  Minor | SQL | ulysses you | ulysses you |
| [SPARK-29646](https://issues.apache.org/jira/browse/SPARK-29646) | Allow pyspark version name format \`${versionNumber}-preview\` in release script |  Major | Build | Xingbo Jiang | Xingbo Jiang |
| [SPARK-29645](https://issues.apache.org/jira/browse/SPARK-29645) | ML add param RelativeError |  Minor | ML, PySpark | zhengruifeng | zhengruifeng |
| [SPARK-29675](https://issues.apache.org/jira/browse/SPARK-29675) | Add exception when isolationLevel is Illegal |  Minor | SQL | ulysses you | ulysses you |
| [SPARK-29687](https://issues.apache.org/jira/browse/SPARK-29687) | Fix jdbc metrics counter type to long |  Minor | SQL | ulysses you | ulysses you |
| [SPARK-29686](https://issues.apache.org/jira/browse/SPARK-29686) | LinearSVC should persist instances if needed |  Trivial | ML | zhengruifeng | zhengruifeng |
| [SPARK-29611](https://issues.apache.org/jira/browse/SPARK-29611) | Sort Kafka metadata by the number of messages |  Minor | Web UI | dengziming | dengziming |
| [SPARK-29623](https://issues.apache.org/jira/browse/SPARK-29623) | do not allow multiple unit TO unit statements in interval literal syntax |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29677](https://issues.apache.org/jira/browse/SPARK-29677) | Upgrade Kinesis Client |  Minor | DStreams | Eric S Meisel | Eric S Meisel |
| [SPARK-29729](https://issues.apache.org/jira/browse/SPARK-29729) | Upgrade ASM to 7.2 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29731](https://issues.apache.org/jira/browse/SPARK-29731) | Use public JIRA REST API to read-only access |  Minor | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29671](https://issues.apache.org/jira/browse/SPARK-29671) | Change format of interval string |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29343](https://issues.apache.org/jira/browse/SPARK-29343) | Eliminate sorts without limit in the subquery of Join/Aggregation |  Major | SQL | EdisonWang | EdisonWang |
| [SPARK-29739](https://issues.apache.org/jira/browse/SPARK-29739) | Use \`java\` instead of \`cc\` in test\_pipe\_functions |  Minor | PySpark, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29723](https://issues.apache.org/jira/browse/SPARK-29723) | Get date and time parts of an interval as java classes |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-28552](https://issues.apache.org/jira/browse/SPARK-28552) | The URL prefix lowercase of MySQL is not necessary, but it is necessary in spark |  Major | SQL | teeyog | teeyog |
| [SPARK-29747](https://issues.apache.org/jira/browse/SPARK-29747) | Upgrade Joda-Time library from 2.9.3 to 2.10.5 |  Trivial | Build | L. C. Hsieh | L. C. Hsieh |
| [SPARK-29656](https://issues.apache.org/jira/browse/SPARK-29656) | ML algs expose aggregationDepth |  Minor | ML, PySpark | zhengruifeng | zhengruifeng |
| [SPARK-29754](https://issues.apache.org/jira/browse/SPARK-29754) | LoR/AFT/LiR/SVC use Summarizer instead of MultivariateOnlineSummarizer |  Major | ML | zhengruifeng | zhengruifeng |
| [SPARK-29746](https://issues.apache.org/jira/browse/SPARK-29746) | implement validateInputType in Normalizer |  Minor | ML | Huaxin Gao | Huaxin Gao |
| [SPARK-29751](https://issues.apache.org/jira/browse/SPARK-29751) | Scalers use Summarizer instead of MultivariateOnlineSummarizer |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-29603](https://issues.apache.org/jira/browse/SPARK-29603) | Support application priority for spark on yarn |  Major | Spark Core, YARN | Kent Yao | Kent Yao |
| [SPARK-29635](https://issues.apache.org/jira/browse/SPARK-29635) | Deduplicate test suites between Kafka micro-batch sink and Kafka continuous sink |  Minor | Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-29605](https://issues.apache.org/jira/browse/SPARK-29605) | Optimize string to interval casting |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29761](https://issues.apache.org/jira/browse/SPARK-29761) | do not output leading 'interval' in CalendarInterval.toString |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29757](https://issues.apache.org/jira/browse/SPARK-29757) | Move calendar interval constants together |  Minor | SQL | Kent Yao | Kent Yao |
| [SPARK-29787](https://issues.apache.org/jira/browse/SPARK-29787) | Move method add/subtract/negate from CalendarInterval to IntervalUtils |  Minor | SQL | Kent Yao | Kent Yao |
| [SPARK-29756](https://issues.apache.org/jira/browse/SPARK-29756) | CountVectorizer forget to unpersist intermediate rdd |  Trivial | ML | zhengruifeng | zhengruifeng |
| [SPARK-28477](https://issues.apache.org/jira/browse/SPARK-28477) | Rewrite \`CASE WHEN cond THEN ifTrue OTHERWISE ifFalse\` END into \`IF(cond, ifTrue, ifFalse)\` |  Major | Optimizer, SQL | Josh Rosen | David Vrba |
| [SPARK-29795](https://issues.apache.org/jira/browse/SPARK-29795) | Possible 'leak' of Metrics with dropwizard metrics 4.x |  Minor | Spark Core | Sean R. Owen | Sean R. Owen |
| [SPARK-29654](https://issues.apache.org/jira/browse/SPARK-29654) | Add configuration to allow disabling registration of static sources to the metrics system |  Minor | Spark Core | Luca Canali | Luca Canali |
| [SPARK-29819](https://issues.apache.org/jira/browse/SPARK-29819) | Introduce an enum for interval units |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29820](https://issues.apache.org/jira/browse/SPARK-29820) | Use GitHub Action Cache for \`./.m2/repository\` |  Minor | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29421](https://issues.apache.org/jira/browse/SPARK-29421) | Using 'USING provider' to specify a different table provider in CREATE TABLE LIKE |  Major | SQL | Lantao Jin | Lantao Jin |
| [SPARK-29801](https://issues.apache.org/jira/browse/SPARK-29801) | ML models unify toString method |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-29766](https://issues.apache.org/jira/browse/SPARK-29766) | Aggregate metrics asynchronously in SQL listener |  Major | SQL | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-29001](https://issues.apache.org/jira/browse/SPARK-29001) | Print better log when process of events becomes slow |  Minor | Spark Core | Xingbo Jiang | Xingbo Jiang |
| [SPARK-29298](https://issues.apache.org/jira/browse/SPARK-29298) | Separate block manager heartbeat endpoint from driver endpoint |  Major | Spark Core | Lantao Jin | Lantao Jin |
| [SPARK-29855](https://issues.apache.org/jira/browse/SPARK-29855) | typed literals with negative sign with proper result or exception |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-29844](https://issues.apache.org/jira/browse/SPARK-29844) | Improper unpersist strategy in ml.recommendation.ASL.train |  Minor | ML | IcySanwitch | IcySanwitch |
| [SPARK-29851](https://issues.apache.org/jira/browse/SPARK-29851) | V2 Catalog: Default behavior of dropping namespace is cascading |  Major | SQL | Terry Kim | Terry Kim |
| [SPARK-29753](https://issues.apache.org/jira/browse/SPARK-29753) | refine the default catalog config |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29863](https://issues.apache.org/jira/browse/SPARK-29863) | rename EveryAgg/AnyAgg to BoolAnd/BoolOr |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29823](https://issues.apache.org/jira/browse/SPARK-29823) | Improper persist strategy in mllib.clustering.KMeans.run() |  Minor | MLlib | IcySanwitch | Aman Omer |
| [SPARK-29808](https://issues.apache.org/jira/browse/SPARK-29808) | StopWordsRemover should support multi-cols |  Minor | ML, PySpark | zhengruifeng | Huaxin Gao |
| [SPARK-24203](https://issues.apache.org/jira/browse/SPARK-24203) | Make executor's bindAddress configurable |  Major | Spark Core | Lukas Majercak | Nishchal Venkataramana |
| [SPARK-29649](https://issues.apache.org/jira/browse/SPARK-29649) | Stop task set if FileAlreadyExistsException was thrown when writing to output file |  Major | Spark Core, SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-29865](https://issues.apache.org/jira/browse/SPARK-29865) | k8s executor pods all have different prefixes in client mode |  Minor | Kubernetes, Spark Core | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-29857](https://issues.apache.org/jira/browse/SPARK-29857) | [WEB UI] Support defer render the spark history summary page. |  Minor | Web UI | feiwang | feiwang |
| [SPARK-29889](https://issues.apache.org/jira/browse/SPARK-29889) | unify the interval tests |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29376](https://issues.apache.org/jira/browse/SPARK-29376) | Upgrade Apache Arrow to 0.15.1 |  Major | PySpark, SQL | Bryan Cutler |  |
| [SPARK-29655](https://issues.apache.org/jira/browse/SPARK-29655) | Enable adaptive execution should not add more ShuffleExchange |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-29902](https://issues.apache.org/jira/browse/SPARK-29902) | Add listener event queue capacity configuration to documentation |  Minor | Documentation | shahid | shahid |
| [SPARK-29833](https://issues.apache.org/jira/browse/SPARK-29833) | Add FileNotFoundException check  for spark.yarn.jars |  Minor | Spark Core, YARN | ulysses you | ulysses you |
| [SPARK-29867](https://issues.apache.org/jira/browse/SPARK-29867) | add \_\_repr\_\_ in Python ML Models |  Minor | ML, PySpark | Huaxin Gao | Huaxin Gao |
| [SPARK-29378](https://issues.apache.org/jira/browse/SPARK-29378) | Upgrade SparkR to use Arrow 0.15 API |  Major | SparkR | Hyukjin Kwon | Dongjoon Hyun |
| [SPARK-29930](https://issues.apache.org/jira/browse/SPARK-29930) | Remove SQL configs declared to be removed in Spark 3.0 |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29807](https://issues.apache.org/jira/browse/SPARK-29807) | Rename "spark.sql.ansi.enabled" to "spark.sql.dialect.spark.ansi.enabled" |  Major | SQL | Yuanjian Li | Yuanjian Li |
| [SPARK-29020](https://issues.apache.org/jira/browse/SPARK-29020) | Unifying behaviour between array\_sort and sort\_array |  Major | SQL | German Schiavon Matteo | German Schiavon Matteo |
| [SPARK-29870](https://issues.apache.org/jira/browse/SPARK-29870) | Unify the logic of multi-units interval string to CalendarInterval |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-29948](https://issues.apache.org/jira/browse/SPARK-29948) | make the default alias consistent between date, timestamp and interval |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29964](https://issues.apache.org/jira/browse/SPARK-29964) | lintr github action failed due to buggy GnuPG |  Major | Build | L. C. Hsieh | L. C. Hsieh |
| [SPARK-29945](https://issues.apache.org/jira/browse/SPARK-29945) | do not handle negative sign specially in the parser |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29913](https://issues.apache.org/jira/browse/SPARK-29913) | Improve Exception in postgreCastToBoolean |  Minor | SQL | jobit mathew | jobit mathew |
| [SPARK-29968](https://issues.apache.org/jira/browse/SPARK-29968) | Remove the Predicate code from SparkPlan |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-29894](https://issues.apache.org/jira/browse/SPARK-29894) | Add Codegen Stage Id to Spark plan graphs in Web UI SQL Tab |  Minor | SQL, Web UI | Luca Canali | Luca Canali |
| [SPARK-29961](https://issues.apache.org/jira/browse/SPARK-29961) | Implement typeof builtin function |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-29885](https://issues.apache.org/jira/browse/SPARK-29885) | Improve the exception message when reading the daemon port |  Major | Spark Core | jiaan.geng | jiaan.geng |
| [SPARK-29942](https://issues.apache.org/jira/browse/SPARK-29942) | Impl Complement Naive Bayes Classifier |  Major | ML | zhengruifeng | zhengruifeng |
| [SPARK-29960](https://issues.apache.org/jira/browse/SPARK-29960) | MulticlassClassificationEvaluator support hammingLoss |  Minor | ML, PySpark | zhengruifeng | zhengruifeng |
| [SPARK-29977](https://issues.apache.org/jira/browse/SPARK-29977) | Remove newMutableProjection/newOrdering/newNaturalAscendingOrdering  from SparkPlan |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-29937](https://issues.apache.org/jira/browse/SPARK-29937) | Make FileSourceScanExec class fields lazy |  Minor | SQL | ulysses you | ulysses you |
| [SPARK-29939](https://issues.apache.org/jira/browse/SPARK-29939) | Add spark.shuffle.mapStatus.compression.codec conf |  Major | Spark Core | Xiao Li | wuyi |
| [SPARK-29986](https://issues.apache.org/jira/browse/SPARK-29986) | Introduce java like string trim to UTF8String |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-26260](https://issues.apache.org/jira/browse/SPARK-26260) | Task Summary Metrics for Stage Page: Efficient implementation for SHS when using disk store. |  Major | Spark Core | shahid | shahid |
| [SPARK-30032](https://issues.apache.org/jira/browse/SPARK-30032) | Upgrade to ORC 1.5.8 |  Major | Build, SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29979](https://issues.apache.org/jira/browse/SPARK-29979) | Add basic/reserved property key constants in Table and SupportsNamespaces |  Major | SQL | Hu Fuwang | Hu Fuwang |
| [SPARK-27651](https://issues.apache.org/jira/browse/SPARK-27651) | Avoid the network when block manager fetches shuffle blocks from the same host |  Major | Block Manager, Spark Core | Attila Zsolt Piros | Attila Zsolt Piros |
| [SPARK-29997](https://issues.apache.org/jira/browse/SPARK-29997) | Show job name for empty jobs in WebUI |  Minor | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-29877](https://issues.apache.org/jira/browse/SPARK-29877) | static PageRank allow checkPoint from previous computations |  Minor | GraphX | Joan Fontanals | Joan Fontanals |
| [SPARK-30057](https://issues.apache.org/jira/browse/SPARK-30057) | Add a statement of platforms that Spark runs on |  Trivial | Documentation | huangtianhua | huangtianhua |
| [SPARK-29956](https://issues.apache.org/jira/browse/SPARK-29956) | A literal number with an exponent should be converted into Double |  Major | SQL | wuyi | wuyi |
| [SPARK-29839](https://issues.apache.org/jira/browse/SPARK-29839) | Supporting STORED AS in CREATE TABLE LIKE |  Major | SQL | Lantao Jin | Lantao Jin |
| [SPARK-30047](https://issues.apache.org/jira/browse/SPARK-30047) | HashAggregate support for interval value aggs |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-27721](https://issues.apache.org/jira/browse/SPARK-27721) | spark ./build/mvn test failed on aarch64 |  Major | Tests | huangtianhua | huangtianhua |
| [SPARK-30072](https://issues.apache.org/jira/browse/SPARK-30072) | Create dedicated planner for subqueries |  Minor | SQL | Ali Afroozeh | Ali Afroozeh |
| [SPARK-29943](https://issues.apache.org/jira/browse/SPARK-29943) | Improve error messages for unsupported data type |  Trivial | SQL | dzcxzl | dzcxzl |
| [SPARK-30044](https://issues.apache.org/jira/browse/SPARK-30044) | MNB/CNB/BNB use empty matrix instead of null |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-29537](https://issues.apache.org/jira/browse/SPARK-29537) | throw exception when user defined a wrong base path |  Major | SQL | wuyi | wuyi |
| [SPARK-30106](https://issues.apache.org/jira/browse/SPARK-30106) | DynamicPartitionPruningSuite#"no predicate on the dimension table" is not be tested |  Minor | Tests | deshanxiao | deshanxiao |
| [SPARK-30060](https://issues.apache.org/jira/browse/SPARK-30060) | Uniform naming for Spark Metrics configuration parameters |  Minor | Documentation, Spark Core | Luca Canali | Luca Canali |
| [SPARK-29903](https://issues.apache.org/jira/browse/SPARK-29903) | Add documentation for recursiveFileLookup |  Minor | Documentation | Nicholas Chammas | Nicholas Chammas |
| [SPARK-30109](https://issues.apache.org/jira/browse/SPARK-30109) | PCA use BLAS.gemv with sparse vector |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-30091](https://issues.apache.org/jira/browse/SPARK-30091) | Document mergeSchema option directly in the Python Parquet APIs |  Minor | PySpark, SQL | Nicholas Chammas | Nicholas Chammas |
| [SPARK-30113](https://issues.apache.org/jira/browse/SPARK-30113) | Document mergeSchema option in Python Orc APIs |  Minor | PySpark, SQL | Nicholas Chammas | Nicholas Chammas |
| [SPARK-30084](https://issues.apache.org/jira/browse/SPARK-30084) | Add docs showing how to automatically rebuild Python API docs |  Minor | Build, Documentation | Nicholas Chammas | Nicholas Chammas |
| [SPARK-29860](https://issues.apache.org/jira/browse/SPARK-29860) | [SQL] Fix data type mismatch issue for inSubQuery |  Major | SQL | feiwang | feiwang |
| [SPARK-28961](https://issues.apache.org/jira/browse/SPARK-28961) | Upgrade Maven to 3.6.2 |  Major | Build | Xiao Li | Xiao Li |
| [SPARK-30124](https://issues.apache.org/jira/browse/SPARK-30124) | unnecessary persist in PythonMLLibAPI.scala |  Minor | MLlib | Aman Omer | Aman Omer |
| [SPARK-29966](https://issues.apache.org/jira/browse/SPARK-29966) | avoid load table twice |  Minor | SQL | ulysses you | Terry Kim |
| [SPARK-30142](https://issues.apache.org/jira/browse/SPARK-30142) | Upgrade Maven to 3.6.3 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30112](https://issues.apache.org/jira/browse/SPARK-30112) | Insert overwrite should be able to overwrite to same table under dynamic partition overwrite |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-30148](https://issues.apache.org/jira/browse/SPARK-30148) | Optimize writing plans if there is an analysis exception |  Minor | SQL | jobit mathew | Aman Omer |
| [SPARK-30156](https://issues.apache.org/jira/browse/SPARK-30156) | Upgrade Jersey from 2.29 to 2.29.1 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30163](https://issues.apache.org/jira/browse/SPARK-30163) | Use Google Maven mirror in GitHub Action |  Major | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29883](https://issues.apache.org/jira/browse/SPARK-29883) | Implement a helper method for aliasing bool\_and() and bool\_or() |  Major | SQL | Xiao Li | Aman Omer |
| [SPARK-30138](https://issues.apache.org/jira/browse/SPARK-30138) | Separate configuration key of max iterations for analyzer and optimizer |  Major | SQL | Hu Fuwang | Hu Fuwang |
| [SPARK-27189](https://issues.apache.org/jira/browse/SPARK-27189) | Add Executor metrics and memory usage instrumentation to the metrics system |  Minor | Spark Core | Luca Canali | Luca Canali |
| [SPARK-30146](https://issues.apache.org/jira/browse/SPARK-30146) | add setWeightCol to GBTs in PySpark |  Minor | ML, PySpark | Huaxin Gao | Huaxin Gao |
| [SPARK-30151](https://issues.apache.org/jira/browse/SPARK-30151) | Issue better error message when user-specified schema not match relation schema |  Major | SQL | wuyi | wuyi |
| [SPARK-29967](https://issues.apache.org/jira/browse/SPARK-29967) | KMeans support instance weighting |  Major | ML, PySpark | zhengruifeng | Huaxin Gao |
| [SPARK-30206](https://issues.apache.org/jira/browse/SPARK-30206) | Rename normalizeFilters in DataSourceStrategy to be generic |  Minor | SQL | Dongjoon Hyun | Anton Okolnychyi |
| [SPARK-30125](https://issues.apache.org/jira/browse/SPARK-30125) | Remove PostgreSQL dialect |  Major | SQL | Yuanjian Li | Yuanjian Li |
| [SPARK-30200](https://issues.apache.org/jira/browse/SPARK-30200) | Add ExplainMode for Dataset.explain |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-30205](https://issues.apache.org/jira/browse/SPARK-30205) | Import ABC from collections.abc to remove deprecation warnings |  Minor | PySpark | Karthikeyan Singaravelan | Karthikeyan Singaravelan |
| [SPARK-29976](https://issues.apache.org/jira/browse/SPARK-29976) | Allow speculation even if there is only one task |  Major | Spark Core | Yuchen Huo | Yuchen Huo |
| [SPARK-30211](https://issues.apache.org/jira/browse/SPARK-30211) | Use python3 in make-distribution.sh |  Major | Build | Yuming Wang | Yuming Wang |
| [SPARK-27506](https://issues.apache.org/jira/browse/SPARK-27506) | Function \`from\_avro\` doesn't allow deserialization of data using other compatible schemas |  Major | SQL | Gianluca Amori | Fokko Driesprong |
| [SPARK-30207](https://issues.apache.org/jira/browse/SPARK-30207) | Enhance the SQL NULL Semantics document |  Major | Documentation, SQL | Yuanjian Li | Yuanjian Li |
| [SPARK-29864](https://issues.apache.org/jira/browse/SPARK-29864) | Strict parsing of day-time strings to intervals |  Major | SQL | Maxim Gekk |  |
| [SPARK-30228](https://issues.apache.org/jira/browse/SPARK-30228) | Update zstd-jni to 1.4.4-3 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30150](https://issues.apache.org/jira/browse/SPARK-30150) | Manage resources (ADD/LIST) does not support quoted path |  Minor | SQL | jobit mathew | Rakesh Raushan |
| [SPARK-30107](https://issues.apache.org/jira/browse/SPARK-30107) | Expose nested schema pruning to all V2 sources |  Major | SQL | Anton Okolnychyi | Anton Okolnychyi |
| [SPARK-30231](https://issues.apache.org/jira/browse/SPARK-30231) | Support explain mode in PySpark df.explain |  Major | PySpark, SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-30227](https://issues.apache.org/jira/browse/SPARK-30227) | Add close() on DataWriter interface |  Major | Spark Core | Jungtaek Lim | Jungtaek Lim |
| [SPARK-30243](https://issues.apache.org/jira/browse/SPARK-30243) | Upgrade K8s client dependency to 4.6.4 |  Major | Build, Kubernetes, Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30216](https://issues.apache.org/jira/browse/SPARK-30216) | Use python3 in Docker release image |  Major | Project Infra | Yuming Wang | Yuming Wang |
| [SPARK-30066](https://issues.apache.org/jira/browse/SPARK-30066) | Columnar execution support for interval types |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-30240](https://issues.apache.org/jira/browse/SPARK-30240) | Spark UI redirects do not always work behind (dumb) proxies |  Minor | Web UI | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-30173](https://issues.apache.org/jira/browse/SPARK-30173) | Automatically close stale PRs |  Minor | Project Infra | Nicholas Chammas | Nicholas Chammas |
| [SPARK-30253](https://issues.apache.org/jira/browse/SPARK-30253) | Do not add commits when releasing preview version |  Major | Project Infra | Yuming Wang | Yuming Wang |
| [SPARK-30209](https://issues.apache.org/jira/browse/SPARK-30209) | Display stageId, attemptId, taskId with SQL max metric in UI |  Major | SQL, Web UI | Niranjan Artal | Niranjan Artal |
| [SPARK-25392](https://issues.apache.org/jira/browse/SPARK-25392) | [Spark Job History]Inconsistent behaviour for pool details in spark web UI and history server page |  Minor | Spark Core | ABHISHEK KUMAR GUPTA | shahid |
| [SPARK-30247](https://issues.apache.org/jira/browse/SPARK-30247) | GaussianMixtureModel in py side should expose gaussian |  Minor | PySpark | zhengruifeng | Huaxin Gao |
| [SPARK-30309](https://issues.apache.org/jira/browse/SPARK-30309) | Mark \`Filter\` as a \`sealed\` class |  Trivial | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30184](https://issues.apache.org/jira/browse/SPARK-30184) | Implement a helper method for aliasing functions |  Major | SQL | Aman Omer | Aman Omer |
| [SPARK-30272](https://issues.apache.org/jira/browse/SPARK-30272) | Remove usage of Guava that breaks in Guava 27 |  Major | Spark Core, SQL | Sean R. Owen | Sean R. Owen |
| [SPARK-28144](https://issues.apache.org/jira/browse/SPARK-28144) | Remove ZKUtils from Kafka tests |  Major | Structured Streaming, Tests | Gabor Somogyi | Jungtaek Lim |
| [SPARK-30128](https://issues.apache.org/jira/browse/SPARK-30128) | Promote remaining "hidden" PySpark DataFrameReader options to load APIs |  Minor | PySpark, SQL | Nicholas Chammas | Hyukjin Kwon |
| [SPARK-30178](https://issues.apache.org/jira/browse/SPARK-30178) | RobustScaler support bigger numFeatures |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-30290](https://issues.apache.org/jira/browse/SPARK-30290) | Count for merged block when fetch continuous blocks in batch |  Major | Spark Core | L. C. Hsieh | L. C. Hsieh |
| [SPARK-30347](https://issues.apache.org/jira/browse/SPARK-30347) | LibSVMDataSource attach AttributeGroup |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-30330](https://issues.apache.org/jira/browse/SPARK-30330) | Support single quotes json parsing for get\_json\_object and json\_tuple |  Major | SQL | Fang Wen | Fang Wen |
| [SPARK-30350](https://issues.apache.org/jira/browse/SPARK-30350) | Fix ScalaReflection to use an empty array for getting its class object |  Trivial | SQL | Kengo Seki | Kengo Seki |
| [SPARK-30102](https://issues.apache.org/jira/browse/SPARK-30102) | GMM supports instance weighting |  Minor | ML, PySpark | zhengruifeng | zhengruifeng |
| [SPARK-30278](https://issues.apache.org/jira/browse/SPARK-30278) | Update Spark SQL document menu for new changes |  Major | Documentation | Yuanjian Li | Yuanjian Li |
| [SPARK-30355](https://issues.apache.org/jira/browse/SPARK-30355) | Unify isExecutorActive between CoarseGrainedSchedulerBackend and DriverEndpoint |  Major | Spark Core | wuyi | wuyi |
| [SPARK-30356](https://issues.apache.org/jira/browse/SPARK-30356) | Codegen support for the function str\_to\_map |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-30354](https://issues.apache.org/jira/browse/SPARK-30354) | GBT reuse DecisionTreeMetadata among iterations |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-30342](https://issues.apache.org/jira/browse/SPARK-30342) | Update LIST JAR/FILE command |  Minor | SQL | Rakesh Raushan | Rakesh Raushan |
| [SPARK-30376](https://issues.apache.org/jira/browse/SPARK-30376) | Unify the computation of numFeatures |  Trivial | ML | zhengruifeng | zhengruifeng |
| [SPARK-30370](https://issues.apache.org/jira/browse/SPARK-30370) | Update SqlBase.g4 to combine namespace and database tokens. |  Minor | SQL | Terry Kim | Terry Kim |
| [SPARK-30383](https://issues.apache.org/jira/browse/SPARK-30383) | Remove meaning less tooltip from Executor Tab |  Minor | Web UI | ABHISHEK KUMAR GUPTA | Ankit Raj Boudh |
| [SPARK-30339](https://issues.apache.org/jira/browse/SPARK-30339) | Avoid to fail twice in function lookup |  Minor | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-30379](https://issues.apache.org/jira/browse/SPARK-30379) | Avoid OOM when using collection accumulator |  Major | Spark Core | L. C. Hsieh | L. C. Hsieh |
| [SPARK-30358](https://issues.apache.org/jira/browse/SPARK-30358) | ML expose predictRaw and predictProbability |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-30378](https://issues.apache.org/jira/browse/SPARK-30378) | FM support getter of training params |  Minor | ML, PySpark | zhengruifeng | Huaxin Gao |
| [SPARK-30380](https://issues.apache.org/jira/browse/SPARK-30380) | Refactor RandomForest.findSplits |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-30321](https://issues.apache.org/jira/browse/SPARK-30321) | log weightSum in Algo that has weights support |  Minor | ML | Huaxin Gao | Huaxin Gao |
| [SPARK-30336](https://issues.apache.org/jira/browse/SPARK-30336) | Move Kafka consumer related classes to its own package |  Minor | Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-30401](https://issues.apache.org/jira/browse/SPARK-30401) | Call requireNonStaticConf() only once |  Trivial | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30387](https://issues.apache.org/jira/browse/SPARK-30387) | Improve YarnClientSchedulerBackend log message |  Trivial | Spark Core, YARN | jobit mathew | jobit mathew |
| [SPARK-29568](https://issues.apache.org/jira/browse/SPARK-29568) | Add flag to stop existing stream when new copy starts |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-30384](https://issues.apache.org/jira/browse/SPARK-30384) | Needs to improve the Column name and tooltips for the Fair Scheduler Pool Table |  Minor | Web UI | ABHISHEK KUMAR GUPTA | Ankit Raj Boudh |
| [SPARK-30214](https://issues.apache.org/jira/browse/SPARK-30214) | A new framework to resolve v2 commands with a case of COMMENT ON syntax implementation |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-30359](https://issues.apache.org/jira/browse/SPARK-30359) | Do not clear executorsPendingToRemove in CoarseGrainedSchedulerBackend.reset |  Major | Spark Core | wuyi | wuyi |
| [SPARK-30390](https://issues.apache.org/jira/browse/SPARK-30390) | Avoid double caching in mllib.KMeans#runWithWeights. |  Minor | MLlib | Aman Omer | Aman Omer |
| [SPARK-30398](https://issues.apache.org/jira/browse/SPARK-30398) | PCA/RegressionMetrics/RowMatrix avoid unnecessary computation |  Major | ML, MLlib | zhengruifeng | zhengruifeng |
| [SPARK-30415](https://issues.apache.org/jira/browse/SPARK-30415) | Improve Readability of SQLConf Doc |  Trivial | SQL | Rakesh Raushan | Rakesh Raushan |
| [SPARK-30418](https://issues.apache.org/jira/browse/SPARK-30418) | make FM call super class method extractLabeledPoints |  Minor | ML | Huaxin Gao | Huaxin Gao |
| [SPARK-30226](https://issues.apache.org/jira/browse/SPARK-30226) | Remove withXXX functions in WriteBuilder |  Major | SQL | Ximo Guanter | Ximo Guanter |
| [SPARK-30433](https://issues.apache.org/jira/browse/SPARK-30433) | Make conflict attributes resolution more scalable in ResolveReferences |  Major | SQL | wuyi | wuyi |
| [SPARK-30414](https://issues.apache.org/jira/browse/SPARK-30414) | Optimizations for arrays and maps in ParquetRowConverter |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-30338](https://issues.apache.org/jira/browse/SPARK-30338) | Avoid unnecessary InternalRow copies in ParquetRowConverter |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-30431](https://issues.apache.org/jira/browse/SPARK-30431) | Update SqlBase.g4 to create commentSpec pattern as same as locationSpec |  Minor | SQL | Kent Yao | Kent Yao |
| [SPARK-30381](https://issues.apache.org/jira/browse/SPARK-30381) | GBT reuse treePoints for all trees |  Major | ML | zhengruifeng | zhengruifeng |
| [SPARK-30302](https://issues.apache.org/jira/browse/SPARK-30302) | Complete info for show create table for views |  Minor | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-30453](https://issues.apache.org/jira/browse/SPARK-30453) | Update AppVeyor R version to 3.6.2 |  Minor | Build, SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-30410](https://issues.apache.org/jira/browse/SPARK-30410) | Calculating size of table having large number of partitions causes flooding logs |  Trivial | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-30434](https://issues.apache.org/jira/browse/SPARK-30434) | Move pandas related functionalities into 'pandas' sub-package |  Major | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-30183](https://issues.apache.org/jira/browse/SPARK-30183) | Disallow to specify reserved properties in CREATE NAMESPACE syntax |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-30452](https://issues.apache.org/jira/browse/SPARK-30452) | Add predict and numFeatures in Python IsotonicRegressionModel |  Trivial | ML, PySpark | Huaxin Gao | Huaxin Gao |
| [SPARK-30416](https://issues.apache.org/jira/browse/SPARK-30416) | Log a warning for deprecated SQL config in \`set()\` and \`unset()\` |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30439](https://issues.apache.org/jira/browse/SPARK-30439) | support NOT NULL in column data type |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-30234](https://issues.apache.org/jira/browse/SPARK-30234) | ADD FILE can not add folder from Spark-sql |  Minor | SQL | Rakesh Raushan | Rakesh Raushan |
| [SPARK-30343](https://issues.apache.org/jira/browse/SPARK-30343) | Skip unnecessary checks in RewriteDistinctAggregates |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-30196](https://issues.apache.org/jira/browse/SPARK-30196) | Bump lz4-java version to 1.7.0 |  Major | Build, Spark Core | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-30468](https://issues.apache.org/jira/browse/SPARK-30468) | Use multiple lines to display data columns for show create table command |  Minor | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-30353](https://issues.apache.org/jira/browse/SPARK-30353) | Use constraints in SimplifyBinaryComparison optimization |  Minor | SQL | ulysses you | ulysses you |
| [SPARK-30457](https://issues.apache.org/jira/browse/SPARK-30457) | Use PeriodicRDDCheckpointer instead of NodeIdCache |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-30377](https://issues.apache.org/jira/browse/SPARK-30377) | Make Regressors extend abstract class Regressor |  Minor | ML | zhengruifeng | Huaxin Gao |
| [SPARK-30351](https://issues.apache.org/jira/browse/SPARK-30351) | BisectingKMeans support instance weighting |  Minor | ML, PySpark | zhengruifeng | Huaxin Gao |
| [SPARK-30292](https://issues.apache.org/jira/browse/SPARK-30292) | Throw Exception when invalid string is cast to decimal in ANSI mode |  Minor | SQL | Rakesh Raushan | Rakesh Raushan |
| [SPARK-30498](https://issues.apache.org/jira/browse/SPARK-30498) | Fix some ml parity issues between python and scala |  Minor | ML, PySpark | Huaxin Gao | Huaxin Gao |
| [SPARK-9478](https://issues.apache.org/jira/browse/SPARK-9478) | Add sample weights to Random Forest |  Major | ML | Patrick Crenshaw | zhengruifeng |
| [SPARK-26736](https://issues.apache.org/jira/browse/SPARK-26736) | if filter condition \`And\` has non-determined sub function it does not do partition prunning |  Minor | SQL | roncenzhao | Takeshi Yamamuro |
| [SPARK-30518](https://issues.apache.org/jira/browse/SPARK-30518) | Precision and scale should be same for values between -1.0 and 1.0 in Decimal |  Major | SQL | wuyi | wuyi |
| [SPARK-30502](https://issues.apache.org/jira/browse/SPARK-30502) | PeriodicRDDCheckpointer supports storageLevel |  Minor | ML, Spark Core | zhengruifeng | zhengruifeng |
| [SPARK-30323](https://issues.apache.org/jira/browse/SPARK-30323) | Support filters pushdown in CSV datasource |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30491](https://issues.apache.org/jira/browse/SPARK-30491) | Enable dependency audit files to tell dependency classifier |  Major | Spark Core | Xinrong Meng | Xinrong Meng |
| [SPARK-29950](https://issues.apache.org/jira/browse/SPARK-29950) | Deleted excess executors can connect back to driver in K8S with dyn alloc on |  Minor | Kubernetes, Spark Core | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-29572](https://issues.apache.org/jira/browse/SPARK-29572) | add v1 read fallback API in DS v2 |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-30041](https://issues.apache.org/jira/browse/SPARK-30041) | Add Codegen Stage Id to Stage DAG visualization in Web UI |  Minor | SQL, Web UI | Luca Canali | Luca Canali |
| [SPARK-29876](https://issues.apache.org/jira/browse/SPARK-29876) | Delete/archive file source completed files in separate thread |  Major | Structured Streaming | Gabor Somogyi | Gabor Somogyi |
| [SPARK-25993](https://issues.apache.org/jira/browse/SPARK-25993) | Add test cases for CREATE EXTERNAL TABLE with subdirectories |  Major | SQL, Tests | Xiao Li | kevin yu |
| [SPARK-30539](https://issues.apache.org/jira/browse/SPARK-30539) | DataFrame.tail in PySpark API |  Major | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-30371](https://issues.apache.org/jira/browse/SPARK-30371) | make KUBERNETES\_MASTER\_INTERNAL\_URL configurable |  Trivial | Kubernetes, Spark Core | xushiwei | xushiwei |
| [SPARK-30413](https://issues.apache.org/jira/browse/SPARK-30413) | Avoid unnecessary WrappedArray roundtrip in GenericArrayData constructor |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-30554](https://issues.apache.org/jira/browse/SPARK-30554) | Return Iterable from FailureSafeParser.rawParser |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30558](https://issues.apache.org/jira/browse/SPARK-30558) | Avoid rebuilding \`AvroOptions\` per each partition |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30578](https://issues.apache.org/jira/browse/SPARK-30578) | Explicitly set conf to use datasource v2 for v2.3/OrcFilterSuite |  Major | SQL, Tests | wuyi | wuyi |
| [SPARK-30475](https://issues.apache.org/jira/browse/SPARK-30475) | File source V2: Push data filters for file listing |  Major | SQL | Guy Khazma | Guy Khazma |
| [SPARK-30252](https://issues.apache.org/jira/browse/SPARK-30252) | Disallow negative scale of Decimal under ansi mode |  Major | SQL | wuyi | wuyi |
| [SPARK-28264](https://issues.apache.org/jira/browse/SPARK-28264) | Revisiting Python / pandas UDF |  Blocker | PySpark, SQL | Reynold Xin | Hyukjin Kwon |
| [SPARK-30531](https://issues.apache.org/jira/browse/SPARK-30531) | Duplicate query plan on Spark UI SQL page |  Minor | Web UI | Enrico Minack | Enrico Minack |
| [SPARK-30609](https://issues.apache.org/jira/browse/SPARK-30609) | Allow default merge command resolution to be bypassed by DSv2 sources |  Major | SQL | Tathagata Das | Tathagata Das |
| [SPARK-30601](https://issues.apache.org/jira/browse/SPARK-30601) | Add a Google Maven Central as a primary repository |  Major | Build | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-30607](https://issues.apache.org/jira/browse/SPARK-30607) | overlay wrappers for SparkR and PySpark |  Minor | PySpark, SparkR, SQL | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-30605](https://issues.apache.org/jira/browse/SPARK-30605) | move defaultNamespace from SupportsNamespace to CatalogPlugin |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-30620](https://issues.apache.org/jira/browse/SPARK-30620) | avoid unnecessary serialization in AggregateExpression |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-30570](https://issues.apache.org/jira/browse/SPARK-30570) | Update scalafmt to 1.0.3 with onlyChangedFiles feature |  Minor | Build | Cody Koeninger | Cody Koeninger |
| [SPARK-30603](https://issues.apache.org/jira/browse/SPARK-30603) | Keep the reserved properties of namespaces and tables private |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-30626](https://issues.apache.org/jira/browse/SPARK-30626) | Add SPARK\_APPLICATION\_ID into driver pod env |  Minor | Kubernetes, Spark Core | Jiaxin Shan | Jiaxin Shan |
| [SPARK-30630](https://issues.apache.org/jira/browse/SPARK-30630) | Deprecate numTrees in GBT at 2.4.5 and remove it at 3.0.0 |  Minor | ML | Huaxin Gao | Huaxin Gao |
| [SPARK-30644](https://issues.apache.org/jira/browse/SPARK-30644) | Remove query index from the golden files of SQLQueryTestSuite |  Major | Tests | Xiao Li | Xiao Li |
| [SPARK-30314](https://issues.apache.org/jira/browse/SPARK-30314) | Add identifier and catalog information to DataSourceV2Relation |  Major | SQL | Yuchen Huo | Yuchen Huo |
| [SPARK-30640](https://issues.apache.org/jira/browse/SPARK-30640) | Prevent unnessary copies of data in Arrow to Pandas conversion with Timestamps |  Major | PySpark, SQL | Bryan Cutler | Bryan Cutler |
| [SPARK-30653](https://issues.apache.org/jira/browse/SPARK-30653) | EOL character enforcement for java/scala/xml/py/R files |  Minor | Project Infra | Jungtaek Lim | Jungtaek Lim |
| [SPARK-30625](https://issues.apache.org/jira/browse/SPARK-30625) | Add \`escapeChar\` parameter to the \`like\` function |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-28594](https://issues.apache.org/jira/browse/SPARK-28594) | Allow event logs for running streaming apps to be rolled over |  Major | Spark Core | Stephen Levett | Jungtaek Lim |
| [SPARK-30529](https://issues.apache.org/jira/browse/SPARK-30529) | Improve error messages when Executor dies before registering with driver |  Major | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-30665](https://issues.apache.org/jira/browse/SPARK-30665) | Eliminate pypandoc dependency |  Minor | Build, Documentation, PySpark | Nicholas Chammas | Nicholas Chammas |
| [SPARK-30674](https://issues.apache.org/jira/browse/SPARK-30674) | Use python3 in dev/lint-python |  Minor | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30680](https://issues.apache.org/jira/browse/SPARK-30680) | ResolvedNamespace does not require a namespace catalog |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29665](https://issues.apache.org/jira/browse/SPARK-29665) | refine the TableProvider interface |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-27747](https://issues.apache.org/jira/browse/SPARK-27747) | add a logical plan link in the physical plan |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-30638](https://issues.apache.org/jira/browse/SPARK-30638) | add resources as parameter to the PluginContext |  Major | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-30684](https://issues.apache.org/jira/browse/SPARK-30684) | Show the descripton of metrics for WholeStageCodegen in DAG viz |  Minor | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-27324](https://issues.apache.org/jira/browse/SPARK-27324) | document configurations related to executor metrics |  Major | Documentation | Wing Yew Poon | Wing Yew Poon |
| [SPARK-30508](https://issues.apache.org/jira/browse/SPARK-30508) | Add DataFrameReader.executeCommand API for external datasource |  Major | SQL | wuyi | wuyi |
| [SPARK-30695](https://issues.apache.org/jira/browse/SPARK-30695) | Upgrade Apache ORC to 1.5.9 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27946](https://issues.apache.org/jira/browse/SPARK-27946) | Hive DDL to Spark DDL conversion USING "show create table" |  Major | SQL | Xiao Li | L. C. Hsieh |
| [SPARK-30689](https://issues.apache.org/jira/browse/SPARK-30689) | Allow custom resource scheduling to work with YARN versions that don't support custom resource scheduling |  Major | Spark Core, YARN | Thomas Graves | Thomas Graves |
| [SPARK-30700](https://issues.apache.org/jira/browse/SPARK-30700) | NaiveBayesModel predict optimization |  Trivial | ML | zhengruifeng | zhengruifeng |
| [SPARK-24625](https://issues.apache.org/jira/browse/SPARK-24625) | put all the backward compatible behavior change configs under spark.sql.legacy.\* |  Major | SQL | Wenchen Fan |  |
| [SPARK-25531](https://issues.apache.org/jira/browse/SPARK-25531) | new write APIs for data source v2 |  Major | SQL | Wenchen Fan |  |
| [SPARK-30725](https://issues.apache.org/jira/browse/SPARK-30725) | Make all legacy SQL configs as internal configs |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-20964](https://issues.apache.org/jira/browse/SPARK-20964) | Make some keywords reserved along with the ANSI/SQL standard |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-30594](https://issues.apache.org/jira/browse/SPARK-30594) | Do not post SparkListenerBlockUpdated when updateBlockInfo returns false |  Major | Spark Core, Web UI | wuyi | wuyi |
| [SPARK-30715](https://issues.apache.org/jira/browse/SPARK-30715) | Upgrade fabric8 to 4.7.1 to support K8s 1.17 |  Major | Kubernetes, Spark Core | Onur Satici | Onur Satici |
| [SPARK-27262](https://issues.apache.org/jira/browse/SPARK-27262) | Add explicit UTF-8 Encoding to DESCRIPTION |  Trivial | R | Dongjoon Hyun | Michael Chirico |
| [SPARK-30729](https://issues.apache.org/jira/browse/SPARK-30729) | Eagerly filter out zombie TaskSetManager before offering resources |  Major | Spark Core | wuyi | wuyi |
| [SPARK-30510](https://issues.apache.org/jira/browse/SPARK-30510) | Publicly document options under spark.sql.\* |  Minor | Documentation, SQL | Nicholas Chammas | Hyukjin Kwon |
| [SPARK-30757](https://issues.apache.org/jira/browse/SPARK-30757) | Update the doc on TableCatalog.alterTable's behavior |  Major | SQL | Terry Kim | Terry Kim |
| [SPARK-30326](https://issues.apache.org/jira/browse/SPARK-30326) | Raise exception if analyzer exceed max iterations |  Major | SQL | Xin Wu | Xin Wu |
| [SPARK-30783](https://issues.apache.org/jira/browse/SPARK-30783) | Hive 2.3 profile should exclude hive-service-rpc |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-30788](https://issues.apache.org/jira/browse/SPARK-30788) | Support \`SimpleDateFormat\` and \`FastDateFormat\` as legacy date/timestamp formatters |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30760](https://issues.apache.org/jira/browse/SPARK-30760) | Port \`millisToDays\` and \`daysToMillis\` on Java 8 time API |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30790](https://issues.apache.org/jira/browse/SPARK-30790) | The datatype of map() should be map\<null,null\> |  Minor | SQL | Rakesh Raushan | Rakesh Raushan |
| [SPARK-30798](https://issues.apache.org/jira/browse/SPARK-30798) | Scope Session.active in QueryExecution |  Major | SQL | Ali Afroozeh | Ali Afroozeh |
| [SPARK-30806](https://issues.apache.org/jira/browse/SPARK-30806) | Evaluate once per group in UnboundedWindowFunctionFrame |  Minor | SQL | EdisonWang | EdisonWang |
| [SPARK-30832](https://issues.apache.org/jira/browse/SPARK-30832) | SQL function doc headers should link to anchors |  Trivial | Documentation, SQL | Nicholas Chammas | Nicholas Chammas |
| [SPARK-30863](https://issues.apache.org/jira/browse/SPARK-30863) | Distinguish Cast and AnsiCast in toString() |  Major | SQL | wuyi | wuyi |
| [SPARK-30812](https://issues.apache.org/jira/browse/SPARK-30812) | Revise boolean config name according to new config naming policy |  Major | Spark Core, SQL | wuyi | wuyi |
| [SPARK-30892](https://issues.apache.org/jira/browse/SPARK-30892) | Exclude spark.sql.variable.substitute.depth from removedSQLConfigs |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30861](https://issues.apache.org/jira/browse/SPARK-30861) | Deprecate constructor of SQLContext and getOrCreate in SQLContext at PySpark |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-30764](https://issues.apache.org/jira/browse/SPARK-30764) | Improve the readability of EXPLAIN FORMATTED style |  Major | SQL | Xin Wu | Xin Wu |
| [SPARK-30844](https://issues.apache.org/jira/browse/SPARK-30844) | Static partition should also follow StoreAssignmentPolicy when insert into table |  Major | SQL | wuyi | wuyi |
| [SPARK-30927](https://issues.apache.org/jira/browse/SPARK-30927) | StreamingQueryManager should avoid keeping reference to terminated StreamingQuery |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-30901](https://issues.apache.org/jira/browse/SPARK-30901) | [DOC] In streaming-kinesis-integration.md, the initialPosition method changed |  Minor | Documentation | DavidXU | DavidXU |
| [SPARK-30936](https://issues.apache.org/jira/browse/SPARK-30936) | Forwards-compatibility in JsonProtocol in broken |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-30919](https://issues.apache.org/jira/browse/SPARK-30919) | Make interval multiply and divide's overflow behavior consisitent with other interval operations |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-30943](https://issues.apache.org/jira/browse/SPARK-30943) | Show "batch ID" in tool tip string for Structured Streaming UI graphs |  Major | Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-30956](https://issues.apache.org/jira/browse/SPARK-30956) | Use intercept instead of try-catch to assert failures in IntervalUtilsSuite |  Minor | SQL | Kent Yao | Kent Yao |
| [SPARK-30995](https://issues.apache.org/jira/browse/SPARK-30995) | Latex doesn't work correctly in FMClassifier/FMRegressor Scala doc |  Minor | Documentation, ML | Huaxin Gao |  |
| [SPARK-30964](https://issues.apache.org/jira/browse/SPARK-30964) | Accelerate InMemoryStore with a new index |  Major | Spark Core, Web UI | Gengliang Wang | Gengliang Wang |
| [SPARK-31010](https://issues.apache.org/jira/browse/SPARK-31010) | forbid untyped scala UDF API by default |  Major | SQL | Wenchen Fan | wuyi |
| [SPARK-30994](https://issues.apache.org/jira/browse/SPARK-30994) | Update Xerces to 2.12.0 |  Minor | Spark Core | Sean R. Owen | Sean R. Owen |
| [SPARK-31024](https://issues.apache.org/jira/browse/SPARK-31024) | Allow specifying session catalog name (spark\_catalog) in qualified column names |  Major | SQL | Terry Kim | Terry Kim |
| [SPARK-31058](https://issues.apache.org/jira/browse/SPARK-31058) | Consolidate the implementation of quoteIfNeeded |  Major | SQL | DB Tsai | DB Tsai |
| [SPARK-31036](https://issues.apache.org/jira/browse/SPARK-31036) | Use stringArgs in Expression.toString to respect hidden parameters |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-31012](https://issues.apache.org/jira/browse/SPARK-31012) | Update ML 3.0 docs |  Minor | Documentation, ML, PySpark | Huaxin Gao | Huaxin Gao |
| [SPARK-31053](https://issues.apache.org/jira/browse/SPARK-31053) | mark connector API as Evolving |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31055](https://issues.apache.org/jira/browse/SPARK-31055) | Update config docs for shuffle local host reads to have dep on external shuffle service |  Major | Documentation | Thomas Graves | Thomas Graves |
| [SPARK-29199](https://issues.apache.org/jira/browse/SPARK-29199) | Add linters and license/dependency checkers to GitHub Action |  Minor | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30992](https://issues.apache.org/jira/browse/SPARK-30992) | Arrange scattered config of streaming module |  Major | DStreams | jiaan.geng | jiaan.geng |
| [SPARK-31079](https://issues.apache.org/jira/browse/SPARK-31079) | Add RuleExecutor metrics in Explain Formatted |  Major | SQL | Xin Wu | Xin Wu |
| [SPARK-31004](https://issues.apache.org/jira/browse/SPARK-31004) | Show message for empty Streaming Queries instead of empty timelines and histograms. |  Minor | Structured Streaming, Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-31135](https://issues.apache.org/jira/browse/SPARK-31135) | Upgrdade docker-client version to 8.14.1 |  Minor | Build, SQL, Tests | Gabor Somogyi | Gabor Somogyi |
| [SPARK-30944](https://issues.apache.org/jira/browse/SPARK-30944) | Use latest URL for Google Cloud Storage mirror of Maven Central |  Major | Build | Josh Rosen | Josh Rosen |
| [SPARK-29927](https://issues.apache.org/jira/browse/SPARK-29927) | Parse timestamps in microsecond precision by \`to\_timestamp\`, \`to\_unix\_timestamp\`, \`unix\_timestamp\` |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31019](https://issues.apache.org/jira/browse/SPARK-31019) | make it clear that people can deduplicate map keys |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-25083](https://issues.apache.org/jira/browse/SPARK-25083) | remove the type erasure hack in data source scan |  Major | SQL | Wenchen Fan |  |
| [SPARK-30954](https://issues.apache.org/jira/browse/SPARK-30954) | TreeModelWrappers class name do not correspond to file name |  Minor | ML, R | zhengruifeng | kevin yu |
| [SPARK-31119](https://issues.apache.org/jira/browse/SPARK-31119) | Add interval value support for extract expression as source |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-31187](https://issues.apache.org/jira/browse/SPARK-31187) | Sort the whole-stage codegen debug output by codegenStageId |  Minor | SQL | Kris Mok | Kris Mok |
| [SPARK-25121](https://issues.apache.org/jira/browse/SPARK-25121) | Support multi-part column name for hint resolution |  Major | SQL | Xiao Li | Takeshi Yamamuro |
| [SPARK-31195](https://issues.apache.org/jira/browse/SPARK-31195) | Reuse days rebase functions of DateTimeUtils in DaysWritable |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30773](https://issues.apache.org/jira/browse/SPARK-30773) | Support NativeBlas for level-1 routines |  Major | ML | Yan Ma | Yan Ma |
| [SPARK-31184](https://issues.apache.org/jira/browse/SPARK-31184) | Support getTablesByType API of Hive Client |  Major | SQL | Xin Wu | Xin Wu |
| [SPARK-31190](https://issues.apache.org/jira/browse/SPARK-31190) | ScalaReflection should not erasure user defined AnyVal type |  Major | SQL | wuyi | wuyi |
| [SPARK-31205](https://issues.apache.org/jira/browse/SPARK-31205) | support string literal as the second argument of date\_add/date\_sub functions |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31081](https://issues.apache.org/jira/browse/SPARK-31081) | Make display of stageId/stageAttemptId/taskId of sql metrics toggleable |  Major | Web UI | wuyi | Kousuke Saruta |
| [SPARK-31207](https://issues.apache.org/jira/browse/SPARK-31207) | Ensure the total number of blocks to fetch equals to the sum of local/hostLocal/remote blocks |  Major | Spark Core | Xingbo Jiang | Xingbo Jiang |
| [SPARK-31227](https://issues.apache.org/jira/browse/SPARK-31227) | Non-nullable null type should not coerce to nullable type |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-31259](https://issues.apache.org/jira/browse/SPARK-31259) | Fix log error of curRequestSize in ShuffleBlockFetcherIterator |  Minor | Spark Core | wuyi | wuyi |
| [SPARK-31204](https://issues.apache.org/jira/browse/SPARK-31204) | HiveResult compatibility for DatasourceV2 command |  Major | SQL | Juliusz Sompolski | Terry Kim |
| [SPARK-31275](https://issues.apache.org/jira/browse/SPARK-31275) | Improve the metrics format in ExecutionPage for StageId |  Minor | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-31060](https://issues.apache.org/jira/browse/SPARK-31060) | Handle column names containing \`dots\` in data source \`Filter\` |  Major | SQL | DB Tsai | DB Tsai |
| [SPARK-31225](https://issues.apache.org/jira/browse/SPARK-31225) | Override \`sql\` method for  OuterReference |  Minor | SQL | Kent Yao | Kent Yao |
| [SPARK-31277](https://issues.apache.org/jira/browse/SPARK-31277) | Migrate \`DateTimeTestUtils\` from \`TimeZone\` to \`ZoneId\` |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31200](https://issues.apache.org/jira/browse/SPARK-31200) | Docker image build fails with Mirror sync in progress? errors. |  Trivial | Kubernetes, Spark Core | Prashant Sharma | Prashant Sharma |
| [SPARK-31292](https://issues.apache.org/jira/browse/SPARK-31292) | Replace toSet.toSeq with distinct for readability |  Trivial | Spark Core, SQL | Kengo Seki | Kengo Seki |
| [SPARK-31313](https://issues.apache.org/jira/browse/SPARK-31313) | Add \`m01\` node name to support Minikube 1.8.x |  Major | Kubernetes, Spark Core, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31322](https://issues.apache.org/jira/browse/SPARK-31322) | rename QueryPlan.collectInPlanAndSubqueries to collectWithSubqueries |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31324](https://issues.apache.org/jira/browse/SPARK-31324) | StreamingQuery stop() timeout exception should include the stream ID |  Trivial | Structured Streaming | Mukul Murthy |  |
| [SPARK-31327](https://issues.apache.org/jira/browse/SPARK-31327) | write spark version to avro file metadata |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31224](https://issues.apache.org/jira/browse/SPARK-31224) | Support views in both SHOW CREATE TABLE and SHOW CREATE TABLE AS SERDE |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-31415](https://issues.apache.org/jira/browse/SPARK-31415) | builtin date-time functions/operations improvement |  Major | SQL | Wenchen Fan | Maxim Gekk |
| [SPARK-31424](https://issues.apache.org/jira/browse/SPARK-31424) | Rename AdaptiveSparkPlanHelper.collectInPlanAndSubqueries to collectWithSubqueries |  Minor | SQL | Dongjoon Hyun | Xiao Li |
| [SPARK-31398](https://issues.apache.org/jira/browse/SPARK-31398) | Speed up reading dates in ORC |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30953](https://issues.apache.org/jira/browse/SPARK-30953) | InsertAdaptiveSparkPlan should apply AQE on child plan of write commands |  Major | SQL | wuyi | wuyi |
| [SPARK-31344](https://issues.apache.org/jira/browse/SPARK-31344) | Polish implementation of barrier() and allGather() |  Major | PySpark, Spark Core | wuyi | wuyi |
| [SPARK-31425](https://issues.apache.org/jira/browse/SPARK-31425) | UnsafeKVExternalSorter/VariableLengthRowBasedKeyValueBatch should also respect UnsafeAlignedOffset |  Major | SQL | wuyi | wuyi |
| [SPARK-31469](https://issues.apache.org/jira/browse/SPARK-31469) | Make extract interval field ANSI compliance |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-31442](https://issues.apache.org/jira/browse/SPARK-31442) | Print shuffle id at coalesce partitions target size |  Minor | SQL | ulysses you | ulysses you |
| [SPARK-31476](https://issues.apache.org/jira/browse/SPARK-31476) | Add an ExpressionInfo entry for EXTRACT |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-31429](https://issues.apache.org/jira/browse/SPARK-31429) | Add additional fields in ExpressionDescription for more granular category in documentation |  Major | Documentation, SQL | Huaxin Gao | Takeshi Yamamuro |
| [SPARK-31474](https://issues.apache.org/jira/browse/SPARK-31474) | Consistancy between dayofweek/dow in extract expression and dayofweek function |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-31498](https://issues.apache.org/jira/browse/SPARK-31498) | Dump public static sql configurations through doc generation |  Major | Documentation, SQL | Kent Yao | Kent Yao |
| [SPARK-31507](https://issues.apache.org/jira/browse/SPARK-31507) | Remove millennium, century, decade, millisecond, microsecond and epoch from extract fucntion |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-31495](https://issues.apache.org/jira/browse/SPARK-31495) | Support formatted explain for Adaptive Query Execution |  Major | SQL | wuyi | wuyi |
| [SPARK-30804](https://issues.apache.org/jira/browse/SPARK-30804) | Measure and log elapsed time for "compact" operation in CompactibleFileStreamLog |  Major | Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-31510](https://issues.apache.org/jira/browse/SPARK-31510) | Set setwd in R documentation build |  Trivial | R | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-31516](https://issues.apache.org/jira/browse/SPARK-31516) | Non-existed metric hiveClientCalls.count of CodeGenerator in Monitoring Doc |  Minor | Documentation, Spark Core | ZHANG Wei | ZHANG Wei |
| [SPARK-31528](https://issues.apache.org/jira/browse/SPARK-31528) | Remove millennium, century, decade from  trunc/date\_trunc fucntions |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-31562](https://issues.apache.org/jira/browse/SPARK-31562) | Update ExpressionDescription for substring, current\_date, and current\_timestamp |  Major | Documentation, SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-31565](https://issues.apache.org/jira/browse/SPARK-31565) | Unify the font color of label among all DAG-viz. |  Minor | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-31388](https://issues.apache.org/jira/browse/SPARK-31388) | org.apache.spark.sql.hive.thriftserver.CliSuite result matching is flaky |  Major | SQL | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-31527](https://issues.apache.org/jira/browse/SPARK-31527) | date add/subtract interval only allow those day precision in ansi mode |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-31529](https://issues.apache.org/jira/browse/SPARK-31529) | Remove extra whitespaces in the formatted explain |  Major | SQL | wuyi | wuyi |
| [SPARK-31596](https://issues.apache.org/jira/browse/SPARK-31596) | Generate SQL Configurations from hive module to configuration doc |  Minor | Documentation, SQL | Kent Yao | Kent Yao |
| [SPARK-29492](https://issues.apache.org/jira/browse/SPARK-29492) | SparkThriftServer  can't support jar class as table serde class when executestatement in sync mode |  Major | SQL | angerszhu | angerszhu |
| [SPARK-31597](https://issues.apache.org/jira/browse/SPARK-31597) | extracting day from intervals should be interval.days + days in interval.microsecond |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-31372](https://issues.apache.org/jira/browse/SPARK-31372) | Display expression schema for double checkout alias |  Major | SQL | jiaan.geng | jiaan.geng |
| [SPARK-31619](https://issues.apache.org/jira/browse/SPARK-31619) | Rename config name "spark.dynamicAllocation.shuffleTimeout" to "spark.dynamicAllocation.shuffleTracking.timeout" |  Major | Spark Core | Xingbo Jiang | Xingbo Jiang |
| [SPARK-31626](https://issues.apache.org/jira/browse/SPARK-31626) | Port HIVE-10415: hive.start.cleanup.scratchdir configuration is not taking effect |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-31606](https://issues.apache.org/jira/browse/SPARK-31606) | reduce the perf regression of vectorized parquet reader caused by datetime rebase |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31644](https://issues.apache.org/jira/browse/SPARK-31644) | Make Spark's guava version configurable from the maven command line. |  Minor | Build | Steve Loughran | Steve Loughran |
| [SPARK-28303](https://issues.apache.org/jira/browse/SPARK-28303) | Support DELETE/UPDATE/MERGE Operations in DataSource V2 |  Major | SQL | Xianyin Xin | Xianyin Xin |
| [SPARK-31646](https://issues.apache.org/jira/browse/SPARK-31646) | Remove unused registeredConnections counter from ShuffleMetrics |  Minor | Deploy, Shuffle, Spark Core | Manu Zhang | Manu Zhang |
| [SPARK-31393](https://issues.apache.org/jira/browse/SPARK-31393) | Show the correct alias in schema for expression |  Major | SQL | jiaan.geng | jiaan.geng |
| [SPARK-31678](https://issues.apache.org/jira/browse/SPARK-31678) | PrintStackTrace for Spark SQL CLI when error occurs |  Minor | SQL | Kent Yao | Kent Yao |
| [SPARK-31610](https://issues.apache.org/jira/browse/SPARK-31610) | Expose hashFuncVersion property in HashingTF |  Major | ML | Weichen Xu | Weichen Xu |
| [SPARK-31701](https://issues.apache.org/jira/browse/SPARK-31701) | Bump up the minimum Arrow version as 0.15.1 in SparkR |  Minor | SparkR, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-31721](https://issues.apache.org/jira/browse/SPARK-31721) | Assert optimized plan is initialized before tracking the execution of planning |  Major | SQL | Ali Afroozeh | Ali Afroozeh |
| [SPARK-31748](https://issues.apache.org/jira/browse/SPARK-31748) | Document resource module in PySpark doc and rename/move classes |  Major | PySpark, Spark Core | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-31750](https://issues.apache.org/jira/browse/SPARK-31750) | Eliminate UpCast if child's dataType is DecimalType |  Major | SQL | wuyi | wuyi |
| [SPARK-31767](https://issues.apache.org/jira/browse/SPARK-31767) | Remove ResourceInformation in pyspark module's namespace |  Minor | PySpark, Spark Core | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-31766](https://issues.apache.org/jira/browse/SPARK-31766) | Add Spark version prefix to K8s UUID test image tag |  Minor | Kubernetes, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31780](https://issues.apache.org/jira/browse/SPARK-31780) | Add R test tag to exclude R K8s image building and test |  Minor | Kubernetes, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31785](https://issues.apache.org/jira/browse/SPARK-31785) | Add a helper function to test all parquet readers |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31807](https://issues.apache.org/jira/browse/SPARK-31807) | Use python 3 style in release-build.sh |  Minor | Project Infra | William Hyun | William Hyun |
| [SPARK-31792](https://issues.apache.org/jira/browse/SPARK-31792) | Introduce the structured streaming UI in the Web UI page |  Minor | Documentation | Xingcan Cui | Xingcan Cui |
| [SPARK-31839](https://issues.apache.org/jira/browse/SPARK-31839) | delete  duplicate code |  Minor | Tests | philipse | philipse |
| [SPARK-31874](https://issues.apache.org/jira/browse/SPARK-31874) | Use \`FastDateFormat\` as the legacy fractional formatter |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31849](https://issues.apache.org/jira/browse/SPARK-31849) | Improve Python exception messages to be more Pythonic |  Major | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-31889](https://issues.apache.org/jira/browse/SPARK-31889) | Docker release script does not allocate enough memory to reliably publish |  Critical | Build | Holden Karau | Holden Karau |
| [SPARK-31834](https://issues.apache.org/jira/browse/SPARK-31834) | Improve error message for incompatible data types |  Major | SQL | Yuming Wang | Zhu, Lipeng |
| [SPARK-31860](https://issues.apache.org/jira/browse/SPARK-31860) | Only push release tags on success |  Major | Build | Holden Karau | Holden Karau |
| [SPARK-31778](https://issues.apache.org/jira/browse/SPARK-31778) | Support cross-building docker images |  Major | Build | Holden Karau | Holden Karau |
| [SPARK-31878](https://issues.apache.org/jira/browse/SPARK-31878) | Create date formatter only once in HiveResult |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31853](https://issues.apache.org/jira/browse/SPARK-31853) | Mention removal of params mixins setter in migration guide |  Trivial | Documentation | Enrico Minack | Enrico Minack |
| [SPARK-28216](https://issues.apache.org/jira/browse/SPARK-28216) | Add calculate local directory size to SQLTestUtils |  Major | SQL | Yuming Wang | Yuming Wang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-25418](https://issues.apache.org/jira/browse/SPARK-25418) | The metadata of DataSource table should not include Hive-generated storage properties. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-25472](https://issues.apache.org/jira/browse/SPARK-25472) | Structured Streaming query.stop() doesn't always stop gracefully |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-25473](https://issues.apache.org/jira/browse/SPARK-25473) | PySpark ForeachWriter test fails on Python 3.6 and macOS High Serria |  Major | PySpark, Structured Streaming | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-25534](https://issues.apache.org/jira/browse/SPARK-25534) | Make \`SQLHelper\` trait |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-25541](https://issues.apache.org/jira/browse/SPARK-25541) | CaseInsensitiveMap should be serializable after '-' operator |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-25372](https://issues.apache.org/jira/browse/SPARK-25372) | Deprecate Yarn-specific configs in regards to keytab login for SparkSubmit |  Major | Kubernetes, Spark Core, YARN | Ilan Filonenko | Ilan Filonenko |
| [SPARK-25540](https://issues.apache.org/jira/browse/SPARK-25540) | Make HiveContext in PySpark behave as the same as Scala. |  Major | PySpark, SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-25525](https://issues.apache.org/jira/browse/SPARK-25525) | Do not update conf for existing SparkContext in SparkSession.getOrCreate. |  Major | PySpark, SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-25586](https://issues.apache.org/jira/browse/SPARK-25586) | toString method of GeneralizedLinearRegressionTrainingSummary runs in infinite loop throwing StackOverflowError |  Minor | MLlib, Spark Core | Ankur Gupta | Ankur Gupta |
| [SPARK-24601](https://issues.apache.org/jira/browse/SPARK-24601) | Bump Jackson version to 2.9.6 |  Major | Spark Core | Fokko Driesprong | Fokko Driesprong |
| [SPARK-17952](https://issues.apache.org/jira/browse/SPARK-17952) | SparkSession createDataFrame method throws exception for nested JavaBeans |  Major | . | Amit Baghel | Michal Šenkýř |
| [SPARK-25655](https://issues.apache.org/jira/browse/SPARK-25655) | Add Pspark-ganglia-lgpl to the scala style check |  Major | Build | Xiao Li | Xiao Li |
| [SPARK-25600](https://issues.apache.org/jira/browse/SPARK-25600) | Make use of TypeCoercion.findTightestCommonType while inferring CSV schema |  Minor | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-25461](https://issues.apache.org/jira/browse/SPARK-25461) | PySpark Pandas UDF outputs incorrect results when input columns contain None |  Major | PySpark | Chongyuan Xiang | L. C. Hsieh |
| [SPARK-25669](https://issues.apache.org/jira/browse/SPARK-25669) | Check CSV header only when it exists |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-25535](https://issues.apache.org/jira/browse/SPARK-25535) | Work around bad error checking in commons-crypto |  Major | Spark Core | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-25388](https://issues.apache.org/jira/browse/SPARK-25388) | checkEvaluation may miss incorrect nullable of DataType in the result |  Minor | Tests | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-25567](https://issues.apache.org/jira/browse/SPARK-25567) | [Spark Job History] Table listing in SQL Tab not display Sort Icon |  Minor | Web UI | ABHISHEK KUMAR GUPTA | shahid |
| [SPARK-25685](https://issues.apache.org/jira/browse/SPARK-25685) | Allow running tests in Jenkins in enterprise Git repository |  Minor | Build, Tests | Lantao Jin | Lantao Jin |
| [SPARK-19287](https://issues.apache.org/jira/browse/SPARK-19287) | JavaPairRDD flatMapValues requires function returning Iterable, not Iterator |  Minor | Java API | Sean R. Owen | Sean R. Owen |
| [SPARK-25710](https://issues.apache.org/jira/browse/SPARK-25710) | range should report metrics correctly |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-25579](https://issues.apache.org/jira/browse/SPARK-25579) | Use quoted attribute names if needed in pushed ORC predicates |  Blocker | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-25680](https://issues.apache.org/jira/browse/SPARK-25680) | SQL execution listener shouldn't happen on execution thread |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-25735](https://issues.apache.org/jira/browse/SPARK-25735) | Improve start-thriftserver.sh: print clean usage and exit with code 1 |  Minor | Spark Core | Gengliang Wang | Gengliang Wang |
| [SPARK-25003](https://issues.apache.org/jira/browse/SPARK-25003) | Pyspark Does not use Spark Sql Extensions |  Major | PySpark | Russell Spitzer | Russell Spitzer |
| [SPARK-25682](https://issues.apache.org/jira/browse/SPARK-25682) | Docker images generated from dev build and from dist tarball are different |  Minor | Kubernetes, Spark Core | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-25493](https://issues.apache.org/jira/browse/SPARK-25493) | CRLF Line Separators don't work in multiline CSVs |  Major | SQL | Justin Uang | Justin Uang |
| [SPARK-25745](https://issues.apache.org/jira/browse/SPARK-25745) | docker-image-tool.sh ignores errors from Docker |  Major | Deploy, Kubernetes, Spark Core | Rob Vesse | Rob Vesse |
| [SPARK-25730](https://issues.apache.org/jira/browse/SPARK-25730) | Kubernetes scheduler tries to read pod details that it just deleted |  Major | Kubernetes, Spark Core | Mike Kaplinskiy | Mike Kaplinskiy |
| [SPARK-25675](https://issues.apache.org/jira/browse/SPARK-25675) | [Spark Job History] Job UI page does not show pagination with one page |  Major | Web UI | ABHISHEK KUMAR GUPTA | Shivu Sondur |
| [SPARK-25753](https://issues.apache.org/jira/browse/SPARK-25753) | binaryFiles broken for small files |  Minor | Input/Output | liuxian | liuxian |
| [SPARK-25771](https://issues.apache.org/jira/browse/SPARK-25771) | Fix improper synchronization in PythonWorkerFactory |  Major | PySpark | Shixiong Zhu | Shixiong Zhu |
| [SPARK-25040](https://issues.apache.org/jira/browse/SPARK-25040) | Empty string should be disallowed for data types except for string and binary types in JSON |  Minor | SQL | Hyukjin Kwon | L. C. Hsieh |
| [SPARK-25791](https://issues.apache.org/jira/browse/SPARK-25791) | Datatype of serializers in RowEncoder should be accessible |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-25812](https://issues.apache.org/jira/browse/SPARK-25812) | Flaky test: PagedTableSuite.pageNavigation |  Major | Spark Core, Tests | Dongjoon Hyun | Gengliang Wang |
| [SPARK-25772](https://issues.apache.org/jira/browse/SPARK-25772) | Java encoders - switch fields on collectAsList |  Major | SQL | Tom | Vladimir Kuriatkov |
| [SPARK-24572](https://issues.apache.org/jira/browse/SPARK-24572) | "eager execution" for R shell, IDE |  Major | SparkR | Felix Cheung | Weiqiang Zhuang |
| [SPARK-24794](https://issues.apache.org/jira/browse/SPARK-24794) | DriverWrapper should have both master addresses in -Dspark.master |  Major | Deploy | Behroz Sikander | Behroz Sikander |
| [SPARK-25854](https://issues.apache.org/jira/browse/SPARK-25854) | mvn helper script always exits w/1, causing mvn builds to fail |  Critical | Build | Shane Knapp | Shane Knapp |
| [SPARK-16693](https://issues.apache.org/jira/browse/SPARK-16693) | Remove R deprecated methods |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-25817](https://issues.apache.org/jira/browse/SPARK-25817) | Dataset encoder should support combination of map and product type |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-25767](https://issues.apache.org/jira/browse/SPARK-25767) | Error reported in Spark logs when using the org.apache.spark:spark-sql\_2.11:2.3.2 Java library |  Major | SQL | Thomas Brugiere | Peter Toth |
| [SPARK-25837](https://issues.apache.org/jira/browse/SPARK-25837) | Web UI does not respect spark.ui.retainedJobs in some instances |  Minor | Web UI | Patrick Brown | Patrick Brown |
| [SPARK-25918](https://issues.apache.org/jira/browse/SPARK-25918) | LOAD DATA LOCAL INPATH should handle a relative path |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-25909](https://issues.apache.org/jira/browse/SPARK-25909) | Error in documentation: number of cluster managers |  Trivial | Documentation | James Lamb | James Lamb |
| [SPARK-25827](https://issues.apache.org/jira/browse/SPARK-25827) | Replicating a block \> 2gb with encryption fails |  Major | Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-25901](https://issues.apache.org/jira/browse/SPARK-25901) | Barrier mode spawns a bunch of threads that get collected on gc |  Major | Spark Core | yogesh garg |  |
| [SPARK-25776](https://issues.apache.org/jira/browse/SPARK-25776) | The disk write buffer size must be greater than 12. |  Minor | Spark Core | liuxian | liuxian |
| [SPARK-25850](https://issues.apache.org/jira/browse/SPARK-25850) | Make the split threshold for the code generated method configurable |  Major | SQL | yucai | yucai |
| [SPARK-25930](https://issues.apache.org/jira/browse/SPARK-25930) | Fix scala version string detection when maven-help-plugin is not pre-installed |  Minor | Kubernetes, Spark Core | Stavros Kontopoulos | Stavros Kontopoulos |
| [SPARK-22148](https://issues.apache.org/jira/browse/SPARK-22148) | TaskSetManager.abortIfCompletelyBlacklisted should not abort when all current executors are blacklisted but dynamic allocation is enabled |  Major | Scheduler, Spark Core | Juan Rodríguez Hortalá | Dhruve Ashar |
| [SPARK-25866](https://issues.apache.org/jira/browse/SPARK-25866) | Update KMeans formatVersion |  Minor | MLlib | Marco Gaido | Marco Gaido |
| [SPARK-25950](https://issues.apache.org/jira/browse/SPARK-25950) | from\_csv should respect to spark.sql.columnNameOfCorruptRecord |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-25098](https://issues.apache.org/jira/browse/SPARK-25098) | Trim the string when cast stringToTimestamp and stringToDate |  Major | SQL | ice bai | Yuming Wang |
| [SPARK-25952](https://issues.apache.org/jira/browse/SPARK-25952) | from\_json returns wrong result if corrupt record column is in the middle of schema |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-25988](https://issues.apache.org/jira/browse/SPARK-25988) | Keep names unchanged when deduplicating the column names in Analyzer |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-25979](https://issues.apache.org/jira/browse/SPARK-25979) | Window function: allow parentheses around window reference |  Minor | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-26005](https://issues.apache.org/jira/browse/SPARK-26005) | Upgrade ANTRL to 4.7.1 |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-26007](https://issues.apache.org/jira/browse/SPARK-26007) | DataFrameReader.csv() should respect to spark.sql.columnNameOfCorruptRecord |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-25921](https://issues.apache.org/jira/browse/SPARK-25921) | Python worker reuse causes Barrier tasks to run without BarrierTaskContext |  Critical | PySpark, Spark Core | Bago Amirbekian | Yuanjian Li |
| [SPARK-25482](https://issues.apache.org/jira/browse/SPARK-25482) | Fast equal can not check reuseSubquery when apply rule about ReuseSubquery |  Minor | Optimizer, SQL | GuangWeiHong | Marco Gaido |
| [SPARK-25942](https://issues.apache.org/jira/browse/SPARK-25942) | Aggregate expressions shouldn't be resolved on AppendColumns |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-26057](https://issues.apache.org/jira/browse/SPARK-26057) | Table joining is broken in Spark 2.4 |  Major | SQL | Pavel Parkhomenko | Marco Gaido |
| [SPARK-26044](https://issues.apache.org/jira/browse/SPARK-26044) | Aggregate Metrics table is not sorted properly based on executor ID |  Minor | Web UI | ABHISHEK KUMAR GUPTA | shahid |
| [SPARK-26011](https://issues.apache.org/jira/browse/SPARK-26011) | pyspark app with "spark.jars.packages" config does not work |  Major | Spark Submit | shanyu zhao | shanyu zhao |
| [SPARK-25934](https://issues.apache.org/jira/browse/SPARK-25934) | Mesos: SPARK\_CONF\_DIR should not be propogated by spark submit |  Major | Mesos | Matt Molek | Matt Molek |
| [SPARK-26092](https://issues.apache.org/jira/browse/SPARK-26092) | Use CheckpointFileManager to write the streaming metadata file |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-26095](https://issues.apache.org/jira/browse/SPARK-26095) | make-distribution.sh is hanging in jenkins |  Critical | Build | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-25959](https://issues.apache.org/jira/browse/SPARK-25959) | Difference in featureImportances results on computed vs saved models |  Major | ML, MLlib | Suraj Nayak | Marco Gaido |
| [SPARK-26068](https://issues.apache.org/jira/browse/SPARK-26068) | ChunkedByteBufferInputStream is truncated by empty chunk |  Major | Spark Core | Liu, Linhong | Liu, Linhong |
| [SPARK-26112](https://issues.apache.org/jira/browse/SPARK-26112) | Update since versions of new built-in functions. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-26024](https://issues.apache.org/jira/browse/SPARK-26024) | Dataset API: repartitionByRange(...) has inconsistent behaviour |  Major | SQL | Julien Peloton | Julien Peloton |
| [SPARK-26071](https://issues.apache.org/jira/browse/SPARK-26071) | disallow map as map key |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-26079](https://issues.apache.org/jira/browse/SPARK-26079) | Flaky test: StreamingQueryListenersConfSuite |  Minor | SQL, Tests | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-26084](https://issues.apache.org/jira/browse/SPARK-26084) | AggregateExpression.references fails on unresolved expression trees |  Major | SQL | Simeon Simeonov | Simeon Simeonov |
| [SPARK-26109](https://issues.apache.org/jira/browse/SPARK-26109) | Duration in the task summary metrics table and the task table are different |  Minor | Spark Core, Web UI | shahid | shahid |
| [SPARK-26085](https://issues.apache.org/jira/browse/SPARK-26085) | Key attribute of primitive type under typed aggregation should be named as "key" too |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-26144](https://issues.apache.org/jira/browse/SPARK-26144) | \`build/mvn\` should detect \`scala.version\` based on \`scala.binary.version\` |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-26021](https://issues.apache.org/jira/browse/SPARK-26021) | -0.0 and 0.0 not treated consistently, doesn't match Hive |  Critical | SQL | Sean R. Owen | Alon Doron |
| [SPARK-26038](https://issues.apache.org/jira/browse/SPARK-26038) | Decimal toScalaBigInt/toJavaBigInteger not work for decimals not fitting in long |  Major | SQL | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-25786](https://issues.apache.org/jira/browse/SPARK-25786) | If the ByteBuffer.hasArray is false , it will throw UnsupportedOperationException for Kryo |  Minor | Spark Core | liuxian | liuxian |
| [SPARK-25451](https://issues.apache.org/jira/browse/SPARK-25451) | Stages page doesn't show the right number of the total tasks |  Major | Web UI | zuotingbing | shahid |
| [SPARK-26100](https://issues.apache.org/jira/browse/SPARK-26100) | [History server ]Jobs table and Aggregate metrics table are showing lesser number of tasks |  Major | Spark Core, Web UI | ABHISHEK KUMAR GUPTA | shahid |
| [SPARK-26159](https://issues.apache.org/jira/browse/SPARK-26159) | Codegen for LocalTableScanExec |  Major | SQL | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-26114](https://issues.apache.org/jira/browse/SPARK-26114) | Memory leak of PartitionedPairBuffer when coalescing after repartitionAndSortWithinPartitions |  Major | Spark Core | Sergey Zhemzhitsky | Sergey Zhemzhitsky |
| [SPARK-26147](https://issues.apache.org/jira/browse/SPARK-26147) | Python UDFs in join condition fail even when using columns from only one side of join |  Major | PySpark | Ala Luszczak | Wenchen Fan |
| [SPARK-26137](https://issues.apache.org/jira/browse/SPARK-26137) | Linux file separator is hard coded in DependencyUtils used in deploy process |  Major | Deploy | Mark Pavey | Mark Pavey |
| [SPARK-25989](https://issues.apache.org/jira/browse/SPARK-25989) | OneVsRestModel handle empty outputCols incorrectly |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-25829](https://issues.apache.org/jira/browse/SPARK-25829) | remove duplicated map keys with last wins policy |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-26211](https://issues.apache.org/jira/browse/SPARK-26211) | Fix InSet for binary, and struct and array with null. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-26186](https://issues.apache.org/jira/browse/SPARK-26186) | In progress applications with last updated time is lesser than the cleaning interval are getting removed during cleaning logs |  Major | Spark Core | shahid | shahid |
| [SPARK-26184](https://issues.apache.org/jira/browse/SPARK-26184) | Last updated time is not getting updated in the History Server UI |  Major | Spark Core, Web UI | ABHISHEK KUMAR GUPTA | shahid |
| [SPARK-26188](https://issues.apache.org/jira/browse/SPARK-26188) | Spark 2.4.0 Partitioning behavior breaks backwards compatibility |  Critical | SQL | Damien Doucet-Girard | Gengliang Wang |
| [SPARK-26201](https://issues.apache.org/jira/browse/SPARK-26201) | python broadcast.value on driver fails with disk encryption enabled |  Major | PySpark | Thomas Graves | Sanket Chintapalli |
| [SPARK-26219](https://issues.apache.org/jira/browse/SPARK-26219) | Executor summary is not getting updated for failure jobs in history server UI |  Major | Spark Core | shahid | shahid |
| [SPARK-26195](https://issues.apache.org/jira/browse/SPARK-26195) | Correct exception messages in some classes |  Minor | SQL | lichaoqun | lichaoqun |
| [SPARK-26208](https://issues.apache.org/jira/browse/SPARK-26208) | Empty dataframe does not roundtrip for csv with header |  Minor | SQL | koert kuipers | Koert Kuipers |
| [SPARK-26080](https://issues.apache.org/jira/browse/SPARK-26080) | Unable to run worker.py on Windows |  Blocker | PySpark | Hayden Jeune | Hyukjin Kwon |
| [SPARK-26198](https://issues.apache.org/jira/browse/SPARK-26198) | Metadata serialize null values throw NPE |  Minor | SQL | Yuming Wang | Yuming Wang |
| [SPARK-26253](https://issues.apache.org/jira/browse/SPARK-26253) | Task Summary Metrics Table on Stage Page shows empty table when no data is present |  Minor | Web UI | Parth Gandhi | Parth Gandhi |
| [SPARK-26181](https://issues.apache.org/jira/browse/SPARK-26181) | the \`hasMinMaxStats\` method of \`ColumnStatsMap\` is not correct |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-25498](https://issues.apache.org/jira/browse/SPARK-25498) | Fix SQLQueryTestSuite failures when the interpreter mode enabled |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-26256](https://issues.apache.org/jira/browse/SPARK-26256) | Add proper labels when deleting pods |  Major | Kubernetes, Spark Core | Stavros Kontopoulos | Stavros Kontopoulos |
| [SPARK-26083](https://issues.apache.org/jira/browse/SPARK-26083) | Pyspark command is not working properly with default Docker Image build |  Minor | Kubernetes, Spark Core | Qi Shao | Qi Shao |
| [SPARK-26233](https://issues.apache.org/jira/browse/SPARK-26233) | Incorrect decimal value with java beans and first/last/max... functions |  Blocker | SQL | Miquel Canes | Marco Gaido |
| [SPARK-26119](https://issues.apache.org/jira/browse/SPARK-26119) | Task metrics summary in the stage page should contain only successful tasks metrics |  Major | Spark Core, Web UI | ABHISHEK KUMAR GUPTA | shahid |
| [SPARK-26196](https://issues.apache.org/jira/browse/SPARK-26196) | Total tasks message in the stage is incorrect, when there are failed or killed tasks |  Major | Web UI | shahid | shahid |
| [SPARK-26281](https://issues.apache.org/jira/browse/SPARK-26281) | Duration column of task table should be executor run time instead of real duration |  Minor | Web UI | Gengliang Wang | shahid |
| [SPARK-26283](https://issues.apache.org/jira/browse/SPARK-26283) | When zstd compression enabled, Inprogress application in the history server appUI showing finished job as running |  Major | Spark Core, Web UI | ABHISHEK KUMAR GUPTA | shahid |
| [SPARK-26307](https://issues.apache.org/jira/browse/SPARK-26307) | Fix CTAS when INSERT a partitioned table using Hive serde |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-26317](https://issues.apache.org/jira/browse/SPARK-26317) | Upgrade SBT to 0.13.18 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-26293](https://issues.apache.org/jira/browse/SPARK-26293) | Cast exception when having python udf in subquery |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-26265](https://issues.apache.org/jira/browse/SPARK-26265) | deadlock between TaskMemoryManager and BytesToBytesMap$MapIterator |  Major | Spark Core | qian han | L. C. Hsieh |
| [SPARK-25277](https://issues.apache.org/jira/browse/SPARK-25277) | YARN applicationMaster metrics should not register static and JVM metrics |  Minor | Spark Core, YARN | Luca Canali | Luca Canali |
| [SPARK-26355](https://issues.apache.org/jira/browse/SPARK-26355) | Add a workaround for PyArrow 0.11. |  Major | PySpark, SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-26370](https://issues.apache.org/jira/browse/SPARK-26370) | Fix resolution of higher-order function for the same identifier. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-26315](https://issues.apache.org/jira/browse/SPARK-26315) | auto cast threshold from Integer to Float in approxSimilarityJoin of BucketedRandomProjectionLSHModel |  Minor | MLlib, PySpark | Song Ci | Song Ci |
| [SPARK-26078](https://issues.apache.org/jira/browse/SPARK-26078) | WHERE .. IN fails to filter rows when used in combination with UNION |  Blocker | SQL | Arttu Voutilainen | Marco Gaido |
| [SPARK-26372](https://issues.apache.org/jira/browse/SPARK-26372) | CSV parsing uses previous good value for bad input field |  Major | SQL | Bruce Robbins | Bruce Robbins |
| [SPARK-26352](https://issues.apache.org/jira/browse/SPARK-26352) | Join reordering should not change the order of output attributes |  Major | SQL | Kris Mok | Kris Mok |
| [SPARK-26255](https://issues.apache.org/jira/browse/SPARK-26255) | Custom error/exception is not thrown for the SQL tab when UI filters are added in spark-sql launch |  Major | SQL, Web UI | Sushanta Sen | Chakravarthi |
| [SPARK-24680](https://issues.apache.org/jira/browse/SPARK-24680) | spark.executorEnv.JAVA\_HOME does not take effect in Standalone mode |  Minor | Deploy | StanZhai | StanZhai |
| [SPARK-26382](https://issues.apache.org/jira/browse/SPARK-26382) | prefix sorter should handle -0.0 |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-26394](https://issues.apache.org/jira/browse/SPARK-26394) | Annotation error for Utils.timeStringAsMs |  Trivial | Documentation, Spark Core | Jackey Lee | Jackey Lee |
| [SPARK-26366](https://issues.apache.org/jira/browse/SPARK-26366) | Except with transform regression |  Major | Spark Core, SQL | Dan Osipov | Marco Gaido |
| [SPARK-25271](https://issues.apache.org/jira/browse/SPARK-25271) | Creating parquet table with all the column null throws exception |  Critical | SQL | Shivu Sondur | L. C. Hsieh |
| [SPARK-26308](https://issues.apache.org/jira/browse/SPARK-26308) | Large BigDecimal value is converted to null when passed into a UDF |  Major | SQL | Jay Pranavamurthi | Marco Gaido |
| [SPARK-24687](https://issues.apache.org/jira/browse/SPARK-24687) | When NoClassDefError thrown during task serialization will cause job hang |  Major | Spark Core | zhoukang | zhoukang |
| [SPARK-26422](https://issues.apache.org/jira/browse/SPARK-26422) | Unable to disable Hive support in SparkR when Hadoop version is unsupported |  Major | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-26269](https://issues.apache.org/jira/browse/SPARK-26269) | YarnAllocator should have same blacklist behaviour with YARN to maxmize use of cluster resource |  Minor | Spark Core, YARN | wuyi | wuyi |
| [SPARK-26427](https://issues.apache.org/jira/browse/SPARK-26427) | Upgrade Apache ORC to 1.5.4 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-26426](https://issues.apache.org/jira/browse/SPARK-26426) | ExpressionInfo related unit tests fail in Windows |  Major | SQL | Wang Yanlin | Wang Yanlin |
| [SPARK-26451](https://issues.apache.org/jira/browse/SPARK-26451) | Change lead/lag argument name from count to offset |  Minor | PySpark, SQL | Deepyaman Datta | Deepyaman Datta |
| [SPARK-26437](https://issues.apache.org/jira/browse/SPARK-26437) | Decimal data becomes bigint to query, unable to query |  Major | SQL | zengxl |  |
| [SPARK-26444](https://issues.apache.org/jira/browse/SPARK-26444) | Stage color doesn't change with it's status |  Minor | Web UI | Chenxiao Mao | Chenxiao Mao |
| [SPARK-26496](https://issues.apache.org/jira/browse/SPARK-26496) | Avoid to use Random.nextString in StreamingInnerJoinSuite |  Minor | Structured Streaming, Tests | Bruce Robbins | Hyukjin Kwon |
| [SPARK-26499](https://issues.apache.org/jira/browse/SPARK-26499) | JdbcUtils.makeGetter does not handle ByteType |  Major | SQL | Thomas D'Silva | Thomas D'Silva |
| [SPARK-23390](https://issues.apache.org/jira/browse/SPARK-23390) | Flaky test: FileBasedDataSourceSuite |  Critical | SQL | Sameer Agarwal | Dongjoon Hyun |
| [SPARK-23458](https://issues.apache.org/jira/browse/SPARK-23458) |  Flaky test: OrcQuerySuite |  Major | SQL, Tests | Marco Gaido | Dongjoon Hyun |
| [SPARK-26403](https://issues.apache.org/jira/browse/SPARK-26403) | DataFrame pivot using array column fails with "Unsupported literal type class" |  Minor | SQL | Huon Wilson | Hyukjin Kwon |
| [SPARK-26501](https://issues.apache.org/jira/browse/SPARK-26501) | Unexpected overriden of exitFn in SparkSubmitSuite |  Minor | Deploy, Spark Core | liupengcheng | liupengcheng |
| [SPARK-26526](https://issues.apache.org/jira/browse/SPARK-26526) | test case for SPARK-10316 is not valid any more |  Major | SQL, Tests | Liu, Linhong | Liu, Linhong |
| [SPARK-26306](https://issues.apache.org/jira/browse/SPARK-26306) | Flaky test: org.apache.spark.util.collection.SorterSuite |  Minor | Tests | Gabor Somogyi | Sean R. Owen |
| [SPARK-26545](https://issues.apache.org/jira/browse/SPARK-26545) | Fix typo in EqualNullSafe's truth table comment |  Trivial | SQL | Kris Mok | Kris Mok |
| [SPARK-26537](https://issues.apache.org/jira/browse/SPARK-26537) | update the release scripts to point to gitbox |  Major | Build | Shane Knapp | Shane Knapp |
| [SPARK-26339](https://issues.apache.org/jira/browse/SPARK-26339) | Behavior of reading files that start with underscore is confusing |  Minor | SQL | Keiichi Hirobe | Keiichi Hirobe |
| [SPARK-26554](https://issues.apache.org/jira/browse/SPARK-26554) | Update \`release-util.sh\` to avoid GitBox fake 200 headers |  Blocker | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-26559](https://issues.apache.org/jira/browse/SPARK-26559) | ML image can't work with numpy versions prior to 1.9 |  Major | ML, PySpark | L. C. Hsieh | L. C. Hsieh |
| [SPARK-26267](https://issues.apache.org/jira/browse/SPARK-26267) | Kafka source may reprocess data |  Blocker | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-26323](https://issues.apache.org/jira/browse/SPARK-26323) | check input types of ScalaUDF even if some inputs are of Any type |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-26002](https://issues.apache.org/jira/browse/SPARK-26002) | SQL date operators calculates with incorrect dayOfYears for dates before 1500-03-01 |  Major | SQL | Attila Zsolt Piros | Attila Zsolt Piros |
| [SPARK-26571](https://issues.apache.org/jira/browse/SPARK-26571) | Update Hive Serde mapping with canonical name of Parquet and Orc FileFormat |  Minor | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-26549](https://issues.apache.org/jira/browse/SPARK-26549) | PySpark worker reuse take no effect for parallelize xrange |  Major | PySpark | Yuanjian Li | Yuanjian Li |
| [SPARK-26414](https://issues.apache.org/jira/browse/SPARK-26414) | Race between SparkContext and YARN AM can cause NPE in UI setup code |  Minor | Spark Core, YARN | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-26583](https://issues.apache.org/jira/browse/SPARK-26583) | Add \`paranamer\` dependency to \`core\` module |  Major | Build, Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-26576](https://issues.apache.org/jira/browse/SPARK-26576) | Broadcast hint not applied to partitioned table |  Major | SQL | John Zhuge | John Zhuge |
| [SPARK-26551](https://issues.apache.org/jira/browse/SPARK-26551) | Selecting one complex field and having is null predicate on another complex field can cause error |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-26586](https://issues.apache.org/jira/browse/SPARK-26586) | Streaming queries should have isolated SparkSessions and confs |  Major | SQL, Structured Streaming | Mukul Murthy | Mukul Murthy |
| [SPARK-26538](https://issues.apache.org/jira/browse/SPARK-26538) | Postgres numeric array support |  Minor | SQL | Oleksii Shkarupin | Oleksii Shkarupin |
| [SPARK-26564](https://issues.apache.org/jira/browse/SPARK-26564) | Fix wrong assertions and error messages for parameter checking |  Minor | MLlib, Spark Core, SQL | Kengo Seki | Kengo Seki |
| [SPARK-26592](https://issues.apache.org/jira/browse/SPARK-26592) | Kafka delegation token doesn't support proxy user |  Major | Structured Streaming | Gabor Somogyi | Gabor Somogyi |
| [SPARK-17928](https://issues.apache.org/jira/browse/SPARK-17928) | No driver.memoryOverhead setting for mesos cluster mode |  Major | Mesos | Drew Robb | Devaraj Kavali |
| [SPARK-26615](https://issues.apache.org/jira/browse/SPARK-26615) | Fixing transport server/client resource leaks in the core unittests |  Major | Spark Core | Attila Zsolt Piros | Attila Zsolt Piros |
| [SPARK-25992](https://issues.apache.org/jira/browse/SPARK-25992) | Accumulators giving KeyError in pyspark |  Major | PySpark | Abdeali Kothari |  |
| [SPARK-26629](https://issues.apache.org/jira/browse/SPARK-26629) | Error with multiple file stream in a query + restart on a batch that has no data for one file stream |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-26625](https://issues.apache.org/jira/browse/SPARK-26625) | spark.redaction.regex should include oauthToken |  Critical | Kubernetes, Spark Core | Vinoo Ganesh |  |
| [SPARK-26638](https://issues.apache.org/jira/browse/SPARK-26638) | Pyspark vector classes always return error for unary negation |  Major | ML, PySpark | Sean R. Owen | Sean R. Owen |
| [SPARK-26659](https://issues.apache.org/jira/browse/SPARK-26659) | Duplicate cmd.nodeName in the explain output of DataWritingCommandExec |  Trivial | SQL | Kris Mok | Kris Mok |
| [SPARK-26645](https://issues.apache.org/jira/browse/SPARK-26645) | CSV infer schema bug infers decimal(9,-1) |  Minor | SQL | Ohad Raviv | Marco Gaido |
| [SPARK-26351](https://issues.apache.org/jira/browse/SPARK-26351) | Documented formula of precision at k does not match the actual code |  Minor | Documentation, MLlib | Pablo J. Villacorta | shahid |
| [SPARK-26665](https://issues.apache.org/jira/browse/SPARK-26665) | BlockTransferService.fetchBlockSync may hang forever |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-26661](https://issues.apache.org/jira/browse/SPARK-26661) | Show actual class name of the writing command in CTAS explain |  Trivial | SQL | Kris Mok | Kris Mok |
| [SPARK-24484](https://issues.apache.org/jira/browse/SPARK-24484) | Power Iteration Clustering is giving incorrect clustering results when there are mutiple leading eigen values. |  Major | ML, MLlib | shahid | shahid |
| [SPARK-26228](https://issues.apache.org/jira/browse/SPARK-26228) | OOM issue encountered when computing Gramian matrix |  Major | MLlib | Chen Lin | Sean R. Owen |
| [SPARK-26682](https://issues.apache.org/jira/browse/SPARK-26682) | Task attempt ID collision causes lost data |  Blocker | SQL | Ryan Blue | Ryan Blue |
| [SPARK-26680](https://issues.apache.org/jira/browse/SPARK-26680) | StackOverflowError if Stream passed to groupBy |  Major | SQL | Bruce Robbins | Bruce Robbins |
| [SPARK-26690](https://issues.apache.org/jira/browse/SPARK-26690) | Checkpoints of Dataframes are not visible in the SQL UI |  Major | SQL | Tom van Bussel | Tom van Bussel |
| [SPARK-26694](https://issues.apache.org/jira/browse/SPARK-26694) | Console progress bar not showing in 3.0 |  Critical | Spark Core | Marcelo Masiero Vanzin | Ankur Gupta |
| [SPARK-26711](https://issues.apache.org/jira/browse/SPARK-26711) | JSON Schema inference takes 15 times longer |  Major | SQL | Bruce Robbins | Bruce Robbins |
| [SPARK-26709](https://issues.apache.org/jira/browse/SPARK-26709) | OptimizeMetadataOnlyQuery does not correctly handle the files with zero record |  Blocker | SQL | Xiao Li | Gengliang Wang |
| [SPARK-26379](https://issues.apache.org/jira/browse/SPARK-26379) | Use dummy TimeZoneId for CurrentTimestamp to avoid UnresolvedException in CurrentBatchTimestamp |  Major | Structured Streaming | Kailash Gupta | Jungtaek Lim |
| [SPARK-26713](https://issues.apache.org/jira/browse/SPARK-26713) | PipedRDD may holds stdin writer and stdout read threads even if the task is finished |  Major | Spark Core | Xianjin YE | Xianjin YE |
| [SPARK-26708](https://issues.apache.org/jira/browse/SPARK-26708) | Incorrect result caused by inconsistency between a SQL cache's cached RDD and its physical plan |  Blocker | SQL | Xiao Li | Wei Xue |
| [SPARK-26718](https://issues.apache.org/jira/browse/SPARK-26718) | Fixed integer overflow in SS kafka rateLimit calculation |  Major | Structured Streaming | Ryne Yang | Ryne Yang |
| [SPARK-26776](https://issues.apache.org/jira/browse/SPARK-26776) | Reduce Py4J communication cost in PySpark's execution barrier check |  Minor | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-26732](https://issues.apache.org/jira/browse/SPARK-26732) | Flaky test: SparkContextInfoSuite.getRDDStorageInfo only reports on RDDs that actually persist data |  Major | Tests | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-26753](https://issues.apache.org/jira/browse/SPARK-26753) | Log4j customization not working for spark-shell |  Major | Spark Core | Ankur Gupta | Ankur Gupta |
| [SPARK-26737](https://issues.apache.org/jira/browse/SPARK-26737) | Executor/Task STDERR & STDOUT log urls are not correct in Yarn deployment mode |  Major | Spark Core, Web UI, YARN | Devaraj Kavali | Jungtaek Lim |
| [SPARK-26745](https://issues.apache.org/jira/browse/SPARK-26745) | Non-parsing Dataset.count() optimization causes inconsistent results for JSON inputs with empty lines |  Blocker | SQL | Branden Smith | Hyukjin Kwon |
| [SPARK-26726](https://issues.apache.org/jira/browse/SPARK-26726) |   Synchronize the amount of memory used by the broadcast variable to the UI display |  Major | Spark Core | hantiantian | hantiantian |
| [SPARK-26799](https://issues.apache.org/jira/browse/SPARK-26799) | Make ANTLR v4 version consistent between Maven and SBT |  Minor | Build | Chenxiao Mao | Chenxiao Mao |
| [SPARK-26757](https://issues.apache.org/jira/browse/SPARK-26757) | GraphX EdgeRDDImpl and VertexRDDImpl \`count\` method cannot handle empty RDDs |  Minor | GraphX | Huon Wilson | Huon Wilson |
| [SPARK-26806](https://issues.apache.org/jira/browse/SPARK-26806) | EventTimeStats.merge doesn't handle "zero.merge(zero)" correctly |  Major | Structured Streaming | Cheng Lian | Shixiong Zhu |
| [SPARK-26714](https://issues.apache.org/jira/browse/SPARK-26714) | The job whose partiton num is zero not shown in WebUI |  Minor | Web UI | deshanxiao | deshanxiao |
| [SPARK-26677](https://issues.apache.org/jira/browse/SPARK-26677) | Incorrect results of not(eqNullSafe) when data read from Parquet file |  Blocker | SQL | Michal Kapalka | Ryan Blue |
| [SPARK-26818](https://issues.apache.org/jira/browse/SPARK-26818) | Make MLEvents JSON ser/de safe |  Major | ML | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-26751](https://issues.apache.org/jira/browse/SPARK-26751) | HiveSessionImpl might have memory leak since Operation do not close properly |  Minor | SQL | zhoukang | zhoukang |
| [SPARK-26758](https://issues.apache.org/jira/browse/SPARK-26758) | Idle Executors are not getting killed after spark.dynamicAllocation.executorIdleTimeout value |  Major | Spark Core, YARN | ABHISHEK KUMAR GUPTA | Sandeep Katta |
| [SPARK-25692](https://issues.apache.org/jira/browse/SPARK-25692) | Remove static initialization of worker eventLoop handling chunk fetch requests within TransportContext |  Blocker | Spark Core | Shixiong Zhu | Sanket Reddy |
| [SPARK-26734](https://issues.apache.org/jira/browse/SPARK-26734) | StackOverflowError on WAL serialization caused by large receivedBlockQueue |  Major | Block Manager, DStreams, Spark Core | Ross M. Lodge | Ross M. Lodge |
| [SPARK-26082](https://issues.apache.org/jira/browse/SPARK-26082) | Misnaming of spark.mesos.fetch(er)Cache.enable in MesosClusterScheduler |  Major | Mesos | Martin Loncaric | Martin Loncaric |
| [SPARK-26740](https://issues.apache.org/jira/browse/SPARK-26740) | Statistics for date and timestamp columns depend on system time zone |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-25158](https://issues.apache.org/jira/browse/SPARK-25158) | Executor accidentally exit because ScriptTransformationWriterThread throws TaskKilledException. |  Major | SQL | Yang Jie | Yang Jie |
| [SPARK-26125](https://issues.apache.org/jira/browse/SPARK-26125) | Delegation Token seems not appropriately stored on secrets of Kubernetes/Kerberized HDFS |  Minor | Kubernetes, Spark Core | Kei Kori |  |
| [SPARK-26865](https://issues.apache.org/jira/browse/SPARK-26865) | DataSourceV2Strategy should push normalized filters |  Major | SQL | Wenchen Fan | Dongjoon Hyun |
| [SPARK-26650](https://issues.apache.org/jira/browse/SPARK-26650) | Yarn Client throws 'ClassNotFoundException: org.apache.hadoop.hbase.HBaseConfiguration' |  Major | Build, Spark Core, YARN | Devaraj Kavali | Marcelo Masiero Vanzin |
| [SPARK-26851](https://issues.apache.org/jira/browse/SPARK-26851) | CachedRDDBuilder only partially implements double-checked locking |  Minor | SQL | Bruce Robbins | Bruce Robbins |
| [SPARK-26794](https://issues.apache.org/jira/browse/SPARK-26794) | SparkSession enableHiveSupport does not point to hive but in-memory while the SparkContext exists |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-26873](https://issues.apache.org/jira/browse/SPARK-26873) | FileFormatWriter creates inconsistent MR job IDs |  Blocker | SQL | Ryan Blue | Ryan Blue |
| [SPARK-26840](https://issues.apache.org/jira/browse/SPARK-26840) | Avoid cost-based join reorder in presence of join hints |  Minor | SQL | Wei Xue | Wei Xue |
| [SPARK-26572](https://issues.apache.org/jira/browse/SPARK-26572) | Join on distinct column with monotonically\_increasing\_id produces wrong output |  Major | SQL | Sören Reichardt | Peter Toth |
| [SPARK-26870](https://issues.apache.org/jira/browse/SPARK-26870) | Java : Avro function to\_avro and from\_avro is undefined |  Major | Java API, SQL | Amit Baghel | Hyukjin Kwon |
| [SPARK-25922](https://issues.apache.org/jira/browse/SPARK-25922) | [K8] Spark Driver/Executor "spark-app-selector" label mismatch |  Major | Kubernetes, Spark Core | Anmol Khurana | Wang, Xinglong |
| [SPARK-26864](https://issues.apache.org/jira/browse/SPARK-26864) | Query may return incorrect result when python udf is used as a join condition and the udf uses attributes from both legs of left semi join. |  Major | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-26721](https://issues.apache.org/jira/browse/SPARK-26721) | Bug in feature importance calculation in GBM (and possibly other decision tree classifiers) |  Major | ML | Daniel Jumper | Marco Gaido |
| [SPARK-26878](https://issues.apache.org/jira/browse/SPARK-26878) | QueryTest.compare does not handle maps with array keys correctly |  Major | SQL, Tests | Ala Luszczak | Ala Luszczak |
| [SPARK-26887](https://issues.apache.org/jira/browse/SPARK-26887) | Create datetime.date directly instead of creating datetime64[ns] as intermediate data. |  Major | PySpark | Takuya Ueshin | Takuya Ueshin |
| [SPARK-26889](https://issues.apache.org/jira/browse/SPARK-26889) | Fix timestamp type in Structured Streaming + Kafka Integration Guide |  Trivial | Documentation, Structured Streaming | Gabor Somogyi | Gabor Somogyi |
| [SPARK-26909](https://issues.apache.org/jira/browse/SPARK-26909) | use unsafeRow.hashCode() as hash value in HashAggregate |  Major | SQL | yucai | yucai |
| [SPARK-26891](https://issues.apache.org/jira/browse/SPARK-26891) | Flaky test:YarnSchedulerBackendSuite."RequestExecutors reflects node blacklist and is serializable" |  Major | Spark Core, YARN | Attila Zsolt Piros | Attila Zsolt Piros |
| [SPARK-24894](https://issues.apache.org/jira/browse/SPARK-24894) | Invalid DNS name due to hostname truncation |  Major | Kubernetes, Spark Core | Dharmesh Kakadia | Marcelo Masiero Vanzin |
| [SPARK-26901](https://issues.apache.org/jira/browse/SPARK-26901) | Vectorized gapply should not prune columns |  Major | R, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-26859](https://issues.apache.org/jira/browse/SPARK-26859) | Fix field writer index bug in non-vectorized ORC deserializer |  Major | SQL | Ivan Vergiliev | Ivan Vergiliev |
| [SPARK-26892](https://issues.apache.org/jira/browse/SPARK-26892) | saveAsTextFile throws NullPointerException  when null row present |  Major | Spark Core | liupengcheng | liupengcheng |
| [SPARK-26824](https://issues.apache.org/jira/browse/SPARK-26824) | Streaming queries may store checkpoint data in a wrong directory |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-26950](https://issues.apache.org/jira/browse/SPARK-26950) | Make RandomDataGenerator use Float.NaN or Double.NaN for all NaN values |  Major | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-26930](https://issues.apache.org/jira/browse/SPARK-26930) | Tests in ParquetFilterSuite don't verify filter class |  Minor | SQL | Nándor Kollár | Nándor Kollár |
| [SPARK-26895](https://issues.apache.org/jira/browse/SPARK-26895) | When running spark 2.3 as a proxy user (--proxy-user), SparkSubmit fails to resolve globs owned by target user |  Critical | Spark Core | Alessandro Bellina | Alessandro Bellina |
| [SPARK-26945](https://issues.apache.org/jira/browse/SPARK-26945) | Python streaming tests flaky while cleaning temp directories after StreamingQuery.stop |  Minor | PySpark | Alessandro Bellina | Hyukjin Kwon |
| [SPARK-22860](https://issues.apache.org/jira/browse/SPARK-22860) | Spark workers log ssl passwords passed to the executors |  Major | Spark Core | Felix K. | Jungtaek Lim |
| [SPARK-22000](https://issues.apache.org/jira/browse/SPARK-22000) | org.codehaus.commons.compiler.CompileException: toString method is not declared |  Major | SQL | taiho choi | Jungtaek Lim |
| [SPARK-27000](https://issues.apache.org/jira/browse/SPARK-27000) | Global function that has the same name can't be overwritten in Python RDD API |  Critical | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-24736](https://issues.apache.org/jira/browse/SPARK-24736) | --py-files not functional for non local URLs. It appears to pass non-local URL's into PYTHONPATH directly. |  Minor | Kubernetes, PySpark, Spark Core | Jonathan A Weaver | Marcelo Masiero Vanzin |
| [SPARK-27002](https://issues.apache.org/jira/browse/SPARK-27002) | Latest kafka delegation token not always picked up |  Critical | Structured Streaming | Gabor Somogyi | Gabor Somogyi |
| [SPARK-26977](https://issues.apache.org/jira/browse/SPARK-26977) | Warn against subclassing scala.App doesn't work |  Minor | Spark Submit | Manu Zhang | Manu Zhang |
| [SPARK-26048](https://issues.apache.org/jira/browse/SPARK-26048) | Flume connector for Spark 2.4 does not exist in Maven repository |  Major | Deploy | Aki Tanaka | Marcelo Masiero Vanzin |
| [SPARK-24778](https://issues.apache.org/jira/browse/SPARK-24778) | DateTimeUtils.getTimeZone method returns GMT time if timezone cannot be parsed |  Major | SQL | Vinitha Reddy Gankidi |  |
| [SPARK-26995](https://issues.apache.org/jira/browse/SPARK-26995) | Running Spark in Docker image with Alpine Linux 3.9.0 throws errors when using snappy |  Minor | Kubernetes, Spark Core | Luca Canali | Luca Canali |
| [SPARK-27051](https://issues.apache.org/jira/browse/SPARK-27051) | Bump Jackson version to 2.9.8 |  Major | Spark Core | Yanbo Liang | Yanbo Liang |
| [SPARK-27012](https://issues.apache.org/jira/browse/SPARK-27012) | Storage tab shows rdd details even after executor ended |  Major | Spark Core, Web UI | Ajith S | Ajith S |
| [SPARK-27021](https://issues.apache.org/jira/browse/SPARK-27021) | Leaking Netty event loop group for shuffle chunk fetch requests |  Major | Spark Core | Attila Zsolt Piros | Attila Zsolt Piros |
| [SPARK-27015](https://issues.apache.org/jira/browse/SPARK-27015) | spark-submit does not properly escape arguments sent to Mesos dispatcher |  Major | Mesos | Martin Loncaric | Martin Loncaric |
| [SPARK-24669](https://issues.apache.org/jira/browse/SPARK-24669) | Managed table was not cleared of path after drop database cascade |  Major | SQL | Dong Jiang | Udbhav Agrawal |
| [SPARK-27065](https://issues.apache.org/jira/browse/SPARK-27065) | avoid more than one active task set managers for a stage |  Major | Scheduler, Spark Core | Wenchen Fan | Wenchen Fan |
| [SPARK-27019](https://issues.apache.org/jira/browse/SPARK-27019) | Spark UI's SQL tab shows inconsistent values |  Major | SQL, Web UI | peay | shahid |
| [SPARK-27078](https://issues.apache.org/jira/browse/SPARK-27078) | Read Hive materialized view throw MatchError |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-25863](https://issues.apache.org/jira/browse/SPARK-25863) | java.lang.UnsupportedOperationException: empty.max at org.apache.spark.sql.catalyst.expressions.codegen.CodeGenerator$.updateAndGetCompilationStats(CodeGenerator.scala:1475) |  Major | Optimizer, Spark Core | Ruslan Dautkhanov | Takeshi Yamamuro |
| [SPARK-27075](https://issues.apache.org/jira/browse/SPARK-27075) | Sorting table column in SQL WEBUI page throws 'IllegalArgumentException' |  Major | SQL, Web UI | shahid | shahid |
| [SPARK-24783](https://issues.apache.org/jira/browse/SPARK-24783) | spark.sql.shuffle.partitions=0 should throw exception |  Major | SQL | Avi minsky | Sean R. Owen |
| [SPARK-27080](https://issues.apache.org/jira/browse/SPARK-27080) | Read parquet file with merging metastore schema should compare schema field in uniform case. |  Major | SQL | BoMeng |  |
| [SPARK-27111](https://issues.apache.org/jira/browse/SPARK-27111) | A continuous query may fail with InterruptedException when kafka consumer temporally 0 partitions temporally |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-24621](https://issues.apache.org/jira/browse/SPARK-24621) | WebUI - application 'name' urls point to http instead of https (even when ssl enabled) |  Major | Web UI | t oo | Gabor Somogyi |
| [SPARK-27096](https://issues.apache.org/jira/browse/SPARK-27096) | Reconcile the join type support between data frame and sql interface |  Minor | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-27116](https://issues.apache.org/jira/browse/SPARK-27116) | Environment tab must sort Hadoop Configuration by default |  Minor | Web UI | Ajith S | Ajith S |
| [SPARK-26990](https://issues.apache.org/jira/browse/SPARK-26990) | Difference in handling of mixed-case partition column names after SPARK-26188 |  Major | SQL | Bruce Robbins | Gengliang Wang |
| [SPARK-27004](https://issues.apache.org/jira/browse/SPARK-27004) | Code for https uri authentication in Spark Submit needs to be removed |  Minor | Spark Core | Stavros Kontopoulos | Marcelo Masiero Vanzin |
| [SPARK-27073](https://issues.apache.org/jira/browse/SPARK-27073) | Fix a race condition when handling of IdleStateEvent |  Minor | Spark Core | dzcxzl |  |
| [SPARK-27117](https://issues.apache.org/jira/browse/SPARK-27117) | current\_date/current\_timestamp should be reserved keywords in ansi parser mode |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-27011](https://issues.apache.org/jira/browse/SPARK-27011) | reset command fails after cache table |  Minor | Spark Core, SQL | Ajith S | Ajith S |
| [SPARK-24486](https://issues.apache.org/jira/browse/SPARK-24486) | Slow performance reading ArrayType columns |  Minor | Spark Core, SQL | Luca Canali |  |
| [SPARK-27041](https://issues.apache.org/jira/browse/SPARK-27041) | large partition data cause pyspark with python2.x oom |  Major | PySpark | David Yang | David Yang |
| [SPARK-26927](https://issues.apache.org/jira/browse/SPARK-26927) | Race condition may cause dynamic allocation not working |  Major | Spark Core | liupengcheng | liupengcheng |
| [SPARK-26103](https://issues.apache.org/jira/browse/SPARK-26103) | OutOfMemory error with large query plans |  Major | SQL | Dave DeCaprio | Dave DeCaprio |
| [SPARK-26152](https://issues.apache.org/jira/browse/SPARK-26152) | Synchronize Worker Cleanup with Worker Shutdown |  Critical | Spark Core | Dongjoon Hyun | Ajith S |
| [SPARK-27165](https://issues.apache.org/jira/browse/SPARK-27165) | Upgrade Apache ORC to 1.5.5 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27107](https://issues.apache.org/jira/browse/SPARK-27107) | Spark SQL Job failing because of Kryo buffer overflow with ORC |  Major | SQL | Dhruve Ashar | Dongjoon Hyun |
| [SPARK-27159](https://issues.apache.org/jira/browse/SPARK-27159) | Update MsSqlServer dialect handling of BLOB type |  Minor | SQL | Zhu, Lipeng | Zhu, Lipeng |
| [SPARK-27134](https://issues.apache.org/jira/browse/SPARK-27134) | array\_distinct function does not work correctly with columns containing array of array |  Major | SQL | Mike Trenaman | Dilip Biswal |
| [SPARK-26941](https://issues.apache.org/jira/browse/SPARK-26941) | incorrect computation of maxNumExecutorFailures in ApplicationMaster for streaming |  Minor | Spark Core, YARN | liupengcheng | liupengcheng |
| [SPARK-27070](https://issues.apache.org/jira/browse/SPARK-27070) | DefaultPartitionCoalescer can lock up driver for hours |  Major | Spark Core | Yuli Fiterman | Yuli Fiterman |
| [SPARK-27164](https://issues.apache.org/jira/browse/SPARK-27164) | RDD.countApprox on empty RDDs schedules jobs which never complete |  Major | Spark Core | Ryan Moore | Ajith S |
| [SPARK-27112](https://issues.apache.org/jira/browse/SPARK-27112) | Spark Scheduler encounters two independent Deadlocks when trying to kill executors either due to dynamic allocation or blacklisting |  Major | Scheduler, Spark Core | Parth Gandhi | Parth Gandhi |
| [SPARK-27178](https://issues.apache.org/jira/browse/SPARK-27178) | k8s test failing due to missing nss library in dockerfile |  Major | Build, jenkins, Kubernetes, Spark Core | Shane Knapp | Shane Knapp |
| [SPARK-26555](https://issues.apache.org/jira/browse/SPARK-26555) | Thread safety issue causes createDataset to fail with misleading errors |  Major | SQL | Martin Loncaric | Martin Loncaric |
| [SPARK-27200](https://issues.apache.org/jira/browse/SPARK-27200) | History Environment tab must sort Configurations/Properties by default |  Minor | Web UI | Ajith S | Ajith S |
| [SPARK-27094](https://issues.apache.org/jira/browse/SPARK-27094) | Thread interrupt being swallowed while launching executors in YarnAllocator |  Minor | Spark Core, YARN | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-27160](https://issues.apache.org/jira/browse/SPARK-27160) | Incorrect Literal Casting of DecimalType in OrcFilters |  Major | SQL | Darcy Shen | Darcy Shen |
| [SPARK-27215](https://issues.apache.org/jira/browse/SPARK-27215) | Correct the kryo configurations |  Major | Spark Core | Lantao Jin | Lantao Jin |
| [SPARK-27205](https://issues.apache.org/jira/browse/SPARK-27205) | spark-shell with packages option fails to load transitive dependencies even ivy successfully pulls jars |  Major | Spark Core | Jungtaek Lim | Jungtaek Lim |
| [SPARK-27223](https://issues.apache.org/jira/browse/SPARK-27223) | Remove private methods that skip conversion when passing user schemas for constructing a DataFrame |  Minor | SQL | Wei Xue | Wei Xue |
| [SPARK-26894](https://issues.apache.org/jira/browse/SPARK-26894) | Fix Alias handling in AggregateEstimation |  Major | SQL | Venkata krishnan Sowrirajan | Venkata krishnan Sowrirajan |
| [SPARK-26606](https://issues.apache.org/jira/browse/SPARK-26606) | parameters passed in extraJavaOptions are not being picked up |  Major | Spark Submit | Ravindra | Jungtaek Lim |
| [SPARK-27243](https://issues.apache.org/jira/browse/SPARK-27243) | RuleExecutor throws exception when dumping time spent with no rule executed |  Trivial | SQL | Marco Gaido | Marco Gaido |
| [SPARK-23643](https://issues.apache.org/jira/browse/SPARK-23643) | XORShiftRandom.hashSeed allocates unnecessary memory |  Major | Spark Core | Maxim Gekk | Maxim Gekk |
| [SPARK-27251](https://issues.apache.org/jira/browse/SPARK-27251) | @volatile var cannot be defined in case class in Scala 2.11 |  Minor | Build, SQL | John Zhuge | Takeshi Yamamuro |
| [SPARK-27250](https://issues.apache.org/jira/browse/SPARK-27250) | Scala 2.11 maven compile should target Java 1.8 |  Minor | Build | John Zhuge | John Zhuge |
| [SPARK-24935](https://issues.apache.org/jira/browse/SPARK-24935) | Problem with Executing Hive UDF's from Spark 2.2 Onwards |  Major | SQL | Parth Gandhi | Parth Gandhi |
| [SPARK-27155](https://issues.apache.org/jira/browse/SPARK-27155) | Docker Oracle XE image docker image has been removed by DockerHub |  Major | Build | Zhu, Lipeng | Zhu, Lipeng |
| [SPARK-26961](https://issues.apache.org/jira/browse/SPARK-26961) | Found Java-level deadlock in Spark Driver |  Major | Spark Submit | Rong Jialei | Ajith S |
| [SPARK-27246](https://issues.apache.org/jira/browse/SPARK-27246) | scalar  subquery with no columns throws exception in spark.shell |  Minor | SQL | Chakravarthi | Sandeep Katta |
| [SPARK-27275](https://issues.apache.org/jira/browse/SPARK-27275) | Potential corruption in EncryptedMessage.transferTo |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-27279](https://issues.apache.org/jira/browse/SPARK-27279) | Reuse subquery should compare child node only |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-26914](https://issues.apache.org/jira/browse/SPARK-26914) | ThriftServer scheduler pool may be unpredictably when using fair schedule mode |  Major | SQL | zhoukang | zhoukang |
| [SPARK-27244](https://issues.apache.org/jira/browse/SPARK-27244) | Redact Passwords While Using Option logConf=true |  Minor | Spark Core | Ninad | Ninad |
| [SPARK-27267](https://issues.apache.org/jira/browse/SPARK-27267) | Snappy 1.1.7.1 fails when decompressing empty serialized data |  Minor | Block Manager, Spark Core | Max  Xie | Max  Xie |
| [SPARK-27301](https://issues.apache.org/jira/browse/SPARK-27301) | DStreamCheckpointData failed to clean up because it's fileSystem cached |  Major | DStreams, Spark Core | Kent Yao | Kent Yao |
| [SPARK-27253](https://issues.apache.org/jira/browse/SPARK-27253) | SparkSession clone discards SQLConf overrides in favor of SparkConf defaults |  Major | Structured Streaming | Jose Torres | Chakravarthi |
| [SPARK-26812](https://issues.apache.org/jira/browse/SPARK-26812) | PushProjectionThroughUnion nullability issue |  Major | SQL | Bogdan Raducanu | Marco Gaido |
| [SPARK-9792](https://issues.apache.org/jira/browse/SPARK-9792) | PySpark DenseMatrix, SparseMatrix should override \_\_eq\_\_ |  Critical | MLlib | Joseph K. Bradley |  |
| [SPARK-26224](https://issues.apache.org/jira/browse/SPARK-26224) | Results in stackOverFlowError when trying to add 3000 new columns using withColumn function of dataframe. |  Minor | SQL | Dorjee Tsering | Marco Gaido |
| [SPARK-26998](https://issues.apache.org/jira/browse/SPARK-26998) | spark.ssl.keyStorePassword in plaintext on 'ps -ef' output of executor processes in Standalone mode |  Major | Scheduler, Security, Spark Core | t oo | Gabor Somogyi |
| [SPARK-27216](https://issues.apache.org/jira/browse/SPARK-27216) | Upgrade RoaringBitmap to 0.7.45 to fix Kryo unsafe ser/dser issue |  Major | Spark Core | Lantao Jin | Lantao Jin |
| [SPARK-27338](https://issues.apache.org/jira/browse/SPARK-27338) | Deadlock between TaskMemoryManager and UnsafeExternalSorter$SpillableIterator |  Major | Spark Core | Venkata krishnan Sowrirajan | Venkata krishnan Sowrirajan |
| [SPARK-27390](https://issues.apache.org/jira/browse/SPARK-27390) | Fix package name mismatch |  Trivial | Spark Core, SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-26936](https://issues.apache.org/jira/browse/SPARK-26936) | On yarn-client mode, insert overwrite local directory can not create temporary path in local staging directory |  Major | SQL | jiaan.geng | jiaan.geng |
| [SPARK-27391](https://issues.apache.org/jira/browse/SPARK-27391) | deadlock in ContinuousExecution unit tests |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-26992](https://issues.apache.org/jira/browse/SPARK-26992) | Fix STS scheduler pool correct delivery |  Minor | SQL | dzcxzl | dzcxzl |
| [SPARK-25407](https://issues.apache.org/jira/browse/SPARK-25407) | Spark throws a \`ParquetDecodingException\` when attempting to read a field from a complex type in certain cases of schema merging |  Major | SQL | Michael MacFadden | Michael MacFadden |
| [SPARK-27411](https://issues.apache.org/jira/browse/SPARK-27411) | DataSourceV2Strategy should not eliminate subquery |  Major | SQL | Mingcong Han | Mingcong Han |
| [SPARK-27394](https://issues.apache.org/jira/browse/SPARK-27394) | The staleness of UI may last minutes or hours when no tasks start or finish |  Major | Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-27387](https://issues.apache.org/jira/browse/SPARK-27387) | Replace sqlutils assertPandasEqual with Pandas assert\_frame\_equal in tests |  Major | PySpark, Tests | Bryan Cutler | Bryan Cutler |
| [SPARK-24872](https://issues.apache.org/jira/browse/SPARK-24872) | Remove the symbol “\|\|” of the “OR” operation |  Minor | Spark Core | hantiantian | hantiantian |
| [SPARK-27406](https://issues.apache.org/jira/browse/SPARK-27406) | UnsafeArrayData serialization breaks when two machines have different Oops size |  Major | SQL | peng bo | peng bo |
| [SPARK-26012](https://issues.apache.org/jira/browse/SPARK-26012) | Dynamic partition will fail when both '' and null values are taken as dynamic partition values simultaneously. |  Major | SQL | eaton | eaton |
| [SPARK-27403](https://issues.apache.org/jira/browse/SPARK-27403) | Fix \`updateTableStats\` to update table stats always with new stats or None |  Major | SQL | Sujith Chacko | Sujith Chacko |
| [SPARK-27445](https://issues.apache.org/jira/browse/SPARK-27445) | Update SQLQueryTestSuite to process files ending with \`.sql\` |  Minor | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-27444](https://issues.apache.org/jira/browse/SPARK-27444) | multi-select can be used in subquery |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-27446](https://issues.apache.org/jira/browse/SPARK-27446) | RBackend always uses default values for spark confs |  Major | SparkR | Bago Amirbekian | Bago Amirbekian |
| [SPARK-27454](https://issues.apache.org/jira/browse/SPARK-27454) | Spark image datasource fail when encounter some illegal images |  Major | ML, SQL | Weichen Xu | Weichen Xu |
| [SPARK-25250](https://issues.apache.org/jira/browse/SPARK-25250) | Race condition with tasks running when new attempt for same stage is created leads to other task in the next attempt running on the same partition id retry multiple times |  Major | Scheduler, Spark Core | Parth Gandhi | Parth Gandhi |
| [SPARK-27453](https://issues.apache.org/jira/browse/SPARK-27453) | DataFrameWriter.partitionBy is Silently Dropped by DSV1 |  Critical | SQL | Michael Armbrust | Liwen Sun |
| [SPARK-27416](https://issues.apache.org/jira/browse/SPARK-27416) | UnsafeMapData & UnsafeArrayData Kryo serialization breaks when two machines have different Oops size |  Major | SQL | peng bo | peng bo |
| [SPARK-27430](https://issues.apache.org/jira/browse/SPARK-27430) | broadcast hint should be respected for broadcast nested loop join |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-27532](https://issues.apache.org/jira/browse/SPARK-27532) | Correct the default value in the Documentation for "spark.redaction.regex" |  Minor | Documentation | Shivu Sondur | Shivu Sondur |
| [SPARK-27496](https://issues.apache.org/jira/browse/SPARK-27496) | RPC should send back the fatal errors |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-27503](https://issues.apache.org/jira/browse/SPARK-27503) | JobGenerator thread exit for some fatal errors but application keeps running |  Major | DStreams | Genmao Yu | Genmao Yu |
| [SPARK-27512](https://issues.apache.org/jira/browse/SPARK-27512) | Decimal parsing leads to unexpected type inference |  Minor | SQL | koert kuipers | Hyukjin Kwon |
| [SPARK-27494](https://issues.apache.org/jira/browse/SPARK-27494) | Null keys/values don't work in Kafka source v2 |  Major | Structured Streaming | Shixiong Zhu | Genmao Yu |
| [SPARK-27477](https://issues.apache.org/jira/browse/SPARK-27477) | Kafka token provider should have provided dependency on Spark |  Trivial | SQL | koert kuipers | koert kuipers |
| [SPARK-27581](https://issues.apache.org/jira/browse/SPARK-27581) | DataFrame countDistinct("\*") fails with AnalysisException: "Invalid usage of '\*' in expression 'count'" |  Major | SQL | Josh Rosen | L. C. Hsieh |
| [SPARK-27575](https://issues.apache.org/jira/browse/SPARK-27575) | Spark overwrites existing value of spark.yarn.dist.\* instead of merging value |  Major | Spark Core, Spark Submit, YARN | Jungtaek Lim | Jungtaek Lim |
| [SPARK-27519](https://issues.apache.org/jira/browse/SPARK-27519) | Pandas udf corrupting data |  Major | PySpark | Jeff gold |  |
| [SPARK-27591](https://issues.apache.org/jira/browse/SPARK-27591) | A bug in UnivocityParser prevents using UDT |  Minor | SQL | Artem Kalchenko | Artem Kalchenko |
| [SPARK-27612](https://issues.apache.org/jira/browse/SPARK-27612) | Creating a DataFrame in PySpark with ArrayType produces some Rows with Arrays of None |  Blocker | PySpark, SQL | Bryan Cutler | Hyukjin Kwon |
| [SPARK-27626](https://issues.apache.org/jira/browse/SPARK-27626) | Fix \`docker-image-tool.sh\` to be robust in non-bash shell env |  Major | Kubernetes, Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27510](https://issues.apache.org/jira/browse/SPARK-27510) | Master fall into dead loop while launching executor failed in Worker |  Major | Spark Core | wuyi | wuyi |
| [SPARK-27621](https://issues.apache.org/jira/browse/SPARK-27621) | Calling transform() method on a LinearRegressionModel throws NoSuchElementException |  Minor | ML | Anca Sarb | Anca Sarb |
| [SPARK-27555](https://issues.apache.org/jira/browse/SPARK-27555) | cannot create table by using the hive default fileformat in both hive-site.xml and spark-defaults.conf |  Major | SQL | Hui WANG | Sandeep Katta |
| [SPARK-27629](https://issues.apache.org/jira/browse/SPARK-27629) | Prevent Unpickler from intervening each unpickling |  Major | PySpark | L. C. Hsieh | L. C. Hsieh |
| [SPARK-27596](https://issues.apache.org/jira/browse/SPARK-27596) | The JDBC 'query' option doesn't work for Oracle database |  Major | SQL | Xiao Li | Dilip Biswal |
| [SPARK-23299](https://issues.apache.org/jira/browse/SPARK-23299) | \_\_repr\_\_ broken for Rows instantiated with \*args |  Minor | PySpark | Oli Hall |  |
| [SPARK-27577](https://issues.apache.org/jira/browse/SPARK-27577) | Wrong thresholds selected by BinaryClassificationMetrics when downsampling |  Minor | MLlib | Shaochen Shi | Shaochen Shi |
| [SPARK-27590](https://issues.apache.org/jira/browse/SPARK-27590) | do not consider skipped tasks when scheduling speculative tasks |  Major | Spark Core | Wenchen Fan | Wenchen Fan |
| [SPARK-23961](https://issues.apache.org/jira/browse/SPARK-23961) | pyspark toLocalIterator throws an exception |  Minor | PySpark | Michel Lemay | Bryan Cutler |
| [SPARK-27548](https://issues.apache.org/jira/browse/SPARK-27548) | PySpark toLocalIterator does not raise errors from worker |  Major | PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-25139](https://issues.apache.org/jira/browse/SPARK-25139) | PythonRunner#WriterThread released block after TaskRunner finally block which  invoke BlockManager#releaseAllLocksForTask |  Major | Block Manager, Spark Core | DENG FEI | Xingbo Jiang |
| [SPARK-27624](https://issues.apache.org/jira/browse/SPARK-27624) | Fix CalenderInterval to show an empty interval correctly |  Minor | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27625](https://issues.apache.org/jira/browse/SPARK-27625) | ScalaReflection.serializerFor fails for annotated types |  Major | SQL | Patrick Grandjean | Marco Gaido |
| [SPARK-27347](https://issues.apache.org/jira/browse/SPARK-27347) | Fix supervised driver retry logic when agent crashes/restarts |  Major | Mesos | Sam Tran | Sam Tran |
| [SPARK-27671](https://issues.apache.org/jira/browse/SPARK-27671) | Fix error when casting from a nested null in a struct |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-27638](https://issues.apache.org/jira/browse/SPARK-27638) | date format yyyy-M-dd string comparison not handled properly |  Major | SQL | peng bo | peng bo |
| [SPARK-20774](https://issues.apache.org/jira/browse/SPARK-20774) | BroadcastExchangeExec doesn't cancel the Spark job if broadcasting a relation timeouts. |  Major | SQL | Shixiong Zhu | Xingbo Jiang |
| [SPARK-27036](https://issues.apache.org/jira/browse/SPARK-27036) | Even Broadcast thread is timed out, BroadCast Job is not aborted. |  Minor | SQL | Babulal | Xingbo Jiang |
| [SPARK-27674](https://issues.apache.org/jira/browse/SPARK-27674) | the hint should not be dropped after cache lookup |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-27735](https://issues.apache.org/jira/browse/SPARK-27735) | Interval string in upper case is not supported in Trigger |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-27552](https://issues.apache.org/jira/browse/SPARK-27552) | The configuration \`hive.exec.stagingdir\` is invalid on Windows OS |  Minor | SQL | liuxian | liuxian |
| [SPARK-13155](https://issues.apache.org/jira/browse/SPARK-13155) | add runtime null check when convert catalyst array to external array |  Major | SQL | Wenchen Fan |  |
| [SPARK-27786](https://issues.apache.org/jira/browse/SPARK-27786) | SHA1, MD5, and Base64 expression codegen doesn't work when commons-codec is shaded |  Minor | SQL | Josh Rosen | Josh Rosen |
| [SPARK-27762](https://issues.apache.org/jira/browse/SPARK-27762) | Support user provided avro schema for writing fields with different ordering |  Major | SQL | DB Tsai | DB Tsai |
| [SPARK-27439](https://issues.apache.org/jira/browse/SPARK-27439) | Explainging Dataset should show correct resolved plans |  Minor | SQL | xjl | L. C. Hsieh |
| [SPARK-27248](https://issues.apache.org/jira/browse/SPARK-27248) | REFRESH TABLE should recreate cache with same cache name and storage level |  Major | SQL | William Wong | William Wong |
| [SPARK-24586](https://issues.apache.org/jira/browse/SPARK-24586) | Upcast should not allow casting from string to other types |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-27778](https://issues.apache.org/jira/browse/SPARK-27778) | toPandas with arrow enabled fails for DF with no partitions |  Major | PySpark, SQL | David Vogelbacher | David Vogelbacher |
| [SPARK-27806](https://issues.apache.org/jira/browse/SPARK-27806) | byName/byPosition should apply to struct fields as well |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-26045](https://issues.apache.org/jira/browse/SPARK-26045) | Error in the spark 2.4 release package with the spark-avro\_2.11 depdency |  Blocker | Build | Oscar garcía | Sean R. Owen |
| [SPARK-27351](https://issues.apache.org/jira/browse/SPARK-27351) | Wrong outputRows estimation after AggregateEstimation with only null value column |  Major | SQL | peng bo | peng bo |
| [SPARK-27539](https://issues.apache.org/jira/browse/SPARK-27539) | Fix inaccurate aggregate outputRows estimation with column containing null values |  Major | SQL | peng bo | peng bo |
| [SPARK-27824](https://issues.apache.org/jira/browse/SPARK-27824) | Make rule EliminateResolvedHint idempotent |  Minor | SQL | Wei Xue | Wei Xue |
| [SPARK-27711](https://issues.apache.org/jira/browse/SPARK-27711) | InputFileBlockHolder should be unset at the end of tasks |  Major | PySpark, Spark Core | Jose Torres | Jose Torres |
| [SPARK-27782](https://issues.apache.org/jira/browse/SPARK-27782) | Use '#' to mark expression id embedded in the subquery name in the SubqueryExec operator. |  Minor | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-27803](https://issues.apache.org/jira/browse/SPARK-27803) | fix column pruning for python UDF |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-27858](https://issues.apache.org/jira/browse/SPARK-27858) | Fix for avro deserialization on union types with multiple non-null types |  Major | SQL | Dongjoon Hyun | Gabbi Merz |
| [SPARK-23191](https://issues.apache.org/jira/browse/SPARK-23191) | Workers registration failes in case of network drop |  Critical | Spark Core | Neeraj Gupta | wuyi |
| [SPARK-27657](https://issues.apache.org/jira/browse/SPARK-27657) | ml.util.Instrumentation.logFailure doesn't log error message |  Minor | ML | Xiangrui Meng | Wesley Tang |
| [SPARK-20547](https://issues.apache.org/jira/browse/SPARK-20547) | ExecutorClassLoader's findClass may not work correctly when a task is cancelled. |  Minor | Spark Shell | Shixiong Zhu | Shixiong Zhu |
| [SPARK-27869](https://issues.apache.org/jira/browse/SPARK-27869) | Redact sensitive information in System Properties from UI |  Major | Web UI | Aaruna Godthi | Aaruna Godthi |
| [SPARK-27868](https://issues.apache.org/jira/browse/SPARK-27868) | Better document shuffle / RPC listen backlog |  Minor | Documentation, Spark Core | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-27863](https://issues.apache.org/jira/browse/SPARK-27863) | Metadata files and temporary files should not be counted as data files |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-27896](https://issues.apache.org/jira/browse/SPARK-27896) | Fix definition of clustering silhouette coefficient for 1-element clusters |  Minor | ML | Sean R. Owen | Sean R. Owen |
| [SPARK-27907](https://issues.apache.org/jira/browse/SPARK-27907) | HiveUDAF should return NULL in case of 0 rows |  Blocker | SQL | Ajith S | Ajith S |
| [SPARK-27873](https://issues.apache.org/jira/browse/SPARK-27873) | Csv reader, adding a corrupt record column causes error if enforceSchema=false |  Major | SQL | Marcin Mejran | L. C. Hsieh |
| [SPARK-20286](https://issues.apache.org/jira/browse/SPARK-20286) | dynamicAllocation.executorIdleTimeout is ignored after unpersist |  Major | Spark Core | Miguel Pérez | Marcelo Masiero Vanzin |
| [SPARK-27961](https://issues.apache.org/jira/browse/SPARK-27961) | DataSourceV2Relation should not have refresh method |  Minor | SQL | John Zhuge | Gengliang Wang |
| [SPARK-27798](https://issues.apache.org/jira/browse/SPARK-27798) | ConvertToLocalRelation should tolerate expression reusing output object |  Blocker | SQL | Yosuke Mori | L. C. Hsieh |
| [SPARK-27872](https://issues.apache.org/jira/browse/SPARK-27872) | Driver and executors use a different service account breaking pull secrets |  Major | Kubernetes, Spark Core | Stavros Kontopoulos | Stavros Kontopoulos |
| [SPARK-27917](https://issues.apache.org/jira/browse/SPARK-27917) | Semantic equals of CaseWhen is failing with case sensitivity of column Names |  Major | SQL | Akash R Nilugal | Sandeep Katta |
| [SPARK-28030](https://issues.apache.org/jira/browse/SPARK-28030) | Binary file data source doesn't support space in file names |  Major | SQL | Xiangrui Meng | Xiangrui Meng |
| [SPARK-28053](https://issues.apache.org/jira/browse/SPARK-28053) | Handle a corner case where there is no \`Link\` header |  Trivial | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-21882](https://issues.apache.org/jira/browse/SPARK-21882) | OutputMetrics doesn't count written bytes correctly in the saveAsHadoopDataset function |  Minor | Spark Core | linxiaojun | linxiaojun |
| [SPARK-28052](https://issues.apache.org/jira/browse/SPARK-28052) | ArrayExists should follow the three-valued boolean logic. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-28058](https://issues.apache.org/jira/browse/SPARK-28058) | Reading csv with DROPMALFORMED sometimes doesn't drop malformed records |  Minor | SQL | Stuart White | L. C. Hsieh |
| [SPARK-28081](https://issues.apache.org/jira/browse/SPARK-28081) | word2vec 'large' count value too low for very large corpora |  Minor | ML | Sean R. Owen | Sean R. Owen |
| [SPARK-28062](https://issues.apache.org/jira/browse/SPARK-28062) | HuberAggregator copies coefficients vector every time an instance is added |  Major | ML | Andrew Crosby | Andrew Crosby |
| [SPARK-28109](https://issues.apache.org/jira/browse/SPARK-28109) | TRIM(type trimStr FROM str) returns incorrect result |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-23263](https://issues.apache.org/jira/browse/SPARK-23263) | create table stored as parquet should update table size if automatic update table size is enabled |  Major | SQL | Yuming Wang | yuming.wang |
| [SPARK-28054](https://issues.apache.org/jira/browse/SPARK-28054) | Unable to insert partitioned table dynamically when partition name is upper case |  Major | SQL | ChenKai | L. C. Hsieh |
| [SPARK-28142](https://issues.apache.org/jira/browse/SPARK-28142) | KafkaContinuousStream ignores user configuration on CONSUMER\_POLL\_TIMEOUT |  Major | Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-27018](https://issues.apache.org/jira/browse/SPARK-27018) | Checkpointed RDD deleted prematurely when using GBTClassifier |  Major | ML, Spark Core | Piotr Kolaczkowski | zhengruifeng |
| [SPARK-26985](https://issues.apache.org/jira/browse/SPARK-26985) | Test "access only some column of the all of columns " fails on big endian |  Major | SQL | Anuja Jakhade | ketan kunde |
| [SPARK-27630](https://issues.apache.org/jira/browse/SPARK-27630) | Stage retry causes totalRunningTasks calculation to be negative |  Minor | Spark Core | dzcxzl | dzcxzl |
| [SPARK-27676](https://issues.apache.org/jira/browse/SPARK-27676) | InMemoryFileIndex should hard-fail on missing files instead of logging and continuing |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-28005](https://issues.apache.org/jira/browse/SPARK-28005) | SparkRackResolver should not log for resolving empty list |  Major | Scheduler, Spark Core | Imran Rashid | Gabor Somogyi |
| [SPARK-28164](https://issues.apache.org/jira/browse/SPARK-28164) | usage description does not match with shell scripts |  Minor | Project Infra | Hanna Kan | Shivu Sondur |
| [SPARK-27992](https://issues.apache.org/jira/browse/SPARK-27992) | PySpark socket server should sync with JVM connection thread future |  Blocker | PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-28150](https://issues.apache.org/jira/browse/SPARK-28150) | Failure to create multiple contexts in same JVM with Kerberos auth |  Minor | Spark Core | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-28185](https://issues.apache.org/jira/browse/SPARK-28185) | Trigger pandas iterator UDF closing stuff when iterator stop early |  Major | ML, SQL | Weichen Xu | Weichen Xu |
| [SPARK-28160](https://issues.apache.org/jira/browse/SPARK-28160) | TransportClient.sendRpcSync may hang forever |  Major | Spark Core | Lantao Jin | Lantao Jin |
| [SPARK-28201](https://issues.apache.org/jira/browse/SPARK-28201) | Revisit MakeDecimal behavior on overflow |  Major | SQL | Marco Gaido | Marco Gaido |
| [SPARK-28215](https://issues.apache.org/jira/browse/SPARK-28215) | as\_tibble was removed from Arrow R API |  Major | R | L. C. Hsieh | L. C. Hsieh |
| [SPARK-28232](https://issues.apache.org/jira/browse/SPARK-28232) | Add groupIdPrefix for Kafka batch connector |  Major | SQL | Gabor Somogyi | Gabor Somogyi |
| [SPARK-28223](https://issues.apache.org/jira/browse/SPARK-28223) | stream-stream joins should fail unsupported checker in update mode |  Major | Structured Streaming | Jose Torres |  |
| [SPARK-28233](https://issues.apache.org/jira/browse/SPARK-28233) | Upgrade maven-jar-plugin and maven-source-plugin |  Major | Build | Yuming Wang | Yuming Wang |
| [SPARK-28156](https://issues.apache.org/jira/browse/SPARK-28156) | Join plan sometimes does not use cached query |  Major | SQL | Bruce Robbins | L. C. Hsieh |
| [SPARK-28251](https://issues.apache.org/jira/browse/SPARK-28251) | Fix error message of inserting into a non-existing table |  Minor | SQL | Peter Toth | Peter Toth |
| [SPARK-28200](https://issues.apache.org/jira/browse/SPARK-28200) | Decimal overflow handling in ExpressionEncoder |  Major | SQL | Marco Gaido | Mick Jermsurawong |
| [SPARK-28206](https://issues.apache.org/jira/browse/SPARK-28206) | "@pandas\_udf" in doctest is rendered as ":pandas\_udf" in html API doc |  Major | Documentation, PySpark | Xiangrui Meng | Hyukjin Kwon |
| [SPARK-28189](https://issues.apache.org/jira/browse/SPARK-28189) | Pyspark  - df.drop() is Case Sensitive when Referring to Upstream Tables |  Minor | SQL | Luke Chu | Tony Zhang |
| [SPARK-28309](https://issues.apache.org/jira/browse/SPARK-28309) | AppVeyor fails to install testthat (1.0.2) due to previously installed testthat (2.1.0) due to devtools |  Major | Project Infra, SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-28308](https://issues.apache.org/jira/browse/SPARK-28308) | CalendarInterval sub-second part should be padded before parsing |  Major | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28302](https://issues.apache.org/jira/browse/SPARK-28302) | SparkLauncher: The process cannot access the file because it is being used by another process |  Major | Spark Core | wuyi | wuyi |
| [SPARK-28323](https://issues.apache.org/jira/browse/SPARK-28323) | PythonUDF should be able to use in join condition |  Major | PySpark, SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-28015](https://issues.apache.org/jira/browse/SPARK-28015) | Check stringToDate() consumes entire input for the yyyy and yyyy-[m]m formats |  Major | SQL | Yuming Wang | Maxim Gekk |
| [SPARK-28342](https://issues.apache.org/jira/browse/SPARK-28342) | Replace REL\_12\_BETA1 to REL\_12\_BETA2 in PostgresSQL SQL tests |  Trivial | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-28321](https://issues.apache.org/jira/browse/SPARK-28321) | functions.udf(UDF0, DataType) produces unexpected results |  Major | SQL | Vladimir Matveev | Hyukjin Kwon |
| [SPARK-28354](https://issues.apache.org/jira/browse/SPARK-28354) | Use JIRA user name instead of JIRA user key |  Major | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28371](https://issues.apache.org/jira/browse/SPARK-28371) | Parquet "starts with" filter is not null-safe |  Major | SQL | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-28404](https://issues.apache.org/jira/browse/SPARK-28404) | Fix negative timeout value in RateStreamContinuousPartitionReader |  Minor | Structured Streaming | Gabor Somogyi | Gabor Somogyi |
| [SPARK-28152](https://issues.apache.org/jira/browse/SPARK-28152) | Mapped ShortType to SMALLINT and FloatType to REAL for MsSqlServerDialect |  Minor | SQL | Shiv Prashant Sood | Shiv Prashant Sood |
| [SPARK-27485](https://issues.apache.org/jira/browse/SPARK-27485) | EnsureRequirements.reorder should handle duplicate expressions gracefully |  Minor | Optimizer, SQL | Muthu Jayakumar | Herman van Hövell |
| [SPARK-28359](https://issues.apache.org/jira/browse/SPARK-28359) | Make integrated UDF tests robust by making them no-op |  Major | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-27609](https://issues.apache.org/jira/browse/SPARK-27609) | from\_json expects values of options dictionary to be |  Minor | PySpark | Zachary Jablons | Maxim Gekk |
| [SPARK-28411](https://issues.apache.org/jira/browse/SPARK-28411) | insertInto with overwrite inconsistent behaviour Python/Scala |  Minor | PySpark, SQL | Maria Rebelka | Huaxin Gao |
| [SPARK-28439](https://issues.apache.org/jira/browse/SPARK-28439) | pyspark.sql.functions.array\_repeat should support Column as count argument |  Minor | PySpark, SQL | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-28430](https://issues.apache.org/jira/browse/SPARK-28430) | Some stage table rows render wrong number of columns if tasks are missing metrics |  Major | Web UI | Josh Rosen | Josh Rosen |
| [SPARK-28369](https://issues.apache.org/jira/browse/SPARK-28369) | Check overflow in decimal UDF |  Minor | SQL | Mick Jermsurawong | Marco Gaido |
| [SPARK-28457](https://issues.apache.org/jira/browse/SPARK-28457) | curl: (60) SSL certificate problem: unable to get local issuer certificate More details here: |  Blocker | Project Infra | Xiao Li | Shane Knapp |
| [SPARK-28455](https://issues.apache.org/jira/browse/SPARK-28455) | Executor may be timed out too soon because of overflow in tracking code |  Major | Spark Core | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-28346](https://issues.apache.org/jira/browse/SPARK-28346) | clone the query plan between analyzer, optimizer and planner |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-27234](https://issues.apache.org/jira/browse/SPARK-27234) | Continuous Streaming does not support python UDFs |  Major | Structured Streaming | Mark Hamilton | Hyukjin Kwon |
| [SPARK-28465](https://issues.apache.org/jira/browse/SPARK-28465) | K8s integration tests fail due to missing ceph-nano image |  Major | Kubernetes, Spark Core | Stavros Kontopoulos | Stavros Kontopoulos |
| [SPARK-28497](https://issues.apache.org/jira/browse/SPARK-28497) | Disallow upcasting complex data types to string type |  Minor | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-28511](https://issues.apache.org/jira/browse/SPARK-28511) | Get REV from RELEASE\_VERSION instead of VERSION |  Minor | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28365](https://issues.apache.org/jira/browse/SPARK-28365) | Fallback locale to en\_US in StopWordsRemover if system default locale isn't in available locales in JVM |  Major | ML | L. C. Hsieh | L. C. Hsieh |
| [SPARK-28489](https://issues.apache.org/jira/browse/SPARK-28489) | KafkaOffsetRangeCalculator.getRanges may drop offsets |  Blocker | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-28518](https://issues.apache.org/jira/browse/SPARK-28518) | Fix StatisticsCollectionTestBase#getDataSize refer to ChecksumFileSystem#isChecksumFile |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-28441](https://issues.apache.org/jira/browse/SPARK-28441) | PythonUDF used in correlated scalar subquery causes UnsupportedOperationException |  Major | PySpark, SQL | Huaxin Gao | L. C. Hsieh |
| [SPARK-28520](https://issues.apache.org/jira/browse/SPARK-28520) | WholeStageCodegen does not work property for LocalTableScanExec |  Minor | SQL | Kousuke Saruta | Kousuke Saruta |
| [SPARK-28556](https://issues.apache.org/jira/browse/SPARK-28556) | Error should also be sent to QueryExecutionListener.onFailure |  Major | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-28375](https://issues.apache.org/jira/browse/SPARK-28375) | Enforce idempotence on the PullupCorrelatedPredicates optimizer rule |  Major | SQL | Yesheng Ma | Dilip Biswal |
| [SPARK-26175](https://issues.apache.org/jira/browse/SPARK-26175) | PySpark cannot terminate worker process if user program reads from stdin |  Major | PySpark | Ala Luszczak | Weichen Xu |
| [SPARK-28153](https://issues.apache.org/jira/browse/SPARK-28153) | Use AtomicReference at InputFileBlockHolder (to support input\_file\_name with Python UDF) |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-28584](https://issues.apache.org/jira/browse/SPARK-28584) | Flaky test: org.apache.spark.scheduler.TaskSchedulerImplSuite |  Minor | Tests | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-28445](https://issues.apache.org/jira/browse/SPARK-28445) | Inconsistency between Scala and Python/Panda udfs when groupby with udf() is used |  Major | PySpark, SQL | Stavros Kontopoulos | L. C. Hsieh |
| [SPARK-23469](https://issues.apache.org/jira/browse/SPARK-23469) | HashingTF should use corrected MurmurHash3 implementation |  Major | ML | Joseph K. Bradley | Huaxin Gao |
| [SPARK-28606](https://issues.apache.org/jira/browse/SPARK-28606) | Update CRAN key to recover docker image generation |  Blocker | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28582](https://issues.apache.org/jira/browse/SPARK-28582) | Pyspark daemon exit failed when receive SIGTERM on py3.7 |  Major | PySpark | Weichen Xu | Weichen Xu |
| [SPARK-28486](https://issues.apache.org/jira/browse/SPARK-28486) | PythonBroadcast may delete the broadcast file while a Python worker still needs it |  Major | PySpark | Shixiong Zhu | wuyi |
| [SPARK-28537](https://issues.apache.org/jira/browse/SPARK-28537) | DebugExec cannot debug broadcast or columnar related queries. |  Major | SQL | Kousuke Saruta | Kousuke Saruta |
| [SPARK-28344](https://issues.apache.org/jira/browse/SPARK-28344) | fail the query if detect ambiguous self join |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-28583](https://issues.apache.org/jira/browse/SPARK-28583) | Subqueries should not call \`onUpdatePlan\` in Adaptive Query Execution |  Major | SQL | Wei Xue | Wei Xue |
| [SPARK-28470](https://issues.apache.org/jira/browse/SPARK-28470) | Honor spark.sql.decimalOperations.nullOnOverflow in Cast |  Major | SQL | Wenchen Fan | Marco Gaido |
| [SPARK-28331](https://issues.apache.org/jira/browse/SPARK-28331) | Catalogs.load always throws CatalogNotFoundException on loading built-in catalogs |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-28454](https://issues.apache.org/jira/browse/SPARK-28454) | Validate LongType in \_make\_type\_verifier |  Major | PySpark | AY | AY |
| [SPARK-28474](https://issues.apache.org/jira/browse/SPARK-28474) | Lower JDBC client cannot read binary type |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28642](https://issues.apache.org/jira/browse/SPARK-28642) | Hide credentials in show create table |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28572](https://issues.apache.org/jira/browse/SPARK-28572) | Add simple analysis checks to the V2 Create Table code paths |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-28163](https://issues.apache.org/jira/browse/SPARK-28163) | Kafka ignores user configuration on FETCH\_OFFSET\_NUM\_RETRY and FETCH\_OFFSET\_RETRY\_INTERVAL\_MS |  Major | Structured Streaming | Gabor Somogyi | Gabor Somogyi |
| [SPARK-28651](https://issues.apache.org/jira/browse/SPARK-28651) | Streaming file source doesn't change the schema to nullable automatically |  Major | Structured Streaming | Tomasz Magdanski | Shixiong Zhu |
| [SPARK-28677](https://issues.apache.org/jira/browse/SPARK-28677) | "Select All" checkbox in StagePage doesn't work properly |  Major | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-28638](https://issues.apache.org/jira/browse/SPARK-28638) | Task summary metrics are wrong when there are running tasks |  Major | Web UI | Gengliang Wang | Gengliang Wang |
| [SPARK-26969](https://issues.apache.org/jira/browse/SPARK-26969) | [Spark] Using ODBC not able to see the data in table when datatype is decimal |  Major | Spark Shell | ABHISHEK KUMAR GUPTA | Sujith Chacko |
| [SPARK-28647](https://issues.apache.org/jira/browse/SPARK-28647) | Recover additional metric feature and remove additional-metrics.js |  Major | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-28706](https://issues.apache.org/jira/browse/SPARK-28706) | Allow upcast from null type to any types |  Minor | SQL | Xingbo Jiang | Xingbo Jiang |
| [SPARK-28422](https://issues.apache.org/jira/browse/SPARK-28422) | GROUPED\_AGG pandas\_udf doesn't with spark.sql() without group by clause |  Major | PySpark, SQL | Li Jin | L. C. Hsieh |
| [SPARK-28203](https://issues.apache.org/jira/browse/SPARK-28203) | PythonRDD should respect SparkContext's conf when passing user confMap |  Minor | PySpark, Spark Core | Xianjin YE | Xianjin YE |
| [SPARK-23977](https://issues.apache.org/jira/browse/SPARK-23977) | Add commit protocol binding to Hadoop 3.1 PathOutputCommitter mechanism |  Minor | SQL | Steve Loughran | Steve Loughran |
| [SPARK-28671](https://issues.apache.org/jira/browse/SPARK-28671) | [UDF] dropping permanent function when a temporary function with the same name already exists giving wrong msg on dropping it again |  Minor | SQL | ABHISHEK KUMAR GUPTA | pavithra ramachandran |
| [SPARK-28757](https://issues.apache.org/jira/browse/SPARK-28757) | File table location should include both values of option \`path\` and \`paths\` |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-28766](https://issues.apache.org/jira/browse/SPARK-28766) | Fix CRAN incoming feasibility warning on invalid URL |  Major | SparkR | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28634](https://issues.apache.org/jira/browse/SPARK-28634) | Failed to start SparkSession with Keytab file |  Minor | Spark Core, YARN | Yuming Wang | Marcelo Masiero Vanzin |
| [SPARK-28224](https://issues.apache.org/jira/browse/SPARK-28224) | Check overflow in decimal Sum aggregate |  Major | SQL | Mick Jermsurawong | Mick Jermsurawong |
| [SPARK-28775](https://issues.apache.org/jira/browse/SPARK-28775) | DateTimeUtilsSuite fails for JDKs using the tzdata2018i or newer timezone database |  Major | SQL, Tests | Herman van Hövell | Sean R. Owen |
| [SPARK-28483](https://issues.apache.org/jira/browse/SPARK-28483) | Canceling a spark job using barrier mode but barrier tasks do not exit |  Major | Spark Core | Weichen Xu | Weichen Xu |
| [SPARK-28662](https://issues.apache.org/jira/browse/SPARK-28662) | Create Hive Partitioned Table without  specifying data type for  partition columns will success unexpectedly |  Minor | SQL | Li Hao | Li Hao |
| [SPARK-27937](https://issues.apache.org/jira/browse/SPARK-27937) | Revert changes introduced as a part of Automatic namespace discovery [SPARK-24149] |  Major | Spark Core | Dhruve Ashar | Dhruve Ashar |
| [SPARK-28774](https://issues.apache.org/jira/browse/SPARK-28774) | ReusedExchangeExec cannot be columnar |  Major | SQL | Robert Joseph Evans | Robert Joseph Evans |
| [SPARK-28780](https://issues.apache.org/jira/browse/SPARK-28780) | Delete the incorrect setWeightCol method in LinearSVCModel |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-28699](https://issues.apache.org/jira/browse/SPARK-28699) | Cache an indeterminate RDD could lead to incorrect result while stage rerun |  Blocker | Spark Core | Yuanjian Li | Yuanjian Li |
| [SPARK-28763](https://issues.apache.org/jira/browse/SPARK-28763) | Flaky Tests: SparkThriftServerProtocolVersionsSuite.HIVE\_CLI\_SERVICE\_PROTOCOL\_V1 get binary type |  Major | SQL | Dongjoon Hyun |  |
| [SPARK-28844](https://issues.apache.org/jira/browse/SPARK-28844) | Fix typo in SQLConf FILE\_COMRESSION\_FACTOR |  Major | SQL | ZhangYao |  |
| [SPARK-28776](https://issues.apache.org/jira/browse/SPARK-28776) | SparkML MLWriter gets hadoop conf from spark context instead of session |  Minor | MLlib | Helen Yu | Helen Yu |
| [SPARK-28025](https://issues.apache.org/jira/browse/SPARK-28025) | HDFSBackedStateStoreProvider should not leak .crc files |  Major | Structured Streaming | Gerard Maas | Jungtaek Lim |
| [SPARK-27330](https://issues.apache.org/jira/browse/SPARK-27330) | ForeachWriter is not being closed once a batch is aborted |  Major | Structured Streaming | Eyal Zituny | Eyal Zituny |
| [SPARK-28839](https://issues.apache.org/jira/browse/SPARK-28839) | ExecutorMonitor$Tracker NullPointerException |  Major | Spark Core | Yuming Wang | Hyukjin Kwon |
| [SPARK-28778](https://issues.apache.org/jira/browse/SPARK-28778) | Shuffle jobs fail due to incorrect advertised address when running in virtual network |  Major | Mesos | Anton Kirillov | Anton Kirillov |
| [SPARK-28868](https://issues.apache.org/jira/browse/SPARK-28868) | Specify Jekyll version to 3.8.6 in release docker image |  Blocker | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28709](https://issues.apache.org/jira/browse/SPARK-28709) | Memory leaks after stopping of StreamingContext |  Minor | DStreams | Nikita Gorbachevski | Nikita Gorbachevski |
| [SPARK-28679](https://issues.apache.org/jira/browse/SPARK-28679) | Spark Yarn ResourceRequestHelper shouldn't lookup setResourceInformation is no resources specified |  Minor | Spark Core, YARN | Thomas Graves | Alessandro Bellina |
| [SPARK-28876](https://issues.apache.org/jira/browse/SPARK-28876) | fallBackToHdfs should not support Hive partitioned table |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28621](https://issues.apache.org/jira/browse/SPARK-28621) | CheckCartesianProducts may throw some error which mismatch generated physical plan |  Major | SQL | Weichen Xu | Weichen Xu |
| [SPARK-23519](https://issues.apache.org/jira/browse/SPARK-23519) | Create View Commands Fails with  The view output (col1,col1) contains duplicate column name |  Major | SQL | Franck Tago | hemanth meka |
| [SPARK-25474](https://issues.apache.org/jira/browse/SPARK-25474) | Update the docs for spark.sql.statistics.fallBackToHdfs |  Major | SQL | Ayush Anubhava | Yuming Wang |
| [SPARK-28818](https://issues.apache.org/jira/browse/SPARK-28818) | FrequentItems applies an incorrect schema to the resulting dataframe when nulls are present |  Minor | SQL | Matt Hawes | Matt Hawes |
| [SPARK-28903](https://issues.apache.org/jira/browse/SPARK-28903) | Fix AWS JDK version conflict that breaks Pyspark Kinesis tests |  Major | Structured Streaming | Sean R. Owen | Sean R. Owen |
| [SPARK-28921](https://issues.apache.org/jira/browse/SPARK-28921) | Spark jobs failing on latest versions of Kubernetes (1.15.3, 1.14.6, 1,13.10, 1.12.10, 1.11.10) |  Major | Kubernetes, Spark Core | Paul Schweigert | Andy Grove |
| [SPARK-22955](https://issues.apache.org/jira/browse/SPARK-22955) | Error generating jobs when Stopping JobGenerator gracefully |  Major | DStreams | zzsmdfj | Nikita Gorbachevski |
| [SPARK-28628](https://issues.apache.org/jira/browse/SPARK-28628) | Support namespaces in V2SessionCatalog |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-28963](https://issues.apache.org/jira/browse/SPARK-28963) | Fall back to archive.apache.org to download Maven if mirrors don't have requested version |  Minor | Build | Sean R. Owen | Sean R. Owen |
| [SPARK-28931](https://issues.apache.org/jira/browse/SPARK-28931) | Fix couple of bugs in FsHistoryProviderSuite |  Minor | Spark Core | Jungtaek Lim | Jungtaek Lim |
| [SPARK-28964](https://issues.apache.org/jira/browse/SPARK-28964) | saveAsTable doesn't pass in the data source information for V2 nodes |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-28967](https://issues.apache.org/jira/browse/SPARK-28967) | ConcurrentModificationException is thrown from EventLoggingListener |  Minor | Spark Core | Jungtaek Lim | Jungtaek Lim |
| [SPARK-28912](https://issues.apache.org/jira/browse/SPARK-28912) | MatchError exception in CheckpointWriteHandler |  Minor | Spark Core | Aleksandr Kashkirov | Aleksandr Kashkirov |
| [SPARK-28886](https://issues.apache.org/jira/browse/SPARK-28886) | Kubernetes DepsTestsSuite fails on OSX with minikube 1.3.1 due to formatting |  Minor | Kubernetes, Spark Core, Tests | Holden Karau | Holden Karau |
| [SPARK-28916](https://issues.apache.org/jira/browse/SPARK-28916) | Generated SpecificSafeProjection.apply method grows beyond 64 KB when use  SparkSQL |  Major | SQL | MOBIN | Marco Gaido |
| [SPARK-29000](https://issues.apache.org/jira/browse/SPARK-29000) | [SQL] Decimal precision overflow when don't allow precision loss |  Major | SQL | feiwang | feiwang |
| [SPARK-28939](https://issues.apache.org/jira/browse/SPARK-28939) | SQL configuration are not always propagated |  Major | SQL | Marco Gaido | Marco Gaido |
| [SPARK-28214](https://issues.apache.org/jira/browse/SPARK-28214) | Flaky test: org.apache.spark.streaming.CheckpointSuite.basic rdd checkpoints + dstream graph checkpoint recovery |  Major | DStreams, Tests | Marcelo Masiero Vanzin | Jungtaek Lim |
| [SPARK-28657](https://issues.apache.org/jira/browse/SPARK-28657) | Fix currentContext Instance failed sometimes |  Minor | Spark Core | hong dongdong | hong dongdong |
| [SPARK-26598](https://issues.apache.org/jira/browse/SPARK-26598) | Fix HiveThriftServer2 set hiveconf and hivevar in every sql |  Major | SQL | wangtao93 | dzcxzl |
| [SPARK-28906](https://issues.apache.org/jira/browse/SPARK-28906) | \`bin/spark-submit --version\` shows incorrect info |  Minor | Project Infra | Marcelo Masiero Vanzin | Kazuaki Ishizaki |
| [SPARK-26989](https://issues.apache.org/jira/browse/SPARK-26989) | Flaky test:DAGSchedulerSuite.Barrier task failures from the same stage attempt don't trigger multiple stage retries |  Major | Spark Core, Tests | Marcelo Masiero Vanzin | Jungtaek Lim |
| [SPARK-29007](https://issues.apache.org/jira/browse/SPARK-29007) | Possible leak of SparkContext in tests / test suites initializing StreamingContext |  Minor | DStreams, MLlib, Spark Core | Jungtaek Lim | Jungtaek Lim |
| [SPARK-24663](https://issues.apache.org/jira/browse/SPARK-24663) | Flaky test: StreamingContextSuite "stop slow receiver gracefully" |  Minor | Tests | Marcelo Masiero Vanzin | Jungtaek Lim |
| [SPARK-29041](https://issues.apache.org/jira/browse/SPARK-29041) | Allow createDataFrame to accept bytes as binary type |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-29045](https://issues.apache.org/jira/browse/SPARK-29045) | Test failed due to table already exists in SQLMetricsSuite |  Minor | SQL, Tests | Lantao Jin | Lantao Jin |
| [SPARK-29056](https://issues.apache.org/jira/browse/SPARK-29056) | ThriftServerSessionPage displays 1970/01/01 for queries that are not finished and not closed |  Major | SQL | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-29042](https://issues.apache.org/jira/browse/SPARK-29042) | Sampling-based RDD with unordered input should be INDETERMINATE |  Major | Spark Core | L. C. Hsieh | L. C. Hsieh |
| [SPARK-29003](https://issues.apache.org/jira/browse/SPARK-29003) | Spark history server startup hang due to deadlock |  Major | Spark Core | shanyu zhao | shanyu zhao |
| [SPARK-29046](https://issues.apache.org/jira/browse/SPARK-29046) | Possible NPE on SQLConf.get when SparkContext is stopping in another thread |  Minor | SQL | Jungtaek Lim | Jungtaek Lim |
| [SPARK-29072](https://issues.apache.org/jira/browse/SPARK-29072) | Properly track shuffle write time with refactor |  Major | Shuffle, Spark Core | Matt Cheah | Matt Cheah |
| [SPARK-26929](https://issues.apache.org/jira/browse/SPARK-26929) | table owner should use user instead of principal when use kerberos |  Major | SQL | hong dongdong | hong dongdong |
| [SPARK-29100](https://issues.apache.org/jira/browse/SPARK-29100) | Codegen with switch in InSet expression causes compilation error |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-29027](https://issues.apache.org/jira/browse/SPARK-29027) | KafkaDelegationTokenSuite fails |  Minor | Structured Streaming | koert kuipers | Gabor Somogyi |
| [SPARK-28930](https://issues.apache.org/jira/browse/SPARK-28930) | Spark DESC FORMATTED TABLENAME information display issues |  Minor | SQL | jobit mathew | Sujith Chacko |
| [SPARK-29112](https://issues.apache.org/jira/browse/SPARK-29112) | Expose more details when ApplicationMaster reporter faces a fatal exception |  Minor | Spark Core, YARN | Lantao Jin | Lantao Jin |
| [SPARK-29101](https://issues.apache.org/jira/browse/SPARK-29101) | CSV datasource returns incorrect .count() from file with malformed records |  Minor | SQL | Stuart White | Sandeep Katta |
| [SPARK-29105](https://issues.apache.org/jira/browse/SPARK-29105) | SHS may delete driver log file of in progress application |  Minor | Spark Core | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-29062](https://issues.apache.org/jira/browse/SPARK-29062) | Add V1\_BATCH\_WRITE to the TableCapabilityChecks in the Analyzer |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-21045](https://issues.apache.org/jira/browse/SPARK-21045) | Spark executor blocked instead of throwing exception because exception occur when python worker send exception info to PythonRDD in Python 2+ |  Major | PySpark | Joshuawangzj | Xianjin YE |
| [SPARK-29144](https://issues.apache.org/jira/browse/SPARK-29144) | Binarizer handle sparse vectors incorrectly with negative threshold |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-29140](https://issues.apache.org/jira/browse/SPARK-29140) | Flaky test: org.apache.spark.sql.hive.execution.ObjectHashAggregateSuite.randomized aggregation test - [with partial + unsafe, with distinct] - with grouping keys |  Major | SQL, Tests | Jungtaek Lim | Jungtaek Lim |
| [SPARK-29053](https://issues.apache.org/jira/browse/SPARK-29053) | Sort does not work on some columns |  Minor | Web UI | jobit mathew | Aman Omer |
| [SPARK-29160](https://issues.apache.org/jira/browse/SPARK-29160) | Event log file is written without specific charset which should be ideally UTF-8 |  Major | Spark Core | Jungtaek Lim |  |
| [SPARK-28599](https://issues.apache.org/jira/browse/SPARK-28599) | Fix \`Execution Time\` and \`Duration\` column sorting for ThriftServerSessionPage |  Minor | SQL, Web UI | Yuming Wang | Yuming Wang |
| [SPARK-29177](https://issues.apache.org/jira/browse/SPARK-29177) | Zombie tasks prevents executor from releasing when task exceeds maxResultSize |  Major | Spark Core | Adrian Wang | Adrian Wang |
| [SPARK-25903](https://issues.apache.org/jira/browse/SPARK-25903) | Flaky test: BarrierTaskContextSuite.throw exception on barrier() call timeout |  Major | Tests | Marcelo Masiero Vanzin | L. C. Hsieh |
| [SPARK-19917](https://issues.apache.org/jira/browse/SPARK-19917) | qualified partition location stored in catalog |  Major | SQL | Song Jun | Song Jun |
| [SPARK-29218](https://issues.apache.org/jira/browse/SPARK-29218) | Increase \`Show Additional Metrics\` checkbox width in StagePage |  Minor | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-29229](https://issues.apache.org/jira/browse/SPARK-29229) | Change the additional remote repository in IsolatedClientLoader to google minor |  Major | SQL | Yuanjian Li | Yuanjian Li |
| [SPARK-29082](https://issues.apache.org/jira/browse/SPARK-29082) | Spark driver cannot start with only delegation tokens |  Major | Spark Core | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-29230](https://issues.apache.org/jira/browse/SPARK-29230) | Fix NullPointerException in the test class ProcfsMetricsGetterSuite |  Minor | Spark Core, Tests | Jiaqi Li | Jiaqi Li |
| [SPARK-29236](https://issues.apache.org/jira/browse/SPARK-29236) | Access 'executorDataMap' out of 'DriverEndpoint' should be protected by lock |  Major | Spark Core | Xianyang Liu | Xianyang Liu |
| [SPARK-29249](https://issues.apache.org/jira/browse/SPARK-29249) | DataFrameWriterV2 should not allow setting table properties for existing tables |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-29202](https://issues.apache.org/jira/browse/SPARK-29202) | --driver-java-options are not passed to driver process in yarn client mode |  Major | Deploy | Sandeep Katta | Sandeep Katta |
| [SPARK-27715](https://issues.apache.org/jira/browse/SPARK-27715) | SQL query details in UI dose not show in correct format. |  Minor | SQL, Web UI | Genmao Yu | Genmao Yu |
| [SPARK-29213](https://issues.apache.org/jira/browse/SPARK-29213) | Make it consistent when get notnull output and generate null checks in FilterExec |  Major | SQL | Wang Shuo | Wang Shuo |
| [SPARK-29240](https://issues.apache.org/jira/browse/SPARK-29240) | PySpark 2.4 about sql function 'element\_at' param 'extraction' |  Trivial | PySpark | Simon Reon | Hyukjin Kwon |
| [SPARK-26431](https://issues.apache.org/jira/browse/SPARK-26431) | Update availableSlots by availableCpus for barrier taskset |  Major | Spark Core | wuyi | Juliusz Sompolski |
| [SPARK-29263](https://issues.apache.org/jira/browse/SPARK-29263) | availableSlots in scheduler can change before being checked by barrier taskset |  Major | Scheduler, Spark Core | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-29281](https://issues.apache.org/jira/browse/SPARK-29281) | Examples in Like/RLike doesn't consider the default value of spark.sql.parser.escapedStringLiterals |  Minor | SQL | Jungtaek Lim | Jungtaek Lim |
| [SPARK-29172](https://issues.apache.org/jira/browse/SPARK-29172) | Fix some exception issue of explain commands |  Minor | SQL | Tomoko Komiyama | Tomoko Komiyama |
| [SPARK-29022](https://issues.apache.org/jira/browse/SPARK-29022) | SparkSQLCLI can not use 'ADD JAR' 's jar as Serde class |  Major | SQL | angerszhu | angerszhu |
| [SPARK-29244](https://issues.apache.org/jira/browse/SPARK-29244) | ArrayIndexOutOfBoundsException on TaskCompletionListener during releasing of memory blocks |  Major | Spark Core | Viacheslav Tradunsky | L. C. Hsieh |
| [SPARK-29322](https://issues.apache.org/jira/browse/SPARK-29322) | History server is stuck reading incomplete event log file compressed with zstd |  Major | Spark Core | Jungtaek Lim | Jungtaek Lim |
| [SPARK-28084](https://issues.apache.org/jira/browse/SPARK-28084) | LOAD DATA command resolving the partition column name considering case senstive manner |  Major | SQL | Sujith Chacko | Sujith Chacko |
| [SPARK-29350](https://issues.apache.org/jira/browse/SPARK-29350) | Fix BroadcastExchange reuse in Dynamic Partition Pruning |  Major | SQL | Wei Xue | Wei Xue |
| [SPARK-29357](https://issues.apache.org/jira/browse/SPARK-29357) | Fix the flaky test in DataFrameSuite |  Minor | Tests | Yuanjian Li | Yuanjian Li |
| [SPARK-29139](https://issues.apache.org/jira/browse/SPARK-29139) | Flaky test: org.apache.spark.SparkContextSuite.test gpu driver resource files and discovery under local-cluster mode |  Major | Spark Core, Tests | Jungtaek Lim | Jungtaek Lim |
| [SPARK-27468](https://issues.apache.org/jira/browse/SPARK-27468) | "Storage Level" in "RDD Storage Page" is not correct |  Major | Spark Core | Shixiong Zhu | Marcelo Masiero Vanzin |
| [SPARK-29366](https://issues.apache.org/jira/browse/SPARK-29366) | Subqueries created for DPP are not printed in EXPLAIN FORMATTED |  Major | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-29336](https://issues.apache.org/jira/browse/SPARK-29336) | The implementation of QuantileSummaries.merge  does not guarantee that the relativeError will be respected |  Minor | SQL | Guilherme Souza | Guilherme Souza |
| [SPARK-28917](https://issues.apache.org/jira/browse/SPARK-28917) | Jobs can hang because of race of RDD.dependencies |  Major | Scheduler, Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-29373](https://issues.apache.org/jira/browse/SPARK-29373) | DataSourceV2: Commands should not submit a spark job. |  Blocker | SQL | Terry Kim | Terry Kim |
| [SPARK-29433](https://issues.apache.org/jira/browse/SPARK-29433) | Web UI Stages table tooltip correction |  Trivial | Web UI | Pablo Langa Blanco | Pablo Langa Blanco |
| [SPARK-29359](https://issues.apache.org/jira/browse/SPARK-29359) | Better exception handling in SQLQueryTestSuite and ThriftServerQueryTestSuite |  Minor | Tests | Peter Toth | Peter Toth |
| [SPARK-29435](https://issues.apache.org/jira/browse/SPARK-29435) | Spark 3 doesnt work with older shuffle service |  Major | Shuffle, Spark Core | koert kuipers | Sandeep Katta |
| [SPARK-29442](https://issues.apache.org/jira/browse/SPARK-29442) | Set \`default\` mode should override the existing mode |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-10614](https://issues.apache.org/jira/browse/SPARK-10614) | SystemClock uses non-monotonic time in its wait logic |  Minor | Spark Core | Steve Loughran | Marcelo Masiero Vanzin |
| [SPARK-28947](https://issues.apache.org/jira/browse/SPARK-28947) | Status logging occurs on every state change but not at an interval for liveness. |  Minor | Kubernetes, Spark Core | Kent Yao | Kent Yao |
| [SPARK-27259](https://issues.apache.org/jira/browse/SPARK-27259) | Allow setting -1 as split size for InputFileBlock |  Major | Spark Core | Simon poortman | Praneet Sharma |
| [SPARK-29468](https://issues.apache.org/jira/browse/SPARK-29468) | Floating point literals produce incorrect SQL |  Major | SQL | Jose Torres | Jose Torres |
| [SPARK-27177](https://issues.apache.org/jira/browse/SPARK-27177) | Update jenkins locale to en\_US.UTF-8 |  Major | Build, jenkins | Yuming Wang | Shane Knapp |
| [SPARK-29283](https://issues.apache.org/jira/browse/SPARK-29283) | Error message is hidden when query from JDBC, especially enabled adaptive execution |  Major | SQL | Lantao Jin | Lantao Jin |
| [SPARK-27812](https://issues.apache.org/jira/browse/SPARK-27812) | kubernetes client import non-daemon thread which block jvm exit. |  Major | Kubernetes, Spark Core | Henry Yu | Igor Calabria |
| [SPARK-29405](https://issues.apache.org/jira/browse/SPARK-29405) | Alter table / Insert statements should not change a table's ownership |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-29295](https://issues.apache.org/jira/browse/SPARK-29295) | Duplicate result when dropping partition of an external table and then overwriting |  Major | SQL | feiwang | L. C. Hsieh |
| [SPARK-29014](https://issues.apache.org/jira/browse/SPARK-29014) | DataSourceV2: Clean up current, default, and session catalog uses |  Blocker | SQL | Ryan Blue | Terry Kim |
| [SPARK-29494](https://issues.apache.org/jira/browse/SPARK-29494) | ArrayOutOfBoundsException when converting from string to timestamp |  Minor | SQL | Rahul Shivu Mahadev | Rahul Shivu Mahadev |
| [SPARK-29502](https://issues.apache.org/jira/browse/SPARK-29502) | typed interval expression should fail for invalid format |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29235](https://issues.apache.org/jira/browse/SPARK-29235) | CrossValidatorModel.avgMetrics disappears after model is written/read again |  Minor | ML | Matthew Bedford | shahid |
| [SPARK-29379](https://issues.apache.org/jira/browse/SPARK-29379) | SHOW FUNCTIONS don't show '!=', '\<\>' , 'between', 'case' |  Major | SQL | angerszhu | angerszhu |
| [SPARK-29498](https://issues.apache.org/jira/browse/SPARK-29498) | CatalogTable to HiveTable should not change the table's ownership |  Major | SQL | Kent Yao | Yuming Wang |
| [SPARK-29530](https://issues.apache.org/jira/browse/SPARK-29530) | SparkSession.sql() method parse process not under current sparksession's conf |  Major | SQL | angerszhu | angerszhu |
| [SPARK-29232](https://issues.apache.org/jira/browse/SPARK-29232) | RandomForestRegressionModel does not update the parameter maps of the DecisionTreeRegressionModels underneath |  Major | ML | Jiaqi Guo | Huaxin Gao |
| [SPARK-21492](https://issues.apache.org/jira/browse/SPARK-21492) | Memory leak in SortMergeJoin |  Major | SQL | Zhan Zhang | Yuanjian Li |
| [SPARK-29488](https://issues.apache.org/jira/browse/SPARK-29488) | In Web UI, stage page has js error when sort table. |  Minor | Web UI | jenny | jenny |
| [SPARK-29556](https://issues.apache.org/jira/browse/SPARK-29556) | Avoid including path in error response from REST submission server |  Minor | Spark Core | Sean R. Owen | Sean R. Owen |
| [SPARK-29560](https://issues.apache.org/jira/browse/SPARK-29560) | Add typesafe bintray repo for sbt-mima-plugin |  Blocker | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29569](https://issues.apache.org/jira/browse/SPARK-29569) | doc build fails with \`/api/scala/lib/jquery.js\` doesn't exist |  Blocker | Build, Documentation | Xingbo Jiang | Hyukjin Kwon |
| [SPARK-29503](https://issues.apache.org/jira/browse/SPARK-29503) | MapObjects doesn't copy Unsafe data when nested under Safe data |  Major | SQL | Aaron Lewis | Jungtaek Lim |
| [SPARK-29552](https://issues.apache.org/jira/browse/SPARK-29552) | Fix the flaky test failed in AdaptiveQueryExecSuite # multiple joins |  Major | SQL | Ke Jia | Ke Jia |
| [SPARK-29571](https://issues.apache.org/jira/browse/SPARK-29571) | Fix UT in  AllExecutionsPageSuite class |  Minor | Tests | Ankit Raj Boudh | Ankit Raj Boudh |
| [SPARK-29145](https://issues.apache.org/jira/browse/SPARK-29145) | Spark SQL cannot handle "NOT IN" condition when using "JOIN" |  Minor | SQL | Dezhi Cai | angerszhu |
| [SPARK-29578](https://issues.apache.org/jira/browse/SPARK-29578) | JDK 1.8.0\_232 timezone updates cause "Kwajalein" test failures again |  Minor | Tests | Sean R. Owen | Sean R. Owen |
| [SPARK-21287](https://issues.apache.org/jira/browse/SPARK-21287) | Cannot use Int.MIN\_VALUE as Spark SQL fetchsize |  Major | SQL | Maciej Bryński | Hu Fuwang |
| [SPARK-29580](https://issues.apache.org/jira/browse/SPARK-29580) | Add kerberos debug messages for Kafka secure tests |  Major | Tests | Dongjoon Hyun | Gabor Somogyi |
| [SPARK-29490](https://issues.apache.org/jira/browse/SPARK-29490) | Reset 'WritableColumnVector' in 'RowToColumnarExec' |  Major | SQL | Rong Ma | Rong Ma |
| [SPARK-29614](https://issues.apache.org/jira/browse/SPARK-29614) | Failure of DateTimeUtilsSuite and TimestampFormatterSuite |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29624](https://issues.apache.org/jira/browse/SPARK-29624) | Jenkins fails with "Python versions prior to 2.7 are not supported." |  Blocker | Tests | Dongjoon Hyun | Shane Knapp |
| [SPARK-29637](https://issues.apache.org/jira/browse/SPARK-29637) | SHS Endpoint /applications/\<app\_id\>/jobs/ doesn't include description |  Minor | Spark Core | Gabor Somogyi | Gabor Somogyi |
| [SPARK-29627](https://issues.apache.org/jira/browse/SPARK-29627) | array\_contains should allow column instances in PySpark |  Minor | PySpark, SQL | Hyukjin Kwon |  |
| [SPARK-29604](https://issues.apache.org/jira/browse/SPARK-29604) | SessionState is initialized with isolated classloader for Hive if spark.sql.hive.metastore.jars is being set |  Major | SQL | Jungtaek Lim | Jungtaek Lim |
| [SPARK-29653](https://issues.apache.org/jira/browse/SPARK-29653) | Fix MICROS\_PER\_MONTH in IntervalUtils |  Minor | SQL | Kent Yao | Kent Yao |
| [SPARK-29666](https://issues.apache.org/jira/browse/SPARK-29666) | Release script fail to publish release under dry run mode |  Major | Build | Xingbo Jiang | Xingbo Jiang |
| [SPARK-29651](https://issues.apache.org/jira/browse/SPARK-29651) | Incorrect parsing of interval seconds fraction |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29582](https://issues.apache.org/jira/browse/SPARK-29582) | Unify the behavior of pyspark.TaskContext with spark core |  Major | PySpark | Xianyang Liu | Xianyang Liu |
| [SPARK-29520](https://issues.apache.org/jira/browse/SPARK-29520) | Incorrect checking of negative intervals |  Major | Structured Streaming | Maxim Gekk | Maxim Gekk |
| [SPARK-29277](https://issues.apache.org/jira/browse/SPARK-29277) | DataSourceV2: Add early filter and projection pushdown |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-29664](https://issues.apache.org/jira/browse/SPARK-29664) | Column.getItem behavior is not consistent with Scala version |  Major | PySpark | Terry Kim | Terry Kim |
| [SPARK-24152](https://issues.apache.org/jira/browse/SPARK-24152) | SparkR CRAN feasibility check server problem |  Critical | SparkR, Tests | Dongjoon Hyun | L. C. Hsieh |
| [SPARK-29722](https://issues.apache.org/jira/browse/SPARK-29722) | Non reversed keywords should be able to be used in high order functions |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-29353](https://issues.apache.org/jira/browse/SPARK-29353) | AlterTableAlterColumnStatement should fallback to v1 AlterTableChangeColumnCommand |  Major | SQL | Wenchen Fan | L. C. Hsieh |
| [SPARK-29742](https://issues.apache.org/jira/browse/SPARK-29742) | dev/lint-java cann't check all code we will use |  Major | Build | angerszhu | angerszhu |
| [SPARK-29743](https://issues.apache.org/jira/browse/SPARK-29743) | sample should set needCopyResult to true if its child is |  Blocker | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29642](https://issues.apache.org/jira/browse/SPARK-29642) | ContinuousMemoryStream throws error on String type |  Major | Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-29796](https://issues.apache.org/jira/browse/SPARK-29796) | HiveExternalCatalogVersionsSuite\` should ignore preview release |  Blocker | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-22340](https://issues.apache.org/jira/browse/SPARK-22340) | pyspark setJobGroup doesn't match java threads |  Major | PySpark | Leif Mortenson | Hyukjin Kwon |
| [SPARK-29798](https://issues.apache.org/jira/browse/SPARK-29798) | Infers bytes as binary type in Python 3 at PySpark |  Major | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-28978](https://issues.apache.org/jira/browse/SPARK-28978) | PySpark: Can't pass more than 256 arguments to a UDF |  Major | PySpark | Jim Fulton | Bago Amirbekian |
| [SPARK-29822](https://issues.apache.org/jira/browse/SPARK-29822) | Cast error when there are spaces between signs and values |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-26154](https://issues.apache.org/jira/browse/SPARK-26154) | Stream-stream joins - left outer join gives inconsistent output |  Blocker | Structured Streaming | Haripriya | Jungtaek Lim |
| [SPARK-29755](https://issues.apache.org/jira/browse/SPARK-29755) | ClassCastException occurs when reading events from SHS |  Major | Spark Core | Jungtaek Lim | Jungtaek Lim |
| [SPARK-29850](https://issues.apache.org/jira/browse/SPARK-29850) | sort-merge-join an empty table should not memory leak |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29789](https://issues.apache.org/jira/browse/SPARK-29789) | should not parse the bucket column name again when creating v2 tables |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29778](https://issues.apache.org/jira/browse/SPARK-29778) | saveAsTable append mode is not passing writer options |  Critical | SQL | Burak Yavuz | Wesley Hoffman |
| [SPARK-29682](https://issues.apache.org/jira/browse/SPARK-29682) | Failure when resolving conflicting references in Join: |  Major | SQL | sandeshyapuram | Terry Kim |
| [SPARK-29888](https://issues.apache.org/jira/browse/SPARK-29888) | New interval string parser parse '.111 seconds' to null |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-29127](https://issues.apache.org/jira/browse/SPARK-29127) | Add a Python, Pandas and PyArrow versions in clue at SQL query tests |  Major | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-29932](https://issues.apache.org/jira/browse/SPARK-29932) | lint-r should do non-zero exit in case of errors |  Minor | SparkR, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29936](https://issues.apache.org/jira/browse/SPARK-29936) | Fix SparkR lint errors and add lint-r GitHub Action |  Minor | SparkR | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-25694](https://issues.apache.org/jira/browse/SPARK-25694) | URL.setURLStreamHandlerFactory causing incompatible HttpURLConnection issue |  Minor | Spark Core, SQL | Bo Yang | Zhou Jiang |
| [SPARK-29777](https://issues.apache.org/jira/browse/SPARK-29777) | SparkR::cleanClosure aggressively removes a function required by user function |  Major | SparkR | Hossein Falaki | Hossein Falaki |
| [SPARK-27558](https://issues.apache.org/jira/browse/SPARK-27558) | NPE in TaskCompletionListener due to Spark OOM in UnsafeExternalSorter causing tasks to hang |  Major | Spark Core | Alessandro Bellina | Artsiom Yudovin |
| [SPARK-29869](https://issues.apache.org/jira/browse/SPARK-29869) | HiveMetastoreCatalog#convertToLogicalRelation throws AssertionError |  Major | SQL | Yuming Wang | Lantao Jin |
| [SPARK-29918](https://issues.apache.org/jira/browse/SPARK-29918) | RecordBinaryComparator should check endianness when compared by long |  Minor | SQL | EdisonWang | EdisonWang |
| [SPARK-29691](https://issues.apache.org/jira/browse/SPARK-29691) | Estimator fit method fails to copy params (in PySpark) |  Minor | PySpark | John Bauer | John Bauer |
| [SPARK-29029](https://issues.apache.org/jira/browse/SPARK-29029) | PhysicalOperation.collectProjectsAndFilters should use AttributeMap while substituting aliases |  Major | Optimizer, SQL | Nikita Konda | Nikita Konda |
| [SPARK-29951](https://issues.apache.org/jira/browse/SPARK-29951) | Make the behavior of Postgre dialect independent of ansi mode config |  Major | SQL | Yuanjian Li | Yuanjian Li |
| [SPARK-29911](https://issues.apache.org/jira/browse/SPARK-29911) | Cache table may memory leak when session closed |  Major | SQL | Lantao Jin | Lantao Jin |
| [SPARK-29874](https://issues.apache.org/jira/browse/SPARK-29874) | Optimize Dataset.isEmpty() |  Major | SQL | angerszhu | angerszhu |
| [SPARK-29558](https://issues.apache.org/jira/browse/SPARK-29558) | ResolveTables and ResolveRelations should be order-insensitive |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29971](https://issues.apache.org/jira/browse/SPARK-29971) | Multiple possible buffer leaks in TransportFrameDecoder and TransportCipher |  Major | Spark Core | Norman Maurer | Norman Maurer |
| [SPARK-29970](https://issues.apache.org/jira/browse/SPARK-29970) | open/close state is not preserved for Timelineview |  Minor | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-29681](https://issues.apache.org/jira/browse/SPARK-29681) | Spark Application UI- environment tab field "value" sort is not working |  Major | Web UI | jobit mathew | Prakhar Jain |
| [SPARK-29973](https://issues.apache.org/jira/browse/SPARK-29973) | Use nano time to calculate 'processedRowsPerSecond' to avoid 'NaN'/'Infinity' |  Minor | Structured Streaming | Genmao Yu | Genmao Yu |
| [SPARK-24690](https://issues.apache.org/jira/browse/SPARK-24690) | Add a new config to control plan stats computation in LogicalRelation |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-29999](https://issues.apache.org/jira/browse/SPARK-29999) | Writing empty partition via DSv2 implementation of FileStreamSink throws FileNotFoundException |  Critical | SQL | Jungtaek Lim | Jungtaek Lim |
| [SPARK-29890](https://issues.apache.org/jira/browse/SPARK-29890) | Unable to fill na with 0 with duplicate columns |  Major | Spark Shell | sandeshyapuram | Terry Kim |
| [SPARK-30030](https://issues.apache.org/jira/browse/SPARK-30030) | Use RegexChecker instead of TokenChecker to check \`org.apache.commons.lang.\` |  Major | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30008](https://issues.apache.org/jira/browse/SPARK-30008) | the dataType of collect\_list and collect\_set aggregate functions should be ArrayType(\_, false) |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-29768](https://issues.apache.org/jira/browse/SPARK-29768) | nondeterministic expression fails column pruning |  Major | SQL | yucai | wuyi |
| [SPARK-30065](https://issues.apache.org/jira/browse/SPARK-30065) | Unable to drop na with duplicate columns |  Major | SQL | Terry Kim | Terry Kim |
| [SPARK-30074](https://issues.apache.org/jira/browse/SPARK-30074) | The maxNumPostShufflePartitions config should obey reducePostShufflePartitions enabled |  Major | SQL | Yuanjian Li | Yuanjian Li |
| [SPARK-30050](https://issues.apache.org/jira/browse/SPARK-30050) | analyze table and rename table should not erase the bucketing metadata at hive side |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-30025](https://issues.apache.org/jira/browse/SPARK-30025) | Continuous shuffle block fetching should be disabled by default when the old fetch protocol is used |  Major | Spark Core | Yuanjian Li | Yuanjian Li |
| [SPARK-30075](https://issues.apache.org/jira/browse/SPARK-30075) | ArrayIndexType doesn't implement hashCode correctly |  Minor | Spark Core | Jungtaek Lim | Jungtaek Lim |
| [SPARK-30083](https://issues.apache.org/jira/browse/SPARK-30083) | visitArithmeticUnary should wrap PLUS case with UnaryPositive for type checking |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-30082](https://issues.apache.org/jira/browse/SPARK-30082) | Zeros are being treated as NaNs |  Major | SQL | John Ayad | John Ayad |
| [SPARK-30111](https://issues.apache.org/jira/browse/SPARK-30111) | spark R dockerfile fails to build |  Major | Build, jenkins, Kubernetes, Spark Core | Shane Knapp | Ilan Filonenko |
| [SPARK-30099](https://issues.apache.org/jira/browse/SPARK-30099) | Improve Analyzed Logical Plan as duplicate AnalysisExceptions are coming |  Minor | SQL | jobit mathew | Aman Omer |
| [SPARK-30129](https://issues.apache.org/jira/browse/SPARK-30129) | New auth engine does not keep client ID in TransportClient after auth |  Major | Spark Core | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-30093](https://issues.apache.org/jira/browse/SPARK-30093) | Improve error message for creating views |  Major | SQL | Aman Omer | Aman Omer |
| [SPARK-30121](https://issues.apache.org/jira/browse/SPARK-30121) | Fix memory usage in sbt build script |  Trivial | Build | Kent Yao | Kent Yao |
| [SPARK-29953](https://issues.apache.org/jira/browse/SPARK-29953) | File stream source cleanup options may break a file sink output |  Major | Structured Streaming | Shixiong Zhu | Jungtaek Lim |
| [SPARK-30067](https://issues.apache.org/jira/browse/SPARK-30067) | Fix fragment offset comparison in getBlockHosts |  Minor | SQL | madianjun | madianjun |
| [SPARK-30001](https://issues.apache.org/jira/browse/SPARK-30001) | can't lookup v1 tables whose names specify the session catalog |  Major | SQL | Wenchen Fan | Terry Kim |
| [SPARK-30164](https://issues.apache.org/jira/browse/SPARK-30164) | Exclude Hive domain in Unidoc build explicitly |  Major | Documentation | Gengliang Wang | Gengliang Wang |
| [SPARK-30179](https://issues.apache.org/jira/browse/SPARK-30179) | Improve test in SingleSessionSuite |  Major | Tests | Yuming Wang | Xuedong Luan |
| [SPARK-29152](https://issues.apache.org/jira/browse/SPARK-29152) | Spark Executor Plugin API shutdown is not proper when dynamic allocation enabled |  Major | Spark Core | jobit mathew | Rakesh Raushan |
| [SPARK-30104](https://issues.apache.org/jira/browse/SPARK-30104) | global temp db name can be used as a table name under v2 catalog |  Major | SQL | Terry Kim | Terry Kim |
| [SPARK-29920](https://issues.apache.org/jira/browse/SPARK-29920) | Parsing failure on interval '20 15' day to hour |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30198](https://issues.apache.org/jira/browse/SPARK-30198) | BytesToBytesMap does not grow internal long array as expected |  Major | Spark Core | L. C. Hsieh | L. C. Hsieh |
| [SPARK-30199](https://issues.apache.org/jira/browse/SPARK-30199) | Recover spark.ui.port and spark.blockManager.port from checkpoint |  Major | DStreams | Dongjoon Hyun | Aaruna Godthi |
| [SPARK-29188](https://issues.apache.org/jira/browse/SPARK-29188) | toPandas gets wrong dtypes when applied on empty DF |  Major | PySpark, SQL | Radhwane Chebaane | David Lindelöf |
| [SPARK-30126](https://issues.apache.org/jira/browse/SPARK-30126) | sparkContext.addFile fails when file path contains spaces |  Minor | PySpark | Jan | Ankit Raj Boudh |
| [SPARK-30238](https://issues.apache.org/jira/browse/SPARK-30238) | hive partition pruning can only support string and integral types |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-30248](https://issues.apache.org/jira/browse/SPARK-30248) | DROP TABLE doesn't work if session catalog name is provided |  Major | SQL | Terry Kim | Terry Kim |
| [SPARK-30167](https://issues.apache.org/jira/browse/SPARK-30167) | Log4j configuration for REPL can't override the root logger properly. |  Major | Spark Shell | Kousuke Saruta | Kousuke Saruta |
| [SPARK-30263](https://issues.apache.org/jira/browse/SPARK-30263) | Don't log values of ignored non-Spark properties |  Minor | Spark Core | Sean R. Owen | Sean R. Owen |
| [SPARK-30259](https://issues.apache.org/jira/browse/SPARK-30259) | CREATE TABLE throw error when session catalog specified |  Major | SQL | Hu Fuwang | Hu Fuwang |
| [SPARK-25100](https://issues.apache.org/jira/browse/SPARK-25100) | Using KryoSerializer and setting registrationRequired true can lead job failed |  Major | Spark Core | deshanxiao | deshanxiao |
| [SPARK-30265](https://issues.apache.org/jira/browse/SPARK-30265) | Do not change R version when releasing preview versions |  Major | Project Infra | Yuming Wang | Yuming Wang |
| [SPARK-29574](https://issues.apache.org/jira/browse/SPARK-29574) | spark with user provided hadoop doesn't work on kubernetes |  Major | Kubernetes, Spark Core | Michał Wesołowski | Shahin Shakeri |
| [SPARK-29043](https://issues.apache.org/jira/browse/SPARK-29043) | [History Server]Only one replay thread of FsHistoryProvider work because of straggler |  Major | Spark Core | feiwang | feiwang |
| [SPARK-30268](https://issues.apache.org/jira/browse/SPARK-30268) | Incorrect pyspark package name when releasing preview version |  Major | Project Infra | Yuming Wang | Yuming Wang |
| [SPARK-30094](https://issues.apache.org/jira/browse/SPARK-30094) | Current namespace is not used during table resolution |  Major | SQL | Terry Kim | Terry Kim |
| [SPARK-30201](https://issues.apache.org/jira/browse/SPARK-30201) | HiveOutputWriter standardOI should use ObjectInspectorCopyOption.DEFAULT |  Critical | SQL | ulysses you | ulysses you |
| [SPARK-29600](https://issues.apache.org/jira/browse/SPARK-29600) | array\_contains built in function is not backward compatible in 3.0 |  Major | SQL | ABHISHEK KUMAR GUPTA | Aman Omer |
| [SPARK-30235](https://issues.apache.org/jira/browse/SPARK-30235) | Keeping compatibility with 2.4 external shuffle service regarding host local shuffle blocks reading |  Minor | Spark Core | Attila Zsolt Piros | Attila Zsolt Piros |
| [SPARK-30274](https://issues.apache.org/jira/browse/SPARK-30274) | Avoid BytesToBytesMap lookup hang forever when holding keys reaching max capacity |  Major | Spark Core | L. C. Hsieh | L. C. Hsieh |
| [SPARK-28502](https://issues.apache.org/jira/browse/SPARK-28502) | Error with struct conversion while using pandas\_udf |  Minor | PySpark | Nasir Ali |  |
| [SPARK-30262](https://issues.apache.org/jira/browse/SPARK-30262) | Avoid NumberFormatException when totalSize is empty |  Major | SQL | chenliang | chenliang |
| [SPARK-30254](https://issues.apache.org/jira/browse/SPARK-30254) | Fix use custom escape lead to LikeSimplification optimize failed |  Major | SQL | ulysses you | ulysses you |
| [SPARK-29450](https://issues.apache.org/jira/browse/SPARK-29450) | [SS] In streaming aggregation, metric for output rows is not measured in append mode |  Minor | Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-30301](https://issues.apache.org/jira/browse/SPARK-30301) | Datetimes as fields of complex types to hive string results wrong |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-30300](https://issues.apache.org/jira/browse/SPARK-30300) | Update correct string in UI for metrics when driver updates same metrics id as tasks. |  Major | SQL, Web UI | Niranjan Artal | Niranjan Artal |
| [SPARK-29938](https://issues.apache.org/jira/browse/SPARK-29938) | Add batching in alter table add partition flow |  Major | SQL | Prakhar Jain | Prakhar Jain |
| [SPARK-17398](https://issues.apache.org/jira/browse/SPARK-17398) | Failed to query on external JSon Partitioned table |  Major | SQL | pin\_zhang | Wing Yew Poon |
| [SPARK-28332](https://issues.apache.org/jira/browse/SPARK-28332) | SQLMetric wrong initValue |  Minor | SQL | Song Jun | EdisonWang |
| [SPARK-21869](https://issues.apache.org/jira/browse/SPARK-21869) | A cached Kafka producer should not be closed if any task is using it. |  Major | Structured Streaming | Shixiong Zhu | Jungtaek Lim |
| [SPARK-29505](https://issues.apache.org/jira/browse/SPARK-29505) | desc extended \<table name\> \<column name\> is case sensitive |  Major | SQL | ABHISHEK KUMAR GUPTA | pavithra ramachandran |
| [SPARK-30266](https://issues.apache.org/jira/browse/SPARK-30266) | Int overflow and MatchError in ApproximatePercentile |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-30345](https://issues.apache.org/jira/browse/SPARK-30345) | Flaky test failure: ThriftServerWithSparkContextSuite.SPARK-29911: Uncache cached tables when session closed |  Major | SQL | Jungtaek Lim | Jungtaek Lim |
| [SPARK-30360](https://issues.apache.org/jira/browse/SPARK-30360) | Avoid Redact classpath entries in History Server UI |  Major | Web UI | Ajith S | Ajith S |
| [SPARK-27348](https://issues.apache.org/jira/browse/SPARK-27348) | HeartbeatReceiver doesn't remove lost executors from CoarseGrainedSchedulerBackend |  Major | Spark Core | Shixiong Zhu | wuyi |
| [SPARK-30348](https://issues.apache.org/jira/browse/SPARK-30348) | Flaky test:  org.apache.spark.deploy.master.MasterSuite.SPARK-27510: Master should avoid dead loop while launching executor failed in Worker |  Major | Spark Core | Jungtaek Lim | Jungtaek Lim |
| [SPARK-30361](https://issues.apache.org/jira/browse/SPARK-30361) | Monitoring URL do not redact information about environment |  Minor | Spark Core | Ajith S | Ajith S |
| [SPARK-26560](https://issues.apache.org/jira/browse/SPARK-26560) | Repeating select on udf function throws analysis exception - function not registered |  Major | SQL | Haripriya | Jungtaek Lim |
| [SPARK-30284](https://issues.apache.org/jira/browse/SPARK-30284) | CREATE VIEW should track the current catalog and namespace |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-30341](https://issues.apache.org/jira/browse/SPARK-30341) | check overflow for interval arithmetic operations |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-30285](https://issues.apache.org/jira/browse/SPARK-30285) | Fix deadlock between LiveListenerBus#stop and AsyncEventQueue#removeListenerOnError |  Major | Spark Core | Wang Shuo | Wang Shuo |
| [SPARK-30225](https://issues.apache.org/jira/browse/SPARK-30225) | "Stream is corrupted at" exception on reading disk-spilled data of a shuffle operation |  Major | Input/Output | Mala Chikka Kempanna | Marcelo Masiero Vanzin |
| [SPARK-30406](https://issues.apache.org/jira/browse/SPARK-30406) | OneForOneStreamManager use AtomicLong |  Minor | Spark Core | Ajith S | Ajith S |
| [SPARK-30144](https://issues.apache.org/jira/browse/SPARK-30144) | MLP param map missing |  Minor | ML | Glen-Erik Cortes | Huaxin Gao |
| [SPARK-30426](https://issues.apache.org/jira/browse/SPARK-30426) | Fix the disorder of structured-streaming-kafka-integration page |  Major | Documentation, Structured Streaming | Yuanjian Li | Yuanjian Li |
| [SPARK-29800](https://issues.apache.org/jira/browse/SPARK-29800) | Rewrite non-correlated EXISTS subquery use ScalaSubquery to optimize perf |  Major | SQL | angerszhu | angerszhu |
| [SPARK-30313](https://issues.apache.org/jira/browse/SPARK-30313) | Flaky test: MasterSuite.master/worker web ui available with reverseProxy |  Major | Tests | Marcelo Masiero Vanzin | Jungtaek Lim |
| [SPARK-19784](https://issues.apache.org/jira/browse/SPARK-19784) | refresh datasource table after alter the location |  Major | SQL | Song Jun | Yuming Wang |
| [SPARK-25403](https://issues.apache.org/jira/browse/SPARK-25403) | Broadcast join is changing to sort merge join , after spark-beeline session restarts. |  Major | SQL | Ayush Anubhava | Yuming Wang |
| [SPARK-30382](https://issues.apache.org/jira/browse/SPARK-30382) | start-thriftserver throws ClassNotFoundException |  Minor | SQL | Ajith S | Ajith S |
| [SPARK-30429](https://issues.apache.org/jira/browse/SPARK-30429) | WideSchemaBenchmark fails with OOM |  Major | SQL | Maxim Gekk | L. C. Hsieh |
| [SPARK-30450](https://issues.apache.org/jira/browse/SPARK-30450) | Exclude .git folder for python linter |  Minor | Spark Core | Eric Chang | Eric Chang |
| [SPARK-30445](https://issues.apache.org/jira/browse/SPARK-30445) | Accelerator aware scheduling handle setting configs to 0 better |  Major | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-30281](https://issues.apache.org/jira/browse/SPARK-30281) | 'archive' option in FileStreamSource misses to consider partitioned and recursive option |  Major | Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-30417](https://issues.apache.org/jira/browse/SPARK-30417) | SPARK-29976 calculation of slots wrong for Standalone Mode |  Major | Spark Core | Thomas Graves | Yuchen Huo |
| [SPARK-30440](https://issues.apache.org/jira/browse/SPARK-30440) | Flaky test: org.apache.spark.scheduler.TaskSetManagerSuite.reset |  Major | Spark Core, Tests | Jungtaek Lim | Ajith S |
| [SPARK-30459](https://issues.apache.org/jira/browse/SPARK-30459) | Fix ignoreMissingFiles/ignoreCorruptFiles in DSv2 |  Major | SQL | wuyi | wuyi |
| [SPARK-30447](https://issues.apache.org/jira/browse/SPARK-30447) | Constant propagation nullability issue |  Major | SQL | Peter Toth | Peter Toth |
| [SPARK-30448](https://issues.apache.org/jira/browse/SPARK-30448) | accelerator aware scheduling enforce cores as limiting resource |  Major | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-30312](https://issues.apache.org/jira/browse/SPARK-30312) | Preserve path permission when truncate table |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-29748](https://issues.apache.org/jira/browse/SPARK-29748) | Remove sorting of fields in PySpark SQL Row creation |  Major | PySpark, SQL | Bryan Cutler | Bryan Cutler |
| [SPARK-30489](https://issues.apache.org/jira/browse/SPARK-30489) | Make build delete pyspark.zip file properly |  Trivial | Build | Jeff Evans | Jeff Evans |
| [SPARK-30458](https://issues.apache.org/jira/browse/SPARK-30458) | The Executor Computing Time in Time Line of Stage Page is Wrong |  Minor | Web UI | SongXun | SongXun |
| [SPARK-30480](https://issues.apache.org/jira/browse/SPARK-30480) | Pyspark test "test\_memory\_limit" fails consistently |  Major | PySpark | Jungtaek Lim | Hyukjin Kwon |
| [SPARK-30493](https://issues.apache.org/jira/browse/SPARK-30493) | pyspark.ml.classification.OneVsRestModel shouldn't have setClassifier, setLabelCol and setWeightCol methods |  Major | ML, PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-30496](https://issues.apache.org/jira/browse/SPARK-30496) | Pyspark on kubernetes does not support --py-files from remote storage in cluster mode |  Major | Kubernetes, PySpark, Spark Core | Navdeep Poonia |  |
| [SPARK-30325](https://issues.apache.org/jira/browse/SPARK-30325) | markPartitionCompleted cause task status inconsistent |  Major | Spark Core | haiyangyu | haiyangyu |
| [SPARK-30509](https://issues.apache.org/jira/browse/SPARK-30509) | Deprecation log warning is not printed in Avro schema inferring |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30504](https://issues.apache.org/jira/browse/SPARK-30504) | OneVsRest and OneVsRestModel \_from\_java and \_to\_java should handle weightCol |  Minor | ML, PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-30495](https://issues.apache.org/jira/browse/SPARK-30495) | How to disable 'spark.security.credentials.${service}.enabled' in Structured streaming while connecting to a kafka cluster |  Major | Structured Streaming | act\_coder | Gabor Somogyi |
| [SPARK-30246](https://issues.apache.org/jira/browse/SPARK-30246) | Spark on Yarn External Shuffle Service Memory Leak |  Major | Shuffle, Spark Core | huangweiyi | Henrique dos Santos Goulart |
| [SPARK-30310](https://issues.apache.org/jira/browse/SPARK-30310) | SparkUncaughtExceptionHandler halts running process unexpectedly |  Major | Spark Core | Tin Hang To | Tin Hang To |
| [SPARK-30530](https://issues.apache.org/jira/browse/SPARK-30530) | CSV load followed by "is null" filter produces incorrect results |  Major | SQL | Jason Darrell Lowe | Maxim Gekk |
| [SPARK-30572](https://issues.apache.org/jira/browse/SPARK-30572) | Add a fallback Maven repository |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30486](https://issues.apache.org/jira/browse/SPARK-30486) | Bump lz4-java version to 1.7.1 |  Major | Build, Spark Core | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-30553](https://issues.apache.org/jira/browse/SPARK-30553) | Fix structured-streaming java example error |  Trivial | Documentation | bettermouse | bettermouse |
| [SPARK-30503](https://issues.apache.org/jira/browse/SPARK-30503) | OnlineLDAOptimizer does not handle persistance correctly |  Minor | GraphX, ML | zhengruifeng | zhengruifeng |
| [SPARK-30555](https://issues.apache.org/jira/browse/SPARK-30555) | MERGE INTO insert action should only access columns from source table |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-30604](https://issues.apache.org/jira/browse/SPARK-30604) | HostLocal Block size missed in log total bytes |  Trivial | Shuffle, Spark Core | Udbhav Agrawal | Udbhav Agrawal |
| [SPARK-30606](https://issues.apache.org/jira/browse/SPARK-30606) | Applying the \`like\` function with 2 parameters fails |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30556](https://issues.apache.org/jira/browse/SPARK-30556) | Copy sparkContext.localproperties to child thread inSubqueryExec.executionContext |  Major | SQL | Ajith S | Ajith S |
| [SPARK-30298](https://issues.apache.org/jira/browse/SPARK-30298) | bucket join cannot work for self-join with views |  Minor | SQL | Xiaoju Wu | Terry Kim |
| [SPARK-30645](https://issues.apache.org/jira/browse/SPARK-30645) | collect() support Unicode charactes tests fails on Windows |  Major | SparkR, Tests | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-30633](https://issues.apache.org/jira/browse/SPARK-30633) | Codegen fails when xxHash seed is not an integer |  Major | SQL | Patrick Cording | Patrick Cording |
| [SPARK-23435](https://issues.apache.org/jira/browse/SPARK-23435) | R tests should support latest testthat |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-30582](https://issues.apache.org/jira/browse/SPARK-30582) | Spark UI is not showing Aggregated Metrics by Executor in stage page |  Minor | Web UI | Saurabh Chawla | Saurabh Chawla |
| [SPARK-30512](https://issues.apache.org/jira/browse/SPARK-30512) | Use a dedicated boss event group loop in the netty pipeline for external shuffle service |  Major | Shuffle, Spark Core | Chandni Singh | Chandni Singh |
| [SPARK-30672](https://issues.apache.org/jira/browse/SPARK-30672) | numpy is a dependency for building PySpark API docs |  Minor | Build, PySpark | Nicholas Chammas | Nicholas Chammas |
| [SPARK-30435](https://issues.apache.org/jira/browse/SPARK-30435) | update Spark SQL guide of Supported Hive Features |  Major | Documentation | angerszhu | angerszhu |
| [SPARK-30622](https://issues.apache.org/jira/browse/SPARK-30622) | commands should return dummy statistics |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29438](https://issues.apache.org/jira/browse/SPARK-29438) | Failed to get state store in stream-stream join |  Critical | Structured Streaming | Genmao Yu | Jungtaek Lim |
| [SPARK-30362](https://issues.apache.org/jira/browse/SPARK-30362) | InputMetrics are not updated for DataSourceRDD V2 |  Major | Spark Core | Sandeep Katta | Sandeep Katta |
| [SPARK-30511](https://issues.apache.org/jira/browse/SPARK-30511) | Spark marks intentionally killed speculative tasks as pending leads to holding idle executors |  Major | Scheduler, Spark Core | Zebing Lin | Zebing Lin |
| [SPARK-30658](https://issues.apache.org/jira/browse/SPARK-30658) | Limit after on streaming dataframe before streaming agg returns wrong results |  Critical | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-30657](https://issues.apache.org/jira/browse/SPARK-30657) | Streaming limit after streaming dropDuplicates can throw error |  Critical | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-29138](https://issues.apache.org/jira/browse/SPARK-29138) | Flaky test: pyspark.mllib.tests.test\_streaming\_algorithms.StreamingLogisticRegressionWithSGDTests.test\_parameter\_accuracy |  Major | MLlib, Tests | Jungtaek Lim | Dongjoon Hyun |
| [SPARK-30704](https://issues.apache.org/jira/browse/SPARK-30704) | Use jekyll-redirect-from 0.15.0 instead of the latest |  Blocker | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30697](https://issues.apache.org/jira/browse/SPARK-30697) | Handle database and namespace exceptions in catalog.isView |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-28413](https://issues.apache.org/jira/browse/SPARK-28413) | sizeInByte is Not updated for parquet datasource on Next Insert. |  Minor | SQL | Babulal |  |
| [SPARK-30717](https://issues.apache.org/jira/browse/SPARK-30717) | AQE subquery map should cache \`SubqueryExec\` instead of \`ExecSubqueryExpression\` |  Major | SQL | Wei Xue | Wei Xue |
| [SPARK-30636](https://issues.apache.org/jira/browse/SPARK-30636) | Unable to add packages on spark-packages.org |  Critical | Project Infra | Xiao Li | Cheng Lian |
| [SPARK-30738](https://issues.apache.org/jira/browse/SPARK-30738) | Use specific image version in "Launcher client dependencies" test |  Major | Kubernetes, Spark Core, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30721](https://issues.apache.org/jira/browse/SPARK-30721) | fix DataFrameAggregateSuite when enabling AQE |  Major | SQL | Wei Xue | Wenchen Fan |
| [SPARK-30612](https://issues.apache.org/jira/browse/SPARK-30612) | can't resolve qualified column name with v2 tables |  Major | SQL | Wenchen Fan | Terry Kim |
| [SPARK-30752](https://issues.apache.org/jira/browse/SPARK-30752) | Wrong result of to\_utc\_timestamp() on daylight saving day |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30759](https://issues.apache.org/jira/browse/SPARK-30759) | The cache in StringRegexExpression is not initialized for foldable patterns |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30777](https://issues.apache.org/jira/browse/SPARK-30777) | PySpark test\_arrow tests fail with Pandas \>= 1.0.0 |  Major | PySpark, Tests | Bryan Cutler |  |
| [SPARK-30756](https://issues.apache.org/jira/browse/SPARK-30756) | \`ThriftServerWithSparkContextSuite\` fails always on spark-branch-3.0-test-sbt-hadoop-2.7-hive-2.3 |  Blocker | SQL, Tests | Dongjoon Hyun | Hyukjin Kwon |
| [SPARK-30651](https://issues.apache.org/jira/browse/SPARK-30651) | EXPLAIN EXTENDED does not show detail information for aggregate operators |  Major | SQL | Xin Wu | Xin Wu |
| [SPARK-30797](https://issues.apache.org/jira/browse/SPARK-30797) | Set tradition user/group/other permission to ACL entries when setting up ACLs in truncate table |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-30528](https://issues.apache.org/jira/browse/SPARK-30528) | Potential performance regression with DPP subquery duplication |  Major | Optimizer, SQL | Mayur Bhosale | Wei Xue |
| [SPARK-30816](https://issues.apache.org/jira/browse/SPARK-30816) | Fix dev-run-integration-tests.sh to ignore empty param correctly |  Trivial | Kubernetes, Spark Core, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-25990](https://issues.apache.org/jira/browse/SPARK-25990) | TRANSFORM should handle different data types correctly |  Major | SQL | Wenchen Fan | wuyi |
| [SPARK-30810](https://issues.apache.org/jira/browse/SPARK-30810) | Allows to parse a Dataset having different column from 'value' in csv(dataset) API |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-30766](https://issues.apache.org/jira/browse/SPARK-30766) | Wrong truncation of old timestamps to hours and days |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30289](https://issues.apache.org/jira/browse/SPARK-30289) | Partitioned by Nested Column for \`InMemoryTable\` |  Major | SQL | DB Tsai |  |
| [SPARK-30826](https://issues.apache.org/jira/browse/SPARK-30826) | LIKE returns wrong result from external table using parquet |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30803](https://issues.apache.org/jira/browse/SPARK-30803) | Fix the home page link to Scala API document |  Blocker | Documentation | Dongjoon Hyun | Yuanjian Li |
| [SPARK-30799](https://issues.apache.org/jira/browse/SPARK-30799) | "spark\_catalog.t" should not be resolved to temp view |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-30843](https://issues.apache.org/jira/browse/SPARK-30843) | Wrong results of getting time components before 1582 year |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30793](https://issues.apache.org/jira/browse/SPARK-30793) | Wrong truncations of timestamps before the epoch to minutes and seconds |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-22590](https://issues.apache.org/jira/browse/SPARK-22590) | Broadcast thread propagates the localProperties to task |  Major | Spark Core | Ajith S | Ajith S |
| [SPARK-30847](https://issues.apache.org/jira/browse/SPARK-30847) | Take productPrefix into account in MurmurHash3.productHash |  Critical | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-30859](https://issues.apache.org/jira/browse/SPARK-30859) | Docstring syntax issues prevent proper compilation of documentation |  Trivial | Documentation | David Toneian |  |
| [SPARK-30814](https://issues.apache.org/jira/browse/SPARK-30814) | Add Columns references should be able to resolve each other |  Major | SQL | Burak Yavuz | Terry Kim |
| [SPARK-30785](https://issues.apache.org/jira/browse/SPARK-30785) | Create table like should keep tracksPartitionsInCatalog same with source table |  Major | SQL | Lantao Jin | Lantao Jin |
| [SPARK-28155](https://issues.apache.org/jira/browse/SPARK-28155) | do not leak SaveMode to file source v2 |  Blocker | SQL | Wenchen Fan |  |
| [SPARK-30763](https://issues.apache.org/jira/browse/SPARK-30763) | Fix java.lang.IndexOutOfBoundsException No group 1 for regexp\_extract |  Major | SQL | jiaan.geng | jiaan.geng |
| [SPARK-30884](https://issues.apache.org/jira/browse/SPARK-30884) | Upgrade to Py4J 0.10.9 |  Major | PySpark | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30904](https://issues.apache.org/jira/browse/SPARK-30904) | Thrift RowBasedSet serialization throws NullPointerException on NULL BigDecimal |  Major | Spark Core | Christian Stuart | Christian Stuart |
| [SPARK-30903](https://issues.apache.org/jira/browse/SPARK-30903) | Fail fast on duplicate columns when analyze columns |  Major | SQL | wuyi | wuyi |
| [SPARK-30925](https://issues.apache.org/jira/browse/SPARK-30925) | Overflow/round errors in conversions of milliseconds to/from microseconds |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30924](https://issues.apache.org/jira/browse/SPARK-30924) | Add additional validation into Merge Into |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-30939](https://issues.apache.org/jira/browse/SPARK-30939) | StringIndexer setOutputCols does not set output cols |  Major | ML | Sean R. Owen | Sean R. Owen |
| [SPARK-30885](https://issues.apache.org/jira/browse/SPARK-30885) | V1 table name should be fully qualified if catalog name is provided |  Major | SQL | Terry Kim | Terry Kim |
| [SPARK-30782](https://issues.apache.org/jira/browse/SPARK-30782) | Column resolution doesn't respect current catalog/namespace for v2 tables. |  Major | SQL | Terry Kim | Terry Kim |
| [SPARK-27619](https://issues.apache.org/jira/browse/SPARK-27619) | MapType should be prohibited in hash expressions |  Blocker | SQL | Josh Rosen | Rakesh Raushan |
| [SPARK-30968](https://issues.apache.org/jira/browse/SPARK-30968) | Upgrade aws-java-sdk-sts to 1.11.655 |  Minor | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30955](https://issues.apache.org/jira/browse/SPARK-30955) | Exclude Generate output when aliasing in nested column pruning |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-30972](https://issues.apache.org/jira/browse/SPARK-30972) | PruneHiveTablePartitions should be executed as earlyScanPushDownRules |  Major | SQL | wuyi | wuyi |
| [SPARK-30902](https://issues.apache.org/jira/browse/SPARK-30902) | default table provider should be decided by catalog implementations |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-30970](https://issues.apache.org/jira/browse/SPARK-30970) | Fix NPE in resolving k8s master url |  Minor | Kubernetes, Spark Core | Kent Yao | Kent Yao |
| [SPARK-30987](https://issues.apache.org/jira/browse/SPARK-30987) | ResourceDiscoveryPluginSuite sometimes fails |  Major | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-30977](https://issues.apache.org/jira/browse/SPARK-30977) | ResourceProfile and Builder should be private in spark 3.0 |  Major | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-29419](https://issues.apache.org/jira/browse/SPARK-29419) | Seq.toDS / spark.createDataset(Seq) is not thread-safe |  Blocker | SQL | Josh Rosen | Josh Rosen |
| [SPARK-30813](https://issues.apache.org/jira/browse/SPARK-30813) | Matrices.sprand mistakes in comments |  Trivial | ML | Xiaochang Wu | Xiaochang Wu |
| [SPARK-30993](https://issues.apache.org/jira/browse/SPARK-30993) | GenerateUnsafeRowJoiner corrupts the value if the datatype is UDF and its sql type has fixed length |  Major | SQL | Jungtaek Lim | Jungtaek Lim |
| [SPARK-31003](https://issues.apache.org/jira/browse/SPARK-31003) | Fix incorrect use of assume() in tests |  Major | Tests | Josh Rosen | Josh Rosen |
| [SPARK-30998](https://issues.apache.org/jira/browse/SPARK-30998) | ClassCastException when a generator having nested inner generators |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-30388](https://issues.apache.org/jira/browse/SPARK-30388) | mark all running map stages of finished job as finished |  Major | Spark Core, Web UI | Xuesen Liang | Xuesen Liang |
| [SPARK-30049](https://issues.apache.org/jira/browse/SPARK-30049) | SQL fails to parse when comment contains an unmatched quote character |  Major | SQL | Jason Darrell Lowe | Javier Fuentes |
| [SPARK-31015](https://issues.apache.org/jira/browse/SPARK-31015) | Star(\*) expression fails when used with fully qualified column names for v2 tables |  Major | SQL | Terry Kim | Terry Kim |
| [SPARK-30997](https://issues.apache.org/jira/browse/SPARK-30997) | An analysis failure in generators with aggregate functions |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-31050](https://issues.apache.org/jira/browse/SPARK-31050) | Disable flaky KafkaDelegationTokenSuite |  Major | SQL, Structured Streaming | wuyi | wuyi |
| [SPARK-30668](https://issues.apache.org/jira/browse/SPARK-30668) | to\_timestamp failed to parse 2020-01-27T20:06:11.847-0800 using pattern "yyyy-MM-dd'T'HH:mm:ss.SSSz" |  Blocker | SQL | Xiao Li | Maxim Gekk |
| [SPARK-31034](https://issues.apache.org/jira/browse/SPARK-31034) | ShuffleBlockFetcherIterator may can't create request for last group |  Major | Spark Core | wuyi | wuyi |
| [SPARK-31052](https://issues.apache.org/jira/browse/SPARK-31052) | Fix flaky test "DAGSchedulerSuite.shuffle fetch failed on speculative task, but original task succeed" |  Major | Spark Core | wuyi | wuyi |
| [SPARK-30563](https://issues.apache.org/jira/browse/SPARK-30563) | Regressions in Join benchmarks |  Minor | SQL | Maxim Gekk |  |
| [SPARK-31043](https://issues.apache.org/jira/browse/SPARK-31043) | Spark 3.0 built against hadoop2.7 can't start standalone master |  Critical | Build | Thomas Graves |  |
| [SPARK-31061](https://issues.apache.org/jira/browse/SPARK-31061) | Impossible to change the provider of a table in the HiveMetaStore |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-31014](https://issues.apache.org/jira/browse/SPARK-31014) | InMemoryStore: CountingRemoveIfForEach misses to remove key from parentToChildrenMap |  Minor | Spark Core | Jungtaek Lim | Jungtaek Lim |
| [SPARK-31082](https://issues.apache.org/jira/browse/SPARK-31082) | MapOutputTrackerMaster.getMapLocation can't handle last mapIndex |  Major | Spark Core | wuyi | wuyi |
| [SPARK-30941](https://issues.apache.org/jira/browse/SPARK-30941) | PySpark Row can be instantiated with duplicate field names |  Major | PySpark | David Roher | Hyukjin Kwon |
| [SPARK-31065](https://issues.apache.org/jira/browse/SPARK-31065) | Empty string values cause schema\_of\_json() to return a schema not usable by from\_json() |  Minor | SQL | Nicholas Chammas | Hyukjin Kwon |
| [SPARK-31095](https://issues.apache.org/jira/browse/SPARK-31095) | Upgrade netty-all to 4.1.47.Final |  Major | Build | Vishwas Vijaya Kumar | Dongjoon Hyun |
| [SPARK-30893](https://issues.apache.org/jira/browse/SPARK-30893) | Expressions should not change its data type/nullability after it's created |  Critical | SQL | Wenchen Fan |  |
| [SPARK-31111](https://issues.apache.org/jira/browse/SPARK-31111) | Fix interval output issue in ExtractBenchmark |  Minor | SQL, Tests | Kent Yao | Kent Yao |
| [SPARK-31126](https://issues.apache.org/jira/browse/SPARK-31126) | Upgrade Kafka to 2.4.1 |  Minor | Structured Streaming | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31066](https://issues.apache.org/jira/browse/SPARK-31066) | Disable useless and uncleaned hive SessionState initialization parts |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-31130](https://issues.apache.org/jira/browse/SPARK-31130) | Use the same version of \`commons-io\` in SBT |  Minor | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31129](https://issues.apache.org/jira/browse/SPARK-31129) | IntervalBenchmark and DateTimeBenchmark fails to run |  Major | Tests | Kent Yao | Kent Yao |
| [SPARK-31128](https://issues.apache.org/jira/browse/SPARK-31128) | Fix Uncaught TypeError in streaming statistics page |  Minor | Web UI | Gengliang Wang | Gengliang Wang |
| [SPARK-31153](https://issues.apache.org/jira/browse/SPARK-31153) | Cleanup several failures in lint-python |  Minor | Build, PySpark | Nicholas Chammas | Nicholas Chammas |
| [SPARK-30958](https://issues.apache.org/jira/browse/SPARK-30958) | do not set default era for DateTimeFormatter |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31146](https://issues.apache.org/jira/browse/SPARK-31146) | Leverage the helper method for aliasing in all SQL expressions |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-31163](https://issues.apache.org/jira/browse/SPARK-31163) | acl/permission should handle non-existed path when truncating table |  Major | SQL | wuyi | wuyi |
| [SPARK-31155](https://issues.apache.org/jira/browse/SPARK-31155) | Remove pydocstyle tests |  Minor | Build, Documentation | Nicholas Chammas | Nicholas Chammas |
| [SPARK-31166](https://issues.apache.org/jira/browse/SPARK-31166) | UNION map\<null, null\> and other maps should not fail |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31164](https://issues.apache.org/jira/browse/SPARK-31164) | Inconsistent rdd and output partitioning for bucket table when output doesn't contain all bucket columns |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-31123](https://issues.apache.org/jira/browse/SPARK-31123) | Drop does not work after join with aliases |  Major | SQL | Mikel San Vicente |  |
| [SPARK-31178](https://issues.apache.org/jira/browse/SPARK-31178) | sql("INSERT INTO v2DataSource ...").collect() double inserts |  Blocker | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-30951](https://issues.apache.org/jira/browse/SPARK-30951) | Potential data loss for legacy applications after switch to proleptic Gregorian calendar |  Blocker | SQL | Bruce Robbins | Maxim Gekk |
| [SPARK-30541](https://issues.apache.org/jira/browse/SPARK-30541) | Flaky test: org.apache.spark.sql.kafka010.KafkaDelegationTokenSuite |  Blocker | SQL, Structured Streaming | Jungtaek Lim | Gabor Somogyi |
| [SPARK-31101](https://issues.apache.org/jira/browse/SPARK-31101) | Upgrade Janino to 3.0.16 |  Major | Build | Jungtaek Lim | Jungtaek Lim |
| [SPARK-30494](https://issues.apache.org/jira/browse/SPARK-30494) | Duplicates cached RDD when create or replace an existing view |  Major | SQL | Lantao Jin | Lantao Jin |
| [SPARK-31211](https://issues.apache.org/jira/browse/SPARK-31211) | Failure on loading 1000-02-29 from parquet saved by Spark 2.4.5 |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31221](https://issues.apache.org/jira/browse/SPARK-31221) | Rebase all dates/timestamps in conversion in Java types |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30822](https://issues.apache.org/jira/browse/SPARK-30822) | Pyspark queries fail if terminated with a semicolon |  Minor | PySpark, SQL | Samuel Setegne | Samuel Setegne |
| [SPARK-31244](https://issues.apache.org/jira/browse/SPARK-31244) | Use Minio instead of Ceph in K8S DepsTestsSuite |  Major | Kubernetes, Spark Core, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30623](https://issues.apache.org/jira/browse/SPARK-30623) | Spark external shuffle allow disable of separate event loop group |  Major | Shuffle, Spark Core | Thomas Graves | Yuanjian Li |
| [SPARK-31254](https://issues.apache.org/jira/browse/SPARK-31254) | \`HiveResult.toHiveString\` does not use the current session time zone |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31262](https://issues.apache.org/jira/browse/SPARK-31262) | Test case import another test case contains bracketed comments, can't display bracketed comments in golden files well. |  Major | SQL, Tests | jiaan.geng | jiaan.geng |
| [SPARK-31186](https://issues.apache.org/jira/browse/SPARK-31186) | toPandas fails on simple query (collect() works) |  Minor | PySpark | Michael Chirico | L. C. Hsieh |
| [SPARK-31170](https://issues.apache.org/jira/browse/SPARK-31170) | Spark Cli does not respect hive-site.xml and spark.sql.warehouse.dir |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-31271](https://issues.apache.org/jira/browse/SPARK-31271) | fix web ui for driver side SQL metrics |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31261](https://issues.apache.org/jira/browse/SPARK-31261) | Avoid npe when reading bad csv input with \`columnNameCorruptRecord\` specified |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-31287](https://issues.apache.org/jira/browse/SPARK-31287) | groupby().applyInPandas, groupby().cogroup().applyInPandas and mapInPandas should ignore type hints |  Major | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-31293](https://issues.apache.org/jira/browse/SPARK-31293) | Fix wrong examples and help messages for Kinesis integration |  Minor | Documentation, DStreams | Kengo Seki | Kengo Seki |
| [SPARK-30532](https://issues.apache.org/jira/browse/SPARK-30532) | DataFrameStatFunctions.approxQuantile doesn't work with TABLE.COLUMN syntax |  Minor | Spark Core | Chris Suchanek | Oleksii Kachaiev |
| [SPARK-31219](https://issues.apache.org/jira/browse/SPARK-31219) | YarnShuffleService doesn't close idle netty channel |  Major | Shuffle, Spark Core | Manu Zhang | Manu Zhang |
| [SPARK-31314](https://issues.apache.org/jira/browse/SPARK-31314) | Revert SPARK-29285 to fix shuffle regression caused by creating temporary file eagerly |  Major | Spark Core | Yuanjian Li | Yuanjian Li |
| [SPARK-31312](https://issues.apache.org/jira/browse/SPARK-31312) | Transforming Hive simple UDF (using JAR) expression may incur CNFE in later evaluation |  Major | SQL | Jungtaek Lim | Jungtaek Lim |
| [SPARK-31320](https://issues.apache.org/jira/browse/SPARK-31320) | Fix release script for 3.0.0 |  Major | Project Infra | Wenchen Fan | Wenchen Fan |
| [SPARK-31321](https://issues.apache.org/jira/browse/SPARK-31321) | Remove SaveMode check in v2 FileWriteBuilder |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-31231](https://issues.apache.org/jira/browse/SPARK-31231) | Support setuptools 46.1.0+ in PySpark packaging |  Blocker | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-30921](https://issues.apache.org/jira/browse/SPARK-30921) | Error using VectorAssembler after Pandas GROUPED\_AGG UDF |  Major | ML, PySpark | Tim Kellogg | L. C. Hsieh |
| [SPARK-31113](https://issues.apache.org/jira/browse/SPARK-31113) | Support DDL "SHOW VIEWS" |  Major | SQL | Xiao Li | Xin Wu |
| [SPARK-31278](https://issues.apache.org/jira/browse/SPARK-31278) | numOutputRows shows value from last micro batch when there is no new data |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-29314](https://issues.apache.org/jira/browse/SPARK-29314) | ProgressReporter.extractStateOperatorMetrics should not overwrite updated as 0 when it actually runs a batch even with no data |  Major | Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-31382](https://issues.apache.org/jira/browse/SPARK-31382) | Show a better error message for different python and pip installation mistake |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-31422](https://issues.apache.org/jira/browse/SPARK-31422) | Fix NPE when BlockManagerSource is used after BlockManagerMaster stops |  Major | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31441](https://issues.apache.org/jira/browse/SPARK-31441) | Support duplicated column names for toPandas with Arrow execution. |  Major | PySpark | Takuya Ueshin | Takuya Ueshin |
| [SPARK-30564](https://issues.apache.org/jira/browse/SPARK-30564) | Regression in the wide schema benchmark |  Minor | SQL | Maxim Gekk | Peter Toth |
| [SPARK-31420](https://issues.apache.org/jira/browse/SPARK-31420) | Infinite timeline redraw in job details page |  Major | Web UI | Gengliang Wang | Kousuke Saruta |
| [SPARK-31462](https://issues.apache.org/jira/browse/SPARK-31462) | The usage of getopts and case statement is wrong in do-release.sh |  Minor | Project Infra | Kousuke Saruta | Kousuke Saruta |
| [SPARK-31446](https://issues.apache.org/jira/browse/SPARK-31446) | Make html elements for a paged table possible to have different id attribute. |  Minor | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-31450](https://issues.apache.org/jira/browse/SPARK-31450) | Make ExpressionEncoder thread safe |  Major | SQL | Herman van Hövell | Herman van Hövell |
| [SPARK-31468](https://issues.apache.org/jira/browse/SPARK-31468) | Null types should be implicitly casted to Decimal types |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-31473](https://issues.apache.org/jira/browse/SPARK-31473) | AQE should set active session during execution |  Major | SQL | Wei Xue | Wei Xue |
| [SPARK-31256](https://issues.apache.org/jira/browse/SPARK-31256) | Dropna doesn't work for struct columns |  Major | PySpark | Michael Souder | Terry Kim |
| [SPARK-31475](https://issues.apache.org/jira/browse/SPARK-31475) | Broadcast stage in AQE did not timeout |  Major | SQL | Wei Xue | Wei Xue |
| [SPARK-31234](https://issues.apache.org/jira/browse/SPARK-31234) | ResetCommand should not wipe out all configs |  Blocker | SQL | Kent Yao | Kent Yao |
| [SPARK-31501](https://issues.apache.org/jira/browse/SPARK-31501) | AQE update UI should not cause deadlock |  Major | SQL | Wei Xue | Wei Xue |
| [SPARK-31504](https://issues.apache.org/jira/browse/SPARK-31504) | Output fields in formatted Explain should have determined order. |  Major | SQL | wuyi | wuyi |
| [SPARK-31503](https://issues.apache.org/jira/browse/SPARK-31503) | fix the SQL string of the TRIM functions |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-30162](https://issues.apache.org/jira/browse/SPARK-30162) | Add PushedFilters to metadata in Parquet DSv2 implementation |  Minor | SQL | Nasir Ali | Hyukjin Kwon |
| [SPARK-31515](https://issues.apache.org/jira/browse/SPARK-31515) | Canonicalize Cast should consider the value of needTimeZone |  Major | SQL | Yuanjian Li | Yuanjian Li |
| [SPARK-31472](https://issues.apache.org/jira/browse/SPARK-31472) | allGather() may return null messages |  Major | Spark Core | wuyi | wuyi |
| [SPARK-31522](https://issues.apache.org/jira/browse/SPARK-31522) | Hive metastore client initialization related configurations should be static |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-31488](https://issues.apache.org/jira/browse/SPARK-31488) | Support \`java.time.LocalDate\` in Parquet filter pushdown |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31552](https://issues.apache.org/jira/browse/SPARK-31552) | Fix potential ClassCastException in ScalaReflection arrayClassFor |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-31521](https://issues.apache.org/jira/browse/SPARK-31521) | The fetch size is not correct when merging blocks into a merged block |  Major | Spark Core | wuyi | wuyi |
| [SPARK-31563](https://issues.apache.org/jira/browse/SPARK-31563) | Failure of InSet.sql for UTF8String collection |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31564](https://issues.apache.org/jira/browse/SPARK-31564) | Flaky test: AllExecutionsPageSuite.SPARK-27019:correctly display SQL page when event reordering happens |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-31534](https://issues.apache.org/jira/browse/SPARK-31534) | Text for tooltip should be escaped |  Major | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-31535](https://issues.apache.org/jira/browse/SPARK-31535) | Fix nested CTE substitution |  Blocker | SQL | Peter Toth | Peter Toth |
| [SPARK-31489](https://issues.apache.org/jira/browse/SPARK-31489) | Failure on pushing down filters with java.time.LocalDate values in ORC |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31497](https://issues.apache.org/jira/browse/SPARK-31497) | Pyspark CrossValidator/TrainValidationSplit with pipeline estimator cannot save and load model |  Major | ML, PySpark | Weichen Xu | Weichen Xu |
| [SPARK-31557](https://issues.apache.org/jira/browse/SPARK-31557) | Legacy parser incorrectly interprets pre-Gregorian dates |  Major | SQL | Bruce Robbins | Bruce Robbins |
| [SPARK-31550](https://issues.apache.org/jira/browse/SPARK-31550) | nondeterministic configurations with general meanings in sql configuration doc |  Major | Documentation, SQL | Kent Yao | Kent Yao |
| [SPARK-27340](https://issues.apache.org/jira/browse/SPARK-27340) | Alias on TimeWIndow expression may cause watermark metadata lost |  Major | SQL, Structured Streaming | Kevin Zhang | Yuanjian Li |
| [SPARK-31577](https://issues.apache.org/jira/browse/SPARK-31577) | fix various problems when check name conflicts of CTE relations |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31580](https://issues.apache.org/jira/browse/SPARK-31580) | Upgrade Apache ORC to 1.5.10 |  Major | Build, SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31589](https://issues.apache.org/jira/browse/SPARK-31589) | Use \`r-lib/actions/setup-r\` in GitHub Action |  Major | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30868](https://issues.apache.org/jira/browse/SPARK-30868) | Throw Exception if runHive(sql) failed |  Major | SQL | Jackey Lee | Jackey Lee |
| [SPARK-31519](https://issues.apache.org/jira/browse/SPARK-31519) | Cast in having aggregate expressions returns the wrong result |  Blocker | SQL | Yuanjian Li | Yuanjian Li |
| [SPARK-31573](https://issues.apache.org/jira/browse/SPARK-31573) | Use fixed=TRUE where possible for internal efficiency |  Minor | R | Michael Chirico | Michael Chirico |
| [SPARK-31553](https://issues.apache.org/jira/browse/SPARK-31553) | Wrong result of isInCollection for large collections |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31601](https://issues.apache.org/jira/browse/SPARK-31601) | Fix spark.kubernetes.executor.podNamePrefix to work |  Major | Kubernetes, Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31549](https://issues.apache.org/jira/browse/SPARK-31549) | Pyspark SparkContext.cancelJobGroup do not work correctly |  Critical | PySpark | Weichen Xu | Weichen Xu |
| [SPARK-31598](https://issues.apache.org/jira/browse/SPARK-31598) | LegacySimpleTimestampFormatter incorrectly interprets pre-Gregorian timestamps |  Major | SQL | Bruce Robbins |  |
| [SPARK-31267](https://issues.apache.org/jira/browse/SPARK-31267) | Flaky test: WholeStageCodegenSparkSubmitSuite.Generated code on driver should not embed platform-specific constant |  Major | SQL, Tests | Gabor Somogyi | Tianshi Zhu |
| [SPARK-31624](https://issues.apache.org/jira/browse/SPARK-31624) | SHOW TBLPROPERTIES doesn't handle Session Catalog correctly |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-31467](https://issues.apache.org/jira/browse/SPARK-31467) | Fix test issue with table named \`test\` in hive/SQLQuerySuite |  Major | Tests | feiwang | feiwang |
| [SPARK-31621](https://issues.apache.org/jira/browse/SPARK-31621) | Spark Master UI Fails to load if application is waiting for workers to launch driver |  Major | Spark Core, Web UI | Akshat Bordia | Akshat Bordia |
| [SPARK-31590](https://issues.apache.org/jira/browse/SPARK-31590) | Metadata-only queries should not include subquery in partition filters |  Trivial | SQL | dzcxzl | dzcxzl |
| [SPARK-31595](https://issues.apache.org/jira/browse/SPARK-31595) | Spark sql cli should allow unescaped quote mark in quoted string |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-31650](https://issues.apache.org/jira/browse/SPARK-31650) | SQL UI doesn't show metrics and whole stage codegen in AQE |  Major | SQL | wuyi | wuyi |
| [SPARK-31647](https://issues.apache.org/jira/browse/SPARK-31647) | Deprecate 'spark.sql.optimizer.metadataOnly' |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-31631](https://issues.apache.org/jira/browse/SPARK-31631) | Fix test flakiness caused by MiniKdc which throws "address in use" BindException |  Major | Tests | Kent Yao | Kent Yao |
| [SPARK-31655](https://issues.apache.org/jira/browse/SPARK-31655) | Upgrade snappy to version 1.1.7.5 |  Minor | Build | angerszhu | angerszhu |
| [SPARK-31669](https://issues.apache.org/jira/browse/SPARK-31669) | RowEncoderSuite.encode/decode fails on 1000-02-29 |  Minor | SQL, Tests | Maxim Gekk | Maxim Gekk |
| [SPARK-31456](https://issues.apache.org/jira/browse/SPARK-31456) | If shutdownhook is added with priority Integer.MIN\_VALUE, it's supposed to be called the last, but it gets called before other positive priority shutdownhook |  Major | Spark Core | Xiaolei Liu | Oleg Kuznetsov |
| [SPARK-31671](https://issues.apache.org/jira/browse/SPARK-31671) | Wrong error message in VectorAssembler  when column lengths can not be inferred |  Minor | ML | YijieFan | YijieFan |
| [SPARK-31559](https://issues.apache.org/jira/browse/SPARK-31559) | AM starts with initial fetched tokens in any attempt |  Major | Spark Core, YARN | Jungtaek Lim | Jungtaek Lim |
| [SPARK-31668](https://issues.apache.org/jira/browse/SPARK-31668) | Saving and loading HashingTF leads to hash function changed |  Blocker | ML | Weichen Xu | Weichen Xu |
| [SPARK-31691](https://issues.apache.org/jira/browse/SPARK-31691) | release-build.sh should ignore a fallback output from \`build/mvn\` |  Major | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31697](https://issues.apache.org/jira/browse/SPARK-31697) | HistoryServer should set Content-Type |  Minor | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-31632](https://issues.apache.org/jira/browse/SPARK-31632) | The ApplicationInfo in KVStore may be accessed before it's prepared |  Minor | Spark Core, Web UI | Xingcan Cui | Xingcan Cui |
| [SPARK-31692](https://issues.apache.org/jira/browse/SPARK-31692) | Hadoop confs passed via spark config are not set in URLStream Handler Factory |  Major | SQL | Karuppayya | Karuppayya |
| [SPARK-30973](https://issues.apache.org/jira/browse/SPARK-30973) | ScriptTransformationExec should wait for the termination of process when scriptOutputReader hasNext return false |  Minor | SQL | Sun Ke | Sun Ke |
| [SPARK-31676](https://issues.apache.org/jira/browse/SPARK-31676) | QuantileDiscretizer raise error parameter splits given invalid value (splits array includes -0.0 and 0.0) |  Major | ML | Weichen Xu | Weichen Xu |
| [SPARK-31681](https://issues.apache.org/jira/browse/SPARK-31681) | Python multiclass logistic regression evaluate should return LogisticRegressionSummary |  Minor | ML, PySpark | Huaxin Gao | Huaxin Gao |
| [SPARK-31713](https://issues.apache.org/jira/browse/SPARK-31713) | Make test-dependencies.sh detect version string correctly |  Major | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31715](https://issues.apache.org/jira/browse/SPARK-31715) | Fix flaky SparkSQLEnvSuite that sometimes varies single derby instance standard |  Major | SQL, Tests | Kent Yao | Kent Yao |
| [SPARK-31716](https://issues.apache.org/jira/browse/SPARK-31716) | Use a fallback version in HiveExternalCatalogVersionsSuite |  Major | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31620](https://issues.apache.org/jira/browse/SPARK-31620) | TreeNodeException: Binding attribute, tree: sum#19L |  Major | SQL | Yuming Wang | wuyi |
| [SPARK-31663](https://issues.apache.org/jira/browse/SPARK-31663) | Grouping sets with having clause returns the wrong result |  Major | SQL | Yuanjian Li | Yuanjian Li |
| [SPARK-31289](https://issues.apache.org/jira/browse/SPARK-31289) | Flaky test: org.apache.spark.sql.hive.thriftserver.CliSuite |  Minor | SQL | Kent Yao | Kent Yao |
| [SPARK-31404](https://issues.apache.org/jira/browse/SPARK-31404) | file source backward compatibility after calendar switch |  Blocker | SQL | Wenchen Fan |  |
| [SPARK-31727](https://issues.apache.org/jira/browse/SPARK-31727) | Inconsistent error messages of casting timestamp to int |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31740](https://issues.apache.org/jira/browse/SPARK-31740) | Use github URL instead of a broken link |  Minor | Kubernetes, Tests | William Hyun | William Hyun |
| [SPARK-31399](https://issues.apache.org/jira/browse/SPARK-31399) | Closure cleaner broken in Scala 2.12 |  Blocker | Spark Core | Wenchen Fan | Kris Mok |
| [SPARK-31739](https://issues.apache.org/jira/browse/SPARK-31739) | Docstring syntax issues prevent proper compilation of documentation |  Trivial | Documentation | David Toneian | David Toneian |
| [SPARK-31102](https://issues.apache.org/jira/browse/SPARK-31102) | spark-sql fails to parse when contains comment |  Major | SQL | Yuming Wang | Javier Fuentes |
| [SPARK-31651](https://issues.apache.org/jira/browse/SPARK-31651) | Improve handling the case where different barrier sync types in a single sync |  Major | Spark Core | wuyi | wuyi |
| [SPARK-31706](https://issues.apache.org/jira/browse/SPARK-31706) | add back the support of streaming update mode |  Blocker | Structured Streaming | Wenchen Fan | Wenchen Fan |
| [SPARK-31354](https://issues.apache.org/jira/browse/SPARK-31354) | SparkSession Lifecycle methods to fix memory leak |  Major | Spark Core | Vinoo Ganesh | Vinoo Ganesh |
| [SPARK-29854](https://issues.apache.org/jira/browse/SPARK-29854) | lpad and rpad built in function not throw Exception for invalid len value |  Minor | SQL | ABHISHEK KUMAR GUPTA | Takeshi Yamamuro |
| [SPARK-31786](https://issues.apache.org/jira/browse/SPARK-31786) | Exception on submitting Spark-Pi to Kubernetes 1.17.3 |  Blocker | Kubernetes | Maciej Bryński | Dongjoon Hyun |
| [SPARK-31761](https://issues.apache.org/jira/browse/SPARK-31761) | Sql Div operator can result in incorrect output for int\_min |  Blocker | SQL | Kuhu Shukla | Sandeep Katta |
| [SPARK-31818](https://issues.apache.org/jira/browse/SPARK-31818) | Failure on pushing down filters with java.time.Instant values in ORC |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31808](https://issues.apache.org/jira/browse/SPARK-31808) | Make struct function's output name and class name pretty |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-31810](https://issues.apache.org/jira/browse/SPARK-31810) | Fix recoverPartitions test in DDLSuite |  Major | SQL, Tests | Prakhar Jain | Prakhar Jain |
| [SPARK-31820](https://issues.apache.org/jira/browse/SPARK-31820) | Flaky JavaBeanDeserializationSuite |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31764](https://issues.apache.org/jira/browse/SPARK-31764) | JsonProtocol doesn't write RDDInfo#isBarrier |  Major | Spark Core | Kousuke Saruta | Kousuke Saruta |
| [SPARK-31833](https://issues.apache.org/jira/browse/SPARK-31833) | Set HiveThriftServer2 with actual port while configured 0 |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-31859](https://issues.apache.org/jira/browse/SPARK-31859) | Thriftserver with spark.sql.datetime.java8API.enabled=true |  Major | SQL | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-31861](https://issues.apache.org/jira/browse/SPARK-31861) | Thriftserver collecting timestamp not using spark.sql.session.timeZone |  Major | SQL | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-31863](https://issues.apache.org/jira/browse/SPARK-31863) | Thriftserver not setting active SparkSession, SQLConf.get not getting session configs correctly |  Major | SQL | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-31788](https://issues.apache.org/jira/browse/SPARK-31788) | Error when creating UnionRDD of PairRDDs |  Blocker | DStreams, PySpark, Spark Core | Sanket Reddy | Hyukjin Kwon |
| [SPARK-31854](https://issues.apache.org/jira/browse/SPARK-31854) | Different results of query execution with wholestage codegen on and off |  Major | SQL | Pasha Finkeshteyn | Takeshi Yamamuro |
| [SPARK-31885](https://issues.apache.org/jira/browse/SPARK-31885) | Incorrect filtering of old millis timestamp in parquet |  Major | SQL | Maxim Gekk | Apache Spark |
| [SPARK-31870](https://issues.apache.org/jira/browse/SPARK-31870) | AdaptiveQueryExecSuite: "Do not optimize skew join if introduce additional shuffle" test has no skew join |  Minor | SQL, Tests | Manu Zhang | Manu Zhang |
| [SPARK-29137](https://issues.apache.org/jira/browse/SPARK-29137) | Flaky test: pyspark.mllib.tests.test\_streaming\_algorithms.StreamingLinearRegressionWithTests.test\_train\_prediction |  Major | MLlib, Tests | Jungtaek Lim | Hyukjin Kwon |
| [SPARK-31888](https://issues.apache.org/jira/browse/SPARK-31888) | Support \`java.time.Instant\` in Parquet filter pushdown |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31895](https://issues.apache.org/jira/browse/SPARK-31895) | df.explain("mode") should work in PySpark side as well for consistency |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-31882](https://issues.apache.org/jira/browse/SPARK-31882) | DAG-viz is not rendered correctly with pagination. |  Major | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-31903](https://issues.apache.org/jira/browse/SPARK-31903) | toPandas with Arrow enabled doesn't show metrics in Query UI. |  Major | PySpark, R | Takuya Ueshin | Takuya Ueshin |
| [SPARK-31904](https://issues.apache.org/jira/browse/SPARK-31904) | Char and varchar partition columns throw MetaException |  Major | SQL | Lantao Jin | Lantao Jin |
| [SPARK-31965](https://issues.apache.org/jira/browse/SPARK-31965) | Run the tests in registerJavaFunction and registerJavaUDAF only when test classes are complied |  Minor | PySpark, Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-31955](https://issues.apache.org/jira/browse/SPARK-31955) | Beeline discard the last line of the sql file when submited to  thriftserver via beeline |  Major | SQL | Lin Gang Deng |  |
| [SPARK-32008](https://issues.apache.org/jira/browse/SPARK-32008) | 3.0.0 release build fails |  Major | Build, Documentation | Philipp Dallig |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-25414](https://issues.apache.org/jira/browse/SPARK-25414) | make it clear that the numRows metrics should be counted for each scan of the source |  Major | Structured Streaming | Wenchen Fan | Wenchen Fan |
| [SPARK-25673](https://issues.apache.org/jira/browse/SPARK-25673) | Remove Travis CI which enables Java lint check |  Minor | Build | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-25659](https://issues.apache.org/jira/browse/SPARK-25659) | Test type inference specification for createDataFrame in PySpark |  Minor | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-25670](https://issues.apache.org/jira/browse/SPARK-25670) | Speed up JsonExpressionsSuite |  Trivial | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-25736](https://issues.apache.org/jira/browse/SPARK-25736) | add tests to verify the behavior of multi-column count |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-25763](https://issues.apache.org/jira/browse/SPARK-25763) | Use more \`@contextmanager\` to ensure clean-up each test. |  Major | PySpark, SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-25779](https://issues.apache.org/jira/browse/SPARK-25779) | Remove SQL query tests for function documentation by DESCRIBE FUNCTION at SQLQueryTestSuite |  Trivial | SQL, Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-25270](https://issues.apache.org/jira/browse/SPARK-25270) | lint-python: Add flake8 to find syntax errors and undefined names |  Minor | PySpark | cclauss | cclauss |
| [SPARK-25899](https://issues.apache.org/jira/browse/SPARK-25899) | Flaky test: CoarseGrainedSchedulerBackendSuite.compute max number of concurrent tasks can be launched |  Major | Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-25931](https://issues.apache.org/jira/browse/SPARK-25931) | Benchmarking creation of Jackson parser |  Minor | SQL, Tests | Maxim Gekk | Maxim Gekk |
| [SPARK-25944](https://issues.apache.org/jira/browse/SPARK-25944) | AppVeyor change to latest R version |  Minor | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-25962](https://issues.apache.org/jira/browse/SPARK-25962) | Specify minimum versions for both pydocstyle and flake8 in 'lint-python' script |  Major | Build | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-25955](https://issues.apache.org/jira/browse/SPARK-25955) | Porting JSON test for CSV functions |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26030](https://issues.apache.org/jira/browse/SPARK-26030) | Bump previousSparkVersion in MimaBuild.scala to be 2.4.0 |  Major | Build | Wenchen Fan | Wenchen Fan |
| [SPARK-26042](https://issues.apache.org/jira/browse/SPARK-26042) | KafkaContinuousSourceTopicDeletionSuite may hang forever |  Major | Structured Streaming, Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-26069](https://issues.apache.org/jira/browse/SPARK-26069) | Flaky test: RpcIntegrationSuite.sendRpcWithStreamFailures |  Major | Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-26105](https://issues.apache.org/jira/browse/SPARK-26105) | Clean unittest2 imports up added Python 2.6 before |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-26120](https://issues.apache.org/jira/browse/SPARK-26120) | Fix a streaming query leak in Structured Streaming R tests |  Minor | SparkR, Structured Streaming, Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-26106](https://issues.apache.org/jira/browse/SPARK-26106) | Prioritizes ML unittests over the doctests in PySpark |  Minor | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-26148](https://issues.apache.org/jira/browse/SPARK-26148) | Increases default parallelism in PySpark tests to reduce elapsed time |  Major | PySpark, Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-26169](https://issues.apache.org/jira/browse/SPARK-26169) | Create DataFrameSetOperationsSuite |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-26252](https://issues.apache.org/jira/browse/SPARK-26252) | Add support to run specific unittests and/or doctests in python/run-tests script |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-26275](https://issues.apache.org/jira/browse/SPARK-26275) | Flaky test: pyspark.mllib.tests.test\_streaming\_algorithms StreamingLogisticRegressionWithSGDTests.test\_training\_and\_prediction |  Minor | MLlib, PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-26286](https://issues.apache.org/jira/browse/SPARK-26286) | Add MAXIMUM\_PAGE\_SIZE\_BYTES Exception unit test |  Trivial | Tests | wangjiaochun | wangjiaochun |
| [SPARK-26348](https://issues.apache.org/jira/browse/SPARK-26348) | make sure expression is resolved during test |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-26337](https://issues.apache.org/jira/browse/SPARK-26337) | Add benchmark for LongToUnsafeRowMap |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-26277](https://issues.apache.org/jira/browse/SPARK-26277) | WholeStageCodegen metrics should be tested with whole-stage codegen enabled |  Major | SQL | Chenxiao Mao | Chenxiao Mao |
| [SPARK-26517](https://issues.apache.org/jira/browse/SPARK-26517) | Avoid duplicate test in ParquetSchemaPruningSuite |  Minor | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-26203](https://issues.apache.org/jira/browse/SPARK-26203) | Benchmark performance of In and InSet expressions |  Major | SQL | Anton Okolnychyi | Anton Okolnychyi |
| [SPARK-26646](https://issues.apache.org/jira/browse/SPARK-26646) | Flaky test: pyspark.mllib.tests.test\_streaming\_algorithms StreamingLogisticRegressionWithSGDTests.test\_training\_and\_prediction |  Major | MLlib, PySpark | Hyukjin Kwon | L. C. Hsieh |
| [SPARK-26676](https://issues.apache.org/jira/browse/SPARK-26676) | Make HiveContextSQLTests.test\_unbounded\_frames test compatible with Python 2 and PyPy |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-26743](https://issues.apache.org/jira/browse/SPARK-26743) | Add a test to check the actual resource limit set via 'spark.executor.pyspark.memory' |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-26725](https://issues.apache.org/jira/browse/SPARK-26725) | Fix the input values of UnifiedMemoryManager constructor in test suites |  Minor | Spark Core | Xiao Li | Sean R. Owen |
| [SPARK-26702](https://issues.apache.org/jira/browse/SPARK-26702) | Create a test trait for Parquet and Orc test |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-7721](https://issues.apache.org/jira/browse/SPARK-7721) | Generate test coverage report from Python |  Major | PySpark, Tests | Reynold Xin | Hyukjin Kwon |
| [SPARK-26953](https://issues.apache.org/jira/browse/SPARK-26953) | Test TimSort for ArrayIndexOutOfBoundsException |  Minor | Spark Core | Maxim Gekk | Maxim Gekk |
| [SPARK-27032](https://issues.apache.org/jira/browse/SPARK-27032) | Flaky test: org.apache.spark.sql.execution.streaming.HDFSMetadataLogSuite.HDFSMetadataLog: metadata directory collision |  Critical | Spark Core, Tests | Sean R. Owen | Sean R. Owen |
| [SPARK-27043](https://issues.apache.org/jira/browse/SPARK-27043) | Add ORC nested schema pruning benchmarks |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-27101](https://issues.apache.org/jira/browse/SPARK-27101) | Drop the created database after the test in test\_session |  Trivial | PySpark | Sandeep Katta | Sandeep Katta |
| [SPARK-27522](https://issues.apache.org/jira/browse/SPARK-27522) | Test migration from INT96 to TIMESTAMP\_MICROS in parquet |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-27392](https://issues.apache.org/jira/browse/SPARK-27392) | TestHive test tables should be placed in shared test state, not per session |  Minor | SQL | Eric Liang | Eric Liang |
| [SPARK-27533](https://issues.apache.org/jira/browse/SPARK-27533) | Date and timestamp CSV benchmarks |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-27535](https://issues.apache.org/jira/browse/SPARK-27535) | Date and timestamp JSON benchmarks |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-27893](https://issues.apache.org/jira/browse/SPARK-27893) | Create an integrated test base for Python, Scalar Pandas, Scala UDF by sql files |  Critical | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-27948](https://issues.apache.org/jira/browse/SPARK-27948) | GPU Scheduling - Use ResouceName to represent resource names |  Minor | Spark Core | Xingbo Jiang | Xingbo Jiang |
| [SPARK-28031](https://issues.apache.org/jira/browse/SPARK-28031) | Improve or remove doctest on over function of Column |  Trivial | PySpark, SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-28115](https://issues.apache.org/jira/browse/SPARK-28115) | Fix flaky test: SparkContextSuite.test resource scheduling under local-cluster mode |  Major | Spark Core | Xingbo Jiang | Xingbo Jiang |
| [SPARK-28204](https://issues.apache.org/jira/browse/SPARK-28204) | Make separate two test cases for column pruning in binary files |  Trivial | SQL, Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-28202](https://issues.apache.org/jira/browse/SPARK-28202) | [Core] [Test] Avoid noises of system props in SparkConfSuite |  Trivial | Spark Core | ShuMing Li | ShuMing Li |
| [SPARK-28240](https://issues.apache.org/jira/browse/SPARK-28240) | Fix Arrow tests to pass with Python 2.7 and latest PyArrow and Pandas in PySpark |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-28261](https://issues.apache.org/jira/browse/SPARK-28261) | Flaky test: org.apache.spark.network.TransportClientFactorySuite.reuseClientsUpToConfigVariable |  Minor | Spark Core, Tests | Gabor Somogyi | Gabor Somogyi |
| [SPARK-28335](https://issues.apache.org/jira/browse/SPARK-28335) | Flaky test: org.apache.spark.streaming.kafka010.DirectKafkaStreamSuite.offset recovery from kafka |  Minor | DStreams, Tests | Gabor Somogyi | Gabor Somogyi |
| [SPARK-28357](https://issues.apache.org/jira/browse/SPARK-28357) | Fix Flaky Test - FileAppenderSuite.rolling file appender - size-based rolling compressed |  Major | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28361](https://issues.apache.org/jira/browse/SPARK-28361) | Test equality of generated code with id in class name |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-28247](https://issues.apache.org/jira/browse/SPARK-28247) | Flaky test: "query without test harness" in ContinuousSuite |  Major | Structured Streaming, Tests | Jungtaek Lim | Jungtaek Lim |
| [SPARK-28408](https://issues.apache.org/jira/browse/SPARK-28408) | Restrict tested values of DateType, TimestampType and CalendarIntervalType |  Minor | SQL, Tests | Maxim Gekk | Maxim Gekk |
| [SPARK-28462](https://issues.apache.org/jira/browse/SPARK-28462) | Add a prefix '\*' to non-nullable attribute names in PlanTestBase.comparePlans failures |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-27168](https://issues.apache.org/jira/browse/SPARK-27168) | Add docker integration test for MsSql Server |  Major | SQL | Zhu, Lipeng | Zhu, Lipeng |
| [SPARK-28536](https://issues.apache.org/jira/browse/SPARK-28536) | Reduce shuffle partitions in Python UDF tests in SQLQueryTestSuite |  Major | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-28535](https://issues.apache.org/jira/browse/SPARK-28535) | Flaky test: JobCancellationSuite."interruptible iterator of shuffle reader" |  Minor | Tests | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-28550](https://issues.apache.org/jira/browse/SPARK-28550) | Unset SPARK\_HOME environment variable in K8S integration preparation |  Major | Kubernetes, Spark Core, Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-24352](https://issues.apache.org/jira/browse/SPARK-24352) | Flaky test: StandaloneDynamicAllocationSuite |  Major | Spark Core, Tests | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-28519](https://issues.apache.org/jira/browse/SPARK-28519) | Tests failed on aarch64 due the value of math.log and power function is different |  Major | SQL | huangtianhua | Sean R. Owen |
| [SPARK-28578](https://issues.apache.org/jira/browse/SPARK-28578) | Improve Github pull request template |  Major | Project Infra | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-28418](https://issues.apache.org/jira/browse/SPARK-28418) | Flaky Test: pyspark.sql.tests.test\_dataframe: test\_query\_execution\_listener\_on\_collect |  Minor | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-28744](https://issues.apache.org/jira/browse/SPARK-28744) | rename SharedSQLContext to SharedSparkSession |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-28881](https://issues.apache.org/jira/browse/SPARK-28881) | toPandas with Arrow should not return a DataFrame when the result size exceeds \`spark.driver.maxResultSize\` |  Major | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-28899](https://issues.apache.org/jira/browse/SPARK-28899) | merge the testing in-memory v2 catalogs from catalyst and core |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-28894](https://issues.apache.org/jira/browse/SPARK-28894) | Jenkins does not report test results of SQLQueryTestSuite in Jenkins |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-28705](https://issues.apache.org/jira/browse/SPARK-28705) | drop the tables in AnalysisExternalCatalogSuite after the testcase execution |  Trivial | SQL | Sandeep Katta | Sandeep Katta |
| [SPARK-28946](https://issues.apache.org/jira/browse/SPARK-28946) | Add some more information about building SparkR on Windows |  Trivial | Documentation, SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-28770](https://issues.apache.org/jira/browse/SPARK-28770) | Flaky Tests: Test ReplayListenerSuite.End-to-end replay with compression failed |  Major | Spark Core | huangtianhua | Wing Yew Poon |
| [SPARK-28988](https://issues.apache.org/jira/browse/SPARK-28988) | "CliSuite#Commands using SerDe provided in --jars" not strong enough |  Minor | Tests | Yuming Wang | Lantao Jin |
| [SPARK-29065](https://issues.apache.org/jira/browse/SPARK-29065) | Extend \`EXTRACT\` benchmark |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29104](https://issues.apache.org/jira/browse/SPARK-29104) | Fix Flaky Test - PipedRDDSuite. stdin\_writer\_thread\_should\_be\_exited\_when\_task\_is\_finished |  Minor | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29141](https://issues.apache.org/jira/browse/SPARK-29141) | Use SqlBasedBenchmark in SQL benchmarks |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-23197](https://issues.apache.org/jira/browse/SPARK-23197) | Flaky test: spark.streaming.ReceiverSuite."receiver\_life\_cycle" |  Major | DStreams, Tests | Tathagata Das | Jungtaek Lim |
| [SPARK-21914](https://issues.apache.org/jira/browse/SPARK-21914) | Running examples as tests in SQL builtin function documentation |  Major | SQL | Hyukjin Kwon | Maxim Gekk |
| [SPARK-29221](https://issues.apache.org/jira/browse/SPARK-29221) | Flaky test: SQLQueryTestSuite.sql (subquery/scalar-subquery/scalar-subquery-select.sql) |  Minor | SQL, Tests | Jungtaek Lim |  |
| [SPARK-29115](https://issues.apache.org/jira/browse/SPARK-29115) | Add benchmarks for make\_date() and make\_timestamp() |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29313](https://issues.apache.org/jira/browse/SPARK-29313) | Failure on writing to \`noop\` datasource in benchmarks |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29286](https://issues.apache.org/jira/browse/SPARK-29286) | UnicodeDecodeError raised when running python tests on arm instance |  Major | PySpark | huangtianhua | Hyukjin Kwon |
| [SPARK-29403](https://issues.apache.org/jira/browse/SPARK-29403) | Uses Arrow R 0.14.1 in AppVeyor for now |  Major | Project Infra, SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-29525](https://issues.apache.org/jira/browse/SPARK-29525) | Fix the associated location already exists in SQLQueryTestSuite |  Major | Tests | Yuming Wang | Yuming Wang |
| [SPARK-29533](https://issues.apache.org/jira/browse/SPARK-29533) | Benchmark casting strings to intervals |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29518](https://issues.apache.org/jira/browse/SPARK-29518) | Benchmark \`date\_part\` for \`INTERVAL\` |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29536](https://issues.apache.org/jira/browse/SPARK-29536) | PySpark does not work with Python 3.8.0 |  Critical | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-29733](https://issues.apache.org/jira/browse/SPARK-29733) | Wrong order of assertEquals parameters |  Minor | ML, Spark Core, SQL, Structured Streaming, Tests | Maxim Gekk | Maxim Gekk |
| [SPARK-29736](https://issues.apache.org/jira/browse/SPARK-29736) | Improve stability of tests for special datetime values |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29752](https://issues.apache.org/jira/browse/SPARK-29752) | make AdaptiveQueryExecSuite more robust |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29772](https://issues.apache.org/jira/browse/SPARK-29772) | Add withNamespace method in test |  Minor | SQL, Tests | ulysses you | ulysses you |
| [SPARK-29825](https://issues.apache.org/jira/browse/SPARK-29825) | Add join conditions in join-related tests of SQLQueryTestSuite |  Major | SQL, Tests | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-29873](https://issues.apache.org/jira/browse/SPARK-29873) | Support \`--import\` directive to load queries from another test case in SQLQueryTestSuite |  Major | SQL, Tests | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-29928](https://issues.apache.org/jira/browse/SPARK-29928) | Check parsing timestamps up to microsecond precision by JSON/CSV datasource |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29963](https://issues.apache.org/jira/browse/SPARK-29963) | Check formatting timestamps up to microsecond precision by JSON/CSV datasource |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29978](https://issues.apache.org/jira/browse/SPARK-29978) | Add a test to check \`json\_tuple\` does not truncate results |  Major | SQL, Tests | Hyukjin Kwon | Maxim Gekk |
| [SPARK-29975](https://issues.apache.org/jira/browse/SPARK-29975) | introduce --CONFIG\_DIM directive |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-30003](https://issues.apache.org/jira/browse/SPARK-30003) | Prevent stack over flow in unknown hint resolution |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-30086](https://issues.apache.org/jira/browse/SPARK-30086) | Flaky Test: HiveThriftServer2ListenerSuite |  Major | SQL, Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-30076](https://issues.apache.org/jira/browse/SPARK-30076) | Upgrade Mockito to 3.1.0 |  Minor | Build, Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-30409](https://issues.apache.org/jira/browse/SPARK-30409) | Use \`NoOp\` datasource in SQL benchmarks |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30482](https://issues.apache.org/jira/browse/SPARK-30482) | Add sub-class of AppenderSkeleton reusable in tests |  Minor | Tests | Maxim Gekk | Maxim Gekk |
| [SPARK-30587](https://issues.apache.org/jira/browse/SPARK-30587) | Run test suites for CSV v1 and JSON v1 |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30599](https://issues.apache.org/jira/browse/SPARK-30599) | SparkFunSuite.LogAppender throws java.lang.IllegalStateException |  Minor | Spark Core, SQL, Tests | Maxim Gekk | Maxim Gekk |
| [SPARK-30673](https://issues.apache.org/jira/browse/SPARK-30673) | Test cases in HiveShowCreateTableSuite should create Hive table instead of Datasource table |  Minor | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-30637](https://issues.apache.org/jira/browse/SPARK-30637) | upgrade testthat on jenkins workers to 2.0.0 |  Major | Build, jenkins, R | Shane Knapp | Shane Knapp |
| [SPARK-30733](https://issues.apache.org/jira/browse/SPARK-30733) | Fix SparkR tests per testthat and R version upgrade |  Critical | SparkR, SQL | Hyukjin Kwon |  |
| [SPARK-30737](https://issues.apache.org/jira/browse/SPARK-30737) | Reenable to generate Rd files |  Major | SparkR | Hyukjin Kwon |  |
| [SPARK-30963](https://issues.apache.org/jira/browse/SPARK-30963) | Add GitHub Action job for document generation |  Major | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30984](https://issues.apache.org/jira/browse/SPARK-30984) | Add UI test for Structured Streaming UI |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-31017](https://issues.apache.org/jira/browse/SPARK-31017) | Test for shuffle requests packaging with different size and numBlocks limit |  Major | Spark Core, Tests | wuyi | wuyi |
| [SPARK-31117](https://issues.apache.org/jira/browse/SPARK-31117) | reduce the test time of DateTimeUtilsSuite |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31229](https://issues.apache.org/jira/browse/SPARK-31229) | Add unit tests TypeCoercion.findTypeForComplex and Cast.canCast about null \<\> complex types |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-31237](https://issues.apache.org/jira/browse/SPARK-31237) | Replace 3-letter time zones by zone offsets |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31242](https://issues.apache.org/jira/browse/SPARK-31242) | Clone SparkSession should respect spark.sql.legacy.sessionInitWithConfigDefaults |  Major | SQL | wuyi | wuyi |
| [SPARK-31284](https://issues.apache.org/jira/browse/SPARK-31284) | Check rebasing of timestamps in ORC datasource |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31249](https://issues.apache.org/jira/browse/SPARK-31249) | Flaky Test: CoarseGrainedSchedulerBackendSuite.custom log url for Spark UI is applied |  Major | Tests | Hyukjin Kwon | wuyi |
| [SPARK-31353](https://issues.apache.org/jira/browse/SPARK-31353) | Set time zone in DateTimeBenchmark and DateTimeRebaseBenchmark |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31343](https://issues.apache.org/jira/browse/SPARK-31343) | Check codegen does not fail on expressions with special characters in string parameters |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31379](https://issues.apache.org/jira/browse/SPARK-31379) | Fix flaky test: o.a.s.scheduler.CoarseGrainedSchedulerBackendSuite.extra resources from executor |  Major | Spark Core | wuyi | wuyi |
| [SPARK-31407](https://issues.apache.org/jira/browse/SPARK-31407) | Fix hive/SQLQuerySuite.derived from Hive query file: drop\_database\_removes\_partition\_dirs.q |  Major | SQL | wuyi |  |
| [SPARK-31409](https://issues.apache.org/jira/browse/SPARK-31409) | Fix failed tests due to result order changing when we enable AQE |  Major | SQL | wuyi | wuyi |
| [SPARK-31391](https://issues.apache.org/jira/browse/SPARK-31391) | Add AdaptiveTestUtils to ease the test of AQE |  Major | SQL | wuyi | wuyi |
| [SPARK-31490](https://issues.apache.org/jira/browse/SPARK-31490) | Benchmark conversions to/from Java 8 date-time types |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31526](https://issues.apache.org/jira/browse/SPARK-31526) | Add a new test suite for ExperssionInfo |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-31623](https://issues.apache.org/jira/browse/SPARK-31623) | Benchmark rebasing of INT96 and TIMESTAMP\_MILLIS timestamps in read/write |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31643](https://issues.apache.org/jira/browse/SPARK-31643) | Flaky o.a.s.scheduler.BarrierTaskContextSuite.barrier task killed, interrupt |  Major | Tests | wuyi | wuyi |
| [SPARK-31665](https://issues.apache.org/jira/browse/SPARK-31665) | Test parquet dictionary encoding of random dates/timestamps |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31680](https://issues.apache.org/jira/browse/SPARK-31680) | Support Java 8 datetime types by Random data generator |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31712](https://issues.apache.org/jira/browse/SPARK-31712) | Check casting timestamps to byte/short/int/long before 1970-01-01 |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31732](https://issues.apache.org/jira/browse/SPARK-31732) | Disable some flaky tests temporarily |  Major | Tests | Wenchen Fan | Wenchen Fan |
| [SPARK-31725](https://issues.apache.org/jira/browse/SPARK-31725) | Set America/Los\_Angeles time zone and Locale.US by default |  Major | Spark Core, SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31744](https://issues.apache.org/jira/browse/SPARK-31744) | Remove Hive dependency in AppVeyor build temporarily |  Major | SparkR, Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-31742](https://issues.apache.org/jira/browse/SPARK-31742) | Flaky tests: HadoopDelegationTokenManagerSuite.SPARK-29082: do not fail if current user does not have credentials |  Major | Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-31746](https://issues.apache.org/jira/browse/SPARK-31746) | Flaky Test: LocalityPlacementStrategySuite.handle large number of containers and tasks (SPARK-18750) |  Major | YARN | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-31784](https://issues.apache.org/jira/browse/SPARK-31784) | Fix test BarrierTaskContextSuite."share messages with allGather() call" |  Major | Spark Core | wuyi | wuyi |
| [SPARK-31835](https://issues.apache.org/jira/browse/SPARK-31835) | Add zoneId to codegen related test in DateExpressionsSuite |  Minor | SQL, Tests | Kent Yao | Kent Yao |
| [SPARK-31730](https://issues.apache.org/jira/browse/SPARK-31730) | Flaky test: org.apache.spark.scheduler.BarrierTaskContextSuite |  Major | Tests | Wenchen Fan | Xingbo Jiang |
| [SPARK-31966](https://issues.apache.org/jira/browse/SPARK-31966) | Flaky test: pyspark.mllib.tests.test\_streaming\_algorithms StreamingLogisticRegressionWithSGDTests.test\_training\_and\_prediction |  Minor | MLlib, PySpark | Hyukjin Kwon | Hyukjin Kwon |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-23935](https://issues.apache.org/jira/browse/SPARK-23935) | High-order function: map\_entries(map\<K, V\>) → array\<row\<K,V\>\> |  Major | SQL | Xiao Li | Marek Novotny |
| [SPARK-23937](https://issues.apache.org/jira/browse/SPARK-23937) | High-order function: map\_filter(map\<K, V\>, function\<K, V, boolean\>) → MAP\<K,V\> |  Major | SQL | Xiao Li | Marco Gaido |
| [SPARK-23938](https://issues.apache.org/jira/browse/SPARK-23938) | High-order function: map\_zip\_with(map\<K, V1\>, map\<K, V2\>, function\<K, V1, V2, V3\>) → map\<K, V3\> |  Major | SQL | Xiao Li | Marek Novotny |
| [SPARK-23939](https://issues.apache.org/jira/browse/SPARK-23939) | High-order function: transform\_keys(map\<K1, V\>, function\<K1, V, K2\>) → map\<K2,V\> |  Major | SQL | Xiao Li | Neha Patil |
| [SPARK-23940](https://issues.apache.org/jira/browse/SPARK-23940) | High-order function: transform\_values(map\<K, V1\>, function\<K, V1, V2\>) → map\<K, V2\> |  Major | SQL | Xiao Li | Neha Patil |
| [SPARK-24882](https://issues.apache.org/jira/browse/SPARK-24882) | data source v2 API improvement |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-23429](https://issues.apache.org/jira/browse/SPARK-23429) | Add executor memory metrics to heartbeat and expose in executors REST API |  Major | Spark Core | Edward Lu |  |
| [SPARK-25358](https://issues.apache.org/jira/browse/SPARK-25358) | MutableProjection supports fallback to an interpreted mode |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-23648](https://issues.apache.org/jira/browse/SPARK-23648) | extend hint syntax to support any expression for R |  Major | SparkR, SQL | Dylan Guedes | Huaxin Gao |
| [SPARK-25339](https://issues.apache.org/jira/browse/SPARK-25339) | Refactor FilterPushdownBenchmark to use main method |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-25487](https://issues.apache.org/jira/browse/SPARK-25487) | Refactor PrimitiveArrayBenchmark |  Major | SQL | Chenxiao Mao | Chenxiao Mao |
| [SPARK-25499](https://issues.apache.org/jira/browse/SPARK-25499) | Refactor BenchmarkBase and Benchmark |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-25489](https://issues.apache.org/jira/browse/SPARK-25489) | Refactor UDTSerializationBenchmark |  Major | MLlib | Chenxiao Mao | Chenxiao Mao |
| [SPARK-25478](https://issues.apache.org/jira/browse/SPARK-25478) | Refactor CompressionSchemeBenchmark to use main method |  Major | Tests | Yuming Wang | Yuming Wang |
| [SPARK-25486](https://issues.apache.org/jira/browse/SPARK-25486) | Refactor SortBenchmark to use main method |  Major | SQL | yucai | yucai |
| [SPARK-25379](https://issues.apache.org/jira/browse/SPARK-25379) | Improve ColumnPruning performance |  Major | Optimizer, SQL | Marco Gaido | Marco Gaido |
| [SPARK-25481](https://issues.apache.org/jira/browse/SPARK-25481) | Refactor ColumnarBatchBenchmark to use main method |  Major | SQL | yucai | yucai |
| [SPARK-25485](https://issues.apache.org/jira/browse/SPARK-25485) | Refactor UnsafeProjectionBenchmark to use main method |  Major | SQL | yucai | yucai |
| [SPARK-25559](https://issues.apache.org/jira/browse/SPARK-25559) | Just remove the unsupported predicates in Parquet |  Major | SQL | DB Tsai | DB Tsai |
| [SPARK-25508](https://issues.apache.org/jira/browse/SPARK-25508) | Refactor OrcReadBenchmark to use main method |  Major | SQL | yucai | yucai |
| [SPARK-25476](https://issues.apache.org/jira/browse/SPARK-25476) | Refactor AggregateBenchmark to use main method |  Major | Tests | Yuming Wang | Yuming Wang |
| [SPARK-25510](https://issues.apache.org/jira/browse/SPARK-25510) |  Create a new trait SqlBasedBenchmark |  Major | Tests | Yuming Wang | Yuming Wang |
| [SPARK-25483](https://issues.apache.org/jira/browse/SPARK-25483) | Refactor UnsafeArrayDataBenchmark to use main method |  Major | Tests | Yuming Wang | Yuming Wang |
| [SPARK-25601](https://issues.apache.org/jira/browse/SPARK-25601) | Register Grouped aggregate UDF Vectorized UDFs for SQL Statement |  Major | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-25479](https://issues.apache.org/jira/browse/SPARK-25479) | Refactor DatasetBenchmark to use main method |  Major | Tests | Yuming Wang | Yuming Wang |
| [SPARK-25606](https://issues.apache.org/jira/browse/SPARK-25606) | DateExpressionsSuite: Hour 1 min |  Major | Tests | Xiao Li | Yuming Wang |
| [SPARK-25609](https://issues.apache.org/jira/browse/SPARK-25609) | DataFrameSuite: SPARK-22226: splitExpressions should not generate codes beyond 64KB 49 seconds |  Major | Tests | Xiao Li | Marco Gaido |
| [SPARK-25605](https://issues.apache.org/jira/browse/SPARK-25605) | CastSuite: cast string to timestamp 2 mins 31 sec |  Major | Tests | Xiao Li | Marco Gaido |
| [SPARK-25626](https://issues.apache.org/jira/browse/SPARK-25626) | HiveClientSuites: getPartitionsByFilter returns all partitions when hive.metastore.try.direct.sql=false 46 sec |  Major | Tests | Xiao Li | Dilip Biswal |
| [SPARK-25610](https://issues.apache.org/jira/browse/SPARK-25610) | DatasetCacheSuite: cache UDF result correctly 25 seconds |  Major | Tests | Xiao Li | Dilip Biswal |
| [SPARK-25621](https://issues.apache.org/jira/browse/SPARK-25621) | BucketedReadWithHiveSupportSuite: read partitioning bucketed tables having composite filters	 45 sec |  Major | Tests | Xiao Li | Gengliang Wang |
| [SPARK-25622](https://issues.apache.org/jira/browse/SPARK-25622) | BucketedReadWithHiveSupportSuite: read partitioning bucketed tables with bucket pruning filters - 42 seconds |  Major | Tests | Xiao Li | Apache Spark |
| [SPARK-25488](https://issues.apache.org/jira/browse/SPARK-25488) | Refactor MiscBenchmark to use main method |  Major | Tests | Yuming Wang | Yuming Wang |
| [SPARK-25658](https://issues.apache.org/jira/browse/SPARK-25658) | Refactor HashByteArrayBenchmark to use main method |  Major | Tests | Yuming Wang | Yuming Wang |
| [SPARK-25657](https://issues.apache.org/jira/browse/SPARK-25657) | Refactor HashBenchmark to use main method |  Major | Tests | Yuming Wang | Yuming Wang |
| [SPARK-25630](https://issues.apache.org/jira/browse/SPARK-25630) | HiveOrcHadoopFsRelationSuite: SPARK-8406: Avoids name collision while writing files 21 sec |  Major | Tests | Xiao Li | Gengliang Wang |
| [SPARK-25623](https://issues.apache.org/jira/browse/SPARK-25623) | LogisticRegressionSuite: multinomial logistic regression with intercept with L1 regularization 1 min 10 sec |  Major | Tests | Xiao Li | shahid |
| [SPARK-25624](https://issues.apache.org/jira/browse/SPARK-25624) | LogisticRegressionSuite.multinomial logistic regression with intercept with elasticnet regularization 56 seconds |  Major | Tests | Xiao Li | shahid |
| [SPARK-25625](https://issues.apache.org/jira/browse/SPARK-25625) | LogisticRegressionSuite.binary logistic regression with intercept with ElasticNet regularization - 33 sec |  Major | Tests | Xiao Li | shahid |
| [SPARK-25611](https://issues.apache.org/jira/browse/SPARK-25611) | CompressionCodecSuite: both table-level and session-level compression are set 2 min 20 sec |  Major | Tests | Xiao Li | Dilip Biswal |
| [SPARK-25612](https://issues.apache.org/jira/browse/SPARK-25612) | CompressionCodecSuite: table-level compression is not set but session-level compressions 47 seconds |  Major | Tests | Xiao Li | Dilip Biswal |
| [SPARK-25700](https://issues.apache.org/jira/browse/SPARK-25700) | Avoid to create a readsupport at write path in Data Source V2 |  Critical | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-25662](https://issues.apache.org/jira/browse/SPARK-25662) | Refactor DataSourceReadBenchmark to use main method |  Major | Tests | Yuming Wang | Peter Toth |
| [SPARK-25615](https://issues.apache.org/jira/browse/SPARK-25615) | KafkaSinkSuite: streaming - write to non-existing topic 1 min |  Major | Tests | Xiao Li | Dilip Biswal |
| [SPARK-25664](https://issues.apache.org/jira/browse/SPARK-25664) | Refactor JoinBenchmark to use main method |  Major | Tests | Yuming Wang | Yuming Wang |
| [SPARK-25629](https://issues.apache.org/jira/browse/SPARK-25629) | ParquetFilterSuite: filter pushdown - decimal 16 sec |  Major | Tests | Xiao Li | Yuming Wang |
| [SPARK-25631](https://issues.apache.org/jira/browse/SPARK-25631) | KafkaRDDSuite: basic usage 	2 min 4 sec |  Major | Tests | Xiao Li | Dilip Biswal |
| [SPARK-25632](https://issues.apache.org/jira/browse/SPARK-25632) | KafkaRDDSuite: compacted topic 2 min 5 sec. |  Major | Tests | Xiao Li | Dilip Biswal |
| [SPARK-25492](https://issues.apache.org/jira/browse/SPARK-25492) | Refactor WideSchemaBenchmark to use main method |  Major | Tests | Yuming Wang | Yuming Wang |
| [SPARK-24207](https://issues.apache.org/jira/browse/SPARK-24207) | PrefixSpan: R API |  Major | SparkR | Felix Cheung | Huaxin Gao |
| [SPARK-25627](https://issues.apache.org/jira/browse/SPARK-25627) | ContinuousStressSuite - 8 mins 13 sec |  Major | Tests | Xiao Li | L. C. Hsieh |
| [SPARK-25798](https://issues.apache.org/jira/browse/SPARK-25798) | Internally document type conversion between Pandas data and SQL types in Pandas UDFs |  Minor | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-25490](https://issues.apache.org/jira/browse/SPARK-25490) | Refactor KryoBenchmark |  Major | Spark Core | Chenxiao Mao | Gengliang Wang |
| [SPARK-25665](https://issues.apache.org/jira/browse/SPARK-25665) | Refactor ObjectHashAggregateExecBenchmark to use main method |  Major | Tests | Yuming Wang | Peter Toth |
| [SPARK-25819](https://issues.apache.org/jira/browse/SPARK-25819) | Support parse mode option for function \`from\_avro\` |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-25845](https://issues.apache.org/jira/browse/SPARK-25845) | Fix MatchError for calendar interval type in rangeBetween |  Major | SQL | Reynold Xin |  |
| [SPARK-25864](https://issues.apache.org/jira/browse/SPARK-25864) | Make main args set correctly in BenchmarkBase |  Major | SQL | yucai | yucai |
| [SPARK-25848](https://issues.apache.org/jira/browse/SPARK-25848) | Refactor CSVBenchmarks to use main method |  Major | SQL, Tests | caoxuewen | caoxuewen |
| [SPARK-25691](https://issues.apache.org/jira/browse/SPARK-25691) | Analyzer rule "AliasViewChild" does not stabilize |  Major | SQL | Wei Xue | Marco Gaido |
| [SPARK-25847](https://issues.apache.org/jira/browse/SPARK-25847) | Refactor JSONBenchmarks to use main method |  Major | SQL, Tests | caoxuewen | caoxuewen |
| [SPARK-25862](https://issues.apache.org/jira/browse/SPARK-25862) | Remove rangeBetween APIs introduced in SPARK-21608 |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-25883](https://issues.apache.org/jira/browse/SPARK-25883) | Override method \`prettyName\` in \`from\_avro\`/\`to\_avro\` |  Minor | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-25618](https://issues.apache.org/jira/browse/SPARK-25618) | KafkaContinuousSourceStressForDontFailOnDataLossSuite: stress test for failOnDataLoss=false 1 min 1 sec |  Major | Tests | Xiao Li | Dilip Biswal |
| [SPARK-25663](https://issues.apache.org/jira/browse/SPARK-25663) | Refactor BuiltInDataSourceWriteBenchmark and DataSourceWriteBenchmark to use main method |  Major | Tests | Yuming Wang | yucai |
| [SPARK-25661](https://issues.apache.org/jira/browse/SPARK-25661) | Refactor AvroWriteBenchmark to use main method |  Major | Tests | Yuming Wang | yucai |
| [SPARK-25946](https://issues.apache.org/jira/browse/SPARK-25946) | Upgrade ASM to 7.x to support JDK11 |  Major | Build | DB Tsai | DB Tsai |
| [SPARK-25676](https://issues.apache.org/jira/browse/SPARK-25676) | Refactor BenchmarkWideTable to use main method |  Major | Tests | Yuming Wang | yucai |
| [SPARK-25984](https://issues.apache.org/jira/browse/SPARK-25984) | Remove deprecated .newInstance(), primitive wrapper class constructor calls |  Minor | Spark Core, SQL, Structured Streaming | Sean R. Owen | Sean R. Owen |
| [SPARK-26010](https://issues.apache.org/jira/browse/SPARK-26010) | SparkR vignette fails on CRAN on Java 11 |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-26023](https://issues.apache.org/jira/browse/SPARK-26023) | Dumping truncated plans to a file |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26032](https://issues.apache.org/jira/browse/SPARK-26032) | Break large sql/tests.py files into smaller files |  Major | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-25965](https://issues.apache.org/jira/browse/SPARK-25965) | Add read benchmark for Avro |  Minor | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-24421](https://issues.apache.org/jira/browse/SPARK-24421) | Accessing sun.misc.Cleaner in JDK11 |  Major | Build | DB Tsai | Sean R. Owen |
| [SPARK-25956](https://issues.apache.org/jira/browse/SPARK-25956) | Make Scala 2.12 as default Scala version in Spark 3.0 |  Major | Build | DB Tsai | DB Tsai |
| [SPARK-26036](https://issues.apache.org/jira/browse/SPARK-26036) | Break large tests.py files into smaller files |  Major | PySpark, Spark Core | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-26035](https://issues.apache.org/jira/browse/SPARK-26035) | Break large streaming/tests.py files into smaller files |  Major | DStreams, PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-26034](https://issues.apache.org/jira/browse/SPARK-26034) | Break large mllib/tests.py files into smaller files |  Major | ML, PySpark | Hyukjin Kwon | Bryan Cutler |
| [SPARK-26033](https://issues.apache.org/jira/browse/SPARK-26033) | Break large ml/tests.py files into smaller files |  Major | ML, PySpark | Hyukjin Kwon | Bryan Cutler |
| [SPARK-25954](https://issues.apache.org/jira/browse/SPARK-25954) | Upgrade to Kafka 2.1.0 |  Major | Structured Streaming | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-26129](https://issues.apache.org/jira/browse/SPARK-26129) | Instrumentation for query planning time |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-26066](https://issues.apache.org/jira/browse/SPARK-26066) | Moving truncatedString to sql/catalyst |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26134](https://issues.apache.org/jira/browse/SPARK-26134) | Upgrading Hadoop to 2.7.4 to fix java.version problem |  Major | Spark Core | Takanobu Asanuma | Takanobu Asanuma |
| [SPARK-26108](https://issues.apache.org/jira/browse/SPARK-26108) | Support custom lineSep in CSV datasource |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26140](https://issues.apache.org/jira/browse/SPARK-26140) | Enable custom shuffle metrics implementation in shuffle reader |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-26141](https://issues.apache.org/jira/browse/SPARK-26141) | Enable custom shuffle metrics implementation in shuffle write |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-26142](https://issues.apache.org/jira/browse/SPARK-26142) | Implement shuffle read metrics in SQL |  Major | SQL | Reynold Xin | Yuanjian Li |
| [SPARK-25528](https://issues.apache.org/jira/browse/SPARK-25528) | data source V2 API refactoring (batch read) |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-23647](https://issues.apache.org/jira/browse/SPARK-23647) | extend hint syntax to support any expression for Python |  Major | PySpark, SQL | Dylan Guedes | Dylan Guedes |
| [SPARK-26226](https://issues.apache.org/jira/browse/SPARK-26226) | Update query tracker to report timeline for phases, rather than duration |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-26241](https://issues.apache.org/jira/browse/SPARK-26241) | Add queryId to IncrementalExecution |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-26216](https://issues.apache.org/jira/browse/SPARK-26216) | Do not use case class as public API (ScalaUDF) |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-25374](https://issues.apache.org/jira/browse/SPARK-25374) | SafeProjection supports fallback to an interpreted mode |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-26178](https://issues.apache.org/jira/browse/SPARK-26178) | Use java.time API for parsing timestamps and dates from CSV |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-25274](https://issues.apache.org/jira/browse/SPARK-25274) | Improve toPandas with Arrow by sending out-of-order record batches |  Major | PySpark, SQL | Bryan Cutler | Bryan Cutler |
| [SPARK-26193](https://issues.apache.org/jira/browse/SPARK-26193) | Implement shuffle write metrics in SQL |  Major | SQL | Xiao Li | Yuanjian Li |
| [SPARK-24958](https://issues.apache.org/jira/browse/SPARK-24958) | Add executors' process tree total memory information to heartbeat signals |  Major | Spark Core | Reza Safi | Reza Safi |
| [SPARK-19827](https://issues.apache.org/jira/browse/SPARK-19827) | spark.ml R API for PIC |  Major | ML, SparkR | Felix Cheung | Huaxin Gao |
| [SPARK-26327](https://issues.apache.org/jira/browse/SPARK-26327) | Metrics in FileSourceScanExec not update correctly while relation.partitionSchema is set |  Major | SQL | Yuanjian Li | Yuanjian Li |
| [SPARK-23886](https://issues.apache.org/jira/browse/SPARK-23886) | update query.status |  Major | Structured Streaming | Jose Torres | Gabor Somogyi |
| [SPARK-26243](https://issues.apache.org/jira/browse/SPARK-26243) | Use java.time API for parsing timestamps and dates from JSON |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-24561](https://issues.apache.org/jira/browse/SPARK-24561) | User-defined window functions with pandas udf (bounded window) |  Major | PySpark | Li Jin | Li Jin |
| [SPARK-26384](https://issues.apache.org/jira/browse/SPARK-26384) | CSV schema inferring does not respect spark.sql.legacy.timeParser.enabled |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26430](https://issues.apache.org/jira/browse/SPARK-26430) | Upgrade Surefire plugin to 3.0.0-M2 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-26424](https://issues.apache.org/jira/browse/SPARK-26424) | Use java.time API in timestamp/date functions |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26191](https://issues.apache.org/jira/browse/SPARK-26191) | Control number of truncated fields |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26443](https://issues.apache.org/jira/browse/SPARK-26443) | Use ConfigEntry for hardcoded configs for history category. |  Major | Spark Core | Takuya Ueshin | Takuya Ueshin |
| [SPARK-26470](https://issues.apache.org/jira/browse/SPARK-26470) | Use ConfigEntry for hardcoded configs for eventLog category. |  Major | Spark Core | Takuya Ueshin | Marco Gaido |
| [SPARK-26374](https://issues.apache.org/jira/browse/SPARK-26374) | Support new date/timestamp parser in HadoopFsRelationTest |  Minor | SQL, Tests | Maxim Gekk | Maxim Gekk |
| [SPARK-26507](https://issues.apache.org/jira/browse/SPARK-26507) | Fix core tests for Java 11 |  Minor | Spark Core | Sean R. Owen | Sean R. Owen |
| [SPARK-26447](https://issues.apache.org/jira/browse/SPARK-26447) | Allow OrcColumnarBatchReader to return less partition columns |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-26489](https://issues.apache.org/jira/browse/SPARK-26489) | Use ConfigEntry for hardcoded configs for python/r categories. |  Major | Spark Core | Takuya Ueshin | Jungtaek Lim |
| [SPARK-26445](https://issues.apache.org/jira/browse/SPARK-26445) | Use ConfigEntry for hardcoded configs for driver/executor categories. |  Major | Spark Core | Takuya Ueshin | Takuya Ueshin |
| [SPARK-26536](https://issues.apache.org/jira/browse/SPARK-26536) | Upgrade Mockito to 2.23.4 |  Major | Build, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-26402](https://issues.apache.org/jira/browse/SPARK-26402) | Accessing nested fields with different cases in case insensitive mode |  Major | SQL | DB Tsai | DB Tsai |
| [SPARK-26491](https://issues.apache.org/jira/browse/SPARK-26491) | Use ConfigEntry for hardcoded configs for test categories. |  Major | Spark Core | Takuya Ueshin | Marco Gaido |
| [SPARK-24196](https://issues.apache.org/jira/browse/SPARK-24196) | Spark Thrift Server - SQL Client connections does't show db artefacts |  Major | SQL | rr | Yuming Wang |
| [SPARK-25484](https://issues.apache.org/jira/browse/SPARK-25484) | Refactor ExternalAppendOnlyUnsafeRowArrayBenchmark |  Major | SQL | Chenxiao Mao | Peter Toth |
| [SPARK-26546](https://issues.apache.org/jira/browse/SPARK-26546) | Caching of DateTimeFormatter |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26503](https://issues.apache.org/jira/browse/SPARK-26503) | Get rid of spark.sql.legacy.timeParser.enabled |  Minor | SQL | Maxim Gekk | Sean R. Owen |
| [SPARK-26482](https://issues.apache.org/jira/browse/SPARK-26482) | Use ConfigEntry for hardcoded configs for ui categories. |  Major | Spark Core | Takuya Ueshin | Jungtaek Lim |
| [SPARK-26456](https://issues.apache.org/jira/browse/SPARK-26456) | Cast date/timestamp by Date/TimestampFormatter |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26462](https://issues.apache.org/jira/browse/SPARK-26462) | Use ConfigEntry for hardcoded configs for execution categories. |  Major | Spark Core | Takuya Ueshin | pralabhkumar |
| [SPARK-25530](https://issues.apache.org/jira/browse/SPARK-25530) | data source v2 API refactor (batch write) |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-26619](https://issues.apache.org/jira/browse/SPARK-26619) | Prune the unused serializers from \`SerializeFromObject\` |  Major | SQL | DB Tsai | L. C. Hsieh |
| [SPARK-26466](https://issues.apache.org/jira/browse/SPARK-26466) | Use ConfigEntry for hardcoded configs for submit categories. |  Major | Spark Core | Takuya Ueshin | Jungtaek Lim |
| [SPARK-23817](https://issues.apache.org/jira/browse/SPARK-23817) | Create file source V2 framework and migrate ORC read path |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-26593](https://issues.apache.org/jira/browse/SPARK-26593) | Use Proleptic Gregorian calendar in casting UTF8String to date/timestamp types |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26621](https://issues.apache.org/jira/browse/SPARK-26621) | Use ConfigEntry for hardcoded configs for shuffle categories. |  Major | Spark Core | liuxian | liuxian |
| [SPARK-26618](https://issues.apache.org/jira/browse/SPARK-26618) | Make typed Timestamp/Date literals consistent to casting |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26477](https://issues.apache.org/jira/browse/SPARK-26477) | Use ConfigEntry for hardcoded configs for unsafe category. |  Major | Spark Core | Takuya Ueshin | Kazuaki Ishizaki |
| [SPARK-26652](https://issues.apache.org/jira/browse/SPARK-26652) | Use Proleptic Gregorian calendar in creation of Timestamp/Date literals from strings |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26520](https://issues.apache.org/jira/browse/SPARK-26520) | data source V2 API refactoring (micro-batch read) |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-26463](https://issues.apache.org/jira/browse/SPARK-26463) | Use ConfigEntry for hardcoded configs for scheduler categories. |  Major | Spark Core | Takuya Ueshin | Kazuaki Ishizaki |
| [SPARK-26657](https://issues.apache.org/jira/browse/SPARK-26657) | Port DayWeek, DayOfWeek and WeekDay on Proleptic Gregorian calendar |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26653](https://issues.apache.org/jira/browse/SPARK-26653) | Use Proleptic Gregorian calendar in parsing JDBC lower/upper bounds |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26698](https://issues.apache.org/jira/browse/SPARK-26698) | Use ConfigEntry for hardcoded configs for memory and storage categories |  Major | Spark Core | SongYadong | SongYadong |
| [SPARK-25981](https://issues.apache.org/jira/browse/SPARK-25981) | Arrow optimization for conversion from R DataFrame to Spark DataFrame |  Major | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-26656](https://issues.apache.org/jira/browse/SPARK-26656) | Benchmark for date/time functions and expressions |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26719](https://issues.apache.org/jira/browse/SPARK-26719) | Get rid of java.util.Calendar in DateTimeUtils |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26695](https://issues.apache.org/jira/browse/SPARK-26695) | data source V2 API refactoring (continuous read) |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-26765](https://issues.apache.org/jira/browse/SPARK-26765) | Avro: Validate input and output schema |  Minor | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-24779](https://issues.apache.org/jira/browse/SPARK-24779) | Add map\_concat  / map\_from\_entries / an option in months\_between UDF to disable rounding-off |  Major | SparkR | Huaxin Gao | Huaxin Gao |
| [SPARK-26673](https://issues.apache.org/jira/browse/SPARK-26673) | File source V2 write: create framework and migrate ORC to it |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-26816](https://issues.apache.org/jira/browse/SPARK-26816) | Add Benchmark for XORShiftRandom |  Minor | Spark Core | Maxim Gekk | Maxim Gekk |
| [SPARK-26654](https://issues.apache.org/jira/browse/SPARK-26654) | Use Timestamp/DateFormatter in CatalogColumnStat |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26761](https://issues.apache.org/jira/browse/SPARK-26761) | Vectorized gapply, Arrow optimization in native R function execution |  Major | SparkR, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-26871](https://issues.apache.org/jira/browse/SPARK-26871) | File Source V2: avoid creating unnecessary FileIndex in the write path |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-26744](https://issues.apache.org/jira/browse/SPARK-26744) | Support schema validation in File Source V2 |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-26666](https://issues.apache.org/jira/browse/SPARK-26666) | DataSourceV2: Add overwrite and dynamic overwrite. |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-24570](https://issues.apache.org/jira/browse/SPARK-24570) | SparkSQL - show schemas/tables in dropdowns of SQL client tools (ie Squirrel SQL, DBVisualizer.etc) |  Major | SQL | t oo | Yuming Wang |
| [SPARK-26785](https://issues.apache.org/jira/browse/SPARK-26785) | data source v2 API refactor: streaming write |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-26762](https://issues.apache.org/jira/browse/SPARK-26762) | Arrow optimization for conversion from Spark DataFrame to R DataFrame |  Major | SparkR, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-26916](https://issues.apache.org/jira/browse/SPARK-26916) | Upgrade to Kafka 2.1.1 |  Major | Structured Streaming | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-26958](https://issues.apache.org/jira/browse/SPARK-26958) | Add NestedSchemaPruningBenchmark |  Major | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-25097](https://issues.apache.org/jira/browse/SPARK-25097) | Support prediction on single instance in KMeans/BiKMeans/GMM |  Major | ML | zhengruifeng | zhengruifeng |
| [SPARK-26215](https://issues.apache.org/jira/browse/SPARK-26215) | define reserved keywords after SQL standard |  Major | SQL | Wenchen Fan | Takeshi Yamamuro |
| [SPARK-26963](https://issues.apache.org/jira/browse/SPARK-26963) | SizeEstimator can't make some JDK fields accessible in Java 9+ |  Minor | Spark Core | Sean R. Owen | Sean R. Owen |
| [SPARK-26966](https://issues.apache.org/jira/browse/SPARK-26966) | Update JPMML to 1.4.8 for Java 9+ |  Minor | ML | Sean R. Owen | Sean R. Owen |
| [SPARK-26986](https://issues.apache.org/jira/browse/SPARK-26986) | Add JAXB reference impl to build for Java 9+ |  Minor | ML, Spark Core | Sean R. Owen | Sean R. Owen |
| [SPARK-26837](https://issues.apache.org/jira/browse/SPARK-26837) | Pruning nested fields from object serializers |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-26830](https://issues.apache.org/jira/browse/SPARK-26830) | Vectorized dapply, Arrow optimization in native R function execution |  Major | SparkR, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-24063](https://issues.apache.org/jira/browse/SPARK-24063) | Control maximum epoch backlog |  Major | Structured Streaming | Efim Poberezkin | Gabor Somogyi |
| [SPARK-26956](https://issues.apache.org/jira/browse/SPARK-26956) | remove streaming output mode from data source v2 APIs |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-25865](https://issues.apache.org/jira/browse/SPARK-25865) | Add GC information to ExecutorMetrics |  Major | Spark Core | Lantao Jin | Lantao Jin |
| [SPARK-26922](https://issues.apache.org/jira/browse/SPARK-26922) | Set socket timeout consistently in Arrow optimization |  Trivial | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-27049](https://issues.apache.org/jira/browse/SPARK-27049) | Support handling partition values in the abstraction of file source V2 |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-24252](https://issues.apache.org/jira/browse/SPARK-24252) | DataSourceV2: Add catalog support |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-27054](https://issues.apache.org/jira/browse/SPARK-27054) | Remove Calcite dependency |  Major | Build, SQL | Yuming Wang | Yuming Wang |
| [SPARK-26920](https://issues.apache.org/jira/browse/SPARK-26920) | Deduplicate type checking across Arrow optimization and vectorized APIs in SparkR |  Major | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-26923](https://issues.apache.org/jira/browse/SPARK-26923) | Refactor ArrowRRunner and RRunner to share the same base |  Major | SparkR, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-27123](https://issues.apache.org/jira/browse/SPARK-27123) | Improve CollapseProject to handle projects cross limit/repartition/sample |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27130](https://issues.apache.org/jira/browse/SPARK-27130) | Automatically select profile when executing sbt-checkstyle |  Minor | Build | Yuming Wang | Yuming Wang |
| [SPARK-26976](https://issues.apache.org/jira/browse/SPARK-26976) | Forbid reserved keywords as identifiers when ANSI mode is on |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-27064](https://issues.apache.org/jira/browse/SPARK-27064) | create StreamingWrite at the begining of streaming execution |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-27158](https://issues.apache.org/jira/browse/SPARK-27158) | dev/mima and dev/scalastyle support dynamic profiles |  Major | Build | Yuming Wang | Yuming Wang |
| [SPARK-27136](https://issues.apache.org/jira/browse/SPARK-27136) | Remove data source option check\_files\_exist |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-27132](https://issues.apache.org/jira/browse/SPARK-27132) | Improve file source V2 framework |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-27157](https://issues.apache.org/jira/browse/SPARK-27157) | Add Executor level metrics to monitoring docs |  Minor | Documentation | Lantao Jin | Lantao Jin |
| [SPARK-27175](https://issues.apache.org/jira/browse/SPARK-27175) | Upgrade hadoop-3 to 3.2.0 |  Minor | Build | Yuming Wang | Yuming Wang |
| [SPARK-23749](https://issues.apache.org/jira/browse/SPARK-23749) | Replace built-in Hive API (isSub/toKryo) and remove OrcProto.Type usage |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-26811](https://issues.apache.org/jira/browse/SPARK-26811) | Add DataSourceV2 capabilities to check support for batch append, overwrite, truncate during analysis. |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-27195](https://issues.apache.org/jira/browse/SPARK-27195) | Add AvroReadSchemaSuite |  Minor | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27179](https://issues.apache.org/jira/browse/SPARK-27179) | Exclude javax.ws.rs:jsr311-api from hadoop-client |  Minor | Build | Yuming Wang | Yuming Wang |
| [SPARK-27197](https://issues.apache.org/jira/browse/SPARK-27197) | Add ReadNestedSchemaTest for file-based data sources |  Major | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-26975](https://issues.apache.org/jira/browse/SPARK-26975) | Support nested-column pruning over limit/sample/repartition |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27141](https://issues.apache.org/jira/browse/SPARK-27141) | Use ConfigEntry for hardcoded configs Yarn |  Major | Spark Core, YARN | wangjiaochun | wangjiaochun |
| [SPARK-27085](https://issues.apache.org/jira/browse/SPARK-27085) | Migrate CSV to File Data Source V2 |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-27268](https://issues.apache.org/jira/browse/SPARK-27268) | Add map\_keys and map\_values support in nested schema pruning |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-26847](https://issues.apache.org/jira/browse/SPARK-26847) | Pruning nested serializers from object serializers: MapType support |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-27226](https://issues.apache.org/jira/browse/SPARK-27226) | Reduce the code duplicate when upgrading built-in Hive |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-27269](https://issues.apache.org/jira/browse/SPARK-27269) | File source v2 should validate data schema only |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-27182](https://issues.apache.org/jira/browse/SPARK-27182) | Move the conflict source code of the sql/core module to sql/core/v1.2.1 |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-27286](https://issues.apache.org/jira/browse/SPARK-27286) | Handles exceptions on proceeding to next record in FilePartitionReader |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-27288](https://issues.apache.org/jira/browse/SPARK-27288) | Pruning nested field in complex map key from object serializers |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-27291](https://issues.apache.org/jira/browse/SPARK-27291) | File source V2: Ignore empty files in load |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-27121](https://issues.apache.org/jira/browse/SPARK-27121) | Resolve Scala compiler failure for Java 9+ in REPL |  Major | Spark Shell | Sean R. Owen | Sean R. Owen |
| [SPARK-27326](https://issues.apache.org/jira/browse/SPARK-27326) | Fall back all v2 file sources in \`InsertIntoTable\` to V1 FileFormat |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-27329](https://issues.apache.org/jira/browse/SPARK-27329) | Pruning nested field in map of map key and value from object serializers |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-27180](https://issues.apache.org/jira/browse/SPARK-27180) | Fix testing issues with yarn module in Hadoop-3 |  Major | Build, Spark Core, YARN | Yuming Wang | Yuming Wang |
| [SPARK-27349](https://issues.apache.org/jira/browse/SPARK-27349) | Dealing with TimeVars removed in Hive 2.x |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-27356](https://issues.apache.org/jira/browse/SPARK-27356) | File source V2: return actual schema in method \`FileScan.readSchema\` |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-27383](https://issues.apache.org/jira/browse/SPARK-27383) | Avoid using hard-coded jar names in Hive tests |  Minor | SQL | Yuming Wang | Yuming Wang |
| [SPARK-27384](https://issues.apache.org/jira/browse/SPARK-27384) | File source V2: Prune unnecessary partition columns |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-27176](https://issues.apache.org/jira/browse/SPARK-27176) | Upgrade hadoop-3's built-in Hive maven dependencies to 2.3.4 |  Major | Build, SQL | Yuming Wang | Yuming Wang |
| [SPARK-27407](https://issues.apache.org/jira/browse/SPARK-27407) | File source V2: Invalidate cache data on overwrite/append |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-27435](https://issues.apache.org/jira/browse/SPARK-27435) | Support schema pruning in Orc V2 |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-27443](https://issues.apache.org/jira/browse/SPARK-27443) | Support UDF input\_file\_name in file source V2 |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-27459](https://issues.apache.org/jira/browse/SPARK-27459) | Revise the exception message of schema inference failure in file source V2 |  Trivial | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-27448](https://issues.apache.org/jira/browse/SPARK-27448) | File source V2 table provider should be compatible with V1 provider |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-19712](https://issues.apache.org/jira/browse/SPARK-19712) | EXISTS and Left Semi join do not produce the same plan |  Major | SQL | Nattavut Sutyanyong | Dilip Biswal |
| [SPARK-27493](https://issues.apache.org/jira/browse/SPARK-27493) | Upgrade ASM to 7.1 |  Minor | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27490](https://issues.apache.org/jira/browse/SPARK-27490) | File source V2: return correct result for Dataset.inputFiles() |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-27502](https://issues.apache.org/jira/browse/SPARK-27502) | Update nested schema benchmark result for Orc V2 |  Minor | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-27501](https://issues.apache.org/jira/browse/SPARK-27501) | Add test for HIVE-13083: Writing HiveDecimal to ORC can wrongly suppress present stream |  Major | Tests | Yuming Wang | Yuming Wang |
| [SPARK-27504](https://issues.apache.org/jira/browse/SPARK-27504) | File source V2: support refreshing metadata cache |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-27481](https://issues.apache.org/jira/browse/SPARK-27481) | Upgrade commons-logging to 1.1.3 |  Minor | Build | Yuming Wang | Yuming Wang |
| [SPARK-27128](https://issues.apache.org/jira/browse/SPARK-27128) | Migrate JSON to File Data Source V2 |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-27190](https://issues.apache.org/jira/browse/SPARK-27190) | Add DataSourceV2 capabilities for streaming |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-27556](https://issues.apache.org/jira/browse/SPARK-27556) | Exclude com.zaxxer:HikariCP-java7 from hadoop-yarn-server-web-proxy |  Minor | Build | Yuming Wang | Yuming Wang |
| [SPARK-27580](https://issues.apache.org/jira/browse/SPARK-27580) | Implement \`doCanonicalize\` in BatchScanExec for comparing query plan results |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-23014](https://issues.apache.org/jira/browse/SPARK-23014) | Migrate MemorySink fully to v2 |  Major | Structured Streaming | Jose Torres | Gabor Somogyi |
| [SPARK-24422](https://issues.apache.org/jira/browse/SPARK-24422) | Add JDK11 in our Jenkins' build servers |  Major | Project Infra | DB Tsai | Shane Knapp |
| [SPARK-27608](https://issues.apache.org/jira/browse/SPARK-27608) | Upgrade Surefire plugin to 3.0.0-M3 |  Minor | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-26921](https://issues.apache.org/jira/browse/SPARK-26921) | Document Arrow optimization and vectorized R APIs |  Major | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-27467](https://issues.apache.org/jira/browse/SPARK-27467) | Upgrade Maven to 3.6.1 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27271](https://issues.apache.org/jira/browse/SPARK-27271) |  Migrate Text to File Data Source V2 |  Major | SQL | Gengliang Wang |  |
| [SPARK-27668](https://issues.apache.org/jira/browse/SPARK-27668) | File source V2: support reporting statistics |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-27680](https://issues.apache.org/jira/browse/SPARK-27680) | Remove usage of Traversable |  Minor | GraphX, Spark Core, SQL | Sean R. Owen | Sean R. Owen |
| [SPARK-24923](https://issues.apache.org/jira/browse/SPARK-24923) | DataSourceV2: Add CTAS logical operation |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-27682](https://issues.apache.org/jira/browse/SPARK-27682) | Avoid use of Scala collection classes that are removed in 2.13 |  Minor | ML, MLlib, Spark Core, SQL | Sean R. Owen | Sean R. Owen |
| [SPARK-27354](https://issues.apache.org/jira/browse/SPARK-27354) | Move incompatible code from the hive-thriftserver module to sql/hive-thriftserver/v1.2.1 |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-27576](https://issues.apache.org/jira/browse/SPARK-27576) | table capabilty to skip the output column resolution |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-27402](https://issues.apache.org/jira/browse/SPARK-27402) | Fix hadoop-3.2 test issue(except the hive-thriftserver module) |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-27737](https://issues.apache.org/jira/browse/SPARK-27737) | Upgrade to Hive 2.3.5 for Hive Metastore Client and Hadoop-3.2 profile |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-18673](https://issues.apache.org/jira/browse/SPARK-18673) | Dataframes doesn't work on Hadoop 3.x; Hive rejects Hadoop version |  Major | SQL | Steve Loughran | Yuming Wang |
| [SPARK-27770](https://issues.apache.org/jira/browse/SPARK-27770) | Add aggregates.sql - Part1 |  Major | SQL, Tests | Xiao Li | Xiao Li |
| [SPARK-27732](https://issues.apache.org/jira/browse/SPARK-27732) | DataSourceV2: Add CreateTable logical operation |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-26356](https://issues.apache.org/jira/browse/SPARK-26356) | Remove SaveMode from data source v2 API |  Blocker | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-27809](https://issues.apache.org/jira/browse/SPARK-27809) | Make optional clauses order insensitive for CREATE DATABASE/VIEW SQL statement |  Major | SQL | Yesheng Ma | Yesheng Ma |
| [SPARK-27849](https://issues.apache.org/jira/browse/SPARK-27849) | Redact treeString of FileTable and DataSourceV2ScanExecBase |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-27378](https://issues.apache.org/jira/browse/SPARK-27378) | spark-submit requests GPUs in YARN mode |  Major | Spark Core, Spark Submit, YARN | Xiangrui Meng | Thomas Graves |
| [SPARK-27373](https://issues.apache.org/jira/browse/SPARK-27373) | Design: Kubernetes support for GPU-aware scheduling |  Major | Kubernetes, Spark Core | Xiangrui Meng | Thomas Graves |
| [SPARK-27887](https://issues.apache.org/jira/browse/SPARK-27887) | Check python version and print deprecation warning if version \< 3 |  Major | PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-27926](https://issues.apache.org/jira/browse/SPARK-27926) | Allow altering table add columns with CSVFileFormat/JsonFileFormat provider |  Minor | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-18570](https://issues.apache.org/jira/browse/SPARK-18570) | Consider supporting other R formula operators |  Minor | ML, SparkR | Felix Cheung | Ozan Cicekci |
| [SPARK-27942](https://issues.apache.org/jira/browse/SPARK-27942) | Note that Python 2.7 is deprecated in Spark documentation |  Major | Documentation, PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-27749](https://issues.apache.org/jira/browse/SPARK-27749) | hadoop-3.2 support hive-thriftserver |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-27521](https://issues.apache.org/jira/browse/SPARK-27521) | move data source v2 API to catalyst module |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-27857](https://issues.apache.org/jira/browse/SPARK-27857) | DataSourceV2: Support ALTER TABLE statements in catalyst SQL parser |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-27883](https://issues.apache.org/jira/browse/SPARK-27883) | Add aggregates.sql - Part2 |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-27918](https://issues.apache.org/jira/browse/SPARK-27918) | Add boolean.sql |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-27981](https://issues.apache.org/jira/browse/SPARK-27981) | Remove \`Illegal reflective access\` warning for \`java.nio.Bits.unaligned()\` |  Major | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27949](https://issues.apache.org/jira/browse/SPARK-27949) | Support SUBSTRING(str FROM n1 [FOR n2]) syntax |  Minor | SQL | Zhu, Lipeng | Zhu, Lipeng |
| [SPARK-27934](https://issues.apache.org/jira/browse/SPARK-27934) | Add case.sql |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-27578](https://issues.apache.org/jira/browse/SPARK-27578) | Support INTERVAL ... HOUR TO SECOND syntax |  Major | SQL | Zhu, Lipeng | Zhu, Lipeng |
| [SPARK-28002](https://issues.apache.org/jira/browse/SPARK-28002) | Support WITH clause column aliases |  Major | SQL | Peter Toth | Peter Toth |
| [SPARK-23128](https://issues.apache.org/jira/browse/SPARK-23128) | The basic framework for the new Adaptive Query Execution |  Major | SQL | Carson Wang | Carson Wang |
| [SPARK-27418](https://issues.apache.org/jira/browse/SPARK-27418) | Migrate Parquet to File Data Source V2 |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-28072](https://issues.apache.org/jira/browse/SPARK-28072) | Fix IncompatibleClassChangeError in \`FromUnixTime\` codegen on JDK9+ |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28088](https://issues.apache.org/jira/browse/SPARK-28088) | String Functions: Enhance LPAD/RPAD function |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28039](https://issues.apache.org/jira/browse/SPARK-28039) | Add float4.sql |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-28075](https://issues.apache.org/jira/browse/SPARK-28075) | String Functions: Enhance TRIM function |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-27890](https://issues.apache.org/jira/browse/SPARK-27890) | Improve SQL parser error message when missing backquotes for identifiers with hyphens |  Major | SQL | Yesheng Ma | Yesheng Ma |
| [SPARK-28101](https://issues.apache.org/jira/browse/SPARK-28101) | Fix Flaky Test: \`InputStreamsSuite.Modified files are correctly detected\` in JDK9+ |  Minor | DStreams, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-26839](https://issues.apache.org/jira/browse/SPARK-26839) | Work around classloader changes in Java 9 for Hive isolation |  Major | SQL | Imran Rashid | Sean R. Owen |
| [SPARK-28089](https://issues.apache.org/jira/browse/SPARK-28089) | File source v2: support reading output of file streaming Sink |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-28111](https://issues.apache.org/jira/browse/SPARK-28111) | Upgrade \`xbean-asm7-shaded\` to 4.14 |  Minor | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28132](https://issues.apache.org/jira/browse/SPARK-28132) | Update document type conversion for Pandas UDFs (pyarrow 0.13.0, pandas 0.24.2, Python 3.7) |  Minor | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-28104](https://issues.apache.org/jira/browse/SPARK-28104) | Implement Spark's own GetColumnsOperation |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28126](https://issues.apache.org/jira/browse/SPARK-28126) | Support TRIM(trimStr FROM str) syntax |  Minor | SQL | Dongjoon Hyun | Yuming Wang |
| [SPARK-23179](https://issues.apache.org/jira/browse/SPARK-23179) | Support option to throw exception if overflow occurs during Decimal arithmetic |  Major | SQL | Marco Gaido | Marco Gaido |
| [SPARK-28077](https://issues.apache.org/jira/browse/SPARK-28077) | ANSI SQL: OVERLAY function(T312) |  Major | SQL | Yuming Wang | jiaan.geng |
| [SPARK-28184](https://issues.apache.org/jira/browse/SPARK-28184) | Avoid creating new sessions in SparkMetadataOperationSuite |  Major | Tests | Yuming Wang | Yuming Wang |
| [SPARK-28205](https://issues.apache.org/jira/browse/SPARK-28205) | useV1SourceList configuration should be for all data sources |  Minor | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-23098](https://issues.apache.org/jira/browse/SPARK-23098) | Migrate Kafka batch source to v2 |  Major | Structured Streaming | Jose Torres | Gabor Somogyi |
| [SPARK-25353](https://issues.apache.org/jira/browse/SPARK-25353) | executeTake in SparkPlan could decode rows more than necessary. |  Major | SQL | Dooyoung Hwang | Dooyoung Hwang |
| [SPARK-28167](https://issues.apache.org/jira/browse/SPARK-28167) | Show global temporary view in database tool |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28177](https://issues.apache.org/jira/browse/SPARK-28177) | Adjust post shuffle partition number in adaptive execution |  Major | SQL | Carson Wang | Carson Wang |
| [SPARK-19799](https://issues.apache.org/jira/browse/SPARK-19799) | Support WITH clause in subqueries |  Major | SQL | Giambattista | Peter Toth |
| [SPARK-28218](https://issues.apache.org/jira/browse/SPARK-28218) | Migrate Avro to File source V2 |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-28241](https://issues.apache.org/jira/browse/SPARK-28241) | Show metadata operations on ThriftServerTab |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-27898](https://issues.apache.org/jira/browse/SPARK-27898) | Support 4 date operators(date + integer, integer + date, date - integer and date - date) |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28020](https://issues.apache.org/jira/browse/SPARK-28020) | Add date.sql |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-28221](https://issues.apache.org/jira/browse/SPARK-28221) | Upgrade janino to 3.0.13 |  Major | Build | Yuming Wang | Yuming Wang |
| [SPARK-28273](https://issues.apache.org/jira/browse/SPARK-28273) | Convert and port 'pgSQL/case.sql' into UDF test base |  Major | PySpark, SQL, Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-28029](https://issues.apache.org/jira/browse/SPARK-28029) | Port int2.sql |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-28136](https://issues.apache.org/jira/browse/SPARK-28136) | Port int8.sql |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-28267](https://issues.apache.org/jira/browse/SPARK-28267) | Update building-spark.md |  Trivial | Documentation | Yuming Wang | Yuming Wang |
| [SPARK-27922](https://issues.apache.org/jira/browse/SPARK-27922) | Convert and port 'natural-join.sql' into UDF test base |  Major | PySpark, SQL, Tests | Hyukjin Kwon | Manu Zhang |
| [SPARK-28275](https://issues.apache.org/jira/browse/SPARK-28275) | Convert and port 'count.sql' into UDF test base |  Major | PySpark, SQL, Tests | Hyukjin Kwon | Vinod KC |
| [SPARK-28271](https://issues.apache.org/jira/browse/SPARK-28271) | Convert and port 'pgSQL/aggregates\_part2.sql' into UDF test base |  Major | PySpark, SQL, Tests | Hyukjin Kwon | Terry Kim |
| [SPARK-28281](https://issues.apache.org/jira/browse/SPARK-28281) | Convert and port 'having.sql' into UDF test base |  Major | PySpark, SQL, Tests | Hyukjin Kwon | Huaxin Gao |
| [SPARK-28107](https://issues.apache.org/jira/browse/SPARK-28107) | Interval type conversion syntax support |  Major | SQL | Zhu, Lipeng | Zhu, Lipeng |
| [SPARK-28270](https://issues.apache.org/jira/browse/SPARK-28270) | Convert and port 'pgSQL/aggregates\_part1.sql' into UDF test base |  Major | PySpark, SQL, Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-28306](https://issues.apache.org/jira/browse/SPARK-28306) | Once optimizer rule NormalizeFloatingNumbers is not idempotent |  Major | SQL | Yesheng Ma | Yesheng Ma |
| [SPARK-28334](https://issues.apache.org/jira/browse/SPARK-28334) | Port select.sql |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-28139](https://issues.apache.org/jira/browse/SPARK-28139) | DataSourceV2: Add AlterTable v2 implementation |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-28034](https://issues.apache.org/jira/browse/SPARK-28034) | Port with.sql |  Major | SQL, Tests | Peter Toth | Peter Toth |
| [SPARK-28228](https://issues.apache.org/jira/browse/SPARK-28228) | Fix substitution order of nested WITH clauses |  Major | SQL | Peter Toth | Peter Toth |
| [SPARK-28260](https://issues.apache.org/jira/browse/SPARK-28260) | Add CLOSED state to ExecutionState |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28370](https://issues.apache.org/jira/browse/SPARK-28370) | Upgrade Mockito to 2.28.2 |  Major | Build, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28343](https://issues.apache.org/jira/browse/SPARK-28343) | PostgreSQL test should change some default config |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-28133](https://issues.apache.org/jira/browse/SPARK-28133) | Hyperbolic Functions |  Major | SQL | Yuming Wang | Tony Zhang |
| [SPARK-28387](https://issues.apache.org/jira/browse/SPARK-28387) | Port select\_having.sql |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-28384](https://issues.apache.org/jira/browse/SPARK-28384) | Port select\_distinct.sql |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-28392](https://issues.apache.org/jira/browse/SPARK-28392) | Converted PostgreSQL UDF test should change some default config |  Major | PySpark, SQL, Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-28389](https://issues.apache.org/jira/browse/SPARK-28389) | Use Java 8 API to add months to dates |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-28395](https://issues.apache.org/jira/browse/SPARK-28395) | Division operator support integral division |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28129](https://issues.apache.org/jira/browse/SPARK-28129) | Add float8.sql |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-28276](https://issues.apache.org/jira/browse/SPARK-28276) | Convert and port 'cross-join.sql' into UDF test base |  Major | PySpark, SQL, Tests | Hyukjin Kwon | L. C. Hsieh |
| [SPARK-28283](https://issues.apache.org/jira/browse/SPARK-28283) | Convert and port 'intersect-all.sql' into UDF test base |  Major | PySpark, SQL, Tests | Hyukjin Kwon | Terry Kim |
| [SPARK-28278](https://issues.apache.org/jira/browse/SPARK-28278) | Convert and port 'except-all.sql' into UDF test base |  Major | PySpark, SQL, Tests | Hyukjin Kwon | Terry Kim |
| [SPARK-28286](https://issues.apache.org/jira/browse/SPARK-28286) | Convert and port 'pivot.sql' into UDF test base |  Major | PySpark, SQL, Tests | Hyukjin Kwon | Chitral Verma |
| [SPARK-28138](https://issues.apache.org/jira/browse/SPARK-28138) | Add timestamp.sql |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-28388](https://issues.apache.org/jira/browse/SPARK-28388) | Port select\_implicit.sql |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-28312](https://issues.apache.org/jira/browse/SPARK-28312) | Add numeric.sql |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-28416](https://issues.apache.org/jira/browse/SPARK-28416) | Use java.time API in timestampAddInterval |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-28287](https://issues.apache.org/jira/browse/SPARK-28287) | Convert and port 'udaf.sql' into UDF test base |  Major | PySpark, SQL, Tests | Hyukjin Kwon | Vinod KC |
| [SPARK-28285](https://issues.apache.org/jira/browse/SPARK-28285) | Convert and port 'outer-join.sql' into UDF test base |  Major | PySpark, SQL, Tests | Hyukjin Kwon | Huaxin Gao |
| [SPARK-28277](https://issues.apache.org/jira/browse/SPARK-28277) | Convert and port 'except.sql' into UDF test base |  Major | PySpark, SQL, Tests | Hyukjin Kwon | Huaxin Gao |
| [SPARK-28284](https://issues.apache.org/jira/browse/SPARK-28284) | Convert and port 'join-empty-relation.sql' into UDF test base |  Major | PySpark, SQL, Tests | Hyukjin Kwon | Terry Kim |
| [SPARK-28279](https://issues.apache.org/jira/browse/SPARK-28279) | Convert and port 'group-analytics.sql' into UDF test base |  Major | PySpark, SQL, Tests | Hyukjin Kwon | Stavros Kontopoulos |
| [SPARK-28282](https://issues.apache.org/jira/browse/SPARK-28282) | Convert and port 'inline-table.sql' into UDF test base |  Major | PySpark, SQL, Tests | Hyukjin Kwon | Terry Kim |
| [SPARK-27441](https://issues.apache.org/jira/browse/SPARK-27441) | Add read/write tests to Hive serde tables |  Major | Tests | Yuming Wang | Yuming Wang |
| [SPARK-27724](https://issues.apache.org/jira/browse/SPARK-27724) | DataSourceV2: Add RTAS logical operation |  Major | SQL | Ryan Blue | Matt Cheah |
| [SPARK-28280](https://issues.apache.org/jira/browse/SPARK-28280) | Convert and port 'group-by.sql' into UDF test base |  Major | PySpark, SQL, Tests | Hyukjin Kwon | Stavros Kontopoulos |
| [SPARK-28432](https://issues.apache.org/jira/browse/SPARK-28432) | Add \`make\_date\` function |  Major | SQL | Yuming Wang | Maxim Gekk |
| [SPARK-28391](https://issues.apache.org/jira/browse/SPARK-28391) | Convert and port 'pgSQL/select\_implicit.sql' into UDF test base |  Major | PySpark, SQL, Tests | Hyukjin Kwon | Udbhav Agrawal |
| [SPARK-28435](https://issues.apache.org/jira/browse/SPARK-28435) | Support accepting the interval keyword in the schema string |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28390](https://issues.apache.org/jira/browse/SPARK-28390) | Convert and port 'pgSQL/select\_having.sql' into UDF test base |  Major | PySpark, SQL, Tests | Hyukjin Kwon | Shivu Sondur |
| [SPARK-28293](https://issues.apache.org/jira/browse/SPARK-28293) | Implement Spark's own GetTableTypesOperation |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-27688](https://issues.apache.org/jira/browse/SPARK-27688) | Beeline should show database in the prompt |  Minor | SQL | Sandeep Katta |  |
| [SPARK-28288](https://issues.apache.org/jira/browse/SPARK-28288) | Convert and port 'window.sql' into UDF test base |  Major | PySpark, SQL, Tests | Hyukjin Kwon | YoungGyu Chun |
| [SPARK-28289](https://issues.apache.org/jira/browse/SPARK-28289) | Convert and port 'union.sql' into UDF test base |  Major | PySpark, SQL, Tests | Hyukjin Kwon | Yiheng Wang |
| [SPARK-28237](https://issues.apache.org/jira/browse/SPARK-28237) | Idempotence checker for Idempotent batches in RuleExecutors |  Major | SQL | Yesheng Ma | Yesheng Ma |
| [SPARK-28524](https://issues.apache.org/jira/browse/SPARK-28524) | ThriftServerTab lost error message |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28532](https://issues.apache.org/jira/browse/SPARK-28532) | Fix subquery optimizer rule to enforce idempotence |  Major | SQL | Yesheng Ma | Yesheng Ma |
| [SPARK-28530](https://issues.apache.org/jira/browse/SPARK-28530) | Fix Join Reorder optimizer rule to enforce idempotence |  Major | SQL | Yesheng Ma | Yesheng Ma |
| [SPARK-28424](https://issues.apache.org/jira/browse/SPARK-28424) | Support typed interval expression |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28460](https://issues.apache.org/jira/browse/SPARK-28460) | Port test from HIVE-11835 |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-28471](https://issues.apache.org/jira/browse/SPARK-28471) | Formatting dates with negative years |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-28086](https://issues.apache.org/jira/browse/SPARK-28086) | Adds \`random()\` sql function |  Major | SQL | Dylan Guedes | Dongjoon Hyun |
| [SPARK-28459](https://issues.apache.org/jira/browse/SPARK-28459) | Date/Time Functions: make\_timestamp |  Major | SQL | Yuming Wang | Maxim Gekk |
| [SPARK-28326](https://issues.apache.org/jira/browse/SPARK-28326) | Add join.sql |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-28406](https://issues.apache.org/jira/browse/SPARK-28406) | Port union.sql |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-28071](https://issues.apache.org/jira/browse/SPARK-28071) | Add strings.sql |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-28209](https://issues.apache.org/jira/browse/SPARK-28209) | Shuffle Storage API: Writer API and usage in BypassMergeSortShuffleWriter |  Major | Shuffle, Spark Core | Matt Cheah | Matt Cheah |
| [SPARK-28038](https://issues.apache.org/jira/browse/SPARK-28038) | Add text.sql |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-27924](https://issues.apache.org/jira/browse/SPARK-27924) | Support ANSI SQL Boolean-Predicate syntax |  Major | SQL | Yuming Wang | jiaan.geng |
| [SPARK-26218](https://issues.apache.org/jira/browse/SPARK-26218) | Throw exception on overflow for integers |  Major | SQL | Marco Gaido | Marco Gaido |
| [SPARK-28568](https://issues.apache.org/jira/browse/SPARK-28568) | Make Javadoc in org.apache.spark.shuffle.api visible |  Major | Shuffle, Spark Core | Matt Cheah | Hyukjin Kwon |
| [SPARK-28586](https://issues.apache.org/jira/browse/SPARK-28586) | Make merge-spark-pr script compatible with Python 3 |  Major | Project Infra | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-28510](https://issues.apache.org/jira/browse/SPARK-28510) | Implement Spark's own GetFunctionsOperation |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-23204](https://issues.apache.org/jira/browse/SPARK-23204) | DataSourceV2 should support named tables in DataFrameReader, DataFrameWriter |  Major | SQL | Ryan Blue |  |
| [SPARK-28614](https://issues.apache.org/jira/browse/SPARK-28614) | Do not remove leading write space in the golden result file |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-27661](https://issues.apache.org/jira/browse/SPARK-27661) | Add SupportsNamespaces interface for v2 catalogs |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-28623](https://issues.apache.org/jira/browse/SPARK-28623) | Support \`dow\`, \`isodow\` and \`doy\` at \`extract()\` |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-28472](https://issues.apache.org/jira/browse/SPARK-28472) | Add a test for testing different protocol versions |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-28617](https://issues.apache.org/jira/browse/SPARK-28617) | Fix misplacement when comment is at the end of the query |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-28660](https://issues.apache.org/jira/browse/SPARK-28660) | Add aggregates.sql - Part4 |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-28017](https://issues.apache.org/jira/browse/SPARK-28017) | Enhance DATE\_TRUNC |  Major | SQL | Yuming Wang | Maxim Gekk |
| [SPARK-27889](https://issues.apache.org/jira/browse/SPARK-27889) | Make development scripts under dev/ support Python 3 |  Major | Build, Deploy | Xiangrui Meng | Weichen Xu |
| [SPARK-27371](https://issues.apache.org/jira/browse/SPARK-27371) | Standalone master receives resource info from worker and allocate driver/executor properly |  Major | Spark Core | Xiangrui Meng | wuyi |
| [SPARK-28656](https://issues.apache.org/jira/browse/SPARK-28656) | Support \`millennium\`, \`century\` and \`decade\` at \`extract()\` |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-28685](https://issues.apache.org/jira/browse/SPARK-28685) | Test HMS 2.0.0+ in VersionsSuite/HiveClientSuites on JDK 11 |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-28686](https://issues.apache.org/jira/browse/SPARK-28686) | Higher precision in Math.toRadians from JDK9+ |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28688](https://issues.apache.org/jira/browse/SPARK-28688) | Incompatible java.util.ArrayList |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-28538](https://issues.apache.org/jira/browse/SPARK-28538) | Document SQL page |  Major | SQL, Web UI | Xiao Li | zhengruifeng |
| [SPARK-28703](https://issues.apache.org/jira/browse/SPARK-28703) | Skip HiveExternalCatalogVersionsSuite and 3 tests in HiveSparkSubmitSuite at JDK9+ |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28698](https://issues.apache.org/jira/browse/SPARK-28698) | Allow user-specified output schema in function \`to\_avro\` |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-28714](https://issues.apache.org/jira/browse/SPARK-28714) | Add test for spark-sql support hive.aux.jars.path |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-28708](https://issues.apache.org/jira/browse/SPARK-28708) | IsolatedClientLoader will not load hive classes from application jars |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28718](https://issues.apache.org/jira/browse/SPARK-28718) | Support field synonyms at \`extract\` |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-28700](https://issues.apache.org/jira/browse/SPARK-28700) | make\_timestamp loses seconds fractions |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-27768](https://issues.apache.org/jira/browse/SPARK-27768) | Infinity, -Infinity, NaN should be recognized in a case insensitive manner |  Major | SQL | Xiao Li | Dilip Biswal |
| [SPARK-28687](https://issues.apache.org/jira/browse/SPARK-28687) | Support \`epoch\`, \`isoyear\`, \`milliseconds\` and \`microseconds\` at \`extract()\` |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-28351](https://issues.apache.org/jira/browse/SPARK-28351) | Support DELETE in DataSource V2 |  Major | SQL | Xianyin Xin | Xianyin Xin |
| [SPARK-28543](https://issues.apache.org/jira/browse/SPARK-28543) | Document Spark Jobs page |  Major | SQL, Web UI | Xiao Li | Pablo Langa Blanco |
| [SPARK-28736](https://issues.apache.org/jira/browse/SPARK-28736) | pyspark.mllib.clustering fails on JDK11 |  Major | MLlib, PySpark | Dongjoon Hyun | Hyukjin Kwon |
| [SPARK-28735](https://issues.apache.org/jira/browse/SPARK-28735) | MultilayerPerceptronClassifierTest.test\_raw\_and\_probability\_prediction fails on JDK11 |  Major | ML, PySpark | Dongjoon Hyun | Hyukjin Kwon |
| [SPARK-28756](https://issues.apache.org/jira/browse/SPARK-28756) | Fix checkJavaVersion to accept JDK8+ |  Major | SparkR | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28755](https://issues.apache.org/jira/browse/SPARK-28755) | test\_mllib\_classification fails on JDK11 |  Major | SparkR | Dongjoon Hyun | Hyukjin Kwon |
| [SPARK-28737](https://issues.apache.org/jira/browse/SPARK-28737) | Update jersey to 2.27+ (2.29) |  Major | Spark Core | Sean R. Owen | Sean R. Owen |
| [SPARK-28765](https://issues.apache.org/jira/browse/SPARK-28765) | Dependency generation for JDK8/JDK11 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28059](https://issues.apache.org/jira/browse/SPARK-28059) | Add int4.sql |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-28393](https://issues.apache.org/jira/browse/SPARK-28393) | Convert and port 'pgSQL/join.sql' into UDF test base |  Major | PySpark, SQL, Tests | Hyukjin Kwon | Huaxin Gao |
| [SPARK-28734](https://issues.apache.org/jira/browse/SPARK-28734) | Create a table of content in the left hand side bar for SQL doc. |  Major | Documentation, SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-28753](https://issues.apache.org/jira/browse/SPARK-28753) | Dynamically reuse subqueries in AQE |  Major | SQL | Wei Xue | Wei Xue |
| [SPARK-28322](https://issues.apache.org/jira/browse/SPARK-28322) | DIV support decimal type |  Major | SQL | Yuming Wang | Marco Gaido |
| [SPARK-28541](https://issues.apache.org/jira/browse/SPARK-28541) | Document Storage page |  Minor | SQL, Web UI | Xiao Li | zhengruifeng |
| [SPARK-28540](https://issues.apache.org/jira/browse/SPARK-28540) | Document Environment page |  Minor | SQL, Web UI | Xiao Li | zhengruifeng |
| [SPARK-28739](https://issues.apache.org/jira/browse/SPARK-28739) | Add a simple cost check for Adaptive Query Execution |  Major | SQL | Wei Xue | Wei Xue |
| [SPARK-28730](https://issues.apache.org/jira/browse/SPARK-28730) | Configurable type coercion policy for table insertion |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-28319](https://issues.apache.org/jira/browse/SPARK-28319) | DataSourceV2: Support SHOW TABLES |  Major | SQL | Ryan Blue | Terry Kim |
| [SPARK-28741](https://issues.apache.org/jira/browse/SPARK-28741) | New optional mode: Throw exceptions when casting to integers causes overflow |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-28723](https://issues.apache.org/jira/browse/SPARK-28723) | Upgrade to Hive 2.3.6 for HiveMetastore Client and Hadoop-3.2 profile |  Major | Build, SQL | Dongjoon Hyun | Yuming Wang |
| [SPARK-27988](https://issues.apache.org/jira/browse/SPARK-27988) | Add aggregates.sql - Part3 |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-28852](https://issues.apache.org/jira/browse/SPARK-28852) | Implement GetCatalogsOperation for Thrift Server |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28527](https://issues.apache.org/jira/browse/SPARK-28527) | Build a Test Framework for Thriftserver |  Major | SQL | Xiao Li | Yuming Wang |
| [SPARK-28607](https://issues.apache.org/jira/browse/SPARK-28607) | Don't hold a reference to two partitionLengths arrays |  Major | Shuffle, Spark Core | Matt Cheah | Matt Cheah |
| [SPARK-28701](https://issues.apache.org/jira/browse/SPARK-28701) | add java11 support for spark pull request builds |  Major | Build, jenkins | Shane Knapp | Shane Knapp |
| [SPARK-28877](https://issues.apache.org/jira/browse/SPARK-28877) | Investigate/fix JAXB failure running Pyspark tests on JDK 11 |  Major | Build, PySpark | Sean R. Owen | Dongjoon Hyun |
| [SPARK-28414](https://issues.apache.org/jira/browse/SPARK-28414) | Standalone worker/master UI updates for Resource scheduling |  Major | Deploy | Thomas Graves | wuyi |
| [SPARK-28495](https://issues.apache.org/jira/browse/SPARK-28495) | Introduce ANSI store assignment policy for table insertion |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-28539](https://issues.apache.org/jira/browse/SPARK-28539) | Document Executors page |  Minor | SQL | Xiao Li | zhengruifeng |
| [SPARK-28789](https://issues.apache.org/jira/browse/SPARK-28789) | Document ALTER DATABASE statement. |  Major | Documentation | Dilip Biswal | Dilip Biswal |
| [SPARK-28786](https://issues.apache.org/jira/browse/SPARK-28786) | Document INSERT statement in SQL Reference. |  Major | Documentation, SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-28807](https://issues.apache.org/jira/browse/SPARK-28807) | Document SHOW DATABASES in SQL Reference. |  Major | Documentation, SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-28919](https://issues.apache.org/jira/browse/SPARK-28919) | Add more profiles for JDK8/11 build test |  Major | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28759](https://issues.apache.org/jira/browse/SPARK-28759) | Upgrade scala-maven-plugin to 4.2.0 |  Major | Build | Dongjoon Hyun | Hyukjin Kwon |
| [SPARK-28571](https://issues.apache.org/jira/browse/SPARK-28571) | Shuffle storage API: Use API in SortShuffleWriter |  Major | Shuffle, Spark Core | Matt Cheah | Matt Cheah |
| [SPARK-27931](https://issues.apache.org/jira/browse/SPARK-27931) | Accept 'on' and 'off' as input for boolean data type |  Major | SQL | Yuming Wang | YoungGyu Chun |
| [SPARK-28804](https://issues.apache.org/jira/browse/SPARK-28804) | Document DESCRIBE QUERY in SQL Reference. |  Major | Documentation, SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-28932](https://issues.apache.org/jira/browse/SPARK-28932) | Maven install fails on JDK11 |  Blocker | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28542](https://issues.apache.org/jira/browse/SPARK-28542) | Document Stages page |  Minor | SQL, Web UI | Xiao Li | Pablo Langa Blanco |
| [SPARK-28803](https://issues.apache.org/jira/browse/SPARK-28803) | Document DESCRIBE TABLE in SQL Reference. |  Major | Documentation, SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-28790](https://issues.apache.org/jira/browse/SPARK-28790) | Document CACHE TABLE statement in SQL Reference. |  Major | Documentation, SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-28463](https://issues.apache.org/jira/browse/SPARK-28463) | Thriftserver throws java.math.BigDecimal incompatible with org.apache.hadoop.hive.common.type.HiveDecimal |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28806](https://issues.apache.org/jira/browse/SPARK-28806) | Document SHOW COLUMNS in SQL Reference. |  Major | Documentation, SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-28805](https://issues.apache.org/jira/browse/SPARK-28805) | Document DESCRIBE FUNCTION in SQL Reference. |  Major | Documentation, SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-3137](https://issues.apache.org/jira/browse/SPARK-3137) | Use finer grained locking in TorrentBroadcast.readObject |  Major | Spark Core | Reynold Xin | Shixiong Zhu |
| [SPARK-28788](https://issues.apache.org/jira/browse/SPARK-28788) | Document ANALYZE TABLE statement in SQL Reference. |  Major | Documentation, SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-28808](https://issues.apache.org/jira/browse/SPARK-28808) | Document SHOW FUNCTIONS in SQL Reference. |  Major | Documentation, SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-28811](https://issues.apache.org/jira/browse/SPARK-28811) | Document SHOW TBLPROPERTIES in SQL Reference. |  Major | Documentation, SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-28830](https://issues.apache.org/jira/browse/SPARK-28830) | Document UNCACHE TABLE in SQL Reference |  Major | Documentation | ABHISHEK KUMAR GUPTA | Huaxin Gao |
| [SPARK-28971](https://issues.apache.org/jira/browse/SPARK-28971) | Convert and port 'pgSQL/aggregates\_part4.sql' into UDF test base |  Major | PySpark, SQL, Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-28272](https://issues.apache.org/jira/browse/SPARK-28272) | Convert and port 'pgSQL/aggregates\_part3.sql' into UDF test base |  Major | PySpark, SQL, Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-28802](https://issues.apache.org/jira/browse/SPARK-28802) | Document DESCRIBE DATABASE in SQL Reference. |  Major | Documentation, SQL | Dilip Biswal | kevin yu |
| [SPARK-28690](https://issues.apache.org/jira/browse/SPARK-28690) | Date/Time Functions: date\_part for timestamps |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29002](https://issues.apache.org/jira/browse/SPARK-29002) | Avoid changing SMJ to BHJ if the build side has a high ratio of empty partitions |  Major | SQL | Wei Xue | Wei Xue |
| [SPARK-28935](https://issues.apache.org/jira/browse/SPARK-28935) | Document SQL metrics for Details for Query Plan |  Major | Documentation | Xiao Li | L. C. Hsieh |
| [SPARK-28000](https://issues.apache.org/jira/browse/SPARK-28000) | Add comments.sql |  Major | SQL, Tests | Lantao Jin | Yuming Wang |
| [SPARK-28341](https://issues.apache.org/jira/browse/SPARK-28341) | create a public API for V2SessionCatalog |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-28773](https://issues.apache.org/jira/browse/SPARK-28773) | NULL Handling |  Major | Documentation | Xiao Li | Dilip Biswal |
| [SPARK-28831](https://issues.apache.org/jira/browse/SPARK-28831) | Document CLEAR CACHE in SQL Reference |  Major | Documentation | ABHISHEK KUMAR GUPTA | Huaxin Gao |
| [SPARK-28412](https://issues.apache.org/jira/browse/SPARK-28412) | ANSI SQL: OVERLAY function support byte array(T312) |  Major | SQL | jiaan.geng | jiaan.geng |
| [SPARK-28856](https://issues.apache.org/jira/browse/SPARK-28856) | DataSourceV2: Support SHOW DATABASES |  Major | SQL | Terry Kim | Terry Kim |
| [SPARK-28982](https://issues.apache.org/jira/browse/SPARK-28982) | Support ThriftServer GetTypeInfoOperation for Spark's own type |  Major | SQL | angerszhu | angerszhu |
| [SPARK-28570](https://issues.apache.org/jira/browse/SPARK-28570) | Shuffle Storage API: Use writer API in UnsafeShuffleWriter |  Major | Shuffle, Spark Core | Matt Cheah | Matt Cheah |
| [SPARK-28840](https://issues.apache.org/jira/browse/SPARK-28840) | --jar argument with spark-sql failed to load the jars to driver classpath |  Critical | SQL | Sandeep Katta | Sandeep Katta |
| [SPARK-29060](https://issues.apache.org/jira/browse/SPARK-29060) | Add tree traversal helper for adaptive spark plans |  Minor | SQL | Wei Xue | Wei Xue |
| [SPARK-28828](https://issues.apache.org/jira/browse/SPARK-28828) | Document REFRESH statement in SQL Reference. |  Major | Documentation, SQL | jobit mathew | kevin yu |
| [SPARK-28796](https://issues.apache.org/jira/browse/SPARK-28796) | Document DROP DATABASE statement in SQL Reference. |  Major | Documentation, SQL | Dilip Biswal | Sandeep Katta |
| [SPARK-28795](https://issues.apache.org/jira/browse/SPARK-28795) | Document CREATE VIEW statement in SQL Reference. |  Major | Documentation, SQL | Dilip Biswal | Aman Omer |
| [SPARK-28969](https://issues.apache.org/jira/browse/SPARK-28969) | OneVsRestModel in the py side should not set WeightCol and Classifier |  Minor | ML, PySpark | zhengruifeng | Huaxin Gao |
| [SPARK-29064](https://issues.apache.org/jira/browse/SPARK-29064) | Add PrometheusResource to export Executor metrics |  Major | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29032](https://issues.apache.org/jira/browse/SPARK-29032) | Simplify Prometheus support by adding PrometheusServlet |  Major | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28373](https://issues.apache.org/jira/browse/SPARK-28373) | Document JDBC/ODBC Server page |  Major | Documentation, Web UI | Xiao Li | Pablo Langa Blanco |
| [SPARK-28950](https://issues.apache.org/jira/browse/SPARK-28950) | [SPARK-28351] FollowingUp: Change whereClause to be optional in DELETE |  Major | SQL | Xianyin Xin | Xianyin Xin |
| [SPARK-28814](https://issues.apache.org/jira/browse/SPARK-28814) | Document SET/RESET in SQL Reference. |  Major | Documentation, SQL | Dilip Biswal | Sharanabasappa G Keriwaddi |
| [SPARK-28792](https://issues.apache.org/jira/browse/SPARK-28792) | Document CREATE DATABASE statement in SQL Reference. |  Major | Documentation, SQL | Dilip Biswal | Sharanabasappa G Keriwaddi |
| [SPARK-29096](https://issues.apache.org/jira/browse/SPARK-29096) | The exact math method should be called only when there is a corresponding function in Math |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-28799](https://issues.apache.org/jira/browse/SPARK-28799) | Document TRUNCATE TABLE in SQL Reference. |  Minor | Documentation, SQL | Dilip Biswal | pavithra ramachandran |
| [SPARK-29012](https://issues.apache.org/jira/browse/SPARK-29012) | Timestamp type can not accept special values |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-28683](https://issues.apache.org/jira/browse/SPARK-28683) | Upgrade Scala to 2.12.10 |  Major | Build | Yuming Wang | Yuming Wang |
| [SPARK-28985](https://issues.apache.org/jira/browse/SPARK-28985) | Pyspark ClassificationModel and RegressionModel support column setters/getters/predict |  Minor | ML, PySpark | zhengruifeng | Huaxin Gao |
| [SPARK-28822](https://issues.apache.org/jira/browse/SPARK-28822) | Document USE DATABASE in SQL Reference |  Major | Documentation | ABHISHEK KUMAR GUPTA | Shivu Sondur |
| [SPARK-29196](https://issues.apache.org/jira/browse/SPARK-29196) | Add JDK11 support on document |  Minor | Documentation | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29192](https://issues.apache.org/jira/browse/SPARK-29192) | Extend BenchmarkBase to write JDK9+ results separately |  Major | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29187](https://issues.apache.org/jira/browse/SPARK-29187) | Return null from \`date\_part()\` for the null \`field\` |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-28772](https://issues.apache.org/jira/browse/SPARK-28772) | Upgrade breeze to 1.0 |  Major | Build | Yuming Wang | Sean R. Owen |
| [SPARK-28141](https://issues.apache.org/jira/browse/SPARK-28141) | Date type can not accept special values |  Major | SQL | Yuming Wang | Maxim Gekk |
| [SPARK-28892](https://issues.apache.org/jira/browse/SPARK-28892) | support UPDATE in the parser and add the corresponding logical plan |  Major | SQL | Xianyin Xin | Xianyin Xin |
| [SPARK-29203](https://issues.apache.org/jira/browse/SPARK-29203) | Reduce shuffle partitions in SQLQueryTestSuite |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-29016](https://issues.apache.org/jira/browse/SPARK-29016) | Update LICENSE and NOTICE for Hive 2.3 |  Major | Build | Yuming Wang | Yuming Wang |
| [SPARK-29142](https://issues.apache.org/jira/browse/SPARK-29142) | Pyspark clustering models support column setters/getters/predict |  Minor | ML, PySpark | zhengruifeng | Huaxin Gao |
| [SPARK-29015](https://issues.apache.org/jira/browse/SPARK-29015) | Can't use 'add jar' jar's class as create table serde class on JDK 11 |  Major | SQL | Yuming Wang | angerszhu |
| [SPARK-29282](https://issues.apache.org/jira/browse/SPARK-29282) | Use the same VM configurations for test/benchmark |  Major | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29019](https://issues.apache.org/jira/browse/SPARK-29019) | Improve tooltip information in JDBC/ODBC Server tab |  Trivial | Web UI | Pablo Langa Blanco | Pablo Langa Blanco |
| [SPARK-29297](https://issues.apache.org/jira/browse/SPARK-29297) | Compare \`core\` and \`mllib\` module benchmark in JDK8/11 |  Minor | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29289](https://issues.apache.org/jira/browse/SPARK-29289) | Update scalatest, scalacheck, scopt, scala-parser-combinators, clapper classutil |  Minor | Build | Sean R. Owen | Sean R. Owen |
| [SPARK-29291](https://issues.apache.org/jira/browse/SPARK-29291) | Remove use of procedure-like method definition for 2.13 |  Minor | Build, Spark Core | Sean R. Owen | Sean R. Owen |
| [SPARK-29300](https://issues.apache.org/jira/browse/SPARK-29300) | Compare \`catalyst\` and \`avro\` module benchmark in JDK8/11 |  Major | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29311](https://issues.apache.org/jira/browse/SPARK-29311) | Return seconds with fraction from \`date\_part\`/\`extract\` |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-28962](https://issues.apache.org/jira/browse/SPARK-28962) | High-order function: filter(array\<T\>, function\<T, Int, boolean\>) → array\<T\> |  Major | SQL | Henry Davidge | Henry Davidge |
| [SPARK-29296](https://issues.apache.org/jira/browse/SPARK-29296) | Use scala-parallel-collections library in 2.13 |  Minor | Spark Core | Sean R. Owen | Sean R. Owen |
| [SPARK-29320](https://issues.apache.org/jira/browse/SPARK-29320) | Compare \`sql/core\` module in JDK8/11 (Part 1) |  Major | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29326](https://issues.apache.org/jira/browse/SPARK-29326) | ANSI store assignment policy: throw exception on insertion failure |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-29039](https://issues.apache.org/jira/browse/SPARK-29039) | centralize the catalog and table lookup logic |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29355](https://issues.apache.org/jira/browse/SPARK-29355) | Support timestamps subtraction |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-28813](https://issues.apache.org/jira/browse/SPARK-28813) | Document SHOW CREATE TABLE in SQL Reference. |  Minor | Documentation, SQL | Dilip Biswal | Huaxin Gao |
| [SPARK-28800](https://issues.apache.org/jira/browse/SPARK-28800) | Document REPAIR TABLE statement in SQL Reference. |  Minor | Documentation, SQL | Dilip Biswal | Huaxin Gao |
| [SPARK-29365](https://issues.apache.org/jira/browse/SPARK-29365) | Support date and timestamp subtraction |  Minor | SQL | Maxim Gekk |  |
| [SPARK-29360](https://issues.apache.org/jira/browse/SPARK-29360) | PySpark FPGrowthModel supports getter/setter |  Minor | ML, PySpark | Huaxin Gao | Huaxin Gao |
| [SPARK-29143](https://issues.apache.org/jira/browse/SPARK-29143) | Pyspark feature models support column setters/getters |  Minor | ML, PySpark | zhengruifeng | Huaxin Gao |
| [SPARK-29342](https://issues.apache.org/jira/browse/SPARK-29342) | Make casting strings to intervals case insensitive |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-28816](https://issues.apache.org/jira/browse/SPARK-28816) | Document ADD JAR statement in SQL Reference. |  Minor | Documentation, SQL | Dilip Biswal | Huaxin Gao |
| [SPARK-25668](https://issues.apache.org/jira/browse/SPARK-25668) | Refactor TPCDSQueryBenchmark to use main method |  Major | Tests | Yuming Wang | Dongjoon Hyun |
| [SPARK-29269](https://issues.apache.org/jira/browse/SPARK-29269) | Pyspark ALSModel support getters/setters |  Minor | ML, PySpark | zhengruifeng | Huaxin Gao |
| [SPARK-28797](https://issues.apache.org/jira/browse/SPARK-28797) | Document DROP FUNCTION statement in SQL Reference. |  Minor | Documentation, SQL | Dilip Biswal | Sandeep Katta |
| [SPARK-29392](https://issues.apache.org/jira/browse/SPARK-29392) | Remove use of deprecated symbol literal " 'name " syntax in favor Symbol("name") |  Minor | Spark Core, SQL, Tests | Sean R. Owen | Sean R. Owen |
| [SPARK-29401](https://issues.apache.org/jira/browse/SPARK-29401) | Replace ambiguous varargs call parallelize(Array) with parallelize(Seq) |  Minor | ML, Spark Core | Sean R. Owen | Sean R. Owen |
| [SPARK-29411](https://issues.apache.org/jira/browse/SPARK-29411) | Remove use of Unit companion object in favor of () |  Minor | ML, Spark Core | Sean R. Owen | Sean R. Owen |
| [SPARK-29413](https://issues.apache.org/jira/browse/SPARK-29413) | Remove use of TraversableLike |  Minor | Spark Core | Sean R. Owen | Sean R. Owen |
| [SPARK-29416](https://issues.apache.org/jira/browse/SPARK-29416) | Replace Array.deep comparisons with Array.sameElements |  Minor | ML, Spark Core, SQL | Sean R. Owen | Sean R. Owen |
| [SPARK-29400](https://issues.apache.org/jira/browse/SPARK-29400) | Improve PrometheusResource to use labels |  Minor | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29116](https://issues.apache.org/jira/browse/SPARK-29116) | Refactor py classes related to DecisionTree |  Minor | ML, PySpark | zhengruifeng | Huaxin Gao |
| [SPARK-28810](https://issues.apache.org/jira/browse/SPARK-28810) | Document SHOW TABLES in SQL Reference. |  Major | Documentation, SQL | Dilip Biswal | Shivu Sondur |
| [SPARK-29323](https://issues.apache.org/jira/browse/SPARK-29323) | Add tooltip for The Executors Tab's column names in the Spark history server Page |  Trivial | Web UI | liucht-inspur | liucht-inspur |
| [SPARK-29368](https://issues.apache.org/jira/browse/SPARK-29368) | Port interval.sql |  Major | SQL, Tests | Maxim Gekk | Maxim Gekk |
| [SPARK-29308](https://issues.apache.org/jira/browse/SPARK-29308) | dev/deps/spark-deps-hadoop-3.2  orc jar is incorrect |  Major | Build | angerszhu | angerszhu |
| [SPARK-29377](https://issues.apache.org/jira/browse/SPARK-29377) | parity between scala ml tuning and python ml tuning |  Minor | ML, PySpark | Huaxin Gao | Huaxin Gao |
| [SPARK-29369](https://issues.apache.org/jira/browse/SPARK-29369) | Accept strings without \`interval\` prefix in casting to intervals |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29381](https://issues.apache.org/jira/browse/SPARK-29381) | Add 'private' \_XXXParams classes for classification & regression |  Minor | ML, PySpark | zhengruifeng | Huaxin Gao |
| [SPARK-28560](https://issues.apache.org/jira/browse/SPARK-28560) | Optimize shuffle reader to local shuffle reader when smj converted to bhj in adaptive execution |  Major | SQL | Ke Jia | Ke Jia |
| [SPARK-28211](https://issues.apache.org/jira/browse/SPARK-28211) | Shuffle Storage API: Driver Lifecycle |  Major | Shuffle, Spark Core | Matt Cheah | Yifei Huang |
| [SPARK-28885](https://issues.apache.org/jira/browse/SPARK-28885) | Follow ANSI store assignment rules in table insertion by default |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-29364](https://issues.apache.org/jira/browse/SPARK-29364) | Return intervals from date subtracts |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-27880](https://issues.apache.org/jira/browse/SPARK-27880) | Implement boolean aggregates(BOOL\_AND, BOOL\_OR and EVERY) |  Major | SQL | Yuming Wang | Kent Yao |
| [SPARK-9853](https://issues.apache.org/jira/browse/SPARK-9853) | Optimize shuffle fetch of contiguous partition IDs |  Minor | Spark Core, SQL | Matei Alexandru Zaharia | Yuanjian Li |
| [SPARK-28869](https://issues.apache.org/jira/browse/SPARK-28869) | Roll over event log files |  Major | Spark Core | Jungtaek Lim | Jungtaek Lim |
| [SPARK-29398](https://issues.apache.org/jira/browse/SPARK-29398) | Allow RPC endpoints to use dedicated thread pools |  Major | Spark Core | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-29482](https://issues.apache.org/jira/browse/SPARK-29482) |  ANALYZE TABLE should look up catalog/table like v2 commands |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-28420](https://issues.apache.org/jira/browse/SPARK-28420) | Date/Time Functions: date\_part for intervals |  Major | SQL | Yuming Wang | Maxim Gekk |
| [SPARK-29512](https://issues.apache.org/jira/browse/SPARK-29512) | REPAIR TABLE should look up catalog/table like v2 commands |  Major | SQL | Terry Kim | Terry Kim |
| [SPARK-27879](https://issues.apache.org/jira/browse/SPARK-27879) | Implement bitwise integer aggregates(BIT\_AND and BIT\_OR) |  Major | SQL | Yuming Wang | Kent Yao |
| [SPARK-29108](https://issues.apache.org/jira/browse/SPARK-29108) | Add window.sql - Part 2 |  Major | SQL, Tests | Dylan Guedes | Dylan Guedes |
| [SPARK-29517](https://issues.apache.org/jira/browse/SPARK-29517) | TRUNCATE TABLE should look up catalog/table like v2 commands |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-28787](https://issues.apache.org/jira/browse/SPARK-28787) | Document LOAD DATA statement in SQL Reference. |  Minor | Documentation, SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-28793](https://issues.apache.org/jira/browse/SPARK-28793) | Document CREATE FUNCTION in SQL Reference. |  Minor | Documentation, SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-29539](https://issues.apache.org/jira/browse/SPARK-29539) | SHOW PARTITIONS should look up catalog/table like v2 commands |  Major | SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-29107](https://issues.apache.org/jira/browse/SPARK-29107) | Add window.sql - Part 1 |  Major | SQL, Tests | Dylan Guedes | Dylan Guedes |
| [SPARK-29511](https://issues.apache.org/jira/browse/SPARK-29511) | DataSourceV2: Support CREATE NAMESPACE |  Major | SQL | Terry Kim | Terry Kim |
| [SPARK-29546](https://issues.apache.org/jira/browse/SPARK-29546) | Recover jersey-guava test dependency in docker-integration-tests |  Major | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29513](https://issues.apache.org/jira/browse/SPARK-29513) | REFRESH TABLE should look up catalog/table like v2 commands |  Major | SQL | Terry Kim | Terry Kim |
| [SPARK-29522](https://issues.apache.org/jira/browse/SPARK-29522) | CACHE TABLE should look up catalog/table like v2 commands |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-29504](https://issues.apache.org/jira/browse/SPARK-29504) | Tooltip  not display for Job Description even it shows ellipsed |  Major | Web UI | ABHISHEK KUMAR GUPTA | pavithra ramachandran |
| [SPARK-28791](https://issues.apache.org/jira/browse/SPARK-28791) | Document ALTER TABLE statement in SQL Reference [Phase 1] |  Minor | Documentation | Dilip Biswal | pavithra ramachandran |
| [SPARK-29526](https://issues.apache.org/jira/browse/SPARK-29526) | UNCACHE TABLE should look up catalog/table like v2 commands |  Major | SQL | Terry Kim | Terry Kim |
| [SPARK-29527](https://issues.apache.org/jira/browse/SPARK-29527) | SHOW CREATE TABLE should look up catalog/table like v2 commands |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-29589](https://issues.apache.org/jira/browse/SPARK-29589) | Support pagination for sql session stats table in JDBC/ODBC server page |  Minor | Web UI | shahid | shahid |
| [SPARK-28512](https://issues.apache.org/jira/browse/SPARK-28512) | New optional mode: throw runtime exceptions on casting failures |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-29093](https://issues.apache.org/jira/browse/SPARK-29093) | Remove automatically generated param setters in \_shared\_params\_code\_gen.py |  Major | ML, PySpark | zhengruifeng | Huaxin Gao |
| [SPARK-29599](https://issues.apache.org/jira/browse/SPARK-29599) | Support pagination for session table in JDBC/ODBC Tab |  Minor | Web UI | angerszhu | angerszhu |
| [SPARK-29521](https://issues.apache.org/jira/browse/SPARK-29521) | LOAD DATA INTO TABLE should look up catalog/table like v2 commands |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-29609](https://issues.apache.org/jira/browse/SPARK-29609) | DataSourceV2: Support DROP NAMESPACE |  Major | SQL | Terry Kim | Terry Kim |
| [SPARK-29612](https://issues.apache.org/jira/browse/SPARK-29612) | ALTER TABLE (RECOVER PARTITIONS) should look up catalog/table like v2 commands |  Major | SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-29110](https://issues.apache.org/jira/browse/SPARK-29110) | Add window.sql - Part 4 |  Major | SQL, Tests | Dylan Guedes | Dylan Guedes |
| [SPARK-29120](https://issues.apache.org/jira/browse/SPARK-29120) | Add create\_view.sql |  Major | SQL, Tests | ABHISHEK KUMAR GUPTA | Takeshi Yamamuro |
| [SPARK-29668](https://issues.apache.org/jira/browse/SPARK-29668) | Deprecate Python 3 prior to version 3.6 |  Minor | Documentation | Dongjoon Hyun | Hyukjin Kwon |
| [SPARK-29523](https://issues.apache.org/jira/browse/SPARK-29523) | SHOW COLUMNS should look up catalog/table like v2 commands |  Major | SQL | Pablo Langa Blanco | Pablo Langa Blanco |
| [SPARK-29592](https://issues.apache.org/jira/browse/SPARK-29592) | ALTER TABLE (set partition location) should look up catalog/table like v2 commands |  Major | SQL | Terry Kim | Terry Kim |
| [SPARK-29676](https://issues.apache.org/jira/browse/SPARK-29676) | ALTER TABLE (RENAME PARTITION) should look up catalog/table like v2 commands |  Major | SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-29486](https://issues.apache.org/jira/browse/SPARK-29486) | CalendarInterval should have 3 fields: months, days and microseconds |  Major | SQL | Liu, Linhong | Liu, Linhong |
| [SPARK-29643](https://issues.apache.org/jira/browse/SPARK-29643) | ALTER TABLE (DROP PARTITION) should look up catalog/table like v2 commands |  Major | SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-29109](https://issues.apache.org/jira/browse/SPARK-29109) | Add window.sql - Part 3 |  Major | SQL, Tests | Dylan Guedes | Dylan Guedes |
| [SPARK-29452](https://issues.apache.org/jira/browse/SPARK-29452) | Improve tootip information for storage tab |  Minor | Web UI | Sandeep Katta | Rakesh Raushan |
| [SPARK-29674](https://issues.apache.org/jira/browse/SPARK-29674) | Update dropwizard metrics to 4.1.1 for JDK 9+ support |  Minor | Spark Core | Sean R. Owen | Sean R. Owen |
| [SPARK-29590](https://issues.apache.org/jira/browse/SPARK-29590) | Support hiding table in JDBC/ODBC server page in WebUI |  Minor | Web UI | shahid | shahid |
| [SPARK-29678](https://issues.apache.org/jira/browse/SPARK-29678) | ALTER TABLE (add table partition) should look up catalog/table like v2 commands |  Major | SQL | Terry Kim | Terry Kim |
| [SPARK-28798](https://issues.apache.org/jira/browse/SPARK-28798) | Document DROP TABLE/VIEW statement in SQL Reference. |  Minor | Documentation, SQL | Dilip Biswal | Shivu Sondur |
| [SPARK-28809](https://issues.apache.org/jira/browse/SPARK-28809) | Document SHOW TABLE in SQL Reference |  Minor | Documentation, SQL | Dilip Biswal | Shivu Sondur |
| [SPARK-29397](https://issues.apache.org/jira/browse/SPARK-29397) | Create new plugin interface for driver and executor plugins |  Major | Spark Core | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-29734](https://issues.apache.org/jira/browse/SPARK-29734) | DataSourceV2: Support SHOW CURRENT NAMESPACE |  Major | SQL | Terry Kim | Terry Kim |
| [SPARK-29696](https://issues.apache.org/jira/browse/SPARK-29696) | Add groupingsets.sql |  Major | SQL, Tests | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-29630](https://issues.apache.org/jira/browse/SPARK-29630) | Not allowed to create a permanent view by referencing a temporary view in EXISTS |  Major | SQL | Takeshi Yamamuro | Terry Kim |
| [SPARK-29695](https://issues.apache.org/jira/browse/SPARK-29695) | ALTER TABLE (SerDe properties) should look up catalog/table like v2 commands |  Major | SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-29648](https://issues.apache.org/jira/browse/SPARK-29648) | Add limit.sql |  Major | SQL, Tests | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-29387](https://issues.apache.org/jira/browse/SPARK-29387) | Support \`\*\` and \`/\` operators for intervals |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29714](https://issues.apache.org/jira/browse/SPARK-29714) | Add insert.sql |  Major | SQL, Tests | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-29680](https://issues.apache.org/jira/browse/SPARK-29680) | ALTER TABLE (CHANGE COLUMN) should look up catalog/table like v2 commands |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-29725](https://issues.apache.org/jira/browse/SPARK-29725) | Add UT for WebUI page for JDBC/ODBC tab |  Minor | Web UI | shahid | shahid |
| [SPARK-29759](https://issues.apache.org/jira/browse/SPARK-29759) | LocalShuffleReaderExec.outputPartitioning should use the corrected attributes |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29673](https://issues.apache.org/jira/browse/SPARK-29673) | upgrade jenkins pypy to PyPy3.6 v7.2.0 |  Major | Build | Shane Knapp | Shane Knapp |
| [SPARK-28893](https://issues.apache.org/jira/browse/SPARK-28893) | support MERGE INTO in the parser and add the corresponding logical plan |  Major | SQL | Xianyin Xin | Xianyin Xin |
| [SPARK-29385](https://issues.apache.org/jira/browse/SPARK-29385) | Make \`INTERVAL\` values comparable |  Major | SQL | Maxim Gekk |  |
| [SPARK-29788](https://issues.apache.org/jira/browse/SPARK-29788) | Fix the typo errors in the SQL reference document merges |  Trivial | Documentation | jobit mathew | jobit mathew |
| [SPARK-29730](https://issues.apache.org/jira/browse/SPARK-29730) | ALTER VIEW QUERY should look up catalog/table like v2 commands |  Major | SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-29528](https://issues.apache.org/jira/browse/SPARK-29528) | Upgrade scala-maven-plugin to 4.3.0 for Scala 2.13.1 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29408](https://issues.apache.org/jira/browse/SPARK-29408) | Support interval literal with negative sign \`-\` |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29601](https://issues.apache.org/jira/browse/SPARK-29601) | JDBC ODBC Tab Statement column should be provided ellipsis for bigger SQL statement |  Minor | SQL | ABHISHEK KUMAR GUPTA | pavithra ramachandran |
| [SPARK-29393](https://issues.apache.org/jira/browse/SPARK-29393) | Add make\_interval() function |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29805](https://issues.apache.org/jira/browse/SPARK-29805) | Enable nested schema pruning and pruning on expressions by default |  Major | SQL | DB Tsai | DB Tsai |
| [SPARK-29519](https://issues.apache.org/jira/browse/SPARK-29519) | SHOW TBLPROPERTIES should look up catalog/table like v2 commands |  Major | SQL | Pablo Langa Blanco | Pablo Langa Blanco |
| [SPARK-29570](https://issues.apache.org/jira/browse/SPARK-29570) | Improve tooltip for Executor Tab for Shuffle Write,Blacklisted,Logs,Threaddump columns |  Minor | Web UI | ABHISHEK KUMAR GUPTA | Ankit Raj Boudh |
| [SPARK-29399](https://issues.apache.org/jira/browse/SPARK-29399) | Remove old ExecutorPlugin API (or wrap it using new API) |  Major | Spark Core | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-29835](https://issues.apache.org/jira/browse/SPARK-29835) | Remove the unnecessary conversion from Statement to LogicalPlan for DELETE/UPDATE |  Major | SQL | Xianyin Xin | Xianyin Xin |
| [SPARK-29837](https://issues.apache.org/jira/browse/SPARK-29837) | PostgreSQL dialect: cast to boolean |  Major | SQL | wuyi | wuyi |
| [SPARK-29672](https://issues.apache.org/jira/browse/SPARK-29672) | update spark testing framework to use python3 |  Major | Build | Shane Knapp | Shane Knapp |
| [SPARK-28833](https://issues.apache.org/jira/browse/SPARK-28833) | Document ALTER VIEW Statement in SQL Reference. |  Minor | Documentation, SQL | jobit mathew | kevin yu |
| [SPARK-29901](https://issues.apache.org/jira/browse/SPARK-29901) | Fix broken links in SQL Reference |  Minor | Documentation, SQL | Huaxin Gao |  |
| [SPARK-28752](https://issues.apache.org/jira/browse/SPARK-28752) | Documentation build script to support Python 3 |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-29829](https://issues.apache.org/jira/browse/SPARK-29829) | SHOW TABLE EXTENDED should look up catalog/table like v2 commands |  Major | SQL | Pablo Langa Blanco | Pablo Langa Blanco |
| [SPARK-29834](https://issues.apache.org/jira/browse/SPARK-29834) | DESC DATABASE should look up catalog like v2 commands |  Major | SQL | Hu Fuwang | Hu Fuwang |
| [SPARK-29923](https://issues.apache.org/jira/browse/SPARK-29923) | Set \`io.netty.tryReflectionSetAccessible\` for Arrow on JDK9+ |  Major | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29476](https://issues.apache.org/jira/browse/SPARK-29476) | Add tooltip information for Thread Dump links and Thread details table columns in Executors Tab |  Trivial | Web UI | jobit mathew | pavithra ramachandran |
| [SPARK-29858](https://issues.apache.org/jira/browse/SPARK-29858) | ALTER DATABASE (SET DBPROPERTIES) should look up catalog like v2 commands |  Major | SQL | Hu Fuwang | Hu Fuwang |
| [SPARK-29456](https://issues.apache.org/jira/browse/SPARK-29456) | Add tooltip information for Session Statistics Table column  in JDBC/ODBC Server Tab |  Minor | Web UI | ABHISHEK KUMAR GUPTA | pavithra ramachandran |
| [SPARK-29907](https://issues.apache.org/jira/browse/SPARK-29907) | Move DELETE/UPDATE/MERGE relative rules to dmlStatementNoWith to support cte. |  Major | SQL | Xianyin Xin | Xianyin Xin |
| [SPARK-29859](https://issues.apache.org/jira/browse/SPARK-29859) | ALTER DATABASE (SET LOCATION) should look up catalog like v2 commands |  Major | SQL | Hu Fuwang | Hu Fuwang |
| [SPARK-29941](https://issues.apache.org/jira/browse/SPARK-29941) | Support dec as shorthand for decimal |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-29728](https://issues.apache.org/jira/browse/SPARK-29728) | ALTER TABLE (RENAME TABLE) should look up catalog/table like v2 commands |  Major | SQL | Terry Kim | Terry Kim |
| [SPARK-29893](https://issues.apache.org/jira/browse/SPARK-29893) | Improve the local reader performance by changing the task number from 1 to multi |  Major | SQL | Ke Jia | Ke Jia |
| [SPARK-29926](https://issues.apache.org/jira/browse/SPARK-29926) | interval \`1. second\` should be invalid as PostgreSQL |  Minor | SQL | Kent Yao | Kent Yao |
| [SPARK-29906](https://issues.apache.org/jira/browse/SPARK-29906) | Reading of csv file fails with adaptive execution turned on |  Minor | SQL | koert kuipers | Wenchen Fan |
| [SPARK-29248](https://issues.apache.org/jira/browse/SPARK-29248) | Pass in number of partitions to BuildWriter |  Major | SQL | Ximo Guanter | Ximo Guanter |
| [SPARK-28023](https://issues.apache.org/jira/browse/SPARK-28023) | Trim the string when cast string type to other types |  Major | SQL | Yuming Wang | Kent Yao |
| [SPARK-29981](https://issues.apache.org/jira/browse/SPARK-29981) | Add \`hive-1.2\` and \`hive-2.3\` profiles |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28812](https://issues.apache.org/jira/browse/SPARK-28812) | Document SHOW PARTITIONS in SQL Reference. |  Major | Documentation, SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-30007](https://issues.apache.org/jira/browse/SPARK-30007) | Publish snapshot/release with \`-Phive-2.3\` only |  Major | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30005](https://issues.apache.org/jira/browse/SPARK-30005) | Update \`test-dependencies.sh\` to check \`hive-1.2/2.3\` profile |  Major | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30013](https://issues.apache.org/jira/browse/SPARK-30013) | No parens for calls to BigDecimal.longValue() etc. |  Minor | Spark Core, SQL | Sean R. Owen | Sean R. Owen |
| [SPARK-30000](https://issues.apache.org/jira/browse/SPARK-30000) | Trim the string when cast string type to decimals |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-30015](https://issues.apache.org/jira/browse/SPARK-30015) | Move hive-storage-api dependency from \`hive-2.3\` to \`sql/core\` |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30031](https://issues.apache.org/jira/browse/SPARK-30031) | Remove \`hive-2.3\` profile from \`sql/hive\` module |  Major | Build, SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29862](https://issues.apache.org/jira/browse/SPARK-29862) | CREATE (OR REPLACE) ... VIEW should look up catalog/table like v2 commands |  Major | SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-30035](https://issues.apache.org/jira/browse/SPARK-30035) | Upgrade to Apache Commons Lang 3.9 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30009](https://issues.apache.org/jira/browse/SPARK-30009) | Replace Ordering.Double with Ordering.Double.TotalOrdering |  Minor | Spark Core, SQL | Sean R. Owen | Sean R. Owen |
| [SPARK-30026](https://issues.apache.org/jira/browse/SPARK-30026) | Support all whitespaces as delimiter for inside a interval value |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-29293](https://issues.apache.org/jira/browse/SPARK-29293) | Move scalafmt to Scala 2.12 profile; bump to 0.12 |  Minor | Build | Sean R. Owen | Sean R. Owen |
| [SPARK-29989](https://issues.apache.org/jira/browse/SPARK-29989) | Update release-script for \`hive-1.2/2.3\` combination |  Major | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29724](https://issues.apache.org/jira/browse/SPARK-29724) | Support JDBC/ODBC tab for HistoryServer WebUI |  Major | Web UI | shahid | shahid |
| [SPARK-29726](https://issues.apache.org/jira/browse/SPARK-29726) | Support KV store for listener HiveThriftServer2Listener |  Minor | Web UI | shahid | shahid |
| [SPARK-29991](https://issues.apache.org/jira/browse/SPARK-29991) | Support \`test-hive1.2\` in PR Builder |  Major | Project Infra | Dongjoon Hyun | Hyukjin Kwon |
| [SPARK-28461](https://issues.apache.org/jira/browse/SPARK-28461) | Pad Decimal numbers with trailing zeros to the scale of the column |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-30085](https://issues.apache.org/jira/browse/SPARK-30085) | standardize sql reference |  Minor | Documentation, SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-29477](https://issues.apache.org/jira/browse/SPARK-29477) | Improve tooltip information for Streaming  Tab |  Minor | Web UI | ABHISHEK KUMAR GUPTA | Rakesh Raushan |
| [SPARK-30012](https://issues.apache.org/jira/browse/SPARK-30012) | Change classes extending scala collection classes to work with 2.13 |  Minor | Spark Core, SQL | Sean R. Owen | Sean R. Owen |
| [SPARK-30051](https://issues.apache.org/jira/browse/SPARK-30051) | Clean up hadoop-3.2 transitive dependencies |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29453](https://issues.apache.org/jira/browse/SPARK-29453) | Improve tooltip information for SQL tab |  Minor | Web UI | Sandeep Katta | Ankit Raj Boudh |
| [SPARK-29425](https://issues.apache.org/jira/browse/SPARK-29425) | Alter database statement erases hive database's ownership |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-29774](https://issues.apache.org/jira/browse/SPARK-29774) | Date and Timestamp type +/- null should be null as Postgres |  Minor | SQL | Kent Yao | Kent Yao |
| [SPARK-29957](https://issues.apache.org/jira/browse/SPARK-29957) | Reset MiniKDC's default enctypes to fit jdk8/jdk11 |  Major | Tests | angerszhu | angerszhu |
| [SPARK-28083](https://issues.apache.org/jira/browse/SPARK-28083) | Support ANSI SQL: LIKE ... ESCAPE syntax |  Major | SQL | Yuming Wang | jiaan.geng |
| [SPARK-30011](https://issues.apache.org/jira/browse/SPARK-30011) | Use DoubleAsIfIntegral / FloatAsIfIntegral workalike in 2.13 |  Minor | SQL | Sean R. Owen | Sean R. Owen |
| [SPARK-30152](https://issues.apache.org/jira/browse/SPARK-30152) | Enable Hadoop-2.7/JDK11 build at GitHub Action |  Minor | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30155](https://issues.apache.org/jira/browse/SPARK-30155) | Resolve ambiguous overload from RegexParsers in 2.13 |  Trivial | SQL | Sean R. Owen | Sean R. Owen |
| [SPARK-30157](https://issues.apache.org/jira/browse/SPARK-30157) | Upgrade Apache HttpCore from 4.4.10 to 4.4.12 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30147](https://issues.apache.org/jira/browse/SPARK-30147) | Trim the string when cast string type to booleans |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-29922](https://issues.apache.org/jira/browse/SPARK-29922) | SHOW FUNCTIONS should look up catalog/table like v2 commands |  Major | SQL | Pablo Langa Blanco | Pablo Langa Blanco |
| [SPARK-30158](https://issues.apache.org/jira/browse/SPARK-30158) | Resolve Array + reference type compile problems in 2.13, with sc.parallelize |  Minor | Spark Core, SQL | Sean R. Owen | Sean R. Owen |
| [SPARK-29587](https://issues.apache.org/jira/browse/SPARK-29587) | Real data type is not supported in Spark SQL which is supporting in postgresql |  Minor | SQL | jobit mathew | Kent Yao |
| [SPARK-29460](https://issues.apache.org/jira/browse/SPARK-29460) | Improve tooltip for Job Tab |  Minor | Web UI | ABHISHEK KUMAR GUPTA | pavithra ramachandran |
| [SPARK-30195](https://issues.apache.org/jira/browse/SPARK-30195) | Some imports, function need more explicit resolution in 2.13 |  Minor | ML, Spark Core, SQL, Structured Streaming | Sean R. Owen | Sean R. Owen |
| [SPARK-30038](https://issues.apache.org/jira/browse/SPARK-30038) | DESCRIBE FUNCTION should look up catalog/table like v2 commands |  Major | SQL | Pablo Langa Blanco | Pablo Langa Blanco |
| [SPARK-30170](https://issues.apache.org/jira/browse/SPARK-30170) | Eliminate warnings: part 1 |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30040](https://issues.apache.org/jira/browse/SPARK-30040) | DROP FUNCTION should look up catalog/table like v2 commands |  Major | SQL | Pablo Langa Blanco | Pablo Langa Blanco |
| [SPARK-29455](https://issues.apache.org/jira/browse/SPARK-29455) | Improve tooltip information for Stages Tab |  Minor | Web UI | ABHISHEK KUMAR GUPTA | Sharanabasappa G Keriwaddi |
| [SPARK-30166](https://issues.apache.org/jira/browse/SPARK-30166) | Eliminate warnings in JSONOptions |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30258](https://issues.apache.org/jira/browse/SPARK-30258) | Eliminate warnings of deprecated Spark APIs in tests |  Minor | Tests | Maxim Gekk | Maxim Gekk |
| [SPARK-29493](https://issues.apache.org/jira/browse/SPARK-29493) | Add MapType support for Arrow Java |  Major | SQL | Bryan Cutler | Jalpan Randeri |
| [SPARK-30291](https://issues.apache.org/jira/browse/SPARK-30291) | Catch the exception when do materialize in AQE |  Major | SQL | Ke Jia | Ke Jia |
| [SPARK-30280](https://issues.apache.org/jira/browse/SPARK-30280) | Update documentation |  Major | Documentation | Yuming Wang | Yuming Wang |
| [SPARK-29294](https://issues.apache.org/jira/browse/SPARK-29294) | Update Kafka to 2.4.0 for Scala 2.13 |  Major | Structured Streaming | Sean R. Owen | Jungtaek Lim |
| [SPARK-30269](https://issues.apache.org/jira/browse/SPARK-30269) | Should use old partition stats to decide whether to update stats when analyzing partition |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-30331](https://issues.apache.org/jira/browse/SPARK-30331) | The final AdaptiveSparkPlan event is not marked with \`isFinalPlan=true\` |  Minor | SQL | Manu Zhang | Manu Zhang |
| [SPARK-27986](https://issues.apache.org/jira/browse/SPARK-27986) | Support Aggregate Expressions with filter |  Major | SQL | Yuming Wang | jiaan.geng |
| [SPARK-30363](https://issues.apache.org/jira/browse/SPARK-30363) | Add Documentation for Refresh Resources |  Minor | SQL | Rakesh Raushan | Rakesh Raushan |
| [SPARK-30407](https://issues.apache.org/jira/browse/SPARK-30407) | reset the metrics info of AdaptiveSparkPlanExec plan when enable aqe |  Major | SQL | Ke Jia | Ke Jia |
| [SPARK-30403](https://issues.apache.org/jira/browse/SPARK-30403) | Fix the NoSuchElementException exception when enable AQE with InSubquery use case |  Major | SQL | Ke Jia | Ke Jia |
| [SPARK-30412](https://issues.apache.org/jira/browse/SPARK-30412) | Eliminate warnings in Java tests regarding to deprecated API |  Minor | Java API, SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29947](https://issues.apache.org/jira/browse/SPARK-29947) | Improve ResolveRelations performance |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-30039](https://issues.apache.org/jira/browse/SPARK-30039) |  CREATE FUNCTION should look up catalog/table like v2 commands |  Major | SQL | Pablo Langa Blanco | Pablo Langa Blanco |
| [SPARK-28825](https://issues.apache.org/jira/browse/SPARK-28825) | Document EXPLAIN Statement in SQL Reference. |  Major | Documentation, SQL | jobit mathew | pavithra ramachandran |
| [SPARK-30428](https://issues.apache.org/jira/browse/SPARK-30428) | File source V2: support partition pruning |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-29988](https://issues.apache.org/jira/browse/SPARK-29988) | Adjust Jenkins jobs for \`hive-1.2/2.3\` combination |  Major | Project Infra | Dongjoon Hyun | Shane Knapp |
| [SPARK-30018](https://issues.apache.org/jira/browse/SPARK-30018) | Add the owner property to v2 namespace |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-29779](https://issues.apache.org/jira/browse/SPARK-29779) | Compact old event log files and clean up |  Major | Spark Core | Jungtaek Lim | Jungtaek Lim |
| [SPARK-29173](https://issues.apache.org/jira/browse/SPARK-29173) | Benchmark JDK 11 performance with FilterPushdownBenchmark |  Major | Build | Yuming Wang | Maxim Gekk |
| [SPARK-30188](https://issues.apache.org/jira/browse/SPARK-30188) | Fix tests when enable Adaptive Query Execution |  Major | SQL | Ke Jia | Ke Jia |
| [SPARK-30500](https://issues.apache.org/jira/browse/SPARK-30500) | Remove SQL config spark.sql.variable.substitute.depth |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30501](https://issues.apache.org/jira/browse/SPARK-30501) | Remove SQL config spark.sql.parquet.int64AsTimestampMillis |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29544](https://issues.apache.org/jira/browse/SPARK-29544) | Optimize skewed join at runtime with new Adaptive Execution |  Major | SQL | Ke Jia | Ke Jia |
| [SPARK-29708](https://issues.apache.org/jira/browse/SPARK-29708) | Different answers in aggregates of duplicate grouping sets |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-30479](https://issues.apache.org/jira/browse/SPARK-30479) | Apply compaction of event log to SQL events |  Major | Spark Core | Jungtaek Lim | Jungtaek Lim |
| [SPARK-30521](https://issues.apache.org/jira/browse/SPARK-30521) | Eliminate deprecation warnings for ExpressionInfo |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30507](https://issues.apache.org/jira/browse/SPARK-30507) | TableCalalog reserved properties shoudn't be changed with options or tblpropeties |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-30524](https://issues.apache.org/jira/browse/SPARK-30524) | Disable OptimizeSkewJoin rule if introducing additional shuffle. |  Major | SQL | Ke Jia | Ke Jia |
| [SPARK-30499](https://issues.apache.org/jira/browse/SPARK-30499) | Remove SQL config spark.sql.execution.pandas.respectSessionTimeZone |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30282](https://issues.apache.org/jira/browse/SPARK-30282) | Migrate SHOW TBLPROPERTIES to new framework |  Major | SQL | Terry Kim | Terry Kim |
| [SPARK-30533](https://issues.apache.org/jira/browse/SPARK-30533) | Add classes to represent Java Regressors and RegressionModels |  Minor | ML, PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-30544](https://issues.apache.org/jira/browse/SPARK-30544) | Upgrade Genjavadoc to 0.15 |  Minor | Build | Kousuke Saruta | Kousuke Saruta |
| [SPARK-30551](https://issues.apache.org/jira/browse/SPARK-30551) | Disable comparison for interval type |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-30566](https://issues.apache.org/jira/browse/SPARK-30566) | Iterator doesn't refer outer identifier named "iterator" properly in Scala 2.13 |  Minor | Build | Kousuke Saruta | Kousuke Saruta |
| [SPARK-29290](https://issues.apache.org/jira/browse/SPARK-29290) | Update twitter chill for 2.13 |  Minor | Build | Sean R. Owen | Sean R. Owen |
| [SPARK-30547](https://issues.apache.org/jira/browse/SPARK-30547) | Add unstable annotation to the CalendarInterval class |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-30019](https://issues.apache.org/jira/browse/SPARK-30019) | Add the owner property to v2 table |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-30568](https://issues.apache.org/jira/browse/SPARK-30568) | Invalidate interval type as a field table schema |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-30571](https://issues.apache.org/jira/browse/SPARK-30571) | coalesce shuffle reader with splitting shuffle fetch request fails |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-30593](https://issues.apache.org/jira/browse/SPARK-30593) | Revert interval ISO/ANSI SQL Standard output since we decide not to follow ANSI and no round trip. |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-15616](https://issues.apache.org/jira/browse/SPARK-15616) | CatalogRelation should fallback to HDFS size of partitions that are involved in Query if statistics are not available. |  Major | SQL | Lianhui Wang | Hu Fuwang |
| [SPARK-30591](https://issues.apache.org/jira/browse/SPARK-30591) | Remove the nonstandard SET OWNER syntax for namespaces |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-30573](https://issues.apache.org/jira/browse/SPARK-30573) | Document WHERE Clause of SELECT statement in SQL Reference. |  Minor | Documentation, SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-30575](https://issues.apache.org/jira/browse/SPARK-30575) | Document HAVING Clause of SELECT statement in SQL Reference. |  Minor | Documentation, SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-30583](https://issues.apache.org/jira/browse/SPARK-30583) |  Document LIMIT Clause of SELECT statement in SQL Reference. |  Minor | Documentation, SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-30592](https://issues.apache.org/jira/browse/SPARK-30592) | Interval support for csv and json functions |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-30549](https://issues.apache.org/jira/browse/SPARK-30549) | Fix the subquery metrics showing issue in UI When enable AQE |  Major | SQL | Ke Jia | Ke Jia |
| [SPARK-30574](https://issues.apache.org/jira/browse/SPARK-30574) | Document GROUP BY Clause of SELECT statement in SQL Reference. |  Minor | Documentation, SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-28801](https://issues.apache.org/jira/browse/SPARK-28801) | Document SELECT statement in SQL Reference. |  Minor | Documentation, SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-28794](https://issues.apache.org/jira/browse/SPARK-28794) | Document CREATE TABLE in SQL Reference. |  Minor | Documentation, SQL | Dilip Biswal | pavithra ramachandran |
| [SPARK-30627](https://issues.apache.org/jira/browse/SPARK-30627) | Disable all the V2 file sources in Spark 3.0 by default |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-29924](https://issues.apache.org/jira/browse/SPARK-29924) | Document Arrow requirement in JDK9+ |  Major | Documentation | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30639](https://issues.apache.org/jira/browse/SPARK-30639) | Upgrade Jersey to 2.30 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30581](https://issues.apache.org/jira/browse/SPARK-30581) | Document SORT BY Clause of SELECT statement in SQL Reference. |  Minor | Documentation, SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-30589](https://issues.apache.org/jira/browse/SPARK-30589) | Document DISTRIBUTE BY Clause of SELECT statement in SQL Reference. |  Minor | Documentation, SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-30588](https://issues.apache.org/jira/browse/SPARK-30588) | Document CLUSTER BY Clause of SELECT statement in SQL Reference. |  Major | Documentation, SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-30481](https://issues.apache.org/jira/browse/SPARK-30481) | Integrate event log compactor into Spark History Server |  Major | Spark Core | Jungtaek Lim | Jungtaek Lim |
| [SPARK-30678](https://issues.apache.org/jira/browse/SPARK-30678) | Eliminate warnings from deprecated BisectingKMeansModel.computeCost |  Minor | MLlib | Maxim Gekk | Maxim Gekk |
| [SPARK-30662](https://issues.apache.org/jira/browse/SPARK-30662) | ALS/MLP extend HasBlockSize |  Major | ML, PySpark | zhengruifeng | Huaxin Gao |
| [SPARK-30690](https://issues.apache.org/jira/browse/SPARK-30690) | Expose the documentation of CalendarInternval in API documentation |  Minor | Documentation, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-30691](https://issues.apache.org/jira/browse/SPARK-30691) | Add a few main pages |  Minor | Documentation, SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-30676](https://issues.apache.org/jira/browse/SPARK-30676) | Eliminate warnings from deprecated constructors of java.lang.Integer and java.lang.Double |  Minor | Spark Core | Maxim Gekk | Maxim Gekk |
| [SPARK-27686](https://issues.apache.org/jira/browse/SPARK-27686) | Update migration guide |  Minor | Documentation, SQL | Yuming Wang | Yuming Wang |
| [SPARK-30718](https://issues.apache.org/jira/browse/SPARK-30718) | Exclude jdk.tools dependency from hadoop-yarn-api |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30743](https://issues.apache.org/jira/browse/SPARK-30743) | Use JRE instead of JDK in K8S integration test |  Minor | Kubernetes, Spark Core, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30719](https://issues.apache.org/jira/browse/SPARK-30719) | AQE should not issue a "not supported" warning for queries being by-passed |  Minor | SQL | Wei Xue | Wenchen Fan |
| [SPARK-30579](https://issues.apache.org/jira/browse/SPARK-30579) | Document ORDER BY Clause of SELECT statement in SQL Reference. |  Major | Documentation, SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-30779](https://issues.apache.org/jira/browse/SPARK-30779) | Review and fix issues in Structured Streaming API docs |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-30758](https://issues.apache.org/jira/browse/SPARK-30758) | Spark SQL can't display bracketed comments well in generated golden files |  Major | SQL | jiaan.geng | jiaan.geng |
| [SPARK-30751](https://issues.apache.org/jira/browse/SPARK-30751) | Combine the skewed readers into one in AQE skew join optimizations |  Major | SQL | Wei Xue | Wenchen Fan |
| [SPARK-30807](https://issues.apache.org/jira/browse/SPARK-30807) | Support JDK11 in K8S integration test |  Major | Kubernetes, Spark Core, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30801](https://issues.apache.org/jira/browse/SPARK-30801) | Subqueries should not be AQE-ed if main query is not |  Major | SQL | Wei Xue | Wei Xue |
| [SPARK-30829](https://issues.apache.org/jira/browse/SPARK-30829) | Define LegacyBehaviorPolicy enumeration as the common value for result change configs |  Major | SQL | Yuanjian Li | Yuanjian Li |
| [SPARK-30755](https://issues.apache.org/jira/browse/SPARK-30755) | Update migration guide and add actionable exception for HIVE-15167 |  Blocker | SQL | Yuming Wang | Yuming Wang |
| [SPARK-30825](https://issues.apache.org/jira/browse/SPARK-30825) | Add documents information for window function. |  Major | SQL | jiaan.geng | jiaan.geng |
| [SPARK-30858](https://issues.apache.org/jira/browse/SPARK-30858) | IntegralDivide's dataType should not depend on SQLConf.get |  Blocker | SQL | Herman van Hövell | Maxim Gekk |
| [SPARK-30894](https://issues.apache.org/jira/browse/SPARK-30894) | The nullability of Size function should not depend on SQLConf.get |  Blocker | SQL | Wenchen Fan | Maxim Gekk |
| [SPARK-30809](https://issues.apache.org/jira/browse/SPARK-30809) | Review and fix issues in SQL API docs |  Major | SQL | Yuanjian Li | Yuanjian Li |
| [SPARK-30906](https://issues.apache.org/jira/browse/SPARK-30906) | Turning off AQE in CacheManager is not thread-safe |  Blocker | SQL | Wei Xue | Wei Xue |
| [SPARK-30840](https://issues.apache.org/jira/browse/SPARK-30840) | Add version property for ConfigEntry and ConfigBuilder |  Major | SQL | jiaan.geng | jiaan.geng |
| [SPARK-30922](https://issues.apache.org/jira/browse/SPARK-30922) | Remove the max split config after changing the multi sub joins to multi sub partitions |  Major | SQL | Ke Jia | Ke Jia |
| [SPARK-30897](https://issues.apache.org/jira/browse/SPARK-30897) | The nullability of ArrayExists should not depend on SQLConf.get |  Major | SQL | Wenchen Fan | Peter Toth |
| [SPARK-30898](https://issues.apache.org/jira/browse/SPARK-30898) | The nullablity of MakeDecimal should not depend on SQLConf.get |  Major | SQL | Wenchen Fan | Peter Toth |
| [SPARK-30870](https://issues.apache.org/jira/browse/SPARK-30870) | catalyst inception of lateral view explode with struct raise a Catalyst error |  Major | Spark Core, SQL | Thomas Prelle | Peter Toth |
| [SPARK-30887](https://issues.apache.org/jira/browse/SPARK-30887) | Add version information to the configuration of Deploy |  Major | Spark Core | jiaan.geng | jiaan.geng |
| [SPARK-30918](https://issues.apache.org/jira/browse/SPARK-30918) | improve the splitting of skewed partitions |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-30928](https://issues.apache.org/jira/browse/SPARK-30928) | ML, GraphX 3.0 QA: API: Binary incompatible changes |  Blocker | Documentation, GraphX, ML, MLlib | zhengruifeng | Huaxin Gao |
| [SPARK-30910](https://issues.apache.org/jira/browse/SPARK-30910) | Add version information to the configuration of R |  Major | Spark Core | jiaan.geng | jiaan.geng |
| [SPARK-30909](https://issues.apache.org/jira/browse/SPARK-30909) | Add version information to the configuration of Python |  Major | Spark Core | jiaan.geng | jiaan.geng |
| [SPARK-30841](https://issues.apache.org/jira/browse/SPARK-30841) | Add version information to the configuration of SQL |  Major | SQL | jiaan.geng | jiaan.geng |
| [SPARK-30888](https://issues.apache.org/jira/browse/SPARK-30888) | Add version information to the configuration of Network |  Major | Spark Core | jiaan.geng | jiaan.geng |
| [SPARK-30937](https://issues.apache.org/jira/browse/SPARK-30937) | Migration guide for Hive 2.3 |  Major | SQL | wuyi | wuyi |
| [SPARK-30908](https://issues.apache.org/jira/browse/SPARK-30908) | Add version information to the configuration of Kryo |  Major | Spark Core | jiaan.geng | jiaan.geng |
| [SPARK-30891](https://issues.apache.org/jira/browse/SPARK-30891) | Add version information to the configuration of History |  Major | Spark Core | jiaan.geng | jiaan.geng |
| [SPARK-30912](https://issues.apache.org/jira/browse/SPARK-30912) | Add version information to the configuration of Streaming.scala |  Major | Spark Core | jiaan.geng | jiaan.geng |
| [SPARK-30969](https://issues.apache.org/jira/browse/SPARK-30969) | Remove resource coordination support from Standalone |  Critical | Spark Core | wuyi | wuyi |
| [SPARK-30991](https://issues.apache.org/jira/browse/SPARK-30991) | Refactor AQE readers and RDDs |  Major | SQL | Wei Xue | Wei Xue |
| [SPARK-30999](https://issues.apache.org/jira/browse/SPARK-30999) | Don't cancel a QueryStageExec when it's already finished |  Major | SQL | wuyi | wuyi |
| [SPARK-30960](https://issues.apache.org/jira/browse/SPARK-30960) | add back the legacy date/timestamp format support in CSV/JSON parser |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31027](https://issues.apache.org/jira/browse/SPARK-31027) | Refactor \`DataSourceStrategy.scala\` to minimize the changes to support nested predicate pushdown |  Major | SQL | DB Tsai | DB Tsai |
| [SPARK-30889](https://issues.apache.org/jira/browse/SPARK-30889) | Add version information to the configuration of Worker |  Major | Spark Core | jiaan.geng |  |
| [SPARK-30913](https://issues.apache.org/jira/browse/SPARK-30913) | Add version information to the configuration of Tests.scala |  Major | Spark Core | jiaan.geng | jiaan.geng |
| [SPARK-31046](https://issues.apache.org/jira/browse/SPARK-31046) | Make more efficient and clean up AQE update UI code |  Minor | SQL | Wei Xue | Wei Xue |
| [SPARK-30914](https://issues.apache.org/jira/browse/SPARK-30914) | Add version information to the configuration of UI |  Major | Spark Core | jiaan.geng | jiaan.geng |
| [SPARK-30886](https://issues.apache.org/jira/browse/SPARK-30886) | Deprecate two-parameter TRIM/LTRIM/RTRIM functions |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31045](https://issues.apache.org/jira/browse/SPARK-31045) | Add config for AQE logging level |  Minor | SQL | Wei Xue | Wei Xue |
| [SPARK-30899](https://issues.apache.org/jira/browse/SPARK-30899) | CreateArray/CreateMap's data type should not depend on SQLConf.get |  Blocker | SQL | Wenchen Fan | Rakesh Raushan |
| [SPARK-30934](https://issues.apache.org/jira/browse/SPARK-30934) | ML, GraphX 3.0 QA: Programming guide update and migration guide |  Major | Documentation, GraphX, ML, MLlib | zhengruifeng | Huaxin Gao |
| [SPARK-31002](https://issues.apache.org/jira/browse/SPARK-31002) | Add version information to the configuration of Core |  Major | Spark Core | jiaan.geng | jiaan.geng |
| [SPARK-30929](https://issues.apache.org/jira/browse/SPARK-30929) | ML, GraphX 3.0 QA: API: New Scala APIs, docs |  Blocker | Documentation, GraphX, ML, MLlib | zhengruifeng | Huaxin Gao |
| [SPARK-31096](https://issues.apache.org/jira/browse/SPARK-31096) | Replace \`Array\` with \`Seq\` in AQE \`CustomShuffleReaderExec\` |  Minor | SQL | Wei Xue | Wei Xue |
| [SPARK-30189](https://issues.apache.org/jira/browse/SPARK-30189) | Interval from year-month/date-time string handling whitespaces |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-31037](https://issues.apache.org/jira/browse/SPARK-31037) | refine AQE config names |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-30962](https://issues.apache.org/jira/browse/SPARK-30962) | Document ALTER TABLE statement in SQL Reference [Phase 2] |  Major | Documentation, SQL | Xiao Li | kevin yu |
| [SPARK-31070](https://issues.apache.org/jira/browse/SPARK-31070) | make skew join split skewed partitions more evenly |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31030](https://issues.apache.org/jira/browse/SPARK-31030) | Backward Compatibility for Parsing and Formatting Datetime |  Major | SQL | Yuanjian Li | Yuanjian Li |
| [SPARK-31076](https://issues.apache.org/jira/browse/SPARK-31076) | Convert Catalyst's DATE/TIMESTAMP to Java Date/Timestamp via local date-time |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31091](https://issues.apache.org/jira/browse/SPARK-31091) | Revert SPARK-24640 "Return \`NULL\` from \`size(NULL)\` by default" |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31092](https://issues.apache.org/jira/browse/SPARK-31092) | Add version information to the configuration of Yarn |  Major | Spark Core, YARN | jiaan.geng | jiaan.geng |
| [SPARK-31118](https://issues.apache.org/jira/browse/SPARK-31118) | Add version information to the configuration of K8S |  Major | Kubernetes, Spark Core | jiaan.geng | jiaan.geng |
| [SPARK-31109](https://issues.apache.org/jira/browse/SPARK-31109) | Add version information to the configuration of Mesos |  Major | Mesos | jiaan.geng | jiaan.geng |
| [SPARK-30911](https://issues.apache.org/jira/browse/SPARK-30911) | Add version information to the configuration of Status |  Major | Spark Core | jiaan.geng | jiaan.geng |
| [SPARK-31124](https://issues.apache.org/jira/browse/SPARK-31124) | change the default value of minPartitionNum in AQE |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31131](https://issues.apache.org/jira/browse/SPARK-31131) | Remove the  unnecessary config spark.sql.legacy.timeParser.enabled |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-31090](https://issues.apache.org/jira/browse/SPARK-31090) | Revert SPARK-25457 IntegralDivide returns data type of the operands |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31144](https://issues.apache.org/jira/browse/SPARK-31144) | Wrap java.lang.Error with an exception for QueryExecutionListener.onFailure |  Major | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-30864](https://issues.apache.org/jira/browse/SPARK-30864) | Add the user guide for Adaptive Query Execution |  Major | SQL | Ke Jia | Ke Jia |
| [SPARK-31116](https://issues.apache.org/jira/browse/SPARK-31116) | PrquetRowConverter does not follow case sensitivity |  Blocker | SQL | Tae-kyeom, Kim | Tae-kyeom, Kim |
| [SPARK-30930](https://issues.apache.org/jira/browse/SPARK-30930) | ML, GraphX 3.0 QA: API: Experimental, DeveloperApi, final, sealed audit |  Critical | Documentation, GraphX, ML, MLlib | zhengruifeng | Huaxin Gao |
| [SPARK-30307](https://issues.apache.org/jira/browse/SPARK-30307) | remove ReusedQueryStageExec |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31134](https://issues.apache.org/jira/browse/SPARK-31134) | optimize skew join after shuffle partitions are coalesced |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31150](https://issues.apache.org/jira/browse/SPARK-31150) | Parsing seconds fraction with variable length for timestamp |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-30860](https://issues.apache.org/jira/browse/SPARK-30860) | Different behavior between rolling and non-rolling event log |  Major | Spark Core | Adam Binford | Adam Binford |
| [SPARK-31171](https://issues.apache.org/jira/browse/SPARK-31171) | size(null) should return null under ansi mode |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31176](https://issues.apache.org/jira/browse/SPARK-31176) | Remove support for 'e'/'c' as datetime pattern charactar |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-30933](https://issues.apache.org/jira/browse/SPARK-30933) | ML, GraphX 3.0 QA: Update user guide for new features & APIs |  Major | Documentation, GraphX, ML, MLlib | zhengruifeng | Huaxin Gao |
| [SPARK-31159](https://issues.apache.org/jira/browse/SPARK-31159) | Incompatible Parquet dates/timestamps with Spark 2.4 |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31181](https://issues.apache.org/jira/browse/SPARK-31181) | Remove the default value assumption on CREATE TABLE test cases |  Minor | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31183](https://issues.apache.org/jira/browse/SPARK-31183) | Incompatible Avro dates/timestamps with Spark 2.4 |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31189](https://issues.apache.org/jira/browse/SPARK-31189) | Fix errors and missing parts for datetime pattern document |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-31141](https://issues.apache.org/jira/browse/SPARK-31141) | Add version information to the configuration of Dstreams |  Major | DStreams | jiaan.geng | jiaan.geng |
| [SPARK-31147](https://issues.apache.org/jira/browse/SPARK-31147) | forbid CHAR type in non-Hive-Serde tables |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31228](https://issues.apache.org/jira/browse/SPARK-31228) | Add version information to the configuration of Kafka |  Major | DStreams | jiaan.geng | jiaan.geng |
| [SPARK-31201](https://issues.apache.org/jira/browse/SPARK-31201) | add an individual config for skewed partition threshold |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31238](https://issues.apache.org/jira/browse/SPARK-31238) | Incompatible ORC dates with Spark 2.4 |  Blocker | SQL | Bruce Robbins | Maxim Gekk |
| [SPARK-31086](https://issues.apache.org/jira/browse/SPARK-31086) | Add Back the Deprecated SQLContext methods |  Major | PySpark, SQL | Xiao Li | Xiao Li |
| [SPARK-31088](https://issues.apache.org/jira/browse/SPARK-31088) | Add back HiveContext and createExternalTable |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-17636](https://issues.apache.org/jira/browse/SPARK-17636) | Parquet predicate pushdown for nested fields |  Critical | Spark Core, SQL | Mitesh | DB Tsai |
| [SPARK-31087](https://issues.apache.org/jira/browse/SPARK-31087) | Add Back Multiple Removed APIs |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-31296](https://issues.apache.org/jira/browse/SPARK-31296) | Benchmark date-time rebasing in Parquet datasource |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31215](https://issues.apache.org/jira/browse/SPARK-31215) | Add version information to the static configuration of SQL |  Major | SQL | jiaan.geng | jiaan.geng |
| [SPARK-31269](https://issues.apache.org/jira/browse/SPARK-31269) | Supplement version for configuration only appear in configuration doc |  Major | Documentation | jiaan.geng | jiaan.geng |
| [SPARK-31282](https://issues.apache.org/jira/browse/SPARK-31282) | Supplement version for configuration appear in security doc |  Major | Documentation | jiaan.geng | jiaan.geng |
| [SPARK-31295](https://issues.apache.org/jira/browse/SPARK-31295) | Supplement version for configuration appear in doc |  Major | Documentation | jiaan.geng | jiaan.geng |
| [SPARK-31279](https://issues.apache.org/jira/browse/SPARK-31279) | Add version information to the configuration of Hive |  Major | SQL | jiaan.geng | jiaan.geng |
| [SPARK-31297](https://issues.apache.org/jira/browse/SPARK-31297) | Speed-up date-time rebasing |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31305](https://issues.apache.org/jira/browse/SPARK-31305) | Add a page to list all commands in SQL Reference |  Minor | Documentation, SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-31290](https://issues.apache.org/jira/browse/SPARK-31290) | Add back the deprecated R APIs |  Major | SparkR, SQL | Huaxin Gao |  |
| [SPARK-31318](https://issues.apache.org/jira/browse/SPARK-31318) | Split Parquet/Avro configs for rebasing dates/timestamps in read and in write |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31311](https://issues.apache.org/jira/browse/SPARK-31311) | Benchmark date-time rebasing in ORC datasource |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31328](https://issues.apache.org/jira/browse/SPARK-31328) | Incorrect timestamps rebasing on autumn daylight saving time |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31326](https://issues.apache.org/jira/browse/SPARK-31326) | create Function docs structure for SQL Reference |  Minor | Documentation, SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-31358](https://issues.apache.org/jira/browse/SPARK-31358) | Document aggregate filters in SQL references |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-31333](https://issues.apache.org/jira/browse/SPARK-31333) | Document Hints |  Major | SQL | Xiao Li | Huaxin Gao |
| [SPARK-25558](https://issues.apache.org/jira/browse/SPARK-25558) | Pushdown predicates for nested fields in DataSource Strategy |  Major | SQL | DB Tsai | DB Tsai |
| [SPARK-31362](https://issues.apache.org/jira/browse/SPARK-31362) | Document Set Operators in SQL Reference |  Major | Documentation, SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-31291](https://issues.apache.org/jira/browse/SPARK-31291) | SQLQueryTestSuite: Sharing test data and test tables among multiple test cases. |  Minor | SQL, Tests | jiaan.geng | jiaan.geng |
| [SPARK-31331](https://issues.apache.org/jira/browse/SPARK-31331) | Document Spark integration with Hive UDFs/UDAFs/UDTFs |  Minor | Documentation, SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-31355](https://issues.apache.org/jira/browse/SPARK-31355) | Document TABLESAMPLE in SQL Reference |  Major | Documentation, SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-31359](https://issues.apache.org/jira/browse/SPARK-31359) | Speed up timestamps rebasing |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31401](https://issues.apache.org/jira/browse/SPARK-31401) | Add JDK11 example in \`bin/docker-image-tool.sh\` usage |  Minor | Kubernetes, Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31410](https://issues.apache.org/jira/browse/SPARK-31410) | Raise exception instead of silent change for new DateFormatter |  Major | SQL | Yuanjian Li | Yuanjian Li |
| [SPARK-31384](https://issues.apache.org/jira/browse/SPARK-31384) | NPE in OptimizeSkewedJoin when there's a inputRDD of plan has 0 partition |  Major | SQL | wuyi | wuyi |
| [SPARK-31406](https://issues.apache.org/jira/browse/SPARK-31406) | ThriftServerQueryTestSuite: Sharing test data and test tables among multiple test cases. |  Minor | SQL | jiaan.geng | jiaan.geng |
| [SPARK-31348](https://issues.apache.org/jira/browse/SPARK-31348) | Document Join in SQL Reference |  Major | Documentation, SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-30315](https://issues.apache.org/jira/browse/SPARK-30315) | Add adaptive execution context |  Minor | SQL | Wei Xue | Wei Xue |
| [SPARK-31416](https://issues.apache.org/jira/browse/SPARK-31416) | Check more strictly that a field name can be used as a valid Java identifier for codegen |  Major | SQL | Kousuke Saruta | Kousuke Saruta |
| [SPARK-31414](https://issues.apache.org/jira/browse/SPARK-31414) | Performance regression with new TimestampFormatter for json and csv |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-31319](https://issues.apache.org/jira/browse/SPARK-31319) | Document UDF in SQL Reference |  Major | Documentation, SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-31419](https://issues.apache.org/jira/browse/SPARK-31419) | Document Table-valued Function and Inline Table |  Major | Documentation, SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-31383](https://issues.apache.org/jira/browse/SPARK-31383) | Clean up the SQL documents in docs/sql-ref\* |  Minor | Documentation, SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-31402](https://issues.apache.org/jira/browse/SPARK-31402) | Incorrect rebasing of BCE dates |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31426](https://issues.apache.org/jira/browse/SPARK-31426) | Regression in loading/saving timestamps from/to ORC files |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31439](https://issues.apache.org/jira/browse/SPARK-31439) | Perf regression of fromJavaDate |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31443](https://issues.apache.org/jira/browse/SPARK-31443) | Perf regression of toJavaDate |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31428](https://issues.apache.org/jira/browse/SPARK-31428) | Document Common Table Expression in SQL Reference |  Major | Documentation, SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-31455](https://issues.apache.org/jira/browse/SPARK-31455) | Fix rebasing of not-existed dates/timestamps |  Major | SQL | Wenchen Fan | Maxim Gekk |
| [SPARK-31390](https://issues.apache.org/jira/browse/SPARK-31390) | Document Window Function |  Major | Documentation, SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-31385](https://issues.apache.org/jira/browse/SPARK-31385) | Results of Julian-Gregorian rebasing don't match to Gregorian-Julian rebasing |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31381](https://issues.apache.org/jira/browse/SPARK-31381) | Upgrade built-in Hive 2.3.6 to 2.3.7 |  Major | Build, SQL | Yuming Wang | Yuming Wang |
| [SPARK-29245](https://issues.apache.org/jira/browse/SPARK-29245) | CCE during creating HiveMetaStoreClient |  Major | SQL | Dongjoon Hyun | Yuming Wang |
| [SPARK-30420](https://issues.apache.org/jira/browse/SPARK-30420) | Commands involved with namespace go thru the new resolution framework. |  Major | SQL | Terry Kim | Terry Kim |
| [SPARK-31361](https://issues.apache.org/jira/browse/SPARK-31361) | Rebase datetime in parquet/avro according to file metadata |  Blocker | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31369](https://issues.apache.org/jira/browse/SPARK-31369) | Add Documentation for JSON functions |  Major | SQL | Rakesh Raushan | Takeshi Yamamuro |
| [SPARK-31349](https://issues.apache.org/jira/browse/SPARK-31349) | Document builtin aggregate function |  Minor | Documentation, SQL | kevin yu | Takeshi Yamamuro |
| [SPARK-31465](https://issues.apache.org/jira/browse/SPARK-31465) | Document Literal in SQL Reference |  Major | Documentation, SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-31502](https://issues.apache.org/jira/browse/SPARK-31502) | document identifier in SQL Reference |  Major | Documentation, SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-31364](https://issues.apache.org/jira/browse/SPARK-31364) | Benchmark Nested Parquet Predicate Pushdown |  Major | SQL | DB Tsai | Jian TANG |
| [SPARK-31491](https://issues.apache.org/jira/browse/SPARK-31491) | Re-arrange Data Types page to document Floating Point Special Values |  Minor | Documentation, SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-31560](https://issues.apache.org/jira/browse/SPARK-31560) | Add V1/V2 tests for TextSuite and WholeTextFileSuite |  Major | SQL, Tests | Gengliang Wang | Gengliang Wang |
| [SPARK-31569](https://issues.apache.org/jira/browse/SPARK-31569) | Add links to subsections in SQL Reference main page |  Minor | Documentation, SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-29458](https://issues.apache.org/jira/browse/SPARK-29458) | Document scalar functions usage in APIs in SQL getting started. |  Major | Documentation, SQL | Dilip Biswal | Huaxin Gao |
| [SPARK-31556](https://issues.apache.org/jira/browse/SPARK-31556) | Document LIKE clause in SQL Reference |  Minor | Documentation, SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-31612](https://issues.apache.org/jira/browse/SPARK-31612) | SQL Reference clean up |  Minor | Documentation, SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-31633](https://issues.apache.org/jira/browse/SPARK-31633) | Upgrade SLF4J from 1.7.16 to 1.7.30 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31639](https://issues.apache.org/jira/browse/SPARK-31639) | Revert SPARK-27528 Use Parquet logical type TIMESTAMP\_MICROS by default |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31630](https://issues.apache.org/jira/browse/SPARK-31630) | Skip timestamp rebasing after 1900-01-01 |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31641](https://issues.apache.org/jira/browse/SPARK-31641) | Incorrect days conversion by JSON legacy parser |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31365](https://issues.apache.org/jira/browse/SPARK-31365) | Enable nested predicate pushdown per data sources |  Blocker | SQL | DB Tsai | L. C. Hsieh |
| [SPARK-31658](https://issues.apache.org/jira/browse/SPARK-31658) | SQL UI doesn't show write commands of AQE plan |  Minor | SQL, Web UI | Manu Zhang | Manu Zhang |
| [SPARK-31662](https://issues.apache.org/jira/browse/SPARK-31662) | Reading wrong dates from dictionary encoded columns in Parquet files |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31636](https://issues.apache.org/jira/browse/SPARK-31636) | Remove HTML syntax in SQL reference |  Major | Documentation, SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-31672](https://issues.apache.org/jira/browse/SPARK-31672) | Reading wrong timestamps from dictionary encoded columns in Parquet files |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31674](https://issues.apache.org/jira/browse/SPARK-31674) | Make Prometheus-format metric endpoints experimental |  Minor | Documentation, Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31707](https://issues.apache.org/jira/browse/SPARK-31707) | Revert SPARK-30098 Use default datasource as provider for CREATE TABLE syntax |  Blocker | SQL | Jungtaek Lim | Jungtaek Lim |
| [SPARK-31405](https://issues.apache.org/jira/browse/SPARK-31405) | fail by default when read/write datetime values and not sure if they need rebase or not |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31683](https://issues.apache.org/jira/browse/SPARK-31683) | Make Prometheus output consistent with DropWizard 4.1 result |  Major | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31743](https://issues.apache.org/jira/browse/SPARK-31743) | Add spark\_info metric into PrometheusResource |  Major | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31762](https://issues.apache.org/jira/browse/SPARK-31762) | Fix perf regression of date/timestamp formatting in toHiveString |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31755](https://issues.apache.org/jira/browse/SPARK-31755) | allow missing year/hour when parsing date/timestamp |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31802](https://issues.apache.org/jira/browse/SPARK-31802) | Format Java date-time types in Row.jsonValue directly |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31806](https://issues.apache.org/jira/browse/SPARK-31806) | Check reading date/timestamp from Parquet: plain, dictionary enc, Spark version |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31771](https://issues.apache.org/jira/browse/SPARK-31771) | Disable Narrow TextStyle for datetime pattern 'G/M/L/E/u/Q/q' |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-31821](https://issues.apache.org/jira/browse/SPARK-31821) | Remove mssql-jdbc dependencies |  Minor | Build | Gabor Somogyi | Gabor Somogyi |
| [SPARK-31855](https://issues.apache.org/jira/browse/SPARK-31855) | Check reading date/timestamp from Avro files w/ and w/o Spark version |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31866](https://issues.apache.org/jira/browse/SPARK-31866) | Add partitioning hints in SQL reference |  Minor | Documentation, SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-31867](https://issues.apache.org/jira/browse/SPARK-31867) | Fix silent data change for datetime formatting |  Blocker | SQL | Kent Yao | Kent Yao |
| [SPARK-31881](https://issues.apache.org/jira/browse/SPARK-31881) | Support Hadoop 3.2 K8s integration tests |  Major | Kubernetes, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31892](https://issues.apache.org/jira/browse/SPARK-31892) | Disable week-based date filed for parsing |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-31896](https://issues.apache.org/jira/browse/SPARK-31896) | Handle am-pm timestamp parsing when hour is missing |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-31879](https://issues.apache.org/jira/browse/SPARK-31879) | First day of week changed for non-MONDAY\_START Lacales |  Blocker | SQL | Kent Yao | Kent Yao |
| [SPARK-31827](https://issues.apache.org/jira/browse/SPARK-31827) | Fail datetime parsing/formatting if detect the Java 8 bug of stand-alone form |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31899](https://issues.apache.org/jira/browse/SPARK-31899) | Forbid datetime pattern letter u |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31294](https://issues.apache.org/jira/browse/SPARK-31294) | Benchmark the performance regression |  Major | SQL, Tests | Maxim Gekk | Maxim Gekk |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-25666](https://issues.apache.org/jira/browse/SPARK-25666) | Internally document type conversion between Python data and SQL types in UDFs |  Minor | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23257](https://issues.apache.org/jira/browse/SPARK-23257) | Kerberos Support in Kubernetes resource manager (Cluster Mode) |  Major | Kubernetes, Spark Core | Rob Keevil | Ilan Filonenko |
| [SPARK-25757](https://issues.apache.org/jira/browse/SPARK-25757) | Upgrade netty-all from 4.1.17.Final to 4.1.30.Final |  Minor | Build | Zhu, Lipeng | Zhu, Lipeng |
| [SPARK-25656](https://issues.apache.org/jira/browse/SPARK-25656) | Add an example section about how to use Parquet/ORC library options |  Major | Documentation, Examples, SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-25833](https://issues.apache.org/jira/browse/SPARK-25833) | Update migration guide for Hive view compatibility |  Minor | SQL | Chenxiao Mao | Chenxiao Mao |
| [SPARK-25933](https://issues.apache.org/jira/browse/SPARK-25933) | Fix pstats reference for spark.python.profile.dump in configuration.md |  Trivial | Documentation | Alex Hagerman | Alex Hagerman |
| [SPARK-26026](https://issues.apache.org/jira/browse/SPARK-26026) | Published Scaladoc jars missing from Maven Central |  Major | Documentation | Long Cao | Sean R. Owen |
| [SPARK-26168](https://issues.apache.org/jira/browse/SPARK-26168) | Update the code comments in Expression and Aggregate |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-26189](https://issues.apache.org/jira/browse/SPARK-26189) | Fix the doc of unionAll in SparkR |  Minor | R | Xiao Li | Huaxin Gao |
| [SPARK-25245](https://issues.apache.org/jira/browse/SPARK-25245) | Explain regarding limiting modification on "spark.sql.shuffle.partitions" for structured streaming |  Minor | Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-25997](https://issues.apache.org/jira/browse/SPARK-25997) | Python example code for Power Iteration Clustering in spark.ml |  Minor | ML | Huaxin Gao | Huaxin Gao |
| [SPARK-26787](https://issues.apache.org/jira/browse/SPARK-26787) | Fix standardization error message in WeightedLeastSquares |  Trivial | MLlib | Brian Scannell | Brian Scannell |
| [SPARK-26939](https://issues.apache.org/jira/browse/SPARK-26939) | Fix some outdated comments about task schedulers |  Trivial | Spark Core | Chenxiao Mao | Chenxiao Mao |
| [SPARK-26807](https://issues.apache.org/jira/browse/SPARK-26807) | Confusing documentation regarding installation from PyPi |  Trivial | Documentation | Emmanuel Arias | Sean R. Owen |
| [SPARK-26932](https://issues.apache.org/jira/browse/SPARK-26932) | Add a warning for Hive 2.1.1 ORC reader issue |  Minor | Documentation | Bo Hai | Bo Hai |
| [SPARK-27047](https://issues.apache.org/jira/browse/SPARK-27047) | Document stop-slave.sh in spark-standalone |  Minor | Documentation | Ajith S | Ajith S |
| [SPARK-26742](https://issues.apache.org/jira/browse/SPARK-26742) | Bump Kubernetes Client Version to 4.1.2 |  Major | Kubernetes, Spark Core | Steve Davids | Jiaxin Shan |
| [SPARK-25348](https://issues.apache.org/jira/browse/SPARK-25348) | Data source for binary files |  Major | SQL | Xiangrui Meng | Weichen Xu |
| [SPARK-27527](https://issues.apache.org/jira/browse/SPARK-27527) | Improve description of Timestamp and Date types |  Trivial | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-27473](https://issues.apache.org/jira/browse/SPARK-27473) | Support filter push down for status fields in binary file data source |  Major | SQL | Xiangrui Meng | Weichen Xu |
| [SPARK-23619](https://issues.apache.org/jira/browse/SPARK-23619) | Document the column names created by explode and posexplode functions |  Minor | Documentation | Joe Pallas | Jash Gala |
| [SPARK-27534](https://issues.apache.org/jira/browse/SPARK-27534) | Do not load \`content\` column in binary data source if it is not selected |  Major | SQL | Xiangrui Meng | Weichen Xu |
| [SPARK-27472](https://issues.apache.org/jira/browse/SPARK-27472) | Docuement binary file data source in Spark user guide |  Major | Documentation, SQL | Xiangrui Meng | Xiangrui Meng |
| [SPARK-27588](https://issues.apache.org/jira/browse/SPARK-27588) | Fail fast if binary file data source will load a file that is bigger than 2GB |  Major | SQL | Xiangrui Meng | Xiangrui Meng |
| [SPARK-27557](https://issues.apache.org/jira/browse/SPARK-27557) | Add copybutton to spark Python API docs for easier copying of code-blocks |  Minor | Documentation, PySpark | Sangram G | Sangram G |
| [SPARK-27024](https://issues.apache.org/jira/browse/SPARK-27024) | Executor interface for cluster managers to support GPU resources |  Major | Spark Core | Xingbo Jiang | Thomas Graves |
| [SPARK-27726](https://issues.apache.org/jira/browse/SPARK-27726) | Performance of InMemoryStore suffers under load |  Major | Spark Core | David C Navas | David C Navas |
| [SPARK-27800](https://issues.apache.org/jira/browse/SPARK-27800) | Example for xor function has a wrong answer |  Major | Documentation, SQL | Alex Liu | Alex Liu |
| [SPARK-27488](https://issues.apache.org/jira/browse/SPARK-27488) | Driver interface to support GPU resources |  Major | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-27725](https://issues.apache.org/jira/browse/SPARK-27725) | GPU Scheduling - add an example discovery Script |  Major | Examples | Thomas Graves | Thomas Graves |
| [SPARK-27835](https://issues.apache.org/jira/browse/SPARK-27835) | Resource Scheduling: change driver config from addresses to resourcesFile |  Major | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-27361](https://issues.apache.org/jira/browse/SPARK-27361) | YARN support for GPU-aware scheduling |  Major | Spark Core, YARN | Xiangrui Meng | Thomas Graves |
| [SPARK-27897](https://issues.apache.org/jira/browse/SPARK-27897) | GPU Scheduling - move example discovery Script to scripts directory |  Minor | Examples | Thomas Graves | Thomas Graves |
| [SPARK-27362](https://issues.apache.org/jira/browse/SPARK-27362) | Kubernetes support for GPU-aware scheduling |  Major | Kubernetes, Spark Core | Xiangrui Meng | Thomas Graves |
| [SPARK-27366](https://issues.apache.org/jira/browse/SPARK-27366) | Spark scheduler internal changes to support GPU scheduling |  Major | Spark Core | Xiangrui Meng | Xingbo Jiang |
| [SPARK-27364](https://issues.apache.org/jira/browse/SPARK-27364) | User-facing APIs for GPU-aware scheduling |  Major | Spark Core | Xiangrui Meng | Thomas Graves |
| [SPARK-27760](https://issues.apache.org/jira/browse/SPARK-27760) | Spark resources - user configs change .count to be .amount |  Major | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-28056](https://issues.apache.org/jira/browse/SPARK-28056) | Document SCALAR\_ITER Pandas UDF |  Major | Documentation, PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-27823](https://issues.apache.org/jira/browse/SPARK-27823) | Add an abstraction layer for accelerator resource handling to avoid manipulating raw confs |  Major | Spark Core | Xiangrui Meng | Xiangrui Meng |
| [SPARK-28234](https://issues.apache.org/jira/browse/SPARK-28234) | Spark Resources - add python support to get resources |  Major | PySpark, Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-27959](https://issues.apache.org/jira/browse/SPARK-27959) | Change YARN resource configs to use .amount |  Major | Spark Core, YARN | Thomas Graves | Thomas Graves |
| [SPARK-28464](https://issues.apache.org/jira/browse/SPARK-28464) | Document kafka minPartitions option in "Structured Streaming + Kafka Integration Guide" |  Minor | Documentation | Arun Pandian | Arun Pandian |
| [SPARK-25584](https://issues.apache.org/jira/browse/SPARK-25584) | Document libsvm data source in doc site |  Minor | Documentation, ML | Xiangrui Meng | zhengruifeng |
| [SPARK-28609](https://issues.apache.org/jira/browse/SPARK-28609) | Fix broken styles/links and make up-to-date |  Minor | Documentation | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28666](https://issues.apache.org/jira/browse/SPARK-28666) | Support the V2SessionCatalog in saveAsTable |  Blocker | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-28777](https://issues.apache.org/jira/browse/SPARK-28777) | Pyspark sql function "format\_string" has the wrong parameters in doc string |  Minor | PySpark | Darren Tirto | Darren Tirto |
| [SPARK-28426](https://issues.apache.org/jira/browse/SPARK-28426) | Metadata Handling in Thrift Server |  Major | SQL | Xiao Li | Yuming Wang |
| [SPARK-28667](https://issues.apache.org/jira/browse/SPARK-28667) | Support the V2SessionCatalog in insertInto |  Blocker | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-28871](https://issues.apache.org/jira/browse/SPARK-28871) | Some codes in 'Policy for handling multiple watermarks' does not show friendly |  Minor | Documentation | chaiyongqiang | chaiyongqiang |
| [SPARK-27360](https://issues.apache.org/jira/browse/SPARK-27360) | Standalone cluster mode support for GPU-aware scheduling |  Major | Spark Core | Xiangrui Meng | Xiangrui Meng |
| [SPARK-27611](https://issues.apache.org/jira/browse/SPARK-27611) | Redundant javax.activation dependencies in the Maven build |  Minor | Build | Cheng Lian | Cheng Lian |
| [SPARK-28668](https://issues.apache.org/jira/browse/SPARK-28668) | Support the V2SessionCatalog with AlterTable commands |  Blocker | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-27489](https://issues.apache.org/jira/browse/SPARK-27489) | UI updates to show executor resource information |  Major | Web UI | Thomas Graves | Thomas Graves |
| [SPARK-28977](https://issues.apache.org/jira/browse/SPARK-28977) | JDBC Dataframe Reader Doc Doesn't Match JDBC Data Source Page |  Minor | Documentation | Christopher Hoshino-Fish | Sean R. Owen |
| [SPARK-29028](https://issues.apache.org/jira/browse/SPARK-29028) | Add links to IBM Cloud Object Storage connector in cloud-integration.md |  Minor | Documentation | Dilip Biswal | Dilip Biswal |
| [SPARK-27492](https://issues.apache.org/jira/browse/SPARK-27492) | GPU scheduling - High level user documentation |  Major | Documentation | Thomas Graves | Thomas Graves |
| [SPARK-28372](https://issues.apache.org/jira/browse/SPARK-28372) | Document Spark WEB UI |  Major | Documentation, Web UI | Xiao Li |  |
| [SPARK-29052](https://issues.apache.org/jira/browse/SPARK-29052) | Create a Migration Guide tap in Spark documentation |  Major | Documentation, ML, PySpark, Spark Core, SparkR, SQL, Structured Streaming | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-29113](https://issues.apache.org/jira/browse/SPARK-29113) | Some annotation errors in ApplicationCache.scala |  Minor | Spark Core | feiwang |  |
| [SPARK-29226](https://issues.apache.org/jira/browse/SPARK-29226) | Upgrade jackson-databind to 2.9.10 and fix vulnerabilities. |  Major | Build | jiaan.geng | jiaan.geng |
| [SPARK-29275](https://issues.apache.org/jira/browse/SPARK-29275) | Update the SQL migration guide regarding special date/timestamp values |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29252](https://issues.apache.org/jira/browse/SPARK-29252) | Upgrade zookeeper to 3.4.14 and fix vulnerabilities. |  Minor | Build | jiaan.geng | jiaan.geng |
| [SPARK-29367](https://issues.apache.org/jira/browse/SPARK-29367) | pandas udf not working with latest pyarrow release (0.15.0) |  Major | PySpark | Julien Peloton | Bryan Cutler |
| [SPARK-29417](https://issues.apache.org/jira/browse/SPARK-29417) | Resource Scheduling - add TaskContext.resource java api |  Major | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-29542](https://issues.apache.org/jira/browse/SPARK-29542) | [SQL][DOC] The descriptions of \`spark.sql.files.\*\` are confused. |  Minor | Documentation | feiwang | feiwang |
| [SPARK-29126](https://issues.apache.org/jira/browse/SPARK-29126) | Add usage guide for cogroup Pandas UDF |  Major | Documentation | Bryan Cutler | Chris Martin |
| [SPARK-29151](https://issues.apache.org/jira/browse/SPARK-29151) | Support fraction resources for task resource scheduling |  Major | Scheduler, Spark Core | Thomas Graves | Alessandro Bellina |
| [SPARK-29763](https://issues.apache.org/jira/browse/SPARK-29763) | Stage UI Page not showing all accumulators in Task Table |  Major | Web UI | Thomas Graves | Thomas Graves |
| [SPARK-29790](https://issues.apache.org/jira/browse/SPARK-29790) | Add notes about port being required for Kubernetes API URL when set as master |  Minor | Kubernetes, Spark Core | Emil Sandstø | Emil Sandstø |
| [SPARK-29415](https://issues.apache.org/jira/browse/SPARK-29415) | Stage Level Sched: Add base ResourceProfile and Request classes |  Major | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-30236](https://issues.apache.org/jira/browse/SPARK-30236) | Clarify date and time patterns supported by date\_format |  Major | Documentation | John Ayad | John Ayad |
| [SPARK-30329](https://issues.apache.org/jira/browse/SPARK-30329) | add iterator/foreach methods for Vectors |  Major | ML | zhengruifeng | zhengruifeng |
| [SPARK-30430](https://issues.apache.org/jira/browse/SPARK-30430) | Add a note that UserDefinedFunction's constructor is private |  Trivial | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-30464](https://issues.apache.org/jira/browse/SPARK-30464) | Explicitly note that we don't add "pandas compatible" aliases |  Minor | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-30478](https://issues.apache.org/jira/browse/SPARK-30478) | Fix memory package doc |  Minor | Documentation, Spark Core | SongXun | SongXun |
| [SPARK-30505](https://issues.apache.org/jira/browse/SPARK-30505) | Deprecate Avro option \`ignoreExtension\` in a doc |  Minor | Documentation | Maxim Gekk | Maxim Gekk |
| [SPARK-30515](https://issues.apache.org/jira/browse/SPARK-30515) | Refactor SimplifyBinaryComparison to reduce the time complexity |  Minor | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-29306](https://issues.apache.org/jira/browse/SPARK-29306) | Executors need to track what ResourceProfile they are created with |  Major | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-30016](https://issues.apache.org/jira/browse/SPARK-30016) | Support ownership for DS v2 tables/namespaces |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-30698](https://issues.apache.org/jira/browse/SPARK-30698) | Bumps checkstyle from 8.25 to 8.29. |  Major | Build | jiaan.geng | jiaan.geng |
| [SPARK-30506](https://issues.apache.org/jira/browse/SPARK-30506) | Document general file source options |  Major | Documentation, SQL | Gengliang Wang | wuyi |
| [SPARK-23710](https://issues.apache.org/jira/browse/SPARK-23710) | Upgrade the built-in Hive to 2.3.5 for hadoop-3.2 |  Critical | SQL | Yuming Wang | Yuming Wang |
| [SPARK-27545](https://issues.apache.org/jira/browse/SPARK-27545) | Update the Documentation for CACHE TABLE and UNCACHE TABLE |  Major | Spark Core | hantiantian | Rakesh Raushan |
| [SPARK-30722](https://issues.apache.org/jira/browse/SPARK-30722) | Document type hints in pandas UDF |  Major | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-30834](https://issues.apache.org/jira/browse/SPARK-30834) | Add note for recommended versions of Pandas and PyArrow for 2.4.x |  Major | Documentation, PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-30827](https://issues.apache.org/jira/browse/SPARK-30827) | Direct relationship is not documented in configurations in "spark.history.\*" namespace |  Major | Spark Core | Jungtaek Lim |  |
| [SPARK-30878](https://issues.apache.org/jira/browse/SPARK-30878) | improve the CREATE TABLE document |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-30907](https://issues.apache.org/jira/browse/SPARK-30907) | Revise the doc of spark.ui.retainedTasks |  Major | Documentation | Gengliang Wang | Gengliang Wang |
| [SPARK-31110](https://issues.apache.org/jira/browse/SPARK-31110) | refine sql doc for SELECT |  Major | Documentation, SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31151](https://issues.apache.org/jira/browse/SPARK-31151) | Reorganize the migration guide of SQL |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-31232](https://issues.apache.org/jira/browse/SPARK-31232) | Specify formats of \`spark.sql.session.timeZone\` |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31133](https://issues.apache.org/jira/browse/SPARK-31133) | fix sql ref doc for DML |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31286](https://issues.apache.org/jira/browse/SPARK-31286) | Specify formats of time zone ID for JSON/CSV option and from/to\_utc\_timestamp |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31351](https://issues.apache.org/jira/browse/SPARK-31351) | Migration Guide Auditing for Spark 3.0 Release |  Major | Documentation | Xiao Li | Xiao Li |
| [SPARK-31408](https://issues.apache.org/jira/browse/SPARK-31408) | Build Spark’s own datetime pattern definition |  Major | SQL | Yuanjian Li |  |
| [SPARK-31306](https://issues.apache.org/jira/browse/SPARK-31306) | rand() function documentation suggests an inclusive upper bound of 1.0 |  Major | PySpark, R, Spark Core | Ben | Ben |
| [SPARK-31434](https://issues.apache.org/jira/browse/SPARK-31434) | Drop builtin function pages from SQL references |  Major | Documentation, SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-31568](https://issues.apache.org/jira/browse/SPARK-31568) | R: gapply documentation could be clearer about what the func argument is |  Minor | R | Michael Chirico | Michael Chirico |
| [SPARK-31581](https://issues.apache.org/jira/browse/SPARK-31581) | paste0 is always better than paste(sep="") |  Minor | R | Michael Chirico | Michael Chirico |
| [SPARK-31578](https://issues.apache.org/jira/browse/SPARK-31578) | Internal checkSchemaInArrow is inefficient |  Minor | R | Michael Chirico | Michael Chirico |
| [SPARK-31571](https://issues.apache.org/jira/browse/SPARK-31571) | don't use stop(paste to build R errors |  Minor | R | Michael Chirico | Michael Chirico |
| [SPARK-31085](https://issues.apache.org/jira/browse/SPARK-31085) | Amend Spark's Semantic Versioning Policy |  Blocker | PySpark, Spark Core, SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-31738](https://issues.apache.org/jira/browse/SPARK-31738) | Describe 'L' and 'M' month pattern letters |  Major | SQL | Maxim Gekk | Apache Spark |
| [SPARK-31790](https://issues.apache.org/jira/browse/SPARK-31790) | cast scenarios may generate different results between  Hive and Spark |  Minor | Documentation | philipse | philipse |
| [SPARK-24615](https://issues.apache.org/jira/browse/SPARK-24615) | SPIP: Accelerator-aware task scheduling for Spark |  Major | Spark Core | Saisai Shao | Thomas Graves |
| [SPARK-25551](https://issues.apache.org/jira/browse/SPARK-25551) | Remove unused InSubquery expression |  Trivial | SQL | Marco Gaido | Marco Gaido |
| [SPARK-25598](https://issues.apache.org/jira/browse/SPARK-25598) | Remove flume connector in Spark 3 |  Major | DStreams | Marcelo Masiero Vanzin | Sean R. Owen |
| [SPARK-25705](https://issues.apache.org/jira/browse/SPARK-25705) | Remove Kafka 0.8 support in Spark 3.0.0 |  Major | Build, Structured Streaming | Sean R. Owen | Sean R. Owen |
| [SPARK-25737](https://issues.apache.org/jira/browse/SPARK-25737) | Remove JavaSparkContextVarargsWorkaround and standardize union() methods |  Minor | Spark Core | Sean R. Owen | Sean R. Owen |
| [SPARK-25821](https://issues.apache.org/jira/browse/SPARK-25821) | Remove SQLContext methods deprecated as of Spark 1.4 |  Major | SQL | Sean R. Owen | Sean R. Owen |
| [SPARK-25758](https://issues.apache.org/jira/browse/SPARK-25758) | Deprecate BisectingKMeans compute cost |  Minor | ML | Marco Gaido | Marco Gaido |
| [SPARK-25908](https://issues.apache.org/jira/browse/SPARK-25908) | Remove old deprecated items in Spark 3 |  Major | Spark Core, SQL | Sean R. Owen | Sean R. Owen |
| [SPARK-26127](https://issues.apache.org/jira/browse/SPARK-26127) | Remove deprecated setters from tree regression and classification models |  Trivial | ML | Marco Gaido | Marco Gaido |
| [SPARK-25867](https://issues.apache.org/jira/browse/SPARK-25867) | Remove KMeans computeCost |  Major | ML | Marco Gaido | Marco Gaido |
| [SPARK-26539](https://issues.apache.org/jira/browse/SPARK-26539) | Remove spark.memory.useLegacyMode memory settings + StaticMemoryManager |  Major | Spark Core | Sean R. Owen | Sean R. Owen |
| [SPARK-26607](https://issues.apache.org/jira/browse/SPARK-26607) | Remove Spark 2.2.x testing from HiveExternalCatalogVersionsSuite |  Minor | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-26822](https://issues.apache.org/jira/browse/SPARK-26822) | Upgrade the deprecated module 'optparse' |  Minor | Tests | Neo Chien | Neo Chien |
| [SPARK-26857](https://issues.apache.org/jira/browse/SPARK-26857) | Return UnsafeArrayData for date/timestamp type in ColumnarArray.copy() |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-26897](https://issues.apache.org/jira/browse/SPARK-26897) | Update Spark 2.3.x testing from HiveExternalCatalogVersionsSuite |  Minor | SQL, Tests | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-26788](https://issues.apache.org/jira/browse/SPARK-26788) | Remove SchedulerExtensionService |  Minor | Spark Core, YARN | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-27029](https://issues.apache.org/jira/browse/SPARK-27029) | Update Thrift to 0.12.0 |  Minor | Spark Core, SQL | Sean R. Owen | Sean R. Owen |
| [SPARK-27040](https://issues.apache.org/jira/browse/SPARK-27040) | Avoid using unnecessary JoinRow in FileFormat |  Minor | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-25838](https://issues.apache.org/jira/browse/SPARK-25838) | Remove formatVersion from Saveable |  Trivial | MLlib | Marco Gaido | Marco Gaido |
| [SPARK-27090](https://issues.apache.org/jira/browse/SPARK-27090) | Removing old LEGACY\_DRIVER\_IDENTIFIER ("\<driver\>") |  Minor | Spark Core | Attila Zsolt Piros | Shivu Sondur |
| [SPARK-27138](https://issues.apache.org/jira/browse/SPARK-27138) | Remove AdminUtils calls |  Minor | Tests | Dylan Guedes | Dylan Guedes |
| [SPARK-27162](https://issues.apache.org/jira/browse/SPARK-27162) | Add new method getOriginalMap in CaseInsensitiveStringMap |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-27201](https://issues.apache.org/jira/browse/SPARK-27201) | Show full job description on click |  Major | Web UI | Gengliang Wang | Gengliang Wang |
| [SPARK-27382](https://issues.apache.org/jira/browse/SPARK-27382) | Update Spark 2.4.x testing in HiveExternalCatalogVersionsSuite |  Minor | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27796](https://issues.apache.org/jira/browse/SPARK-27796) | Remove obsolete spark-mesos Docker image |  Minor | Mesos | Sean R. Owen | Sean R. Owen |
| [SPARK-27698](https://issues.apache.org/jira/browse/SPARK-27698) | Add new method for getting pushed down filters in Parquet file reader |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-27844](https://issues.apache.org/jira/browse/SPARK-27844) | Avoid hard-coded config: spark.rdd.parallelListingThreshold in SQL module |  Trivial | SQL | Dongjoon Hyun | Yuming Wang |
| [SPARK-25382](https://issues.apache.org/jira/browse/SPARK-25382) | Remove ImageSchema.readImages in 3.0 |  Major | ML | Xiangrui Meng | Weichen Xu |
| [SPARK-28728](https://issues.apache.org/jira/browse/SPARK-28728) | Bump Jackson Databind to 2.9.9.3 |  Major | Spark Core | Fokko Driesprong | Fokko Driesprong |
| [SPARK-28855](https://issues.apache.org/jira/browse/SPARK-28855) | Remove outdated Experimental, Evolving annotations |  Minor | ML, Spark Core, SQL, Structured Streaming | Sean R. Owen | Sean R. Owen |
| [SPARK-28951](https://issues.apache.org/jira/browse/SPARK-28951) | Add release announce template |  Trivial | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-26046](https://issues.apache.org/jira/browse/SPARK-26046) | Add a way for StreamingQueryManager to remove all listeners |  Major | Structured Streaming | Mukul Murthy |  |
| [SPARK-28980](https://issues.apache.org/jira/browse/SPARK-28980) | Remove most remaining deprecated items since \<= 2.2.0 for 3.0 |  Major | MLlib, PySpark, Spark Core, SQL, Structured Streaming, YARN | Sean R. Owen | Sean R. Owen |
| [SPARK-29066](https://issues.apache.org/jira/browse/SPARK-29066) | Remove old Jenkins jobs for EOL versions or obsolete combinations |  Major | Project Infra | Dongjoon Hyun | Shane Knapp |
| [SPARK-29125](https://issues.apache.org/jira/browse/SPARK-29125) | Add Hadoop 2.7 combination to GitHub Action |  Minor | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29204](https://issues.apache.org/jira/browse/SPARK-29204) | Remove \`Spark Release\` Jenkins tab and its four jobs |  Major | Project Infra | Dongjoon Hyun | Shane Knapp |
| [SPARK-29255](https://issues.apache.org/jira/browse/SPARK-29255) | Rename package pgSQL to postgreSQL |  Minor | SQL, Tests | Gengliang Wang | Gengliang Wang |
| [SPARK-29305](https://issues.apache.org/jira/browse/SPARK-29305) | Update LICENSE and NOTICE for hadoop 3.2 |  Minor | Build | angerszhu | angerszhu |
| [SPARK-29445](https://issues.apache.org/jira/browse/SPARK-29445) | Bump netty-all from 4.1.39.Final to 4.1.42.Final |  Major | Spark Core | Fokko Driesprong | Fokko Driesprong |
| [SPARK-29597](https://issues.apache.org/jira/browse/SPARK-29597) | Deprecate old Java 8 versions prior to 8u92 |  Minor | Documentation | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29509](https://issues.apache.org/jira/browse/SPARK-29509) | Deduplicate code blocks in Kafka data source |  Minor | SQL, Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-29935](https://issues.apache.org/jira/browse/SPARK-29935) | Remove \`Spark QA Compile\` Jenkins Dashboard (and jobs) |  Minor | Project Infra | Dongjoon Hyun | Shane Knapp |
| [SPARK-30159](https://issues.apache.org/jira/browse/SPARK-30159) | Fix the method calls of QueryTest.checkAnswer |  Major | SQL, Tests | Gengliang Wang | Gengliang Wang |
| [SPARK-30423](https://issues.apache.org/jira/browse/SPARK-30423) | Deprecate UserDefinedAggregateFunction |  Major | SQL | Erik Erlandson | Erik Erlandson |
| [SPARK-29462](https://issues.apache.org/jira/browse/SPARK-29462) | The data type of "array()" should be array\<null\> |  Minor | SQL | Gengliang Wang | Hyukjin Kwon |
| [SPARK-31862](https://issues.apache.org/jira/browse/SPARK-31862) | Remove exception wrapping in AQE |  Minor | SQL | Wei Xue | Wei Xue |
| [SPARK-31864](https://issues.apache.org/jira/browse/SPARK-31864) | Adjust AQE skew join trigger condition |  Minor | SQL | Wei Xue | Wei Xue |


