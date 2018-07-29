
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

## Release 2.0.0 - 2016-07-27



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12016](https://issues.apache.org/jira/browse/SPARK-12016) | word2vec load model can't use findSynonyms to get words |  Major | PySpark | yuangang.liu | Liang-Chi Hsieh |
| [SPARK-13195](https://issues.apache.org/jira/browse/SPARK-13195) | PairDStreamFunctions.mapWithState fails in case timeout is set without updating State[S] |  Major | DStreams | Yuval Itzchakov | Shixiong Zhu |
| [SPARK-12555](https://issues.apache.org/jira/browse/SPARK-12555) | Datasets: data is corrupted when input data is reordered |  Major | SQL | Tim Preece | Luciano Resende |
| [SPARK-14897](https://issues.apache.org/jira/browse/SPARK-14897) | Upgrade Jetty to latest version of 8/9 |  Major | . | Adam Kramer | Bo Meng |
| [SPARK-15652](https://issues.apache.org/jira/browse/SPARK-15652) | Missing org.apache.spark.launcher.SparkAppHandle.Listener notification if SparkSubmit JVM shutsdown |  Critical | . | Subroto Sanyal | Subroto Sanyal |
| [SPARK-15851](https://issues.apache.org/jira/browse/SPARK-15851) | Spark 2.0 does not compile in Windows 7 |  Major | Build | Alexander Ulanov | Reynold Xin |
| [SPARK-13709](https://issues.apache.org/jira/browse/SPARK-13709) | Spark unable to decode Avro when partitioned |  Major | SQL | Chris Miller | Cheng Lian |
| [SPARK-18709](https://issues.apache.org/jira/browse/SPARK-18709) | Automatic null conversion bug (instead of throwing error) when creating a Spark Datarame with incompatible types for fields. |  Major | SQL | Amogh Param | Andrew Or |
| [SPARK-7661](https://issues.apache.org/jira/browse/SPARK-7661) | Support for dynamic allocation of resources in Kinesis Spark Streaming |  Major | DStreams | Murtaza Kanchwala |  |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-11206](https://issues.apache.org/jira/browse/SPARK-11206) | Support SQL UI on the history server |  Major | SQL, Web UI | Carson Wang | Carson Wang |
| [SPARK-6990](https://issues.apache.org/jira/browse/SPARK-6990) | Add Java linting script |  Minor | Project Infra | Josh Rosen | Dmitry Erastov |
| [SPARK-11774](https://issues.apache.org/jira/browse/SPARK-11774) | Implement "struct", "encode","decode" in SparkR |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-11713](https://issues.apache.org/jira/browse/SPARK-11713) | Initial RDD for updateStateByKey for pyspark |  Major | PySpark | David Watson | Bryan Cutler |
| [SPARK-9516](https://issues.apache.org/jira/browse/SPARK-9516) | Improve Thread Dump page |  Minor | Web UI | Nan Zhu | Nan Zhu |
| [SPARK-12321](https://issues.apache.org/jira/browse/SPARK-12321) | JSON format for logical/physical execution plans |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10359](https://issues.apache.org/jira/browse/SPARK-10359) | Enumerate Spark's dependencies in a file and diff against it for new pull requests |  Major | Build, Project Infra | Patrick Wendell | Josh Rosen |
| [SPARK-12541](https://issues.apache.org/jira/browse/SPARK-12541) | Support rollup/cube in SQL query |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12542](https://issues.apache.org/jira/browse/SPARK-12542) | Support intersect/except in Hive SQL |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-10809](https://issues.apache.org/jira/browse/SPARK-10809) | Single-document topicDistributions method for LocalLDAModel |  Minor | MLlib | Joseph K. Bradley | yuhao yang |
| [SPARK-9843](https://issues.apache.org/jira/browse/SPARK-9843) | Catalyst: Allow adding custom optimizers |  Major | SQL | Robert Kruszewski | Robert Kruszewski |
| [SPARK-12785](https://issues.apache.org/jira/browse/SPARK-12785) | Implement columnar in memory representation |  Major | SQL | Nong Li | Nong Li |
| [SPARK-12538](https://issues.apache.org/jira/browse/SPARK-12538) | bucketed table support |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-12394](https://issues.apache.org/jira/browse/SPARK-12394) | Support writing out pre-hash-partitioned data and exploit that in join optimizations to avoid shuffle (i.e. bucketing in Hive) |  Major | SQL | Reynold Xin | Nong Li |
| [SPARK-12796](https://issues.apache.org/jira/browse/SPARK-12796) | initial prototype: projection/filter/range |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-2750](https://issues.apache.org/jira/browse/SPARK-2750) | Add Https support for Web UI |  Major | Web UI | Tao Wang | Fei Wang |
| [SPARK-12337](https://issues.apache.org/jira/browse/SPARK-12337) | Implement dropDuplicates() method of DataFrame in SparkR |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-6519](https://issues.apache.org/jira/browse/SPARK-6519) | Add spark.ml API for bisecting k-means |  Major | ML | Yu Ishikawa | Yu Ishikawa |
| [SPARK-12797](https://issues.apache.org/jira/browse/SPARK-12797) | Aggregation without grouping keys |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12204](https://issues.apache.org/jira/browse/SPARK-12204) | Implement drop method for DataFrame in SparkR |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-12818](https://issues.apache.org/jira/browse/SPARK-12818) | Implement Bloom filter and count-min sketch in DataFrames |  Major | SQL | Reynold Xin | Cheng Lian |
| [SPARK-9835](https://issues.apache.org/jira/browse/SPARK-9835) | Iteratively reweighted least squares solver for GLMs |  Critical | ML, MLlib | Xiangrui Meng | Yanbo Liang |
| [SPARK-12401](https://issues.apache.org/jira/browse/SPARK-12401) | Add support for enums in postgres |  Minor | SQL | Jaka Jancar | Takeshi Yamamuro |
| [SPARK-12798](https://issues.apache.org/jira/browse/SPARK-12798) | Broadcast hash join |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-3611](https://issues.apache.org/jira/browse/SPARK-3611) | Show number of cores for each executor in application web UI |  Minor | Web UI | Matei Zaharia | Alex Bozarth |
| [SPARK-12828](https://issues.apache.org/jira/browse/SPARK-12828) | support natural join |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-13074](https://issues.apache.org/jira/browse/SPARK-13074) | Add getPersistentRDDs() API to JavaSparkContext |  Minor | Spark Core | Junyang Shen | Junyang Shen |
| [SPARK-11515](https://issues.apache.org/jira/browse/SPARK-11515) | QuantileDiscretizer should take random seed |  Minor | ML | Joseph K. Bradley | Yu Ishikawa |
| [SPARK-12544](https://issues.apache.org/jira/browse/SPARK-12544) | Support window functions in SQLContext |  Major | SQL | Davies Liu | Herman van Hovell |
| [SPARK-13075](https://issues.apache.org/jira/browse/SPARK-13075) | Native database/table system catalog |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-13373](https://issues.apache.org/jira/browse/SPARK-13373) | Generate code for sort merge join |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13011](https://issues.apache.org/jira/browse/SPARK-13011) | K-means wrapper in SparkR |  Major | ML, SparkR | Xiangrui Meng | Xusen Yin |
| [SPARK-13479](https://issues.apache.org/jira/browse/SPARK-13479) | Python API for DataFrame approxQuantile |  Minor | PySpark, SQL | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-13292](https://issues.apache.org/jira/browse/SPARK-13292) | QuantileDiscretizer should take random seed in PySpark |  Minor | ML, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-13028](https://issues.apache.org/jira/browse/SPARK-13028) | Add MaxAbsScaler to ML.feature as a transformer |  Minor | ML | yuhao yang | yuhao yang |
| [SPARK-13504](https://issues.apache.org/jira/browse/SPARK-13504) | Add approxQuantile for SparkR |  Major | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-13465](https://issues.apache.org/jira/browse/SPARK-13465) | Add a task failure listener to TaskContext |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-13505](https://issues.apache.org/jira/browse/SPARK-13505) | Python API for MaxAbsScaler |  Major | ML, PySpark | Xiangrui Meng | Li Ping Zhang |
| [SPARK-12811](https://issues.apache.org/jira/browse/SPARK-12811) | Estimator interface for generalized linear models (GLMs) |  Critical | ML | Xiangrui Meng | Yanbo Liang |
| [SPARK-12877](https://issues.apache.org/jira/browse/SPARK-12877) | TrainValidationSplit is missing in pyspark.ml.tuning |  Major | PySpark | Wojciech Jurczyk | Jeremy |
| [SPARK-13543](https://issues.apache.org/jira/browse/SPARK-13543) | Support for specifying compression codec for Parquet/ORC via option() |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-13523](https://issues.apache.org/jira/browse/SPARK-13523) | Reuse the exchanges in a query |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-11861](https://issues.apache.org/jira/browse/SPARK-11861) | Expose feature importances API for decision trees |  Minor | ML | Seth Hendrickson | Seth Hendrickson |
| [SPARK-13787](https://issues.apache.org/jira/browse/SPARK-13787) | Feature importances for decision trees in Python |  Minor | ML, PySpark | Joseph K. Bradley | Seth Hendrickson |
| [SPARK-13917](https://issues.apache.org/jira/browse/SPARK-13917) | Generate code for broadcast left semi join |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-9837](https://issues.apache.org/jira/browse/SPARK-9837) | Provide R-like summary statistics for GLMs via iteratively reweighted least squares |  Critical | ML, MLlib | Xiangrui Meng | Yanbo Liang |
| [SPARK-13927](https://issues.apache.org/jira/browse/SPARK-13927) | Add row/column iterator to local matrices |  Minor | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-13629](https://issues.apache.org/jira/browse/SPARK-13629) | Add binary toggle Param to CountVectorizer |  Minor | ML | Joseph K. Bradley | yuhao yang |
| [SPARK-13764](https://issues.apache.org/jira/browse/SPARK-13764) | Parse modes in JSON data source |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-13449](https://issues.apache.org/jira/browse/SPARK-13449) | Naive Bayes wrapper in SparkR |  Major | ML, SparkR | Xiangrui Meng | Xusen Yin |
| [SPARK-13010](https://issues.apache.org/jira/browse/SPARK-13010) | Survival analysis in SparkR |  Major | ML, SparkR | Xiangrui Meng | Yanbo Liang |
| [SPARK-14061](https://issues.apache.org/jira/browse/SPARK-14061) | implement CreateMap |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-14135](https://issues.apache.org/jira/browse/SPARK-14135) | Add off-heap storage memory bookkeeping support to MemoryManager |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-11730](https://issues.apache.org/jira/browse/SPARK-11730) | Feature Importance for GBT |  Major | ML, MLlib | Brian Webb | Seth Hendrickson |
| [SPARK-10570](https://issues.apache.org/jira/browse/SPARK-10570) | Add Spark version endpoint to standalone JSON API |  Minor | Spark Core, Web UI | Matt Cheah | Jakob Odersky |
| [SPARK-14264](https://issues.apache.org/jira/browse/SPARK-14264) | Add feature importances for GBTs in Pyspark |  Minor | ML, PySpark | Seth Hendrickson | Seth Hendrickson |
| [SPARK-13992](https://issues.apache.org/jira/browse/SPARK-13992) | Add support for off-heap caching |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-7179](https://issues.apache.org/jira/browse/SPARK-7179) | Add pattern after "show tables" to filter desire tablename |  Minor | SQL | baishuo | Herman van Hovell |
| [SPARK-11611](https://issues.apache.org/jira/browse/SPARK-11611) | Python API for bisecting k-means |  Major | MLlib, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-14334](https://issues.apache.org/jira/browse/SPARK-14334) | Add toLocalIterator for Dataset |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-14353](https://issues.apache.org/jira/browse/SPARK-14353) | Dateset Time Windowing API for Python, R, and SQL |  Major | PySpark, SparkR, SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-12569](https://issues.apache.org/jira/browse/SPARK-12569) | DecisionTreeRegressor: provide variance of prediction: Python API |  Minor | ML, PySpark | Joseph K. Bradley | Miao Wang |
| [SPARK-14392](https://issues.apache.org/jira/browse/SPARK-14392) | CountVectorizer Estimator should include binary toggle Param |  Minor | ML | Joseph K. Bradley | Miao Wang |
| [SPARK-14500](https://issues.apache.org/jira/browse/SPARK-14500) | Accept Dataset[\_] instead of DataFrame in MLlib APIs |  Major | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-12566](https://issues.apache.org/jira/browse/SPARK-12566) | GLM model family, link function support in SparkR:::glm |  Critical | ML, SparkR | Joseph K. Bradley | yuhao yang |
| [SPARK-13597](https://issues.apache.org/jira/browse/SPARK-13597) | Python API for GeneralizedLinearRegression |  Critical | ML, PySpark | Xiangrui Meng | Kai Jiang |
| [SPARK-14461](https://issues.apache.org/jira/browse/SPARK-14461) | GLM training summaries should provide solver |  Minor | ML | Joseph K. Bradley | Yanbo Liang |
| [SPARK-13967](https://issues.apache.org/jira/browse/SPARK-13967) | Add binary toggle Param to PySpark CountVectorizer |  Minor | ML | Nick Pentreath | Bryan Cutler |
| [SPARK-14545](https://issues.apache.org/jira/browse/SPARK-14545) | Improve \`LikeSimplification\` by adding \`a%b\` rule |  Major | Optimizer, SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-13925](https://issues.apache.org/jira/browse/SPARK-13925) | Expose R-like summary statistics in SparkR::glm for more family and link functions |  Critical | ML, SparkR | Xiangrui Meng | Yanbo Liang |
| [SPARK-7861](https://issues.apache.org/jira/browse/SPARK-7861) | Python wrapper for OneVsRest |  Minor | ML, PySpark | Ram Sriharsha | Xusen Yin |
| [SPARK-14564](https://issues.apache.org/jira/browse/SPARK-14564) | Python Word2Vec missing setWindowSize method |  Minor | ML, PySpark | Brad Willard | Jason C Lee |
| [SPARK-14042](https://issues.apache.org/jira/browse/SPARK-14042) | Add support for custom coalescers |  Major | Spark Core | Nezih Yigitbasi | Nezih Yigitbasi |
| [SPARK-8171](https://issues.apache.org/jira/browse/SPARK-8171) | Support Javascript-based infinite scrolling in Spark log viewers |  Major | Web UI | Josh Rosen | Alex Bozarth |
| [SPARK-12543](https://issues.apache.org/jira/browse/SPARK-12543) | Support subquery in select/where/having |  Major | SQL | Davies Liu | Herman van Hovell |
| [SPARK-14776](https://issues.apache.org/jira/browse/SPARK-14776) | Merge HiveSqlAstBuilder and SparkSqlAstBuilder |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14433](https://issues.apache.org/jira/browse/SPARK-14433) | PySpark ml GaussianMixture |  Major | ML, PySpark | Joseph K. Bradley | Miao Wang |
| [SPARK-13734](https://issues.apache.org/jira/browse/SPARK-13734) | SparkR histogram |  Minor | SparkR | Oscar D. Lara Yejas | Oscar D. Lara Yejas |
| [SPARK-11012](https://issues.apache.org/jira/browse/SPARK-11012) | Canonicalize view definitions |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-7264](https://issues.apache.org/jira/browse/SPARK-7264) | SparkR API for parallel functions |  Major | SparkR | Shivaram Venkataraman | Timothy Hunter |
| [SPARK-14412](https://issues.apache.org/jira/browse/SPARK-14412) | spark.ml ALS prefered storage level Params |  Minor | ML | Joseph K. Bradley | Nick Pentreath |
| [SPARK-15030](https://issues.apache.org/jira/browse/SPARK-15030) | Support formula in spark.kmeans in SparkR |  Major | ML, SparkR | Xiangrui Meng | Yanbo Liang |
| [SPARK-14781](https://issues.apache.org/jira/browse/SPARK-14781) | Support subquery in nested predicates |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-14785](https://issues.apache.org/jira/browse/SPARK-14785) | Support correlated scalar subquery |  Major | . | Davies Liu | Herman van Hovell |
| [SPARK-15021](https://issues.apache.org/jira/browse/SPARK-15021) | cannot run aggregate function on explode result |  Major | SQL | Reynold Xin | Wenchen Fan |
| [SPARK-15110](https://issues.apache.org/jira/browse/SPARK-15110) | SparkR - Implement repartitionByColumn on DataFrame |  Major | SparkR | Narine Kokhlikyan | Narine Kokhlikyan |
| [SPARK-11395](https://issues.apache.org/jira/browse/SPARK-11395) | Support over and window specification in SparkR |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-14476](https://issues.apache.org/jira/browse/SPARK-14476) | Show table name or path in string of DataSourceScan |  Critical | SQL | Davies Liu | Xiang Zhong |
| [SPARK-15171](https://issues.apache.org/jira/browse/SPARK-15171) | Deprecate registerTempTable and add dataset.createTempView |  Critical | . | Sean Zhong | Xiang Zhong |
| [SPARK-10605](https://issues.apache.org/jira/browse/SPARK-10605) | collect\_list() and collect\_set() should accept struct types as argument |  Major | SQL | Mike Fang | Herman van Hovell |
| [SPARK-14541](https://issues.apache.org/jira/browse/SPARK-14541) | SQL function: IFNULL, NULLIF, NVL and NVL2 |  Major | SQL | Davies Liu | Reynold Xin |
| [SPARK-15181](https://issues.apache.org/jira/browse/SPARK-15181) | Python API for Generalized Linear Regression Summary |  Major | ML, PySpark | Seth Hendrickson | Seth Hendrickson |
| [SPARK-14900](https://issues.apache.org/jira/browse/SPARK-14900) | spark.ml classification metrics should include accuracy |  Minor | ML | Joseph K. Bradley | Miao Wang |
| [SPARK-13148](https://issues.apache.org/jira/browse/SPARK-13148) | document zero-keytab Oozie application launch; add diagnostics |  Major | YARN | Steve Loughran | Steve Loughran |
| [SPARK-13944](https://issues.apache.org/jira/browse/SPARK-13944) | Separate out local linear algebra as a standalone module without Spark dependency |  Blocker | Build, ML | Xiangrui Meng | DB Tsai |
| [SPARK-15908](https://issues.apache.org/jira/browse/SPARK-15908) | Add varargs-type dropDuplicates() function in SparkR |  Major | SparkR | Sun Rui | Dongjoon Hyun |
| [SPARK-16031](https://issues.apache.org/jira/browse/SPARK-16031) | Add debug-only socket source in Structured Streaming |  Major | Structured Streaming | Matei Zaharia | Matei Zaharia |
| [SPARK-16074](https://issues.apache.org/jira/browse/SPARK-16074) | Expose VectorUDT/MatrixUDT in a public API |  Critical | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-16118](https://issues.apache.org/jira/browse/SPARK-16118) | getDropLast is missing in OneHotEncoder |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-16503](https://issues.apache.org/jira/browse/SPARK-16503) | SparkSession should provide Spark version |  Major | Spark Core | Joseph K. Bradley | Liwei Lin(Inactive) |
| [SPARK-12420](https://issues.apache.org/jira/browse/SPARK-12420) | Have a built-in CSV data source implementation |  Major | SQL | Reynold Xin |  |
| [SPARK-9041](https://issues.apache.org/jira/browse/SPARK-9041) | Support reading of delimited text files as DataFrames |  Major | SQL | Vishal Bagga |  |
| [SPARK-10320](https://issues.apache.org/jira/browse/SPARK-10320) | Kafka Support new topic subscriptions without requiring restart of the streaming context |  Major | DStreams | Sudarshan Kadambi | Cody Koeninger |
| [SPARK-12957](https://issues.apache.org/jira/browse/SPARK-12957) | Derive and propagate data constrains in logical plan |  Major | SQL | Yin Huai | Sameer Agarwal |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-11717](https://issues.apache.org/jira/browse/SPARK-11717) | Ignore R session and history files from git |  Trivial | SparkR | Kai Sasaki | Kai Sasaki |
| [SPARK-11044](https://issues.apache.org/jira/browse/SPARK-11044) | Parquet writer version fixed as version1 |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-11692](https://issues.apache.org/jira/browse/SPARK-11692) | Support for Parquet logical types, JSON and BSON (embedded types) |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-11903](https://issues.apache.org/jira/browse/SPARK-11903) | Deprecate make-distribution.sh --skip-java-test |  Minor | Build | Nicholas Chammas | Nicholas Chammas |
| [SPARK-11592](https://issues.apache.org/jira/browse/SPARK-11592) | flush spark-sql command line history to history file |  Minor | SQL | Adrian Wang | Adrian Wang |
| [SPARK-11929](https://issues.apache.org/jira/browse/SPARK-11929) | spark-shell log level customization is lost if user provides a log4j.properties file |  Minor | Spark Core, Spark Shell | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11983](https://issues.apache.org/jira/browse/SPARK-11983) | remove all unused codegen fallback traits |  Minor | SQL | Adrian Wang | Adrian Wang |
| [SPARK-11982](https://issues.apache.org/jira/browse/SPARK-11982) | Improve performance of CartesianProduct |  Minor | SQL | Davies Liu | Davies Liu |
| [SPARK-11898](https://issues.apache.org/jira/browse/SPARK-11898) | Use broadcast for the global tables in Word2Vec |  Major | MLlib | yuhao yang | yuhao yang |
| [SPARK-12080](https://issues.apache.org/jira/browse/SPARK-12080) | Kryo - Support multiple user registrators |  Minor | Spark Core | Rotem Shaul | Rotem Shaul |
| [SPARK-12096](https://issues.apache.org/jira/browse/SPARK-12096) | remove the old constraint in word2vec |  Trivial | MLlib | yuhao yang | yuhao yang |
| [SPARK-11988](https://issues.apache.org/jira/browse/SPARK-11988) | Update JPMML to 1.2.7 |  Minor | ML, MLlib | Sean Owen | Sean Owen |
| [SPARK-12115](https://issues.apache.org/jira/browse/SPARK-12115) | Change numPartitions() in RDD to be "getNumPartitions" to be consistent with pyspark/scala |  Major | SparkR | Sun Rui | Yanbo Liang |
| [SPARK-12044](https://issues.apache.org/jira/browse/SPARK-12044) | Fix usage of isnan, isNaN |  Major | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-12032](https://issues.apache.org/jira/browse/SPARK-12032) | Filter can't be pushed down to correct Join because of bad order of Join |  Critical | SQL | Davies Liu | Davies Liu |
| [SPARK-12060](https://issues.apache.org/jira/browse/SPARK-12060) | Avoid memory copy in JavaSerializerInstance.serialize |  Critical | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11884](https://issues.apache.org/jira/browse/SPARK-11884) | Drop multiple columns in the DataFrame API |  Minor | Spark Core | Ted Yu | Ted Yu |
| [SPARK-12103](https://issues.apache.org/jira/browse/SPARK-12103) | Clarify documentation of KafkaUtils createStream with multiple topics |  Minor | Documentation, DStreams | Dan Dutrow | Cody Koeninger |
| [SPARK-12166](https://issues.apache.org/jira/browse/SPARK-12166) | Unset hadoop related environment in testing |  Minor | Tests | Jeff Zhang | Jeff Zhang |
| [SPARK-11439](https://issues.apache.org/jira/browse/SPARK-11439) | Optimization of creating sparse feature without dense one |  Minor | ML | Kai Sasaki | Nakul Jindal |
| [SPARK-11155](https://issues.apache.org/jira/browse/SPARK-11155) | Stage summary json should include stage duration |  Minor | Web UI | Imran Rashid | Xin Ren |
| [SPARK-12074](https://issues.apache.org/jira/browse/SPARK-12074) | Avoid memory copy involving ByteBuffer.wrap(ByteArrayOutputStream.toByteArray) |  Major | Spark Core | Ted Yu | Ted Yu |
| [SPARK-10299](https://issues.apache.org/jira/browse/SPARK-10299) | word2vec should allow users to specify the window size |  Minor | MLlib | holdenk | holdenk |
| [SPARK-12241](https://issues.apache.org/jira/browse/SPARK-12241) | Improve failure reporting in Yarn client obtainTokenForHBase() |  Minor | YARN | Steve Loughran | Steve Loughran |
| [SPARK-11824](https://issues.apache.org/jira/browse/SPARK-11824) | WebUI throws console error for descriptions with 'bad' HTML |  Minor | SQL, Web UI | Andy Robb | Sean Owen |
| [SPARK-11530](https://issues.apache.org/jira/browse/SPARK-11530) | Return eigenvalues with PCA model |  Minor | ML, MLlib | Christos Iraklis Tsatsoulis | Sean Owen |
| [SPARK-12228](https://issues.apache.org/jira/browse/SPARK-12228) | Use in-memory for execution hive's derby metastore |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-10991](https://issues.apache.org/jira/browse/SPARK-10991) | LogisticRegressionTrainingSummary should dynamically add prediction col if there is no prediction col set |  Minor | ML | holdenk | holdenk |
| [SPARK-12273](https://issues.apache.org/jira/browse/SPARK-12273) | Spark Streaming Web UI does not list Receivers in order |  Minor | DStreams, Web UI | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [SPARK-12213](https://issues.apache.org/jira/browse/SPARK-12213) | Query with only one distinct should not having on expand |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12288](https://issues.apache.org/jira/browse/SPARK-12288) | Support UnsafeRow in Coalesce/Except/Intersect |  Major | SQL | Davies Liu | Xiao Li |
| [SPARK-12332](https://issues.apache.org/jira/browse/SPARK-12332) | Typo in ResetSystemProperties.scala's comments |  Trivial | Tests | holdenk | holdenk |
| [SPARK-12130](https://issues.apache.org/jira/browse/SPARK-12130) | Replace shuffleManagerClass with shortShuffleMgrNames in ExternalShuffleBlockResolver |  Major | Shuffle, YARN | Lianhui Wang | Lianhui Wang |
| [SPARK-10123](https://issues.apache.org/jira/browse/SPARK-10123) | Cannot set "--deploy-mode" in default configuration |  Minor | Spark Core | Marcelo Vanzin | Saisai Shao |
| [SPARK-10477](https://issues.apache.org/jira/browse/SPARK-10477) | using DSL in ColumnPruningSuite to improve readablity |  Trivial | SQL, Tests | Wenchen Fan | Wenchen Fan |
| [SPARK-4117](https://issues.apache.org/jira/browse/SPARK-4117) | Spark on Yarn handle AM being told command from RM |  Major | YARN | Thomas Graves | Devaraj K |
| [SPARK-12304](https://issues.apache.org/jira/browse/SPARK-12304) | Make Spark Streaming web UI display more friendly Receiver graphs |  Minor | DStreams | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [SPARK-12249](https://issues.apache.org/jira/browse/SPARK-12249) | JDBC non-equality comparison operator not pushed down. |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-12314](https://issues.apache.org/jira/browse/SPARK-12314) | isnull operator not pushed down for JDBC datasource. |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-12315](https://issues.apache.org/jira/browse/SPARK-12315) | isnotnull operator not pushed down for JDBC datasource. |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-8745](https://issues.apache.org/jira/browse/SPARK-8745) | Remove GenerateProjection |  Major | SQL | Reynold Xin | Davies Liu |
| [SPARK-12309](https://issues.apache.org/jira/browse/SPARK-12309) | Use sqlContext from MLlibTestSparkContext for spark.ml test suites |  Major | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-12361](https://issues.apache.org/jira/browse/SPARK-12361) | Should set PYSPARK\_DRIVER\_PYTHON before python test |  Minor | PySpark, Tests | Jeff Zhang | Jeff Zhang |
| [SPARK-12364](https://issues.apache.org/jira/browse/SPARK-12364) | Add ML example for SparkR |  Major | ML, SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-12164](https://issues.apache.org/jira/browse/SPARK-12164) | [SQL] Display the binary/encoded values |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-11904](https://issues.apache.org/jira/browse/SPARK-11904) | pyspark reduceByKeyAndWindow with invFunc=None requires checkpointing |  Major | PySpark | David Tolpin | David Tolpin |
| [SPARK-12057](https://issues.apache.org/jira/browse/SPARK-12057) | Prevent failure on corrupt JSON records |  Minor | SQL | Ian Macalinao | Yin Huai |
| [SPARK-12397](https://issues.apache.org/jira/browse/SPARK-12397) | Improve error messages for data sources when they are not found |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12054](https://issues.apache.org/jira/browse/SPARK-12054) | Consider nullable in codegen |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12411](https://issues.apache.org/jira/browse/SPARK-12411) | Reconsider executor heartbeats rpc timeout |  Major | Spark Core | Nong Li | Nong Li |
| [SPARK-10158](https://issues.apache.org/jira/browse/SPARK-10158) | ALS should print better errors when given Long IDs |  Minor | ML, MLlib, PySpark | Joseph K. Bradley | Bryan Cutler |
| [SPARK-12349](https://issues.apache.org/jira/browse/SPARK-12349) | Make spark.ml PCAModel load backwards compatible |  Minor | ML | Joseph K. Bradley | Sean Owen |
| [SPARK-12398](https://issues.apache.org/jira/browse/SPARK-12398) | Smart truncation of DataFrame / Dataset toString |  Major | SQL | Reynold Xin | Dilip Biswal |
| [SPARK-12374](https://issues.apache.org/jira/browse/SPARK-12374) | Improve performance of Range APIs via adding logical/physical operators |  Critical | SQL | Xiao Li | Apache Spark |
| [SPARK-12150](https://issues.apache.org/jira/browse/SPARK-12150) | numPartitions argument to sqlContext.range()  should be optional |  Minor | SQL | Henri DF | Xiao Li |
| [SPARK-12392](https://issues.apache.org/jira/browse/SPARK-12392) | Optimize a location order of broadcast blocks by considering preferred local hosts |  Major | Spark Core | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-12388](https://issues.apache.org/jira/browse/SPARK-12388) | Change default compressor to LZ4 |  Minor | SQL | Davies Liu | Davies Liu |
| [SPARK-12475](https://issues.apache.org/jira/browse/SPARK-12475) | Upgrade Zinc from 0.3.5.3 to 0.3.9 |  Major | Build, Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-12471](https://issues.apache.org/jira/browse/SPARK-12471) | Spark daemons should log their pid in the log file |  Major | Spark Core | Nong Li | Nong Li |
| [SPARK-11164](https://issues.apache.org/jira/browse/SPARK-11164) | Add InSet pushdown filter back for Parquet |  Major | SQL | Liang-Chi Hsieh | Xiao Li |
| [SPARK-12500](https://issues.apache.org/jira/browse/SPARK-12500) | Fix Tachyon deprecations; pull Tachyon dependency into one class |  Minor | Spark Core | Sean Owen | Sean Owen |
| [SPARK-12440](https://issues.apache.org/jira/browse/SPARK-12440) | Avoid setCheckpointDir warning when filesystem is not local |  Trivial | Spark Core | Pierre Borckmans | Pierre Borckmans |
| [SPARK-12515](https://issues.apache.org/jira/browse/SPARK-12515) | Minor clarification on DataFrameReader.jdbc doc |  Trivial | Documentation, SQL | Felix Cheung | Felix Cheung |
| [SPARK-12287](https://issues.apache.org/jira/browse/SPARK-12287) | Support UnsafeRow in MapPartitions/MapGroups/CoGroup |  Major | SQL | Davies Liu | Xiao Li |
| [SPARK-7727](https://issues.apache.org/jira/browse/SPARK-7727) | Avoid inner classes in RuleExecutor |  Major | SQL | Santiago M. Mola | Stephan Kessler |
| [SPARK-12490](https://issues.apache.org/jira/browse/SPARK-12490) | Don't use Javascript for web UI's paginated table navigation controls |  Major | Web UI | Josh Rosen | Josh Rosen |
| [SPARK-12547](https://issues.apache.org/jira/browse/SPARK-12547) | Tighten scala style checker enforcement for UDF registration |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12549](https://issues.apache.org/jira/browse/SPARK-12549) | UDFs' input type specification should take Option[Seq[DataType]] rather than Seq[DataType] |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12564](https://issues.apache.org/jira/browse/SPARK-12564) | Improve missing column AnalysisException |  Minor | SQL | Michael Armbrust | Xiao Li |
| [SPARK-12263](https://issues.apache.org/jira/browse/SPARK-12263) | IllegalStateException: Memory can't be 0 for SPARK\_WORKER\_MEMORY without unit |  Trivial | Documentation | Jacek Laskowski | Neelesh Srinivas Salian |
| [SPARK-12409](https://issues.apache.org/jira/browse/SPARK-12409) | JDBC AND operator push down |  Minor | SQL | Huaxin Gao | Takeshi Yamamuro |
| [SPARK-12387](https://issues.apache.org/jira/browse/SPARK-12387) | JDBC  IN operator push down |  Minor | SQL | Huaxin Gao | Takeshi Yamamuro |
| [SPARK-12391](https://issues.apache.org/jira/browse/SPARK-12391) | JDBC OR operator push down |  Minor | SQL | Huaxin Gao | Takeshi Yamamuro |
| [SPARK-12585](https://issues.apache.org/jira/browse/SPARK-12585) | The numFields of UnsafeRow should not changed by pointTo() |  Major | SQL | Davies Liu | Apache Spark |
| [SPARK-12284](https://issues.apache.org/jira/browse/SPARK-12284) | Output UnsafeRow from window function |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12294](https://issues.apache.org/jira/browse/SPARK-12294) | Support UnsafeRow in HiveTableScan |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12290](https://issues.apache.org/jira/browse/SPARK-12290) | Change the default value in SparkPlan |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-10180](https://issues.apache.org/jira/browse/SPARK-10180) | JDBCRDD does not process EqualNullSafe filter. |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-12599](https://issues.apache.org/jira/browse/SPARK-12599) | Remove the use of the deprecated callUDF in MLlib |  Major | MLlib, SQL | Reynold Xin | Reynold Xin |
| [SPARK-12537](https://issues.apache.org/jira/browse/SPARK-12537) | Add option to accept quoting of all character backslash quoting mechanism |  Major | SQL | Cazen Lee | Cazen Lee |
| [SPARK-12608](https://issues.apache.org/jira/browse/SPARK-12608) | Remove submitJobThreadPool since submitJob doesn't create a separate thread to wait for the job result |  Major | DStreams | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11259](https://issues.apache.org/jira/browse/SPARK-11259) | Params.validateParams() should be called automatically |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-12289](https://issues.apache.org/jira/browse/SPARK-12289) | Support UnsafeRow in TakeOrderedAndProject/Limit |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12292](https://issues.apache.org/jira/browse/SPARK-12292) | Support UnsafeRow in Generate |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12293](https://issues.apache.org/jira/browse/SPARK-12293) | Support UnsafeRow in LocalTableScan |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12331](https://issues.apache.org/jira/browse/SPARK-12331) | R^2 for regression through the origin |  Minor | ML | Imran Younus | Imran Younus |
| [SPARK-12438](https://issues.apache.org/jira/browse/SPARK-12438) | Add SQLUserDefinedType support for encoder |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-12643](https://issues.apache.org/jira/browse/SPARK-12643) | Set lib directory for antlr |  Minor | Build | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-12636](https://issues.apache.org/jira/browse/SPARK-12636) | Expose API on UnsafeRowRecordReader to just run on files |  Major | SQL | Nong Li | Nong Li |
| [SPARK-12450](https://issues.apache.org/jira/browse/SPARK-12450) | Un-persist broadcasted variables in KMeans |  Minor | MLlib | RJ Nowling | RJ Nowling |
| [SPARK-11878](https://issues.apache.org/jira/browse/SPARK-11878) | Eliminate distribute by in case group by is present with exactly the same grouping expressions |  Minor | SQL | Yash Datta | Yash Datta |
| [SPARK-7675](https://issues.apache.org/jira/browse/SPARK-7675) | PySpark spark.ml Params type conversions |  Minor | ML, PySpark | Joseph K. Bradley | holdenk |
| [SPARK-11531](https://issues.apache.org/jira/browse/SPARK-11531) | PySpark SparseVector: improve error message for bad indices |  Trivial | MLlib, PySpark | Urvish Parikh | Rekha Joshi |
| [SPARK-12368](https://issues.apache.org/jira/browse/SPARK-12368) | Better doc for the binary classification evaluator' metricName |  Minor | Documentation, ML | Benjamin Fradet | Benjamin Fradet |
| [SPARK-12663](https://issues.apache.org/jira/browse/SPARK-12663) | More informative error message in MLUtils.loadLibSVMFile |  Minor | MLlib | Robert Dodier | Robert Dodier |
| [SPARK-12295](https://issues.apache.org/jira/browse/SPARK-12295) | Manage the memory used by window function |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12580](https://issues.apache.org/jira/browse/SPARK-12580) | Remove string concatenations from usage and extended in @ExpressionDescription |  Minor | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-12317](https://issues.apache.org/jira/browse/SPARK-12317) | Support configurate value for AUTO\_BROADCASTJOIN\_THRESHOLD and SHUFFLE\_TARGET\_POSTSHUFFLE\_INPUT\_SIZE with unit(e.g. kb/mb/gb) in SQLConf |  Minor | SQL | Yadong Qi | kevin yu |
| [SPARK-12510](https://issues.apache.org/jira/browse/SPARK-12510) | Refactor ActorReceiver to support Java |  Major | DStreams | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12701](https://issues.apache.org/jira/browse/SPARK-12701) | Logging FileAppender should use join to ensure thread is finished |  Minor | Spark Core | Bryan Cutler | Bryan Cutler |
| [SPARK-12730](https://issues.apache.org/jira/browse/SPARK-12730) | De-duplicate some test code in BlockManagerSuite |  Major | Tests | Josh Rosen | Josh Rosen |
| [SPARK-12735](https://issues.apache.org/jira/browse/SPARK-12735) | Move spark-ec2 scripts to AMPLab |  Major | EC2 | Reynold Xin | Reynold Xin |
| [SPARK-12269](https://issues.apache.org/jira/browse/SPARK-12269) | Update aws-java-sdk version |  Minor | DStreams | Brian London | Brian London |
| [SPARK-12603](https://issues.apache.org/jira/browse/SPARK-12603) | PySpark MLlib GaussianMixtureModel should support single instance predict/predictSoft |  Minor | MLlib, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-12498](https://issues.apache.org/jira/browse/SPARK-12498) | BooleanSimplification cleanup |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-5273](https://issues.apache.org/jira/browse/SPARK-5273) | Improve documentation examples for LinearRegression |  Minor | Documentation | Dev Lakhani | Sean Owen |
| [SPARK-12645](https://issues.apache.org/jira/browse/SPARK-12645) | SparkR support hash function |  Major | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-12788](https://issues.apache.org/jira/browse/SPARK-12788) | Simplify BooleanEquality by using casts |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12761](https://issues.apache.org/jira/browse/SPARK-12761) | Clean up duplicated code in scala 2.11 repl.Main |  Trivial | Spark Shell | Jakob Odersky | Jakob Odersky |
| [SPARK-9383](https://issues.apache.org/jira/browse/SPARK-9383) | Merge script should reset back to previous ref instead of detached commit |  Trivial | Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-12642](https://issues.apache.org/jira/browse/SPARK-12642) | improve the hash expression to be decoupled from unsafe row |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-12400](https://issues.apache.org/jira/browse/SPARK-12400) | Avoid writing a shuffle file if a partition has no output (empty) |  Major | Shuffle | Reynold Xin | Saisai Shao |
| [SPARK-2930](https://issues.apache.org/jira/browse/SPARK-2930) | clarify docs on using webhdfs with spark.yarn.access.namenodes |  Trivial | Documentation, YARN | Thomas Graves | Thomas Graves |
| [SPARK-12840](https://issues.apache.org/jira/browse/SPARK-12840) | Support passing arbitrary objects (not just expressions) into code generated classes |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12856](https://issues.apache.org/jira/browse/SPARK-12856) | speed up hashCode of unsafe array |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-12860](https://issues.apache.org/jira/browse/SPARK-12860) | speed up safe projection for primitive types |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-12873](https://issues.apache.org/jira/browse/SPARK-12873) | Add more comment in HiveTypeCoercion for type widening |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-10985](https://issues.apache.org/jira/browse/SPARK-10985) | Avoid passing evicted blocks throughout BlockManager / CacheManager |  Minor | Block Manager, Spark Core | Andrew Or | Josh Rosen |
| [SPARK-12882](https://issues.apache.org/jira/browse/SPARK-12882) | simplify bucket tests and add more comments |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-12700](https://issues.apache.org/jira/browse/SPARK-12700) | SortMergeJoin and BroadcastHashJoin should support condition |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-11295](https://issues.apache.org/jira/browse/SPARK-11295) | Add packages to JUnit output for Python tests |  Minor | PySpark, Tests | Gabor Liptak | Gabor Liptak |
| [SPARK-9716](https://issues.apache.org/jira/browse/SPARK-9716) | BinaryClassificationEvaluator should accept Double prediction column |  Minor | ML | Joseph K. Bradley | Benjamin Fradet |
| [SPARK-12912](https://issues.apache.org/jira/browse/SPARK-12912) | Add test suite for EliminateSubQueries |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12925](https://issues.apache.org/jira/browse/SPARK-12925) | Improve HiveInspectors.unwrap for StringObjectInspector.getPrimitiveWritableObject |  Minor | SQL | Rajesh Balamohan | Rajesh Balamohan |
| [SPARK-12898](https://issues.apache.org/jira/browse/SPARK-12898) | Consider having dummyCallSite for HiveTableScan |  Major | SQL | Rajesh Balamohan | Rajesh Balamohan |
| [SPARK-12616](https://issues.apache.org/jira/browse/SPARK-12616) | Union logical plan should support arbitrary number of children (rather than binary) |  Major | SQL | Reynold Xin | Xiao Li |
| [SPARK-12888](https://issues.apache.org/jira/browse/SPARK-12888) | benchmark the new hash expression |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-8968](https://issues.apache.org/jira/browse/SPARK-8968) | dynamic partitioning in spark sql performance issue due to the high GC overhead |  Major | SQL | Fei Wang | Fei Wang |
| [SPARK-12910](https://issues.apache.org/jira/browse/SPARK-12910) | Support for specifying version of R to use while creating sparkR libraries |  Minor | SparkR | Shubhanshu Mishra | Shubhanshu Mishra |
| [SPARK-12534](https://issues.apache.org/jira/browse/SPARK-12534) | Document missing command line options to Spark properties mapping |  Minor | Deploy, Documentation, YARN | Felix Cheung | Felix Cheung |
| [SPARK-12908](https://issues.apache.org/jira/browse/SPARK-12908) | Add tests to make sure that ml.classification.LogisticRegression returns meaningful result when labels are the same without intercept |  Major | ML | DB Tsai | DB Tsai |
| [SPARK-12872](https://issues.apache.org/jira/browse/SPARK-12872) | Support to specify the option for compression codec for JSON datasource. |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-10498](https://issues.apache.org/jira/browse/SPARK-10498) | Add requirements file for create dev python tools |  Minor | Build | holdenk | holdenk |
| [SPARK-12120](https://issues.apache.org/jira/browse/SPARK-12120) | Improve exception message when failing to initialize HiveContext in PySpark |  Minor | PySpark | Jeff Zhang | Jeff Zhang |
| [SPARK-12932](https://issues.apache.org/jira/browse/SPARK-12932) | Bad error message with trying to create Dataset from RDD of Java objects that are not bean-compliant |  Trivial | Java API | Andy Grove | Andy Grove |
| [SPARK-12902](https://issues.apache.org/jira/browse/SPARK-12902) | Visualization and metrics for generated operators |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-1832](https://issues.apache.org/jira/browse/SPARK-1832) | Executor UI improvement suggestions |  Major | Web UI | Thomas Graves | Alex Bozarth |
| [SPARK-12975](https://issues.apache.org/jira/browse/SPARK-12975) | Throwing Exception when Bucketing Columns are part of Partitioning Columns |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-12905](https://issues.apache.org/jira/browse/SPARK-12905) | PCAModel return eigenvalues for PySpark |  Minor | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-12879](https://issues.apache.org/jira/browse/SPARK-12879) | improve unsafe row writing framework |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-12834](https://issues.apache.org/jira/browse/SPARK-12834) | Use type conversion instead of Ser/De of Pickle to transform JavaArray and JavaList |  Major | PySpark | Xusen Yin | Xusen Yin |
| [SPARK-10911](https://issues.apache.org/jira/browse/SPARK-10911) | Executors should System.exit on clean shutdown |  Minor | Spark Core | Thomas Graves | Zhuo Liu |
| [SPARK-8725](https://issues.apache.org/jira/browse/SPARK-8725) | Test modules in topological order in dev/run-tests and python/run-tests |  Minor | Build, Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-10509](https://issues.apache.org/jira/browse/SPARK-10509) | Excessive param boiler plate code |  Minor | ML, PySpark | holdenk | holdenk |
| [SPARK-11622](https://issues.apache.org/jira/browse/SPARK-11622) | Make LibSVMRelation extends HadoopFsRelation and Add LibSVMOutputWriter |  Minor | MLlib | Jeff Zhang | Jeff Zhang |
| [SPARK-12903](https://issues.apache.org/jira/browse/SPARK-12903) | Add covar\_samp and covar\_pop for SparkR |  Major | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-12967](https://issues.apache.org/jira/browse/SPARK-12967) | NettyRPC races with SparkContext.stop() and throws exception |  Minor | Spark Core | Nishkam Ravi | Nishkam Ravi |
| [SPARK-12926](https://issues.apache.org/jira/browse/SPARK-12926) | SQLContext to display warning message when non-sql configs are being set |  Trivial | SQL | Tejas Patil | Tejas Patil |
| [SPARK-13031](https://issues.apache.org/jira/browse/SPARK-13031) | Improve test coverage for whole stage codegen |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12749](https://issues.apache.org/jira/browse/SPARK-12749) | Spark SQL JSON schema infernce should allow floating-point numbers as BigDecimal |  Minor | SQL | Brandon Bradley | Brandon Bradley |
| [SPARK-11955](https://issues.apache.org/jira/browse/SPARK-11955) | Mark one side fields in merging schema for safely pushdowning filters in parquet |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-13072](https://issues.apache.org/jira/browse/SPARK-13072) | simplify and improve murmur3 hash expression codegen |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-12656](https://issues.apache.org/jira/browse/SPARK-12656) | Rewrite Intersect phyiscal plan using semi-join |  Major | SQL | Reynold Xin | Xiao Li |
| [SPARK-12914](https://issues.apache.org/jira/browse/SPARK-12914) | Generate TungstenAggregate with grouping keys |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13098](https://issues.apache.org/jira/browse/SPARK-13098) | remove GenericInternalRowWithSchema |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-6363](https://issues.apache.org/jira/browse/SPARK-6363) | Switch to Scala 2.11 for default build |  Minor | Build | antonkulaga | Josh Rosen |
| [SPARK-13100](https://issues.apache.org/jira/browse/SPARK-13100) | improving the performance of stringToDate method in DateTimeUtils.scala |  Minor | SQL | Yang Wang | Yang Wang |
| [SPARK-13070](https://issues.apache.org/jira/browse/SPARK-13070) | Points out which physical file is the trouble maker when Parquet schema merging fails |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-13093](https://issues.apache.org/jira/browse/SPARK-13093) | improve null check in nullSafeCodeGen for unary, binary and ternary expression |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-12637](https://issues.apache.org/jira/browse/SPARK-12637) | Print stage info of finished stages properly |  Trivial | Spark Core | Navis | Navis |
| [SPARK-13130](https://issues.apache.org/jira/browse/SPARK-13130) | Make whole stage codegen variable names slightly easier to read |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12362](https://issues.apache.org/jira/browse/SPARK-12362) | Create a full-fledged built-in SQL parser |  Critical | SQL | Reynold Xin | Herman van Hovell |
| [SPARK-13094](https://issues.apache.org/jira/browse/SPARK-13094) | No encoder implicits for Seq[Primitive] |  Major | SQL | Deenar Toraskar | Michael Armbrust |
| [SPARK-13138](https://issues.apache.org/jira/browse/SPARK-13138) | Add "logical" package prefix for ddl.scala |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12913](https://issues.apache.org/jira/browse/SPARK-12913) | Reimplement stat functions as declarative function |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13020](https://issues.apache.org/jira/browse/SPARK-13020) | fix random generator for map type |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-12951](https://issues.apache.org/jira/browse/SPARK-12951) | Support spilling in generate aggregate |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13147](https://issues.apache.org/jira/browse/SPARK-13147) | improve readability of generated code |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13131](https://issues.apache.org/jira/browse/SPARK-13131) | Use best  time and average time in micro benchmark |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13152](https://issues.apache.org/jira/browse/SPARK-13152) | Fix task metrics deprecation warning |  Minor | Spark Core | holdenk | holdenk |
| [SPARK-13113](https://issues.apache.org/jira/browse/SPARK-13113) | Remove unnecessary bit operation when decoding page number |  Minor | Spark Core | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-13168](https://issues.apache.org/jira/browse/SPARK-13168) | Collapse adjacent Repartition operations |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-13215](https://issues.apache.org/jira/browse/SPARK-13215) | Remove fallback in codegen |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-5865](https://issues.apache.org/jira/browse/SPARK-5865) | Add doc warnings for methods that return local data structures |  Minor | Spark Core, SQL | Nicholas Chammas | Wenpei Yu |
| [SPARK-13132](https://issues.apache.org/jira/browse/SPARK-13132) | LogisticRegression spends 35% of its time fetching the standardization parameter |  Minor | ML | Gary King | Gary King |
| [SPARK-10963](https://issues.apache.org/jira/browse/SPARK-10963) | Make KafkaCluster api public |  Minor | DStreams | Cody Koeninger | Cody Koeninger |
| [SPARK-8964](https://issues.apache.org/jira/browse/SPARK-8964) | Use Exchange in limit operations (per partition limit -\> exchange to one partition -\> per partition limit) |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-12992](https://issues.apache.org/jira/browse/SPARK-12992) | Vectorize parquet decoding using ColumnarBatch |  Major | SQL | Nong Li | Nong Li |
| [SPARK-13086](https://issues.apache.org/jira/browse/SPARK-13086) | Spark Shell for 2.11 does not allow loading files via '-i' |  Minor | Spark Shell | Iulian Dragos | Iulian Dragos |
| [SPARK-13189](https://issues.apache.org/jira/browse/SPARK-13189) | Cleanup build references to Scala 2.10 |  Minor | Build | Luciano Resende | Luciano Resende |
| [SPARK-12950](https://issues.apache.org/jira/browse/SPARK-12950) | Improve performance of BytesToBytesMap |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12476](https://issues.apache.org/jira/browse/SPARK-12476) | Implement JdbcRelation#unhandledFilters for removing unnecessary Spark Filter |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-11565](https://issues.apache.org/jira/browse/SPARK-11565) | replace deprecated DigestUtils.shaHex call |  Minor | SQL | Gabor Liptak | Gabor Liptak |
| [SPARK-13203](https://issues.apache.org/jira/browse/SPARK-13203) | Add scalastyle rule banning use of mutable.SynchronizedBuffer |  Trivial | Build | Ted Yu | Ted Yu |
| [SPARK-5095](https://issues.apache.org/jira/browse/SPARK-5095) | Support launching multiple mesos executors in coarse grained mesos mode |  Major | Mesos | Timothy Chen | Timothy Chen |
| [SPARK-13057](https://issues.apache.org/jira/browse/SPARK-13057) | Add benchmark codes and the performance results for implemented compression schemes for InMemoryRelation |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-13234](https://issues.apache.org/jira/browse/SPARK-13234) | Remove duplicated SQL metrics |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13235](https://issues.apache.org/jira/browse/SPARK-13235) | Remove an Extra Distinct in Union |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-13264](https://issues.apache.org/jira/browse/SPARK-13264) | Remove multi-byte character in spark-env.sh.template |  Trivial | Spark Core | Sasaki Toru | Sasaki Toru |
| [SPARK-12915](https://issues.apache.org/jira/browse/SPARK-12915) | SQL metrics for generated operators |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-7889](https://issues.apache.org/jira/browse/SPARK-7889) | Jobs progress of apps on complete page of HistoryServer shows uncompleted |  Minor | Spark Core | meiyoula | Steve Loughran |
| [SPARK-6166](https://issues.apache.org/jira/browse/SPARK-6166) | Limit number of in flight outbound requests for shuffle fetch |  Minor | Spark Core | Mridul Muralidharan | Sanket Reddy |
| [SPARK-12974](https://issues.apache.org/jira/browse/SPARK-12974) | Add Python API for spark.ml bisecting k-means |  Minor | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-13154](https://issues.apache.org/jira/browse/SPARK-13154) | Add pydoc lint for docs |  Trivial | PySpark | holdenk | holdenk |
| [SPARK-12962](https://issues.apache.org/jira/browse/SPARK-12962) | PySpark support covar\_samp and covar\_pop |  Minor | PySpark, SQL | Yanbo Liang | Yanbo Liang |
| [SPARK-13293](https://issues.apache.org/jira/browse/SPARK-13293) | Generate code for Expand |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13185](https://issues.apache.org/jira/browse/SPARK-13185) | Improve the performance of DateTimeUtils.StringToDate by reusing Calendar objects |  Minor | SQL | Carson Wang | Carson Wang |
| [SPARK-12503](https://issues.apache.org/jira/browse/SPARK-12503) | Pushdown a Limit on top of a Union |  Major | Optimizer, SQL | Xiao Li | Josh Rosen |
| [SPARK-13097](https://issues.apache.org/jira/browse/SPARK-13097) | Extend Binarizer to allow Double AND Vector inputs |  Minor | ML | Mike Seddon | Mike Seddon |
| [SPARK-12976](https://issues.apache.org/jira/browse/SPARK-12976) | Add LazilyGenerateOrdering and use it for RangePartitioner of Exchange. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-13280](https://issues.apache.org/jira/browse/SPARK-13280) | FileBasedWriteAheadLog logger name should be under o.a.s namespace |  Minor | DStreams | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-13357](https://issues.apache.org/jira/browse/SPARK-13357) | Use generated projection and ordering for TakeOrderedAndProjectNode |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-13279](https://issues.apache.org/jira/browse/SPARK-13279) | Scheduler does O(N^2) operation when adding a new task set (making it prohibitively slow for scheduling 200K tasks) |  Major | Scheduler, Spark Core | Sital Kedia | Sital Kedia |
| [SPARK-12953](https://issues.apache.org/jira/browse/SPARK-12953) | RDDRelation write set mode will be better to avoid error "pair.parquet already exists" |  Minor | Examples | shijinkui | shijinkui |
| [SPARK-13324](https://issues.apache.org/jira/browse/SPARK-13324) | Update plugin, test, example dependencies for 2.x |  Minor | Build, Examples, Spark Core | Sean Owen | Sean Owen |
| [SPARK-13237](https://issues.apache.org/jira/browse/SPARK-13237) | Generate broadcast outer join |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13339](https://issues.apache.org/jira/browse/SPARK-13339) | Clarify commutative / associative operator requirements for reduce, fold |  Minor | Documentation | Sean Owen | Sean Owen |
| [SPARK-12594](https://issues.apache.org/jira/browse/SPARK-12594) | Outer Join Elimination by Filter Condition |  Critical | Optimizer, SQL | Xiao Li | Xiao Li |
| [SPARK-13386](https://issues.apache.org/jira/browse/SPARK-13386) | ConnectedComponents should support maxIteration option |  Minor | GraphX | zhengruifeng | zhengruifeng |
| [SPARK-13414](https://issues.apache.org/jira/browse/SPARK-13414) | Add support for launching multiple Mesos dispatchers |  Major | Mesos | Timothy Chen | Timothy Chen |
| [SPARK-13416](https://issues.apache.org/jira/browse/SPARK-13416) | Add positive check for option 'numIter' in StronglyConnectedComponents |  Trivial | GraphX | zhengruifeng | zhengruifeng |
| [SPARK-13248](https://issues.apache.org/jira/browse/SPARK-13248) | Remove depecrated Streaming APIs |  Minor | DStreams | Luciano Resende | Luciano Resende |
| [SPARK-13136](https://issues.apache.org/jira/browse/SPARK-13136) | Data exchange (shuffle, broadcast) should only be handled by the exchange operator |  Major | SQL | Reynold Xin | Herman van Hovell |
| [SPARK-13271](https://issues.apache.org/jira/browse/SPARK-13271) | Better error message if 'path' is not specified |  Major | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7617](https://issues.apache.org/jira/browse/SPARK-7617) | Word2VecModel fVector not normalized |  Trivial | MLlib | Eric Li | YongGang Cao |
| [SPARK-13399](https://issues.apache.org/jira/browse/SPARK-13399) | Investigate type erasure warnings in CheckpointSuite |  Trivial | Tests | holdenk | holdenk |
| [SPARK-10749](https://issues.apache.org/jira/browse/SPARK-10749) | Support multiple roles with Spark Mesos dispatcher |  Major | Mesos | Timothy Chen | Timothy Chen |
| [SPARK-13422](https://issues.apache.org/jira/browse/SPARK-13422) | Use HashedRelation instead of HashSet in Left Semi Joins |  Minor | SQL | Herman van Hovell | Xiu (Joe) Guo |
| [SPARK-13295](https://issues.apache.org/jira/browse/SPARK-13295) | ML/MLLIB: AFTSurvivalRegression: Improve AFTAggregator - Avoid creating new instances of arrays/vectors for each record |  Major | ML, MLlib | Narine Kokhlikyan | Narine Kokhlikyan |
| [SPARK-13429](https://issues.apache.org/jira/browse/SPARK-13429) | Unify Logistic Regression convergence tolerance of ML & MLlib |  Minor | ML, MLlib | Yanbo Liang | Yanbo Liang |
| [SPARK-13257](https://issues.apache.org/jira/browse/SPARK-13257) | Refine naive Bayes example code |  Minor | Examples | Lenjoy Lin | Lenjoy Lin |
| [SPARK-13364](https://issues.apache.org/jira/browse/SPARK-13364) | history server application column Id not sorting as number |  Minor | Web UI | Thomas Graves | Zhuo Liu |
| [SPARK-7729](https://issues.apache.org/jira/browse/SPARK-7729) | Executor which has been killed should also be displayed on Executors Tab. |  Minor | Web UI | Archit Thakur | Lianhui Wang |
| [SPARK-13329](https://issues.apache.org/jira/browse/SPARK-13329) | Considering output for statistics of logical plan |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12759](https://issues.apache.org/jira/browse/SPARK-12759) | Spark should fail fast if --executor-memory is too small for spark to start |  Trivial | Spark Shell | Imran Rashid | Daniel Jalova |
| [SPARK-13467](https://issues.apache.org/jira/browse/SPARK-13467) | abstract python function to simplify pyspark code |  Trivial | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-13376](https://issues.apache.org/jira/browse/SPARK-13376) | Improve column pruning |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13490](https://issues.apache.org/jira/browse/SPARK-13490) | ML LinearRegression should cache standardization param value |  Trivial | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-13387](https://issues.apache.org/jira/browse/SPARK-13387) | Add support for SPARK\_DAEMON\_JAVA\_OPTS with MesosClusterDispatcher. |  Minor | Mesos | Timothy Chen | Timothy Chen |
| [SPARK-12757](https://issues.apache.org/jira/browse/SPARK-12757) | Use reference counting to prevent blocks from being evicted during reads |  Major | Block Manager | Josh Rosen | Josh Rosen |
| [SPARK-13361](https://issues.apache.org/jira/browse/SPARK-13361) | Add benchmark codes for Encoder#compress() in CompressionSchemeBenchmark |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-13503](https://issues.apache.org/jira/browse/SPARK-13503) | Support to specify the (writing) option for compression codec for TEXT |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-12523](https://issues.apache.org/jira/browse/SPARK-12523) | Support long-running of the Spark On HBase and hive meta store. |  Major | YARN | carlmartin | carlmartin |
| [SPARK-13457](https://issues.apache.org/jira/browse/SPARK-13457) | Remove DataFrame RDD operations |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-13499](https://issues.apache.org/jira/browse/SPARK-13499) | Optimize vectorized parquet reader for dictionary encoded data and RLE decoding |  Major | SQL | Nong Li | Nong Li |
| [SPARK-13518](https://issues.apache.org/jira/browse/SPARK-13518) | Enable vectorized parquet reader by default |  Major | SQL | Nong Li | Nong Li |
| [SPARK-13530](https://issues.apache.org/jira/browse/SPARK-13530) | Add ShortType support to UnsafeRowParquetRecordReader |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-13526](https://issues.apache.org/jira/browse/SPARK-13526) | Refactor: Move SQLContext/HiveContext per-session state to separate class |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-13545](https://issues.apache.org/jira/browse/SPARK-13545) | Make MLlib LogisticRegressionWithLBFGS's default parameters consistent in Scala and Python |  Minor | MLlib, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-12994](https://issues.apache.org/jira/browse/SPARK-12994) | It is not necessary to create ExecutorAllocationManager in local mode |  Minor | Spark Core | Jeff Zhang | Jeff Zhang |
| [SPARK-13481](https://issues.apache.org/jira/browse/SPARK-13481) | History server page with a default sorting as "desc" |  Trivial | Spark Core | Zhuo Liu | Zhuo Liu |
| [SPARK-13544](https://issues.apache.org/jira/browse/SPARK-13544) | Rewrite/Propagate constraints for Aliases in Aggregate |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-13213](https://issues.apache.org/jira/browse/SPARK-13213) | BroadcastNestedLoopJoin is very slow |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13551](https://issues.apache.org/jira/browse/SPARK-13551) | Fix fix wrong comment and remove meanless lines in mllib.JavaBisectingKMeansExample |  Trivial | MLlib | zhengruifeng | zhengruifeng |
| [SPARK-13550](https://issues.apache.org/jira/browse/SPARK-13550) | Add java example for ml.clustering.BisectingKMeans |  Trivial | ML | zhengruifeng | zhengruifeng |
| [SPARK-13511](https://issues.apache.org/jira/browse/SPARK-13511) | Add wholestage codegen for limit |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-13582](https://issues.apache.org/jira/browse/SPARK-13582) | Improve performance of parquet reader with dictionary encoding |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13008](https://issues.apache.org/jira/browse/SPARK-13008) | Make ML Python package all list have one algorithm per line |  Trivial | ML, PySpark | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-12817](https://issues.apache.org/jira/browse/SPARK-12817) | Remove CacheManager and replace it with new BlockManager.getOrElseUpdate method |  Major | Block Manager | Josh Rosen | Josh Rosen |
| [SPARK-13601](https://issues.apache.org/jira/browse/SPARK-13601) | Invoke task failure callbacks before calling outputstream.close() |  Major | Spark Core | Davies Liu | Davies Liu |
| [SPARK-13574](https://issues.apache.org/jira/browse/SPARK-13574) | Improve parquet dictionary decoding for strings |  Minor | SQL | Nong Li | Nong Li |
| [SPARK-13528](https://issues.apache.org/jira/browse/SPARK-13528) | Make the short names of compression codecs consistent in spark |  Minor | Spark Core, SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-13617](https://issues.apache.org/jira/browse/SPARK-13617) | remove unnecessary GroupingAnalytics trait |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-13616](https://issues.apache.org/jira/browse/SPARK-13616) | Let SQLBuilder convert logical plan without a Project on top of it |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-13621](https://issues.apache.org/jira/browse/SPARK-13621) | TestExecutor.scala needs to be moved to test package |  Trivial | Build, Tests | Devaraj K | Devaraj K |
| [SPARK-13635](https://issues.apache.org/jira/browse/SPARK-13635) | Enable LimitPushdown optimizer rule because we have whole-stage codegen for Limit |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-13466](https://issues.apache.org/jira/browse/SPARK-13466) | Remove redundant project in colum pruning rule |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-13423](https://issues.apache.org/jira/browse/SPARK-13423) | Static analysis fixes for 2.x |  Minor | DStreams, ML, MLlib, Spark Core, SQL | Sean Owen | Sean Owen |
| [SPARK-13599](https://issues.apache.org/jira/browse/SPARK-13599) | Groovy-all ends up in spark-assembly if hive profile set |  Minor | Build | Steve Loughran | Steve Loughran |
| [SPARK-13647](https://issues.apache.org/jira/browse/SPARK-13647) | also check if numeric value is within allowed range in \_verify\_type |  Major | PySpark, SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-13646](https://issues.apache.org/jira/browse/SPARK-13646) | QuantileDiscretizer counts dataset twice in getSampledInput |  Trivial | ML | Abou Haydar Elias | Abou Haydar Elias |
| [SPARK-13673](https://issues.apache.org/jira/browse/SPARK-13673) | script bin\\beeline.cmd pollutes environment variables in Windows. |  Minor | Windows | Masayoshi TSUZUKI | Masayoshi TSUZUKI |
| [SPARK-13459](https://issues.apache.org/jira/browse/SPARK-13459) | Separate Alive and Dead Executors in Executor Totals Table |  Minor | Web UI | Alex Bozarth | Alex Bozarth |
| [SPARK-13694](https://issues.apache.org/jira/browse/SPARK-13694) | QueryPlan.expressions should always include all expressions |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-13404](https://issues.apache.org/jira/browse/SPARK-13404) | Create the variables for input when it's used |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13659](https://issues.apache.org/jira/browse/SPARK-13659) | Remove returnValues from BlockStore APIs |  Major | Block Manager | Josh Rosen | Josh Rosen |
| [SPARK-13715](https://issues.apache.org/jira/browse/SPARK-13715) | Remove last usages of jblas in tests |  Minor | Tests | Sean Owen | Sean Owen |
| [SPARK-13695](https://issues.apache.org/jira/browse/SPARK-13695) | Don't cache MEMORY\_AND\_DISK blocks as bytes in memory store when reading spills |  Major | Block Manager | Josh Rosen | Josh Rosen |
| [SPARK-13740](https://issues.apache.org/jira/browse/SPARK-13740) | add null check for \_verify\_type in types.py |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-13593](https://issues.apache.org/jira/browse/SPARK-13593) | improve the \`createDataFrame\` method to accept data type string and verify the data |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-13668](https://issues.apache.org/jira/browse/SPARK-13668) | Reorder filter/join predicates to short-circuit isNotNull checks |  Minor | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-13625](https://issues.apache.org/jira/browse/SPARK-13625) | PySpark-ML method to get list of params for an obj should not check property attr |  Major | ML, PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-13702](https://issues.apache.org/jira/browse/SPARK-13702) | Use diamond operator for generic instance creation in Java code |  Trivial | Examples | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-13763](https://issues.apache.org/jira/browse/SPARK-13763) | Remove Project when its projectList is Empty |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-13615](https://issues.apache.org/jira/browse/SPARK-13615) | GeneralizedLinearRegression support save/load |  Major | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-13527](https://issues.apache.org/jira/browse/SPARK-13527) | Prune Filters based on Constraints |  Major | Optimizer, SQL | Xiao Li | Xiao Li |
| [SPARK-13775](https://issues.apache.org/jira/browse/SPARK-13775) | history server sort by completed time by default |  Trivial | Web UI | Thomas Graves | Zhuo Liu |
| [SPARK-13492](https://issues.apache.org/jira/browse/SPARK-13492) | Configure a custom webui\_url for the Spark Mesos Framework |  Minor | Mesos | Sergiusz Urbaniak | Sergiusz Urbaniak |
| [SPARK-13766](https://issues.apache.org/jira/browse/SPARK-13766) | Inconsistent file extensions and omitted file extensions written by CSV, TEXT and JSON data sources |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-13706](https://issues.apache.org/jira/browse/SPARK-13706) | Python Example for Train Validation Split Missing |  Minor | ML, MLlib, PySpark | Jeremy | Jeremy |
| [SPARK-13663](https://issues.apache.org/jira/browse/SPARK-13663) | Upgrade Snappy Java to 1.1.2.1 |  Minor | Spark Core | Ted Yu | Y Y |
| [SPARK-13758](https://issues.apache.org/jira/browse/SPARK-13758) | Error message is misleading when RDD refer to null spark context |  Trivial | Documentation, DStreams, Spark Core | Mao, Wei | Mao, Wei |
| [SPARK-13790](https://issues.apache.org/jira/browse/SPARK-13790) | Speed up ColumnVector's getDecimal |  Minor | SQL | Nong Li | Nong Li |
| [SPARK-13696](https://issues.apache.org/jira/browse/SPARK-13696) | Remove BlockStore interface to more cleanly reflect different memory and disk store responsibilities |  Major | Block Manager | Josh Rosen | Josh Rosen |
| [SPARK-3854](https://issues.apache.org/jira/browse/SPARK-3854) | Scala style: require spaces before \`{\` |  Major | Project Infra | Josh Rosen | Dongjoon Hyun |
| [SPARK-13751](https://issues.apache.org/jira/browse/SPARK-13751) | Generate better code for Filter |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13389](https://issues.apache.org/jira/browse/SPARK-13389) | SparkR support first/last with ignore NAs |  Major | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-13732](https://issues.apache.org/jira/browse/SPARK-13732) | Remove projectList from Windows |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-13797](https://issues.apache.org/jira/browse/SPARK-13797) | Eliminate Unnecessary Window |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-13672](https://issues.apache.org/jira/browse/SPARK-13672) | Add python examples of BisectingKMeans in ML and MLLIB |  Trivial | ML, MLlib | zhengruifeng | zhengruifeng |
| [SPARK-13814](https://issues.apache.org/jira/browse/SPARK-13814) | Delete unnecessary imports in python examples files |  Trivial | PySpark | zhengruifeng | zhengruifeng |
| [SPARK-13810](https://issues.apache.org/jira/browse/SPARK-13810) | Add Port Configuration Suggestions on Bind Exceptions |  Minor | Spark Core | Bjorn Jonsson | Bjorn Jonsson |
| [SPARK-13834](https://issues.apache.org/jira/browse/SPARK-13834) | Update sbt and sbt plugins for 2.x. |  Minor | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-13823](https://issues.apache.org/jira/browse/SPARK-13823) | Always specify Charset in String \<-\> byte[] conversions (and remaining Coverity items) |  Minor | DStreams, Spark Core, SQL | Sean Owen | Sean Owen |
| [SPARK-13139](https://issues.apache.org/jira/browse/SPARK-13139) | Create native DDL commands |  Major | SQL | Reynold Xin | Andrew Or |
| [SPARK-13833](https://issues.apache.org/jira/browse/SPARK-13833) | Guard against race condition when re-caching spilled bytes in memory |  Major | Block Manager | Josh Rosen | Apache Spark |
| [SPARK-13249](https://issues.apache.org/jira/browse/SPARK-13249) | Filter null keys for inner join |  Major | SQL | Davies Liu | Sameer Agarwal |
| [SPARK-11826](https://issues.apache.org/jira/browse/SPARK-11826) | Subtract BlockMatrix |  Minor | MLlib | Ehsan Mohyedin Kermani | Ehsan Mohyedin Kermani |
| [SPARK-13882](https://issues.apache.org/jira/browse/SPARK-13882) | Remove org.apache.spark.sql.execution.local |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-10380](https://issues.apache.org/jira/browse/SPARK-10380) | Confusing examples in pyspark SQL docs |  Minor | Documentation, SQL | Michael Armbrust | Reynold Xin |
| [SPARK-13661](https://issues.apache.org/jira/browse/SPARK-13661) | Avoid the copy of UnsafeRow in HashedRelation |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13353](https://issues.apache.org/jira/browse/SPARK-13353) | Fast serialization for collecting DataFrame |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13884](https://issues.apache.org/jira/browse/SPARK-13884) | Remove DescribeCommand's dependency on LogicalPlan |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-13890](https://issues.apache.org/jira/browse/SPARK-13890) | Remove some internal classes' dependency on SQLContext |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-13893](https://issues.apache.org/jira/browse/SPARK-13893) | Remove SQLContext.catalog (internal method) |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12653](https://issues.apache.org/jira/browse/SPARK-12653) | Re-enable test "SPARK-8489: MissingRequirementError during reflection" |  Minor | SQL | Reynold Xin | Dongjoon Hyun |
| [SPARK-13281](https://issues.apache.org/jira/browse/SPARK-13281) | Switch broadcast of RDD to exception from warning |  Trivial | Spark Core | holdenk | Wesley Tang |
| [SPARK-13924](https://issues.apache.org/jira/browse/SPARK-13924) | officially support multi-insert |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-13816](https://issues.apache.org/jira/browse/SPARK-13816) | Add parameter checks for algorithms in Graphx |  Trivial | GraphX | zhengruifeng | zhengruifeng |
| [SPARK-13613](https://issues.apache.org/jira/browse/SPARK-13613) | Provide ignored tests to export test dataset into CSV format |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-13922](https://issues.apache.org/jira/browse/SPARK-13922) | Filter rows with null attributes in parquet vectorized reader |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-13869](https://issues.apache.org/jira/browse/SPARK-13869) | Remove redundant conditions while combining filters |  Minor | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-11011](https://issues.apache.org/jira/browse/SPARK-11011) | UserDefinedType serialization should be strongly typed |  Minor | SQL | John Muller | Jakob Odersky |
| [SPARK-13761](https://issues.apache.org/jira/browse/SPARK-13761) | Deprecate validateParams |  Minor | ML | Joseph K. Bradley | yuhao yang |
| [SPARK-13873](https://issues.apache.org/jira/browse/SPARK-13873) | Avoid the copy in whole stage codegen when there is no joins |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13118](https://issues.apache.org/jira/browse/SPARK-13118) | Support for classes defined in package objects |  Major | SQL | Michael Armbrust | Jakob Odersky |
| [SPARK-13926](https://issues.apache.org/jira/browse/SPARK-13926) | Automatically use Kryo serializer when shuffling RDDs with simple types |  Major | Shuffle | Josh Rosen | Josh Rosen |
| [SPARK-13928](https://issues.apache.org/jira/browse/SPARK-13928) | Move org.apache.spark.Logging into org.apache.spark.internal.Logging |  Major | Spark Core | Reynold Xin | Wenchen Fan |
| [SPARK-13427](https://issues.apache.org/jira/browse/SPARK-13427) | Support USING clause in JOIN |  Major | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-13838](https://issues.apache.org/jira/browse/SPARK-13838) | Clear variable code to prevent it to be re-evaluated in BoundAttribute |  Minor | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-10788](https://issues.apache.org/jira/browse/SPARK-10788) | Decision Tree duplicates bins for unordered categorical features |  Minor | ML | Joseph K. Bradley | Seth Hendrickson |
| [SPARK-13974](https://issues.apache.org/jira/browse/SPARK-13974) | sub-query names do not need to be globally unique while generate SQL |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-13921](https://issues.apache.org/jira/browse/SPARK-13921) | Store serialized blocks as multiple chunks in MemoryStore |  Major | Block Manager | Josh Rosen | Josh Rosen |
| [SPARK-13930](https://issues.apache.org/jira/browse/SPARK-13930) | Apply fast serialization on collect limit |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-13972](https://issues.apache.org/jira/browse/SPARK-13972) | hive tests should fail if SQL generation failed |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-12182](https://issues.apache.org/jira/browse/SPARK-12182) | Distributed binning for trees in spark.ml |  Minor | ML | Joseph K. Bradley | Seth Hendrickson |
| [SPARK-14019](https://issues.apache.org/jira/browse/SPARK-14019) | Remove noop SortOrder in Sort |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-14028](https://issues.apache.org/jira/browse/SPARK-14028) | Remove deprecated methods; fix two other warnings |  Minor | DStreams, Tests | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [SPARK-13986](https://issues.apache.org/jira/browse/SPARK-13986) | Remove \`DeveloperApi\`-annotation for non-publics |  Trivial | MLlib, Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14039](https://issues.apache.org/jira/browse/SPARK-14039) | make SubqueryHolder an inner class |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-14007](https://issues.apache.org/jira/browse/SPARK-14007) | Manage the memory for hash map for shuffle hash join |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13805](https://issues.apache.org/jira/browse/SPARK-13805) | Direct consume ColumnVector in generated code when ColumnarBatch is used |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-13916](https://issues.apache.org/jira/browse/SPARK-13916) | For whole stage codegen, measure and add the execution duration as a metric |  Minor | SQL | Nong Li | Nong Li |
| [SPARK-13822](https://issues.apache.org/jira/browse/SPARK-13822) | Follow-ups of DataFrame/Dataset API unification |  Blocker | Build, SQL | Cheng Lian | Cheng Lian |
| [SPARK-13990](https://issues.apache.org/jira/browse/SPARK-13990) | Automatically pick serializer when caching RDDs |  Major | Block Manager | Josh Rosen | Josh Rosen |
| [SPARK-14058](https://issues.apache.org/jira/browse/SPARK-14058) | Incorrect docstring in Window.orderBy |  Trivial | PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-14038](https://issues.apache.org/jira/browse/SPARK-14038) | Enable native view by default |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-13953](https://issues.apache.org/jira/browse/SPARK-13953) | Support for specifying the field name for corrupted record at JSON datasource. |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-14029](https://issues.apache.org/jira/browse/SPARK-14029) | Improve BooleanSimplification optimization by implementing \`Not\` canonicalization |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14072](https://issues.apache.org/jira/browse/SPARK-14072) | Show JVM information when we run Benchmark |  Minor | . | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-13401](https://issues.apache.org/jira/browse/SPARK-13401) | Fix SQL test warnings |  Trivial | SQL, Tests | holdenk | Yong Tang |
| [SPARK-12767](https://issues.apache.org/jira/browse/SPARK-12767) | Improve conditional expressions |  Major | Optimizer, SQL | Reynold Xin | Reynold Xin |
| [SPARK-13549](https://issues.apache.org/jira/browse/SPARK-13549) | Refactor the Optimizer Rule CollapseProject |  Minor | SQL | Xiao Li | Xiao Li |
| [SPARK-14075](https://issues.apache.org/jira/browse/SPARK-14075) | Refactor MemoryStore to be testable independent of BlockManager |  Major | Block Manager, Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-13068](https://issues.apache.org/jira/browse/SPARK-13068) | Extend pyspark ml paramtype conversion |  Trivial | ML, PySpark | holdenk | Seth Hendrickson |
| [SPARK-14025](https://issues.apache.org/jira/browse/SPARK-14025) | Fix streaming job descriptions on the event line |  Minor | DStreams, Web UI | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [SPARK-14085](https://issues.apache.org/jira/browse/SPARK-14085) | Star Expansion for Hash |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-12183](https://issues.apache.org/jira/browse/SPARK-12183) | Remove spark.mllib tree, forest implementations and use spark.ml |  Minor | ML, MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-10009](https://issues.apache.org/jira/browse/SPARK-10009) | PySpark Param of Vector type can be set with Python array or numpy.array |  Major | ML, PySpark | Yanbo Liang | Seth Hendrickson |
| [SPARK-14110](https://issues.apache.org/jira/browse/SPARK-14110) | PipedRDD to print the command ran on non zero exit |  Trivial | Spark Core | Tejas Patil | Tejas Patil |
| [SPARK-14030](https://issues.apache.org/jira/browse/SPARK-14030) | Add parameter check to several MLlib implementations |  Minor | MLlib | zhengruifeng | zhengruifeng |
| [SPARK-13980](https://issues.apache.org/jira/browse/SPARK-13980) | Incrementally serialize blocks while unrolling them in MemoryStore |  Major | Block Manager | Josh Rosen | Josh Rosen |
| [SPARK-14107](https://issues.apache.org/jira/browse/SPARK-14107) | PySpark spark.ml GBT algs need seed Param |  Minor | ML, PySpark | Joseph K. Bradley | Seth Hendrickson |
| [SPARK-13957](https://issues.apache.org/jira/browse/SPARK-13957) | Support group by ordinal in SQL |  Major | SQL | Reynold Xin | Xiao Li |
| [SPARK-14149](https://issues.apache.org/jira/browse/SPARK-14149) | Log exceptions in tryOrIOException |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-13887](https://issues.apache.org/jira/browse/SPARK-13887) | PyLint should fail fast to make errors easier to discover |  Minor | Build, PySpark | holdenk | holdenk |
| [SPARK-13919](https://issues.apache.org/jira/browse/SPARK-13919) | Resolving the Conflicts of ColumnPruning and PushPredicateThroughProject |  Major | SQL | Xiao Li | Davies Liu |
| [SPARK-14089](https://issues.apache.org/jira/browse/SPARK-14089) | Remove methods that has been deprecated since 1.1.x, 1.2.x and 1.3.x |  Minor | MLlib, Spark Core | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [SPARK-13973](https://issues.apache.org/jira/browse/SPARK-13973) | \`ipython notebook\` is going away... |  Trivial | PySpark | Bogdan Pirvu | Rekha Joshi |
| [SPARK-14175](https://issues.apache.org/jira/browse/SPARK-14175) | Simplify whole stage codegen interface |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-14161](https://issues.apache.org/jira/browse/SPARK-14161) | Parse Drop Database DDL command |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-14157](https://issues.apache.org/jira/browse/SPARK-14157) | Parse Drop Function DDL command |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-14177](https://issues.apache.org/jira/browse/SPARK-14177) | Parse DDL command: "DESCRIBE DATABASE" and "ALTER DATABASE SET DBPROPERTIES" |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-10691](https://issues.apache.org/jira/browse/SPARK-10691) | Make Logistic, Linear Regression Model evaluate() method public |  Major | ML | Hao Ren | Joseph K. Bradley |
| [SPARK-12494](https://issues.apache.org/jira/browse/SPARK-12494) | Array out of bound Exception in KMeans Yarn Mode |  Trivial | MLlib | Anandraj | Sean Owen |
| [SPARK-14102](https://issues.apache.org/jira/browse/SPARK-14102) | Block \`reset\` command in SparkShell |  Minor | Spark Shell | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-13742](https://issues.apache.org/jira/browse/SPARK-13742) | Add non-iterator interface to RandomSampler |  Major | Spark Core | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-13844](https://issues.apache.org/jira/browse/SPARK-13844) | Generate better code for filters with a non-nullable column |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-14052](https://issues.apache.org/jira/browse/SPARK-14052) | Build BytesToBytesMap in HashedRelation |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-14202](https://issues.apache.org/jira/browse/SPARK-14202) | python\_full\_outer\_join should use generator expression instead of list comp |  Major | PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-14155](https://issues.apache.org/jira/browse/SPARK-14155) | Hide UserDefinedType in Spark 2.0 |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14169](https://issues.apache.org/jira/browse/SPARK-14169) | Add UninterruptibleThread |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-14205](https://issues.apache.org/jira/browse/SPARK-14205) | remove trait Queryable |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-13981](https://issues.apache.org/jira/browse/SPARK-13981) | Improve Filter generated code to defer variable evaluation within operator |  Minor | SQL | Nong Li | Nong Li |
| [SPARK-14210](https://issues.apache.org/jira/browse/SPARK-14210) | Add timing metric for how long the query spent in scan |  Minor | . | Nong Li | Nong Li |
| [SPARK-14095](https://issues.apache.org/jira/browse/SPARK-14095) | LogisticRegression fails when a DataFrame has only a one-class label |  Minor | ML, MLlib | Grzegorz Chilkiewicz | Feynman Liang |
| [SPARK-14227](https://issues.apache.org/jira/browse/SPARK-14227) | Add method for printing out generated code for debugging |  Minor | SQL | Eric Liang | Eric Liang |
| [SPARK-14215](https://issues.apache.org/jira/browse/SPARK-14215) | Support chained Python UDF |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-14225](https://issues.apache.org/jira/browse/SPARK-14225) | Cap the length of toCommentSafeString at 128 chars |  Major | SQL | Reynold Xin | Sameer Agarwal |
| [SPARK-14254](https://issues.apache.org/jira/browse/SPARK-14254) | Add logs to help investigate the network performance |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-14268](https://issues.apache.org/jira/browse/SPARK-14268) | rename toRowExpressions and fromRowExpression to serializer and deserializer in ExpressionEncoder |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-14181](https://issues.apache.org/jira/browse/SPARK-14181) | TrainValidationSplit should have HasSeed |  Minor | ML | Xusen Yin | Xusen Yin |
| [SPARK-14259](https://issues.apache.org/jira/browse/SPARK-14259) | Add config to control maximum number of files when coalescing partitions |  Minor | SQL | Nong Li | Takeshi Yamamuro |
| [SPARK-14164](https://issues.apache.org/jira/browse/SPARK-14164) | Improve input layer validation of MultilayerPerceptronClassifier |  Minor | MLlib | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14062](https://issues.apache.org/jira/browse/SPARK-14062) | Put metrics.properties to distributed cache for Spark running on Yarn. Also Fix log4j propagation issue |  Minor | YARN | Saisai Shao | Saisai Shao |
| [SPARK-14069](https://issues.apache.org/jira/browse/SPARK-14069) | Improve SparkStatusTracker to also track executor information |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-14304](https://issues.apache.org/jira/browse/SPARK-14304) | Fix tests that don't create temp files in the \`java.io.tmpdir\` folder |  Minor | Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-14281](https://issues.apache.org/jira/browse/SPARK-14281) | Fix the java8-tests profile and run those tests in Jenkins |  Major | Project Infra, Tests | Josh Rosen | Josh Rosen |
| [SPARK-14277](https://issues.apache.org/jira/browse/SPARK-14277) | Significant amount of CPU is being consumed in SnappyNative arrayCopy method |  Major | Shuffle | Sital Kedia | Sital Kedia |
| [SPARK-14267](https://issues.apache.org/jira/browse/SPARK-14267) | Execute multiple Python UDFs in single batch |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-14242](https://issues.apache.org/jira/browse/SPARK-14242) | avoid too many copies in network when a network frame is large |  Major | Input/Output, Spark Core | Zhang, Liye | Zhang, Liye |
| [SPARK-11262](https://issues.apache.org/jira/browse/SPARK-11262) | Unit test for gradient, loss layers, memory management for multilayer perceptron |  Major | ML, Tests | Alexander Ulanov | Alexander Ulanov |
| [SPARK-14303](https://issues.apache.org/jira/browse/SPARK-14303) | Refactor k-means code in SparkRWrappers |  Major | ML, SparkR | Xiangrui Meng | Yanbo Liang |
| [SPARK-14070](https://issues.apache.org/jira/browse/SPARK-14070) | Use ORC data source for SQL queries on ORC tables |  Minor | SQL | Tejas Patil | Tejas Patil |
| [SPARK-13674](https://issues.apache.org/jira/browse/SPARK-13674) | Add wholestage codegen support to Sample |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-13825](https://issues.apache.org/jira/browse/SPARK-13825) | Upgrade to Scala 2.11.8 |  Minor | Spark Core | Jacek Laskowski | Jacek Laskowski |
| [SPARK-12857](https://issues.apache.org/jira/browse/SPARK-12857) | Streaming tab in web UI uses records and events interchangeably |  Minor | Documentation, DStreams, Web UI | Jacek Laskowski | Liwei Lin(Inactive) |
| [SPARK-13241](https://issues.apache.org/jira/browse/SPARK-13241) | add long--formatted timestamps to org.apache.spark.status.api.v1.ApplicationAttemptInfo |  Minor | Web UI | Steve Loughran | Alex Bozarth |
| [SPARK-14251](https://issues.apache.org/jira/browse/SPARK-14251) | Add SQL command for printing out generated code for debugging |  Major | SQL | Reynold Xin | Dongjoon Hyun |
| [SPARK-14338](https://issues.apache.org/jira/browse/SPARK-14338) | Improve \`SimplifyConditionals\` rule to handle \`null\` in IF/CASEWHEN |  Major | Optimizer, SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14056](https://issues.apache.org/jira/browse/SPARK-14056) | Add s3 configurations and spark.hadoop.\* configurations to hive configuration |  Minor | EC2, SQL | Sital Kedia | Sital Kedia |
| [SPARK-13996](https://issues.apache.org/jira/browse/SPARK-13996) | Add more not null attributes for Filter codegen |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-12425](https://issues.apache.org/jira/browse/SPARK-12425) | DStream union optimisation |  Minor | DStreams | Guillaume Poulin | Guillaume Poulin |
| [SPARK-14386](https://issues.apache.org/jira/browse/SPARK-14386) | spark.ml DecisionTreeModel abstraction should not be exposed |  Major | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-14284](https://issues.apache.org/jira/browse/SPARK-14284) | Rename KMeansSummary.size to clusterSizes |  Trivial | ML | Joseph K. Bradley | Shally Sangal |
| [SPARK-14345](https://issues.apache.org/jira/browse/SPARK-14345) | Decouple deserializer expression resolution from ObjectOperator |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-13063](https://issues.apache.org/jira/browse/SPARK-13063) | Make the SPARK YARN STAGING DIR as configurable |  Minor | YARN | Devaraj K | Devaraj K |
| [SPARK-529](https://issues.apache.org/jira/browse/SPARK-529) | Have a single file that controls the environmental variables and spark config options |  Major | Spark Core | Reynold Xin | Marcelo Vanzin |
| [SPARK-13211](https://issues.apache.org/jira/browse/SPARK-13211) | StreamingContext throws NoSuchElementException when created from non-existent checkpoint directory |  Minor | DStreams | Jacek Laskowski | Sean Owen |
| [SPARK-14296](https://issues.apache.org/jira/browse/SPARK-14296) | whole stage codegen support for Dataset.map |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-14416](https://issues.apache.org/jira/browse/SPARK-14416) | Add thread-safe comments for CoarseGrainedSchedulerBackend's fields |  Minor | . | Shixiong Zhu | Shixiong Zhu |
| [SPARK-14426](https://issues.apache.org/jira/browse/SPARK-14426) | Merge ParserUtils and ParseUtils |  Major | SQL | Kousuke Saruta | Kousuke Saruta |
| [SPARK-13538](https://issues.apache.org/jira/browse/SPARK-13538) | Add GaussianMixture to ML |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-14317](https://issues.apache.org/jira/browse/SPARK-14317) | Clean up hash join |  Major | . | Davies Liu | Davies Liu |
| [SPARK-13430](https://issues.apache.org/jira/browse/SPARK-13430) | Expose ml summary function in PySpark for classification and regression models |  Major | ML, MLlib, PySpark | Shubhanshu Mishra | Bryan Cutler |
| [SPARK-14444](https://issues.apache.org/jira/browse/SPARK-14444) | Add a new scalastyle \`NoScalaDoc\` to prevent ScalaDoc-style multiline comments |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14290](https://issues.apache.org/jira/browse/SPARK-14290) | Fully utilize the network bandwidth for Netty RPC by avoid significant underlying memory copy |  Major | Input/Output, Spark Core | Zhang, Liye | Zhang, Liye |
| [SPARK-14245](https://issues.apache.org/jira/browse/SPARK-14245) | webUI should display the user |  Major | Web UI | Thomas Graves | Alex Bozarth |
| [SPARK-12384](https://issues.apache.org/jira/browse/SPARK-12384) | Allow -Xms to be set differently then -Xmx |  Minor | Spark Submit, YARN | Thomas Graves | Dhruve Ashar |
| [SPARK-12740](https://issues.apache.org/jira/browse/SPARK-12740) | grouping()/grouping\_id() should work with having and order by |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-14410](https://issues.apache.org/jira/browse/SPARK-14410) | SessionCatalog needs to check function existence |  Major | SQL | Yin Huai | Andrew Or |
| [SPARK-14270](https://issues.apache.org/jira/browse/SPARK-14270) | whole stage codegen support for typed filter |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-14470](https://issues.apache.org/jira/browse/SPARK-14470) | Allow for overriding both httpclient and httpcore versions |  Trivial | Spark Core | Aaron Tokhy | Aaron Tokhy |
| [SPARK-14448](https://issues.apache.org/jira/browse/SPARK-14448) | Improvements to ColumnVector |  Minor | SQL | Ted Yu | Ted Yu |
| [SPARK-14435](https://issues.apache.org/jira/browse/SPARK-14435) | Shade Kryo in our custom Hive 1.2.1 fork |  Major | Build | Josh Rosen | Josh Rosen |
| [SPARK-14482](https://issues.apache.org/jira/browse/SPARK-14482) | Change default compression codec for Parquet from gzip to snappy |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14419](https://issues.apache.org/jira/browse/SPARK-14419) | Improve the HashedRelation for key fit within Long |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-14339](https://issues.apache.org/jira/browse/SPARK-14339) | Add python examples for DCT,MinMaxScaler,MaxAbsScaler |  Minor | . | zhengruifeng | zhengruifeng |
| [SPARK-14362](https://issues.apache.org/jira/browse/SPARK-14362) | DDL Native Support: Drop View |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-13687](https://issues.apache.org/jira/browse/SPARK-13687) | Cleanup pyspark temporary files |  Minor | PySpark | Damir | holdenk |
| [SPARK-14497](https://issues.apache.org/jira/browse/SPARK-14497) | Use top instead of sortBy() to get top N frequent words as dict in CountVectorizer |  Major | ML | Feng Wang | Feng Wang |
| [SPARK-14415](https://issues.apache.org/jira/browse/SPARK-14415) | All functions should show usages by command \`DESC FUNCTION\` |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14372](https://issues.apache.org/jira/browse/SPARK-14372) | Dataset.randomSplit() needs a Java version |  Major | SQL | Cheng Lian | Rekha Joshi |
| [SPARK-14510](https://issues.apache.org/jira/browse/SPARK-14510) | Add args-checking for LDA and StreamingKMeans |  Minor | MLlib | zhengruifeng | zhengruifeng |
| [SPARK-14502](https://issues.apache.org/jira/browse/SPARK-14502) | Add optimization for Binary Comparison Simplification |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-10521](https://issues.apache.org/jira/browse/SPARK-10521) | Utilize Docker to test DB2 JDBC Dialect support |  Major | SQL | Luciano Resende | Luciano Resende |
| [SPARK-14475](https://issues.apache.org/jira/browse/SPARK-14475) | Propagate user-defined context from driver to executors |  Major | Spark Core | Eric Liang | Eric Liang |
| [SPARK-14508](https://issues.apache.org/jira/browse/SPARK-14508) | Add a new ScalaStyle Rule \`OmitBracesInCase\` |  Major | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-3724](https://issues.apache.org/jira/browse/SPARK-3724) | RandomForest: More options for feature subset size |  Minor | MLlib | Joseph K. Bradley | Yong Tang |
| [SPARK-14324](https://issues.apache.org/jira/browse/SPARK-14324) | Refactor GLMs code in SparkRWrappers |  Major | ML, SparkR | Xiangrui Meng | Yanbo Liang |
| [SPARK-13322](https://issues.apache.org/jira/browse/SPARK-13322) | AFTSurvivalRegression should support feature standardization |  Major | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-14556](https://issues.apache.org/jira/browse/SPARK-14556) | Code clean-ups for package o.a.s.sql.execution.streaming.state |  Minor | SQL | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [SPARK-14562](https://issues.apache.org/jira/browse/SPARK-14562) | Improve constraints propagation in Union |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-14547](https://issues.apache.org/jira/browse/SPARK-14547) | Avoid DNS resolution for reusing connections |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14581](https://issues.apache.org/jira/browse/SPARK-14581) | Improve filter push down |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-14375](https://issues.apache.org/jira/browse/SPARK-14375) | Unit test for spark.ml KMeansSummary |  Major | ML | Joseph K. Bradley | Yanbo Liang |
| [SPARK-14509](https://issues.apache.org/jira/browse/SPARK-14509) | Add python CountVectorizerExample |  Minor | Documentation, ML, PySpark | zhengruifeng | zhengruifeng |
| [SPARK-14472](https://issues.apache.org/jira/browse/SPARK-14472) | Cleanup PySpark-ML Java wrapper classes so that JavaWrapper will inherit from JavaCallable |  Minor | ML, PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-14596](https://issues.apache.org/jira/browse/SPARK-14596) | Remove not used SqlNewHadoopRDD |  Trivial | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-14518](https://issues.apache.org/jira/browse/SPARK-14518) | Support Comment in CREATE VIEW |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-14565](https://issues.apache.org/jira/browse/SPARK-14565) | RandomForest should use parseInt and parseDouble for feature subset size instead of regexes |  Minor | ML | Xiangrui Meng | Yong Tang |
| [SPARK-12869](https://issues.apache.org/jira/browse/SPARK-12869) | Optimize conversion from BlockMatrix to IndexedRowMatrix |  Minor | MLlib | Fokko Driesprong | Fokko Driesprong |
| [SPARK-14601](https://issues.apache.org/jira/browse/SPARK-14601) | Minor doc/usage changes related to removal of Spark assembly |  Major | Documentation | Mark Grover | Mark Grover |
| [SPARK-14275](https://issues.apache.org/jira/browse/SPARK-14275) | Reimplement TypedAggregateExpression to DeclarativeAggregate |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-14630](https://issues.apache.org/jira/browse/SPARK-14630) | Code style: public abstract methods should have explicit return types |  Minor | Build | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [SPARK-14370](https://issues.apache.org/jira/browse/SPARK-14370) | Avoid creating duplicate ids in OnlineLDAOptimizer |  Trivial | MLlib | Joseph K. Bradley | Pravin Gadakh |
| [SPARK-14633](https://issues.apache.org/jira/browse/SPARK-14633) | Use more readable format to show memory bytes in Error Message |  Trivial | . | Peter Ableda | Peter Ableda |
| [SPARK-14104](https://issues.apache.org/jira/browse/SPARK-14104) | All Python param setters should use the \`\_set\` method. |  Minor | ML, PySpark | Seth Hendrickson | Seth Hendrickson |
| [SPARK-14605](https://issues.apache.org/jira/browse/SPARK-14605) | Python spark.ml classes should use unicode uid |  Minor | ML, PySpark | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-14696](https://issues.apache.org/jira/browse/SPARK-14696) | Needs implicit encoders for boxed primitive types |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-13807](https://issues.apache.org/jira/browse/SPARK-13807) | De-duplicate \`Python\*Helper\` instantiation code in PySpark streaming |  Major | DStreams, PySpark | Josh Rosen | Josh Rosen |
| [SPARK-14614](https://issues.apache.org/jira/browse/SPARK-14614) | Add \`bround\` function |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14655](https://issues.apache.org/jira/browse/SPARK-14655) | Add \`assert\_true\` function |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14440](https://issues.apache.org/jira/browse/SPARK-14440) | Remove PySpark ml.pipeline's specific Reader and Writer |  Trivial | ML, PySpark | Xusen Yin | Xusen Yin |
| [SPARK-14710](https://issues.apache.org/jira/browse/SPARK-14710) | Rename gen/genCode to genCode/doGenCode to better reflect the semantics |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-14718](https://issues.apache.org/jira/browse/SPARK-14718) | Avoid mutating ExprCode in doGenCode |  Major | . | Sameer Agarwal | Sameer Agarwal |
| [SPARK-14722](https://issues.apache.org/jira/browse/SPARK-14722) | Rename upstreams() -\> inputRDDs() in WholeStageCodegen |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-13904](https://issues.apache.org/jira/browse/SPARK-13904) | Add support for pluggable cluster manager |  Major | Scheduler | Hemant Bhanawat | Hemant Bhanawat |
| [SPARK-14577](https://issues.apache.org/jira/browse/SPARK-14577) | spark.sql.codegen.maxCaseBranches config option |  Major | SQL | Reynold Xin | Dongjoon Hyun |
| [SPARK-14491](https://issues.apache.org/jira/browse/SPARK-14491) | refactor object operator framework to make it easy to eliminate serializations |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-4226](https://issues.apache.org/jira/browse/SPARK-4226) | SparkSQL - Add support for subqueries in predicates |  Major | SQL | Terry Siu | Herman van Hovell |
| [SPARK-14733](https://issues.apache.org/jira/browse/SPARK-14733) | Allow custom timing control in microbenchmarks |  Major | . | Eric Liang | Eric Liang |
| [SPARK-14717](https://issues.apache.org/jira/browse/SPARK-14717) | Scala, Python APIs for Dataset.unpersist differ in default blocking value |  Minor | PySpark, SQL | Joseph K. Bradley | Felix Cheung |
| [SPARK-13905](https://issues.apache.org/jira/browse/SPARK-13905) | Change signature of as.data.frame() to be consistent with the R base package |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-14600](https://issues.apache.org/jira/browse/SPARK-14600) | Push predicates through Expand |  Major | SQL | Davies Liu | Wenchen Fan |
| [SPARK-14639](https://issues.apache.org/jira/browse/SPARK-14639) | Add \`bround\` function in Python/R. |  Major | PySpark, SparkR | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-9013](https://issues.apache.org/jira/browse/SPARK-9013) | generate MutableProjection directly instead of return a function |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-14687](https://issues.apache.org/jira/browse/SPARK-14687) | Call path.getFileSystem(conf) instead of call FileSystem.get(conf) |  Minor | MLlib, Spark Core, SQL | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [SPARK-14214](https://issues.apache.org/jira/browse/SPARK-14214) | Update State Store to give a more get/put hashmap-style interface |  Major | SQL | Tathagata Das | Tathagata Das |
| [SPARK-13842](https://issues.apache.org/jira/browse/SPARK-13842) | Consider \_\_iter\_\_ and \_\_getitem\_\_ methods for pyspark.sql.types.StructType |  Minor | PySpark | Shea Parkes | Shea Parkes |
| [SPARK-8393](https://issues.apache.org/jira/browse/SPARK-8393) | JavaStreamingContext#awaitTermination() throws non-declared InterruptedException |  Minor | DStreams | Jaromir Vanek | Sean Owen |
| [SPARK-14787](https://issues.apache.org/jira/browse/SPARK-14787) | Upgrade Joda-Time library from 2.9 to 2.9.3 |  Trivial | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-13988](https://issues.apache.org/jira/browse/SPARK-13988) | Large history files block new applications from showing up in History UI. |  Major | Spark Core | Parth Brahmbhatt | Parth Brahmbhatt |
| [SPARK-14780](https://issues.apache.org/jira/browse/SPARK-14780) | Add \`setLogLevel\` to SparkR |  Major | SparkR | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14724](https://issues.apache.org/jira/browse/SPARK-14724) | Improve performance of sorting by using radix sort when possible |  Major | Spark Core | Eric Liang | Eric Liang |
| [SPARK-7992](https://issues.apache.org/jira/browse/SPARK-7992) | Hide private classes/objects in in generated Java API doc |  Major | Build, Documentation | Xiangrui Meng | Jakob Odersky |
| [SPARK-14479](https://issues.apache.org/jira/browse/SPARK-14479) | GLM supports output link prediction |  Major | ML, SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-10001](https://issues.apache.org/jira/browse/SPARK-10001) | Allow Ctrl-C in spark-shell to kill running job |  Minor | Spark Shell | Cheolsoo Park | Jakob Odersky |
| [SPARK-6429](https://issues.apache.org/jira/browse/SPARK-6429) | Add to style checker "hashCode and equals should be defined together" |  Major | Build | Reynold Xin | Joan Goyeau |
| [SPARK-14669](https://issues.apache.org/jira/browse/SPARK-14669) | Some SQL metrics is broken when whole-stage codegen enabled |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13348](https://issues.apache.org/jira/browse/SPARK-13348) | Avoid duplicated broadcasts |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-14796](https://issues.apache.org/jira/browse/SPARK-14796) | Add spark.sql.optimizer.inSetConversionThreshold config option |  Major | Optimizer, SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14582](https://issues.apache.org/jira/browse/SPARK-14582) | Increase the parallelism for small tables |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-14855](https://issues.apache.org/jira/browse/SPARK-14855) | Add "Exec" suffix to all physical operators |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14863](https://issues.apache.org/jira/browse/SPARK-14863) | Cache TreeNode's hashCode |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-14866](https://issues.apache.org/jira/browse/SPARK-14866) | Break SQLQuerySuite out into smaller test suites |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14551](https://issues.apache.org/jira/browse/SPARK-14551) | Reduce number of NameNode calls in OrcRelation with FileSourceStrategy mode |  Minor | SQL | Rajesh Balamohan | Rajesh Balamohan |
| [SPARK-14594](https://issues.apache.org/jira/browse/SPARK-14594) | Improve error messages for RDD API |  Major | SparkR | Marco Gaido | Felix Cheung |
| [SPARK-14871](https://issues.apache.org/jira/browse/SPARK-14871) | Disable StatsReportListener to declutter output |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14869](https://issues.apache.org/jira/browse/SPARK-14869) | Don't mask exceptions in ResolveRelations |  Major | . | Reynold Xin | Reynold Xin |
| [SPARK-13267](https://issues.apache.org/jira/browse/SPARK-13267) | Document ?params for the v1 REST API |  Minor | Documentation | Steve Loughran | Steve Loughran |
| [SPARK-14548](https://issues.apache.org/jira/browse/SPARK-14548) | Support !\> and !\< operator in Spark SQL |  Minor | SQL | Jia Li | Jia Li |
| [SPARK-14790](https://issues.apache.org/jira/browse/SPARK-14790) | Scalastyle should run on compile in sbt |  Major | . | Eric Liang | Eric Liang |
| [SPARK-14758](https://issues.apache.org/jira/browse/SPARK-14758) | Add checking for StepSize and Tol |  Trivial | ML | zhengruifeng | zhengruifeng |
| [SPARK-14636](https://issues.apache.org/jira/browse/SPARK-14636) | Spark should fail fast if executor/driver memory is too small for the StaticMemoryManager |  Minor | . | Peter Ableda | Peter Ableda |
| [SPARK-14768](https://issues.apache.org/jira/browse/SPARK-14768) | Remove expectedType arg for PySpark Param |  Minor | ML, PySpark | Joseph K. Bradley | Jason C Lee |
| [SPARK-14889](https://issues.apache.org/jira/browse/SPARK-14889) | scala.MatchError: NONE (of class scala.Enumeration$Val) when spark.scheduler.mode=NONE |  Minor | Spark Core | Jacek Laskowski | Subhobrata Dey |
| [SPARK-14756](https://issues.apache.org/jira/browse/SPARK-14756) | Use parseLong instead of valueOf |  Trivial | . | Azeem Jiva | Azeem Jiva |
| [SPARK-14912](https://issues.apache.org/jira/browse/SPARK-14912) | Propagate data source options to Hadoop configurations |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11559](https://issues.apache.org/jira/browse/SPARK-11559) | Make \`runs\` no effect in k-means |  Major | MLlib | Xiangrui Meng | Yanbo Liang |
| [SPARK-14903](https://issues.apache.org/jira/browse/SPARK-14903) | Revert: Change MLWritable.write to be a property |  Major | ML, PySpark | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-14853](https://issues.apache.org/jira/browse/SPARK-14853) | Support LeftSemi/LeftAnti in SortMergeJoin |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-14907](https://issues.apache.org/jira/browse/SPARK-14907) | Use repartition in GLMRegressionModel.save |  Trivial | MLlib | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14514](https://issues.apache.org/jira/browse/SPARK-14514) | Add python example for VectorSlicer |  Minor | Documentation, ML, PySpark | zhengruifeng | zhengruifeng |
| [SPARK-12301](https://issues.apache.org/jira/browse/SPARK-12301) | Remove final from classes in spark.ml trees and ensembles where possible |  Major | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-14874](https://issues.apache.org/jira/browse/SPARK-14874) | Remove the obsolete Batch representation |  Minor | SQL | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [SPARK-14729](https://issues.apache.org/jira/browse/SPARK-14729) | Implement an existing cluster manager with New ExternalClusterManager interface |  Minor | Scheduler | Hemant Bhanawat | Hemant Bhanawat |
| [SPARK-14867](https://issues.apache.org/jira/browse/SPARK-14867) | Remove \`--force\` option in \`build/mvn\`. |  Minor | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14899](https://issues.apache.org/jira/browse/SPARK-14899) | Remove spark.ml HashingTF hashingAlg option |  Major | ML, PySpark | Joseph K. Bradley | Yanbo Liang |
| [SPARK-14966](https://issues.apache.org/jira/browse/SPARK-14966) | SizeEstimator should ignore classes in the scala.reflect package |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-14961](https://issues.apache.org/jira/browse/SPARK-14961) | Support LongToUnsafeRowMap larger than 1G |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-14626](https://issues.apache.org/jira/browse/SPARK-14626) | Simplify accumulators and task metrics |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-14576](https://issues.apache.org/jira/browse/SPARK-14576) | Spark console should display Web UI url |  Minor | Web UI | Ergin Seyfe | Ergin Seyfe |
| [SPARK-12235](https://issues.apache.org/jira/browse/SPARK-12235) | Enhance mutate() to support replace existing columns |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-6735](https://issues.apache.org/jira/browse/SPARK-6735) | Provide options to make maximum executor failure count ( which kills the application ) relative to a window duration or disable it. |  Major | Spark Submit, YARN | Twinkle Sachdeva | Saisai Shao |
| [SPARK-14882](https://issues.apache.org/jira/browse/SPARK-14882) | Clarify that Spark can be cross-built for other Scala versions |  Trivial | Documentation | Ben McCann | Sean Owen |
| [SPARK-14916](https://issues.apache.org/jira/browse/SPARK-14916) | A more friendly tostring for FreqItemset in mllib.fpm |  Trivial | MLlib | yuhao yang | yuhao yang |
| [SPARK-12810](https://issues.apache.org/jira/browse/SPARK-12810) | PySpark CrossValidatorModel should support avgMetrics |  Major | ML, PySpark | Feynman Liang | Kai Jiang |
| [SPARK-14862](https://issues.apache.org/jira/browse/SPARK-14862) | Tree and ensemble classification: do not require label metadata |  Major | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-14836](https://issues.apache.org/jira/browse/SPARK-14836) | Zip local jars before uploading to distributed cache |  Minor | YARN | Saisai Shao | Saisai Shao |
| [SPARK-14829](https://issues.apache.org/jira/browse/SPARK-14829) | Deprecate GLM APIs using SGD |  Major | MLlib | Joseph K. Bradley | zhengruifeng |
| [SPARK-12660](https://issues.apache.org/jira/browse/SPARK-12660) | Rewrite except using anti-join |  Major | SQL | Reynold Xin | Xiao Li |
| [SPARK-14996](https://issues.apache.org/jira/browse/SPARK-14996) | Add TPCDS Benchmark Queries for SparkSQL |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-14969](https://issues.apache.org/jira/browse/SPARK-14969) | Remove unnecessary compute function in LogisticGradient |  Trivial | MLlib | ding | ding |
| [SPARK-13664](https://issues.apache.org/jira/browse/SPARK-13664) | Simplify and Speedup HadoopFSRelation |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-13785](https://issues.apache.org/jira/browse/SPARK-13785) | Deprecate model field in ML model summary classes |  Minor | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-12854](https://issues.apache.org/jira/browse/SPARK-12854) | Vectorize Parquet reader |  Major | SQL | Reynold Xin | Nong Li |
| [SPARK-14646](https://issues.apache.org/jira/browse/SPARK-14646) | k-means save/load should put one cluster per row |  Minor | ML | Xiangrui Meng | Joseph K. Bradley |
| [SPARK-14858](https://issues.apache.org/jira/browse/SPARK-14858) | Push predicates with subquery |  Major | SQL | Davies Liu | Herman van Hovell |
| [SPARK-15003](https://issues.apache.org/jira/browse/SPARK-15003) | Use ConcurrentHashMap in place of HashMap for NewAccumulator.originals |  Minor | Spark Core | Ted Yu | Ted Yu |
| [SPARK-14850](https://issues.apache.org/jira/browse/SPARK-14850) | VectorUDT/MatrixUDT should take primitive arrays without boxing |  Critical | ML, SQL | Xiangrui Meng | Wenchen Fan |
| [SPARK-14825](https://issues.apache.org/jira/browse/SPARK-14825) | Merge functionality in Hive module into SQL core module |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14831](https://issues.apache.org/jira/browse/SPARK-14831) | Make ML APIs in SparkR consistent |  Critical | ML, SparkR | Xiangrui Meng | Timothy Hunter |
| [SPARK-13485](https://issues.apache.org/jira/browse/SPARK-13485) | (Dataset-oriented) API evolution in Spark 2.0 |  Blocker | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14952](https://issues.apache.org/jira/browse/SPARK-14952) | Remove methods that were deprecated in 1.6.0 |  Minor | ML, Spark Core | Herman van Hovell | Herman van Hovell |
| [SPARK-14060](https://issues.apache.org/jira/browse/SPARK-14060) | Move StringToColumn implicit class into SQLImplicits |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14637](https://issues.apache.org/jira/browse/SPARK-14637) | object expressions cleanup |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-12454](https://issues.apache.org/jira/browse/SPARK-12454) | Add ExpressionDescription to expressions that are registered in FunctionRegistry |  Major | SQL | Yin Huai | Dongjoon Hyun |
| [SPARK-14830](https://issues.apache.org/jira/browse/SPARK-14830) | Add RemoveRepetitionFromGroupExpressions optimizer |  Major | Optimizer, SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-13745](https://issues.apache.org/jira/browse/SPARK-13745) | Support columnar in memory representation on Big Endian platforms |  Major | SQL | Tim Preece | Pete Robbins |
| [SPARK-10343](https://issues.apache.org/jira/browse/SPARK-10343) | Consider nullability of expression in codegen |  Critical | SQL | Davies Liu | Davies Liu |
| [SPARK-14747](https://issues.apache.org/jira/browse/SPARK-14747) | Add assertStreaming/assertNoneStreaming checks in DataFrameWriter |  Minor | SQL | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [SPARK-15047](https://issues.apache.org/jira/browse/SPARK-15047) | Cleanup SQLParser |  Minor | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-14685](https://issues.apache.org/jira/browse/SPARK-14685) | Properly document heritability of localProperties |  Minor | Spark Core | Marcin Tustin | Marcin Tustin |
| [SPARK-13749](https://issues.apache.org/jira/browse/SPARK-13749) | Faster pivot implementation for many distinct values with two phase aggregation |  Major | SQL | Andrew Ray | Andrew Ray |
| [SPARK-6717](https://issues.apache.org/jira/browse/SPARK-6717) | Clear shuffle files after checkpointing in ALS |  Major | MLlib | Xiangrui Meng | holdenk |
| [SPARK-14971](https://issues.apache.org/jira/browse/SPARK-14971) | PySpark ML Params setter code clean up |  Minor | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-15091](https://issues.apache.org/jira/browse/SPARK-15091) | Fix warnings and a failure in SparkR test cases with testthat version 1.0.1 |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-9819](https://issues.apache.org/jira/browse/SPARK-9819) | reduceBy(KeyAnd)Window should specify which is the accumulator argument in invReduceFunc |  Minor | Documentation, DStreams | François Garillot | François Garillot |
| [SPARK-15104](https://issues.apache.org/jira/browse/SPARK-15104) | Bad spacing in log line |  Trivial | . | Andrew Ash | Andrew Ash |
| [SPARK-14422](https://issues.apache.org/jira/browse/SPARK-14422) | Improve handling of optional configs in SQLConf |  Minor | SQL | Marcelo Vanzin | Sandeep Singh |
| [SPARK-13269](https://issues.apache.org/jira/browse/SPARK-13269) | Expose more executor stats in stable status API |  Major | Spark Core | Andrew Or | Wenchen Fan |
| [SPARK-14844](https://issues.apache.org/jira/browse/SPARK-14844) | KMeansModel in spark.ml should allow to change featureCol and predictionCol |  Trivial | ML | Dominik Jastrzębski | Dominik Jastrzębski |
| [SPARK-4224](https://issues.apache.org/jira/browse/SPARK-4224) | Support group acls |  Major | Spark Core | Thomas Graves | Dhruve Ashar |
| [SPARK-14951](https://issues.apache.org/jira/browse/SPARK-14951) | Subexpression elimination in wholestage codegen version of TungstenAggregate |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-15121](https://issues.apache.org/jira/browse/SPARK-15121) | Improve logging of external shuffle handler |  Minor | Shuffle | Thomas Graves | Thomas Graves |
| [SPARK-13001](https://issues.apache.org/jira/browse/SPARK-13001) | Coarse-grained Mesos scheduler should reject offers for longer period of time when reached max cores |  Major | Mesos, Scheduler | Sebastien Rainville | Sebastien Rainville |
| [SPARK-15132](https://issues.apache.org/jira/browse/SPARK-15132) | Debug log for generated code should be printed with proper indentation |  Trivial | SQL | Kousuke Saruta | Kousuke Saruta |
| [SPARK-15045](https://issues.apache.org/jira/browse/SPARK-15045) | Remove dead code in TaskMemoryManager.cleanUpAllAllocatedMemory for pageTable |  Minor | Spark Core | Jacek Laskowski | Abhinav Gupta |
| [SPARK-15123](https://issues.apache.org/jira/browse/SPARK-15123) | upgrade org.json4s to 3.2.11 version |  Minor | Spark Core | Lining Sun | Lining Sun |
| [SPARK-15106](https://issues.apache.org/jira/browse/SPARK-15106) | Add package documentation for ML and remove BETA from Scala & Java for ML pipeline API. |  Trivial | Documentation, ML, PySpark | holdenk | holdenk |
| [SPARK-15158](https://issues.apache.org/jira/browse/SPARK-15158) | Too aggressive logging in SizeBasedRollingPolicy? |  Trivial | Spark Core | Kai Wang | Kai Wang |
| [SPARK-9926](https://issues.apache.org/jira/browse/SPARK-9926) | Parallelize file listing for partitioned Hive table |  Major | SQL | Cheolsoo Park | Ryan Blue |
| [SPARK-15152](https://issues.apache.org/jira/browse/SPARK-15152) | Scaladoc and Code style Improvements |  Minor | Documentation, ML, Spark Core, SQL, YARN | Jacek Laskowski | Jacek Laskowski |
| [SPARK-14512](https://issues.apache.org/jira/browse/SPARK-14512) | Add python example for QuantileDiscretizer |  Minor | . | zhengruifeng | zhengruifeng |
| [SPARK-14050](https://issues.apache.org/jira/browse/SPARK-14050) | Add multiple languages support for Stop Words Remover |  Major | ML | Burak KÖSE | Burak KÖSE |
| [SPARK-1239](https://issues.apache.org/jira/browse/SPARK-1239) | Improve fetching of map output statuses |  Major | Shuffle, Spark Core | Patrick Wendell | Thomas Graves |
| [SPARK-15178](https://issues.apache.org/jira/browse/SPARK-15178) | Remove LazyFileRegion |  Major | Shuffle | Thomas Graves | Sandeep Singh |
| [SPARK-15136](https://issues.apache.org/jira/browse/SPARK-15136) | Linkify ML PyDoc |  Minor | . | holdenk | holdenk |
| [SPARK-15172](https://issues.apache.org/jira/browse/SPARK-15172) | Warning message should explicitly tell user initial coefficients is ignored if its size doesn't match expected size in LogisticRegression |  Trivial | ML | ding | ding |
| [SPARK-15093](https://issues.apache.org/jira/browse/SPARK-15093) | create/delete/rename directory for InMemoryCatalog operations if needed |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-15225](https://issues.apache.org/jira/browse/SPARK-15225) | Replace SQLContext with SparkSession in Encoder documentation |  Minor | Documentation | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-15220](https://issues.apache.org/jira/browse/SPARK-15220) | Add hyperlink to "running application" and "completed application" |  Minor | Web UI | Mao, Wei | Mao, Wei |
| [SPARK-15210](https://issues.apache.org/jira/browse/SPARK-15210) | Add missing @DeveloperApi annotation in sql.types |  Trivial | SQL | zhengruifeng | zhengruifeng |
| [SPARK-14972](https://issues.apache.org/jira/browse/SPARK-14972) | Improve performance of JSON schema inference's inferField step |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-15229](https://issues.apache.org/jira/browse/SPARK-15229) | Make case sensitivity setting internal |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14542](https://issues.apache.org/jira/browse/SPARK-14542) | PipeRDD should allow configurable buffer size for the stdin writer |  Minor | . | Sital Kedia | Sital Kedia |
| [SPARK-14773](https://issues.apache.org/jira/browse/SPARK-14773) | Enable the tests in HiveCompatibilitySuite for subquery |  Major | SQL | Davies Liu | Herman van Hovell |
| [SPARK-15195](https://issues.apache.org/jira/browse/SPARK-15195) | Improve PyDoc for ml.tuning |  Trivial | Documentation, PySpark | holdenk | holdenk |
| [SPARK-15249](https://issues.apache.org/jira/browse/SPARK-15249) | Use FunctionResource instead of (String, String) in CreateFunction and CatalogFunction for resource |  Minor | SQL | Sandeep Singh | Sandeep Singh |
| [SPARK-15250](https://issues.apache.org/jira/browse/SPARK-15250) | Remove deprecated json API in DataFrameReader |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-15255](https://issues.apache.org/jira/browse/SPARK-15255) | RDD name from DataFrame op should not include full local relation data |  Minor | SQL, Web UI | Joseph K. Bradley | Davies Liu |
| [SPARK-14340](https://issues.apache.org/jira/browse/SPARK-14340) | Add Scala Example and User DOC for ml.BisectingKMeans |  Minor | . | zhengruifeng | zhengruifeng |
| [SPARK-15189](https://issues.apache.org/jira/browse/SPARK-15189) | ml.Evaluation pydoc issues |  Trivial | Documentation, ML, PySpark | holdenk | holdenk |
| [SPARK-14976](https://issues.apache.org/jira/browse/SPARK-14976) | make StreamingContext.textFileStream support wildcard |  Minor | DStreams | Mao, Wei | Mao, Wei |
| [SPARK-15238](https://issues.apache.org/jira/browse/SPARK-15238) | Clarify Python 3 support in docs |  Trivial | Documentation, PySpark | Nicholas Chammas | Nicholas Chammas |
| [SPARK-15160](https://issues.apache.org/jira/browse/SPARK-15160) | support data source table in InMemoryCatalog |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-15281](https://issues.apache.org/jira/browse/SPARK-15281) | PySpark ML GBTRegressor lacks impurity param |  Trivial | ML, PySpark | holdenk | holdenk |
| [SPARK-15188](https://issues.apache.org/jira/browse/SPARK-15188) | PySpark NaiveBayes is missing Thresholds param |  Trivial | ML, PySpark | holdenk | holdenk |
| [SPARK-15310](https://issues.apache.org/jira/browse/SPARK-15310) | Rename HiveTypeCoercion -\> TypeCoercion |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15061](https://issues.apache.org/jira/browse/SPARK-15061) | Upgrade Py4J to 0.10.1 |  Minor | PySpark | Chris Kanich | holdenk |
| [SPARK-15267](https://issues.apache.org/jira/browse/SPARK-15267) | Refactor and add some classes for options in datasources like CSVOptions or JSONOptions |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-15197](https://issues.apache.org/jira/browse/SPARK-15197) | Improve documentation for countApprox and related functions |  Minor | . | Nicholas Tietz | Nicholas Tietz |
| [SPARK-14979](https://issues.apache.org/jira/browse/SPARK-14979) | Add examples for GeneralizedLinearRegression |  Minor | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-15290](https://issues.apache.org/jira/browse/SPARK-15290) | Move annotations, like @Since / @DeveloperApi, into spark-tags |  Minor | Build | Sean Owen | Sean Owen |
| [SPARK-15351](https://issues.apache.org/jira/browse/SPARK-15351) | RowEncoder should support array as the external type for ArrayType |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-15333](https://issues.apache.org/jira/browse/SPARK-15333) | Reorganize building-spark.md; rationalize vs wiki |  Minor | Documentation | Sean Owen | Sean Owen |
| [SPARK-15182](https://issues.apache.org/jira/browse/SPARK-15182) | Copy MLlib doc to ML: ml.feature |  Minor | ML | yuhao yang | yuhao yang |
| [SPARK-11735](https://issues.apache.org/jira/browse/SPARK-11735) | Add a check in the constructor of SqlContext to make sure the SparkContext is not stopped |  Major | SQL | Yin Huai | Shixiong Zhu |
| [SPARK-14978](https://issues.apache.org/jira/browse/SPARK-14978) | PySpark TrainValidationSplitModel should support validationMetrics |  Major | PySpark | Kai Jiang | Takuya Kuwahara |
| [SPARK-15322](https://issues.apache.org/jira/browse/SPARK-15322) | update deprecate accumulator usage into accumulatorV2 in mllib |  Minor | ML, MLlib | Weichen Xu | Weichen Xu |
| [SPARK-15346](https://issues.apache.org/jira/browse/SPARK-15346) | Reduce duplicate computation in picking initial points in LocalKMeans |  Minor | . | Abraham Zhan | Abraham Zhan |
| [SPARK-14939](https://issues.apache.org/jira/browse/SPARK-14939) | Add FoldablePropagation optimizer |  Major | Optimizer, SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-15362](https://issues.apache.org/jira/browse/SPARK-15362) | Make spark.ml KMeansModel load backwards compatible |  Major | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-15292](https://issues.apache.org/jira/browse/SPARK-15292) | ML 2.0 QA: Scala APIs audit for classification |  Major | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-15361](https://issues.apache.org/jira/browse/SPARK-15361) | ML 2.0 QA: Scala APIs audit for clustering |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-15414](https://issues.apache.org/jira/browse/SPARK-15414) | Make the mllib,ml linalg type conversion APIs public |  Major | ML, MLlib | Joseph K. Bradley | Sandeep Singh |
| [SPARK-15416](https://issues.apache.org/jira/browse/SPARK-15416) | Display a better message for not finding classes removed in Spark 2.0 |  Major | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-15296](https://issues.apache.org/jira/browse/SPARK-15296) | Refactor All Java Tests that use SparkSession |  Minor | ML, MLlib, Tests | Sandeep Singh | Sandeep Singh |
| [SPARK-11827](https://issues.apache.org/jira/browse/SPARK-11827) | Support java.math.BigInteger in Type-Inference utilities for POJOs |  Minor | SQL | Abhilash Pallerlamudi | kevin yu |
| [SPARK-15335](https://issues.apache.org/jira/browse/SPARK-15335) | Implement TRUNCATE TABLE Command |  Minor | SQL | Weizhong | Lianhui Wang |
| [SPARK-15363](https://issues.apache.org/jira/browse/SPARK-15363) | Example code shouldn't use VectorImplicits.\_, asML/fromML |  Major | Documentation, ML | Xiangrui Meng | Miao Wang |
| [SPARK-15398](https://issues.apache.org/jira/browse/SPARK-15398) | Update the warning message to recommend ML usage |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-15339](https://issues.apache.org/jira/browse/SPARK-15339) | ML 2.0 QA: Scala APIs and code audit for regression |  Major | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-15222](https://issues.apache.org/jira/browse/SPARK-15222) | SparkR ML examples update in 2.0 |  Minor | ML, SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-15438](https://issues.apache.org/jira/browse/SPARK-15438) | Improve the explain of whole-stage codegen |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-15205](https://issues.apache.org/jira/browse/SPARK-15205) | Codegen can compile the same source code more than twice |  Major | SQL | Kousuke Saruta | Kousuke Saruta |
| [SPARK-15280](https://issues.apache.org/jira/browse/SPARK-15280) |  Extract ORC serialization logic from OrcOutputWriter for reusability |  Minor | Input/Output | Ergin Seyfe | Ergin Seyfe |
| [SPARK-15471](https://issues.apache.org/jira/browse/SPARK-15471) | ScalaReflection cleanup |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-15431](https://issues.apache.org/jira/browse/SPARK-15431) | Support LIST FILE(s)\|JAR(s) command natively |  Major | SQL | Xin Wu | Xin Wu |
| [SPARK-15464](https://issues.apache.org/jira/browse/SPARK-15464) | Replace SQLContext and SparkContext with SparkSession using builder pattern in python testsuites |  Minor | ML, MLlib, SQL, Tests | Weichen Xu | Weichen Xu |
| [SPARK-15442](https://issues.apache.org/jira/browse/SPARK-15442) | PySpark QuantileDiscretizer missing "relativeError" param |  Minor | ML, PySpark | Nick Pentreath | Nick Pentreath |
| [SPARK-13135](https://issues.apache.org/jira/browse/SPARK-13135) | Don't print expressions recursively in generated code |  Major | SQL | Reynold Xin | Dongjoon Hyun |
| [SPARK-12949](https://issues.apache.org/jira/browse/SPARK-12949) | Support common expression elimination |  Major | SQL | Davies Liu | Liang-Chi Hsieh |
| [SPARK-15365](https://issues.apache.org/jira/browse/SPARK-15365) | Metastore relation should fallback to HDFS size if statistics are not available from table meta data. |  Major | SQL | Parth Brahmbhatt | Parth Brahmbhatt |
| [SPARK-15498](https://issues.apache.org/jira/browse/SPARK-15498) | fix slow tests |  Major | Tests | Wenchen Fan | Wenchen Fan |
| [SPARK-15412](https://issues.apache.org/jira/browse/SPARK-15412) | Improve linear & isotonic regression methods PyDocs |  Trivial | Documentation, PySpark | holdenk | holdenk |
| [SPARK-15537](https://issues.apache.org/jira/browse/SPARK-15537) | clean up the temp folders after finishing the tests |  Major | SQL | Bo Meng | Bo Meng |
| [SPARK-15542](https://issues.apache.org/jira/browse/SPARK-15542) | Make error message clear for script './R/install-dev.sh' when R is missing on Mac |  Minor | SparkR | Xin Ren | Xin Ren |
| [SPARK-15584](https://issues.apache.org/jira/browse/SPARK-15584) | Abstract duplicate code: "spark.sql.sources." properties |  Minor | SQL | Andrew Or | Dongjoon Hyun |
| [SPARK-15484](https://issues.apache.org/jira/browse/SPARK-15484) | Document Iteratively reweighted least squares (IRLS) in user guide |  Minor | Documentation, ML | Yanbo Liang | Yanbo Liang |
| [SPARK-15413](https://issues.apache.org/jira/browse/SPARK-15413) | Change \`toBreeze\` to \`asBreeze\` in Vector and Matrix |  Major | ML, MLlib | DB Tsai | DB Tsai |
| [SPARK-15645](https://issues.apache.org/jira/browse/SPARK-15645) | Fix some typos of Streaming module |  Trivial | DStreams | Xin Ren | Xin Ren |
| [SPARK-15641](https://issues.apache.org/jira/browse/SPARK-15641) | Incorrect Completed for Incomplete applications in HistoryServer |  Trivial | . | Jacek Laskowski | Cedar Pan |
| [SPARK-15649](https://issues.apache.org/jira/browse/SPARK-15649) | Avoid serializing MetastoreRelation in HiveTableScanExec |  Minor | . | Lianhui Wang | Lianhui Wang |
| [SPARK-15670](https://issues.apache.org/jira/browse/SPARK-15670) | Add deprecate annotation for acumulator V1 interface in JavaSparkContext class |  Minor | Java API, Spark Core | Weichen Xu | Weichen Xu |
| [SPARK-14118](https://issues.apache.org/jira/browse/SPARK-14118) | Implement DDL/DML commands for Spark 2.0 |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-15139](https://issues.apache.org/jira/browse/SPARK-15139) | PySpark TreeEnsemble missing methods |  Minor | ML, PySpark | holdenk | holdenk |
| [SPARK-15734](https://issues.apache.org/jira/browse/SPARK-15734) | Avoids printing internal row in explain output |  Minor | SQL | Sean Zhong | Xiang Zhong |
| [SPARK-15718](https://issues.apache.org/jira/browse/SPARK-15718) | better error message for writing bucketing data |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-15733](https://issues.apache.org/jira/browse/SPARK-15733) | Makes the explain output less verbose by hiding some verbose output like None, null, empty List, and etc.. |  Minor | SQL | Sean Zhong | Xiang Zhong |
| [SPARK-15494](https://issues.apache.org/jira/browse/SPARK-15494) | encoder code cleanup |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-15737](https://issues.apache.org/jira/browse/SPARK-15737) | Fix Jetty server start warning |  Minor | Spark Core | Bo Meng | Bo Meng |
| [SPARK-15681](https://issues.apache.org/jira/browse/SPARK-15681) | Allow case-insensitiveness in sc.setLogLevel |  Minor | Spark Core | Xin Wu | Xin Wu |
| [SPARK-15168](https://issues.apache.org/jira/browse/SPARK-15168) | Add missing params to Python's MultilayerPerceptronClassifier |  Trivial | ML, PySpark | holdenk | holdenk |
| [SPARK-15756](https://issues.apache.org/jira/browse/SPARK-15756) | Support command 'create table stored as orcfile/parquetfile/avrofile' |  Minor | . | marymwu | Lianhui Wang |
| [SPARK-15707](https://issues.apache.org/jira/browse/SPARK-15707) | Make Code Neat - Use map instead of if check |  Trivial | SQL | Weiqing Yang | Weiqing Yang |
| [SPARK-15770](https://issues.apache.org/jira/browse/SPARK-15770) | annotation audit for Experimental and DeveloperApi |  Trivial | ML | zhengruifeng | zhengruifeng |
| [SPARK-14279](https://issues.apache.org/jira/browse/SPARK-14279) | Improve the spark build to pick the version information from the pom file and add git commit information |  Minor | Build | Sanket Reddy | Dhruve Ashar |
| [SPARK-15721](https://issues.apache.org/jira/browse/SPARK-15721) | Make DefaultParamsReadable,Writable public APIs |  Major | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-15778](https://issues.apache.org/jira/browse/SPARK-15778) | Add 2.0.0-preview to dropdown / reorg description of previews at spark.apache.org/downloads.html |  Minor | Documentation | Sean Owen | Sean Owen |
| [SPARK-15792](https://issues.apache.org/jira/browse/SPARK-15792) | [SQL] Allows operator to change the verbosity in explain output. |  Minor | . | Sean Zhong | Sean Zhong |
| [SPARK-15684](https://issues.apache.org/jira/browse/SPARK-15684) | Not mask startsWith and endsWith in R |  Major | . | Miao Wang | Miao Wang |
| [SPARK-13590](https://issues.apache.org/jira/browse/SPARK-13590) | Document the behavior of spark.ml logistic regression and AFT survival regression when there are constant features |  Minor | ML | Xiangrui Meng | Yanbo Liang |
| [SPARK-15789](https://issues.apache.org/jira/browse/SPARK-15789) | Allow reserved keywords in most places |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-15793](https://issues.apache.org/jira/browse/SPARK-15793) | Word2vec in ML package should have maxSentenceLength method |  Minor | ML | Xusen Yin | Xusen Yin |
| [SPARK-15788](https://issues.apache.org/jira/browse/SPARK-15788) | PySpark IDFModel missing "idf" property |  Trivial | ML, PySpark | Nick Pentreath | Jeff Zhang |
| [SPARK-15827](https://issues.apache.org/jira/browse/SPARK-15827) | Publish Spark's forked sbt-pom-reader to Maven Central |  Major | Build, Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-15696](https://issues.apache.org/jira/browse/SPARK-15696) | Improve \`crosstab\` to have a consistent column order |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-15823](https://issues.apache.org/jira/browse/SPARK-15823) | Add @property for 'accuracy' in MulticlassMetrics |  Trivial | ML, PySpark | zhengruifeng | zhengruifeng |
| [SPARK-15837](https://issues.apache.org/jira/browse/SPARK-15837) | PySpark ML Word2Vec should support maxSentenceLength |  Minor | ML, PySpark | Yanbo Liang | Weichen Xu |
| [SPARK-15753](https://issues.apache.org/jira/browse/SPARK-15753) | Move some Analyzer stuff to Analyzer from DataFrameWriter |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-15871](https://issues.apache.org/jira/browse/SPARK-15871) | Add assertNotPartitioned check in DataFrameWriter |  Major | SQL | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [SPARK-15875](https://issues.apache.org/jira/browse/SPARK-15875) | Avoid using Seq.length == 0 and Seq.lenth \> 0. Use Seq.isEmpty and Seq.nonEmpty instead. |  Minor | . | Yang Wang | Yang Wang |
| [SPARK-15738](https://issues.apache.org/jira/browse/SPARK-15738) | PySpark ml.feature RFormula missing string representation displaying formula |  Major | ML, PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-15759](https://issues.apache.org/jira/browse/SPARK-15759) | Fallback to non-codegen if fail to compile generated code |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-15585](https://issues.apache.org/jira/browse/SPARK-15585) | Don't use null in data source options to indicate default value |  Critical | SQL | Reynold Xin | Takeshi Yamamuro |
| [SPARK-15807](https://issues.apache.org/jira/browse/SPARK-15807) | Support varargs for dropDuplicates in Dataset/DataFrame |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-15860](https://issues.apache.org/jira/browse/SPARK-15860) | Metrics for codegen size and perf |  Major | SQL | Eric Liang | Eric Liang |
| [SPARK-15806](https://issues.apache.org/jira/browse/SPARK-15806) | Deprecate SPARK\_MASTER\_IP in favor of SPARK\_MASTER\_HOST |  Minor | Documentation | Bo Meng | Bo Meng |
| [SPARK-15813](https://issues.apache.org/jira/browse/SPARK-15813) | Spark Dyn Allocation Cancel log message misleading |  Trivial | . | Peter Ableda | Peter Ableda |
| [SPARK-15676](https://issues.apache.org/jira/browse/SPARK-15676) | Disallow Column Names as Partition Columns For Hive Tables |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-15887](https://issues.apache.org/jira/browse/SPARK-15887) | Bring back the hive-site.xml support for Spark 2.0 |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-15364](https://issues.apache.org/jira/browse/SPARK-15364) | Implement Python picklers for ml.Vector and ml.Matrix under spark.ml.python |  Major | ML, PySpark | Xiangrui Meng | Liang-Chi Hsieh |
| [SPARK-15932](https://issues.apache.org/jira/browse/SPARK-15932) | document the contract of encoder serializer expressions |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-15821](https://issues.apache.org/jira/browse/SPARK-15821) | Should we use mvn -T for multithreaded Spark builds? |  Minor | Build | Adam Roberts | Adam Roberts |
| [SPARK-15426](https://issues.apache.org/jira/browse/SPARK-15426) | Spark 2.0 SQL API audit |  Blocker | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15457](https://issues.apache.org/jira/browse/SPARK-15457) | Eliminate MLlib 2.0 build warnings from deprecations |  Blocker | ML, MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-13498](https://issues.apache.org/jira/browse/SPARK-13498) | JDBCRDD should update some input metrics |  Minor | SQL | Wayne Song | Wayne Song |
| [SPARK-12492](https://issues.apache.org/jira/browse/SPARK-12492) | SQL page of Spark-sql is always blank |  Major | SQL, Web UI | meiyoula | KaiXinXIaoLei |
| [SPARK-15862](https://issues.apache.org/jira/browse/SPARK-15862) | Better Error Message When Having Database Name in CACHE TABLE AS SELECT |  Minor | SQL | Xiao Li | Xiao Li |
| [SPARK-15983](https://issues.apache.org/jira/browse/SPARK-15983) | Remove FileFormat.prepareRead() |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-15796](https://issues.apache.org/jira/browse/SPARK-15796) | Reduce spark.memory.fraction default to avoid overrunning old gen in JVM default config |  Blocker | . | Gabor Feher | Sean Owen |
| [SPARK-15868](https://issues.apache.org/jira/browse/SPARK-15868) | Executors table in Executors tab should sort Executor IDs in numerical order (not alphabetical order) |  Minor | Web UI | Jacek Laskowski | Alex Bozarth |
| [SPARK-15749](https://issues.apache.org/jira/browse/SPARK-15749) | Make the error message more meaningful |  Trivial | SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-15501](https://issues.apache.org/jira/browse/SPARK-15501) | ML 2.0 QA: Scala APIs audit for recommendation |  Blocker | Documentation, ML | Nick Pentreath | Nick Pentreath |
| [SPARK-16008](https://issues.apache.org/jira/browse/SPARK-16008) | ML Logistic Regression aggregator serializes unnecessary data |  Major | ML | Seth Hendrickson | Seth Hendrickson |
| [SPARK-15603](https://issues.apache.org/jira/browse/SPARK-15603) | Replace SQLContext with SparkSession in ML/MLLib |  Major | ML, MLlib | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-15803](https://issues.apache.org/jira/browse/SPARK-15803) | Support with statement syntax for SparkSession |  Minor | PySpark | Jeff Zhang | Jeff Zhang |
| [SPARK-16023](https://issues.apache.org/jira/browse/SPARK-16023) | Move InMemoryRelation to its own file |  Minor | SQL | Andrew Or | Andrew Or |
| [SPARK-15973](https://issues.apache.org/jira/browse/SPARK-15973) | Fix GroupedData Documentation |  Trivial | PySpark | Vladimir Feinberg | Josh Howes |
| [SPARK-15942](https://issues.apache.org/jira/browse/SPARK-15942) | Unblock \`:reset\` command in REPL. |  Minor | . | Prashant Sharma | Prashant Sharma |
| [SPARK-16059](https://issues.apache.org/jira/browse/SPARK-16059) | Add \`monotonically\_increasing\_id\` function in SparkR |  Minor | SparkR | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-16051](https://issues.apache.org/jira/browse/SPARK-16051) | Add \`read.orc/write.orc\` to SparkR |  Major | SparkR | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-16053](https://issues.apache.org/jira/browse/SPARK-16053) | Add \`spark\_partition\_id\` in SparkR |  Minor | SparkR | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14995](https://issues.apache.org/jira/browse/SPARK-14995) | Add "since" tag in Roxygen documentation for SparkR API methods |  Major | SparkR | Sun Rui | Dongjoon Hyun |
| [SPARK-16061](https://issues.apache.org/jira/browse/SPARK-16061) | The property "spark.streaming.stateStore.maintenanceInterval" should be renamed to "spark.sql.streaming.stateStore.maintenanceInterval" |  Minor | SQL | Kousuke Saruta | Kousuke Saruta |
| [SPARK-15294](https://issues.apache.org/jira/browse/SPARK-15294) | Add pivot functionality to SparkR |  Minor | SparkR | Mikołaj Hnatiuk | Dongjoon Hyun |
| [SPARK-16045](https://issues.apache.org/jira/browse/SPARK-16045) | Spark 2.0 ML.feature: doc update for stopwords and binarizer |  Minor | ML | yuhao yang | yuhao yang |
| [SPARK-16084](https://issues.apache.org/jira/browse/SPARK-16084) | Minor javadoc issue with "Describe" table in the parser |  Trivial | SQL | Bo Meng | Bo Meng |
| [SPARK-15741](https://issues.apache.org/jira/browse/SPARK-15741) | PySpark Cleanup of \_setDefault with seed=None |  Minor | ML, PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-16117](https://issues.apache.org/jira/browse/SPARK-16117) | Hide LibSVMFileFormat in public API docs |  Major | Documentation, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-15644](https://issues.apache.org/jira/browse/SPARK-15644) | Replace SQLContext with SparkSession in MLlib |  Major | MLlib, SQL | Xiao Li | Xiao Li |
| [SPARK-15162](https://issues.apache.org/jira/browse/SPARK-15162) | Update PySpark LogisticRegression threshold PyDoc to be as complete as Scaladoc |  Trivial | . | holdenk | holdenk |
| [SPARK-16155](https://issues.apache.org/jira/browse/SPARK-16155) | Remove package grouping in genjavadoc |  Major | Documentation | Xiangrui Meng | Xiangrui Meng |
| [SPARK-16162](https://issues.apache.org/jira/browse/SPARK-16162) | Remove dead code: class OrcTableScan |  Minor | SQL | Brian Cho | Brian Cho |
| [SPARK-16154](https://issues.apache.org/jira/browse/SPARK-16154) | Update spark.ml and spark.mllib package docs |  Major | Documentation, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-16130](https://issues.apache.org/jira/browse/SPARK-16130) | model loading backward compatibility for ml.classfication.LogisticRegression |  Minor | ML | yuhao yang | yuhao yang |
| [SPARK-13723](https://issues.apache.org/jira/browse/SPARK-13723) | YARN - Change behavior of --num-executors when spark.dynamicAllocation.enabled true |  Minor | YARN | Thomas Graves | Ryan Blue |
| [SPARK-16177](https://issues.apache.org/jira/browse/SPARK-16177) | model loading backward compatibility for ml.regression |  Minor | ML | yuhao yang | yuhao yang |
| [SPARK-16133](https://issues.apache.org/jira/browse/SPARK-16133) | model loading backward compatibility for ml.feature |  Major | ML | yuhao yang | yuhao yang |
| [SPARK-16135](https://issues.apache.org/jira/browse/SPARK-16135) | Remove hashCode and euqals in ArrayBasedMapData |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-16221](https://issues.apache.org/jira/browse/SPARK-16221) | Redirect Parquet JUL logger via SLF4J for WRITE operations |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-16259](https://issues.apache.org/jira/browse/SPARK-16259) | Cleanup options for DataFrame reader API in Python |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-16175](https://issues.apache.org/jira/browse/SPARK-16175) | Handle None for all Python UDT |  Major | PySpark, SQL | Davies Liu | Davies Liu |
| [SPARK-16248](https://issues.apache.org/jira/browse/SPARK-16248) | Whitelist the list of Hive fallback functions |  Major | . | Reynold Xin | Reynold Xin |
| [SPARK-16245](https://issues.apache.org/jira/browse/SPARK-16245) | model loading backward compatibility for ml.feature.PCA |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-16238](https://issues.apache.org/jira/browse/SPARK-16238) | Metrics for generated method bytecode size |  Minor | Spark Core | Eric Liang | Eric Liang |
| [SPARK-12177](https://issues.apache.org/jira/browse/SPARK-12177) | Update KafkaDStreams to new Kafka 0.10 Consumer API |  Major | DStreams | Nikita Tarasenko | Cody Koeninger |
| [SPARK-16241](https://issues.apache.org/jira/browse/SPARK-16241) | model loading backward compatibility for ml NaiveBayes |  Minor | ML | yuhao yang | Li Ping Zhang |
| [SPARK-15643](https://issues.apache.org/jira/browse/SPARK-15643) | ML 2.0 QA: migration guide update |  Blocker | Documentation, ML, MLlib | Yanbo Liang | Yanbo Liang |
| [SPARK-15761](https://issues.apache.org/jira/browse/SPARK-15761) | pyspark shell should load if PYSPARK\_DRIVER\_PYTHON is ipython an Python3 |  Minor | PySpark | Manoj Kumar | Manoj Kumar |
| [SPARK-16012](https://issues.apache.org/jira/browse/SPARK-16012) | add gapplyCollect() for SparkDataFrame |  Major | SparkR | Sun Rui | Narine Kokhlikyan |
| [SPARK-16345](https://issues.apache.org/jira/browse/SPARK-16345) | Extract graphx programming guide example snippets from source files instead of hard code them |  Major | Documentation, Examples, GraphX | Weichen Xu | Weichen Xu |
| [SPARK-16249](https://issues.apache.org/jira/browse/SPARK-16249) | Change visibility of Object ml.clustering.LDA to public for loading |  Minor | ML | yuhao yang | yuhao yang |
| [SPARK-13569](https://issues.apache.org/jira/browse/SPARK-13569) | Kafka DStreams from wildcard topic filters |  Major | DStreams | Miguel Miranda | Cody Koeninger |
| [SPARK-16476](https://issues.apache.org/jira/browse/SPARK-16476) | Restructure MimaExcludes for easier union excludes |  Major | Build | Reynold Xin | Reynold Xin |
| [SPARK-16270](https://issues.apache.org/jira/browse/SPARK-16270) | Implement xpath user defined functions |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-16458](https://issues.apache.org/jira/browse/SPARK-16458) | SessionCatalog should support \`listColumns\` for temporary tables |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-16470](https://issues.apache.org/jira/browse/SPARK-16470) | ml.regression.LinearRegression training data do not check whether the result actually reach convergence |  Trivial | ML, Optimizer | Weichen Xu | Weichen Xu |
| [SPARK-16469](https://issues.apache.org/jira/browse/SPARK-16469) | Long running Driver task while multiplying big matrices |  Minor | MLlib | Ohad Raviv | Ohad Raviv |
| [SPARK-16500](https://issues.apache.org/jira/browse/SPARK-16500) | Add LBFG training not convergence warning for all ML algorithm |  Trivial | ML, MLlib, Optimizer | Weichen Xu | Weichen Xu |
| [SPARK-16582](https://issues.apache.org/jira/browse/SPARK-16582) | Explicitly define isNull = false for non-nullable expressions |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-16584](https://issues.apache.org/jira/browse/SPARK-16584) | Move regexp unit tests to RegexpExpressionsSuite |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-16588](https://issues.apache.org/jira/browse/SPARK-16588) | Deprecate monotonicallyIncreasingId in Scala |  Trivial | SQL | Hyukjin Kwon | Reynold Xin |
| [SPARK-16615](https://issues.apache.org/jira/browse/SPARK-16615) | Expose sqlContext in SparkSession |  Major | . | Reynold Xin | Reynold Xin |
| [SPARK-6744](https://issues.apache.org/jira/browse/SPARK-6744) | Add support for CROSS JOIN syntax |  Minor | SQL | Santiago M. Mola | Herman van Hovell |
| [SPARK-5718](https://issues.apache.org/jira/browse/SPARK-5718) | Add native offset management for ReliableKafkaReceiver |  Major | DStreams | Saisai Shao | Cody Koeninger |
| [SPARK-7712](https://issues.apache.org/jira/browse/SPARK-7712) | Window Function Improvements |  Critical | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-15163](https://issues.apache.org/jira/browse/SPARK-15163) | Mark experimental algorithms experimental in PySpark |  Trivial | ML, PySpark | holdenk | holdenk |
| [SPARK-15745](https://issues.apache.org/jira/browse/SPARK-15745) | Use classloader's getResource() for reading resource files in HiveTests |  Trivial | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-15023](https://issues.apache.org/jira/browse/SPARK-15023) | Add support for testing against the \`ProcessingTime(intervalMS \> 0)\` trigger and \`ManualClock\` |  Major | SQL | Liwei Lin(Inactive) | Liwei Lin |
| [SPARK-13637](https://issues.apache.org/jira/browse/SPARK-13637) | use more information to simplify the code in Expand builder |  Minor | SQL | Wenchen Fan | Wenchen Fan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-11511](https://issues.apache.org/jira/browse/SPARK-11511) | Creating an InputDStream but not using it throws NPE |  Major | DStreams | Shixiong Zhu | Shixiong Zhu |
| [SPARK-10116](https://issues.apache.org/jira/browse/SPARK-10116) | XORShiftRandom should generate uniform seeds |  Minor | Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-11218](https://issues.apache.org/jira/browse/SPARK-11218) | \`./sbin/start-slave.sh --help\` should print out the help message |  Minor | Deploy | Jacek Laskowski | Charles Yeh |
| [SPARK-11500](https://issues.apache.org/jira/browse/SPARK-11500) | Not deterministic order of columns when using merging schemas. |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-11762](https://issues.apache.org/jira/browse/SPARK-11762) | TransportResponseHandler should consider open streams when counting outstanding requests |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11043](https://issues.apache.org/jira/browse/SPARK-11043) | Hive Thrift Server will log warn "Couldn't find log associated with operation handle" |  Major | SQL | carlmartin | carlmartin |
| [SPARK-11956](https://issues.apache.org/jira/browse/SPARK-11956) | Test failures potentially related to SPARK-11140 |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11969](https://issues.apache.org/jira/browse/SPARK-11969) | SQL UI does not work with PySpark |  Critical | SQL | Davies Liu | Davies Liu |
| [SPARK-12003](https://issues.apache.org/jira/browse/SPARK-12003) | Expanded star  should use field name as column name |  Major | . | Davies Liu | Davies Liu |
| [SPARK-11991](https://issues.apache.org/jira/browse/SPARK-11991) | spark\_ec2.py does not perform sanity checks on hostnames |  Major | EC2 | Jeremy Derr | Jeremy Derr |
| [SPARK-12028](https://issues.apache.org/jira/browse/SPARK-12028) | [SQL] get\_json\_object is unable to return a correct result for null literals |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-12090](https://issues.apache.org/jira/browse/SPARK-12090) | Coalesce does not consider shuffle in PySpark |  Major | . | Davies Liu | Davies Liu |
| [SPARK-12001](https://issues.apache.org/jira/browse/SPARK-12001) | StreamingContext cannot be completely stopped if the stop() call is interrupted |  Major | DStreams | Josh Rosen | Josh Rosen |
| [SPARK-12082](https://issues.apache.org/jira/browse/SPARK-12082) | NettyBlockTransferSecuritySuite "security mismatch auth off on client" test is flaky |  Major | Tests | Josh Rosen | Josh Rosen |
| [SPARK-12109](https://issues.apache.org/jira/browse/SPARK-12109) | Expressions's simpleString should delegate to its toString |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-12088](https://issues.apache.org/jira/browse/SPARK-12088) | check connection.isClose before connection.getAutoCommit in JDBCRDD.close |  Minor | SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-12107](https://issues.apache.org/jira/browse/SPARK-12107) | Update spark-ec2 versions |  Minor | EC2 | Nicholas Chammas | Nicholas Chammas |
| [SPARK-12019](https://issues.apache.org/jira/browse/SPARK-12019) | SparkR.init does not support character vector for sparkJars and sparkPackages |  Minor | SparkR | liushiqi9 | Felix Cheung |
| [SPARK-12104](https://issues.apache.org/jira/browse/SPARK-12104) | collect() does not handle multiple columns with same name |  Critical | SparkR | Hossein Falaki | Sun Rui |
| [SPARK-12112](https://issues.apache.org/jira/browse/SPARK-12112) | Upgrade to SBT 0.13.9 |  Major | Build | Josh Rosen | Josh Rosen |
| [SPARK-12142](https://issues.apache.org/jira/browse/SPARK-12142) | Can't request executor when container allocator is not ready |  Major | Spark Core | meiyoula | meiyoula |
| [SPARK-12084](https://issues.apache.org/jira/browse/SPARK-12084) | Fix codes that uses ByteBuffer.array incorrectly |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11994](https://issues.apache.org/jira/browse/SPARK-11994) | Word2VecModel load and save cause SparkException when model is bigger than spark.kryoserializer.buffer.max |  Major | MLlib | Antonio Murgia | Antonio Murgia |
| [SPARK-11715](https://issues.apache.org/jira/browse/SPARK-11715) | R support corr for Column Aggregration |  Minor | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-12048](https://issues.apache.org/jira/browse/SPARK-12048) | JDBCRDD calls close() twice - SQLite then throws an exception |  Minor | SQL | R. H. | R. H. |
| [SPARK-12132](https://issues.apache.org/jira/browse/SPARK-12132) | Cltr-C should clear current line in pyspark shell |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-12222](https://issues.apache.org/jira/browse/SPARK-12222) | deserialize RoaringBitmap using Kryo serializer throw Buffer underflow exception |  Major | Spark Core | Fei Wang | Fei Wang |
| [SPARK-12031](https://issues.apache.org/jira/browse/SPARK-12031) | Integer overflow when do sampling. |  Major | Spark Core | Genmao Yu | Genmao Yu |
| [SPARK-10582](https://issues.apache.org/jira/browse/SPARK-10582) | using dynamic-executor-allocation, if AM failed. the new AM will be started. But the new AM does not allocate executors to dirver |  Major | Spark Core | KaiXinXIaoLei | Saisai Shao |
| [SPARK-12131](https://issues.apache.org/jira/browse/SPARK-12131) | Cannot create ExpressionEncoder for Array[T] where T is a nested class |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-12136](https://issues.apache.org/jira/browse/SPARK-12136) | rddToFileName does not properly handle prefix and suffix parameters |  Minor | DStreams | Brian Webb | Bo Meng |
| [SPARK-11832](https://issues.apache.org/jira/browse/SPARK-11832) | Spark shell does not work from sbt with scala 2.11 |  Minor | Spark Shell | Jakob Odersky | Jakob Odersky |
| [SPARK-11497](https://issues.apache.org/jira/browse/SPARK-11497) | PySpark RowMatrix Constructor Has Type Erasure Issue |  Minor | MLlib, PySpark | Mike Dusenberry | Mike Dusenberry |
| [SPARK-12298](https://issues.apache.org/jira/browse/SPARK-12298) | Infinite loop in DataFrame.sortWithinPartitions(String, String\*) |  Major | SQL | Ankur Dave | Ankur Dave |
| [SPARK-12158](https://issues.apache.org/jira/browse/SPARK-12158) | [R] [SQL] Fix 'sample' functions that break R unit test cases |  Critical | SparkR, SQL | Xiao Li | Xiao Li |
| [SPARK-11193](https://issues.apache.org/jira/browse/SPARK-11193) | Spark 1.5+ Kinesis Streaming - ClassCastException when starting KinesisReceiver |  Major | DStreams | Phil Kallos | Jean-Baptiste Onofré |
| [SPARK-12275](https://issues.apache.org/jira/browse/SPARK-12275) | No plan for BroadcastHint in some condition |  Major | SQL | yucai | yucai |
| [SPARK-12271](https://issues.apache.org/jira/browse/SPARK-12271) | Improve error message for Dataset.as[] when the schema is incompatible. |  Major | SQL | Nong Li | Apache Spark |
| [SPARK-9026](https://issues.apache.org/jira/browse/SPARK-9026) | SimpleFutureAction.onComplete should not tie up a separate thread for each callback |  Major | Spark Core | Josh Rosen | Richard W. Eggert II |
| [SPARK-9886](https://issues.apache.org/jira/browse/SPARK-9886) | Validate usages of Runtime.getRuntime.addShutdownHook |  Minor | Spark Core | Michel Lemay | Naveen Kumar Minchu |
| [SPARK-12062](https://issues.apache.org/jira/browse/SPARK-12062) | Master rebuilding historical SparkUI should be asynchronous |  Major | Deploy | Andrew Or | Bryan Cutler |
| [SPARK-4514](https://issues.apache.org/jira/browse/SPARK-4514) | SparkContext localProperties does not inherit property updates across thread reuse |  Critical | Spark Core | Erik Erlandson | Richard W. Eggert II |
| [SPARK-12324](https://issues.apache.org/jira/browse/SPARK-12324) | The documentation sidebar does not collapse properly |  Minor | Documentation | Timothy Hunter | Timothy Hunter |
| [SPARK-12318](https://issues.apache.org/jira/browse/SPARK-12318) | Save mode in SparkR should be error by default |  Minor | SparkR | Jeff Zhang | Jeff Zhang |
| [SPARK-12380](https://issues.apache.org/jira/browse/SPARK-12380) | MLLib should use existing SQLContext instead create new one |  Major | MLlib, PySpark | Davies Liu | Davies Liu |
| [SPARK-12365](https://issues.apache.org/jira/browse/SPARK-12365) | Use ShutdownHookManager where Runtime.getRuntime.addShutdownHook() is called |  Minor | Spark Core | Ted Yu | Ted Yu |
| [SPARK-12186](https://issues.apache.org/jira/browse/SPARK-12186) | stage web URI will redirect to the wrong location if it is the first URI from the application to be requested from the history server |  Minor | Web UI | Rohit Agarwal | Rohit Agarwal |
| [SPARK-12395](https://issues.apache.org/jira/browse/SPARK-12395) | Result of DataFrame.join(usingColumns) could be wrong for outer join |  Blocker | SQL | Davies Liu | Davies Liu |
| [SPARK-12390](https://issues.apache.org/jira/browse/SPARK-12390) | Clean up unused serializer parameter in BlockManager |  Major | Block Manager, Spark Core | Andrew Or | Andrew Or |
| [SPARK-12350](https://issues.apache.org/jira/browse/SPARK-12350) | VectorAssembler#transform() initially throws an exception |  Major | Spark Core, Spark Shell | Jakob Odersky | Marcelo Vanzin |
| [SPARK-11619](https://issues.apache.org/jira/browse/SPARK-11619) | cannot use UDTF in DataFrame.selectExpr |  Minor | SQL | Wenchen Fan | Dilip Biswal |
| [SPARK-12218](https://issues.apache.org/jira/browse/SPARK-12218) | Invalid splitting of nested AND expressions in Data Source filter API |  Blocker | SQL | Irakli Machabeli | Yin Huai |
| [SPARK-12091](https://issues.apache.org/jira/browse/SPARK-12091) | [PySpark] Removal of the JAVA-specific deserialized storage levels |  Minor | PySpark | Xiao Li | Xiao Li |
| [SPARK-12442](https://issues.apache.org/jira/browse/SPARK-12442) | Build testing failed |  Blocker | Build | Xiao Li | Reynold Xin |
| [SPARK-12466](https://issues.apache.org/jira/browse/SPARK-12466) | Harmless Master NPE in tests |  Major | Deploy, Tests | Andrew Or | Andrew Or |
| [SPARK-12339](https://issues.apache.org/jira/browse/SPARK-12339) | NullPointerException on stage kill from web UI |  Major | Web UI | Jacek Laskowski | Alex Bozarth |
| [SPARK-12102](https://issues.apache.org/jira/browse/SPARK-12102) | Cast a non-nullable struct field to a nullable field during analysis |  Major | SQL | Yin Huai | Dilip Biswal |
| [SPARK-12477](https://issues.apache.org/jira/browse/SPARK-12477) | [SQL] Tungsten projection fails for null values in array fields |  Major | SQL | Pierre Borckmans | Pierre Borckmans |
| [SPARK-12499](https://issues.apache.org/jira/browse/SPARK-12499) | make\_distribution should not override MAVEN\_OPTS |  Minor | Build | Adrian Bridgett | Adrian Bridgett |
| [SPARK-12502](https://issues.apache.org/jira/browse/SPARK-12502) | Script /dev/run-tests fails when IBM Java is used |  Minor | Tests | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-12311](https://issues.apache.org/jira/browse/SPARK-12311) | [CORE] Restore previous value of "os.arch" property in test suites after forcing to set specific value to "os.arch" property |  Minor | Spark Core | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-12010](https://issues.apache.org/jira/browse/SPARK-12010) | Spark JDBC requires support for column-name-free INSERT syntax |  Major | SQL | Christian Kurz | Christian Kurz |
| [SPARK-12396](https://issues.apache.org/jira/browse/SPARK-12396) | Once driver client registered successfully,it still retry to connected to master. |  Minor | Spark Core | echo | echo |
| [SPARK-12520](https://issues.apache.org/jira/browse/SPARK-12520) | Python API dataframe join returns wrong results on outer join |  Major | PySpark, SQL | Aravind  B | Xiao Li |
| [SPARK-12353](https://issues.apache.org/jira/browse/SPARK-12353) | wrong output for countByValue and countByValueAndWindow |  Major | Documentation, DStreams, Input/Output, PySpark | Bo Jin | Saisai Shao |
| [SPARK-12508](https://issues.apache.org/jira/browse/SPARK-12508) | Fix multiple bugs in pr\_public\_classes.sh script |  Trivial | Project Infra | Josh Rosen | Apache Spark |
| [SPARK-12231](https://issues.apache.org/jira/browse/SPARK-12231) | Failed to generate predicate Error when using dropna |  Major | PySpark, SQL | yahsuan, chang | kevin yu |
| [SPARK-12517](https://issues.apache.org/jira/browse/SPARK-12517) | No default RDD name for ones created by sc.textFile |  Minor | Spark Core | yaron weinsberg | yaron weinsberg |
| [SPARK-12424](https://issues.apache.org/jira/browse/SPARK-12424) | The implementation of ParamMap#filter is wrong. |  Major | ML | Kousuke Saruta | Kousuke Saruta |
| [SPARK-12441](https://issues.apache.org/jira/browse/SPARK-12441) | Fixing missingInput in all Logical/Physical operators |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-12525](https://issues.apache.org/jira/browse/SPARK-12525) | Fix compiler warnings in Kinesis ASL module due to @transient annotations |  Major | DStreams | Josh Rosen | Josh Rosen |
| [SPARK-12489](https://issues.apache.org/jira/browse/SPARK-12489) | Fix minor issues found by Findbugs |  Minor | MLlib, Spark Core, SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12522](https://issues.apache.org/jira/browse/SPARK-12522) | Add the missing the document string for the SQL configuration |  Minor | SQL | Xiao Li | Xiao Li |
| [SPARK-11394](https://issues.apache.org/jira/browse/SPARK-11394) | PostgreDialect cannot handle BYTE types |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-12526](https://issues.apache.org/jira/browse/SPARK-12526) | \`ifelse\`, \`when\`, \`otherwise\` unable to take Column as value |  Major | SparkR | Sen Fang | Sen Fang |
| [SPARK-12530](https://issues.apache.org/jira/browse/SPARK-12530) | Build break at Spark-Master-Maven-Snapshots from #1293 |  Major | Build | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-12300](https://issues.apache.org/jira/browse/SPARK-12300) | Fix schema inferance on local collections |  Minor | PySpark, SQL | holdenk | holdenk |
| [SPARK-12399](https://issues.apache.org/jira/browse/SPARK-12399) | Display correct error message when accessing REST API with an unknown app Id |  Minor | Web UI | Carson Wang | Carson Wang |
| [SPARK-12039](https://issues.apache.org/jira/browse/SPARK-12039) | HiveSparkSubmitSuite's SPARK-9757 Persist Parquet relation with decimal column is very flaky |  Major | SQL, Tests | Yin Huai | Yin Huai |
| [SPARK-12327](https://issues.apache.org/jira/browse/SPARK-12327) | lint-r checks fail with commented code |  Major | SparkR | Shivaram Venkataraman | Felix Cheung |
| [SPARK-12533](https://issues.apache.org/jira/browse/SPARK-12533) | hiveContext.table() throws the wrong exception |  Major | SQL | Michael Armbrust | Thomas Sebastian |
| [SPARK-12611](https://issues.apache.org/jira/browse/SPARK-12611) | test\_infer\_schema\_to\_local depended on old handling of missing value in row |  Trivial | SQL, Tests | holdenk | holdenk |
| [SPARK-12562](https://issues.apache.org/jira/browse/SPARK-12562) | DataFrame.write.format("text") requires the column name to be called value |  Major | SQL | Michael Armbrust | Xiu (Joe) Guo |
| [SPARK-12612](https://issues.apache.org/jira/browse/SPARK-12612) | Add missing Hadoop profiles to dev/run-tests-\*.py scripts |  Major | Build, Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-12513](https://issues.apache.org/jira/browse/SPARK-12513) | SocketReceiver hang in Netcat example |  Minor | DStreams | Shawn Guo | Shawn Guo |
| [SPARK-12579](https://issues.apache.org/jira/browse/SPARK-12579) | User-specified JDBC driver should always take precedence |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-12470](https://issues.apache.org/jira/browse/SPARK-12470) | Incorrect calculation of row size in o.a.s.sql.catalyst.expressions.codegen.GenerateUnsafeRowJoiner |  Minor | SQL | Pete Robbins | Pete Robbins |
| [SPARK-12512](https://issues.apache.org/jira/browse/SPARK-12512) | WithColumn does not work on multiple column with special character |  Major | SQL | JO EE | Xiu (Joe) Guo |
| [SPARK-12421](https://issues.apache.org/jira/browse/SPARK-12421) | Fix copy() method of GenericRow |  Minor | SQL | doepfner | Herman van Hovell |
| [SPARK-12589](https://issues.apache.org/jira/browse/SPARK-12589) | result row size is wrong in UnsafeRowParquetRecordReader |  Major | SQL | Wenchen Fan | Nong Li |
| [SPARK-12509](https://issues.apache.org/jira/browse/SPARK-12509) | Fix error messages for DataFrame correlation and covariance |  Minor | Documentation, SQL | Narine Kokhlikyan | Narine Kokhlikyan |
| [SPARK-12625](https://issues.apache.org/jira/browse/SPARK-12625) | SparkR is using deprecated APIs |  Blocker | SparkR, SQL | Reynold Xin | Felix Cheung |
| [SPARK-12439](https://issues.apache.org/jira/browse/SPARK-12439) | Fix toCatalystArray and MapObjects |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-12617](https://issues.apache.org/jira/browse/SPARK-12617) | socket descriptor leak killing streaming app |  Critical | DStreams, PySpark | Antony Mayi | Shixiong Zhu |
| [SPARK-12511](https://issues.apache.org/jira/browse/SPARK-12511) | streaming driver with checkpointing unable to finalize leading to OOM |  Critical | DStreams, PySpark | Antony Mayi | Shixiong Zhu |
| [SPARK-12453](https://issues.apache.org/jira/browse/SPARK-12453) | Spark Streaming Kinesis Example broken due to wrong AWS Java SDK version |  Critical | DStreams | Martin Schade | Brian London |
| [SPARK-12504](https://issues.apache.org/jira/browse/SPARK-12504) | JDBC data source credentials are not masked in the data frame explain output. |  Major | SQL | Suresh Thalamati | Suresh Thalamati |
| [SPARK-12659](https://issues.apache.org/jira/browse/SPARK-12659) | NPE when spill in CartisianProduct |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12340](https://issues.apache.org/jira/browse/SPARK-12340) | overstep the bounds of Int in SparkPlan.executeTake |  Major | SQL | QiangCai | QiangCai |
| [SPARK-12673](https://issues.apache.org/jira/browse/SPARK-12673) | Prepending base URI of job description is missing |  Major | Web UI | Saisai Shao | Saisai Shao |
| [SPARK-12678](https://issues.apache.org/jira/browse/SPARK-12678) | MapPartitionsRDD should clear reference to prev RDD |  Minor | Spark Core | Guillaume Poulin | Guillaume Poulin |
| [SPARK-12006](https://issues.apache.org/jira/browse/SPARK-12006) | GaussianMixture.train crashes if an initial model is not None |  Major | MLlib, PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-12662](https://issues.apache.org/jira/browse/SPARK-12662) | Add a local sort operator to DataFrame used by randomSplit |  Major | Documentation, SQL | Yin Huai | Sameer Agarwal |
| [SPARK-12598](https://issues.apache.org/jira/browse/SPARK-12598) | Bug in setMinPartitions function of StreamFileInputFormat |  Minor | Spark Core | Darek Blasiak | Darek Blasiak |
| [SPARK-12591](https://issues.apache.org/jira/browse/SPARK-12591) | NullPointerException using checkpointed mapWithState with KryoSerializer |  Major | DStreams | Jan Uyttenhove | Shixiong Zhu |
| [SPARK-12654](https://issues.apache.org/jira/browse/SPARK-12654) | sc.wholeTextFiles with spark.hadoop.cloneConf=true fails on secure Hadoop |  Major | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-12736](https://issues.apache.org/jira/browse/SPARK-12736) | Standalone Master cannot be started due to NoClassDefFoundError: org/spark-project/guava/collect/Maps |  Major | Deploy, Spark Core | Jacek Laskowski | Jacek Laskowski |
| [SPARK-12734](https://issues.apache.org/jira/browse/SPARK-12734) | Fix Netty exclusions and use Maven Enforcer to prevent bug from being reintroduced |  Major | Build, Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-12744](https://issues.apache.org/jira/browse/SPARK-12744) | Inconsistent behavior parsing JSON with unix timestamp values |  Minor | SQL | Anatoliy Plastinin | Anatoliy Plastinin |
| [SPARK-12742](https://issues.apache.org/jira/browse/SPARK-12742) | org.apache.spark.sql.hive.LogicalPlanToSQLSuite failure due to Table already exists |  Major | SQL | Fei Wang | Fei Wang |
| [SPARK-12638](https://issues.apache.org/jira/browse/SPARK-12638) | Parameter explaination not very accurate for rdd function "aggregate" |  Trivial | Documentation, Spark Core | Wenpei Yu | Wenpei Yu |
| [SPARK-12582](https://issues.apache.org/jira/browse/SPARK-12582) | IndexShuffleBlockResolverSuite fails in windows |  Major | Tests, Windows | yucai | yucai |
| [SPARK-7615](https://issues.apache.org/jira/browse/SPARK-7615) | MLLIB Word2Vec wordVectors divided by Euclidean Norm equals to zero |  Minor | MLlib | Eric Li | Sean Owen |
| [SPARK-12652](https://issues.apache.org/jira/browse/SPARK-12652) | Upgrade py4j to the incoming version 0.9.1 |  Major | PySpark | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12558](https://issues.apache.org/jira/browse/SPARK-12558) | AnalysisException when multiple functions applied in GROUP BY clause |  Major | SQL | Maciej Bryński | Dilip Biswal |
| [SPARK-12805](https://issues.apache.org/jira/browse/SPARK-12805) | Outdated details in doc related to Mesos run modes |  Minor | Documentation | Luc Bourlier | Luc Bourlier |
| [SPARK-12685](https://issues.apache.org/jira/browse/SPARK-12685) | word2vec trainWordsCount gets overflow |  Minor | MLlib | yuhao yang | yuhao yang |
| [SPARK-12268](https://issues.apache.org/jira/browse/SPARK-12268) | pyspark shell uses execfile which breaks python3 compatibility |  Major | PySpark | Erik Selin | Erik Selin |
| [SPARK-12690](https://issues.apache.org/jira/browse/SPARK-12690) | NullPointerException in UnsafeInMemorySorter.free() |  Minor | Spark Core | Carson Wang | Carson Wang |
| [SPARK-12478](https://issues.apache.org/jira/browse/SPARK-12478) | Dataset fields of product types can't be null |  Major | SQL | Cheng Lian | Apache Spark |
| [SPARK-12026](https://issues.apache.org/jira/browse/SPARK-12026) | ChiSqTest gets slower and slower over time when number of features is large |  Major | MLlib | Hunter Kelly | yuhao yang |
| [SPARK-9844](https://issues.apache.org/jira/browse/SPARK-9844) | File appender race condition during SparkWorker shutdown |  Major | Spark Core | Alex Liu | Bryan Cutler |
| [SPARK-12784](https://issues.apache.org/jira/browse/SPARK-12784) | Spark UI IndexOutOfBoundsException with dynamic allocation |  Major | Web UI, YARN | Thomas Graves | Shixiong Zhu |
| [SPARK-12821](https://issues.apache.org/jira/browse/SPARK-12821) | Style checker should run when some configuration files for style are modified but any source files are not. |  Minor | Project Infra | Kousuke Saruta | Kousuke Saruta |
| [SPARK-12708](https://issues.apache.org/jira/browse/SPARK-12708) | Sorting task error in Stages Page when yarn mode |  Minor | Web UI | Koyo Yoshida | Koyo Yoshida |
| [SPARK-12655](https://issues.apache.org/jira/browse/SPARK-12655) | GraphX does not unpersist RDDs |  Minor | GraphX | Alexander Pivovarov | Jason C Lee |
| [SPARK-12842](https://issues.apache.org/jira/browse/SPARK-12842) | Add Hadoop 2.7 build profile |  Major | Build | Josh Rosen | Josh Rosen |
| [SPARK-12862](https://issues.apache.org/jira/browse/SPARK-12862) | Jenkins does not run R tests |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-12346](https://issues.apache.org/jira/browse/SPARK-12346) | GLM summary crashes with NoSuchElementException if attributes are missing names |  Major | SparkR | Eric Liang | Eric Liang |
| [SPARK-12841](https://issues.apache.org/jira/browse/SPARK-12841) | UnresolvedException with cast |  Blocker | SQL | Michael Armbrust | Wenchen Fan |
| [SPARK-12870](https://issues.apache.org/jira/browse/SPARK-12870) | better format bucket id in file name |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-12804](https://issues.apache.org/jira/browse/SPARK-12804) | ml.classification.LogisticRegression fails when FitIntercept with same-label dataset |  Major | ML | Feynman Liang | Feynman Liang |
| [SPARK-12867](https://issues.apache.org/jira/browse/SPARK-12867) | Nullability of Intersect can be stricter |  Minor | SQL | Cheng Lian | Xiao Li |
| [SPARK-12816](https://issues.apache.org/jira/browse/SPARK-12816) | Schema generation for type aliases does not work |  Major | Spark Core | Jakob Odersky | Jakob Odersky |
| [SPARK-12168](https://issues.apache.org/jira/browse/SPARK-12168) | Need test for conflicted function in R |  Minor | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-12232](https://issues.apache.org/jira/browse/SPARK-12232) | Create new R API for read.table to avoid conflict |  Minor | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-12881](https://issues.apache.org/jira/browse/SPARK-12881) | Enable sub-expression Elimination in generated mutable projection |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12230](https://issues.apache.org/jira/browse/SPARK-12230) | WeightedLeastSquares.fit() should handle division by zero properly if standard deviation of target variable is zero. |  Trivial | ML | Imran Younus | Imran Younus |
| [SPARK-12960](https://issues.apache.org/jira/browse/SPARK-12960) | Some examples are missing support for python2 |  Minor | PySpark | Mark Grover | Mark Grover |
| [SPARK-12959](https://issues.apache.org/jira/browse/SPARK-12959) | Writing Bucketed Data with Disabled Bucketing in SQLConf |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-12747](https://issues.apache.org/jira/browse/SPARK-12747) | Postgres JDBC ArrayType(DoubleType) 'Unable to find server array type' |  Major | SQL | Brandon Bradley | Liang-Chi Hsieh |
| [SPARK-12629](https://issues.apache.org/jira/browse/SPARK-12629) | SparkR: DataFrame's saveAsTable method has issues with the signature and HiveContext |  Major | SparkR | Narine Kokhlikyan | Narine Kokhlikyan |
| [SPARK-12859](https://issues.apache.org/jira/browse/SPARK-12859) | Names of input streams with receivers don't fit in Streaming page |  Trivial | DStreams, Web UI | Jacek Laskowski | Alex Bozarth |
| [SPARK-12760](https://issues.apache.org/jira/browse/SPARK-12760) | inaccurate description for difference between local vs cluster mode in closure handling |  Minor | Documentation | Mortada Mehyar | Mortada Mehyar |
| [SPARK-11137](https://issues.apache.org/jira/browse/SPARK-11137) | Make StreamingContext.stop() exception-safe |  Minor | DStreams | Felix Cheung | Jayadevan M |
| [SPARK-12904](https://issues.apache.org/jira/browse/SPARK-12904) | Strength reduction for integer/decimal comparisons |  Major | Optimizer, SQL | Reynold Xin | Reynold Xin |
| [SPARK-12971](https://issues.apache.org/jira/browse/SPARK-12971) | Address test isolation problems which broke Hive tests on Hadoop 2.3 SBT build |  Major | SQL, Tests | Josh Rosen | Josh Rosen |
| [SPARK-12624](https://issues.apache.org/jira/browse/SPARK-12624) | When schema is specified, we should give better error message if actual row length doesn't match |  Blocker | PySpark, SQL | Reynold Xin | Cheng Lian |
| [SPARK-12755](https://issues.apache.org/jira/browse/SPARK-12755) | Spark may attempt to rebuild application UI before finishing writing the event logs in possible race condition |  Minor | Spark Core | Michael Allman | Michael Allman |
| [SPARK-12961](https://issues.apache.org/jira/browse/SPARK-12961) | Work around memory leak in Snappy library |  Major | Spark Core | Josh Rosen | Liang-Chi Hsieh |
| [SPARK-12682](https://issues.apache.org/jira/browse/SPARK-12682) | Hive will fail if the schema of a parquet table has a very wide schema |  Major | SQL | Yin Huai | Sameer Agarwal |
| [SPARK-12952](https://issues.apache.org/jira/browse/SPARK-12952) | EMLDAOptimizer initialize should return EMLDAOptimizer other than its parent class |  Trivial | MLlib | Xusen Yin | Xusen Yin |
| [SPARK-12614](https://issues.apache.org/jira/browse/SPARK-12614) | Don't throw non fatal exception from RpcEndpointRef.send/ask |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7780](https://issues.apache.org/jira/browse/SPARK-7780) | The intercept in LogisticRegressionWithLBFGS should not be regularized |  Major | MLlib | DB Tsai | holdenk |
| [SPARK-12780](https://issues.apache.org/jira/browse/SPARK-12780) | Inconsistency returning value of ML python models' properties |  Minor | ML, PySpark | Xusen Yin | Xusen Yin |
| [SPARK-13023](https://issues.apache.org/jira/browse/SPARK-13023) | Check for presence of 'root' module after computing test\_modules, not changed\_modules |  Major | Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-10847](https://issues.apache.org/jira/browse/SPARK-10847) | Pyspark - DataFrame - Optional Metadata with \`None\` triggers cryptic failure |  Minor | PySpark, SQL | Shea Parkes | Jason C Lee |
| [SPARK-13021](https://issues.apache.org/jira/browse/SPARK-13021) | Fail fast when custom RDD's violate RDD.partition's API contract |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-13067](https://issues.apache.org/jira/browse/SPARK-13067) | DataFrameSuite.simple explode fail locally |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-13050](https://issues.apache.org/jira/browse/SPARK-13050) | Scalatest tags fail builds with the addition of the sketch module |  Major | Build | Alex Bozarth | Alex Bozarth |
| [SPARK-10873](https://issues.apache.org/jira/browse/SPARK-10873) | Change history to use datatables to support sorting columns and searching |  Major | Web UI | Thomas Graves | Zhuo Liu |
| [SPARK-13055](https://issues.apache.org/jira/browse/SPARK-13055) | SQLHistoryListener throws ClassCastException |  Major | Spark Core, SQL | Andrew Or | Andrew Or |
| [SPARK-13082](https://issues.apache.org/jira/browse/SPARK-13082) | sqlCtx.real.json() doesn't work with PythonRDD |  Major | PySpark | Gaëtan Lehmann | Shixiong Zhu |
| [SPARK-13096](https://issues.apache.org/jira/browse/SPARK-13096) | Make AccumulatorSuite#verifyPeakExecutionMemorySet less flaky |  Major | Tests | Andrew Or | Andrew Or |
| [SPARK-13088](https://issues.apache.org/jira/browse/SPARK-13088) | DAG viz does not work with latest version of chrome |  Blocker | Web UI | Andrew Or | Andrew Or |
| [SPARK-13049](https://issues.apache.org/jira/browse/SPARK-13049) | Cannot use FIRST/LAST ignoreNulls option in 1.6 and below |  Minor | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-6847](https://issues.apache.org/jira/browse/SPARK-6847) | Stack overflow on updateStateByKey which followed by a dstream with checkpoint set |  Critical | DStreams | Jack Hu | Shixiong Zhu |
| [SPARK-12989](https://issues.apache.org/jira/browse/SPARK-12989) | Bad interaction between StarExpansion and ExtractWindowExpressions |  Major | SQL | Michael Armbrust | Xiao Li |
| [SPARK-10777](https://issues.apache.org/jira/browse/SPARK-10777) | order by fails when column is aliased and projection includes windowed aggregate |  Major | SQL | N Campbell | Xiao Li |
| [SPARK-10647](https://issues.apache.org/jira/browse/SPARK-10647) | Mesos HA mode misuses spark.deploy.zookeeper.dir property; configs should be documented |  Minor | Mesos | Alan Braithwaite | Timothy Chen |
| [SPARK-12265](https://issues.apache.org/jira/browse/SPARK-12265) | Spark calls System.exit inside driver instead of throwing exception |  Major | Mesos | Iulian Dragos | Nilanjan Raychaudhuri |
| [SPARK-12979](https://issues.apache.org/jira/browse/SPARK-12979) | Paths are resolved relative to the local file system |  Major | Mesos | Iulian Dragos | Iulian Dragos |
| [SPARK-13087](https://issues.apache.org/jira/browse/SPARK-13087) | Grouping by a complex expression may lead to incorrect AttributeReferences in aggregations |  Critical | SQL | Mark Hamstra | Michael Armbrust |
| [SPARK-12711](https://issues.apache.org/jira/browse/SPARK-12711) | ML StopWordsRemover does not protect itself from column name duplication |  Trivial | ML, MLlib | Grzegorz Chilkiewicz | Grzegorz Chilkiewicz |
| [SPARK-13121](https://issues.apache.org/jira/browse/SPARK-13121) | java mapWithState mishandles scala Option |  Critical | DStreams, Java API | Gabriele Nizzoli | Gabriele Nizzoli |
| [SPARK-13122](https://issues.apache.org/jira/browse/SPARK-13122) | Race condition in MemoryStore.unrollSafely() causes memory leak |  Major | DStreams, Spark Core | Adam Budde | Adam Budde |
| [SPARK-12732](https://issues.apache.org/jira/browse/SPARK-12732) | Fix LinearRegression.train for the case when label is constant and fitIntercept=false |  Minor | MLlib | Imran Younus | Imran Younus |
| [SPARK-13157](https://issues.apache.org/jira/browse/SPARK-13157) | ADD JAR command cannot handle path with @ character |  Blocker | SQL | Cheng Lian | Herman van Hovell |
| [SPARK-12739](https://issues.apache.org/jira/browse/SPARK-12739) | Details of batch in Streaming tab uses two Duration columns |  Minor | DStreams, Web UI | Jacek Laskowski | Mario Briggs |
| [SPARK-12330](https://issues.apache.org/jira/browse/SPARK-12330) | Mesos coarse executor does not cleanup blockmgr properly on termination if data is stored on disk |  Major | Block Manager, Mesos | Charles R Allen | Apache Spark |
| [SPARK-13162](https://issues.apache.org/jira/browse/SPARK-13162) | Standalone mode does not respect \`spark.dynamicAllocation.initialExecutors\` |  Major | Deploy, Spark Core | Andrew Or | Andrew Or |
| [SPARK-13053](https://issues.apache.org/jira/browse/SPARK-13053) | Rectify ignored tests in InternalAccumulatorSuite |  Major | Spark Core, Tests | Andrew Or | Andrew Or |
| [SPARK-13052](https://issues.apache.org/jira/browse/SPARK-13052) | waitingApps metric doesn't show the number of apps currently in the WAITING state |  Minor | Web UI | Raafat Akkad | Raafat Akkad |
| [SPARK-13187](https://issues.apache.org/jira/browse/SPARK-13187) | Add boolean/long/double type option functions in DataFrameReader/Writer |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12939](https://issues.apache.org/jira/browse/SPARK-12939) | migrate encoder resolution to Analyzer |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-13002](https://issues.apache.org/jira/browse/SPARK-13002) | Mesos scheduler backend does not follow the property spark.dynamicAllocation.initialExecutors |  Major | Mesos | Luc Bourlier | Luc Bourlier |
| [SPARK-12986](https://issues.apache.org/jira/browse/SPARK-12986) | Fix pydoc warnings in mllib/regression.py |  Minor | MLlib, PySpark | Xiangrui Meng | Nam Pham |
| [SPARK-13101](https://issues.apache.org/jira/browse/SPARK-13101) | Dataset complex types mapping to DataFrame  (element nullability) mismatch |  Blocker | SQL | Deenar Toraskar | Wenchen Fan |
| [SPARK-13210](https://issues.apache.org/jira/browse/SPARK-13210) | NPE in Sort |  Critical | SQL | Davies Liu | Davies Liu |
| [SPARK-13095](https://issues.apache.org/jira/browse/SPARK-13095) | improve performance of hash join with dimension table |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12807](https://issues.apache.org/jira/browse/SPARK-12807) | Spark External Shuffle not working in Hadoop clusters with Jackson 2.2.3 |  Critical | Shuffle, YARN | Steve Loughran | Steve Loughran |
| [SPARK-13245](https://issues.apache.org/jira/browse/SPARK-13245) | ShuffleBlockFetcherIterator should not use shuffleMetrics in multiple threads |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-10524](https://issues.apache.org/jira/browse/SPARK-10524) | Decision tree binary classification with ordered categorical features: incorrect centroid |  Major | ML, MLlib | Joseph K. Bradley | Liang-Chi Hsieh |
| [SPARK-11518](https://issues.apache.org/jira/browse/SPARK-11518) | The script spark-submit.cmd can not handle spark directory with space. |  Minor | Deploy, Windows | Cele Liu | Jon Maurer |
| [SPARK-13254](https://issues.apache.org/jira/browse/SPARK-13254) | Fix planning of TakeOrderedAndProject operator |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-13163](https://issues.apache.org/jira/browse/SPARK-13163) | Column width on new History Server DataTables not getting set correctly |  Minor | Web UI | Alex Bozarth | Alex Bozarth |
| [SPARK-13126](https://issues.apache.org/jira/browse/SPARK-13126) | History Server page always has horizontal scrollbar |  Minor | Web UI | Alex Bozarth | Zhuo Liu |
| [SPARK-13056](https://issues.apache.org/jira/browse/SPARK-13056) | Map column would throw NPE if value is null |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-13276](https://issues.apache.org/jira/browse/SPARK-13276) | Parse Table Identifiers/Expression skips bad characters at the end of the passed string |  Minor | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-13270](https://issues.apache.org/jira/browse/SPARK-13270) | Improve readability of whole stage codegen by skipping empty lines and outputting the pipeline plan |  Major | . | Nong Li | Nong Li |
| [SPARK-13124](https://issues.apache.org/jira/browse/SPARK-13124) | Adding JQuery DataTables messed up the Web UI css and js |  Major | Web UI | Alex Bozarth | Alex Bozarth |
| [SPARK-13277](https://issues.apache.org/jira/browse/SPARK-13277) | ANTLR ignores other rule using the USING keyword |  Minor | SQL | Herman van Hovell | Liang-Chi Hsieh |
| [SPARK-13265](https://issues.apache.org/jira/browse/SPARK-13265) | Refactoring of basic ML import/export for other file system besides HDFS |  Major | ML | Yu Ishikawa | Yu Ishikawa |
| [SPARK-13047](https://issues.apache.org/jira/browse/SPARK-13047) | Pyspark Params.hasParam should not throw an error |  Minor | ML, PySpark | Seth Hendrickson | Seth Hendrickson |
| [SPARK-12765](https://issues.apache.org/jira/browse/SPARK-12765) | CountVectorizerModel.transform lost the transformSchema |  Major | ML | sloth | sloth |
| [SPARK-12746](https://issues.apache.org/jira/browse/SPARK-12746) | ArrayType(\_, true) should also accept ArrayType(\_, false) |  Major | ML, SQL | Earthson Lu | Earthson Lu |
| [SPARK-13153](https://issues.apache.org/jira/browse/SPARK-13153) | PySpark ML persistence failed when handle no default value parameter |  Minor | ML, PySpark | Wenpei Yu | Wenpei Yu |
| [SPARK-13260](https://issues.apache.org/jira/browse/SPARK-13260) | count(\*) does not work with CSV data source |  Major | SQL | Hossein Falaki | Hyukjin Kwon |
| [SPARK-13142](https://issues.apache.org/jira/browse/SPARK-13142) | Problem accessing Web UI /logPage/ on Microsoft Windows |  Minor | Web UI | Neil Andrassy | Mark Pavey |
| [SPARK-13300](https://issues.apache.org/jira/browse/SPARK-13300) | Spark examples page gives errors : Liquid error: pygments |  Minor | Documentation | stefan | Amit Ranjit |
| [SPARK-13278](https://issues.apache.org/jira/browse/SPARK-13278) | Launcher fails to start with JDK 9 EA |  Minor | Spark Core | Claes Redestad | Claes Redestad |
| [SPARK-13312](https://issues.apache.org/jira/browse/SPARK-13312) | ML Model Selection via Train Validation Split example uses incorrect data |  Minor | Documentation | Jeremy | Jeremy |
| [SPARK-13221](https://issues.apache.org/jira/browse/SPARK-13221) | GroupingSets Returns an Incorrect Results |  Critical | SQL | Xiao Li | Xiao Li |
| [SPARK-13308](https://issues.apache.org/jira/browse/SPARK-13308) | ManagedBuffers passed to OneToOneStreamManager need to be freed in non-error cases |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-11627](https://issues.apache.org/jira/browse/SPARK-11627) | Spark Streaming backpressure mechanism  has no initial input rate limit,receivers receive data at the maximum speed , it might cause OOM exception |  Major | DStreams | junhaoMg | junhaoMg |
| [SPARK-13109](https://issues.apache.org/jira/browse/SPARK-13109) | SBT publishLocal failed to publish to local ivy repo |  Major | Build | Saisai Shao | Saisai Shao |
| [SPARK-13344](https://issues.apache.org/jira/browse/SPARK-13344) | Tests have many "accumulator not found" exceptions |  Major | SQL, Tests | Andrew Or | Andrew Or |
| [SPARK-13371](https://issues.apache.org/jira/browse/SPARK-13371) | TaskSetManager.dequeueSpeculativeTask compares Option[String] and String directly. |  Major | Scheduler | Guoqiang Li | Sean Owen |
| [SPARK-13351](https://issues.apache.org/jira/browse/SPARK-13351) | Column pruning fails on expand |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13384](https://issues.apache.org/jira/browse/SPARK-13384) | Keep attribute qualifiers after dedup in Analyzer |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-12966](https://issues.apache.org/jira/browse/SPARK-12966) | Postgres JDBC ArrayType(DecimalType) 'Unable to find server array type' |  Major | SQL | Brandon Bradley | Brandon Bradley |
| [SPARK-13407](https://issues.apache.org/jira/browse/SPARK-13407) | TaskMetrics.fromAccumulatorUpdates can crash when trying to access garbage-collected accumulators |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-13304](https://issues.apache.org/jira/browse/SPARK-13304) | Broadcast join with two ints could be very slow |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13408](https://issues.apache.org/jira/browse/SPARK-13408) | Exception in resultHandler will shutdown SparkContext |  Major | . | Davies Liu | Shixiong Zhu |
| [SPARK-13310](https://issues.apache.org/jira/browse/SPARK-13310) | Missing Sorting Columns in Generate |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-13410](https://issues.apache.org/jira/browse/SPARK-13410) | unionAll AnalysisException with DataFrames containing UDT columns. |  Major | SQL | Franklyn Dsouza | Franklyn Dsouza |
| [SPARK-3650](https://issues.apache.org/jira/browse/SPARK-3650) | Triangle Count handles reverse edges incorrectly |  Critical | GraphX | Joseph E. Gonzalez | Robin East |
| [SPARK-13379](https://issues.apache.org/jira/browse/SPARK-13379) | MLlib LogisticRegressionWithLBFGS swaps L1 and L2 incorrectly |  Major | MLlib | Yanbo Liang | Yanbo Liang |
| [SPARK-12153](https://issues.apache.org/jira/browse/SPARK-12153) | Word2Vec uses a fixed length for sentences which is not reasonable for reality, and similarity functions and fields are not accessible |  Minor | MLlib | YongGang Cao | YongGang Cao |
| [SPARK-13334](https://issues.apache.org/jira/browse/SPARK-13334) | ML KMeansModel/BisectingKMeansModel should be set parent |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-12546](https://issues.apache.org/jira/browse/SPARK-12546) | Writing to partitioned parquet table can fail with OOM |  Blocker | SQL | Nong Li | Michael Armbrust |
| [SPARK-13298](https://issues.apache.org/jira/browse/SPARK-13298) | DAG visualization does not render correctly for jobs |  Major | Web UI | Lucas Woltmann | Shixiong Zhu |
| [SPARK-11624](https://issues.apache.org/jira/browse/SPARK-11624) | Spark SQL CLI will set sessionstate twice |  Critical | SQL | Adrian Wang | Adrian Wang |
| [SPARK-11972](https://issues.apache.org/jira/browse/SPARK-11972) | [Spark SQL] the value of 'hiveconf' parameter in CLI can't be got after enter spark-sql session |  Critical | SQL | Yi Zhou | Adrian Wang |
| [SPARK-12363](https://issues.apache.org/jira/browse/SPARK-12363) | PowerIterationClustering test case failed if we deprecated KMeans.setRuns |  Minor | MLlib | Yanbo Liang | Liang-Chi Hsieh |
| [SPARK-13355](https://issues.apache.org/jira/browse/SPARK-13355) | Replace GraphImpl.fromExistingRDDs by Graph |  Major | ML, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-13358](https://issues.apache.org/jira/browse/SPARK-13358) | Retrieve grep path when doing Benchmark |  Minor | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-13338](https://issues.apache.org/jira/browse/SPARK-13338) | [ML] Allow setting 'degree' parameter to 1 for PolynomialExpansion |  Major | ML, MLlib | Grzegorz Chilkiewicz | Grzegorz Chilkiewicz |
| [SPARK-13440](https://issues.apache.org/jira/browse/SPARK-13440) | Option fields in Datasets cause analysis exceptions when resolving columns |  Major | SQL | Josh Rosen | Michael Armbrust |
| [SPARK-13431](https://issues.apache.org/jira/browse/SPARK-13431) | Maven build fails due to: Method code too large! in Catalyst |  Blocker | Build | Stavros Kontopoulos | Davies Liu |
| [SPARK-13472](https://issues.apache.org/jira/browse/SPARK-13472) | Fix unstable Kmeans test in R |  Major | SparkR | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-13383](https://issues.apache.org/jira/browse/SPARK-13383) | Keep broadcast hint after column pruning |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-13475](https://issues.apache.org/jira/browse/SPARK-13475) | HiveCompatibilitySuite should still run in PR builder even if a PR only changes sql/core |  Major | SQL, Tests | Yin Huai | Yin Huai |
| [SPARK-13250](https://issues.apache.org/jira/browse/SPARK-13250) | Make vectorized parquet reader work as the build side of a broadcast join |  Major | SQL | Nong Li | Nong Li |
| [SPARK-13482](https://issues.apache.org/jira/browse/SPARK-13482) | \`spark.storage.memoryMapThreshold\` has two kind of the value. |  Major | Block Manager | carlmartin | carlmartin |
| [SPARK-13476](https://issues.apache.org/jira/browse/SPARK-13476) | Generate does not always output UnsafeRow |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13473](https://issues.apache.org/jira/browse/SPARK-13473) | Predicate can't be pushed through project with nondeterministic field |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-13444](https://issues.apache.org/jira/browse/SPARK-13444) | QuantileDiscretizer chooses bad splits on large DataFrames |  Major | MLlib | Oliver Pierson | Oliver Pierson |
| [SPARK-13441](https://issues.apache.org/jira/browse/SPARK-13441) | NullPointerException when either HADOOP\_CONF\_DIR or YARN\_CONF\_DIR is not readable |  Minor | YARN | Terence Yim | Terence Yim |
| [SPARK-12316](https://issues.apache.org/jira/browse/SPARK-12316) | Stack overflow with endless call of \`Delegation token thread\` when application end. |  Major | YARN | carlmartin | carlmartin |
| [SPARK-12486](https://issues.apache.org/jira/browse/SPARK-12486) | Executors are not always terminated successfully by the worker. |  Major | Spark Core | Nong Li | Nong Li |
| [SPARK-13069](https://issues.apache.org/jira/browse/SPARK-13069) | ActorHelper is not throttled by rate limiter |  Major | DStreams | Lin Zhao | Lin Zhao |
| [SPARK-12874](https://issues.apache.org/jira/browse/SPARK-12874) | ML StringIndexer does not protect itself from column name duplication |  Major | ML | Wojciech Jurczyk | Yu Ishikawa |
| [SPARK-13468](https://issues.apache.org/jira/browse/SPARK-13468) | Fix a corner case where the page UI should show DAG but it doesn't show |  Minor | Web UI | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [SPARK-12009](https://issues.apache.org/jira/browse/SPARK-12009) | Avoid re-allocate yarn container while driver want to stop all Executors |  Minor | YARN | SuYan | SuYan |
| [SPARK-13501](https://issues.apache.org/jira/browse/SPARK-13501) | Remove use of Guava Stopwatch class |  Major | . | Josh Rosen | Josh Rosen |
| [SPARK-12941](https://issues.apache.org/jira/browse/SPARK-12941) | Spark-SQL JDBC Oracle dialect fails to map string datatypes to Oracle VARCHAR datatype |  Major | Spark Core | Jose Martinez Poblete | Thomas Sebastian |
| [SPARK-13519](https://issues.apache.org/jira/browse/SPARK-13519) | Driver should tell Executor to stop itself when cleaning executor's state |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7483](https://issues.apache.org/jira/browse/SPARK-7483) | [MLLib] Using Kryo with FPGrowth fails with an exception |  Minor | MLlib | Tomasz Bartczak | Mark Yang |
| [SPARK-13533](https://issues.apache.org/jira/browse/SPARK-13533) | Fix readBytes in Parquet's VectorizedPlainValuesReader |  Major | SQL | Nong Li | Nong Li |
| [SPARK-13537](https://issues.apache.org/jira/browse/SPARK-13537) | Fix readBytes in VectorizedPlainValuesReader |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-13309](https://issues.apache.org/jira/browse/SPARK-13309) | Incorrect type inference for CSV data. |  Minor | SQL | Rahul Tanwani | Rahul Tanwani |
| [SPARK-13506](https://issues.apache.org/jira/browse/SPARK-13506) | Fix the wrong parameter in R code comment in AssociationRulesSuite |  Trivial | MLlib | zhengruifeng | zhengruifeng |
| [SPARK-13540](https://issues.apache.org/jira/browse/SPARK-13540) | Nested classes within Scala objects can't be used as Dataset element type |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-13522](https://issues.apache.org/jira/browse/SPARK-13522) | Executor should kill itself when it's unable to heartbeat to the driver more than N times |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-13123](https://issues.apache.org/jira/browse/SPARK-13123) | Add wholestage codegen for sort |  Major | SQL | Nong Li | Sameer Agarwal |
| [SPARK-13592](https://issues.apache.org/jira/browse/SPARK-13592) | pyspark failed to launch on Windows client |  Major | PySpark, Spark Submit, Windows | Masayoshi TSUZUKI | Masayoshi TSUZUKI |
| [SPARK-13167](https://issues.apache.org/jira/browse/SPARK-13167) | JDBC data source does not include null value partition columns rows in the result. |  Major | SQL | Suresh Thalamati | Suresh Thalamati |
| [SPARK-13515](https://issues.apache.org/jira/browse/SPARK-13515) | FormatNumber uses wrong decimal separator under some locales. |  Minor | SQL | Łukasz Gieroń | Łukasz Gieroń |
| [SPARK-12738](https://issues.apache.org/jira/browse/SPARK-12738) | GROUPING\_\_ID is wrong |  Critical | SQL | Davies Liu | Davies Liu |
| [SPARK-13627](https://issues.apache.org/jira/browse/SPARK-13627) | Fix simple deprecation warnings |  Minor | Examples, SQL, YARN | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-13652](https://issues.apache.org/jira/browse/SPARK-13652) | TransportClient.sendRpcSync returns wrong results |  Major | . | huangyu | Shixiong Zhu |
| [SPARK-13676](https://issues.apache.org/jira/browse/SPARK-13676) | Fix mismatched default values for regParam in LogisticRegression |  Major | ML, MLlib | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-13319](https://issues.apache.org/jira/browse/SPARK-13319) | Pyspark VectorSlicer, StopWordsRemvoer should have setDefault |  Minor | PySpark | Xusen Yin | Xusen Yin |
| [SPARK-12073](https://issues.apache.org/jira/browse/SPARK-12073) | Backpressure causes individual Kafka partitions to lag |  Major | DStreams | Jason White | Jason White |
| [SPARK-13697](https://issues.apache.org/jira/browse/SPARK-13697) | TransformFunctionSerializer.loads doesn't restore the function's module name if it's '\_\_main\_\_' |  Major | PySpark | Shixiong Zhu | Shixiong Zhu |
| [SPARK-13705](https://issues.apache.org/jira/browse/SPARK-13705) | UpdateStateByKey Operation documentation incorrectly refers to StatefulNetworkWordCount |  Trivial | Documentation | Rishi | Rishi |
| [SPARK-13651](https://issues.apache.org/jira/browse/SPARK-13651) | Generator outputs are not resolved correctly resulting in runtime error |  Major | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-13722](https://issues.apache.org/jira/browse/SPARK-13722) | No Push Down for Non-deterministic Predicates through Generate |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-13655](https://issues.apache.org/jira/browse/SPARK-13655) | Fix WithAggregationKinesisBackedBlockRDDSuite |  Major | DStreams | Dongjoon Hyun | Josh Rosen |
| [SPARK-13648](https://issues.apache.org/jira/browse/SPARK-13648) | org.apache.spark.sql.hive.client.VersionsSuite fails NoClassDefFoundError on IBM JDK |  Minor | SQL | Tim Preece | Tim Preece |
| [SPARK-13711](https://issues.apache.org/jira/browse/SPARK-13711) | Apache Spark driver stopping JVM when master not available |  Major | Spark Core | Era | Shixiong Zhu |
| [SPARK-13675](https://issues.apache.org/jira/browse/SPARK-13675) | The url link in historypage is not correct for application running in yarn cluster mode |  Major | Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-13657](https://issues.apache.org/jira/browse/SPARK-13657) | Support parsing very long AND/OR expression |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13755](https://issues.apache.org/jira/browse/SPARK-13755) | Escape quotes in SQL plan visualization node labels |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-7286](https://issues.apache.org/jira/browse/SPARK-7286) | Precedence of operator not behaving properly |  Critical | SQL | DevilJetha | Jakob Odersky |
| [SPARK-13692](https://issues.apache.org/jira/browse/SPARK-13692) | Fix trivial Coverity/Checkstyle defects |  Trivial | Examples, Spark Core, SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-13640](https://issues.apache.org/jira/browse/SPARK-13640) | Synchronize ScalaReflection.mirror method. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-13631](https://issues.apache.org/jira/browse/SPARK-13631) | getPreferredLocations race condition in spark 1.6.0? |  Major | Scheduler | Andy Sloane | Andy Sloane |
| [SPARK-13769](https://issues.apache.org/jira/browse/SPARK-13769) | Java Doc needs update in SparkSubmit.scala |  Trivial | Documentation, Mesos | Ahmed Kamal | Ahmed Kamal |
| [SPARK-13242](https://issues.apache.org/jira/browse/SPARK-13242) | Moderately complex \`when\` expression causes code generation failure |  Major | SQL | Joe Halliwell | Davies Liu |
| [SPARK-13778](https://issues.apache.org/jira/browse/SPARK-13778) | Master's ApplicationPage displays wrong application executor state when a worker is lost |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-13727](https://issues.apache.org/jira/browse/SPARK-13727) | SparkConf.contains does not consider deprecated keys |  Minor | Spark Core | Marcelo Vanzin | Bo Meng |
| [SPARK-13604](https://issues.apache.org/jira/browse/SPARK-13604) | Sync worker's state after registering with master |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-13327](https://issues.apache.org/jira/browse/SPARK-13327) | colnames()\<- allows invalid column names |  Major | SparkR | Oscar D. Lara Yejas | Oscar D. Lara Yejas |
| [SPARK-13780](https://issues.apache.org/jira/browse/SPARK-13780) | SQL "incremental" build in maven is broken |  Minor | Build, SQL | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-13328](https://issues.apache.org/jira/browse/SPARK-13328) | Possible poor read performance for broadcast variables with dynamic resource allocation |  Major | Spark Core | Nezih Yigitbasi | Nezih Yigitbasi |
| [SPARK-13812](https://issues.apache.org/jira/browse/SPARK-13812) | Fix SparkR lint-r test errors |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-13207](https://issues.apache.org/jira/browse/SPARK-13207) | \_SUCCESS should not break partition discovery |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-13779](https://issues.apache.org/jira/browse/SPARK-13779) | YarnAllocator cancels and resubmits container requests with no locality preference |  Major | YARN | Ryan Blue | Ryan Blue |
| [SPARK-13658](https://issues.apache.org/jira/browse/SPARK-13658) | BooleanSimplification rule is slow with large boolean expressions |  Major | SQL | Davies Liu | Liang-Chi Hsieh |
| [SPARK-13848](https://issues.apache.org/jira/browse/SPARK-13848) | Upgrade to Py4J 0.9.2 |  Major | PySpark | Josh Rosen | Josh Rosen |
| [SPARK-5185](https://issues.apache.org/jira/browse/SPARK-5185) | pyspark --jars does not add classes to driver class path |  Major | PySpark | Uri Laserson | Josh Rosen |
| [SPARK-12583](https://issues.apache.org/jira/browse/SPARK-12583) | spark shuffle fails with mesos after 2mins |  Major | Shuffle | Adrian Bridgett | Bertrand Bossy |
| [SPARK-13054](https://issues.apache.org/jira/browse/SPARK-13054) | Always post TaskEnd event for tasks in cancelled stages |  Major | Scheduler | Andrew Or | Thomas Graves |
| [SPARK-13686](https://issues.apache.org/jira/browse/SPARK-13686) | Add a constructor parameter \`regParam\` to (Streaming)LinearRegressionWithSGD |  Minor | DStreams, MLlib | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-10907](https://issues.apache.org/jira/browse/SPARK-10907) | Get rid of pending unroll memory |  Major | Block Manager | Andrew Or | Josh Rosen |
| [SPARK-13796](https://issues.apache.org/jira/browse/SPARK-13796) | Lock release errors occur frequently in executor logs |  Minor | Spark Core | Nishkam Ravi | Nishkam Ravi |
| [SPARK-6157](https://issues.apache.org/jira/browse/SPARK-6157) | Unrolling with MEMORY\_AND\_DISK should always release memory |  Major | Block Manager | SuYan | Josh Rosen |
| [SPARK-13626](https://issues.apache.org/jira/browse/SPARK-13626) | SparkConf deprecation log messages are printed multiple times |  Minor | Spark Core, SQL | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-13870](https://issues.apache.org/jira/browse/SPARK-13870) | Add scalastyle escaping correctly in CVSSuite.scala |  Trivial | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-13840](https://issues.apache.org/jira/browse/SPARK-13840) | Split Optimizer Rule ColumnPruning to ColumnPruning and EliminateOperator |  Critical | SQL | Xiao Li | Xiao Li |
| [SPARK-13803](https://issues.apache.org/jira/browse/SPARK-13803) | Standalone master does not balance cluster-mode drivers across workers |  Major | Deploy, Spark Core | Brian Wongchaowart | Nan Zhu |
| [SPARK-13642](https://issues.apache.org/jira/browse/SPARK-13642) | Properly handle signal kill of ApplicationMaster |  Major | YARN | Saisai Shao | Saisai Shao |
| [SPARK-13920](https://issues.apache.org/jira/browse/SPARK-13920) | MIMA checks should apply to @Experimental and @DeveloperAPI APIs |  Major | Project Infra | Josh Rosen | Dongjoon Hyun |
| [SPARK-13906](https://issues.apache.org/jira/browse/SPARK-13906) | Spark driver hangs when slave is started or stopped (org.apache.spark.rpc.RpcTimeoutException). |  Minor | Spark Core | Yonathan Randolph | Yonathan Randolph |
| [SPARK-13793](https://issues.apache.org/jira/browse/SPARK-13793) | PipedRDD doesn't propagate exceptions while reading parent RDDd |  Minor | Spark Core | Tejas Patil | Tejas Patil |
| [SPARK-13889](https://issues.apache.org/jira/browse/SPARK-13889) | Integer overflow when calculating the max number of executor failure |  Major | YARN | Carson Wang | Carson Wang |
| [SPARK-13360](https://issues.apache.org/jira/browse/SPARK-13360) | pyspark related enviroment variable is not propagated to driver in yarn-cluster mode |  Major | PySpark, YARN | Jeff Zhang | Jeff Zhang |
| [SPARK-13827](https://issues.apache.org/jira/browse/SPARK-13827) | Can't add subquery to an operator with same-name outputs while generate SQL string |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-13923](https://issues.apache.org/jira/browse/SPARK-13923) | Implement SessionCatalog to manage temp functions and tables |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-13719](https://issues.apache.org/jira/browse/SPARK-13719) | Bad JSON record raises ﻿java.lang.ClassCastException |  Minor | SQL | dmtran | Hyukjin Kwon |
| [SPARK-13403](https://issues.apache.org/jira/browse/SPARK-13403) | HiveConf used for SparkSQL is not based on the Hadoop configuration |  Major | Spark Core | Ryan Blue | Ryan Blue |
| [SPARK-13948](https://issues.apache.org/jira/browse/SPARK-13948) |  MiMa Check should catch if the visibility change to \`private\` |  Critical | Build, Project Infra | Dongjoon Hyun | Josh Rosen |
| [SPARK-13901](https://issues.apache.org/jira/browse/SPARK-13901) | We get wrong logdebug information when jump to the next locality level. |  Trivial | Scheduler, Spark Core | yaoyin | yaoyin |
| [SPARK-13776](https://issues.apache.org/jira/browse/SPARK-13776) | Web UI is not available after ./sbin/start-master.sh |  Minor | Web UI | Erik O'Shaughnessy | Shixiong Zhu |
| [SPARK-13937](https://issues.apache.org/jira/browse/SPARK-13937) | PySpark ML JavaWrapper, variable \_java\_obj should not be static |  Trivial | ML, PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-13976](https://issues.apache.org/jira/browse/SPARK-13976) | do not remove sub-queries added by user when generate SQL |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-14001](https://issues.apache.org/jira/browse/SPARK-14001) | support multi-children Union in SQLBuilder |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-14004](https://issues.apache.org/jira/browse/SPARK-14004) | NamedExpressions should have at most one qualifier |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-13885](https://issues.apache.org/jira/browse/SPARK-13885) | Spark On Yarn attempt id representation regression |  Major | YARN | Saisai Shao | Saisai Shao |
| [SPARK-13958](https://issues.apache.org/jira/browse/SPARK-13958) | Executor OOM due to unbounded growth of pointer array in Sorter |  Major | Shuffle, Spark Core | Sital Kedia | Sital Kedia |
| [SPARK-14018](https://issues.apache.org/jira/browse/SPARK-14018) | BenchmarkWholeStageCodegen should accept 64-bit num records |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-10680](https://issues.apache.org/jira/browse/SPARK-10680) | Flaky test: network.RequestTimeoutIntegrationSuite.timeoutInactiveRequests |  Critical | Spark Core, Tests | Xiangrui Meng | Shixiong Zhu |
| [SPARK-12789](https://issues.apache.org/jira/browse/SPARK-12789) | Support order by ordinal in SQL |  Minor | SQL | zhichao-li | Xiao Li |
| [SPARK-14000](https://issues.apache.org/jira/browse/SPARK-14000) | case class with a tuple field can't work in Dataset |  Major | Spark Core | Wenchen Fan | Wenchen Fan |
| [SPARK-13774](https://issues.apache.org/jira/browse/SPARK-13774) | IllegalArgumentException: Can not create a Path from an empty string for incorrect file path |  Minor | SQL | Jacek Laskowski | Sunitha Kambhampati |
| [SPARK-13806](https://issues.apache.org/jira/browse/SPARK-13806) | SQL round() produces incorrect results for negative values |  Major | SQL | Mark Hamstra | Davies Liu |
| [SPARK-14074](https://issues.apache.org/jira/browse/SPARK-14074) | Use fixed version of install\_github in SparkR build |  Minor | Build, SparkR | Xiangrui Meng | Sun Rui |
| [SPARK-14055](https://issues.apache.org/jira/browse/SPARK-14055) | AssertionError may happeneds if not unlock writeLock when doing 'removeBlock' method |  Critical | Block Manager, Spark Core | Yuanzhen Geng | Yuanzhen Geng |
| [SPARK-14092](https://issues.apache.org/jira/browse/SPARK-14092) | Performance regression when aggregation on parquet scan |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13952](https://issues.apache.org/jira/browse/SPARK-13952) | spark.ml GBT algs need to use random seed |  Minor | ML | Joseph K. Bradley | Seth Hendrickson |
| [SPARK-12443](https://issues.apache.org/jira/browse/SPARK-12443) | encoderFor should support Decimal |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-14137](https://issues.apache.org/jira/browse/SPARK-14137) | Conflict between NullPropagation and InferFiltersFromConstraints |  Major | . | Davies Liu | Sameer Agarwal |
| [SPARK-14091](https://issues.apache.org/jira/browse/SPARK-14091) | Improve performance of SparkContext.getCallSite() |  Major | Spark Core | Rajesh Balamohan | Rajesh Balamohan |
| [SPARK-14187](https://issues.apache.org/jira/browse/SPARK-14187) | Incorrect use of binarysearch in SparseMatrix |  Minor | MLlib | Chenliang Xu | Chenliang Xu |
| [SPARK-14156](https://issues.apache.org/jira/browse/SPARK-14156) | Use executedPlan for HiveComparisonTest |  Minor | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-13622](https://issues.apache.org/jira/browse/SPARK-13622) | Issue creating level db file for YARN shuffle service if URI is used in yarn.nodemanager.local-dirs |  Minor | YARN | Nicolas Fraison | Nicolas Fraison |
| [SPARK-13447](https://issues.apache.org/jira/browse/SPARK-13447) | Fix AM failure situation for dynamic allocation disabled situation |  Major | Spark Core, YARN | Saisai Shao | Saisai Shao |
| [SPARK-14219](https://issues.apache.org/jira/browse/SPARK-14219) | Fix \`pickRandomVertex\` not to fall into infinite loops for graphs with one vertex |  Major | GraphX | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14232](https://issues.apache.org/jira/browse/SPARK-14232) | Event timeline on job page doesn't show if an executor is removed with multiple line reason |  Minor | Web UI | Carson Wang | Carson Wang |
| [SPARK-13955](https://issues.apache.org/jira/browse/SPARK-13955) | Spark in yarn mode fails |  Major | YARN | Jeff Zhang | Marcelo Vanzin |
| [SPARK-11507](https://issues.apache.org/jira/browse/SPARK-11507) | Error thrown when using BlockMatrix.add |  Minor | MLlib | Kareem Alhazred | yuhao yang |
| [SPARK-14282](https://issues.apache.org/jira/browse/SPARK-14282) | CodeFormatter should handle oneline comment with /\* \*/ properly |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14081](https://issues.apache.org/jira/browse/SPARK-14081) | DataFrameNaFunctions fill should not convert float fields to double |  Major | SQL | Travis Crawford | Travis Crawford |
| [SPARK-14182](https://issues.apache.org/jira/browse/SPARK-14182) | Parse DDL command: Alter View |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-11327](https://issues.apache.org/jira/browse/SPARK-11327) | spark-dispatcher doesn't pass along some spark properties |  Major | Mesos | Alan Braithwaite | Jo Voordeckers |
| [SPARK-14278](https://issues.apache.org/jira/browse/SPARK-14278) | Initialize columnar batch with proper memory mode |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-13710](https://issues.apache.org/jira/browse/SPARK-13710) | Spark shell shows ERROR when launching on Windows |  Minor | Spark Shell, Windows | Masayoshi TSUZUKI | Michel Lemay |
| [SPARK-13995](https://issues.apache.org/jira/browse/SPARK-13995) | Extract correct IsNotNull constraints for Expression |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-14191](https://issues.apache.org/jira/browse/SPARK-14191) | Fix Expand operator constraints |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-12181](https://issues.apache.org/jira/browse/SPARK-12181) | Check Cached unaligned-access capability before using Unsafe |  Major | Spark Core | Ted Yu | Ted Yu |
| [SPARK-13845](https://issues.apache.org/jira/browse/SPARK-13845) | BlockStatus and StreamBlockId keep on growing result driver OOM |  Major | Spark Core | jeanlyn | jeanlyn |
| [SPARK-12864](https://issues.apache.org/jira/browse/SPARK-12864) | Fetch failure from AM restart |  Major | YARN | iward | iward |
| [SPARK-14244](https://issues.apache.org/jira/browse/SPARK-14244) | Physical Window operator uses global SizeBasedWindowFunction.n attribute generated on both driver and executor side |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-14138](https://issues.apache.org/jira/browse/SPARK-14138) | Generated SpecificColumnarIterator code can exceed JVM size limit for cached DataFrames |  Major | SQL | Sven Krasser | Kazuaki Ishizaki |
| [SPARK-14231](https://issues.apache.org/jira/browse/SPARK-14231) | JSON data source fails to infer floats as decimal when precision is bigger than 38 or scale is bigger than precision. |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-14163](https://issues.apache.org/jira/browse/SPARK-14163) | SumEvaluator and countApprox cannot reliably handle RDDs of size 1 |  Minor | Spark Core | Marcin Tustin | Marcin Tustin |
| [SPARK-14355](https://issues.apache.org/jira/browse/SPARK-14355) | Fix typos in Exception/Testcase/Comments and static analysis results |  Minor | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14356](https://issues.apache.org/jira/browse/SPARK-14356) | Update spark.sql.execution.debug to work on Datasets |  Minor | SQL | Matei Zaharia | Matei Zaharia |
| [SPARK-12981](https://issues.apache.org/jira/browse/SPARK-12981) | Dataframe distinct() followed by a filter(udf) in pyspark throws a casting error |  Critical | PySpark, SQL | Tom Arnfeld | Davies Liu |
| [SPARK-14364](https://issues.apache.org/jira/browse/SPARK-14364) | HeartbeatReceiver object should be private[spark] |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-13456](https://issues.apache.org/jira/browse/SPARK-13456) | Cannot create encoders for case classes defined in Spark shell after upgrading to Scala 2.11 |  Blocker | SQL | Cheng Lian | Wenchen Fan |
| [SPARK-14368](https://issues.apache.org/jira/browse/SPARK-14368) | Support python.spark.worker.memory with upper-case unit |  Trivial | PySpark | Masahiro Tanaka | Yong Tang |
| [SPARK-14397](https://issues.apache.org/jira/browse/SPARK-14397) | \<html\> and \<body\> tags are nested in LogPage |  Minor | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-14243](https://issues.apache.org/jira/browse/SPARK-14243) | updatedBlockStatuses does not update correctly when removing blocks |  Major | Spark Core | jeanlyn | jeanlyn |
| [SPARK-14252](https://issues.apache.org/jira/browse/SPARK-14252) | Executors do not try to download remote cached blocks |  Major | Spark Core | Marcelo Vanzin | Eric Liang |
| [SPARK-14430](https://issues.apache.org/jira/browse/SPARK-14430) | use https while downloading binaries from build/mvn |  Trivial | Build | Prajwal Tuladhar | Prajwal Tuladhar |
| [SPARK-14418](https://issues.apache.org/jira/browse/SPARK-14418) | Broadcast.unpersist() in PySpark is not consistent with that in Scala |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-14429](https://issues.apache.org/jira/browse/SPARK-14429) | Improve LIKE pattern in "SHOW TABLES / FUNCTIONS LIKE \<pattern\>" DDL |  Minor | SQL | Bo Meng | Bo Meng |
| [SPARK-14383](https://issues.apache.org/jira/browse/SPARK-14383) | Missing "\|" in the g4 definition |  Trivial | SQL | Bo Meng | Bo Meng |
| [SPARK-14322](https://issues.apache.org/jira/browse/SPARK-14322) | Use treeAggregate instead of reduce in OnlineLDAOptimizer |  Major | ML, MLlib | Joseph K. Bradley | yuhao yang |
| [SPARK-14224](https://issues.apache.org/jira/browse/SPARK-14224) | Cannot project all columns from a table with ~1,100 columns |  Major | . | Hossein Falaki | Davies Liu |
| [SPARK-14223](https://issues.apache.org/jira/browse/SPARK-14223) | Cannot project all columns from a parquet files with ~1,100 columns |  Critical | SQL | Hossein Falaki | Davies Liu |
| [SPARK-14310](https://issues.apache.org/jira/browse/SPARK-14310) | Fix scan whole stage codegen to determine if batches are produced based on schema |  Major | . | Nong Li | Davies Liu |
| [SPARK-14424](https://issues.apache.org/jira/browse/SPARK-14424) | spark-class and related (spark-shell, etc.) no longer work with sbt build as documented |  Minor | Build | holdenk | holdenk |
| [SPARK-13112](https://issues.apache.org/jira/browse/SPARK-13112) | CoarsedExecutorBackend register to driver should wait Executor was ready |  Major | Spark Core | SuYan | Shixiong Zhu |
| [SPARK-14436](https://issues.apache.org/jira/browse/SPARK-14436) | Illegal access error when running tests that extend JavaDatasetAggregatorSuiteBase |  Minor | SQL | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-14446](https://issues.apache.org/jira/browse/SPARK-14446) | ReplSuite fails on Scala 2.10 |  Major | Tests | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-14134](https://issues.apache.org/jira/browse/SPARK-14134) | SQLListenerSuite fails on maven builds |  Major | Tests | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-8815](https://issues.apache.org/jira/browse/SPARK-8815) | illegal java package names in jar |  Minor | Spark Core | Sam Halliday | Marcelo Vanzin |
| [SPARK-10063](https://issues.apache.org/jira/browse/SPARK-10063) | Remove DirectParquetOutputCommitter |  Critical | SQL | Yin Huai | Reynold Xin |
| [SPARK-14456](https://issues.apache.org/jira/browse/SPARK-14456) | Remove unused variables and logics in DataSource |  Minor | SQL | Kousuke Saruta | Kousuke Saruta |
| [SPARK-13932](https://issues.apache.org/jira/browse/SPARK-13932) | CUBE Query with filter (HAVING) and condition (IF) raises an AnalysisException |  Major | SQL | Tien-Dung LE | Davies Liu |
| [SPARK-14468](https://issues.apache.org/jira/browse/SPARK-14468) | Always enable OutputCommitCoordinator |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-14449](https://issues.apache.org/jira/browse/SPARK-14449) | SparkContext should use SparkListenerInterface |  Major | Spark Core | Michael Armbrust | Michael Armbrust |
| [SPARK-13048](https://issues.apache.org/jira/browse/SPARK-13048) | EMLDAOptimizer deletes dependent checkpoint of DistributedLDAModel |  Major | MLlib | Jeff Stein | Joseph K. Bradley |
| [SPARK-14103](https://issues.apache.org/jira/browse/SPARK-14103) | Python DataFrame CSV load on large file is writing to console in Ipython |  Major | PySpark | Shubhanshu Mishra | Hyukjin Kwon |
| [SPARK-14189](https://issues.apache.org/jira/browse/SPARK-14189) | JSON data source infers a field type as StringType when some are inferred as DecimalType not capable of IntegralType. |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-14402](https://issues.apache.org/jira/browse/SPARK-14402) | initcap UDF doesn't match Hive/Oracle behavior in lowercasing rest of string |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14477](https://issues.apache.org/jira/browse/SPARK-14477) | Allow custom mirrors for downloading artifacts in build/mvn |  Minor | Build | Mark Grover | Mark Grover |
| [SPARK-14437](https://issues.apache.org/jira/browse/SPARK-14437) | Spark using Netty RPC gets wrong address in some setups |  Major | Block Manager, Spark Core | Kevin Hogeland | Shixiong Zhu |
| [SPARK-14454](https://issues.apache.org/jira/browse/SPARK-14454) | Better exception handling while marking tasks as failed |  Major | Spark Core | Sameer Agarwal | Sameer Agarwal |
| [SPARK-14496](https://issues.apache.org/jira/browse/SPARK-14496) | some typos in the java doc while browsing the codes |  Trivial | SQL | Bo Meng | Bo Meng |
| [SPARK-14481](https://issues.apache.org/jira/browse/SPARK-14481) | Issue Exceptions for All Unsupported Options during Parsing |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-14465](https://issues.apache.org/jira/browse/SPARK-14465) | Checkstyle should check all Java files. |  Minor | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14217](https://issues.apache.org/jira/browse/SPARK-14217) | Vectorized parquet reader produces wrong result if data used dictionary encoding fallback |  Major | . | Nong Li | Davies Liu |
| [SPARK-14455](https://issues.apache.org/jira/browse/SPARK-14455) | ReceiverTracker#allocatedExecutors throw NPE for receiver-less streaming application |  Major | DStreams | Saisai Shao | Saisai Shao |
| [SPARK-14357](https://issues.apache.org/jira/browse/SPARK-14357) | Tasks that fail due to CommitDeniedException (a side-effect of speculation) can cause job failure |  Critical | Spark Core | Jason Moore | Jason Moore |
| [SPARK-13352](https://issues.apache.org/jira/browse/SPARK-13352) | BlockFetch does not scale well on large block |  Critical | Block Manager, Spark Core | Davies Liu | Zhang, Liye |
| [SPARK-14253](https://issues.apache.org/jira/browse/SPARK-14253) | Avoid registering temporary functions in Hive |  Major | SQL | Andrew Or | Liang-Chi Hsieh |
| [SPARK-14528](https://issues.apache.org/jira/browse/SPARK-14528) | SameResult on Union is broken |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13600](https://issues.apache.org/jira/browse/SPARK-13600) | Use approxQuantile from DataFrame stats in QuantileDiscretizer |  Major | MLlib | Oliver Pierson | Oliver Pierson |
| [SPARK-14298](https://issues.apache.org/jira/browse/SPARK-14298) | LDA should support disable checkpoint |  Minor | ML, MLlib | Yanbo Liang | Yanbo Liang |
| [SPARK-14520](https://issues.apache.org/jira/browse/SPARK-14520) | ClasscastException thrown with spark.sql.parquet.enableVectorizedReader=true |  Major | SQL | Rajesh Balamohan | Liang-Chi Hsieh |
| [SPARK-14554](https://issues.apache.org/jira/browse/SPARK-14554) | disable whole stage codegen if there are too many input columns |  Critical | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-14488](https://issues.apache.org/jira/browse/SPARK-14488) | "CREATE TEMPORARY TABLE ... USING ... AS SELECT ..." creates persisted table |  Critical | SQL | Cheng Lian | Cheng Lian |
| [SPARK-14493](https://issues.apache.org/jira/browse/SPARK-14493) | "CREATE TEMPORARY TABLE ... USING ... AS SELECT ..." should always be used with a user defined path |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-14563](https://issues.apache.org/jira/browse/SPARK-14563) | SQLTransformer.transformSchema is not implemented correctly |  Major | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-14147](https://issues.apache.org/jira/browse/SPARK-14147) | SparkR - ML predictors return features with vector datatype, however SparkR doesn't support it |  Major | SparkR | Narine Kokhlikyan | Yanbo Liang |
| [SPARK-14513](https://issues.apache.org/jira/browse/SPARK-14513) | Threads left behind after stopping SparkContext |  Major | Spark Core | Terence Yim | Terence Yim |
| [SPARK-14544](https://issues.apache.org/jira/browse/SPARK-14544) | Spark UI is very slow in recent Chrome |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-14363](https://issues.apache.org/jira/browse/SPARK-14363) | Executor OOM due to a memory leak in Sorter |  Major | Shuffle | Sital Kedia | Sital Kedia |
| [SPARK-14578](https://issues.apache.org/jira/browse/SPARK-14578) | Can't load a json dataset with nested wide schema |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13982](https://issues.apache.org/jira/browse/SPARK-13982) | SparkR - KMeans predict: Output column name of features is an unclear, automatic generated text |  Minor | SparkR | Narine Kokhlikyan | Yanbo Liang |
| [SPARK-14537](https://issues.apache.org/jira/browse/SPARK-14537) | [CORE] SparkContext init hangs if master removes application before backend is ready. |  Major | Scheduler | Charles R Allen | Charles R Allen |
| [SPARK-14607](https://issues.apache.org/jira/browse/SPARK-14607) | Partition pruning is case sensitive even with HiveContext |  Major | . | Davies Liu | Davies Liu |
| [SPARK-12133](https://issues.apache.org/jira/browse/SPARK-12133) | Support dynamic allocation in Spark Streaming |  Major | DStreams, Spark Core | Andrew Or | Tathagata Das |
| [SPARK-14573](https://issues.apache.org/jira/browse/SPARK-14573) | Python docs Makefile overrides shell environment variables breaking linting |  Minor | Build, PySpark | holdenk | holdenk |
| [SPARK-14558](https://issues.apache.org/jira/browse/SPARK-14558) | In ClosureCleaner, clean the outer pointer if it's a REPL line object |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-14665](https://issues.apache.org/jira/browse/SPARK-14665) | PySpark StopWordsRemover default stopwords are Java object |  Minor | ML, PySpark | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-14677](https://issues.apache.org/jira/browse/SPARK-14677) | Make the max number of iterations configurable for Catalyst |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-13363](https://issues.apache.org/jira/browse/SPARK-13363) | Aggregator not working with DataFrame |  Blocker | SQL | koert kuipers | Wenchen Fan |
| [SPARK-14632](https://issues.apache.org/jira/browse/SPARK-14632) | randomSplit method fails on dataframes with maps in schema |  Major | . | Stefano Costantini | Subhobrata Dey |
| [SPARK-14423](https://issues.apache.org/jira/browse/SPARK-14423) | Handle jar conflict issue when uploading to distributed cache |  Major | YARN | Saisai Shao | Saisai Shao |
| [SPARK-14580](https://issues.apache.org/jira/browse/SPARK-14580) | HiveTypeCoercion.IfCoercion should preserve original predicates. |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14504](https://issues.apache.org/jira/browse/SPARK-14504) | Enable Oracle docker integration tests |  Minor | SQL | Luciano Resende | Luciano Resende |
| [SPARK-13698](https://issues.apache.org/jira/browse/SPARK-13698) | Fix Analysis Exceptions when Using Backticks in Generate |  Major | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-14714](https://issues.apache.org/jira/browse/SPARK-14714) | PySpark Param TypeConverter arg is not passed by name in some cases |  Minor | ML, PySpark | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-14711](https://issues.apache.org/jira/browse/SPARK-14711) | Examples jar not a part of distribution |  Major | Build | Mark Grover | Mark Grover |
| [SPARK-13227](https://issues.apache.org/jira/browse/SPARK-13227) | Risky apply() in OpenHashMap |  Minor | Spark Core | Nan Zhu | Nan Zhu |
| [SPARK-14676](https://issues.apache.org/jira/browse/SPARK-14676) | Catch, wrap, and re-throw exceptions from Await.result in order to capture full stacktrace |  Major | . | Josh Rosen | Josh Rosen |
| [SPARK-14458](https://issues.apache.org/jira/browse/SPARK-14458) | Wrong data schema is passed to FileFormat data sources that can't infer schema |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-14566](https://issues.apache.org/jira/browse/SPARK-14566) | When appending to partitioned persisted table, we should apply a projection over input query plan using existing metastore schema |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-14675](https://issues.apache.org/jira/browse/SPARK-14675) | ClassFormatError in codegen when using Aggregator |  Major | SQL | koert kuipers | Wenchen Fan |
| [SPARK-14656](https://issues.apache.org/jira/browse/SPARK-14656) | Benchmark.getPorcessorName() always return "Unknown processor" on Linux |  Critical | Spark Core | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-12224](https://issues.apache.org/jira/browse/SPARK-12224) | R support for JDBC source |  Minor | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-13929](https://issues.apache.org/jira/browse/SPARK-13929) | Use Scala reflection for UDFs |  Minor | SQL | Jakob Odersky | Joan Goyeau |
| [SPARK-14705](https://issues.apache.org/jira/browse/SPARK-14705) | support Multiple FileSystem for YARN STAGING DIR |  Major | YARN | Lianhui Wang | Lianhui Wang |
| [SPARK-14679](https://issues.apache.org/jira/browse/SPARK-14679) | UI DAG visualization causes OOM generating data |  Major | Web UI | Ryan Blue | Ryan Blue |
| [SPARK-14725](https://issues.apache.org/jira/browse/SPARK-14725) | Remove HttpServer |  Minor | Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-14741](https://issues.apache.org/jira/browse/SPARK-14741) | Streaming from partitioned directory structure captures unintended partition columns |  Major | SQL | Tathagata Das | Tathagata Das |
| [SPARK-14749](https://issues.apache.org/jira/browse/SPARK-14749) | PlannerSuite failed when it runs individually |  Minor | SQL, Tests | Yin Huai | Subhobrata Dey |
| [SPARK-14602](https://issues.apache.org/jira/browse/SPARK-14602) | [YARN+Windows] Setting SPARK\_YARN\_CACHE\_FILES exceeds command line length limit on Windows |  Major | Deploy, Spark Submit, Windows, YARN | Sebastian Kochman | Marcelo Vanzin |
| [SPARK-14786](https://issues.apache.org/jira/browse/SPARK-14786) | Remove hive-cli dependency from hive subproject |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-14739](https://issues.apache.org/jira/browse/SPARK-14739) | Vectors.parse doesn't handle dense vectors of size 0 and sparse vectors with no indices |  Major | MLlib, PySpark | Maciej Szymkiewicz | Arash Parsa |
| [SPARK-14779](https://issues.apache.org/jira/browse/SPARK-14779) | Incorrect log message in Worker while handling KillExecutor message |  Trivial | Spark Core | Bryan Cutler | Bryan Cutler |
| [SPARK-14797](https://issues.apache.org/jira/browse/SPARK-14797) | Spark SQL should not hardcode dependency on spark-sketch\_2.11 |  Major | Build | Josh Rosen | Josh Rosen |
| [SPARK-4452](https://issues.apache.org/jira/browse/SPARK-4452) | Shuffle data structures can starve others on the same thread for memory |  Major | Spark Core | Tianshuo Deng | Lianhui Wang |
| [SPARK-14783](https://issues.apache.org/jira/browse/SPARK-14783) | Log full exception stacktrace in IsolatedClientLoader |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-14789](https://issues.apache.org/jira/browse/SPARK-14789) | Move FunctionResourceLoader into SessionState |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-14699](https://issues.apache.org/jira/browse/SPARK-14699) | Driver is marked as failed even it runs successfully |  Major | Spark Core | Huiqiang Liu | Shixiong Zhu |
| [SPARK-14774](https://issues.apache.org/jira/browse/SPARK-14774) | Write unscaled values in ColumnVector.putDecimal |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-14793](https://issues.apache.org/jira/browse/SPARK-14793) | Code generation for large complex type exceeds JVM size limit. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-14848](https://issues.apache.org/jira/browse/SPARK-14848) | DatasetSuite - Java encoder fails on Big Endian platforms |  Major | SQL | Pete Robbins | Pete Robbins |
| [SPARK-13266](https://issues.apache.org/jira/browse/SPARK-13266) | Python DataFrameReader converts None to "None" instead of null |  Major | PySpark, SQL | mathieu longtin | Liang-Chi Hsieh |
| [SPARK-14843](https://issues.apache.org/jira/browse/SPARK-14843) | Error while encoding: java.lang.ClassCastException with LibSVMRelation |  Major | ML, MLlib, SQL | Nick Pentreath | Liang-Chi Hsieh |
| [SPARK-13178](https://issues.apache.org/jira/browse/SPARK-13178) | RRDD faces with concurrency issue in case of rdd.zip(rdd).count() |  Major | SparkR | Xusen Yin | Sun Rui |
| [SPARK-14762](https://issues.apache.org/jira/browse/SPARK-14762) | Fail to parse TPCDS Q90 |  Blocker | SQL | Davies Liu | Herman van Hovell |
| [SPARK-14763](https://issues.apache.org/jira/browse/SPARK-14763) | Can't analyze TPCDS Q70 |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-14791](https://issues.apache.org/jira/browse/SPARK-14791) | TPCDS Q23B generate different result each time |  Blocker | SQL | Davies Liu | Davies Liu |
| [SPARK-13831](https://issues.apache.org/jira/browse/SPARK-13831) | TPC-DS Query 35 fails with the following compile error |  Major | SQL | Roy Cecil | Herman van Hovell |
| [SPARK-14701](https://issues.apache.org/jira/browse/SPARK-14701) | checkpointWriter is stopped before eventLoop. Hence rejectedExecution exception is coming in StreamingContext.stop |  Minor | DStreams | Sreelal S L | Liwei Lin(Inactive) |
| [SPARK-14856](https://issues.apache.org/jira/browse/SPARK-14856) | Returning batch unexpected from wide table |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-14838](https://issues.apache.org/jira/browse/SPARK-14838) | Implement statistics in SerializeFromObject to avoid failure when estimating sizeInBytes for ObjectType |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-14691](https://issues.apache.org/jira/browse/SPARK-14691) | Simplify and Unify Error Generation for Unsupported Alter Table DDL |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-14883](https://issues.apache.org/jira/browse/SPARK-14883) | Fix wrong R examples and make them up-to-date |  Major | Documentation, Examples | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14881](https://issues.apache.org/jira/browse/SPARK-14881) | pyspark and sparkR shell default log level should match spark-shell/Scala |  Minor | PySpark, Spark Shell, SparkR | Felix Cheung | Felix Cheung |
| [SPARK-14870](https://issues.apache.org/jira/browse/SPARK-14870) | NPE in generate aggregate |  Major | SQL | Davies Liu | Sameer Agarwal |
| [SPARK-14875](https://issues.apache.org/jira/browse/SPARK-14875) | OutputWriterFactory.newInstance shouldn't be private[sql] |  Major | . | Cheng Lian | Cheng Lian |
| [SPARK-14892](https://issues.apache.org/jira/browse/SPARK-14892) | Disable the HiveCompatibilitySuite test case for INPUTDRIVER and OUTPUTDRIVER |  Minor | SQL | Xiao Li | Xiao Li |
| [SPARK-14731](https://issues.apache.org/jira/browse/SPARK-14731) | Revert SPARK-12130 to make 2.0 shuffle service compatible with 1.x |  Major | Shuffle | Mark Grover | Lianhui Wang |
| [SPARK-14861](https://issues.apache.org/jira/browse/SPARK-14861) | Replace internal usages of SQLContext with SparkSession |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-14159](https://issues.apache.org/jira/browse/SPARK-14159) | StringIndexerModel sets output column metadata incorrectly |  Minor | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-14925](https://issues.apache.org/jira/browse/SPARK-14925) | Published POMs should be flattened |  Major | Build | Josh Rosen | Josh Rosen |
| [SPARK-14732](https://issues.apache.org/jira/browse/SPARK-14732) | spark.ml GaussianMixture should not use spark.mllib MultivariateGaussian |  Major | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-14911](https://issues.apache.org/jira/browse/SPARK-14911) | Fix a potential data race in TaskMemoryManager |  Minor | Spark Core | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [SPARK-14950](https://issues.apache.org/jira/browse/SPARK-14950) | Anti Join is broken when using BroadcastHashJoin's unique key path |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-14930](https://issues.apache.org/jira/browse/SPARK-14930) | Race condition in CheckpointWriter.stop() |  Major | DStreams | Josh Rosen | Josh Rosen |
| [SPARK-14664](https://issues.apache.org/jira/browse/SPARK-14664) | Implement DecimalAggregates optimization for Window queries |  Critical | Optimizer, SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14940](https://issues.apache.org/jira/browse/SPARK-14940) | Move ExternalCatalog to own file |  Minor | SQL | Andrew Or | Andrew Or |
| [SPARK-11368](https://issues.apache.org/jira/browse/SPARK-11368) | Spark shouldn't scan all partitions when using Python UDF and filter over partitioned column is given |  Critical | PySpark, SQL | Maciej Bryński | Davies Liu |
| [SPARK-11757](https://issues.apache.org/jira/browse/SPARK-11757) | Incorrect join output for joining two dataframes loaded from Parquet format |  Major | PySpark, SQL | Petri Kärkäs | Dilip Biswal |
| [SPARK-14671](https://issues.apache.org/jira/browse/SPARK-14671) | Pipeline.setStages needs to handle Array non-covariance |  Minor | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-14014](https://issues.apache.org/jira/browse/SPARK-14014) | Replace existing analysis.Catalog with SessionCatalog |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-14965](https://issues.apache.org/jira/browse/SPARK-14965) | StructType throws exception for missing field |  Minor | SQL | Gregory Hart | Gregory Hart |
| [SPARK-14886](https://issues.apache.org/jira/browse/SPARK-14886) | RankingMetrics.ndcgAt  throw  java.lang.ArrayIndexOutOfBoundsException |  Minor | MLlib | lichenglin | Sean Owen |
| [SPARK-14967](https://issues.apache.org/jira/browse/SPARK-14967) | EXCEPT does not follow SQL compliance |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-14526](https://issues.apache.org/jira/browse/SPARK-14526) | The catalog of SQLContext should not be case-sensitive |  Blocker | SQL | Davies Liu | Andrew Or |
| [SPARK-14970](https://issues.apache.org/jira/browse/SPARK-14970) | DataSource enumerates all files in FileCatalog to infer schema even if there is user specified schema |  Major | SQL | Tathagata Das | Tathagata Das |
| [SPARK-14981](https://issues.apache.org/jira/browse/SPARK-14981) | CatalogTable should contain sorting directions of sorting columns |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-14673](https://issues.apache.org/jira/browse/SPARK-14673) | Remove HiveContext |  Blocker | SQL | Andrew Or | Andrew Or |
| [SPARK-15010](https://issues.apache.org/jira/browse/SPARK-15010) | Lots of error messages about accumulator in Spark shell when a task takes some time to run |  Blocker | Spark Core, Spark Shell | Xiangrui Meng | Wenchen Fan |
| [SPARK-14757](https://issues.apache.org/jira/browse/SPARK-14757) | Incorrect behavior of Join operation in Spqrk SQL JOIN : "false" in the left table is joined to "null" on the right table |  Major | SQL | HUANG Hong | Reynold Xin |
| [SPARK-13289](https://issues.apache.org/jira/browse/SPARK-13289) | Word2Vec generate infinite distances when numIterations\>5 |  Major | MLlib | Qi Dai | Junyang Shen |
| [SPARK-15033](https://issues.apache.org/jira/browse/SPARK-15033) | fix a flaky test in CachedTableSuite |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-14505](https://issues.apache.org/jira/browse/SPARK-14505) | Creating two SparkContext Object in the same jvm, the first one will can not  run any tasks! |  Minor | Spark Core | The sea | The sea |
| [SPARK-14931](https://issues.apache.org/jira/browse/SPARK-14931) | Mismatched default Param values between pipelines in Spark and PySpark |  Major | ML, PySpark | Xusen Yin | Xusen Yin |
| [SPARK-14845](https://issues.apache.org/jira/browse/SPARK-14845) | spark.files in properties file is not distributed to driver in yarn-cluster mode |  Minor | Spark Submit, YARN | Jeff Zhang | Jeff Zhang |
| [SPARK-14013](https://issues.apache.org/jira/browse/SPARK-14013) | Properly implement temporary functions in SessionCatalog |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-14389](https://issues.apache.org/jira/browse/SPARK-14389) | OOM during BroadcastNestedLoopJoin |  Major | SQL | Steve Johnston | Davies Liu |
| [SPARK-12928](https://issues.apache.org/jira/browse/SPARK-12928) | Oracle FLOAT datatype is not properly handled when reading via JDBC |  Minor | SQL | Greg Michalopoulos | Greg Michalopoulos |
| [SPARK-15062](https://issues.apache.org/jira/browse/SPARK-15062) | Show on DataFrame causes OutOfMemoryError, NegativeArraySizeException or segfault |  Blocker | SQL | koert kuipers | Bo Meng |
| [SPARK-15088](https://issues.apache.org/jira/browse/SPARK-15088) | Remove SparkSqlSerializer |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14884](https://issues.apache.org/jira/browse/SPARK-14884) | Fix call site for continuous queries |  Minor | SQL, Web UI | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [SPARK-15059](https://issues.apache.org/jira/browse/SPARK-15059) | Fine-grained class loader lock in ChildFirstURLClassLoader caused dead locks |  Major | Spark Core | Zheng Tan | Zheng Tan |
| [SPARK-14234](https://issues.apache.org/jira/browse/SPARK-14234) | Executor crashes for TaskRunner thread interruption |  Major | Spark Core | Devaraj K | Devaraj K |
| [SPARK-14521](https://issues.apache.org/jira/browse/SPARK-14521) | StackOverflowError in Kryo when executing TPC-DS |  Critical | SQL | Rajesh Balamohan | Yan |
| [SPARK-11316](https://issues.apache.org/jira/browse/SPARK-11316) | coalesce doesn't handle UnionRDD with partial locality properly |  Critical | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-14973](https://issues.apache.org/jira/browse/SPARK-14973) | The CrossValidator and TrainValidationSplit miss the seed when saving and loading |  Major | ML, PySpark | Xusen Yin | Xusen Yin |
| [SPARK-14645](https://issues.apache.org/jira/browse/SPARK-14645) | non local Python resource doesn't work with Mesos cluster mode |  Major | . | Timothy Chen | Timothy Chen |
| [SPARK-15097](https://issues.apache.org/jira/browse/SPARK-15097) | Import fails for someDataset.sqlContext.implicits.\_ |  Major | SQL | koert kuipers | Koert Kuipers |
| [SPARK-15107](https://issues.apache.org/jira/browse/SPARK-15107) | Allow running test cases with different iterations in micro-benchmark util |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15029](https://issues.apache.org/jira/browse/SPARK-15029) | Bad error message for two generators in the project clause |  Major | SQL | Reynold Xin | Wenchen Fan |
| [SPARK-15022](https://issues.apache.org/jira/browse/SPARK-15022) | ProcessingTimeExecutor should run batchRunner only once for a batch |  Minor | SQL | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [SPARK-15115](https://issues.apache.org/jira/browse/SPARK-15115) | Reorganize whole stage codegen benchmark suites |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15128](https://issues.apache.org/jira/browse/SPARK-15128) | Link to Maven Central on downloads page is broken |  Minor | Documentation | Stephanie Bodoff | Sean Owen |
| [SPARK-15116](https://issues.apache.org/jira/browse/SPARK-15116) | In REPL we should create SparkSession first and get SparkContext from it |  Major | Spark Core | Wenchen Fan | Wenchen Fan |
| [SPARK-14993](https://issues.apache.org/jira/browse/SPARK-14993) | Inconsistent behavior of partitioning discovery |  Critical | SQL | Yin Huai | Xiao Li |
| [SPARK-15131](https://issues.apache.org/jira/browse/SPARK-15131) | StateStore management thread does not stop after SparkContext is shutdown |  Major | . | Tathagata Das | Tathagata Das |
| [SPARK-14589](https://issues.apache.org/jira/browse/SPARK-14589) | Enhance DB2 JDBC Dialect docker tests |  Minor | SQL | Luciano Resende | Luciano Resende |
| [SPARK-14915](https://issues.apache.org/jira/browse/SPARK-14915) | Tasks that fail due to CommitDeniedException (a side-effect of speculation) can cause job to never complete |  Critical | . | Jason Moore | Jason Moore |
| [SPARK-14139](https://issues.apache.org/jira/browse/SPARK-14139) | Dataset loses nullability in operations with RowEncoder |  Minor | SQL | koert kuipers | Wenchen Fan |
| [SPARK-15135](https://issues.apache.org/jira/browse/SPARK-15135) | Make sure SparkSession thread safe |  Major | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-14893](https://issues.apache.org/jira/browse/SPARK-14893) | Re-enable HiveSparkSubmitSuite SPARK-8489 test after HiveContext is removed |  Major | SQL, Tests | Andrew Or | Dilip Biswal |
| [SPARK-14962](https://issues.apache.org/jira/browse/SPARK-14962) | spark.sql.orc.filterPushdown=true breaks DataFrame where functionality |  Major | SQL | Justin Foster | Hyukjin Kwon |
| [SPARK-15108](https://issues.apache.org/jira/browse/SPARK-15108) | Function is Not Found when Describe Permanent UDTF |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-14997](https://issues.apache.org/jira/browse/SPARK-14997) | Files in subdirectories are incorrectly considered in sqlContext.read.json() |  Critical | SQL | Tathagata Das | Tathagata Das |
| [SPARK-15051](https://issues.apache.org/jira/browse/SPARK-15051) | Aggregator with DataFrame does not allow Alias |  Major | SQL | koert kuipers | kevin yu |
| [SPARK-15122](https://issues.apache.org/jira/browse/SPARK-15122) | TPC-DS Qury 41 fails with The correlated scalar subquery can only contain equality predicates |  Critical | SQL | JESSE CHEN | Herman van Hovell |
| [SPARK-12479](https://issues.apache.org/jira/browse/SPARK-12479) |  sparkR collect on GroupedData  throws R error "missing value where TRUE/FALSE needed" |  Major | SparkR | Paulo Magalhaes | Sun Rui |
| [SPARK-15185](https://issues.apache.org/jira/browse/SPARK-15185) | InMemoryCatalog : Silent Removal of an Existent Table/Function/Partitions by Rename |  Critical | SQL | Xiao Li | Xiao Li |
| [SPARK-15184](https://issues.apache.org/jira/browse/SPARK-15184) | Silent Removal of an Existent Temp Table by Table Rename |  Critical | SQL | Xiao Li | Xiao Li |
| [SPARK-15211](https://issues.apache.org/jira/browse/SPARK-15211) | Select features column from LibSVMRelation causes failure |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-14459](https://issues.apache.org/jira/browse/SPARK-14459) | SQL partitioning must match existing tables, but is not checked. |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-15067](https://issues.apache.org/jira/browse/SPARK-15067) | YARN executors are launched with fixed perm gen size |  Minor | YARN | Renato Falchi Brandão | Sean Owen |
| [SPARK-15166](https://issues.apache.org/jira/browse/SPARK-15166) | Move hive-specific conf setting from SparkSession |  Minor | SQL | Andrew Or | Andrew Or |
| [SPARK-10653](https://issues.apache.org/jira/browse/SPARK-10653) | Remove unnecessary things from SparkEnv |  Major | Spark Core | Andrew Or | Alex Bozarth |
| [SPARK-15173](https://issues.apache.org/jira/browse/SPARK-15173) | DataFrameWriter.insertInto should work with datasource table stored in hive |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-15209](https://issues.apache.org/jira/browse/SPARK-15209) | Web UI's timeline visualizations fails to render if descriptions contain single quotes |  Major | Web UI | Josh Rosen | Josh Rosen |
| [SPARK-15025](https://issues.apache.org/jira/browse/SPARK-15025) | creating datasource table with option (PATH) results in duplicate path key in serdeProperties |  Major | SQL | Xin Wu | Xin Wu |
| [SPARK-15234](https://issues.apache.org/jira/browse/SPARK-15234) | spark.catalog.listDatabases.show() is not formatted correctly |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-15187](https://issues.apache.org/jira/browse/SPARK-15187) | Disallow Dropping Default Database |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-15154](https://issues.apache.org/jira/browse/SPARK-15154) | LongHashedRelation test fails on Big Endian platform |  Minor | SQL | Pete Robbins | Pete Robbins |
| [SPARK-15179](https://issues.apache.org/jira/browse/SPARK-15179) | Enable SQL generation for subqueries |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-13670](https://issues.apache.org/jira/browse/SPARK-13670) | spark-class doesn't bubble up error from launcher command |  Minor | Spark Submit | Mark Grover | Marcelo Vanzin |
| [SPARK-11249](https://issues.apache.org/jira/browse/SPARK-11249) | [Launcher] Launcher library fails is app resource is not added |  Major | Spark Submit | Hari Shreedharan | Marcelo Vanzin |
| [SPARK-14642](https://issues.apache.org/jira/browse/SPARK-14642) | import org.apache.spark.sql.expressions.\_ breaks udf under functions |  Blocker | SQL | Yin Huai | Subhobrata Dey |
| [SPARK-14986](https://issues.apache.org/jira/browse/SPARK-14986) | Spark SQL returns incorrect results for LATERAL VIEW OUTER queries if all inner columns are projected out |  Major | SQL | Andrey Balmin | Herman van Hovell |
| [SPARK-6005](https://issues.apache.org/jira/browse/SPARK-6005) | Flaky test: o.a.s.streaming.kafka.DirectKafkaStreamSuite.offset recovery |  Major | DStreams | Iulian Dragos | Shixiong Zhu |
| [SPARK-15265](https://issues.apache.org/jira/browse/SPARK-15265) | Fix Union query error message indentation |  Trivial | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-15246](https://issues.apache.org/jira/browse/SPARK-15246) |  Fix code style and improve volatile for SPARK-4452 |  Major | Spark Core | Lianhui Wang | Lianhui Wang |
| [SPARK-15235](https://issues.apache.org/jira/browse/SPARK-15235) | Corresponding row cannot be highlighted even though cursor is on the job on Web UI's timeline |  Trivial | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-15231](https://issues.apache.org/jira/browse/SPARK-15231) | Document the semantic of saveAsTable and insertInto and don't drop columns silently |  Major | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-14933](https://issues.apache.org/jira/browse/SPARK-14933) | Failed to create view out of a parquet or orc table |  Major | SQL | Xin Wu | Xin Wu |
| [SPARK-15268](https://issues.apache.org/jira/browse/SPARK-15268) | Make JavaTypeInference work with UDTRegistration |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-15241](https://issues.apache.org/jira/browse/SPARK-15241) | support scala decimal in external row |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-15242](https://issues.apache.org/jira/browse/SPARK-15242) | keep decimal precision and scale when convert external decimal to catalyst decimal |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-15259](https://issues.apache.org/jira/browse/SPARK-15259) | Sort time metric should not include spill and record insertion time |  Minor | SQL | Eric Liang | Eric Liang |
| [SPARK-15248](https://issues.apache.org/jira/browse/SPARK-15248) | Partition added with ALTER TABLE to a hive partitioned table is not read while querying |  Major | SQL | Tathagata Das | Tathagata Das |
| [SPARK-15260](https://issues.apache.org/jira/browse/SPARK-15260) | UnifiedMemoryManager could be in bad state if any exception happen while evicting blocks |  Major | Spark Core | Davies Liu | Andrew Or |
| [SPARK-15262](https://issues.apache.org/jira/browse/SPARK-15262) | race condition in killing an executor and reregistering an executor |  Major | Spark Core | Shixiong Zhu | Andrew Or |
| [SPARK-15270](https://issues.apache.org/jira/browse/SPARK-15270) | Creating HiveContext does not work |  Blocker | PySpark | Piotr Milanowski | Sandeep Singh |
| [SPARK-15257](https://issues.apache.org/jira/browse/SPARK-15257) | Require CREATE EXTERNAL TABLE to specify LOCATION |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-15256](https://issues.apache.org/jira/browse/SPARK-15256) | Clarify the docstring for DataFrameReader.jdbc() |  Minor | Documentation, PySpark | Nicholas Chammas | Nicholas Chammas |
| [SPARK-15276](https://issues.apache.org/jira/browse/SPARK-15276) | CREATE TABLE with LOCATION should imply EXTERNAL |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-15264](https://issues.apache.org/jira/browse/SPARK-15264) | Spark 2.0 CSV Reader: NPE on Blank Column Names |  Major | SQL | Bill Chambers | Bill Chambers |
| [SPARK-15274](https://issues.apache.org/jira/browse/SPARK-15274) | CSV default column names should be consistent |  Major | SQL | Andrew Or | Bill Chambers |
| [SPARK-15289](https://issues.apache.org/jira/browse/SPARK-15289) | SQL test compilation error from merge conflict |  Blocker | Build, SQL | Piotr Milanowski | Andrew Or |
| [SPARK-15094](https://issues.apache.org/jira/browse/SPARK-15094) | CodeGenerator: failed to compile - when using dataset.rdd with generic case class |  Major | SQL | Nick Pentreath | Liang-Chi Hsieh |
| [SPARK-14803](https://issues.apache.org/jira/browse/SPARK-14803) | A bug in EliminateSerialization rule in Catalyst Optimizer |  Major | Optimizer, SQL | Sun Rui | Liang-Chi Hsieh |
| [SPARK-14684](https://issues.apache.org/jira/browse/SPARK-14684) | Verification of partition specs in SessionCatalog |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-15277](https://issues.apache.org/jira/browse/SPARK-15277) | Checking Partition Spec Existence Before Dropping |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-14421](https://issues.apache.org/jira/browse/SPARK-14421) | Kinesis deaggregation with PySpark |  Major | . | Brian ONeill | Brian O'Neil |
| [SPARK-13902](https://issues.apache.org/jira/browse/SPARK-13902) | Make DAGScheduler not to create duplicate stage. |  Major | Scheduler | Takuya Ueshin | Takuya Ueshin |
| [SPARK-15293](https://issues.apache.org/jira/browse/SPARK-15293) | 'collect\_list' function undefined |  Major | PySpark, SQL | Piotr Milanowski | Herman van Hovell |
| [SPARK-15306](https://issues.apache.org/jira/browse/SPARK-15306) | Move object related expressions into expressions.objects |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15096](https://issues.apache.org/jira/browse/SPARK-15096) | LogisticRegression MultiClassSummarizer numClasses can fail if no valid labels are found |  Minor | ML | Joseph K. Bradley | Miao Wang |
| [SPARK-15305](https://issues.apache.org/jira/browse/SPARK-15305) | spark.ml document Bisectiong k-means has the incorrect format |  Minor | ML | Miao Wang | Miao Wang |
| [SPARK-14942](https://issues.apache.org/jira/browse/SPARK-14942) | Reduce delay between batch construction and execution |  Major | SQL | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [SPARK-15318](https://issues.apache.org/jira/browse/SPARK-15318) | spark.ml Collaborative Filtering example does not work in spark-shell |  Minor | Examples, ML | Miao Wang | Miao Wang |
| [SPARK-15165](https://issues.apache.org/jira/browse/SPARK-15165) | Codegen can break because toCommentSafeString is not actually safe |  Blocker | SQL | Kousuke Saruta | Kousuke Saruta |
| [SPARK-15244](https://issues.apache.org/jira/browse/SPARK-15244) | Type of column name created with sqlContext.createDataFrame() is not consistent. |  Minor | PySpark | Kazuki Yokoishi | Dongjoon Hyun |
| [SPARK-15334](https://issues.apache.org/jira/browse/SPARK-15334) | HiveClient facade not compatible with Hive 0.12 |  Minor | . | Sean Zhong | Xiang Zhong |
| [SPARK-15307](https://issues.apache.org/jira/browse/SPARK-15307) | Super slow to load a partitioned table from local disks |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-15357](https://issues.apache.org/jira/browse/SPARK-15357) | Cooperative spilling should check consumer memory mode |  Major | SQL | Andrew Or | Davies Liu |
| [SPARK-15342](https://issues.apache.org/jira/browse/SPARK-15342) | PySpark test for non ascii column name does not actually test with unicode column name |  Minor | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-14891](https://issues.apache.org/jira/browse/SPARK-14891) | ALS in ML never validates input schema |  Major | ML | Nick Pentreath | Nick Pentreath |
| [SPARK-15373](https://issues.apache.org/jira/browse/SPARK-15373) | SparkUI should show consistent timezones. |  Major | Web UI | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-15323](https://issues.apache.org/jira/browse/SPARK-15323) | read with format=text is broken for partitioned tables in Spark 2.0 |  Major | SQL | Jurriaan Pruis | Jurriaan Pruis |
| [SPARK-14463](https://issues.apache.org/jira/browse/SPARK-14463) | read.text broken for partitioned tables |  Critical | SQL | Michael Armbrust | Jurriaan Pruis |
| [SPARK-15192](https://issues.apache.org/jira/browse/SPARK-15192) | RowEncoder needs to verify nullability in a more explicit way |  Major | SQL | Yin Huai | Wenchen Fan |
| [SPARK-15297](https://issues.apache.org/jira/browse/SPARK-15297) | Fix Set -V Command |  Critical | SQL | Xiao Li | Xiao Li |
| [SPARK-15395](https://issues.apache.org/jira/browse/SPARK-15395) | Use getHostString to create RpcAddress |  Major | . | Shixiong Zhu | Shixiong Zhu |
| [SPARK-15381](https://issues.apache.org/jira/browse/SPARK-15381) | physical object operator should define \`reference\` correctly |  Critical | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-15384](https://issues.apache.org/jira/browse/SPARK-15384) | Codegen CompileException "mapelements\_isNull" is not an rvalue |  Critical | SQL | koert kuipers | Wenchen Fan |
| [SPARK-15300](https://issues.apache.org/jira/browse/SPARK-15300) | Can't remove a block if it's under evicting |  Major | Spark Core | Davies Liu | Davies Liu |
| [SPARK-15387](https://issues.apache.org/jira/browse/SPARK-15387) | SessionCatalog in SimpleAnalyzer does not need to make database directory. |  Minor | SQL | Kousuke Saruta | Kousuke Saruta |
| [SPARK-15316](https://issues.apache.org/jira/browse/SPARK-15316) | PySpark GeneralizedLinearRegression missing linkPredictionCol param |  Minor | ML, PySpark | holdenk | holdenk |
| [SPARK-15317](https://issues.apache.org/jira/browse/SPARK-15317) | JobProgressListener takes a huge amount of memory with iterative DataFrame program in local, standalone |  Major | Spark Core | Joseph K. Bradley | Shixiong Zhu |
| [SPARK-15392](https://issues.apache.org/jira/browse/SPARK-15392) | Improve default value of size estimation |  Major | . | Davies Liu | Davies Liu |
| [SPARK-15321](https://issues.apache.org/jira/browse/SPARK-15321) | Encoding/decoding of Array[Timestamp] fails |  Major | SQL | Sumedh Mungee | Sumedh Mungee |
| [SPARK-14990](https://issues.apache.org/jira/browse/SPARK-14990) | nvl, coalesce, array functions with parameter of type "array" |  Minor | SQL | Oleg Danilov | Reynold Xin |
| [SPARK-14261](https://issues.apache.org/jira/browse/SPARK-14261) | Memory leak in Spark Thrift Server |  Major | Spark Core | Xiaochun Liang | Oleg Danilov |
| [SPARK-15313](https://issues.apache.org/jira/browse/SPARK-15313) | EmbedSerializerInFilter rule should keep exprIds of output of surrounded SerializeFromObject. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-15367](https://issues.apache.org/jira/browse/SPARK-15367) | Add refreshTable back |  Critical | SQL | Yin Huai | Xiao Li |
| [SPARK-15421](https://issues.apache.org/jira/browse/SPARK-15421) | Table and Database property values need to be validated |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-15417](https://issues.apache.org/jira/browse/SPARK-15417) | Failed to enable hive support in PySpark shell |  Blocker | PySpark, SQL | Xiao Li | Andrew Or |
| [SPARK-15203](https://issues.apache.org/jira/browse/SPARK-15203) | The spark daemon shell script error, daemon process start successfully but script output fail message. |  Minor | Deploy | Weichen Xu | Weichen Xu |
| [SPARK-15308](https://issues.apache.org/jira/browse/SPARK-15308) | RowEncoder should preserve nested column name. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-15400](https://issues.apache.org/jira/browse/SPARK-15400) | CreateNamedStruct and CreateNamedStructUnsafe should preserve metadata of value expressions if it is NamedExpression. |  Minor | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-15360](https://issues.apache.org/jira/browse/SPARK-15360) | Should print spark-submit usage when no arguments is specified |  Minor | Spark Submit | Jeff Zhang | Miao Wang |
| [SPARK-15190](https://issues.apache.org/jira/browse/SPARK-15190) | Support using SQLUserDefinedType for case classes |  Major | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-15454](https://issues.apache.org/jira/browse/SPARK-15454) | HadoopFsRelation should filter out files starting with \_ |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15078](https://issues.apache.org/jira/browse/SPARK-15078) | Add all TPCDS 1.4 benchmark queries for SparkSQL |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-15273](https://issues.apache.org/jira/browse/SPARK-15273) | YarnSparkHadoopUtil#getOutOfMemoryErrorArgument should respect OnOutOfMemoryError parameter given by user |  Major | . | Ted Yu | Ted Yu |
| [SPARK-15456](https://issues.apache.org/jira/browse/SPARK-15456) | PySpark Shell fails to create SparkContext if HiveConf not found |  Major | PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-15437](https://issues.apache.org/jira/browse/SPARK-15437) | Failed to create HiveContext in SparkR |  Blocker | SparkR | Xiao Li | Reynold Xin |
| [SPARK-15445](https://issues.apache.org/jira/browse/SPARK-15445) | Build fails for java 1.7 after adding java.math.BigInteger support [SPARK-11827][SQL] |  Blocker | SQL | Piotr Milanowski | Sandeep Singh |
| [SPARK-15114](https://issues.apache.org/jira/browse/SPARK-15114) | Column name generated by typed aggregate is super verbose |  Critical | SQL | Yin Huai | Dilip Biswal |
| [SPARK-15394](https://issues.apache.org/jira/browse/SPARK-15394) | ML user guide typos and grammar audit |  Trivial | Documentation, ML | Seth Hendrickson | Seth Hendrickson |
| [SPARK-15415](https://issues.apache.org/jira/browse/SPARK-15415) | Marking partitions for broadcast broken |  Major | SQL | Jurriaan Pruis | Jurriaan Pruis |
| [SPARK-15430](https://issues.apache.org/jira/browse/SPARK-15430) | Access ListAccumulator's value could possibly cause java.util.ConcurrentModificationException |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-15468](https://issues.apache.org/jira/browse/SPARK-15468) | fix some typos while browsing the codes |  Trivial | SQL | Bo Meng | Bo Meng |
| [SPARK-15379](https://issues.apache.org/jira/browse/SPARK-15379) | String to date and timestamp conversion should return null on some invalid date string |  Minor | SQL | Yang Wang | Yang Wang |
| [SPARK-14031](https://issues.apache.org/jira/browse/SPARK-14031) | Dataframe to csv IO, system performance enters high CPU state and write operation takes 1 hour to complete |  Critical | Spark Shell | Vincent Ohprecio | Davies Liu |
| [SPARK-15279](https://issues.apache.org/jira/browse/SPARK-15279) | Disallow ROW FORMAT and STORED AS (parquet \| orc \| avro etc.) |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-15488](https://issues.apache.org/jira/browse/SPARK-15488) | Possible Accumulator bug causing OneVsRestSuite to be flaky |  Major | ML, Spark Core | Joseph K. Bradley | Liang-Chi Hsieh |
| [SPARK-15315](https://issues.apache.org/jira/browse/SPARK-15315) | CSV datasource writes garbage  for complex  types instead of rasing error. |  Minor | SQL | Suresh Thalamati | Suresh Thalamati |
| [SPARK-15311](https://issues.apache.org/jira/browse/SPARK-15311) | Disallow DML on Non-temporary Tables when Using In-Memory Catalog |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-15405](https://issues.apache.org/jira/browse/SPARK-15405) | YARN uploading the same \_\_spark\_conf\_\_.zip twice |  Major | YARN | Thomas Graves | Marcelo Vanzin |
| [SPARK-15388](https://issues.apache.org/jira/browse/SPARK-15388) | spark sql "CREATE FUNCTION" throws exception with hive 1.2.1 |  Major | SQL | Yang Wang | Yang Wang |
| [SPARK-15512](https://issues.apache.org/jira/browse/SPARK-15512) | repartition(0) should raise IllegalArgumentException. |  Major | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-15043](https://issues.apache.org/jira/browse/SPARK-15043) | Fix and re-enable flaky test: mllib.stat.JavaStatisticsSuite.testCorr |  Critical | MLlib | Josh Rosen | Sean Owen |
| [SPARK-13820](https://issues.apache.org/jira/browse/SPARK-13820) | TPC-DS Query 10 fails to compile |  Major | SQL | Roy Cecil | Davies Liu |
| [SPARK-14292](https://issues.apache.org/jira/browse/SPARK-14292) | TPC-DS Query 23 Fails with compile error |  Major | SQL | Roy Cecil | Herman van Hovell |
| [SPARK-9044](https://issues.apache.org/jira/browse/SPARK-9044) | Updated RDD name does not reflect under "Storage" tab |  Minor | Web UI | Wenjie Zhang | Łukasz Gieroń |
| [SPARK-15483](https://issues.apache.org/jira/browse/SPARK-15483) | IncrementalExecution should use extra strategies. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-15525](https://issues.apache.org/jira/browse/SPARK-15525) | Clean sbt build fails to resolve sbt-antlr4 plugin |  Major | Build | Nick Pentreath | Herman van Hovell |
| [SPARK-15439](https://issues.apache.org/jira/browse/SPARK-15439) | Failed to run unit test in SparkR |  Major | SparkR | Kai Jiang | Miao Wang |
| [SPARK-15539](https://issues.apache.org/jira/browse/SPARK-15539) | DROP TABLE should throw exceptions, not logError |  Minor | SQL | Andrew Or | Andrew Or |
| [SPARK-13445](https://issues.apache.org/jira/browse/SPARK-13445) | Selecting "data" with window function does not work unless aliased (using PARTITION BY) |  Critical | SQL | Reynold Xin | Xiang Zhong |
| [SPARK-8428](https://issues.apache.org/jira/browse/SPARK-8428) | TimSort Comparison method violates its general contract with CLUSTER BY |  Major | SQL | Nathan McCarthy | Sameer Agarwal |
| [SPARK-15532](https://issues.apache.org/jira/browse/SPARK-15532) | SQLContext/HiveContext's public constructors should use SparkSession.build.getOrCreate |  Major | . | Yin Huai | Yin Huai |
| [SPARK-15538](https://issues.apache.org/jira/browse/SPARK-15538) | Truncate table does not work on data source table |  Minor | SQL | Suresh Thalamati | Andrew Or |
| [SPARK-15536](https://issues.apache.org/jira/browse/SPARK-15536) | Disallow TRUNCATE TABLE with external tables and views |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-15583](https://issues.apache.org/jira/browse/SPARK-15583) | Relax ALTER TABLE properties restriction for data source tables |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-8603](https://issues.apache.org/jira/browse/SPARK-8603) | In Windows,Not able to create a Spark context from R studio |  Major | SparkR | Prakash Ponshankaarchinnusamy | Hyukjin Kwon |
| [SPARK-15565](https://issues.apache.org/jira/browse/SPARK-15565) | The default value of spark.sql.warehouse.dir needs to explicitly point to local filesystem |  Critical | SQL | Yin Huai | Xiao Li |
| [SPARK-15569](https://issues.apache.org/jira/browse/SPARK-15569) | Executors spending significant time in DiskObjectWriter.updateBytesWritten function |  Major | Shuffle | Sital Kedia | Sital Kedia |
| [SPARK-15531](https://issues.apache.org/jira/browse/SPARK-15531) | spark-class tries to use too much memory when running Launcher |  Minor | Deploy | mathieu longtin | Sean Owen |
| [SPARK-14400](https://issues.apache.org/jira/browse/SPARK-14400) | ScriptTransformation does not fail the job for bad user command |  Minor | SQL | Tejas Patil | Tejas Patil |
| [SPARK-15535](https://issues.apache.org/jira/browse/SPARK-15535) | Remove code for TRUNCATE TABLE ... COLUMN |  Minor | SQL | Andrew Or | Andrew Or |
| [SPARK-15534](https://issues.apache.org/jira/browse/SPARK-15534) | TRUNCATE TABLE should throw exceptions, not logError |  Minor | SQL | Andrew Or | Andrew Or |
| [SPARK-15450](https://issues.apache.org/jira/browse/SPARK-15450) | Clean up SparkSession builder for python |  Major | PySpark, SQL | Andrew Or | Eric Liang |
| [SPARK-15594](https://issues.apache.org/jira/browse/SPARK-15594) | ALTER TABLE ... SERDEPROPERTIES does not respect partition spec |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-15562](https://issues.apache.org/jira/browse/SPARK-15562) | Temp directory is not deleted after program exit in DataFrameExample |  Minor | ML | ding | ding |
| [SPARK-15610](https://issues.apache.org/jira/browse/SPARK-15610) | update error message for k in pca |  Trivial | Documentation, ML | zhengruifeng | zhengruifeng |
| [SPARK-15549](https://issues.apache.org/jira/browse/SPARK-15549) | Disable bucketing when the output doesn't contain all bucketing columns |  Major | SQL | Yadong Qi | Yadong Qi |
| [SPARK-15637](https://issues.apache.org/jira/browse/SPARK-15637) | SparkR tests failing on R 3.2.2 |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-15528](https://issues.apache.org/jira/browse/SPARK-15528) | conv function returns inconsistent result for the same data |  Major | SQL | Lior Regev | Takeshi Yamamuro |
| [SPARK-15647](https://issues.apache.org/jira/browse/SPARK-15647) | Fix Boundary Cases in OptimizeCodegen Rule |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-15622](https://issues.apache.org/jira/browse/SPARK-15622) | Janino's classloader has an unexpected behavior when its parent classloader throws an ClassNotFoundException with a cause set |  Critical | SQL | Yin Huai | Yin Huai |
| [SPARK-6859](https://issues.apache.org/jira/browse/SPARK-6859) | Parquet File Binary column statistics error when reuse byte[] among rows |  Minor | SQL | Yijie Shen | Ryan Blue |
| [SPARK-15327](https://issues.apache.org/jira/browse/SPARK-15327) | Catalyst code generation fails with complex data structure |  Major | SQL | Jurriaan Pruis | Davies Liu |
| [SPARK-15557](https://issues.apache.org/jira/browse/SPARK-15557) | expression ((cast(99 as decimal) + '3') \* '2.3' ) return null |  Major | SQL | cen yuhai | Dilip Biswal |
| [SPARK-15451](https://issues.apache.org/jira/browse/SPARK-15451) | Spark PR builder should fail if code doesn't compile against JDK 7 |  Major | Build | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-15680](https://issues.apache.org/jira/browse/SPARK-15680) | Disable comments in generated code in order to avoid performance issues |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-15236](https://issues.apache.org/jira/browse/SPARK-15236) | No way to disable Hive support in REPL |  Major | Spark Shell, SQL | Andrew Or | Xin Wu |
| [SPARK-15618](https://issues.apache.org/jira/browse/SPARK-15618) | Use SparkSession.builder.sparkContext(...) in tests where possible |  Minor | SQL | Andrew Or | Dongjoon Hyun |
| [SPARK-15601](https://issues.apache.org/jira/browse/SPARK-15601) | CircularBuffer's toString() to print only the contents written if buffer isn't full |  Minor | Spark Core | Tejas Patil | Tejas Patil |
| [SPARK-12988](https://issues.apache.org/jira/browse/SPARK-12988) | Can't drop columns that contain dots |  Major | SQL | Michael Armbrust | Xiang Zhong |
| [SPARK-15659](https://issues.apache.org/jira/browse/SPARK-15659) | Ensure FileSystem is gotten from path in InMemoryCatalog |  Major | SQL | Saisai Shao | Saisai Shao |
| [SPARK-15664](https://issues.apache.org/jira/browse/SPARK-15664) | Replace FileSystem.get(conf) with path.getFileSystem(conf) when removing CheckpointFile in MLlib |  Major | MLlib | Lianhui Wang | Lianhui Wang |
| [SPARK-14343](https://issues.apache.org/jira/browse/SPARK-14343) | Dataframe operations on a partitioned dataset (using partition discovery) return invalid results |  Critical | SQL | Jurriaan Pruis | Cheng Lian |
| [SPARK-15495](https://issues.apache.org/jira/browse/SPARK-15495) | Improve the output of explain for aggregate operator |  Minor | SQL | Sean Zhong | Xiang Zhong |
| [SPARK-15671](https://issues.apache.org/jira/browse/SPARK-15671) | performance regression CoalesceRDD large # partitions |  Critical | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-15596](https://issues.apache.org/jira/browse/SPARK-15596) | ALTER TABLE RENAME needs to uncache query |  Major | SQL | Andrew Or | Apache Spark |
| [SPARK-15635](https://issues.apache.org/jira/browse/SPARK-15635) | ALTER TABLE RENAME doesn't work for datasource tables |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-15269](https://issues.apache.org/jira/browse/SPARK-15269) | Creating external table leaves empty directory under warehouse directory |  Major | SQL, Tests | Cheng Lian | Xin Wu |
| [SPARK-15692](https://issues.apache.org/jira/browse/SPARK-15692) | Improves the explain output of several physical plans by displaying embedded logical plan in tree style |  Minor | SQL | Sean Zhong | Xiang Zhong |
| [SPARK-15646](https://issues.apache.org/jira/browse/SPARK-15646) | When spark.sql.hive.convertCTAS is true, we may still convert the table to a parquet table when TEXTFILE or SEQUENCEFILE is specified. |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-15620](https://issues.apache.org/jira/browse/SPARK-15620) | Dataset.map creates a dataset that can't be self-joined |  Major | . | Tim Gautier | Saisai Shao |
| [SPARK-13484](https://issues.apache.org/jira/browse/SPARK-13484) | Filter outer joined result using a non-nullable column from the right table |  Major | SQL | Xiangrui Meng | Takeshi Yamamuro |
| [SPARK-15709](https://issues.apache.org/jira/browse/SPARK-15709) | Prevent \`freqItems\` from raising \`UnsupportedOperationException: empty.min\` |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-15606](https://issues.apache.org/jira/browse/SPARK-15606) | Driver hang in o.a.s.DistributedSuite on 2 core machine |  Major | Spark Core | Pete Robbins | Pete Robbins |
| [SPARK-14752](https://issues.apache.org/jira/browse/SPARK-14752) | LazilyGenerateOrdering throws NullPointerException |  Major | SQL | Rajesh Balamohan | Sameer Agarwal |
| [SPARK-15515](https://issues.apache.org/jira/browse/SPARK-15515) | Error Handling in Running SQL Directly On Files |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-15711](https://issues.apache.org/jira/browse/SPARK-15711) | Ban CREATE TEMP TABLE USING AS SELECT for now |  Critical | SQL | Yin Huai | Xiang Zhong |
| [SPARK-15092](https://issues.apache.org/jira/browse/SPARK-15092) | toDebugString missing from ML DecisionTreeClassifier |  Minor | ML | Ivan SPM | holdenk |
| [SPARK-15719](https://issues.apache.org/jira/browse/SPARK-15719) | Disable writing Parquet summary files by default |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-15668](https://issues.apache.org/jira/browse/SPARK-15668) | ml.feature: update check schema to avoid confusion when user use MLlib.vector as input type |  Minor | ML | yuhao yang | yuhao yang |
| [SPARK-15736](https://issues.apache.org/jira/browse/SPARK-15736) | Gracefully handle loss of DiskStore files |  Major | Block Manager | Josh Rosen | Josh Rosen |
| [SPARK-15732](https://issues.apache.org/jira/browse/SPARK-15732) | Dataset generated code "generated.java" Fails with Certain Case Classes |  Critical | SQL | Sanjay Dasgupta | Wenchen Fan |
| [SPARK-14959](https://issues.apache.org/jira/browse/SPARK-14959) | ​Problem Reading partitioned ORC or Parquet files |  Blocker | SQL | Sebastian YEPES FERNANDEZ | Xin Wu |
| [SPARK-15677](https://issues.apache.org/jira/browse/SPARK-15677) | Query with scalar sub-query in the SELECT list throws UnsupportedOperationException. |  Major | SQL | Ioana Delaney | Ioana Delaney |
| [SPARK-15665](https://issues.apache.org/jira/browse/SPARK-15665) | spark-submit --kill and --status are not working |  Major | Spark Core | Devaraj K | Devaraj K |
| [SPARK-15286](https://issues.apache.org/jira/browse/SPARK-15286) | Make the output readable for EXPLAIN CREATE TABLE and DESC EXTENDED |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-15722](https://issues.apache.org/jira/browse/SPARK-15722) | Wrong data when CTAS specifies schema |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-15391](https://issues.apache.org/jira/browse/SPARK-15391) | Spark executor OOM during TimSort |  Major | . | Sital Kedia | Davies Liu |
| [SPARK-15754](https://issues.apache.org/jira/browse/SPARK-15754) | org.apache.spark.deploy.yarn.Client changes the credential of current user |  Critical | . | Subroto Sanyal | Subroto Sanyal |
| [SPARK-15704](https://issues.apache.org/jira/browse/SPARK-15704) | TungstenAggregate crashes |  Major | SQL | Hiroshi Inoue | Hiroshi Inoue |
| [SPARK-15771](https://issues.apache.org/jira/browse/SPARK-15771) | Many ML examples broken since we deprecated \`precision\` in MulticlassClassificationEvaluator |  Major | Examples, ML | Yanbo Liang | Yanbo Liang |
| [SPARK-15760](https://issues.apache.org/jira/browse/SPARK-15760) | Documentation missing for package-related config options |  Minor | Documentation | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-14670](https://issues.apache.org/jira/browse/SPARK-14670) | Allow updating SQLMetrics on driver |  Major | SQL, Web UI | Andrew Or | Wenchen Fan |
| [SPARK-12712](https://issues.apache.org/jira/browse/SPARK-12712) | test-dependencies.sh script fails when run against empty .m2 cache |  Major | Project Infra | Stavros Kontopoulos | Josh Rosen |
| [SPARK-15839](https://issues.apache.org/jira/browse/SPARK-15839) | Maven doc JAR generation fails when JAVA\_7\_HOME is set |  Major | Build, Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-14321](https://issues.apache.org/jira/browse/SPARK-14321) | Reduce date format cost in date functions |  Minor | . | Rajesh Balamohan | Herman van Hovell |
| [SPARK-12447](https://issues.apache.org/jira/browse/SPARK-12447) | Only update AM's internal state when executor is successfully launched by NM |  Major | YARN | Saisai Shao | Saisai Shao |
| [SPARK-15841](https://issues.apache.org/jira/browse/SPARK-15841) | [SPARK REPL] REPLSuite has incorrect env set for a couple of tests. |  Major | Spark Shell | Prashant Sharma | Prashant Sharma |
| [SPARK-15791](https://issues.apache.org/jira/browse/SPARK-15791) | NPE in ScalarSubquery |  Major | SQL | Davies Liu | Eric Liang |
| [SPARK-15852](https://issues.apache.org/jira/browse/SPARK-15852) | Improve query planning performance for wide nested schema |  Major | SQL | Reynold Xin | Eric Liang |
| [SPARK-15743](https://issues.apache.org/jira/browse/SPARK-15743) | Prevent saving with all-column partitioning |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-15766](https://issues.apache.org/jira/browse/SPARK-15766) | R should export is.nan |  Minor | . | Miao Wang | Miao Wang |
| [SPARK-6320](https://issues.apache.org/jira/browse/SPARK-6320) | Adding new query plan strategy to SQLContext |  Minor | SQL | Youssef Hatem | Takuya Ueshin |
| [SPARK-15825](https://issues.apache.org/jira/browse/SPARK-15825) | sort-merge-join gives invalid results when joining on a tupled key |  Major | SQL | Andres Perez | Herman van Hovell |
| [SPARK-15654](https://issues.apache.org/jira/browse/SPARK-15654) | Reading gzipped files results in duplicate rows |  Blocker | SQL | Jurriaan Pruis | Davies Liu |
| [SPARK-15489](https://issues.apache.org/jira/browse/SPARK-15489) | Dataset kryo encoder won't load custom user settings |  Major | SQL | Amit Sela | Amit Sela |
| [SPARK-15884](https://issues.apache.org/jira/browse/SPARK-15884) | Override stringArgs method in MapPartitionsInR case class in order to avoid Out Of Mermory exceptions when calling toString |  Major | SparkR, SQL | Narine Kokhlikyan | Narine Kokhlikyan |
| [SPARK-15678](https://issues.apache.org/jira/browse/SPARK-15678) | Not use cache on appends and overwrites |  Major | . | Sameer Agarwal | Sameer Agarwal |
| [SPARK-15883](https://issues.apache.org/jira/browse/SPARK-15883) | Fix broken links on MLLIB documentations |  Trivial | Documentation | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-15840](https://issues.apache.org/jira/browse/SPARK-15840) | New csv reader does not "determine the input schema" |  Major | PySpark, SQL | Ernst Sjöstrand | Hyukjin Kwon |
| [SPARK-15870](https://issues.apache.org/jira/browse/SPARK-15870) | DataFrame can't execute after uncacheTable. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-15913](https://issues.apache.org/jira/browse/SPARK-15913) | Dispatcher.stopped should be enclosed by synchronized block. |  Minor | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-15697](https://issues.apache.org/jira/browse/SPARK-15697) | [SPARK REPL] unblock some of the useful repl commands. |  Trivial | Spark Shell | Prashant Sharma | Prashant Sharma |
| [SPARK-15530](https://issues.apache.org/jira/browse/SPARK-15530) | Partitioning discovery logic HadoopFsRelation should use a higher setting of parallelism |  Major | SQL | Yin Huai | Takeshi Yamamuro |
| [SPARK-15929](https://issues.apache.org/jira/browse/SPARK-15929) | DataFrameSuite path globbing error message tests are not fully portable |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-15910](https://issues.apache.org/jira/browse/SPARK-15910) | Schema is not checked when converting DataFrame to Dataset using Kryo encoder |  Major | SQL | Sean Zhong | Sean Zhong |
| [SPARK-15808](https://issues.apache.org/jira/browse/SPARK-15808) | Wrong Results or Strange Errors In Append-mode DataFrame Writing Due to Mismatched File Formats |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-15914](https://issues.apache.org/jira/browse/SPARK-15914) | Add deprecated method back to SQLContext for source code backward compatiblity |  Major | SQL | Sean Zhong | Sean Zhong |
| [SPARK-15655](https://issues.apache.org/jira/browse/SPARK-15655) | Wrong Result when Fetching Partitioned Tables |  Blocker | SQL | Xiao Li | Xiao Li |
| [SPARK-15915](https://issues.apache.org/jira/browse/SPARK-15915) | CacheManager should use canonicalized plan for planToCache. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-15864](https://issues.apache.org/jira/browse/SPARK-15864) | Inconsistent Behaviors when Uncaching Non-cached Tables |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-15895](https://issues.apache.org/jira/browse/SPARK-15895) | \_common\_metadata and \_metadata appearing in the inner partitioning dirs of a partitioned parquet datasets break partitioning discovery |  Major | SQL | Yin Huai | Cheng Lian |
| [SPARK-15247](https://issues.apache.org/jira/browse/SPARK-15247) | sqlCtx.read.parquet yields at least n\_executors \* n\_cores tasks |  Major | SQL | Johnny W. | Takeshi Yamamuro |
| [SPARK-15011](https://issues.apache.org/jira/browse/SPARK-15011) | org.apache.spark.sql.hive.StatisticsSuite.analyze MetastoreRelations fails when hadoop 2.3 or hadoop 2.4 is used |  Critical | SQL, Tests | Yin Huai | Herman van Hovell |
| [SPARK-12323](https://issues.apache.org/jira/browse/SPARK-12323) | Don't assign default value for non-nullable columns of a Dataset |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-15631](https://issues.apache.org/jira/browse/SPARK-15631) | Dataset and encoder bug fixes |  Major | SQL | Cheng Lian | Wenchen Fan |
| [SPARK-15065](https://issues.apache.org/jira/browse/SPARK-15065) | HiveSparkSubmitSuite's "set spark.sql.warehouse.dir" is flaky |  Critical | SQL, Tests | Yin Huai | Pete Robbins |
| [SPARK-15952](https://issues.apache.org/jira/browse/SPARK-15952) | "show databases" does not get sorted result |  Major | SQL | Bo Meng | Bo Meng |
| [SPARK-15046](https://issues.apache.org/jira/browse/SPARK-15046) | When running hive-thriftserver with yarn on a secure cluster the workers fail with java.lang.NumberFormatException |  Blocker | YARN | Trystan Leftwich | Marcelo Vanzin |
| [SPARK-15931](https://issues.apache.org/jira/browse/SPARK-15931) | SparkR tests failing on R 3.3.0 |  Major | SparkR | Cheng Lian | Felix Cheung |
| [SPARK-15959](https://issues.apache.org/jira/browse/SPARK-15959) | Add the support of hive.metastore.warehouse.dir back |  Critical | SQL | Yin Huai | Yin Huai |
| [SPARK-13850](https://issues.apache.org/jira/browse/SPARK-13850) | TimSort Comparison method violates its general contract |  Major | Shuffle | Sital Kedia | Sameer Agarwal |
| [SPARK-15826](https://issues.apache.org/jira/browse/SPARK-15826) | PipedRDD to allow configurable char encoding |  Trivial | Spark Core | Tejas Patil | Tejas Patil |
| [SPARK-15888](https://issues.apache.org/jira/browse/SPARK-15888) | Python UDF over aggregate fails |  Blocker | PySpark, SQL | Vladimir Feinberg | Davies Liu |
| [SPARK-15715](https://issues.apache.org/jira/browse/SPARK-15715) | Altering partition storage information doesn't work in Hive |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-15934](https://issues.apache.org/jira/browse/SPARK-15934) | Return binary mode in ThriftServer |  Critical | SQL | Egor Pahomov | Egor Pakhomov |
| [SPARK-15776](https://issues.apache.org/jira/browse/SPARK-15776) | Type coercion incorrect |  Minor | SQL | Weizhong | Sean Zhong |
| [SPARK-9689](https://issues.apache.org/jira/browse/SPARK-9689) | Cache doesn't refresh for HadoopFsRelation based table |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-12114](https://issues.apache.org/jira/browse/SPARK-12114) | ColumnPruning rule fails in case of "Project \<- Filter \<- Join" |  Major | SQL | Min Qiu | Min Qiu |
| [SPARK-15824](https://issues.apache.org/jira/browse/SPARK-15824) | Run 'with ... insert ... select' failed when use spark thriftserver |  Minor | SQL | Weizhong | Herman van Hovell |
| [SPARK-15996](https://issues.apache.org/jira/browse/SPARK-15996) | Fix R examples by removing deprecated functions |  Minor | Examples | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-15922](https://issues.apache.org/jira/browse/SPARK-15922) | BlockMatrix to IndexedRowMatrix throws an error |  Major | MLlib | Charlie Evans | Dongjoon Hyun |
| [SPARK-15978](https://issues.apache.org/jira/browse/SPARK-15978) | Some improvement of "Show Tables" |  Minor | SQL | Bo Meng | Bo Meng |
| [SPARK-15975](https://issues.apache.org/jira/browse/SPARK-15975) | Improper Popen.wait() return code handling in dev/run-tests |  Major | Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-15991](https://issues.apache.org/jira/browse/SPARK-15991) | After SparkSession has been created, setting hadoop conf through sparkSession.sparkContext.hadoopConfiguration does not affect hadoop conf used by the SparkSession |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-15782](https://issues.apache.org/jira/browse/SPARK-15782) | --packages doesn't work with the spark-shell |  Blocker | YARN | Nezih Yigitbasi | Nezih Yigitbasi |
| [SPARK-15822](https://issues.apache.org/jira/browse/SPARK-15822) | segmentation violation in o.a.s.unsafe.types.UTF8String |  Blocker | SQL | Pete Robbins | Herman van Hovell |
| [SPARK-15706](https://issues.apache.org/jira/browse/SPARK-15706) | Wrong Answer when using IF NOT EXISTS in INSERT OVERWRITE for DYNAMIC PARTITION |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-15811](https://issues.apache.org/jira/browse/SPARK-15811) | Python UDFs do not work in Spark 2.0-preview built with scala 2.10 |  Blocker | Spark Core | Franklyn Dsouza | Davies Liu |
| [SPARK-16018](https://issues.apache.org/jira/browse/SPARK-16018) | Shade netty for shuffle to work on YARN |  Blocker | Shuffle | Dhruve Ashar | Dhruve Ashar |
| [SPARK-16017](https://issues.apache.org/jira/browse/SPARK-16017) | YarnClientSchedulerBackend now registers backends as IPs instead of Hostnames which causes all tasks to run with RACK\_LOCAL locality. |  Critical | Spark Core | Trystan Leftwich | Shixiong Zhu |
| [SPARK-16005](https://issues.apache.org/jira/browse/SPARK-16005) | Add \`randomSplit\` to SparkR |  Major | SparkR | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-15916](https://issues.apache.org/jira/browse/SPARK-15916) | JDBC AND/OR operator push down does not respect lower OR operator precedence |  Major | SQL | Piotr Czarnas | Hyukjin Kwon |
| [SPARK-15892](https://issues.apache.org/jira/browse/SPARK-15892) | Incorrectly merged AFTAggregator with zero total count |  Major | Examples, ML, PySpark | Joseph K. Bradley | Hyukjin Kwon |
| [SPARK-16035](https://issues.apache.org/jira/browse/SPARK-16035) | The SparseVector parser fails checking for valid end parenthesis |  Minor | MLlib, PySpark | Andrea Pasqua | Andrea Pasqua |
| [SPARK-16029](https://issues.apache.org/jira/browse/SPARK-16029) | Deprecate dropTempTable in SparkR |  Major | SparkR | Shivaram Venkataraman | Felix Cheung |
| [SPARK-16028](https://issues.apache.org/jira/browse/SPARK-16028) | Remove the need to pass in a SparkContext for spark.lapply |  Major | SparkR | Shivaram Venkataraman | Felix Cheung |
| [SPARK-15982](https://issues.apache.org/jira/browse/SPARK-15982) | Harmonize the behavior of DataFrameReader.text/csv/json/parquet/orc |  Major | SQL | Tathagata Das | Tathagata Das |
| [SPARK-16079](https://issues.apache.org/jira/browse/SPARK-16079) | PySpark ML classification missing import of DecisionTreeRegressionModel for GBTClassificationModel |  Major | ML, PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-16009](https://issues.apache.org/jira/browse/SPARK-16009) | DataFrameRead.json(path) compatibility broken with Spark 1.6 |  Major | . | Tathagata Das | Tathagata Das |
| [SPARK-16056](https://issues.apache.org/jira/browse/SPARK-16056) | java.lang.ArithmeticException when numPartitions is zero in JDBC source |  Minor | SQL | Xiao Li | Xiao Li |
| [SPARK-16057](https://issues.apache.org/jira/browse/SPARK-16057) | JDBC source: Wrong Partition Generation when numPartitions is More than the number of rows between upper and lower bounds |  Critical | SQL | Xiao Li | Xiao Li |
| [SPARK-16058](https://issues.apache.org/jira/browse/SPARK-16058) | JDBC Source: Wrong Results when lowerBound is larger than upperBound in Column Partitioning |  Critical | SQL | Xiao Li | Xiao Li |
| [SPARK-16044](https://issues.apache.org/jira/browse/SPARK-16044) | input\_file\_name() returns empty strings in data sources based on NewHadoopRDD. |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-16082](https://issues.apache.org/jira/browse/SPARK-16082) | Refactor dapply's/dapplyCollect's documentation - remove duplicated comments |  Minor | SparkR | Narine Kokhlikyan | Narine Kokhlikyan |
| [SPARK-16080](https://issues.apache.org/jira/browse/SPARK-16080) | Config archive not properly added to YARN classpath |  Major | YARN | Jonathan Kelly | Marcelo Vanzin |
| [SPARK-16086](https://issues.apache.org/jira/browse/SPARK-16086) | Python UDF failed when there is no arguments |  Major | PySpark, SQL | Davies Liu | Davies Liu |
| [SPARK-16096](https://issues.apache.org/jira/browse/SPARK-16096) | R deprecate unionAll and add union |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-16121](https://issues.apache.org/jira/browse/SPARK-16121) | ListingFileCatalog does not list in parallel anymore |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-16097](https://issues.apache.org/jira/browse/SPARK-16097) | Encoders.tuple should handle null object correctly |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-16003](https://issues.apache.org/jira/browse/SPARK-16003) | SerializationDebugger run into infinite loop |  Critical | Spark Core | Davies Liu | Eric Liang |
| [SPARK-16153](https://issues.apache.org/jira/browse/SPARK-16153) | A single-line ScalaDoc and @deprecate annotation would break genjavadoc |  Major | Documentation | Xiangrui Meng | Xiangrui Meng |
| [SPARK-16024](https://issues.apache.org/jira/browse/SPARK-16024) | add tests for table creation with column comment |  Major | SQL | Wenchen Fan | Xiao Li |
| [SPARK-15230](https://issues.apache.org/jira/browse/SPARK-15230) | Back quoted column with dot in it fails when running distinct on dataframe |  Major | SQL | Barry Becker | Bo Meng |
| [SPARK-15345](https://issues.apache.org/jira/browse/SPARK-15345) | SparkSession's conf doesn't take effect when there's already an existing SparkContext |  Blocker | PySpark, SQL | Piotr Milanowski | Reynold Xin |
| [SPARK-16088](https://issues.apache.org/jira/browse/SPARK-16088) | Update setJobGroup, clearJobGroup, cancelJobGroup SparkR API to not require sc |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-16163](https://issues.apache.org/jira/browse/SPARK-16163) | Statistics of logical plan is super slow on large query |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-15725](https://issues.apache.org/jira/browse/SPARK-15725) | Dynamic allocation hangs YARN app when executors time out |  Major | Spark Core | Ryan Blue | Ryan Blue |
| [SPARK-16164](https://issues.apache.org/jira/browse/SPARK-16164) | CombineFilters should keep the ordering in the logical plan |  Major | SQL | Xiangrui Meng | Dongjoon Hyun |
| [SPARK-16165](https://issues.apache.org/jira/browse/SPARK-16165) | Fix the update logic for InMemoryTableScanExec.readBatches accumulator |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-16125](https://issues.apache.org/jira/browse/SPARK-16125) | YarnClusterSuite test cluster mode incorrectly |  Minor | YARN | Peng Zhang | Peng Zhang |
| [SPARK-16129](https://issues.apache.org/jira/browse/SPARK-16129) | Eliminate direct use of commons-lang classes in favor of commons-lang3 |  Minor | DStreams, Spark Core, SQL | Sean Owen | Sean Owen |
| [SPARK-16077](https://issues.apache.org/jira/browse/SPARK-16077) | Python UDF may fail because of six |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-16179](https://issues.apache.org/jira/browse/SPARK-16179) | UDF explosion yielding empty dataframe fails |  Major | PySpark, SQL | Vladimir Feinberg | Davies Liu |
| [SPARK-16173](https://issues.apache.org/jira/browse/SPARK-16173) | Can't join describe() of DataFrame in Scala 2.10 |  Major | SQL | Davies Liu | Dongjoon Hyun |
| [SPARK-16193](https://issues.apache.org/jira/browse/SPARK-16193) | Address flaky ExternalAppendOnlyMapSuite spilling tests |  Minor | Spark Core, Tests | Sean Owen | Sean Owen |
| [SPARK-16184](https://issues.apache.org/jira/browse/SPARK-16184) | Support SparkSession.conf API in SparkR |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-16214](https://issues.apache.org/jira/browse/SPARK-16214) |  fix the denominator of SparkPi |  Minor | Examples | Yang Hao | Yang Hao |
| [SPARK-10591](https://issues.apache.org/jira/browse/SPARK-10591) | False negative in QueryTest.checkAnswer |  Major | SQL, Tests | Cheng Lian | Dongjoon Hyun |
| [SPARK-16231](https://issues.apache.org/jira/browse/SPARK-16231) | PySpark ML DataFrame example fails on Vector conversion |  Major | ML, PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-16220](https://issues.apache.org/jira/browse/SPARK-16220) | Revert ShowFunctions/ListFunctions in 2.0 to Reflect 1.6 Functionality |  Major | Spark Core, SQL | Bill Chambers | Herman van Hovell |
| [SPARK-16224](https://issues.apache.org/jira/browse/SPARK-16224) | Hive context created by HiveContext can't access Hive databases when used in a script launched be spark-submit |  Blocker | PySpark | Piotr Milanowski | Yin Huai |
| [SPARK-16181](https://issues.apache.org/jira/browse/SPARK-16181) | Incorrect behavior for isNull filter |  Major | SQL | Kevin Chen | Wenchen Fan |
| [SPARK-16148](https://issues.apache.org/jira/browse/SPARK-16148) | TaskLocation does not allow for Executor ID's with underscores |  Minor | Scheduler | Tom Magrino | Tom Magrino |
| [SPARK-16236](https://issues.apache.org/jira/browse/SPARK-16236) | Add Path Option back to Load API in DataFrameReader |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-16100](https://issues.apache.org/jira/browse/SPARK-16100) | Aggregator fails with Tungsten error when complex types are used for results and partial sum |  Major | SQL | Deenar Toraskar | Wenchen Fan |
| [SPARK-16268](https://issues.apache.org/jira/browse/SPARK-16268) | SQLContext should import DataStreamReader |  Major | PySpark | Shixiong Zhu | Shixiong Zhu |
| [SPARK-16291](https://issues.apache.org/jira/browse/SPARK-16291) | Invalid aggregate functions like MAX(COUNT(\*)) are not captured by CheckAnalysis |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-16157](https://issues.apache.org/jira/browse/SPARK-16157) | Add New Methods for Comments in StructField and StructType |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-16006](https://issues.apache.org/jira/browse/SPARK-16006) | Attemping to write empty DataFrame with no fields throw non-intuitive exception |  Minor | SQL | Tathagata Das | Dongjoon Hyun |
| [SPARK-16228](https://issues.apache.org/jira/browse/SPARK-16228) | "Percentile" needs explicit cast to double |  Major | SQL | Egor Pahomov | Dongjoon Hyun |
| [SPARK-16071](https://issues.apache.org/jira/browse/SPARK-16071) | Not sufficient array size checks to avoid integer overflows in Tungsten |  Critical | SQL | Xiangrui Meng | Sean Zhong |
| [SPARK-16313](https://issues.apache.org/jira/browse/SPARK-16313) | Spark should not silently drop exceptions in file listing |  Critical | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15954](https://issues.apache.org/jira/browse/SPARK-15954) | TestHive has issues being used in PySpark |  Major | PySpark, SQL | holdenk | Reynold Xin |
| [SPARK-15820](https://issues.apache.org/jira/browse/SPARK-15820) | Add Catalog.refreshTable into python API |  Major | PySpark, SQL | Weichen Xu | Weichen Xu |
| [SPARK-16182](https://issues.apache.org/jira/browse/SPARK-16182) | Utils.scala -- terminateProcess() should call Process.destroyForcibly() if and only if Process.destroy() fails |  Critical | Spark Core | Christian Chua | Sean Owen |
| [SPARK-16222](https://issues.apache.org/jira/browse/SPARK-16222) | JDBC Sources: Handling illegal input values for \`fetchsize\` and \`batchsize\` |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-16299](https://issues.apache.org/jira/browse/SPARK-16299) | Capture errors from R workers in daemon.R to avoid deletion of R session temporary directory |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-16335](https://issues.apache.org/jira/browse/SPARK-16335) | Structured streaming should fail if source directory does not exist |  Major | Structured Streaming | Reynold Xin | Reynold Xin |
| [SPARK-16233](https://issues.apache.org/jira/browse/SPARK-16233) | test\_sparkSQL.R is failing |  Minor | SparkR, Tests | Xin Ren | Dongjoon Hyun |
| [SPARK-16095](https://issues.apache.org/jira/browse/SPARK-16095) | Yarn cluster mode should return consistent result for command line and SparkLauncher |  Major | YARN | Peng Zhang | Peng Zhang |
| [SPARK-16353](https://issues.apache.org/jira/browse/SPARK-16353) | Intended javadoc options are not honored for Java unidoc |  Minor | Build, Documentation | Michael Allman | Michael Allman |
| [SPARK-15968](https://issues.apache.org/jira/browse/SPARK-15968) | HiveMetastoreCatalog does not correctly validate partitioned metastore relation when searching the internal table cache |  Major | SQL | Michael Allman | Michael Allman |
| [SPARK-16311](https://issues.apache.org/jira/browse/SPARK-16311) | Improve metadata refresh |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15730](https://issues.apache.org/jira/browse/SPARK-15730) | [Spark SQL] the value of 'hiveconf' parameter in Spark-sql CLI don't take effect in spark-sql session |  Critical | SQL | Yi Zhou | Cheng Hao |
| [SPARK-16385](https://issues.apache.org/jira/browse/SPARK-16385) | NoSuchMethodException thrown by Utils.waitForProcess |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-16348](https://issues.apache.org/jira/browse/SPARK-16348) | pyspark.ml MLSerDe should be called using full classpath |  Critical | ML, PySpark | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-16339](https://issues.apache.org/jira/browse/SPARK-16339) | ScriptTransform does not print stderr when outstream is lost |  Trivial | Spark Core | Tejas Patil | Tejas Patil |
| [SPARK-16229](https://issues.apache.org/jira/browse/SPARK-16229) | Empty Table Remains After CREATE TABLE AS SELECT fails |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-16371](https://issues.apache.org/jira/browse/SPARK-16371) | IS NOT NULL clause gives false for nested not empty column |  Blocker | SQL | Maciej Bryński | Hyukjin Kwon |
| [SPARK-15740](https://issues.apache.org/jira/browse/SPARK-15740) | Word2VecSuite "big model load / save" caused OOM in maven jenkins builds |  Critical | MLlib | Xiangrui Meng | Antonio Murgia |
| [SPARK-16379](https://issues.apache.org/jira/browse/SPARK-16379) | Spark on mesos is broken due to race condition in Logging |  Blocker | Spark Core | Stavros Kontopoulos | Sean Owen |
| [SPARK-16368](https://issues.apache.org/jira/browse/SPARK-16368) | Strange Errors When Creating View With Unmatched Column Num |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-16372](https://issues.apache.org/jira/browse/SPARK-16372) | Retag RDD to tallSkinnyQR of RowMatrix |  Major | MLlib | Xusen Yin | Xusen Yin |
| [SPARK-16350](https://issues.apache.org/jira/browse/SPARK-16350) | Complete output mode does not output updated aggregated value in Structured Streaming |  Major | Structured Streaming | Arnaud Bailly | Liwei Lin(Inactive) |
| [SPARK-16415](https://issues.apache.org/jira/browse/SPARK-16415) | [Spark][SQL] - Failed to create table due to catalog string error |  Critical | SQL | Yi Zhou | Adrian Wang |
| [SPARK-16310](https://issues.apache.org/jira/browse/SPARK-16310) | SparkR csv source should have the same default na.string as R |  Minor | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-16425](https://issues.apache.org/jira/browse/SPARK-16425) | SparkR summary() fails on column of type logical |  Minor | SparkR, SQL | Neil Dewar | Dongjoon Hyun |
| [SPARK-16369](https://issues.apache.org/jira/browse/SPARK-16369) | tallSkinnyQR of RowMatrix should aware of empty partition |  Minor | MLlib | Xusen Yin | Xusen Yin |
| [SPARK-16420](https://issues.apache.org/jira/browse/SPARK-16420) | UnsafeShuffleWriter leaks compression streams with off-heap memory. |  Major | Spark Core | Ryan Blue | Ryan Blue |
| [SPARK-16453](https://issues.apache.org/jira/browse/SPARK-16453) | release script does not publish spark-hive-thriftserver\_2.10 |  Critical | Build | Yin Huai | Yin Huai |
| [SPARK-16387](https://issues.apache.org/jira/browse/SPARK-16387) | Reserved SQL words are not escaped by JDBC writer |  Major | SQL | Lev | Dongjoon Hyun |
| [SPARK-16376](https://issues.apache.org/jira/browse/SPARK-16376) | [Spark web UI]:HTTP ERROR 500 when using rest api "/applications/[app-id]/jobs" if array "stageIds" is empty |  Minor | Web UI | marymwu | Sean Owen |
| [SPARK-16432](https://issues.apache.org/jira/browse/SPARK-16432) | Empty blocks fail to serialize due to assert in ChunkedByteBuffer |  Major | Spark Core | Eric Liang | Eric Liang |
| [SPARK-16401](https://issues.apache.org/jira/browse/SPARK-16401) | Data Source APIs: Extending RelationProvider and CreatableRelationProvider Without SchemaRelationProvider |  Critical | SQL | Xiao Li | Xiao Li |
| [SPARK-16459](https://issues.apache.org/jira/browse/SPARK-16459) | Prevent dropping current database |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-16433](https://issues.apache.org/jira/browse/SPARK-16433) | Improve StreamingQuery.explain when no data arrives |  Major | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-16489](https://issues.apache.org/jira/browse/SPARK-16489) | Test harness to prevent expression code generation from reusing variable names |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-16414](https://issues.apache.org/jira/browse/SPARK-16414) | Can not get user config when calling SparkHadoopUtil.get.conf in other places, such as DataSourceStrategy |  Major | YARN | sharkd tu | sharkd tu |
| [SPARK-16375](https://issues.apache.org/jira/browse/SPARK-16375) | [Spark web UI]:The wrong value(numCompletedTasks) has been assigned to the variable numSkippedTasks |  Major | Web UI | marymwu | Alex Bozarth |
| [SPARK-16435](https://issues.apache.org/jira/browse/SPARK-16435) | Behavior changes if initialExecutor is less than minExecutor for dynamic allocation |  Minor | Scheduler, Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-16482](https://issues.apache.org/jira/browse/SPARK-16482) | If a table's schema is inferred at runtime, describe table command does not show the schema |  Critical | SQL | Yin Huai | Xiao Li |
| [SPARK-16538](https://issues.apache.org/jira/browse/SPARK-16538) | Cannot use "SparkR::sql" |  Critical | SparkR | Weiluo Ren | Felix Cheung |
| [SPARK-16528](https://issues.apache.org/jira/browse/SPARK-16528) | HiveClientImpl throws NPE when reading database from a custom metastore |  Major | SQL | Jacek Lewandowski | Jacek Lewandowski |
| [SPARK-16540](https://issues.apache.org/jira/browse/SPARK-16540) | Jars specified with --jars will added twice when running on YARN |  Major | Deploy, YARN | Saisai Shao | Saisai Shao |
| [SPARK-16553](https://issues.apache.org/jira/browse/SPARK-16553) | Typo in Spark SQL Programming guide that links to examples |  Major | Documentation | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-16555](https://issues.apache.org/jira/browse/SPARK-16555) | Work around Jekyll error-handling bug which led to silent doc build failures |  Major | Documentation, Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-16230](https://issues.apache.org/jira/browse/SPARK-16230) | Executors self-killing after being assigned tasks while still in init |  Minor | Spark Core | Tejas Patil | Tejas Patil |
| [SPARK-13071](https://issues.apache.org/jira/browse/SPARK-13071) | Coalescing HadoopRDD overwrites existing input metrics |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-16301](https://issues.apache.org/jira/browse/SPARK-16301) | Analyzer rule for resolving using joins should respect case sensitivity setting |  Critical | SQL | Yin Huai | Yin Huai |
| [SPARK-16515](https://issues.apache.org/jira/browse/SPARK-16515) | [SPARK][SQL] transformation script got failure for python script |  Critical | SQL | Yi Zhou | Adrian Wang |
| [SPARK-16600](https://issues.apache.org/jira/browse/SPARK-16600) | fix latex formula syntax error in mllib |  Trivial | Documentation, MLlib | Weichen Xu | Weichen Xu |
| [SPARK-16620](https://issues.apache.org/jira/browse/SPARK-16620) | RDD.pipe(command: String) in Spark 2.0 does not work when command is specified with some options |  Blocker | Spark Core | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [SPARK-16602](https://issues.apache.org/jira/browse/SPARK-16602) | Spark2.0-error occurs when execute the sql statement which includes "nvl" function while spark1.6 supports |  Major | SQL | marymwu | Dongjoon Hyun |
| [SPARK-15705](https://issues.apache.org/jira/browse/SPARK-15705) | Spark won't read ORC schema from metastore for partitioned tables |  Critical | SQL | Nic Eggert | Yin Huai |
| [SPARK-14666](https://issues.apache.org/jira/browse/SPARK-14666) | Using DISTINCT on a UDF (like CONCAT) is not supported |  Minor | SQL | Dominic Ricard |  |
| [SPARK-2578](https://issues.apache.org/jira/browse/SPARK-2578) | OUTER JOINs cause ClassCastException |  Major | SQL | Christian Wuertz |  |
| [SPARK-8045](https://issues.apache.org/jira/browse/SPARK-8045) | Stack overflow in query parser when there is too many where |  Minor | SQL | Olivier Toupin |  |
| [SPARK-13117](https://issues.apache.org/jira/browse/SPARK-13117) | WebUI should use the local ip not 0.0.0.0 |  Minor | Web UI | Jeremiah Jordan | Devaraj K |
| [SPARK-14662](https://issues.apache.org/jira/browse/SPARK-14662) | LinearRegressionModel uses only default parameters if yStd is 0 |  Minor | ML | Louis Traynard | Yanbo Liang |
| [SPARK-9342](https://issues.apache.org/jira/browse/SPARK-9342) | Spark SQL views don't work |  Major | SQL | Simeon Simeonov | Xiao Li |
| [SPARK-14241](https://issues.apache.org/jira/browse/SPARK-14241) | Output of monotonically\_increasing\_id lacks stable relation with rows of DataFrame |  Major | PySpark, Spark Core | Paul Shearer | Cheng Lian |
| [SPARK-12488](https://issues.apache.org/jira/browse/SPARK-12488) | LDA describeTopics() Generates Invalid Term IDs |  Major | MLlib | Ilya Ganelin | Xiangrui Meng |
| [SPARK-18593](https://issues.apache.org/jira/browse/SPARK-18593) | JDBCRDD returns incorrect results for filters on CHAR of PostgreSQL |  Minor | SQL | Durga Prasad Gunturu | Takeshi Yamamuro |
| [SPARK-18642](https://issues.apache.org/jira/browse/SPARK-18642) | Spark SQL: Catalyst is scanning undesired columns |  Major | SQL | Mohit | Dongjoon Hyun |
| [SPARK-12143](https://issues.apache.org/jira/browse/SPARK-12143) | When column type is binary, select occurs ClassCastExcption in Beeline. |  Major | SQL | meiyoula | Hyukjin Kwon |
| [SPARK-13478](https://issues.apache.org/jira/browse/SPARK-13478) | Fetching delegation tokens for Hive fails when using proxy users |  Minor | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-14385](https://issues.apache.org/jira/browse/SPARK-14385) | Use FunctionIdentifier in FunctionRegistry/SessionCatalog |  Major | SQL | Andrew Or |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-11694](https://issues.apache.org/jira/browse/SPARK-11694) | Parquet logical types are not being tested properly |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-11676](https://issues.apache.org/jira/browse/SPARK-11676) | Parquet filter tests all pass if filters are not really pushed down |  Critical | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-12236](https://issues.apache.org/jira/browse/SPARK-12236) | JDBC filter tests all pass if filters are not really pushed down |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-11677](https://issues.apache.org/jira/browse/SPARK-11677) | ORC filter tests all pass if filters are actually not pushed down. |  Critical | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-10248](https://issues.apache.org/jira/browse/SPARK-10248) | DAGSchedulerSuite should check there were no errors in EventProcessLoop |  Major | Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-5882](https://issues.apache.org/jira/browse/SPARK-5882) | Add a test for GraphLoader.edgeListFile |  Trivial | GraphX | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-12446](https://issues.apache.org/jira/browse/SPARK-12446) | Add unit tests for JDBCRDD internal functions |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-12592](https://issues.apache.org/jira/browse/SPARK-12592) | TestHive.reset hides Spark testing logs |  Major | Tests | Cheng Lian | Cheng Lian |
| [SPARK-12560](https://issues.apache.org/jira/browse/SPARK-12560) | SqlTestUtils.stripSparkFilter needs to copy utf8strings |  Minor | SQL | Imran Rashid | Imran Rashid |
| [SPARK-13150](https://issues.apache.org/jira/browse/SPARK-13150) | Flaky test: org.apache.spark.sql.hive.thriftserver.SingleSessionSuite.test single session |  Major | SQL | Davies Liu | Herman van Hovell |
| [SPARK-13302](https://issues.apache.org/jira/browse/SPARK-13302) | Cleanup persistence Docstests in ml |  Trivial | PySpark, Tests | holdenk | holdenk |
| [SPARK-13660](https://issues.apache.org/jira/browse/SPARK-13660) | ContinuousQuerySuite floods the logs with garbage |  Major | Tests | Shixiong Zhu | Xin Ren |
| [SPARK-14713](https://issues.apache.org/jira/browse/SPARK-14713) | Fix flaky test: o.a.s.network.netty.NettyBlockTransferServiceSuite.can bind to a specific port twice and the second increments |  Major | Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-13693](https://issues.apache.org/jira/browse/SPARK-13693) | Flaky test: o.a.s.streaming.MapWithStateSuite |  Minor | Tests | Shixiong Zhu | Josh Rosen |
| [SPARK-14917](https://issues.apache.org/jira/browse/SPARK-14917) | Enable some ORC compressions tests for writing |  Trivial | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-14391](https://issues.apache.org/jira/browse/SPARK-14391) | Flaky Test org.apache.spark.launcher.LauncherServerSuite.testCommunication |  Major | Spark Submit | Burak Yavuz | Marcelo Vanzin |
| [SPARK-14992](https://issues.apache.org/jira/browse/SPARK-14992) | Flaky test: BucketedReadSuite.only shuffle one side when join bucketed table and non-bucketed table |  Critical | . | Davies Liu | Wenchen Fan |
| [SPARK-15444](https://issues.apache.org/jira/browse/SPARK-15444) | Default value mismatch of param linkPredictionCol for  GeneralizedLinearRegression |  Blocker | . | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-15462](https://issues.apache.org/jira/browse/SPARK-15462) | Checking \`resolved === false\` is enough for testcases. |  Minor | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-15508](https://issues.apache.org/jira/browse/SPARK-15508) | Fix flaky test: o.a.s.streaming.kafka.JavaKafkaStreamSuite.testKafkaStream |  Major | DStreams | Shixiong Zhu | Shixiong Zhu |
| [SPARK-15529](https://issues.apache.org/jira/browse/SPARK-15529) | Replace SQLContext and HiveContext with SparkSession in Test |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-15724](https://issues.apache.org/jira/browse/SPARK-15724) | Add benchmarks for performance over wide schemas |  Major | SQL | Eric Liang | Eric Liang |
| [SPARK-15878](https://issues.apache.org/jira/browse/SPARK-15878) | Fix test cleanup in EventLoggingListenerSuite and ReplayListenerSuite |  Minor | Tests | Imran Rashid | Imran Rashid |
| [SPARK-15901](https://issues.apache.org/jira/browse/SPARK-15901) | Test Cases for CONVERT\_METASTORE\_ORC and CONVERT\_METASTORE\_PARQUET |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-15998](https://issues.apache.org/jira/browse/SPARK-15998) | Verification of SQLConf HIVE\_METASTORE\_PARTITION\_PRUNING |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-16267](https://issues.apache.org/jira/browse/SPARK-16267) | Replace deprecated \`CREATE TEMPORARY TABLE\` from testsuites |  Trivial | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-16531](https://issues.apache.org/jira/browse/SPARK-16531) | Remove TimeZone from DataFrameTimeWindowingSuite |  Major | . | Burak Yavuz | Burak Yavuz |
| [SPARK-16529](https://issues.apache.org/jira/browse/SPARK-16529) | SQLTestUtils.withTempDatabase should set \`default\` database before dropping |  Trivial | Tests | Dongjoon Hyun | Dongjoon Hyun |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-11140](https://issues.apache.org/jira/browse/SPARK-11140) | Replace file server in driver with RPC-based alternative |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11314](https://issues.apache.org/jira/browse/SPARK-11314) | Add service API and test service for Yarn Cluster schedulers |  Major | YARN | Steve Loughran | Steve Loughran |
| [SPARK-9972](https://issues.apache.org/jira/browse/SPARK-9972) | Add \`struct\`, \`encode\` and \`decode\` function in SparkR |  Major | SparkR | Yu Ishikawa | Sun Rui |
| [SPARK-12152](https://issues.apache.org/jira/browse/SPARK-12152) | Speed up Scalastyle by only running one SBT command instead of four |  Major | Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-11605](https://issues.apache.org/jira/browse/SPARK-11605) | ML 1.6 QA: API: Java compatibility, docs |  Major | Documentation, Java API, ML, MLlib | Joseph K. Bradley | yuhao yang |
| [SPARK-12252](https://issues.apache.org/jira/browse/SPARK-12252) | refactor MapObjects to make it less hacky |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11602](https://issues.apache.org/jira/browse/SPARK-11602) | ML 1.6 QA: API: New Scala APIs, docs |  Major | Documentation, ML, MLlib | Joseph K. Bradley | yuhao yang |
| [SPARK-12212](https://issues.apache.org/jira/browse/SPARK-12212) | Clarify the distinction between spark.mllib and spark.ml |  Major | Documentation | Timothy Hunter | Timothy Hunter |
| [SPARK-11563](https://issues.apache.org/jira/browse/SPARK-11563) | Use RpcEnv to transfer generated classes in spark-shell |  Major | Spark Shell | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-12146](https://issues.apache.org/jira/browse/SPARK-12146) | SparkR jsonFile should support multiple input files |  Major | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-11964](https://issues.apache.org/jira/browse/SPARK-11964) | Create user guide section explaining export/import |  Major | Documentation, ML | Joseph K. Bradley | Bill Chambers |
| [SPARK-11978](https://issues.apache.org/jira/browse/SPARK-11978) | Move dataset\_example.py to examples/ml and rename to dataframe\_example.py |  Minor | ML, MLlib, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-12199](https://issues.apache.org/jira/browse/SPARK-12199) | Follow-up: Refine example code in ml-features.md |  Major | Documentation | Xusen Yin | Xusen Yin |
| [SPARK-12274](https://issues.apache.org/jira/browse/SPARK-12274) | WrapOption should not have type constraint for child |  Major | SQL | Wenchen Fan | Apache Spark |
| [SPARK-12310](https://issues.apache.org/jira/browse/SPARK-12310) | Add write.json and write.parquet for SparkR |  Major | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-12215](https://issues.apache.org/jira/browse/SPARK-12215) | User guide section for KMeans in spark.ml |  Major | Documentation, ML | Joseph K. Bradley | Yu Ishikawa |
| [SPARK-6518](https://issues.apache.org/jira/browse/SPARK-6518) | Add example code and user guide for bisecting k-means |  Major | Documentation, MLlib | Yu Ishikawa | Yu Ishikawa |
| [SPARK-9694](https://issues.apache.org/jira/browse/SPARK-9694) | Add random seed Param to Scala CrossValidator |  Minor | ML | Joseph K. Bradley | Yanbo Liang |
| [SPARK-11608](https://issues.apache.org/jira/browse/SPARK-11608) | ML 1.6 QA: Programming guide update and migration guide |  Major | Documentation, ML, MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-12320](https://issues.apache.org/jira/browse/SPARK-12320) | throw exception if the number of fields does not line up for Tuple encoder |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-9690](https://issues.apache.org/jira/browse/SPARK-9690) | Add random seed Param to PySpark CrossValidator |  Minor | ML, PySpark | Martin Menestret | Martin Menestret |
| [SPARK-8641](https://issues.apache.org/jira/browse/SPARK-8641) | Native Spark Window Functions |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-9057](https://issues.apache.org/jira/browse/SPARK-9057) | Add Scala, Java and Python example to show DStream.transform |  Major | DStreams | Tathagata Das | Jeff Lam |
| [SPARK-12335](https://issues.apache.org/jira/browse/SPARK-12335) | CentralMomentAgg should be nullable |  Major | SQL | Cheng Lian | Davies Liu |
| [SPARK-12336](https://issues.apache.org/jira/browse/SPARK-12336) | Outer join using multiple columns results in wrong nullability |  Major | SQL | Cheng Lian | Davies Liu |
| [SPARK-12341](https://issues.apache.org/jira/browse/SPARK-12341) | The "comment" field of DESCRIBE result set should be nullable |  Minor | SQL | Cheng Lian | Davies Liu |
| [SPARK-12342](https://issues.apache.org/jira/browse/SPARK-12342) | Corr (Pearson correlation) should be nullable |  Major | SQL | Cheng Lian | Davies Liu |
| [SPARK-11097](https://issues.apache.org/jira/browse/SPARK-11097) | Add connection established callback to lower level RPC layer so we don't need to check for new connections in NettyRpcHandler.receive |  Major | Spark Core | Reynold Xin | Shixiong Zhu |
| [SPARK-10580](https://issues.apache.org/jira/browse/SPARK-10580) | Remove Bagel |  Major | GraphX | Sean Owen | Reynold Xin |
| [SPARK-2331](https://issues.apache.org/jira/browse/SPARK-2331) | SparkContext.emptyRDD should return RDD[T] not EmptyRDD[T] |  Minor | Spark Core | Ian Hummel | Reynold Xin |
| [SPARK-11807](https://issues.apache.org/jira/browse/SPARK-11807) | Remove support for Hadoop \< 2.2 (i.e. Hadoop 1 and 2.0) |  Major | Build | Reynold Xin | Reynold Xin |
| [SPARK-12296](https://issues.apache.org/jira/browse/SPARK-12296) | Feature parity for pyspark.mllib StandardScalerModel |  Minor | MLlib, PySpark | Joseph K. Bradley | holdenk |
| [SPARK-12371](https://issues.apache.org/jira/browse/SPARK-12371) | Make sure non-nullable arguments of NewInstance don't receive null input data |  Major | SQL | Cheng Lian | Apache Spark |
| [SPARK-12456](https://issues.apache.org/jira/browse/SPARK-12456) | Add ExpressionDescription to misc functions |  Major | SQL | Yin Huai | Xiu (Joe) Guo |
| [SPARK-11199](https://issues.apache.org/jira/browse/SPARK-11199) | Improve R context management story and add getOrCreate |  Minor | SparkR | Felix Cheung | Hossein Falaki |
| [SPARK-12572](https://issues.apache.org/jira/browse/SPARK-12572) | Initial import of the Hive parser |  Major | SQL | Reynold Xin | Nong Li |
| [SPARK-12495](https://issues.apache.org/jira/browse/SPARK-12495) | use true as default value for propagateNull in NewInstance |  Major | SQL | Wenchen Fan | Apache Spark |
| [SPARK-12588](https://issues.apache.org/jira/browse/SPARK-12588) | Remove HTTPBroadcast |  Major | Spark Core | Josh Rosen | Reynold Xin |
| [SPARK-12561](https://issues.apache.org/jira/browse/SPARK-12561) | Remove JobLogger |  Major | Spark Core | Andrew Or | Reynold Xin |
| [SPARK-7995](https://issues.apache.org/jira/browse/SPARK-7995) | Remove AkkaRpcEnv and remove Akka from the dependencies of Core |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-6280](https://issues.apache.org/jira/browse/SPARK-6280) | Remove Akka systemName from Spark |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12481](https://issues.apache.org/jira/browse/SPARK-12481) | Remove usage of Hadoop deprecated APIs and reflection that supported 1.x |  Major | DStreams, Spark Core, SQL | Sean Owen | Sean Owen |
| [SPARK-9622](https://issues.apache.org/jira/browse/SPARK-9622) | DecisionTreeRegressor: provide variance of prediction |  Minor | ML | Joseph K. Bradley | Yanbo Liang |
| [SPARK-12600](https://issues.apache.org/jira/browse/SPARK-12600) | Remove deprecated methods in SQL / DataFrames |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12480](https://issues.apache.org/jira/browse/SPARK-12480) | add Hash expression that can calculate hash value for a group of expressions |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-12568](https://issues.apache.org/jira/browse/SPARK-12568) | Add BINARY to Encoders |  Major | SQL | Michael Armbrust | Apache Spark |
| [SPARK-12641](https://issues.apache.org/jira/browse/SPARK-12641) | Remove unused code related to Hadoop 0.23 |  Minor | Spark Core | Kousuke Saruta | Kousuke Saruta |
| [SPARK-12615](https://issues.apache.org/jira/browse/SPARK-12615) | Remove some deprecated APIs in RDD/SparkContext |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-6724](https://issues.apache.org/jira/browse/SPARK-6724) | Model import/export for FPGrowth |  Minor | MLlib | Joseph K. Bradley | Yanbo Liang |
| [SPARK-12041](https://issues.apache.org/jira/browse/SPARK-12041) | Add columnSimilarities to IndexedRowMatrix for PySpark |  Minor | MLlib, PySpark | Yanbo Liang | Kai Jiang |
| [SPARK-12627](https://issues.apache.org/jira/browse/SPARK-12627) | Remove SparkContext preferred locations constructor |  Blocker | Spark Core | Andrew Or | Reynold Xin |
| [SPARK-12393](https://issues.apache.org/jira/browse/SPARK-12393) | Add read.text and write.text for SparkR |  Major | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-12578](https://issues.apache.org/jira/browse/SPARK-12578) | Parser should not silently ignore the distinct keyword used in an aggregate function when OVER clause is used |  Major | SQL | Reynold Xin | Liang-Chi Hsieh |
| [SPARK-12665](https://issues.apache.org/jira/browse/SPARK-12665) | Remove Vector, VectorSuite and GraphKryoRegistrator which are deprecated and no longer used |  Major | GraphX, Spark Core | Kousuke Saruta | Kousuke Saruta |
| [SPARK-11945](https://issues.apache.org/jira/browse/SPARK-11945) | Add computeCost to KMeansModel for PySpark spark.ml |  Minor | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-11815](https://issues.apache.org/jira/browse/SPARK-11815) | PySpark DecisionTreeClassifier & DecisionTreeRegressor should support setSeed |  Minor | MLlib, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-12573](https://issues.apache.org/jira/browse/SPARK-12573) | Add acknowledge that the parser was initially from Hive |  Major | SQL | Reynold Xin | Herman van Hovell |
| [SPARK-12574](https://issues.apache.org/jira/browse/SPARK-12574) | Move parser from hive module to catalyst (or sql-core) module |  Major | SQL | Reynold Xin | Herman van Hovell |
| [SPARK-12681](https://issues.apache.org/jira/browse/SPARK-12681) | Split IdentifiersParser.g to avoid single huge java source |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12539](https://issues.apache.org/jira/browse/SPARK-12539) | support writing bucketed table |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-12604](https://issues.apache.org/jira/browse/SPARK-12604) | Java count(AprroxDistinct)ByKey methods return Scala Long not Java |  Minor | Java API, Spark Core | Sean Owen | Sean Owen |
| [SPARK-7689](https://issues.apache.org/jira/browse/SPARK-7689) | Remove TTL-based metadata cleaning (spark.cleaner.ttl) |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-12618](https://issues.apache.org/jira/browse/SPARK-12618) | Clean up build warnings: 2.0.0 edition |  Minor | DStreams, Spark Core, SQL | Sean Owen | Sean Owen |
| [SPARK-12687](https://issues.apache.org/jira/browse/SPARK-12687) | Support from clause surrounded by \`()\` |  Major | SQL | Davies Liu | Liang-Chi Hsieh |
| [SPARK-4819](https://issues.apache.org/jira/browse/SPARK-4819) | Remove Guava's "Optional" from public API |  Major | Spark Core | Marcelo Vanzin | Sean Owen |
| [SPARK-12593](https://issues.apache.org/jira/browse/SPARK-12593) | Convert basic resolved logical plans back to SQL query strings |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-12577](https://issues.apache.org/jira/browse/SPARK-12577) | better support of parentheses in partition by and order by clause of window function's over clause |  Major | SQL | Reynold Xin | Liang-Chi Hsieh |
| [SPARK-3873](https://issues.apache.org/jira/browse/SPARK-3873) | Scala style: check import ordering |  Major | Project Infra | Reynold Xin | Marcelo Vanzin |
| [SPARK-12576](https://issues.apache.org/jira/browse/SPARK-12576) | Enable expression parsing (used in DataFrames) |  Major | SQL | Reynold Xin | Herman van Hovell |
| [SPARK-12762](https://issues.apache.org/jira/browse/SPARK-12762) | Add unit test for simplifying if expression |  Major | Optimizer, SQL | Reynold Xin | Reynold Xin |
| [SPARK-12768](https://issues.apache.org/jira/browse/SPARK-12768) | Remove CaseKeyWhen expression |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12724](https://issues.apache.org/jira/browse/SPARK-12724) | SQL generation support for persisted data source relations |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-12657](https://issues.apache.org/jira/browse/SPARK-12657) | Revert SPARK-12617 |  Major | PySpark | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12658](https://issues.apache.org/jira/browse/SPARK-12658) | Revert SPARK-12511 |  Major | PySpark | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12692](https://issues.apache.org/jira/browse/SPARK-12692) | Scala style: check no white space before comma |  Major | Project Infra | Kousuke Saruta | Kousuke Saruta |
| [SPARK-9297](https://issues.apache.org/jira/browse/SPARK-9297) | covar\_pop and covar\_samp aggregate functions |  Major | SQL | Yin Huai | Liang-Chi Hsieh |
| [SPARK-12791](https://issues.apache.org/jira/browse/SPARK-12791) | Simplify CaseWhen by breaking "branches" into "conditions" and "values" |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12819](https://issues.apache.org/jira/browse/SPARK-12819) | Deprecate TaskContext.isRunningLocally() |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-12756](https://issues.apache.org/jira/browse/SPARK-12756) | use hash expression in Exchange |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-12707](https://issues.apache.org/jira/browse/SPARK-12707) | Remove submit python/R scripts through pyspark/sparkR |  Major | Spark Submit | Jeff Zhang | Jeff Zhang |
| [SPARK-12771](https://issues.apache.org/jira/browse/SPARK-12771) | Improve code generation for CaseWhen |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12174](https://issues.apache.org/jira/browse/SPARK-12174) | Slow test: BlockManagerSuite."SPARK-9591: getRemoteBytes from another location when Exception throw" |  Major | Tests | Josh Rosen | Josh Rosen |
| [SPARK-12813](https://issues.apache.org/jira/browse/SPARK-12813) | Eliminate serialization for back to back operations |  Critical | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-12829](https://issues.apache.org/jira/browse/SPARK-12829) | Turn Java style checker on |  Major | Build | Reynold Xin | Reynold Xin |
| [SPARK-12830](https://issues.apache.org/jira/browse/SPARK-12830) | Java style: disallow trailing whitespaces |  Major | Build | Reynold Xin | Reynold Xin |
| [SPARK-11031](https://issues.apache.org/jira/browse/SPARK-11031) | SparkR str() method on DataFrame objects |  Major | SparkR | Oscar D. Lara Yejas | Oscar D. Lara Yejas |
| [SPARK-12833](https://issues.apache.org/jira/browse/SPARK-12833) | Initial import of databricks/spark-csv |  Major | SQL | Reynold Xin | Hossein Falaki |
| [SPARK-12667](https://issues.apache.org/jira/browse/SPARK-12667) | Remove block manager's internal "external block store" API |  Major | Block Manager, Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-12716](https://issues.apache.org/jira/browse/SPARK-12716) | Executor UI improvement suggestions - Totals |  Major | Web UI | Alex Bozarth | Alex Bozarth |
| [SPARK-12575](https://issues.apache.org/jira/browse/SPARK-12575) | Grammar parity with existing SQL parser |  Major | SQL | Reynold Xin | Herman van Hovell |
| [SPARK-11925](https://issues.apache.org/jira/browse/SPARK-11925) | Add PySpark missing methods for ml.feature during Spark 1.6 QA |  Minor | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-12649](https://issues.apache.org/jira/browse/SPARK-12649) | support reading bucketed table |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-12644](https://issues.apache.org/jira/browse/SPARK-12644) | Basic support for vectorize/batch Parquet decoding |  Major | SQL | Nong Li | Nong Li |
| [SPARK-10264](https://issues.apache.org/jira/browse/SPARK-10264) | Add @Since annotation to ml.recoomendation |  Minor | Documentation, ML | Xiangrui Meng | Tijo Thomas |
| [SPARK-12884](https://issues.apache.org/jira/browse/SPARK-12884) | Move \*Metrics and \*Accum\* classes to their own files |  Minor | Spark Core | Andrew Or | Andrew Or |
| [SPARK-12855](https://issues.apache.org/jira/browse/SPARK-12855) | Remove parser pluggability |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12889](https://issues.apache.org/jira/browse/SPARK-12889) | Rename ParserDialect -\> ParserInterface |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12885](https://issues.apache.org/jira/browse/SPARK-12885) | Rename 3 fields in ShuffleWriteMetrics |  Minor | Spark Core | Andrew Or | Andrew Or |
| [SPARK-12668](https://issues.apache.org/jira/browse/SPARK-12668) | Renaming CSV options to be similar to Pandas and R |  Major | SQL | Hossein Falaki | Hyukjin Kwon |
| [SPARK-7683](https://issues.apache.org/jira/browse/SPARK-7683) | Confusing behavior of fold function of RDD in pyspark |  Minor | PySpark | Ai He | Sean Owen |
| [SPARK-11944](https://issues.apache.org/jira/browse/SPARK-11944) | Python API for mllib.clustering.BisectingKMeans |  Minor | Documentation, ML, MLlib, PySpark | Yanbo Liang | holdenk |
| [SPARK-12887](https://issues.apache.org/jira/browse/SPARK-12887) | Do not expose var's in TaskMetrics |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-12770](https://issues.apache.org/jira/browse/SPARK-12770) | Implement rules for branch elimination for CaseWhen in SimplifyConditionals |  Major | Optimizer, SQL | Reynold Xin | Reynold Xin |
| [SPARK-12871](https://issues.apache.org/jira/browse/SPARK-12871) | Support to specify the option for compression codec. |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-10263](https://issues.apache.org/jira/browse/SPARK-10263) | Add @Since annotation to ml.param and ml.\* |  Minor | Documentation, ML | Xiangrui Meng | Hiroshi Takahashi |
| [SPARK-12847](https://issues.apache.org/jira/browse/SPARK-12847) | Remove StreamingListenerBus and post all Streaming events to the same thread as Spark events |  Major | DStreams, Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7799](https://issues.apache.org/jira/browse/SPARK-7799) | Move "StreamingContext.actorStream" to a separate project and deprecate it in StreamingContext |  Major | DStreams | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12848](https://issues.apache.org/jira/browse/SPARK-12848) | Parse numbers as decimals rather than doubles |  Major | SQL | Davies Liu | Herman van Hovell |
| [SPARK-7994](https://issues.apache.org/jira/browse/SPARK-7994) | Remove "StreamingContext.actorStream" |  Major | DStreams | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7997](https://issues.apache.org/jira/browse/SPARK-7997) | Remove the developer api SparkEnv.actorSystem and AkkaUtils |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12933](https://issues.apache.org/jira/browse/SPARK-12933) | Initial count-min sketch implementation |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-12901](https://issues.apache.org/jira/browse/SPARK-12901) | Refector options to be correctly formed in a case class |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-11965](https://issues.apache.org/jira/browse/SPARK-11965) | Update user guide for RFormula feature interactions |  Major | Documentation, ML | Joseph K. Bradley | Yanbo Liang |
| [SPARK-12149](https://issues.apache.org/jira/browse/SPARK-12149) | Executor UI improvement suggestions - Color UI |  Major | Web UI | Alex Bozarth | Alex Bozarth |
| [SPARK-12934](https://issues.apache.org/jira/browse/SPARK-12934) | Count-min sketch serialization |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-12936](https://issues.apache.org/jira/browse/SPARK-12936) | Initial bloom filter implementation |  Major | SQL | Cheng Lian | Wenchen Fan |
| [SPARK-11922](https://issues.apache.org/jira/browse/SPARK-11922) | Python API for ml.feature.QuantileDiscretizer |  Minor | ML, PySpark | Yanbo Liang | holdenk |
| [SPARK-12937](https://issues.apache.org/jira/browse/SPARK-12937) | Bloom filter serialization |  Major | SQL | Cheng Lian | Wenchen Fan |
| [SPARK-3369](https://issues.apache.org/jira/browse/SPARK-3369) | Java mapPartitions Iterator-\>Iterable is inconsistent with Scala's Iterator-\>Iterator |  Major | Java API | Sean Owen | Sean Owen |
| [SPARK-11923](https://issues.apache.org/jira/browse/SPARK-11923) | Python API for ml.feature.ChiSqSelector |  Minor | ML, PySpark | Yanbo Liang | Xusen Yin |
| [SPARK-12993](https://issues.apache.org/jira/browse/SPARK-12993) | Remove usage of ADD\_FILES in pyspark |  Minor | PySpark | Jeff Zhang | Jeff Zhang |
| [SPARK-12891](https://issues.apache.org/jira/browse/SPARK-12891) | Add support for complex types in ColumnarBatch |  Major | SQL | Nong Li | Nong Li |
| [SPARK-12935](https://issues.apache.org/jira/browse/SPARK-12935) | Count-min sketch DataFrame API integration |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-12728](https://issues.apache.org/jira/browse/SPARK-12728) | Integrate SQL generation feature with native view |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-12895](https://issues.apache.org/jira/browse/SPARK-12895) | Implement TaskMetrics using accumulators |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-12896](https://issues.apache.org/jira/browse/SPARK-12896) | Send only accumulator updates, not TaskMetrics, to the driver |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-12938](https://issues.apache.org/jira/browse/SPARK-12938) | Bloom filter DataFrame API integration |  Major | SQL | Cheng Lian | Wenchen Fan |
| [SPARK-12865](https://issues.apache.org/jira/browse/SPARK-12865) | Migrate the SparkSQLParser to the new parser |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-12866](https://issues.apache.org/jira/browse/SPARK-12866) | Migrate the ExtendedHiveQlParser to the new parser |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-13045](https://issues.apache.org/jira/browse/SPARK-13045) | Clean up ColumnarBatch.Row and Column.Struct |  Minor | SQL | Nong Li | Nong Li |
| [SPARK-12968](https://issues.apache.org/jira/browse/SPARK-12968) | Implement command to set current database |  Critical | SQL | Reynold Xin | Liang-Chi Hsieh |
| [SPARK-13032](https://issues.apache.org/jira/browse/SPARK-13032) | Basic ML Pipeline export/import functions for PySpark |  Major | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-13076](https://issues.apache.org/jira/browse/SPARK-13076) | Rename ClientInterface to HiveClient |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12689](https://issues.apache.org/jira/browse/SPARK-12689) | Migrate DDL parsing to the newly absorbed parser |  Major | SQL | Reynold Xin | Liang-Chi Hsieh |
| [SPARK-13043](https://issues.apache.org/jira/browse/SPARK-13043) | Support remaining types in ColumnarBatch |  Major | SQL | Nong Li | Nong Li |
| [SPARK-13078](https://issues.apache.org/jira/browse/SPARK-13078) | Create internal catalog API |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12790](https://issues.apache.org/jira/browse/SPARK-12790) | Remove HistoryServer old multiple files format |  Major | Deploy | Andrew Or | Felix Cheung |
| [SPARK-10820](https://issues.apache.org/jira/browse/SPARK-10820) | Initial infrastructure |  Major | Structured Streaming | Reynold Xin | Michael Armbrust |
| [SPARK-13114](https://issues.apache.org/jira/browse/SPARK-13114) | java.lang.NegativeArraySizeException in CSV |  Critical | SQL | Davies Liu | Hyukjin Kwon |
| [SPARK-12631](https://issues.apache.org/jira/browse/SPARK-12631) | Make Parameter Descriptions Consistent for PySpark MLlib Clustering |  Trivial | Documentation, PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-13090](https://issues.apache.org/jira/browse/SPARK-13090) | Add initial support for constraint propagation in SparkSQL |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-13166](https://issues.apache.org/jira/browse/SPARK-13166) | Remove DataStreamReader/Writer |  Major | Structured Streaming | Reynold Xin | Reynold Xin |
| [SPARK-13079](https://issues.apache.org/jira/browse/SPARK-13079) | Provide an in-memory implementation of the catalog API |  Major | SQL | Reynold Xin | Andrew Or |
| [SPARK-10814](https://issues.apache.org/jira/browse/SPARK-10814) | API design: convergence of batch and streaming DataFrame |  Major | Structured Streaming | Reynold Xin | Reynold Xin |
| [SPARK-13164](https://issues.apache.org/jira/browse/SPARK-13164) | Replace deprecated synchronizedBuffer in core |  Minor | Spark Core | holdenk | holdenk |
| [SPARK-13208](https://issues.apache.org/jira/browse/SPARK-13208) | Replace Pair with tuples |  Trivial | DStreams, Examples, Spark Core, SQL | Jakob Odersky | Jakob Odersky |
| [SPARK-13171](https://issues.apache.org/jira/browse/SPARK-13171) | Update promise & future to Promise and Future as the old ones are deprecated |  Trivial | . | holdenk | Jakob Odersky |
| [SPARK-13176](https://issues.apache.org/jira/browse/SPARK-13176) | Ignore deprecation warning for ProcessBuilder lines\_! |  Trivial | Spark Core | holdenk | Jakob Odersky |
| [SPARK-13165](https://issues.apache.org/jira/browse/SPARK-13165) | Replace deprecated synchronizedBuffer in streaming |  Trivial | DStreams | holdenk | holdenk |
| [SPARK-13201](https://issues.apache.org/jira/browse/SPARK-13201) | Make a private non-deprecated version of setRuns |  Trivial | MLlib, PySpark | holdenk | holdenk |
| [SPARK-13200](https://issues.apache.org/jira/browse/SPARK-13200) | Investigate math.round on integer number in MFDataGenerator.scala:109 |  Minor | MLlib | holdenk | holdenk |
| [SPARK-13177](https://issues.apache.org/jira/browse/SPARK-13177) | Update ActorWordCount example to not directly use low level linked list as it is deprecated. |  Minor | Examples | holdenk | Sachin Aggarwal |
| [SPARK-13170](https://issues.apache.org/jira/browse/SPARK-13170) | Investigate replacing SynchronizedQueue as it is deprecated |  Trivial | DStreams, Tests | holdenk | Sean Owen |
| [SPARK-13149](https://issues.apache.org/jira/browse/SPARK-13149) | Add FileStreamSource |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-9307](https://issues.apache.org/jira/browse/SPARK-9307) | Logging: Make it either stable or private[spark] |  Minor | Spark Core | Santiago M. Mola | Sean Owen |
| [SPARK-12414](https://issues.apache.org/jira/browse/SPARK-12414) | Remove closure serializer |  Major | Spark Core | Andrew Or | Sean Owen |
| [SPARK-12725](https://issues.apache.org/jira/browse/SPARK-12725) | SQL generation suffers from name conficts introduced by some analysis rules |  Major | SQL | Cheng Lian | Xiao Li |
| [SPARK-13205](https://issues.apache.org/jira/browse/SPARK-13205) | SQL generation support for self join |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-12706](https://issues.apache.org/jira/browse/SPARK-12706) | support grouping/grouping\_id function together group set |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13037](https://issues.apache.org/jira/browse/SPARK-13037) | PySpark ml.recommendation support export/import |  Major | ML, PySpark | Yanbo Liang | Kai Jiang |
| [SPARK-13035](https://issues.apache.org/jira/browse/SPARK-13035) | PySpark ml.clustering support export/import |  Minor | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-12705](https://issues.apache.org/jira/browse/SPARK-12705) | Sorting column can't be resolved if it's not in projection |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13282](https://issues.apache.org/jira/browse/SPARK-13282) | LogicalPlan toSql should just return a String rather than Option[String] |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12630](https://issues.apache.org/jira/browse/SPARK-12630) | Make Parameter Descriptions Consistent for PySpark MLlib Classification |  Trivial | Documentation, PySpark | Bryan Cutler | Vijay Kiran |
| [SPARK-13172](https://issues.apache.org/jira/browse/SPARK-13172) | Stop using RichException.getStackTrace it is deprecated |  Trivial | Spark Core | holdenk | Sean Owen |
| [SPARK-13296](https://issues.apache.org/jira/browse/SPARK-13296) | Move UserDefinedFunction into sql.expressions package |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12995](https://issues.apache.org/jira/browse/SPARK-12995) | Remove deprecate APIs from GraphX |  Major | GraphX | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-13018](https://issues.apache.org/jira/browse/SPARK-13018) | Replace example code in mllib-pmml-model-export.md using include\_example |  Minor | Documentation | Xusen Yin | Xin Ren |
| [SPARK-12247](https://issues.apache.org/jira/browse/SPARK-12247) | Documentation for spark.ml's ALS and collaborative filtering in general |  Major | Documentation, MLlib | Timothy Hunter | Benjamin Fradet |
| [SPARK-13261](https://issues.apache.org/jira/browse/SPARK-13261) | Expose maxCharactersPerColumn as a user configurable option |  Major | SQL | Hossein Falaki | Hossein Falaki |
| [SPARK-13091](https://issues.apache.org/jira/browse/SPARK-13091) | Rewrite/Propagate constraints for Aliases |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-13306](https://issues.apache.org/jira/browse/SPARK-13306) | Initial implementation for uncorrelated scalar subquery |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12799](https://issues.apache.org/jira/browse/SPARK-12799) | Simplify various string output for expressions |  Major | SQL | Reynold Xin | Cheng Lian |
| [SPARK-13420](https://issues.apache.org/jira/browse/SPARK-13420) | Rename Subquery logical plan to SubqueryAlias |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-13137](https://issues.apache.org/jira/browse/SPARK-13137) | NullPoingException in schema inference for CSV when the first line is empty |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-13080](https://issues.apache.org/jira/browse/SPARK-13080) | Implementation of the internal catalog API using Hive |  Major | SQL | Reynold Xin | Andrew Or |
| [SPARK-13405](https://issues.apache.org/jira/browse/SPARK-13405) | Flaky test: o.a.s.sql.util.ContinuousQueryListenerSuite.event ordering |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-13381](https://issues.apache.org/jira/browse/SPARK-13381) | Support for loading CSV with a single function call |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-13426](https://issues.apache.org/jira/browse/SPARK-13426) | Remove the support of SIMR cluster manager |  Major | Scheduler, Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-13186](https://issues.apache.org/jira/browse/SPARK-13186) | Migrate away from SynchronizedMap which is deprecated |  Trivial | DStreams, Spark Core, SQL | holdenk | Huaxin Gao |
| [SPARK-12632](https://issues.apache.org/jira/browse/SPARK-12632) | Make Parameter Descriptions Consistent for PySpark MLlib FPM and Recommendation |  Trivial | Documentation, PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-13413](https://issues.apache.org/jira/browse/SPARK-13413) | Remove SparkContext.metricsSystem |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-13016](https://issues.apache.org/jira/browse/SPARK-13016) | Replace example code in mllib-dimensionality-reduction.md using include\_example |  Minor | Documentation | Xusen Yin | Devaraj K |
| [SPARK-13012](https://issues.apache.org/jira/browse/SPARK-13012) | Replace example code in ml-guide.md using include\_example |  Minor | Documentation | Xusen Yin | Devaraj K |
| [SPARK-12723](https://issues.apache.org/jira/browse/SPARK-12723) | Comprehensive SQL generation support for expressions |  Major | SQL | Cheng Lian | Xiao Li |
| [SPARK-13236](https://issues.apache.org/jira/browse/SPARK-13236) | SQL generation support for Set Operations |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-6761](https://issues.apache.org/jira/browse/SPARK-6761) | Approximate quantile |  Major | SQL | Reynold Xin | Liang-Chi Hsieh |
| [SPARK-13263](https://issues.apache.org/jira/browse/SPARK-13263) | SQL generation support for tablesample |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-13220](https://issues.apache.org/jira/browse/SPARK-13220) | Deprecate "yarn-client" and "yarn-cluster" |  Major | YARN | Andrew Or | Saisai Shao |
| [SPARK-10759](https://issues.apache.org/jira/browse/SPARK-10759) | Missing Python code example in model selection user guide |  Minor | Documentation, ML | Raela Wang | Jeremy |
| [SPARK-13092](https://issues.apache.org/jira/browse/SPARK-13092) | Track constraints in ExpressionSet |  Major | SQL | Sameer Agarwal | Michael Armbrust |
| [SPARK-7106](https://issues.apache.org/jira/browse/SPARK-7106) | Support model save/load in Python's FPGrowth |  Minor | MLlib, PySpark | Joseph K. Bradley | Kai Jiang |
| [SPARK-13486](https://issues.apache.org/jira/browse/SPARK-13486) | Move SQLConf into an internal package |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-13033](https://issues.apache.org/jira/browse/SPARK-13033) | PySpark ml.regression support export/import |  Minor | ML, PySpark | Yanbo Liang | Wenpei Yu |
| [SPARK-13487](https://issues.apache.org/jira/browse/SPARK-13487) | User-facing RuntimeConfig interface |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12634](https://issues.apache.org/jira/browse/SPARK-12634) | Make Parameter Descriptions Consistent for PySpark MLlib Tree |  Trivial | Documentation, PySpark | Bryan Cutler | Vijay Kiran |
| [SPARK-11381](https://issues.apache.org/jira/browse/SPARK-11381) | Replace example code in mllib-linear-methods.md using include\_example |  Major | Documentation, MLlib | Xusen Yin | Dongjoon Hyun |
| [SPARK-13521](https://issues.apache.org/jira/browse/SPARK-13521) | Remove reference to Tachyon in cluster & release script |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-13529](https://issues.apache.org/jira/browse/SPARK-13529) | Move network/\* modules into common/network-\* |  Major | Build | Reynold Xin | Reynold Xin |
| [SPARK-12633](https://issues.apache.org/jira/browse/SPARK-12633) | Make Parameter Descriptions Consistent for PySpark MLlib Regression |  Trivial | Documentation, PySpark | Bryan Cutler | Vijay Kiran |
| [SPARK-13509](https://issues.apache.org/jira/browse/SPARK-13509) | Support for writing CSV with a single function call |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-13548](https://issues.apache.org/jira/browse/SPARK-13548) | Move tags and unsafe modules into common |  Major | Build | Reynold Xin | Reynold Xin |
| [SPARK-13609](https://issues.apache.org/jira/browse/SPARK-13609) | Support Column Pruning for MapPartitions |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-13594](https://issues.apache.org/jira/browse/SPARK-13594) | remove typed operations (map, flatMap, mapPartitions) from Python DataFrame |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-13013](https://issues.apache.org/jira/browse/SPARK-13013) | Replace example code in mllib-clustering.md using include\_example |  Minor | Documentation | Xusen Yin | Xin Ren |
| [SPARK-13632](https://issues.apache.org/jira/browse/SPARK-13632) | Create new o.a.s.sql.execution.commands package |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-13584](https://issues.apache.org/jira/browse/SPARK-13584) | ContinuousQueryManagerSuite floods the logs with garbage |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-13415](https://issues.apache.org/jira/browse/SPARK-13415) | Visualize subquery in SQL web UI |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13603](https://issues.apache.org/jira/browse/SPARK-13603) | SQL generation for subquery |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13398](https://issues.apache.org/jira/browse/SPARK-13398) | Move away from deprecated ThreadPoolTaskSupport |  Trivial | DStreams | holdenk | holdenk |
| [SPARK-13036](https://issues.apache.org/jira/browse/SPARK-13036) | PySpark ml.feature support export/import |  Minor | ML, PySpark | Yanbo Liang | Xusen Yin |
| [SPARK-13318](https://issues.apache.org/jira/browse/SPARK-13318) | Model export/import for spark.ml: ElementwiseProduct |  Minor | ML | Xusen Yin | Xusen Yin |
| [SPARK-13633](https://issues.apache.org/jira/browse/SPARK-13633) | Move parser classes to o.a.s.sql.catalyst.parser package |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-12720](https://issues.apache.org/jira/browse/SPARK-12720) | SQL generation support for cube, rollup, and grouping set |  Major | SQL | Cheng Lian | Xiao Li |
| [SPARK-13685](https://issues.apache.org/jira/browse/SPARK-13685) | Rename catalog.Catalog to ExternalCatalog |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-13495](https://issues.apache.org/jira/browse/SPARK-13495) | Add Null Filters in the query plan for Filters/Joins based on their data constraints |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-12243](https://issues.apache.org/jira/browse/SPARK-12243) | PySpark tests are slow in Jenkins |  Major | Project Infra, PySpark, Tests | Josh Rosen | Dongjoon Hyun |
| [SPARK-13442](https://issues.apache.org/jira/browse/SPARK-13442) | Make type inference recognize boolean types |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-13596](https://issues.apache.org/jira/browse/SPARK-13596) | Move misc top-level build files into appropriate subdirs |  Major | Build | Sean Owen | Sean Owen |
| [SPARK-13665](https://issues.apache.org/jira/browse/SPARK-13665) | Initial separation of concerns in HadoopFSRelation |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-13689](https://issues.apache.org/jira/browse/SPARK-13689) | Move some methods in CatalystQl to a util object |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-12727](https://issues.apache.org/jira/browse/SPARK-12727) | SQL generation support for distinct aggregation patterns that fit DistinctAggregationRewriter analysis rule |  Major | SQL | Cheng Lian | Wenchen Fan |
| [SPARK-13400](https://issues.apache.org/jira/browse/SPARK-13400) | Stop using deprecated Octal escape literals |  Trivial | SQL | holdenk | Dongjoon Hyun |
| [SPARK-13738](https://issues.apache.org/jira/browse/SPARK-13738) | Clean up ResolveDataSource |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-13750](https://issues.apache.org/jira/browse/SPARK-13750) | Fix sizeInBytes for HadoopFSRelation |  Blocker | SQL | Michael Armbrust | Davies Liu |
| [SPARK-13754](https://issues.apache.org/jira/browse/SPARK-13754) | Keep old data source name for backwards compatibility |  Major | SQL | Hossein Falaki | Hossein Falaki |
| [SPARK-13595](https://issues.apache.org/jira/browse/SPARK-13595) | Move docker, extras modules into external |  Minor | Build, Examples | Sean Owen | Sean Owen |
| [SPARK-13728](https://issues.apache.org/jira/browse/SPARK-13728) | Fix ORC PPD |  Major | SQL | Michael Armbrust | Hyukjin Kwon |
| [SPARK-13781](https://issues.apache.org/jira/browse/SPARK-13781) | Use ExpressionSets in ConstraintPropagationSuite |  Minor | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-13146](https://issues.apache.org/jira/browse/SPARK-13146) | API for managing streaming dataframes |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-11108](https://issues.apache.org/jira/browse/SPARK-11108) | OneHotEncoder should support other numeric input types |  Minor | ML | Joseph K. Bradley | Seth Hendrickson |
| [SPARK-13794](https://issues.apache.org/jira/browse/SPARK-13794) | Rename DataFrameWriter.stream DataFrameWriter.startStream |  Major | Structured Streaming | Reynold Xin | Reynold Xin |
| [SPARK-13759](https://issues.apache.org/jira/browse/SPARK-13759) | Add IsNotNull constraints for expressions with an inequality |  Minor | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-13244](https://issues.apache.org/jira/browse/SPARK-13244) | Unify DataFrame and Dataset API |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-13789](https://issues.apache.org/jira/browse/SPARK-13789) | Infer additional constraints from attribute equality |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-13294](https://issues.apache.org/jira/browse/SPARK-13294) | Remove MiMa's dependency on spark-class / Spark assembly |  Major | Build | Josh Rosen | Josh Rosen |
| [SPARK-13817](https://issues.apache.org/jira/browse/SPARK-13817) | Re-enable MiMA check after unifying DataFrame and Dataset API |  Major | Build | Cheng Lian | Cheng Lian |
| [SPARK-13828](https://issues.apache.org/jira/browse/SPARK-13828) | QueryExecution's assertAnalyzed needs to preserve the stacktrace |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-13841](https://issues.apache.org/jira/browse/SPARK-13841) | Remove Dataset.collectRows() and Dataset.takeRows() |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-13746](https://issues.apache.org/jira/browse/SPARK-13746) | Stop using depredated SynchronizedSet |  Trivial | Tests | Wilson Wu | Wilson Wu |
| [SPARK-13578](https://issues.apache.org/jira/browse/SPARK-13578) | Make launcher lib and user scripts handle jar directories instead of single assembly file |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-13843](https://issues.apache.org/jira/browse/SPARK-13843) | Move streaming-flume, streaming-mqtt, streaming-zeromq, streaming-akka, streaming-twitter to Spark packages |  Major | DStreams | Shixiong Zhu | Shixiong Zhu |
| [SPARK-13791](https://issues.apache.org/jira/browse/SPARK-13791) | Add MetadataLog and HDFSMetadataLog |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-13888](https://issues.apache.org/jira/browse/SPARK-13888) | Remove Streaming Akka docs from Spark |  Major | Documentation | Shixiong Zhu | Shixiong Zhu |
| [SPARK-13880](https://issues.apache.org/jira/browse/SPARK-13880) | Rename DataFrame.scala as Dataset.scala |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-13881](https://issues.apache.org/jira/browse/SPARK-13881) | Remove LegacyFunctions |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12379](https://issues.apache.org/jira/browse/SPARK-12379) | Copy GBT implementation to spark.ml |  Major | ML, MLlib | Seth Hendrickson | Seth Hendrickson |
| [SPARK-13576](https://issues.apache.org/jira/browse/SPARK-13576) | Make examples jar not be an assembly |  Major | Examples | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-13876](https://issues.apache.org/jira/browse/SPARK-13876) | Strategy for planning scans of files |  Critical | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-13896](https://issues.apache.org/jira/browse/SPARK-13896) | Dataset.toJSON should return Dataset[String] |  Blocker | SQL | Reynold Xin | Stavros Kontopoulos |
| [SPARK-13895](https://issues.apache.org/jira/browse/SPARK-13895) | DataFrameReader.text should return Dataset[String] |  Blocker | SQL | Reynold Xin | Reynold Xin |
| [SPARK-13899](https://issues.apache.org/jira/browse/SPARK-13899) | Produce InternalRow instead of external Row |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-13397](https://issues.apache.org/jira/browse/SPARK-13397) | Cleanup transient annotations which aren't being applied |  Trivial | DStreams, Examples, Spark Core, SQL | holdenk | Sean Owen |
| [SPARK-13395](https://issues.apache.org/jira/browse/SPARK-13395) | Silence or skip unsafe deprecation warnings |  Trivial | Spark Core, SQL | holdenk | Sean Owen |
| [SPARK-13396](https://issues.apache.org/jira/browse/SPARK-13396) | Stop using our internal deprecated .metrics on ExceptionFailure instead use accumUpdates |  Minor | Spark Core | holdenk | Gayathri Murali |
| [SPARK-13894](https://issues.apache.org/jira/browse/SPARK-13894) | SQLContext.range should return Dataset[Long] |  Blocker | SQL | Reynold Xin | Cheng Hao |
| [SPARK-12721](https://issues.apache.org/jira/browse/SPARK-12721) | SQL generation support for script transformation |  Major | SQL | Cheng Lian | Xiao Li |
| [SPARK-12718](https://issues.apache.org/jira/browse/SPARK-12718) | SQL generation support for window functions |  Major | SQL | Cheng Lian | Wenchen Fan |
| [SPARK-13038](https://issues.apache.org/jira/browse/SPARK-13038) | PySpark ml.pipeline support export/import - non-nested Pipelines |  Minor | ML, PySpark | Yanbo Liang | Xusen Yin |
| [SPARK-11888](https://issues.apache.org/jira/browse/SPARK-11888) | Model export/import for spark.ml: DecisionTreeClassifier,Regressor |  Major | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-13034](https://issues.apache.org/jira/browse/SPARK-13034) | PySpark ml.classification support export/import |  Minor | ML, PySpark | Yanbo Liang | Gayathri Murali |
| [SPARK-13871](https://issues.apache.org/jira/browse/SPARK-13871) | Add support for inferring filters from data constraints |  Minor | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-11891](https://issues.apache.org/jira/browse/SPARK-11891) | Model export/import for RFormula and RFormulaModel |  Major | ML | Xiangrui Meng | Xusen Yin |
| [SPARK-13826](https://issues.apache.org/jira/browse/SPARK-13826) | Revise ScalaDoc of the new Dataset API |  Blocker | Documentation, SQL | Cheng Lian | Cheng Lian |
| [SPARK-13989](https://issues.apache.org/jira/browse/SPARK-13989) | Remove non-vectorized/unsafe-row parquet record reader |  Minor | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-14012](https://issues.apache.org/jira/browse/SPARK-14012) | Extract VectorizedColumnReader from VectorizedParquetRecordReader |  Trivial | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-13897](https://issues.apache.org/jira/browse/SPARK-13897) | GroupedData vs GroupedDataset naming is confusing |  Blocker | SQL | Reynold Xin | Reynold Xin |
| [SPARK-13993](https://issues.apache.org/jira/browse/SPARK-13993) | PySpark ml.feature.RFormula/RFormulaModel support export/import |  Minor | ML, PySpark | Xusen Yin | Xusen Yin |
| [SPARK-13898](https://issues.apache.org/jira/browse/SPARK-13898) | Merge DatasetHolder and DataFrameHolder |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14016](https://issues.apache.org/jira/browse/SPARK-14016) | Support high-precision decimals in vectorized parquet reader |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-13883](https://issues.apache.org/jira/browse/SPARK-13883) | buildReader implementation for parquet |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-13985](https://issues.apache.org/jira/browse/SPARK-13985) | WAL for determistic batches with IDs |  Major | Structured Streaming | Michael Armbrust | Michael Armbrust |
| [SPARK-14063](https://issues.apache.org/jira/browse/SPARK-14063) | SQLContext.range should return Dataset[java.lang.Long] |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-13951](https://issues.apache.org/jira/browse/SPARK-13951) | PySpark ml.pipeline support export/import - nested Piplines |  Major | ML, PySpark | Joseph K. Bradley | Xusen Yin |
| [SPARK-10146](https://issues.apache.org/jira/browse/SPARK-10146) | Have an easy way to set data source reader/writer specific confs |  Critical | SQL | Yin Huai | Yin Huai |
| [SPARK-14088](https://issues.apache.org/jira/browse/SPARK-14088) | Some Dataset API touch-up |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14015](https://issues.apache.org/jira/browse/SPARK-14015) | Support TimestampType in vectorized parquet reader |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-14078](https://issues.apache.org/jira/browse/SPARK-14078) | Simple FileSink for Parquet |  Major | Structured Streaming | Michael Armbrust | Michael Armbrust |
| [SPARK-13019](https://issues.apache.org/jira/browse/SPARK-13019) | Replace example code in mllib-statistics.md using include\_example |  Minor | Documentation | Xusen Yin | Xin Ren |
| [SPARK-13017](https://issues.apache.org/jira/browse/SPARK-13017) | Replace example code in mllib-feature-extraction.md using include\_example |  Minor | Documentation | Xusen Yin | Xin Ren |
| [SPARK-11871](https://issues.apache.org/jira/browse/SPARK-11871) | Model export/import for spark.ml: Multilayer Perceptron |  Major | ML | Xusen Yin | Xusen Yin |
| [SPARK-13949](https://issues.apache.org/jira/browse/SPARK-13949) | PySpark ml DecisionTreeClassifier, Regressor support export/import |  Major | ML, PySpark | Joseph K. Bradley | Gayathri Murali |
| [SPARK-14142](https://issues.apache.org/jira/browse/SPARK-14142) | Replace internal use of unionAll with union |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14145](https://issues.apache.org/jira/browse/SPARK-14145) | Remove the untyped version of Dataset.groupByKey |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14144](https://issues.apache.org/jira/browse/SPARK-14144) | Explicitly identify/catch UnsupportedOperationException during parquet reader initialization |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-14150](https://issues.apache.org/jira/browse/SPARK-14150) | Infer IsNotNull constraints from non-nullable attributes |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-14131](https://issues.apache.org/jira/browse/SPARK-14131) | Add a workaround for HADOOP-10622 to fix DataFrameReaderWriterSuite |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-14073](https://issues.apache.org/jira/browse/SPARK-14073) | Move streaming-flume back to Spark |  Major | DStreams | Shixiong Zhu | Shixiong Zhu |
| [SPARK-13874](https://issues.apache.org/jira/browse/SPARK-13874) | Move docs of streaming-mqtt, streaming-zeromq, streaming-akka, streaming-twitter to Spark packages |  Major | Documentation | Shixiong Zhu | Shixiong Zhu |
| [SPARK-14116](https://issues.apache.org/jira/browse/SPARK-14116) | buildReader implementation for ORC |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-12792](https://issues.apache.org/jira/browse/SPARK-12792) | Refactor RRDD to support R UDF |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-13713](https://issues.apache.org/jira/browse/SPARK-13713) | Replace ANTLR3 SQL parser by a ANTLR4 SQL parser |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-11893](https://issues.apache.org/jira/browse/SPARK-11893) | Model export/import for spark.ml: TrainValidationSplit |  Major | ML | Xiangrui Meng | Xusen Yin |
| [SPARK-14086](https://issues.apache.org/jira/browse/SPARK-14086) | Add DDL commands to ANTLR4 Parser |  Blocker | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-14213](https://issues.apache.org/jira/browse/SPARK-14213) | Migrate HiveQl parsing to ANTLR4 parser |  Critical | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-14071](https://issues.apache.org/jira/browse/SPARK-14071) | Change MLWritable.write to be a property |  Trivial | ML, PySpark | Joseph K. Bradley | Miao Wang |
| [SPARK-14158](https://issues.apache.org/jira/browse/SPARK-14158) | implement buildReader for json data source |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-13963](https://issues.apache.org/jira/browse/SPARK-13963) | Add binary toggle Param to ml.HashingTF |  Trivial | ML | Nick Pentreath | Bryan Cutler |
| [SPARK-14208](https://issues.apache.org/jira/browse/SPARK-14208) | Rename "spark.sql.parquet.fileScan" |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-14119](https://issues.apache.org/jira/browse/SPARK-14119) | Role management commands (Exception) |  Major | SQL | Yin Huai | Andrew Or |
| [SPARK-14120](https://issues.apache.org/jira/browse/SPARK-14120) | Import/Export commands (Exception) |  Major | SQL | Yin Huai | Andrew Or |
| [SPARK-14122](https://issues.apache.org/jira/browse/SPARK-14122) | Show commands (Exception) |  Major | SQL | Yin Huai | Andrew Or |
| [SPARK-14124](https://issues.apache.org/jira/browse/SPARK-14124) | Database related commands |  Major | SQL | Yin Huai | Xiao Li |
| [SPARK-14114](https://issues.apache.org/jira/browse/SPARK-14114) | implement buildReader for text data source |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-14152](https://issues.apache.org/jira/browse/SPARK-14152) | MultilayerPerceptronClassifier supports save/load for Python API |  Minor | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-14206](https://issues.apache.org/jira/browse/SPARK-14206) | buildReader implementation for CSV |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-14211](https://issues.apache.org/jira/browse/SPARK-14211) | Remove ANTLR3 based parser |  Blocker | SQL | Reynold Xin | Herman van Hovell |
| [SPARK-12772](https://issues.apache.org/jira/browse/SPARK-12772) | Better error message for syntax error in the SQL parser |  Major | SQL | Reynold Xin | Herman van Hovell |
| [SPARK-13782](https://issues.apache.org/jira/browse/SPARK-13782) | Model export/import for spark.ml: BisectingKMeans |  Major | ML | Joseph K. Bradley | yuhao yang |
| [SPARK-11892](https://issues.apache.org/jira/browse/SPARK-11892) | Model export/import for spark.ml: OneVsRest |  Major | ML | Xiangrui Meng | Xusen Yin |
| [SPARK-14263](https://issues.apache.org/jira/browse/SPARK-14263) | Benchmark Vectorized HashMap for GroupBy Aggregates |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-14295](https://issues.apache.org/jira/browse/SPARK-14295) | buildReader implementation for LibSVM |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-14274](https://issues.apache.org/jira/browse/SPARK-14274) | Add FileFormat.prepareRead to collect necessary global information |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-12343](https://issues.apache.org/jira/browse/SPARK-12343) | Remove YARN Client / ClientArguments |  Major | YARN | Marcelo Vanzin | Saisai Shao |
| [SPARK-14305](https://issues.apache.org/jira/browse/SPARK-14305) | PySpark ml.clustering BisectingKMeans support export/import |  Major | ML, PySpark | Joseph K. Bradley | Yanbo Liang |
| [SPARK-14160](https://issues.apache.org/jira/browse/SPARK-14160) | Windowing for structured streaming |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-14316](https://issues.apache.org/jira/browse/SPARK-14316) | StateStoreCoordinator should extend ThreadSafeRpcEndpoint |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-14255](https://issues.apache.org/jira/browse/SPARK-14255) | Streaming Aggregation |  Major | Structured Streaming | Michael Armbrust | Michael Armbrust |
| [SPARK-7425](https://issues.apache.org/jira/browse/SPARK-7425) | spark.ml Predictor should support other numeric types for label |  Minor | ML | Joseph K. Bradley | Benjamin Fradet |
| [SPARK-14308](https://issues.apache.org/jira/browse/SPARK-14308) | Remove unused mllib tree classes and move private classes to ML |  Minor | ML, MLlib | Seth Hendrickson | Seth Hendrickson |
| [SPARK-14285](https://issues.apache.org/jira/browse/SPARK-14285) | Improve user experience for typed aggregate functions in Scala |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14342](https://issues.apache.org/jira/browse/SPARK-14342) | Remove straggler references to Tachyon |  Minor | Documentation, Spark Core, Tests | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [SPARK-13784](https://issues.apache.org/jira/browse/SPARK-13784) | Model export/import for spark.ml: RandomForests |  Major | ML | Joseph K. Bradley | Gayathri Murali |
| [SPARK-14176](https://issues.apache.org/jira/browse/SPARK-14176) | Add processing time trigger |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-14358](https://issues.apache.org/jira/browse/SPARK-14358) | Change SparkListener from a trait to an abstract class, and remove JavaSparkListener |  Major | Scheduler, Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-13579](https://issues.apache.org/jira/browse/SPARK-13579) | Stop building assemblies for Spark |  Major | Build | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-13808](https://issues.apache.org/jira/browse/SPARK-13808) | Don't build assembly in dev/run-tests |  Major | Build, Spark Core, YARN | Josh Rosen | Marcelo Vanzin |
| [SPARK-14287](https://issues.apache.org/jira/browse/SPARK-14287) | Method to determine if Dataset is bounded or not |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-14257](https://issues.apache.org/jira/browse/SPARK-14257) | Allow multiple continuous queries to be started from the same DataFrame |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-14123](https://issues.apache.org/jira/browse/SPARK-14123) | Function related commands |  Major | SQL | Yin Huai | Liang-Chi Hsieh |
| [SPARK-14129](https://issues.apache.org/jira/browse/SPARK-14129) | [Table related commands] Alter table |  Major | SQL | Yin Huai | Andrew Or |
| [SPARK-14128](https://issues.apache.org/jira/browse/SPARK-14128) | [Table related commands] For a table related commands, it should be able to distinguish data source tables and hive tables |  Major | SQL | Yin Huai | Andrew Or |
| [SPARK-14411](https://issues.apache.org/jira/browse/SPARK-14411) | Add a note to warn that onQueryProgress is asynchronous |  Minor | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-14359](https://issues.apache.org/jira/browse/SPARK-14359) | Improve user experience for typed aggregate functions in Java |  Major | SQL | Reynold Xin | Eric Liang |
| [SPARK-14413](https://issues.apache.org/jira/browse/SPARK-14413) | For data source tables, we should not allow users to set/change partition locations |  Major | SQL | Yin Huai | Andrew Or |
| [SPARK-14288](https://issues.apache.org/jira/browse/SPARK-14288) | Memory Sink |  Major | Structured Streaming | Michael Armbrust | Michael Armbrust |
| [SPARK-14320](https://issues.apache.org/jira/browse/SPARK-14320) | Make ColumnarBatch.Row mutable |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-14384](https://issues.apache.org/jira/browse/SPARK-14384) | Remove alterFunction from SessionCatalog |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-12382](https://issues.apache.org/jira/browse/SPARK-12382) | Remove spark.mllib GBT implementation and wrap spark.ml |  Major | ML, MLlib | Seth Hendrickson | Seth Hendrickson |
| [SPARK-12610](https://issues.apache.org/jira/browse/SPARK-12610) | Add Anti Join Operators |  Major | SQL | Cheng Hao | Herman van Hovell |
| [SPARK-14452](https://issues.apache.org/jira/browse/SPARK-14452) | Explicit APIs in Scala for specifying encoders |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14373](https://issues.apache.org/jira/browse/SPARK-14373) | PySpark ml RandomForestClassifier, Regressor support export/import |  Major | ML, PySpark | Joseph K. Bradley | Kai Jiang |
| [SPARK-14394](https://issues.apache.org/jira/browse/SPARK-14394) | Generate AggregateHashMap class during TungstenAggregate codegen |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-14451](https://issues.apache.org/jira/browse/SPARK-14451) | Move encoder definition into Aggregator interface |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14335](https://issues.apache.org/jira/browse/SPARK-14335) | Describe function command returns wrong output because some of built-in functions are not in function registry. |  Minor | SQL | Yin Huai | Yong Tang |
| [SPARK-14406](https://issues.apache.org/jira/browse/SPARK-14406) | Drop Table |  Major | SQL | Yin Huai | Xiao Li |
| [SPARK-14301](https://issues.apache.org/jira/browse/SPARK-14301) | Java examples code merge and clean up |  Minor | Examples | Xusen Yin | Yong Tang |
| [SPARK-14506](https://issues.apache.org/jira/browse/SPARK-14506) | HiveClientImpl's toHiveTable misses a table property for external tables |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-14462](https://issues.apache.org/jira/browse/SPARK-14462) | Add the mllib-local build to maven pom |  Blocker | ML, MLlib | DB Tsai | DB Tsai |
| [SPARK-14494](https://issues.apache.org/jira/browse/SPARK-14494) | Fix the race conditions in MemoryStream and MemorySink |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-14132](https://issues.apache.org/jira/browse/SPARK-14132) | [Table related commands] Alter partition |  Major | SQL | Yin Huai | Andrew Or |
| [SPARK-14535](https://issues.apache.org/jira/browse/SPARK-14535) | Remove buildInternalScan from FileFormat |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-14474](https://issues.apache.org/jira/browse/SPARK-14474) | Move FileSource offset log into checkpointLocation |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-14568](https://issues.apache.org/jira/browse/SPARK-14568) | Log instrumentation in logistic regression as a first task |  Major | ML, MLlib | Timothy Hunter | Timothy Hunter |
| [SPARK-14388](https://issues.apache.org/jira/browse/SPARK-14388) | Create Table |  Major | SQL | Yin Huai | Andrew Or |
| [SPARK-13783](https://issues.apache.org/jira/browse/SPARK-13783) | Model export/import for spark.ml: GBTs |  Major | ML | Joseph K. Bradley | Yanbo Liang |
| [SPARK-10386](https://issues.apache.org/jira/browse/SPARK-10386) | Model import/export for PrefixSpan |  Major | MLlib | Xiangrui Meng | Yanbo Liang |
| [SPARK-14125](https://issues.apache.org/jira/browse/SPARK-14125) | View related commands |  Major | SQL | Yin Huai | Xiao Li |
| [SPARK-14625](https://issues.apache.org/jira/browse/SPARK-14625) | TaskUIData and ExecutorUIData shouldn't be case classes |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14612](https://issues.apache.org/jira/browse/SPARK-14612) | Consolidate the version of dependencies in mllib and mllib-local into one place |  Trivial | ML, MLlib | DB Tsai | Sean Owen |
| [SPARK-14619](https://issues.apache.org/jira/browse/SPARK-14619) | Track internal accumulators (metrics) by stage attempt rather than stage |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-14617](https://issues.apache.org/jira/browse/SPARK-14617) | Remove deprecated APIs in TaskMetrics |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-14592](https://issues.apache.org/jira/browse/SPARK-14592) | Create table like |  Major | SQL | Yin Huai | Liang-Chi Hsieh |
| [SPARK-14238](https://issues.apache.org/jira/browse/SPARK-14238) | Add binary toggle Param to PySpark HashingTF in ML & MLlib |  Minor | ML, MLlib | Nick Pentreath | Yong Tang |
| [SPARK-14447](https://issues.apache.org/jira/browse/SPARK-14447) | Speed up TungstenAggregate w/ keys using AggregateHashMap |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-14374](https://issues.apache.org/jira/browse/SPARK-14374) | PySpark ml GBTClassifier, Regressor support export/import |  Major | ML, PySpark | Joseph K. Bradley | Yanbo Liang |
| [SPARK-14549](https://issues.apache.org/jira/browse/SPARK-14549) | Copy the Vector and Matrix classes from mllib to ml in mllib-local |  Major | MLlib | DB Tsai | DB Tsai |
| [SPARK-14628](https://issues.apache.org/jira/browse/SPARK-14628) | Remove all the Options in TaskMetrics |  Major | Spark Core | Reynold Xin | Wenchen Fan |
| [SPARK-14620](https://issues.apache.org/jira/browse/SPARK-14620) | Use/benchmark a better hash in AggregateHashMap |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-14668](https://issues.apache.org/jira/browse/SPARK-14668) | Move current\_database to Catalyst |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-14672](https://issues.apache.org/jira/browse/SPARK-14672) | Move HiveContext analyze logic to AnalyzeTable |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-14473](https://issues.apache.org/jira/browse/SPARK-14473) | Define analysis rules for operations not supported in streaming |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-14306](https://issues.apache.org/jira/browse/SPARK-14306) | PySpark ml.classification OneVsRest support export/import |  Major | ML, PySpark | Joseph K. Bradley | Xusen Yin |
| [SPARK-14647](https://issues.apache.org/jira/browse/SPARK-14647) | Group SQLContext/HiveContext state into PersistentState |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-14299](https://issues.apache.org/jira/browse/SPARK-14299) | Scala ML examples code merge and clean up |  Minor | Examples | Xusen Yin | Xusen Yin |
| [SPARK-14674](https://issues.apache.org/jira/browse/SPARK-14674) | Move HiveContext.hiveconf to HiveSessionState |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-14667](https://issues.apache.org/jira/browse/SPARK-14667) | Remove HashShuffleManager |  Major | Shuffle | Reynold Xin | Reynold Xin |
| [SPARK-14595](https://issues.apache.org/jira/browse/SPARK-14595) | Add inputMetrics to FileScanRDD |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-13681](https://issues.apache.org/jira/browse/SPARK-13681) | Reimplement CommitFailureTestRelationSuite |  Blocker | SQL | Michael Armbrust | Cheng Lian |
| [SPARK-12457](https://issues.apache.org/jira/browse/SPARK-12457) | Add ExpressionDescription to collection functions |  Major | SQL | Yin Huai | Xiao Li |
| [SPARK-14407](https://issues.apache.org/jira/browse/SPARK-14407) | Hide HadoopFsRelation related data source API to execution package |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-13419](https://issues.apache.org/jira/browse/SPARK-13419) | SubquerySuite should use checkAnswer rather than ScalaTest's assertResult |  Major | SQL | Reynold Xin | Luciano Resende |
| [SPARK-14704](https://issues.apache.org/jira/browse/SPARK-14704) | create accumulators in TaskMetrics |  Major | Spark Core | Wenchen Fan | Wenchen Fan |
| [SPARK-14555](https://issues.apache.org/jira/browse/SPARK-14555) | Python API for methods introduced for Structured Streaming |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-14720](https://issues.apache.org/jira/browse/SPARK-14720) | Move the rest of HiveContext to HiveSessionState |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-14678](https://issues.apache.org/jira/browse/SPARK-14678) | Add a file sink log to support versioning and compaction |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-14770](https://issues.apache.org/jira/browse/SPARK-14770) | Remove unused queries in hive module test resources |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14769](https://issues.apache.org/jira/browse/SPARK-14769) | Create built-in functionality for variable substitution |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14775](https://issues.apache.org/jira/browse/SPARK-14775) | Remove TestHiveSparkSession.rewritePaths |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14782](https://issues.apache.org/jira/browse/SPARK-14782) | Remove HiveConf dependency from HiveSqlAstBuilder |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14778](https://issues.apache.org/jira/browse/SPARK-14778) | Remove HiveSessionState.substitutor |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14792](https://issues.apache.org/jira/browse/SPARK-14792) | Move as many parsing rules as possible into SQL parser |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14794](https://issues.apache.org/jira/browse/SPARK-14794) | Don't pass analyze command into Hive |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14753](https://issues.apache.org/jira/browse/SPARK-14753) | remove internal flag in Accumulable |  Major | Spark Core | Wenchen Fan | Wenchen Fan |
| [SPARK-14795](https://issues.apache.org/jira/browse/SPARK-14795) | Remove the use of Hive's variable substitution |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14801](https://issues.apache.org/jira/browse/SPARK-14801) | Move MetastoreRelation to its own file |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14799](https://issues.apache.org/jira/browse/SPARK-14799) | Remove MetastoreRelation dependency from AnalyzeTable |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-13643](https://issues.apache.org/jira/browse/SPARK-13643) | Create SparkSession interface |  Major | SQL | Reynold Xin | Andrew Or |
| [SPARK-14798](https://issues.apache.org/jira/browse/SPARK-14798) | Move native command and script transformation parsing into SparkSqlAstBuilder |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14569](https://issues.apache.org/jira/browse/SPARK-14569) | Log instrumentation in KMeans |  Major | ML | Timothy Hunter | Xin Ren |
| [SPARK-14734](https://issues.apache.org/jira/browse/SPARK-14734) | Add conversions between mllib and ml Vector, Matrix types |  Major | ML, MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-14821](https://issues.apache.org/jira/browse/SPARK-14821) | Move analyze table parsing into SparkSqlAstBuilder |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14777](https://issues.apache.org/jira/browse/SPARK-14777) | Finally, merge HiveSqlAstBuilder and SparkSqlAstBuilder |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14824](https://issues.apache.org/jira/browse/SPARK-14824) | Rename object HiveContext to something else |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-14680](https://issues.apache.org/jira/browse/SPARK-14680) | Support all datatypes to use VectorizedHashmap in TungstenAggregate |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-14369](https://issues.apache.org/jira/browse/SPARK-14369) | Implement preferredLocations() for FileScanRDD |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-14835](https://issues.apache.org/jira/browse/SPARK-14835) | Remove MetastoreRelation dependency from SQLBuilder |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14826](https://issues.apache.org/jira/browse/SPARK-14826) | Remove HiveQueryExecution |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14609](https://issues.apache.org/jira/browse/SPARK-14609) | LOAD DATA |  Major | SQL | Yin Huai | Liang-Chi Hsieh |
| [SPARK-14841](https://issues.apache.org/jira/browse/SPARK-14841) | Move SQLBuilder into sql/core |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14832](https://issues.apache.org/jira/browse/SPARK-14832) | Refactor DataSource to ensure schema is inferred only once when creating a file stream |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-14807](https://issues.apache.org/jira/browse/SPARK-14807) | Create a hivecontext-compatibility module |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-14842](https://issues.apache.org/jira/browse/SPARK-14842) | Implement view creation in sql/core |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12148](https://issues.apache.org/jira/browse/SPARK-12148) | SparkR: rename DataFrame to SparkDataFrame |  Major | SparkR | Michael Lawrence | Felix Cheung |
| [SPARK-14873](https://issues.apache.org/jira/browse/SPARK-14873) | Java sampleByKey methods take ju.Map but with Scala Double values; results in type Object |  Minor | Java API, Spark Core | Sean Owen | Sean Owen |
| [SPARK-14872](https://issues.apache.org/jira/browse/SPARK-14872) | Restructure commands.scala |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14865](https://issues.apache.org/jira/browse/SPARK-14865) | When creating a view, we should verify both the input SQL and the generated SQL |  Critical | SQL | Yin Huai | Reynold Xin |
| [SPARK-14877](https://issues.apache.org/jira/browse/SPARK-14877) | Remove HiveMetastoreTypes class |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14833](https://issues.apache.org/jira/browse/SPARK-14833) | Refactor StreamTests to test for source fault-tolerance correctly. |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-14879](https://issues.apache.org/jira/browse/SPARK-14879) | Move CreateMetastoreDataSource and CreateMetastoreDataSourceAsSelect to sql/core |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-14876](https://issues.apache.org/jira/browse/SPARK-14876) | SparkSession should be case insensitive by default |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14885](https://issues.apache.org/jira/browse/SPARK-14885) | When creating a CatalogColumn, we should use catalogString of a DataType |  Minor | SQL | Yin Huai | Yin Huai |
| [SPARK-14744](https://issues.apache.org/jira/browse/SPARK-14744) | Put examples packaging on a diet |  Minor | Examples | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-10574](https://issues.apache.org/jira/browse/SPARK-10574) | HashingTF should use MurmurHash3 |  Major | MLlib | Simeon Simeonov | Yanbo Liang |
| [SPARK-14721](https://issues.apache.org/jira/browse/SPARK-14721) | Remove the HiveContext class |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-14312](https://issues.apache.org/jira/browse/SPARK-14312) | NaiveBayes model persistence in SparkR |  Major | ML, SparkR | Xiangrui Meng | Yanbo Liang |
| [SPARK-14828](https://issues.apache.org/jira/browse/SPARK-14828) | Start SparkSession in REPL instead of SQLContext |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-14888](https://issues.apache.org/jira/browse/SPARK-14888) | UnresolvedFunction should use FunctionIdentifier rather than just a string for function name |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14902](https://issues.apache.org/jira/browse/SPARK-14902) | Expose user-facing RuntimeConfig in SparkSession |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-14904](https://issues.apache.org/jira/browse/SPARK-14904) | Add back HiveContext in compatibility package |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-13962](https://issues.apache.org/jira/browse/SPARK-13962) | spark.ml Evaluators should support other numeric types for label |  Minor | ML | Nick Pentreath | Benjamin Fradet |
| [SPARK-14313](https://issues.apache.org/jira/browse/SPARK-14313) | AFTSurvivalRegression model persistence in SparkR |  Major | ML, SparkR | Xiangrui Meng | Yanbo Liang |
| [SPARK-14929](https://issues.apache.org/jira/browse/SPARK-14929) | Disable vectorized hashmap for wide schemas and high-precision decimals |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-14445](https://issues.apache.org/jira/browse/SPARK-14445) | Show columns/partitions |  Major | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-13477](https://issues.apache.org/jira/browse/SPARK-13477) | User-facing catalog API |  Major | SQL | Reynold Xin | Andrew Or |
| [SPARK-14913](https://issues.apache.org/jira/browse/SPARK-14913) | Simplify configuration API |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14944](https://issues.apache.org/jira/browse/SPARK-14944) | Remove HiveConf from HiveTableScanExec and HiveTableReader |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14943](https://issues.apache.org/jira/browse/SPARK-14943) | Remove HiveConf dependency from ScriptTransformation |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14130](https://issues.apache.org/jira/browse/SPARK-14130) | [Table related commands] Alter column |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-14949](https://issues.apache.org/jira/browse/SPARK-14949) | Remove HiveConf dependency from InsertIntoHiveTable |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-13945](https://issues.apache.org/jira/browse/SPARK-13945) | Enable native view flag by default |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-9656](https://issues.apache.org/jira/browse/SPARK-9656) | Add missing methods to linalg.distributed |  Major | MLlib, PySpark | Manoj Kumar | Mike Dusenberry |
| [SPARK-14954](https://issues.apache.org/jira/browse/SPARK-14954) | Add PARTITIONED BY and CLUSTERED BY clause for data source CTAS syntax |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-13436](https://issues.apache.org/jira/browse/SPARK-13436) | Add parameter drop to subsetting operator [ |  Major | SparkR | Oscar D. Lara Yejas | Oscar D. Lara Yejas |
| [SPARK-14934](https://issues.apache.org/jira/browse/SPARK-14934) | Slow JsonHadoopFsRelationSuite test: "SPARK-8406: Avoids name collision while writing files" |  Major | Build, Tests | Josh Rosen | Josh Rosen |
| [SPARK-14654](https://issues.apache.org/jira/browse/SPARK-14654) | New accumulator API |  Major | SQL | Reynold Xin | Wenchen Fan |
| [SPARK-14487](https://issues.apache.org/jira/browse/SPARK-14487) | User Defined Type registration without SQLUserDefinedType annotation |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-14935](https://issues.apache.org/jira/browse/SPARK-14935) | DistributedSuite "local-cluster format" shouldn't actually launch clusters |  Major | Build, Tests | Josh Rosen | Xin Ren |
| [SPARK-14945](https://issues.apache.org/jira/browse/SPARK-14945) | Python SparkSession API |  Major | PySpark, SQL | Andrew Or | Andrew Or |
| [SPARK-14852](https://issues.apache.org/jira/browse/SPARK-14852) | Update GeneralizedLinearRegressionSummary API |  Major | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-14991](https://issues.apache.org/jira/browse/SPARK-14991) | Remove HiveNativeCommand |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14994](https://issues.apache.org/jira/browse/SPARK-14994) | Remove execution hive from HiveSessionState |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14941](https://issues.apache.org/jira/browse/SPARK-14941) | Remove runtime HiveConf |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14511](https://issues.apache.org/jira/browse/SPARK-14511) | Publish our forked genjavadoc for 2.12.0-M4 or stop using a forked version |  Major | Build, Project Infra | Josh Rosen | Jakob Odersky |
| [SPARK-14571](https://issues.apache.org/jira/browse/SPARK-14571) | Log instrumentation in ALS |  Major | MLlib | Timothy Hunter | Miao Wang |
| [SPARK-14988](https://issues.apache.org/jira/browse/SPARK-14988) | Implement catalog and conf API in Python SparkSession |  Major | PySpark, SQL | Andrew Or | Andrew Or |
| [SPARK-14314](https://issues.apache.org/jira/browse/SPARK-14314) | K-means model persistence in SparkR |  Major | ML, SparkR | Xiangrui Meng | Gayathri Murali |
| [SPARK-14315](https://issues.apache.org/jira/browse/SPARK-14315) | GLMs model persistence in SparkR |  Major | ML, SparkR | Xiangrui Meng | Gayathri Murali |
| [SPARK-14984](https://issues.apache.org/jira/browse/SPARK-14984) | Update LinearRegression, LogisticRegression summary APIs |  Major | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-11940](https://issues.apache.org/jira/browse/SPARK-11940) | Python API for ml.clustering.LDA |  Major | ML, PySpark | Yanbo Liang | Jeff Zhang |
| [SPARK-15004](https://issues.apache.org/jira/browse/SPARK-15004) | Remove zookeeper and service discovery related code |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15013](https://issues.apache.org/jira/browse/SPARK-15013) | Remove hiveConf from HiveSessionState |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-14570](https://issues.apache.org/jira/browse/SPARK-14570) | Log instrumentation in Random forests |  Major | MLlib | Timothy Hunter | Benjamin Fradet |
| [SPARK-12919](https://issues.apache.org/jira/browse/SPARK-12919) | Implement dapply() on DataFrame in SparkR |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-15019](https://issues.apache.org/jira/browse/SPARK-15019) | Propagate all Spark Confs to HiveConf created in HiveClientImpl |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-15012](https://issues.apache.org/jira/browse/SPARK-15012) | Simplify configuration API further |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-14591](https://issues.apache.org/jira/browse/SPARK-14591) | Remove org.apache.spark.sql.catalyst.parser.DataTypeParser |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-13667](https://issues.apache.org/jira/browse/SPARK-13667) | Support for specifying custom date format for date and timestamp types |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-15028](https://issues.apache.org/jira/browse/SPARK-15028) | Remove Hive config override |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-14653](https://issues.apache.org/jira/browse/SPARK-14653) | Remove NumericParser and jackson dependency from mllib-local |  Major | Build, ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-15034](https://issues.apache.org/jira/browse/SPARK-15034) | Use the value of spark.sql.warehouse.dir as the warehouse location instead of using hive.metastore.warehouse.dir |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-15035](https://issues.apache.org/jira/browse/SPARK-15035) | SessionCatalog needs to set the location for default DB |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-15036](https://issues.apache.org/jira/browse/SPARK-15036) | When creating a database, we need to qualify its path |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-14143](https://issues.apache.org/jira/browse/SPARK-14143) | Options for parsing NaNs, Infinity and nulls for numeric types |  Major | SQL | Hossein Falaki | Hossein Falaki |
| [SPARK-13425](https://issues.apache.org/jira/browse/SPARK-13425) | Documentation for CSV datasource options |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-15049](https://issues.apache.org/jira/browse/SPARK-15049) | Rename NewAccumulator to AccumulatorV2 |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-14579](https://issues.apache.org/jira/browse/SPARK-14579) | Fix a race condition in StreamExecution.processAllAvailable |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-15054](https://issues.apache.org/jira/browse/SPARK-15054) | Deprecate old accumulator API |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15052](https://issues.apache.org/jira/browse/SPARK-15052) | Use builder pattern to create SparkSession |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15050](https://issues.apache.org/jira/browse/SPARK-15050) | Put CSV options as Python csv function parameters |  Major | SQL | Reynold Xin | Hyukjin Kwon |
| [SPARK-15077](https://issues.apache.org/jira/browse/SPARK-15077) | StreamExecution.awaitOffset may take too long because of thread starvation |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-15079](https://issues.apache.org/jira/browse/SPARK-15079) | Support average/count/sum in LongAccumulator/DoubleAccumulator |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15081](https://issues.apache.org/jira/browse/SPARK-15081) | Move AccumulatorV2 and subclasses into util package |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-14716](https://issues.apache.org/jira/browse/SPARK-14716) | Add partitioned parquet support file stream sink |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-14860](https://issues.apache.org/jira/browse/SPARK-14860) | Fix flaky test: o.a.s.sql.util.ContinuousQueryListenerSuite "event ordering" |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-15087](https://issues.apache.org/jira/browse/SPARK-15087) | Remove AccumulatorV2.localValue and keep only value |  Major | Spark Core | Reynold Xin | Sandeep Singh |
| [SPARK-15082](https://issues.apache.org/jira/browse/SPARK-15082) | Improve unit test coverage for AccumulatorV2 |  Major | Spark Core | Reynold Xin | Sandeep Singh |
| [SPARK-15073](https://issues.apache.org/jira/browse/SPARK-15073) | Make SparkSession constructors private |  Major | SQL | Reynold Xin | Andrew Or |
| [SPARK-15095](https://issues.apache.org/jira/browse/SPARK-15095) | Drop binary mode in ThriftServer |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-15102](https://issues.apache.org/jira/browse/SPARK-15102) | remove delegation token from ThriftServer |  Major | . | Davies Liu | Davies Liu |
| [SPARK-15084](https://issues.apache.org/jira/browse/SPARK-15084) | Use builder pattern to create SparkSession in PySpark |  Major | PySpark | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14414](https://issues.apache.org/jira/browse/SPARK-14414) | Make error messages consistent across DDLs |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-14237](https://issues.apache.org/jira/browse/SPARK-14237) | De-duplicate partition value appending logic in various buildReader() implementations |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-14127](https://issues.apache.org/jira/browse/SPARK-14127) | [Table related commands] Describe table |  Major | SQL | Yin Huai | Cheng Lian |
| [SPARK-15109](https://issues.apache.org/jira/browse/SPARK-15109) | Accept Dataset[\_] in joins |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15103](https://issues.apache.org/jira/browse/SPARK-15103) | Add support for batch jobs correctly inferring partitions from data written with file stream sink |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-15126](https://issues.apache.org/jira/browse/SPARK-15126) | RuntimeConfig.set should return Unit rather than RuntimeConfig itself |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12299](https://issues.apache.org/jira/browse/SPARK-12299) | Remove history serving functionality from standalone Master |  Major | Deploy | Andrew Or | Bryan Cutler |
| [SPARK-15031](https://issues.apache.org/jira/browse/SPARK-15031) | Use SparkSession in Scala/Python/Java example. |  Major | Examples | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14896](https://issues.apache.org/jira/browse/SPARK-14896) | Deprecate HiveContext in Python |  Critical | PySpark, SQL | Andrew Or | Andrew Or |
| [SPARK-6339](https://issues.apache.org/jira/browse/SPARK-6339) | Support creating temporary views with DDL |  Major | SQL | Hossein Falaki | Xiang Zhong |
| [SPARK-12154](https://issues.apache.org/jira/browse/SPARK-12154) | Upgrade to Jersey 2 |  Blocker | Build, Spark Core | Matt Cheah | Matt Cheah |
| [SPARK-15148](https://issues.apache.org/jira/browse/SPARK-15148) |  Upgrade Univocity library from 2.0.2 to 2.1.0 |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-15072](https://issues.apache.org/jira/browse/SPARK-15072) | Remove SparkSession.withHiveSupport |  Major | SQL | Reynold Xin | Sandeep Singh |
| [SPARK-15037](https://issues.apache.org/jira/browse/SPARK-15037) | Use SparkSession instead of SQLContext in testsuites |  Major | SQL, Tests | Dongjoon Hyun | Sandeep Singh |
| [SPARK-14603](https://issues.apache.org/jira/browse/SPARK-14603) | SessionCatalog needs to check if a metadata operation is valid |  Critical | SQL | Yin Huai | Xiao Li |
| [SPARK-14936](https://issues.apache.org/jira/browse/SPARK-14936) | FlumePollingStreamSuite is slow |  Major | Build, Tests | Josh Rosen | Xin Ren |
| [SPARK-14837](https://issues.apache.org/jira/browse/SPARK-14837) | Add support in file stream source for reading new files added to subdirs |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-15261](https://issues.apache.org/jira/browse/SPARK-15261) | Remove experimental tag from DataFrameReader and DataFrameWriter |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15085](https://issues.apache.org/jira/browse/SPARK-15085) | Rename current streaming-kafka artifact to include kafka version |  Major | DStreams | Cody Koeninger | Cody Koeninger |
| [SPARK-12200](https://issues.apache.org/jira/browse/SPARK-12200) | pyspark.sql.types.Row should implement \_\_contains\_\_ |  Minor | PySpark, SQL | Maciej Bryński | Maciej Bryński |
| [SPARK-15278](https://issues.apache.org/jira/browse/SPARK-15278) | Remove experimental tag from Python DataFrame |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15080](https://issues.apache.org/jira/browse/SPARK-15080) | Break copyAndReset into copy and reset |  Major | Spark Core | Reynold Xin | Sandeep Singh |
| [SPARK-14346](https://issues.apache.org/jira/browse/SPARK-14346) | SHOW CREATE TABLE command (Native) |  Major | SQL | Xin Wu | Cheng Lian |
| [SPARK-15202](https://issues.apache.org/jira/browse/SPARK-15202) | add dapplyCollect() method for DataFrame in SparkR |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-13866](https://issues.apache.org/jira/browse/SPARK-13866) | Handle decimal type in CSV inference |  Major | SQL | Hossein Falaki | Hyukjin Kwon |
| [SPARK-13961](https://issues.apache.org/jira/browse/SPARK-13961) | spark.ml ChiSqSelector and RFormula should support other numeric types for label |  Minor | ML | Nick Pentreath | Benjamin Fradet |
| [SPARK-15253](https://issues.apache.org/jira/browse/SPARK-15253) | For a data source table, Describe table needs to handle spark.sql.sources.schema |  Major | SQL | Yin Huai | Xiang Zhong |
| [SPARK-14814](https://issues.apache.org/jira/browse/SPARK-14814) | ML 2.0 QA: API: Java compatibility, docs |  Major | Documentation, Java API, ML, MLlib | Joseph K. Bradley | yuhao yang |
| [SPARK-14906](https://issues.apache.org/jira/browse/SPARK-14906) | Copy pyspark.mllib.linalg to pyspark.ml.linalg |  Major | ML, PySpark | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-14615](https://issues.apache.org/jira/browse/SPARK-14615) | Use the new ML Vector and Matrix in the ML pipeline based algorithms |  Blocker | Build, ML | DB Tsai | DB Tsai |
| [SPARK-14121](https://issues.apache.org/jira/browse/SPARK-14121) | Show commands (Native) |  Major | SQL | Yin Huai | Dilip Biswal |
| [SPARK-14613](https://issues.apache.org/jira/browse/SPARK-14613) | Add @Since into the matrix and vector classes in spark-mllib-local |  Major | Build, ML | DB Tsai | Pravin Gadakh |
| [SPARK-15411](https://issues.apache.org/jira/browse/SPARK-15411) | Add @since to ml.stat.MultivariateOnlineSummarizer.scala |  Major | ML | DB Tsai | DB Tsai |
| [SPARK-15375](https://issues.apache.org/jira/browse/SPARK-15375) | Add ConsoleSink for structure streaming to display the dataframe on the fly |  Minor | Structured Streaming | Saisai Shao | Saisai Shao |
| [SPARK-15075](https://issues.apache.org/jira/browse/SPARK-15075) | Cleanup dependencies between SQLContext and SparkSession |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15435](https://issues.apache.org/jira/browse/SPARK-15435) | Append Command to all commands |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15424](https://issues.apache.org/jira/browse/SPARK-15424) | Revert SPARK-14807 Create a hivecontext-compatibility module |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15452](https://issues.apache.org/jira/browse/SPARK-15452) | Mark aggregator API as experimental |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15330](https://issues.apache.org/jira/browse/SPARK-15330) | Reset Command |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-15459](https://issues.apache.org/jira/browse/SPARK-15459) | Make Range logical and physical explain consistent |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15428](https://issues.apache.org/jira/browse/SPARK-15428) | Disable support for multiple streaming aggregations |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-15425](https://issues.apache.org/jira/browse/SPARK-15425) | Disallow cartesian joins by default |  Major | SQL | Reynold Xin | Sameer Agarwal |
| [SPARK-15458](https://issues.apache.org/jira/browse/SPARK-15458) | Disable schema inference for streaming datasets on file streams |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-15518](https://issues.apache.org/jira/browse/SPARK-15518) | Rename various scheduler backend for consistency |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-15493](https://issues.apache.org/jira/browse/SPARK-15493) | Allow setting the quoteEscapingEnabled flag when writing CSV |  Major | SQL | Jurriaan Pruis | Jurriaan Pruis |
| [SPARK-15533](https://issues.apache.org/jira/browse/SPARK-15533) | Deprecate Dataset.explode |  Major | SQL | Reynold Xin | Sameer Agarwal |
| [SPARK-15543](https://issues.apache.org/jira/browse/SPARK-15543) | Rename DefaultSources to make them more self-describing |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-10903](https://issues.apache.org/jira/browse/SPARK-10903) | Simplify SQLContext method signatures and use a singleton |  Minor | SparkR | Narine Kokhlikyan | Felix Cheung |
| [SPARK-15520](https://issues.apache.org/jira/browse/SPARK-15520) | SparkSession builder in python should also allow overriding confs of existing sessions |  Major | SQL | Eric Liang | Eric Liang |
| [SPARK-15552](https://issues.apache.org/jira/browse/SPARK-15552) | Remove unnecessary private[sql] methods in SparkSession |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15599](https://issues.apache.org/jira/browse/SPARK-15599) | Document createDataset functions in SparkSession |  Major | Documentation, SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-15186](https://issues.apache.org/jira/browse/SPARK-15186) | Add user guide for Generalized Linear Regression. |  Minor | Documentation, ML | Seth Hendrickson | Seth Hendrickson |
| [SPARK-11959](https://issues.apache.org/jira/browse/SPARK-11959) | Document normal equation solver for ordinary least squares in user guide |  Minor | Documentation, ML | Joseph K. Bradley | Yanbo Liang |
| [SPARK-15008](https://issues.apache.org/jira/browse/SPARK-15008) | Python ML persistence integration test: OneVsRest |  Minor | ML, PySpark | Joseph K. Bradley | Xusen Yin |
| [SPARK-15633](https://issues.apache.org/jira/browse/SPARK-15633) | Make package name for Java tests consistent |  Minor | Java API | Reynold Xin | Reynold Xin |
| [SPARK-15597](https://issues.apache.org/jira/browse/SPARK-15597) | Add SparkSession.emptyDataset |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15553](https://issues.apache.org/jira/browse/SPARK-15553) | Dataset.createTempView should use CreateViewCommand |  Major | SQL | Reynold Xin | Liang-Chi Hsieh |
| [SPARK-15636](https://issues.apache.org/jira/browse/SPARK-15636) | Make aggregate expressions more concise in explain |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15112](https://issues.apache.org/jira/browse/SPARK-15112) | Dataset filter returns garbage |  Blocker | SQL | Reynold Xin | Cheng Lian |
| [SPARK-15638](https://issues.apache.org/jira/browse/SPARK-15638) | Audit Dataset, SparkSession, and SQLContext functions and documentations |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15551](https://issues.apache.org/jira/browse/SPARK-15551) | Scaladoc for KeyValueGroupedDataset points to old method |  Trivial | Documentation, SQL | holdenk | Reynold Xin |
| [SPARK-15658](https://issues.apache.org/jira/browse/SPARK-15658) | Analysis exception if Dataset.map returns UDT object |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-15662](https://issues.apache.org/jira/browse/SPARK-15662) | Add since annotation for classes in sql.catalog |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15686](https://issues.apache.org/jira/browse/SPARK-15686) | Move user-facing structured streaming classes into sql.streaming |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15441](https://issues.apache.org/jira/browse/SPARK-15441) | dataset outer join seems to return incorrect result |  Critical | SQL | Reynold Xin | Wenchen Fan |
| [SPARK-15208](https://issues.apache.org/jira/browse/SPARK-15208) | Update spark examples with AccumulatorV2 |  Minor | Documentation, Examples, Spark Core | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [SPARK-15728](https://issues.apache.org/jira/browse/SPARK-15728) | Rename aggregate operators: HashAggregate and SortAggregate |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15742](https://issues.apache.org/jira/browse/SPARK-15742) | Reduce collections allocations in Catalyst tree transformation methods |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-15547](https://issues.apache.org/jira/browse/SPARK-15547) | Encoder validation is too strict for inner nested structs |  Major | SQL | Cheng Lian | Wenchen Fan |
| [SPARK-15140](https://issues.apache.org/jira/browse/SPARK-15140) | encoder should make sure input object is not null |  Major | . | Wenchen Fan | Wenchen Fan |
| [SPARK-15762](https://issues.apache.org/jira/browse/SPARK-15762) | Cache Metadata.hashCode and use a singleton for Metadata.empty |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-15723](https://issues.apache.org/jira/browse/SPARK-15723) | SimpleDateParamSuite test is locale-fragile and relies on deprecated short TZ name |  Minor | Spark Core | Brett Randall | Brett Randall |
| [SPARK-15657](https://issues.apache.org/jira/browse/SPARK-15657) | RowEncoder should validate the data type of input object |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-15748](https://issues.apache.org/jira/browse/SPARK-15748) | Replace inefficient foldLeft() call in PartitionStatistics |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-15764](https://issues.apache.org/jira/browse/SPARK-15764) | Replace n^2 loop in BindReferences |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-15632](https://issues.apache.org/jira/browse/SPARK-15632) | Dataset typed filter operation changes query plan schema |  Major | SQL | Cheng Lian | Xiang Zhong |
| [SPARK-15580](https://issues.apache.org/jira/browse/SPARK-15580) | Add ContinuousQueryInfo to make ContinuousQueryListener events serializable |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-15517](https://issues.apache.org/jira/browse/SPARK-15517) | Add support for complete output mode |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-15794](https://issues.apache.org/jira/browse/SPARK-15794) | Should truncate toString() of very wide schemas |  Major | SQL | Eric Liang | Eric Liang |
| [SPARK-15853](https://issues.apache.org/jira/browse/SPARK-15853) | HDFSMetadataLog.get leaks the input stream |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-15593](https://issues.apache.org/jira/browse/SPARK-15593) | Add DataFrameWriter.foreach to allow the user consuming data in ContinuousQuery |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-15812](https://issues.apache.org/jira/browse/SPARK-15812) | Allow sorting on aggregated streaming dataframe when the output mode is Complete |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-15866](https://issues.apache.org/jira/browse/SPARK-15866) | Rename listAccumulator collectionAccumulator |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-15881](https://issues.apache.org/jira/browse/SPARK-15881) | Update microbenchmark results |  Major | SQL | Eric Liang | Eric Liang |
| [SPARK-15856](https://issues.apache.org/jira/browse/SPARK-15856) | Revert API breaking changes made in SQLContext.range |  Major | SQL | Cheng Lian | Wenchen Fan |
| [SPARK-15086](https://issues.apache.org/jira/browse/SPARK-15086) | Update Java API once the Scala one is finalized |  Blocker | Spark Core | Reynold Xin | Sean Owen |
| [SPARK-15876](https://issues.apache.org/jira/browse/SPARK-15876) | Remove support for "zk://" master URL |  Trivial | Mesos | Jacek Laskowski | Sean Owen |
| [SPARK-15898](https://issues.apache.org/jira/browse/SPARK-15898) | DataFrameReader.text should return DataFrame |  Major | SQL | Reynold Xin | Wenchen Fan |
| [SPARK-15889](https://issues.apache.org/jira/browse/SPARK-15889) | Add a unique id to ContinuousQuery |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-15925](https://issues.apache.org/jira/browse/SPARK-15925) | Replaces registerTempTable with createOrReplaceTempView in SparkR |  Major | SparkR, SQL | Cheng Lian | Cheng Lian |
| [SPARK-15663](https://issues.apache.org/jira/browse/SPARK-15663) | SparkSession.catalog.listFunctions shouldn't include the list of built-in functions |  Major | SQL | Reynold Xin | Sandeep Singh |
| [SPARK-15933](https://issues.apache.org/jira/browse/SPARK-15933) | Refactor reader-writer interface for streaming DFs to use DataStreamReader/Writer |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-15960](https://issues.apache.org/jira/browse/SPARK-15960) | Audit new SQL confs |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-15953](https://issues.apache.org/jira/browse/SPARK-15953) | Renamed ContinuousQuery to StreamingQuery for simplicity |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-15935](https://issues.apache.org/jira/browse/SPARK-15935) | Enable test for sql/streaming.py and fix these tests |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-15979](https://issues.apache.org/jira/browse/SPARK-15979) | Rename various Parquet support classes |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12922](https://issues.apache.org/jira/browse/SPARK-12922) | Implement gapply() on DataFrame in SparkR |  Major | SparkR | Sun Rui | Narine Kokhlikyan |
| [SPARK-15981](https://issues.apache.org/jira/browse/SPARK-15981) | Fix bug in python DataStreamReader |  Blocker | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-16014](https://issues.apache.org/jira/browse/SPARK-16014) | Rename optimizer rules to be more consistent |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-16033](https://issues.apache.org/jira/browse/SPARK-16033) | DataFrameWriter.partitionBy() can't be used together with DataFrameWriter.insertInto() |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-15946](https://issues.apache.org/jira/browse/SPARK-15946) | Wrap the conversion utils in Python |  Major | ML, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-15159](https://issues.apache.org/jira/browse/SPARK-15159) | SparkSession R API |  Blocker | SparkR | Sun Rui | Felix Cheung |
| [SPARK-16020](https://issues.apache.org/jira/browse/SPARK-16020) | Fix complete mode aggregation with console sink |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-16036](https://issues.apache.org/jira/browse/SPARK-16036) | better error message if the number of columns in SELECT clause doesn't match the table schema |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-16037](https://issues.apache.org/jira/browse/SPARK-16037) | use by-position resolution when insert into hive table |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-16034](https://issues.apache.org/jira/browse/SPARK-16034) | Checks the partition columns when calling dataFrame.write.mode("append").saveAsTable |  Major | . | Sean Zhong | Sean Zhong |
| [SPARK-15613](https://issues.apache.org/jira/browse/SPARK-15613) | Incorrect days to millis conversion |  Critical | SQL | Dmitry Bushev | Apache Spark |
| [SPARK-16030](https://issues.apache.org/jira/browse/SPARK-16030) | Allow specifying static partitions in an INSERT statement for data source tables |  Critical | SQL | Yin Huai | Yin Huai |
| [SPARK-16050](https://issues.apache.org/jira/browse/SPARK-16050) | Flaky Test: Complete aggregation with Console sink |  Critical | Structured Streaming | Burak Yavuz | Shixiong Zhu |
| [SPARK-13792](https://issues.apache.org/jira/browse/SPARK-13792) | Limit logging of bad records |  Major | SQL | Hossein Falaki | Reynold Xin |
| [SPARK-10258](https://issues.apache.org/jira/browse/SPARK-10258) | Add @Since annotation to ml.feature |  Minor | Documentation, ML | Xiangrui Meng | Martin Brown |
| [SPARK-16109](https://issues.apache.org/jira/browse/SPARK-16109) | Separate out statfunctions in generated R doc |  Major | SparkR | Shivaram Venkataraman | Felix Cheung |
| [SPARK-16002](https://issues.apache.org/jira/browse/SPARK-16002) | Sleep when no new data arrives to avoid 100% CPU usage |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-15164](https://issues.apache.org/jira/browse/SPARK-15164) | Mark classification algorithms as experimental where marked so in scala |  Trivial | ML, PySpark | holdenk | holdenk |
| [SPARK-16107](https://issues.apache.org/jira/browse/SPARK-16107) | Group GLM-related methods in generated doc |  Major | Documentation, SparkR | Xiangrui Meng | Junyang Qian |
| [SPARK-15672](https://issues.apache.org/jira/browse/SPARK-15672) | R programming guide update |  Blocker | SparkR | Shivaram Venkataraman | Kai Jiang |
| [SPARK-16116](https://issues.apache.org/jira/browse/SPARK-16116) | ConsoleSink should not require checkpointLocation |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-15443](https://issues.apache.org/jira/browse/SPARK-15443) | Properly explain the streaming queries |  Minor | Structured Streaming | Saisai Shao | Shixiong Zhu |
| [SPARK-16142](https://issues.apache.org/jira/browse/SPARK-16142) | Group naive Bayes methods in generated doc |  Major | Documentation, MLlib, SparkR | Xiangrui Meng | Xiangrui Meng |
| [SPARK-16187](https://issues.apache.org/jira/browse/SPARK-16187) | Implement util method for ML Matrix conversion in scala/java |  Major | ML | yuhao yang | yuhao yang |
| [SPARK-16143](https://issues.apache.org/jira/browse/SPARK-16143) | Group survival analysis methods in generated doc |  Major | Documentation, MLlib, SparkR | Xiangrui Meng | Junyang Qian |
| [SPARK-16242](https://issues.apache.org/jira/browse/SPARK-16242) | Wrap the Matrix conversion utils in Python |  Minor | ML, MLlib, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-16114](https://issues.apache.org/jira/browse/SPARK-16114) | Add network word count example |  Major | Structured Streaming | James Thomas | James Thomas |
| [SPARK-16271](https://issues.apache.org/jira/browse/SPARK-16271) | Implement Hive's UDFXPathUtil |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-16266](https://issues.apache.org/jira/browse/SPARK-16266) | Move python DataStreamReader/Writer from pyspark.sql to pyspark.sql.streaming package |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-16261](https://issues.apache.org/jira/browse/SPARK-16261) | Fix Incorrect appNames in PySpark ML Examples |  Trivial | Examples, ML, PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-16140](https://issues.apache.org/jira/browse/SPARK-16140) | Group k-means method in generated doc |  Minor | Documentation, MLlib, SparkR | Xiangrui Meng | Xin Ren |
| [SPARK-16274](https://issues.apache.org/jira/browse/SPARK-16274) | Implement xpath\_boolean |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-16294](https://issues.apache.org/jira/browse/SPARK-16294) | Labelling support for the include\_example Jekyll plugin |  Major | Documentation | Cheng Lian | Cheng Lian |
| [SPARK-16256](https://issues.apache.org/jira/browse/SPARK-16256) | Add Structured Streaming Programming Guide |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-16289](https://issues.apache.org/jira/browse/SPARK-16289) | Implement posexplode table generating function |  Major | SQL | Reynold Xin | Dongjoon Hyun |
| [SPARK-16336](https://issues.apache.org/jira/browse/SPARK-16336) | Suggest doing table refresh when encountering FileNotFoundException at runtime |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-16276](https://issues.apache.org/jira/browse/SPARK-16276) | Implement elt SQL function |  Major | SQL | Reynold Xin | Peter Lee |
| [SPARK-16328](https://issues.apache.org/jira/browse/SPARK-16328) | Implement conversion utility functions for single instances in Python |  Major | ML, MLlib, PySpark | Nick Pentreath | Nick Pentreath |
| [SPARK-16278](https://issues.apache.org/jira/browse/SPARK-16278) | Implement map\_keys SQL function |  Major | SQL | Reynold Xin | Dongjoon Hyun |
| [SPARK-16279](https://issues.apache.org/jira/browse/SPARK-16279) | Implement map\_values SQL function |  Major | SQL | Reynold Xin | Dongjoon Hyun |
| [SPARK-16288](https://issues.apache.org/jira/browse/SPARK-16288) | Implement inline table generating function |  Major | SQL | Reynold Xin | Dongjoon Hyun |
| [SPARK-14815](https://issues.apache.org/jira/browse/SPARK-14815) | ML, Graph, R 2.0 QA: Update user guide for new features & APIs |  Blocker | Documentation, GraphX, ML, MLlib, SparkR | Joseph K. Bradley | yuhao yang |
| [SPARK-16337](https://issues.apache.org/jira/browse/SPARK-16337) | Metadata refresh should work on temporary views |  Major | SQL | Peter Lee | Reynold Xin |
| [SPARK-14811](https://issues.apache.org/jira/browse/SPARK-14811) | ML, Graph 2.0 QA: API: New Scala APIs, docs |  Blocker | Documentation, GraphX, ML, MLlib | Joseph K. Bradley | Yanbo Liang |
| [SPARK-16359](https://issues.apache.org/jira/browse/SPARK-16359) | unidoc workaround for multiple kafka versions |  Major | DStreams | Cody Koeninger | Cody Koeninger |
| [SPARK-16286](https://issues.apache.org/jira/browse/SPARK-16286) | Implement stack table generating function |  Major | SQL | Reynold Xin | Dongjoon Hyun |
| [SPARK-16430](https://issues.apache.org/jira/browse/SPARK-16430) | Add an option in file stream source to read 1 file at a time |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-16285](https://issues.apache.org/jira/browse/SPARK-16285) | Implement sentences SQL function |  Major | SQL | Reynold Xin | Dongjoon Hyun |
| [SPARK-13638](https://issues.apache.org/jira/browse/SPARK-13638) | Support for saving with a quote mode |  Minor | SQL | Hyukjin Kwon | Jurriaan Pruis |
| [SPARK-16281](https://issues.apache.org/jira/browse/SPARK-16281) | Implement parse\_url SQL function |  Major | SQL | Reynold Xin | Jian Wu |
| [SPARK-11857](https://issues.apache.org/jira/browse/SPARK-11857) | Remove Mesos fine-grained mode subject to discussions |  Major | Mesos | Reynold Xin | Michael Gummelt |
| [SPARK-16318](https://issues.apache.org/jira/browse/SPARK-16318) | xpath\_int, xpath\_short, xpath\_long, xpath\_float, xpath\_double, xpath\_string, and xpath |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-16381](https://issues.apache.org/jira/browse/SPARK-16381) | Update SQL examples and programming guide for R language binding |  Major | Documentation, Examples | Cheng Lian | Xin Ren |
| [SPARK-16144](https://issues.apache.org/jira/browse/SPARK-16144) | Add a separate Rd for ML generic methods: read.ml, write.ml, summary, predict |  Major | Documentation, MLlib, SparkR | Xiangrui Meng | Yanbo Liang |
| [SPARK-16488](https://issues.apache.org/jira/browse/SPARK-16488) | Codegen variable namespace collision for pmod and partitionBy |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-16491](https://issues.apache.org/jira/browse/SPARK-16491) | Crc32 should use different variable names (not "checksum") |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-16284](https://issues.apache.org/jira/browse/SPARK-16284) | Implement reflect and java\_method SQL function |  Major | SQL | Reynold Xin | Peter Lee |
| [SPARK-16514](https://issues.apache.org/jira/browse/SPARK-16514) | RegexExtract and RegexReplace crash on non-nullable input |  Critical | SQL | Eric Liang | Eric Liang |
| [SPARK-16303](https://issues.apache.org/jira/browse/SPARK-16303) | Update SQL examples and programming guide for Scala and Java language bindings |  Major | Documentation, Examples | Cheng Lian | Anton Okolnychyi |
| [SPARK-14812](https://issues.apache.org/jira/browse/SPARK-14812) | ML, Graph 2.0 QA: API: Experimental, DeveloperApi, final, sealed audit |  Blocker | Documentation, GraphX, ML, MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-16485](https://issues.apache.org/jira/browse/SPARK-16485) | Additional fixes to Mllib 2.0 documentation |  Major | Documentation, GraphX, ML, MLlib, SparkR | Timothy Hunter | Joseph K. Bradley |
| [SPARK-16509](https://issues.apache.org/jira/browse/SPARK-16509) | Rename window.partitionBy and window.orderBy |  Major | SparkR | Shivaram Venkataraman | Sun Rui |
| [SPARK-16507](https://issues.apache.org/jira/browse/SPARK-16507) | Add CRAN checks to SparkR |  Major | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-16590](https://issues.apache.org/jira/browse/SPARK-16590) | Improve LogicalPlanToSQLSuite to check generated SQL directly |  Major | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14816](https://issues.apache.org/jira/browse/SPARK-14816) | Update MLlib, GraphX, SparkR websites for 2.0 |  Critical | Documentation, GraphX, ML, MLlib, SparkR | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-14817](https://issues.apache.org/jira/browse/SPARK-14817) | ML, Graph, R 2.0 QA: Programming guide update and migration guide |  Critical | Documentation, GraphX, ML, MLlib, SparkR | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-15702](https://issues.apache.org/jira/browse/SPARK-15702) | Update document programming-guide accumulator section |  Major | Documentation, Spark Core | Weichen Xu | Weichen Xu |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-11476](https://issues.apache.org/jira/browse/SPARK-11476) | Incorrect function referred to in MLib Random data generation documentation |  Minor | Documentation | Jason Blochowiak | Sean Owen |
| [SPARK-12093](https://issues.apache.org/jira/browse/SPARK-12093) | Fix the error of comment in DDLParser |  Trivial | Documentation | Yadong Qi | Yadong Qi |
| [SPARK-12159](https://issues.apache.org/jira/browse/SPARK-12159) | Add user guide section for IndexToString transformer |  Minor | ML | Joseph K. Bradley | Benjamin Fradet |
| [SPARK-12211](https://issues.apache.org/jira/browse/SPARK-12211) | Incorrect version number in graphx doc for migration from 1.1 |  Minor | Documentation, GraphX | Andrew Ray | Andrew Ray |
| [SPARK-12217](https://issues.apache.org/jira/browse/SPARK-12217) | Document invalid handling for StringIndexer |  Minor | ML | Benjamin Fradet | Benjamin Fradet |
| [SPARK-12351](https://issues.apache.org/jira/browse/SPARK-12351) | Add documentation of submitting Mesos jobs with cluster mode |  Major | . | Timothy Chen | Timothy Chen |
| [SPARK-12286](https://issues.apache.org/jira/browse/SPARK-12286) | Support UnsafeRow in all SparkPlan (if possible) |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12570](https://issues.apache.org/jira/browse/SPARK-12570) | DecisionTreeRegressor: provide variance of prediction: user guide update |  Minor | Documentation, ML | Joseph K. Bradley | Yanbo Liang |
| [SPARK-12507](https://issues.apache.org/jira/browse/SPARK-12507) | Expose closeFileAfterWrite and allowBatching configurations for Streaming |  Minor | Documentation, DStreams | Shixiong Zhu | Apache Spark |
| [SPARK-12758](https://issues.apache.org/jira/browse/SPARK-12758) | Add note to Spark SQL Migration section about SPARK-11724 |  Minor | SQL | Brandon Bradley | Brandon Bradley |
| [SPARK-12703](https://issues.apache.org/jira/browse/SPARK-12703) | Spark KMeans Documentation Python Api |  Minor | MLlib | Anton | Joseph K. Bradley |
| [SPARK-9571](https://issues.apache.org/jira/browse/SPARK-9571) | Improve expression function coverage |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12722](https://issues.apache.org/jira/browse/SPARK-12722) | Typo in Spark Pipeline example |  Trivial | Documentation | Tom Chan | Jeff Lam |
| [SPARK-12814](https://issues.apache.org/jira/browse/SPARK-12814) | Add deploy instructions for Python in flume integration doc |  Major | Documentation | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12894](https://issues.apache.org/jira/browse/SPARK-12894) | Add deploy instructions for Python in Kinesis integration doc |  Major | Documentation | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12786](https://issues.apache.org/jira/browse/SPARK-12786) | Actor demo does not demonstrate usable code |  Minor | DStreams | Brian London | Tathagata Das |
| [SPARK-5293](https://issues.apache.org/jira/browse/SPARK-5293) | Enable Spark user applications to use different versions of Akka |  Major | Spark Core | Reynold Xin | Shixiong Zhu |
| [SPARK-12983](https://issues.apache.org/jira/browse/SPARK-12983) | Correct metrics.properties.template |  Minor | Documentation, Spark Core | Benjamin Fradet | Benjamin Fradet |
| [SPARK-13214](https://issues.apache.org/jira/browse/SPARK-13214) | Fix dynamic allocation docs |  Trivial | Documentation | Bill Chambers | Bill Chambers |
| [SPARK-13040](https://issues.apache.org/jira/browse/SPARK-13040) | JDBC using SPARK\_CLASSPATH is deprecated but is the only way documented |  Minor | Documentation, Examples | Sebastián Ramírez | Sebastián Ramírez |
| [SPARK-13274](https://issues.apache.org/jira/browse/SPARK-13274) | Fix Aggregator Links on GroupedDataset Scala API |  Trivial | Documentation | Raela Wang | Raela Wang |
| [SPARK-13350](https://issues.apache.org/jira/browse/SPARK-13350) | Configuration documentation incorrectly states that PYSPARK\_PYTHON's default is "python" |  Trivial | Documentation | Christopher Aycock | Christopher Aycock |
| [SPARK-13380](https://issues.apache.org/jira/browse/SPARK-13380) | Document Rand(seed) and Randn(seed) Return Indeterministic Results When Data Partitions are not fixed |  Minor | SQL | Xiao Li | Xiao Li |
| [SPARK-13439](https://issues.apache.org/jira/browse/SPARK-13439) | Document that spark.mesos.uris is comma-separated |  Trivial | Mesos | Michael Gummelt | Michael Gummelt |
| [SPARK-13507](https://issues.apache.org/jira/browse/SPARK-13507) | Documentation for compression options for CSV, JSON and TEXT data sources |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-9999](https://issues.apache.org/jira/browse/SPARK-9999) | Dataset API on top of Catalyst/DataFrame |  Major | SQL | Reynold Xin | Michael Armbrust |
| [SPARK-11157](https://issues.apache.org/jira/browse/SPARK-11157) | Allow Spark to be built without assemblies |  Major | Build, Spark Core, YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11416](https://issues.apache.org/jira/browse/SPARK-11416) | Upgrade kryo package to version 3.0 |  Major | Build | Hitoshi Ozawa | Josh Rosen |
| [SPARK-14498](https://issues.apache.org/jira/browse/SPARK-14498) | Various cleanups for ML documentation |  Minor | Documentation, ML, PySpark, SQL | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-6725](https://issues.apache.org/jira/browse/SPARK-6725) | Model export/import for Pipeline API (Scala) |  Critical | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-13089](https://issues.apache.org/jira/browse/SPARK-13089) | spark.ml Naive Bayes user guide |  Minor | Documentation, ML | Joseph K. Bradley | yuhao yang |
| [SPARK-14572](https://issues.apache.org/jira/browse/SPARK-14572) | Update Config Doc to specify -Xms in extraJavaOptions |  Trivial | Documentation | Dhruve Ashar | Dhruve Ashar |
| [SPARK-14618](https://issues.apache.org/jira/browse/SPARK-14618) | RegressionEvaluator doc out of date |  Minor | Documentation, ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-11939](https://issues.apache.org/jira/browse/SPARK-11939) | PySpark support model export/import for Pipeline API |  Critical | ML, PySpark | Yanbo Liang | Joseph K. Bradley |
| [SPARK-14515](https://issues.apache.org/jira/browse/SPARK-14515) | Add python example for ChiSqSelector |  Minor | Documentation, ML, PySpark | zhengruifeng | zhengruifeng |
| [SPARK-14635](https://issues.apache.org/jira/browse/SPARK-14635) | Documentation and Examples for TF-IDF only refer to HashingTF |  Minor | ML | Nick Pentreath | yuhao yang |
| [SPARK-14742](https://issues.apache.org/jira/browse/SPARK-14742) | Redirect spark-ec2 doc to new location |  Trivial | Documentation, EC2 | Nicholas Chammas | Sean Owen |
| [SPARK-14478](https://issues.apache.org/jira/browse/SPARK-14478) | Should StandardScaler use biased variance to scale? |  Major | ML, MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-11337](https://issues.apache.org/jira/browse/SPARK-11337) | Make example code in user guide testable |  Critical | Documentation | Xiangrui Meng | Xusen Yin |
| [SPARK-14937](https://issues.apache.org/jira/browse/SPARK-14937) | spark.ml LogisticRegression sqlCtx in scala is inconsistent with java and python |  Trivial | ML | Miao Wang | Miao Wang |
| [SPARK-14311](https://issues.apache.org/jira/browse/SPARK-14311) | Model persistence in SparkR 2.0 |  Major | ML, SparkR | Xiangrui Meng | Xiangrui Meng |
| [SPARK-12540](https://issues.apache.org/jira/browse/SPARK-12540) | Support all TPCDS queries |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-15223](https://issues.apache.org/jira/browse/SPARK-15223) | spark.executor.logs.rolling.maxSize wrongly referred to as spark.executor.logs.rolling.size.maxBytes |  Minor | Documentation | Philipp Hoffmann | Philipp Hoffmann |
| [SPARK-13382](https://issues.apache.org/jira/browse/SPARK-13382) | Update PySpark testing notes |  Trivial | Documentation, PySpark | holdenk | holdenk |
| [SPARK-15141](https://issues.apache.org/jira/browse/SPARK-15141) | Add python example for OneVsRest |  Major | Documentation | zhengruifeng | zhengruifeng |
| [SPARK-15149](https://issues.apache.org/jira/browse/SPARK-15149) | Include ml.kmeans python example |  Major | Documentation | zhengruifeng | zhengruifeng |
| [SPARK-15150](https://issues.apache.org/jira/browse/SPARK-15150) | Add python example for LDA |  Major | Documentation | zhengruifeng | zhengruifeng |
| [SPARK-12972](https://issues.apache.org/jira/browse/SPARK-12972) | Update org.apache.httpcomponents.httpclient, commons-io |  Minor | Spark Core | Brandon Bradley | Sean Owen |
| [SPARK-14434](https://issues.apache.org/jira/browse/SPARK-14434) | User guide doc and examples for GaussianMixture in spark.ml |  Major | Documentation, ML | Joseph K. Bradley | Miao Wang |
| [SPARK-15101](https://issues.apache.org/jira/browse/SPARK-15101) | Audit: ml.clustering and ml.recommendation |  Major | Documentation, ML | Joseph K. Bradley | zhengruifeng |
| [SPARK-15396](https://issues.apache.org/jira/browse/SPARK-15396) | [Spark] [SQL] [DOC] It can't connect hive metastore database |  Critical | SQL | Yi Zhou | Xiao Li |
| [SPARK-15485](https://issues.apache.org/jira/browse/SPARK-15485) | Spark SQL Configuration |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-12795](https://issues.apache.org/jira/browse/SPARK-12795) | Whole stage codegen |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-15502](https://issues.apache.org/jira/browse/SPARK-15502) | Add note in ML ALS docs that user / item column only supports Int |  Minor | Documentation, ML, PySpark | Nick Pentreath | Nick Pentreath |
| [SPARK-12071](https://issues.apache.org/jira/browse/SPARK-12071) | Programming guide should explain NULL in JVM translate to NA in R |  Minor | SparkR | Felix Cheung | Krishna Kalyan |
| [SPARK-15500](https://issues.apache.org/jira/browse/SPARK-15500) | Remove defaults in storage level param doc in ALS |  Minor | Documentation, ML, PySpark | Nick Pentreath | Nick Pentreath |
| [SPARK-15492](https://issues.apache.org/jira/browse/SPARK-15492) | Binarization scala example copy & paste to spark-shell error |  Minor | ML | Miao Wang | Miao Wang |
| [SPARK-15341](https://issues.apache.org/jira/browse/SPARK-15341) | Add documentation for \`model.write\` to clarify \`summary\` was not saved |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-15523](https://issues.apache.org/jira/browse/SPARK-15523) | Update JPMML to 1.2.15 |  Minor | ML, MLlib | Villu Ruusmann | Villu Ruusmann |
| [SPARK-15449](https://issues.apache.org/jira/browse/SPARK-15449) | MLlib NaiveBayes example in Java uses wrong data format |  Minor | Examples | Kiran Biradarpatil | Miao Wang |
| [SPARK-15617](https://issues.apache.org/jira/browse/SPARK-15617) | Clarify that fMeasure in MulticlassMetrics and MulticlassClassificationEvaluator is "micro" f1\_score |  Minor | Documentation, ML, MLlib | Joseph K. Bradley | zhengruifeng |
| [SPARK-15818](https://issues.apache.org/jira/browse/SPARK-15818) | Upgrade to Hadoop 2.7.2 |  Minor | Build | Adam Roberts | Adam Roberts |
| [SPARK-15781](https://issues.apache.org/jira/browse/SPARK-15781) | Misleading deprecated property in standalone cluster configuration documentation |  Minor | Documentation | Jonathan Taws | Bo Meng |
| [SPARK-7848](https://issues.apache.org/jira/browse/SPARK-7848) | Update SparkStreaming docs to incorporate FAQ and/or bullets w/ "knobs" information. |  Major | DStreams | jay vyas | Nirman Narang |
| [SPARK-15966](https://issues.apache.org/jira/browse/SPARK-15966) | Fix markdown for Spark Monitoring |  Trivial | Documentation | Dhruve Ashar | Dhruve Ashar |
| [SPARK-15608](https://issues.apache.org/jira/browse/SPARK-15608) | Add document for ML IsotonicRegression |  Minor | Documentation | Yanbo Liang | Weichen Xu |
| [SPARK-15490](https://issues.apache.org/jira/browse/SPARK-15490) | SparkR 2.0 QA: New R APIs and API docs for non-MLib changes |  Blocker | SparkR | Joseph K. Bradley | Kai Jiang |
| [SPARK-15129](https://issues.apache.org/jira/browse/SPARK-15129) | Clarify conventions for calling Spark and MLlib from R |  Blocker | Documentation, ML, SparkR | Joseph K. Bradley | Gayathri Murali |
| [SPARK-16040](https://issues.apache.org/jira/browse/SPARK-16040) | spark.mllib PIC document extra line of refernece |  Trivial | . | Miao Wang | Miao Wang |
| [SPARK-15863](https://issues.apache.org/jira/browse/SPARK-15863) | Update SQL programming guide for Spark 2.0 |  Blocker | Documentation, SQL | Cheng Lian | Cheng Lian |
| [SPARK-16025](https://issues.apache.org/jira/browse/SPARK-16025) | Document OFF\_HEAP storage level in 2.0 |  Minor | . | Eric Liang | Eric Liang |
| [SPARK-15894](https://issues.apache.org/jira/browse/SPARK-15894) | Add doc to control #partition for input files |  Trivial | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-15319](https://issues.apache.org/jira/browse/SPARK-15319) | Fix SparkR doc layout for corr and other DataFrame stats functions |  Minor | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-7751](https://issues.apache.org/jira/browse/SPARK-7751) | Add @Since annotation to stable and experimental methods in MLlib |  Minor | Documentation, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-15177](https://issues.apache.org/jira/browse/SPARK-15177) | SparkR 2.0 QA: make SparkR model params and default values consistent with MLlib |  Blocker | ML, SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-16127](https://issues.apache.org/jira/browse/SPARK-16127) | Audit @Since annotations related to ml.linalg |  Major | ML, PySpark | Nick Pentreath | Nick Pentreath |
| [SPARK-15997](https://issues.apache.org/jira/browse/SPARK-15997) | Audit ml.feature Update documentation for ml feature transformers |  Major | ML, MLlib | Gayathri Murali | Gayathri Murali |
| [SPARK-16111](https://issues.apache.org/jira/browse/SPARK-16111) | Hide SparkOrcNewRecordReader in API docs |  Minor | Documentation, SQL | Xiangrui Meng | Dongjoon Hyun |
| [SPARK-14608](https://issues.apache.org/jira/browse/SPARK-14608) | transformSchema needs better documentation |  Minor | Documentation, ML | Joseph K. Bradley | yuhao yang |
| [SPARK-13448](https://issues.apache.org/jira/browse/SPARK-13448) | Document MLlib behavior changes in Spark 2.0 |  Blocker | ML, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-16557](https://issues.apache.org/jira/browse/SPARK-16557) | Remove stale doc in sql/README.md |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-16090](https://issues.apache.org/jira/browse/SPARK-16090) | Improve method grouping in SparkR generated docs |  Critical | Documentation, SparkR | Xiangrui Meng | Xiangrui Meng |
| [SPARK-16112](https://issues.apache.org/jira/browse/SPARK-16112) | R programming guide update for gapply and gapplyCollect |  Major | SparkR | Kai Jiang | Narine Kokhlikyan |
| [SPARK-16055](https://issues.apache.org/jira/browse/SPARK-16055) | sparkR.init() can not load sparkPackages when executing an R file |  Minor | SparkR | Sun Rui | Krishna Kalyan |
| [SPARK-10525](https://issues.apache.org/jira/browse/SPARK-10525) | Add Python example for VectorSlicer to user guide |  Minor | Documentation, ML, PySpark | Joseph K. Bradley | zhengruifeng |
| [SPARK-5991](https://issues.apache.org/jira/browse/SPARK-5991) | Python API for ML model import/export |  Critical | MLlib, PySpark | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-4587](https://issues.apache.org/jira/browse/SPARK-4587) | Model export/import |  Critical | ML, MLlib | Xiangrui Meng | Joseph K. Bradley |
| [SPARK-12640](https://issues.apache.org/jira/browse/SPARK-12640) | Add benchmarks to measure the speed ups of UnsafeRowParquetReaderReader. |  Minor | SQL | Nong Li | Nong Li |
| [SPARK-10620](https://issues.apache.org/jira/browse/SPARK-10620) | Look into whether accumulator mechanism can replace TaskMetrics |  Major | Spark Core | Patrick Wendell | Andrew Or |
| [SPARK-12463](https://issues.apache.org/jira/browse/SPARK-12463) | Remove spark.deploy.mesos.recoveryMode and use spark.deploy.recoveryMode |  Major | Mesos | Timothy Chen | Apache Spark |
| [SPARK-12464](https://issues.apache.org/jira/browse/SPARK-12464) | Remove spark.deploy.mesos.zookeeper.url and use spark.deploy.zookeeper.url |  Major | Mesos | Timothy Chen | Apache Spark |
| [SPARK-12465](https://issues.apache.org/jira/browse/SPARK-12465) | Remove spark.deploy.mesos.zookeeper.dir and use spark.deploy.zookeeper.dir |  Major | Mesos | Timothy Chen | Apache Spark |
| [SPARK-13474](https://issues.apache.org/jira/browse/SPARK-13474) | Update packaging scripts to stage artifacts to home.apache.org |  Major | Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-13598](https://issues.apache.org/jira/browse/SPARK-13598) | Remove LeftSemiJoinBNL |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13583](https://issues.apache.org/jira/browse/SPARK-13583) | Remove unused imports and add checkstyle rule |  Minor | DStreams, Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-13255](https://issues.apache.org/jira/browse/SPARK-13255) | Integrate vectorized parquet scan with whole stage codegen. |  Major | SQL | Nong Li | Nong Li |
| [SPARK-13512](https://issues.apache.org/jira/browse/SPARK-13512) | Add example and doc for ml.feature.MaxAbsScaler |  Minor | ML | yuhao yang | yuhao yang |
| [SPARK-13918](https://issues.apache.org/jira/browse/SPARK-13918) | merge SortMergeJoin and SortMergeOuterJoin |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13942](https://issues.apache.org/jira/browse/SPARK-13942) | Remove Shark-related docs for 2.x |  Minor | Documentation | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-13977](https://issues.apache.org/jira/browse/SPARK-13977) | Bring back ShuffledHashJoin |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-14011](https://issues.apache.org/jira/browse/SPARK-14011) | Enable \`LineLength\` Java checkstyle rule |  Minor | Examples | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14366](https://issues.apache.org/jira/browse/SPARK-14366) | Remove SBT-Idea plugin |  Trivial | Build | Joan Goyeau | Luciano Resende |
| [SPARK-14868](https://issues.apache.org/jira/browse/SPARK-14868) | Enable NewLineAtEofChecker in checkstyle and fix lint-java errors |  Minor | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14987](https://issues.apache.org/jira/browse/SPARK-14987) | Inline Hive thrift-server into Spark |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-13830](https://issues.apache.org/jira/browse/SPARK-13830) | Fetch large directly result from executor is very slow |  Major | Spark Core | Davies Liu | Davies Liu |
| [SPARK-15053](https://issues.apache.org/jira/browse/SPARK-15053) | Fix Java Lint errors on Hive-Thriftserver module |  Trivial | Build, SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-15057](https://issues.apache.org/jira/browse/SPARK-15057) | Remove stale TODO comment for making \`enum\` in GraphGenerators |  Trivial | GraphX | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-15134](https://issues.apache.org/jira/browse/SPARK-15134) | Indent SparkSession builder patterns and update binary\_classification\_metrics\_example.py |  Minor | Examples | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14738](https://issues.apache.org/jira/browse/SPARK-14738) | Separate Docker Integration Tests from main spark build |  Minor | Build, SQL | Luciano Resende | Luciano Resende |
| [SPARK-15587](https://issues.apache.org/jira/browse/SPARK-15587) | ML 2.0 QA: Scala APIs audit for feature |  Major | ML | Joseph K. Bradley | Yanbo Liang |
| [SPARK-15744](https://issues.apache.org/jira/browse/SPARK-15744) | Rename two TungstenAggregation\*Suites and update error messages/comments |  Trivial | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-15773](https://issues.apache.org/jira/browse/SPARK-15773) | Avoid creating local variable \`sc\` in examples if possible |  Minor | Examples | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-15879](https://issues.apache.org/jira/browse/SPARK-15879) | Update logo in UI and docs to add "Apache" |  Minor | Documentation, Web UI | Matei Zaharia | Sean Owen |
| [SPARK-15447](https://issues.apache.org/jira/browse/SPARK-15447) | Performance test for ALS in Spark 2.0 |  Critical | ML | Xiangrui Meng | Nick Pentreath |
| [SPARK-13959](https://issues.apache.org/jira/browse/SPARK-13959) | Audit MiMa excludes added in SPARK-13948 to make sure none are unintended incompatibilities |  Critical | Build | Josh Rosen | Reynold Xin |
| [SPARK-13671](https://issues.apache.org/jira/browse/SPARK-13671) | Use different physical plan for existing RDD and data sources |  Major | SQL | Davies Liu | Davies Liu |


