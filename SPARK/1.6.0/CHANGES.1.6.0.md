
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

## Release 1.6.0 - Unreleased (as of 2015-11-08)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-11023](https://issues.apache.org/jira/browse/SPARK-11023) | Error initializing SparkContext. java.net.URISyntaxException |  Major | PySpark | Jose Antonio | Marcelo Vanzin |
| [SPARK-10856](https://issues.apache.org/jira/browse/SPARK-10856) | SQL Server dialect needs to map java.sql.Timestamp to DATETIME instead of TIMESTAMP |  Major | SQL | Henrik Behrens | Liang-Chi Hsieh |
| [SPARK-10716](https://issues.apache.org/jira/browse/SPARK-10716) | spark-1.5.0-bin-hadoop2.6.tgz file doesn't uncompress on OS X due to hidden file |  Minor | Build, Deploy | Jack Jack | Sean Owen |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-11514](https://issues.apache.org/jira/browse/SPARK-11514) | Pass random seed to spark.ml DecisionTree\* |  Major | ML | Joseph K. Bradley | Yu Ishikawa |
| [SPARK-11467](https://issues.apache.org/jira/browse/SPARK-11467) | Add Python API stddev/variance |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-11389](https://issues.apache.org/jira/browse/SPARK-11389) | Add support for off-heap memory to MemoryManager |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-11292](https://issues.apache.org/jira/browse/SPARK-11292) | Python API for text data source |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11235](https://issues.apache.org/jira/browse/SPARK-11235) | Support streaming data using network library |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11197](https://issues.apache.org/jira/browse/SPARK-11197) | Run SQL query on files directly without create a table |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-11129](https://issues.apache.org/jira/browse/SPARK-11129) | Link Spark WebUI in Mesos WebUI |  Major | Mesos, Web UI | Philipp Hoffmann | Philipp Hoffmann |
| [SPARK-11068](https://issues.apache.org/jira/browse/SPARK-11068) | Add callback to query execution |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11042](https://issues.apache.org/jira/browse/SPARK-11042) | Introduce a mechanism to ban creating new root SQLContexts in a JVM |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-11029](https://issues.apache.org/jira/browse/SPARK-11029) | Add computeCost to KMeansModel in spark.ml |  Major | ML | Joseph K. Bradley | yuhao yang |
| [SPARK-10996](https://issues.apache.org/jira/browse/SPARK-10996) | Implement sampleBy() in DataFrameStatFunctions |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-10978](https://issues.apache.org/jira/browse/SPARK-10978) | Allow PrunedFilterScan to eliminate predicates from further evaluation |  Critical | SQL | Russell Alexander Spitzer | Cheng Lian |
| [SPARK-10807](https://issues.apache.org/jira/browse/SPARK-10807) | Add as.data.frame() as a synonym for collect() |  Minor | SparkR | Oscar D. Lara Yejas | Oscar D. Lara Yejas |
| [SPARK-10779](https://issues.apache.org/jira/browse/SPARK-10779) | Set initialModel for KMeans model in PySpark (spark.mllib) |  Major | MLlib, PySpark | Joseph K. Bradley | Evan Chen |
| [SPARK-10778](https://issues.apache.org/jira/browse/SPARK-10778) | Implement toString for AssociationRules.Rule |  Trivial | MLlib | Xiangrui Meng | shimizu yoshihiro |
| [SPARK-10688](https://issues.apache.org/jira/browse/SPARK-10688) | Python API for AFTSurvivalRegression |  Major | ML, PySpark | Xiangrui Meng | Kai Jiang |
| [SPARK-10686](https://issues.apache.org/jira/browse/SPARK-10686) | Add quantileCol to AFTSurvivalRegression |  Major | ML | Xiangrui Meng | Yanbo Liang |
| [SPARK-10674](https://issues.apache.org/jira/browse/SPARK-10674) | Flaky test: network.sasl.SaslIntegrationSuite.testNoSaslClient |  Critical | Spark Core | Xiangrui Meng | Marcelo Vanzin |
| [SPARK-10668](https://issues.apache.org/jira/browse/SPARK-10668) | Use WeightedLeastSquares in LinearRegression with L2 regularization if the number of features is small |  Critical | ML | Xiangrui Meng | Kai Sasaki |
| [SPARK-10630](https://issues.apache.org/jira/browse/SPARK-10630) | createDataFrame from a Java List\<Row\> |  Minor | SQL | Xiangrui Meng | holdenk |
| [SPARK-10535](https://issues.apache.org/jira/browse/SPARK-10535) | Support for recommendUsersForProducts and recommendProductsForUsers  in matrix factorization model for PySpark |  Major | MLlib, PySpark | Vladimir Vladimirov | Vladimir Vladimirov |
| [SPARK-10532](https://issues.apache.org/jira/browse/SPARK-10532) | Added new option to specify "user profile" of AWS credentials in spark/spark-ec2.py |  Major | EC2 | teramonagi | teramonagi |
| [SPARK-10516](https://issues.apache.org/jira/browse/SPARK-10516) | Add values as a property to DenseVector in PySpark |  Trivial | MLlib, PySpark | Xiangrui Meng | Vinod KC |
| [SPARK-10194](https://issues.apache.org/jira/browse/SPARK-10194) | SGD algorithms need convergenceTol parameter in Python |  Major | MLlib, PySpark | Joseph K. Bradley | Yanbo Liang |
| [SPARK-10151](https://issues.apache.org/jira/browse/SPARK-10151) | Support invocation of hive macro |  Minor | SQL | Navis | Navis |
| [SPARK-10117](https://issues.apache.org/jira/browse/SPARK-10117) | Implement SQL data source API for reading LIBSVM data |  Major | ML | Xiangrui Meng | Kai Sasaki |
| [SPARK-9964](https://issues.apache.org/jira/browse/SPARK-9964) | PySpark DataFrameReader accept RDD of String for JSON |  Minor | PySpark, SQL | Joseph K. Bradley | YBL |
| [SPARK-9834](https://issues.apache.org/jira/browse/SPARK-9834) | Normal equation solver for ordinary least squares |  Major | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-9774](https://issues.apache.org/jira/browse/SPARK-9774) | Add Python API for ml.regression.IsotonicRegression |  Major | ML, PySpark | Yanbo Liang | holdenk |
| [SPARK-9769](https://issues.apache.org/jira/browse/SPARK-9769) | Add Python API for ml.feature.CountVectorizer |  Major | ML, PySpark | Yanbo Liang | holdenk |
| [SPARK-9730](https://issues.apache.org/jira/browse/SPARK-9730) | Sort Merge Join for Full Outer Join |  Major | SQL | Josh Rosen | Davies Liu |
| [SPARK-9698](https://issues.apache.org/jira/browse/SPARK-9698) | Add feature interaction as a transformer |  Major | ML | Xiangrui Meng | Eric Liang |
| [SPARK-9679](https://issues.apache.org/jira/browse/SPARK-9679) | Add python interface for ml.feature.StopWordsRemover |  Minor | ML | yuhao yang | holdenk |
| [SPARK-9669](https://issues.apache.org/jira/browse/SPARK-9669) | Support PySpark with Mesos Cluster mode |  Major | Mesos, PySpark | Timothy Chen | Timothy Chen |
| [SPARK-9654](https://issues.apache.org/jira/browse/SPARK-9654) | Add IndexToString in Pyspark |  Minor | ML, PySpark | holdenk | holdenk |
| [SPARK-9642](https://issues.apache.org/jira/browse/SPARK-9642) | LinearRegression should supported weighted data |  Major | ML | Meihua Wu | Meihua Wu |
| [SPARK-8518](https://issues.apache.org/jira/browse/SPARK-8518) | Log-linear models for survival analysis |  Critical | ML | Xiangrui Meng | Yanbo Liang |
| [SPARK-8472](https://issues.apache.org/jira/browse/SPARK-8472) | Python API for DCT |  Minor | ML | Feynman Liang | Yanbo Liang |
| [SPARK-8467](https://issues.apache.org/jira/browse/SPARK-8467) | Add LDAModel.describeTopics() in Python |  Major | MLlib, PySpark | Yu Ishikawa | Yu Ishikawa |
| [SPARK-7685](https://issues.apache.org/jira/browse/SPARK-7685) | Handle high imbalanced data and apply weights to different samples in Logistic Regression |  Critical | ML | DB Tsai | DB Tsai |
| [SPARK-7542](https://issues.apache.org/jira/browse/SPARK-7542) | Support off-heap sort buffer in UnsafeExternalSorter |  Major | Spark Core | Josh Rosen | Davies Liu |
| [SPARK-6919](https://issues.apache.org/jira/browse/SPARK-6919) | Add .asDict method to StatCounter |  Minor | PySpark | Erik Shilts | Erik Shilts |
| [SPARK-6819](https://issues.apache.org/jira/browse/SPARK-6819) | Support nested types in SparkR DataFrame |  Major | SparkR, SQL | Shivaram Venkataraman | Sun Rui |
| [SPARK-3147](https://issues.apache.org/jira/browse/SPARK-3147) | Implement streaming testing |  Major | MLlib, Streaming | Xiangrui Meng | Feynman Liang |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-11546](https://issues.apache.org/jira/browse/SPARK-11546) | Thrift server makes too many logs about result schema |  Trivial | SQL | Navis | Navis |
| [SPARK-11536](https://issues.apache.org/jira/browse/SPARK-11536) | Remove the internal implicit conversion from Expression to Column in functions.scala |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11532](https://issues.apache.org/jira/browse/SPARK-11532) | Remove implicit conversion from Expression to Column |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11527](https://issues.apache.org/jira/browse/SPARK-11527) | PySpark AFTSurvivalRegressionModel should expose coefficients/intercept/scale |  Minor | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-11513](https://issues.apache.org/jira/browse/SPARK-11513) | Remove the internal implicit conversion from LogicalPlan to DataFrame |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11506](https://issues.apache.org/jira/browse/SPARK-11506) | Code Optimization to remove a redundant operation |  Trivial | MLlib | Alok | Alok |
| [SPARK-11491](https://issues.apache.org/jira/browse/SPARK-11491) | Use Scala 2.10.5 |  Minor | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-11489](https://issues.apache.org/jira/browse/SPARK-11489) | Only include common first order statistics in GroupedData |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11485](https://issues.apache.org/jira/browse/SPARK-11485) | Make DataFrameHolder and DatasetHolder public |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11477](https://issues.apache.org/jira/browse/SPARK-11477) | support create Dataset from RDD |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11456](https://issues.apache.org/jira/browse/SPARK-11456) | Remove deprecatd junit.framework in Java tests |  Trivial | Tests | Sean Owen | Sean Owen |
| [SPARK-11450](https://issues.apache.org/jira/browse/SPARK-11450) | Add support for UnsafeRow to Expand |  Minor | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-11449](https://issues.apache.org/jira/browse/SPARK-11449) | PortableDataStream should be a factory |  Minor | Spark Core | Herman van Hovell | Herman van Hovell |
| [SPARK-11440](https://issues.apache.org/jira/browse/SPARK-11440) | Declare rest of @Experimental items non-experimental if they've existed since 1.2.0 |  Minor | Build, Spark Core, Streaming | Sean Owen | Sean Owen |
| [SPARK-11437](https://issues.apache.org/jira/browse/SPARK-11437) | createDataFrame shouldn't .take() when provided schema |  Major | PySpark | Jason White | Jason White |
| [SPARK-11425](https://issues.apache.org/jira/browse/SPARK-11425) | Improve hybrid aggregation (sort-based after hash-based) |  Major | Spark Core | Davies Liu | Davies Liu |
| [SPARK-11423](https://issues.apache.org/jira/browse/SPARK-11423) | Remove PrepareRDD |  Major | Spark Core | Davies Liu | Davies Liu |
| [SPARK-11413](https://issues.apache.org/jira/browse/SPARK-11413) | Java 8 build has problem with joda-time and s3 request, should bump joda-time version |  Minor | Build | Yongjia Wang | Yongjia Wang |
| [SPARK-11410](https://issues.apache.org/jira/browse/SPARK-11410) | Add a DataFrame API that provides functionality similar to HiveQL's DISTRIBUTE BY |  Major | SQL | Nong Li | Nong Li |
| [SPARK-11385](https://issues.apache.org/jira/browse/SPARK-11385) | Make foreachActive public in MLLib's vector API |  Minor | MLlib | holdenk | Nakul Jindal |
| [SPARK-11371](https://issues.apache.org/jira/browse/SPARK-11371) | Make "mean" an alias for "avg" operator |  Minor | SQL | Ted Yu | Ted Yu |
| [SPARK-11369](https://issues.apache.org/jira/browse/SPARK-11369) | SparkR glm should support setting standardize |  Minor | ML, R | Yanbo Liang | Yanbo Liang |
| [SPARK-11367](https://issues.apache.org/jira/browse/SPARK-11367) | Python LinearRegression should support setting solver |  Minor | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-11358](https://issues.apache.org/jira/browse/SPARK-11358) | Deprecate `runs` in k-means |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-11351](https://issues.apache.org/jira/browse/SPARK-11351) | support hive interval literal in sql parser |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11344](https://issues.apache.org/jira/browse/SPARK-11344) | ApplicationDescription should be immutable case class |  Minor | Deploy, Spark Core | Jacek Lewandowski | Jacek Lewandowski |
| [SPARK-11342](https://issues.apache.org/jira/browse/SPARK-11342) | Allow to set hadoop profile when running dev/run\_tests |  Minor | Tests | Jeff Zhang | Jeff Zhang |
| [SPARK-11332](https://issues.apache.org/jira/browse/SPARK-11332) | WeightedLeastSquares should use ml features generic Instance class instead of private |  Minor | ML | holdenk | Nakul Jindal |
| [SPARK-11329](https://issues.apache.org/jira/browse/SPARK-11329) | Expand Star when creating a struct |  Major | SQL | Yin Huai | Nong Li |
| [SPARK-11325](https://issues.apache.org/jira/browse/SPARK-11325) | Alias alias in Scala's DataFrame to as to match python |  Major | SQL | Yin Huai | Nong Li |
| [SPARK-11324](https://issues.apache.org/jira/browse/SPARK-11324) | Flag to close Write Ahead Log after writing |  Major | Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-11318](https://issues.apache.org/jira/browse/SPARK-11318) | Include hive profile in make-distribution.sh command |  Trivial | Documentation | Ted Yu | Ted Yu |
| [SPARK-11305](https://issues.apache.org/jira/browse/SPARK-11305) | Remove Third-Party Hadoop Distributions Doc Page |  Critical | Documentation | Patrick Wendell | Sean Owen |
| [SPARK-11297](https://issues.apache.org/jira/browse/SPARK-11297) | code example generated by include\_example is not exactly the same with {% highlight %} |  Major | Documentation, ML, MLlib | Xusen Yin | Xusen Yin |
| [SPARK-11279](https://issues.apache.org/jira/browse/SPARK-11279) | Add DataFrame#toDF in PySpark |  Minor | PySpark | Jeff Zhang | Jeff Zhang |
| [SPARK-11271](https://issues.apache.org/jira/browse/SPARK-11271) | MapStatus too large for driver |  Major | Shuffle | Kent Yao | Liang-Chi Hsieh |
| [SPARK-11270](https://issues.apache.org/jira/browse/SPARK-11270) | Add improved equality testing for TopicAndPartition from the Kafka Streaming API |  Minor | PySpark, Streaming | Nick Evans | Nick Evans |
| [SPARK-11258](https://issues.apache.org/jira/browse/SPARK-11258) | Converting a Spark DataFrame into an R data.frame is slow / requires a lot of memory |  Major | SparkR | Frank Rosner | Frank Rosner |
| [SPARK-11256](https://issues.apache.org/jira/browse/SPARK-11256) | Mark all Stage/ResultStage/ShuffleMapStage internal state as private. |  Major | Scheduler, Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-11245](https://issues.apache.org/jira/browse/SPARK-11245) | Upgrade twitter4j to version 4.x |  Trivial | Streaming | Luciano Resende | Luciano Resende |
| [SPARK-11243](https://issues.apache.org/jira/browse/SPARK-11243) | Output UnsafeRow in InMemoryTableScan |  Major | . | Davies Liu | Davies Liu |
| [SPARK-11236](https://issues.apache.org/jira/browse/SPARK-11236) | Upgrade Tachyon dependency to 0.8.0 |  Major | Spark Core | Calvin Jia | Calvin Jia |
| [SPARK-11226](https://issues.apache.org/jira/browse/SPARK-11226) | Empty line in json file should be skipped |  Minor | SQL | Jeff Zhang | Jeff Zhang |
| [SPARK-11212](https://issues.apache.org/jira/browse/SPARK-11212) | Make RDD's preferred locations support the executor location and fix ReceiverTracker for multiple executors in a host |  Major | Spark Core, Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11207](https://issues.apache.org/jira/browse/SPARK-11207) | Add test cases for solver selection of LinearRegression as followup. |  Major | ML | Kai Sasaki | Kai Sasaki |
| [SPARK-11205](https://issues.apache.org/jira/browse/SPARK-11205) | Match the output of DataFrame#explain() in both scala api and python |  Minor | PySpark | Jeff Zhang | Jeff Zhang |
| [SPARK-11194](https://issues.apache.org/jira/browse/SPARK-11194) | Use a single URLClassLoader for jars added through SQL's "ADD JAR" command |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-11184](https://issues.apache.org/jira/browse/SPARK-11184) | Declare most of .mllib code not-Experimental |  Minor | MLlib | Sean Owen | Sean Owen |
| [SPARK-11180](https://issues.apache.org/jira/browse/SPARK-11180) | Support BooleanType in DataFrame.na.fill |  Minor | SQL | Satya Narayan | Rishabh Bhardwaj |
| [SPARK-11179](https://issues.apache.org/jira/browse/SPARK-11179) | Push filters through aggregate if filters are subset of 'group by' expressions |  Minor | SQL | Nitin Goyal | Nitin Goyal |
| [SPARK-11178](https://issues.apache.org/jira/browse/SPARK-11178) | Improve naming around task failures in scheduler code |  Trivial | Scheduler | Kay Ousterhout | Kay Ousterhout |
| [SPARK-11169](https://issues.apache.org/jira/browse/SPARK-11169) | Remove the extra spaces in merge script |  Trivial | Build | Reynold Xin | Reynold Xin |
| [SPARK-11163](https://issues.apache.org/jira/browse/SPARK-11163) | Remove unnecessary addPendingTask calls in TaskSetManager.executorLost |  Minor | Scheduler | Kay Ousterhout | Kay Ousterhout |
| [SPARK-11158](https://issues.apache.org/jira/browse/SPARK-11158) | Add more information in Error statment for sql/types \_verify\_type() |  Minor | SQL | Mahmoud Lababidi | Mahmoud Lababidi |
| [SPARK-11149](https://issues.apache.org/jira/browse/SPARK-11149) | Improve performance of primitive types in columnar cache |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-11127](https://issues.apache.org/jira/browse/SPARK-11127) | Upgrade Kinesis Client Library to the latest stable version |  Major | Streaming | Xiangrui Meng | Xiangrui Meng |
| [SPARK-11125](https://issues.apache.org/jira/browse/SPARK-11125) | Unreadable exception when running spark-sql without building with -Phive-thriftserver and SPARK\_PREPEND\_CLASSES is set |  Minor | SQL | Jeff Zhang | Jeff Zhang |
| [SPARK-11122](https://issues.apache.org/jira/browse/SPARK-11122) | Fatal warnings in sbt are not displayed as such |  Minor | Build | Jakob Odersky | Jakob Odersky |
| [SPARK-11119](https://issues.apache.org/jira/browse/SPARK-11119) | cleanup unsafe array and map |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11117](https://issues.apache.org/jira/browse/SPARK-11117) | PhysicalRDD.outputsUnsafeRows should return true when the underlying data source produces UnsafeRows |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-11114](https://issues.apache.org/jira/browse/SPARK-11114) | Add getOrCreate for SparkContext/SQLContext for Python |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-11113](https://issues.apache.org/jira/browse/SPARK-11113) | Remove DeveloperApi annotation from private classes |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11111](https://issues.apache.org/jira/browse/SPARK-11111) | Fast null-safe join |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-11109](https://issues.apache.org/jira/browse/SPARK-11109) | move FsHistoryProvider off import org.apache.hadoop.fs.permission.AccessControlException |  Minor | Spark Core | Steve Loughran | Glenn Weidner |
| [SPARK-11084](https://issues.apache.org/jira/browse/SPARK-11084) | SparseVector.\_\_getitem\_\_ should check if value can be non-zero before executing searchsorted |  Minor | MLlib, PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-11076](https://issues.apache.org/jira/browse/SPARK-11076) | Decimal Support for Ceil/Floor |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-11056](https://issues.apache.org/jira/browse/SPARK-11056) | Improve documentation on how to build Spark efficiently |  Minor | Documentation | Kay Ousterhout | Kay Ousterhout |
| [SPARK-11050](https://issues.apache.org/jira/browse/SPARK-11050) | PySpark SparseVector can return wrong index in error message |  Trivial | MLlib, PySpark | Joseph K. Bradley | Bhargav Mangipudi |
| [SPARK-11030](https://issues.apache.org/jira/browse/SPARK-11030) | SQLTab should be shared by across sessions |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-10997](https://issues.apache.org/jira/browse/SPARK-10997) | Netty-based RPC env should support a "client-only" mode. |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-10990](https://issues.apache.org/jira/browse/SPARK-10990) | Avoid the serialization multiple times during unrolling of complex types |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-10982](https://issues.apache.org/jira/browse/SPARK-10982) | Rename ExpressionAggregate -\> DeclarativeAggregate |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-10974](https://issues.apache.org/jira/browse/SPARK-10974) | Add progress bar for output operation column and use red dots for failed batches |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-10949](https://issues.apache.org/jira/browse/SPARK-10949) | Upgrade Snappy Java to 1.1.2 |  Minor | Spark Core | Adam Roberts | Josh Rosen |
| [SPARK-10947](https://issues.apache.org/jira/browse/SPARK-10947) | With schema inference from JSON into a Dataframe, add option to infer all primitive object types as strings |  Minor | SQL | Ewan Leith | Stephen De Gennaro |
| [SPARK-10932](https://issues.apache.org/jira/browse/SPARK-10932) | Port two minor changes to release packaging scripts back into Spark repo |  Major | Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-10921](https://issues.apache.org/jira/browse/SPARK-10921) | Completely remove the use of SparkContext.preferredNodeLocationData |  Minor | Spark Core, YARN | Jacek Laskowski | Jacek Laskowski |
| [SPARK-10917](https://issues.apache.org/jira/browse/SPARK-10917) | Improve performance of complex types in columnar cache |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-10891](https://issues.apache.org/jira/browse/SPARK-10891) | Add MessageHandler to KinesisUtils.createStream similar to Direct Kafka |  Major | Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-10889](https://issues.apache.org/jira/browse/SPARK-10889) | Upgrade Kinesis Client Library |  Minor | Streaming | Avrohom Katz | Avrohom Katz |
| [SPARK-10883](https://issues.apache.org/jira/browse/SPARK-10883) | Document building each module individually |  Trivial | Documentation | Jean-Baptiste Onofré | Jean-Baptiste Onofré |
| [SPARK-10876](https://issues.apache.org/jira/browse/SPARK-10876) | display total application time in spark history UI |  Minor | Web UI | Thomas Graves | Jean-Baptiste Onofré |
| [SPARK-10871](https://issues.apache.org/jira/browse/SPARK-10871) | Specify number of failed executors in ApplicationMaster error message |  Minor | Spark Core | Ryan Williams | Ryan Williams |
| [SPARK-10855](https://issues.apache.org/jira/browse/SPARK-10855) | Add a JDBC dialect for Apache  Derby |  Minor | SQL | Rick Hillegas | Rick Hillegas |
| [SPARK-10833](https://issues.apache.org/jira/browse/SPARK-10833) | Inline, organize BSD/MIT licenses in LICENSE |  Major | Build | Sean Owen | Sean Owen |
| [SPARK-10811](https://issues.apache.org/jira/browse/SPARK-10811) | Minimize array copying cost in Parquet converters |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-10810](https://issues.apache.org/jira/browse/SPARK-10810) | Improve session management for SQL |  Blocker | SQL | Davies Liu | Davies Liu |
| [SPARK-10770](https://issues.apache.org/jira/browse/SPARK-10770) | SparkPlan.executeCollect/executeTake should return InternalRow rather than external Row |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-10767](https://issues.apache.org/jira/browse/SPARK-10767) | Make pyspark shared params codegen more consistent |  Minor | ML, PySpark | holdenk | holdenk |
| [SPARK-10743](https://issues.apache.org/jira/browse/SPARK-10743) | keep the name of expression if possible when do cast |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10742](https://issues.apache.org/jira/browse/SPARK-10742) | Add the ability to embed HTML relative links in job descriptions |  Minor | Web UI | Tathagata Das | Tathagata Das |
| [SPARK-10739](https://issues.apache.org/jira/browse/SPARK-10739) | Add attempt window for long running Spark application on Yarn |  Minor | YARN | Saisai Shao | Saisai Shao |
| [SPARK-10738](https://issues.apache.org/jira/browse/SPARK-10738) | Refactoring `Instance` out from LOR and LIR, and also cleaning up some code |  Major | ML | DB Tsai | DB Tsai |
| [SPARK-10736](https://issues.apache.org/jira/browse/SPARK-10736) | Use 1 for all ratings if $(ratingCol) = "" |  Minor | ML | Xiangrui Meng | Yanbo Liang |
| [SPARK-10721](https://issues.apache.org/jira/browse/SPARK-10721) | Log warning when file deletion fails |  Minor | Spark Core | Ted Yu | Ted Yu |
| [SPARK-10720](https://issues.apache.org/jira/browse/SPARK-10720) | Add a java wrapper to create dataframe from a local list of Java Beans. |  Minor | SQL | holdenk | holdenk |
| [SPARK-10715](https://issues.apache.org/jira/browse/SPARK-10715) | Duplicate initialzation flag in WeightedLeastSquare |  Trivial | ML | Kai Sasaki | Kai Sasaki |
| [SPARK-10714](https://issues.apache.org/jira/browse/SPARK-10714) | Refactor PythonRDD to decouple iterator computation from PythonRDD |  Major | PySpark, Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-10706](https://issues.apache.org/jira/browse/SPARK-10706) | Add java wrapper for random vector rdd |  Minor | Java API, MLlib | holdenk | Meihua Wu |
| [SPARK-10699](https://issues.apache.org/jira/browse/SPARK-10699) | Support checkpointInterval can be disabled |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-10684](https://issues.apache.org/jira/browse/SPARK-10684) | StructType.interpretedOrdering need not to be serialized |  Minor | SQL | Navis | Navis |
| [SPARK-10676](https://issues.apache.org/jira/browse/SPARK-10676) | Update documentation with instructions to enable block manager wire encryption |  Major | Documentation | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-10657](https://issues.apache.org/jira/browse/SPARK-10657) | Remove legacy SCP-based Jenkins log archiving code |  Major | Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-10654](https://issues.apache.org/jira/browse/SPARK-10654) | Add columnSimilarities to IndexedRowMatrix |  Major | MLlib | Reza Zadeh | Reza Zadeh |
| [SPARK-10652](https://issues.apache.org/jira/browse/SPARK-10652) | Set meaningful job descriptions for streaming related jobs |  Major | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-10626](https://issues.apache.org/jira/browse/SPARK-10626) | Create a Java friendly method for randomRDD & RandomDataGenerator on RandomRDDs. |  Minor | MLlib | holdenk | holdenk |
| [SPARK-10615](https://issues.apache.org/jira/browse/SPARK-10615) |  changes assertEquals to assertEqual for existing unit tests |  Minor | PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-10599](https://issues.apache.org/jira/browse/SPARK-10599) | Decrease communication in BlockMatrix multiply and increase performance |  Major | MLlib | Burak Yavuz | Burak Yavuz |
| [SPARK-10592](https://issues.apache.org/jira/browse/SPARK-10592) | deprecate weights and use coefficients instead in ML models |  Critical | ML, PySpark | Xiangrui Meng | Kai Jiang |
| [SPARK-10585](https://issues.apache.org/jira/browse/SPARK-10585) | only copy data once when generate unsafe projection |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10577](https://issues.apache.org/jira/browse/SPARK-10577) | [PySpark] DataFrame hint for broadcast join |  Major | PySpark, SQL | Maciej Bryński | Jian Feng Zhang |
| [SPARK-10576](https://issues.apache.org/jira/browse/SPARK-10576) | Move .java files out of src/main/scala |  Minor | Build | Sean Owen | Sean Owen |
| [SPARK-10575](https://issues.apache.org/jira/browse/SPARK-10575) | Wrap RDD.takeSample with scope |  Minor | Spark Core | Vinod KC | Vinod KC |
| [SPARK-10547](https://issues.apache.org/jira/browse/SPARK-10547) | Streamline / improve style of Java API tests |  Minor | Java API, Tests | Sean Owen | Sean Owen |
| [SPARK-10546](https://issues.apache.org/jira/browse/SPARK-10546) | Check partitionId's range in ExternalSorter#spill() |  Trivial | Spark Core | Ted Yu | Ted Yu |
| [SPARK-10537](https://issues.apache.org/jira/browse/SPARK-10537) | Document LIBSVM data source options in public doc and minor improvements |  Major | Documentation, ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-10531](https://issues.apache.org/jira/browse/SPARK-10531) | AppId is set as AppName in status rest api |  Minor | Spark Core | Jeff Zhang | Jeff Zhang |
| [SPARK-10518](https://issues.apache.org/jira/browse/SPARK-10518) | Update code examples in spark.ml user guide to use LIBSVM data source instead of MLUtils |  Minor | Documentation, MLlib | Xiangrui Meng | shimizu yoshihiro |
| [SPARK-10491](https://issues.apache.org/jira/browse/SPARK-10491) | move RowMatrix.dspr to BLAS |  Major | MLlib | Xiangrui Meng | yuhao yang |
| [SPARK-10490](https://issues.apache.org/jira/browse/SPARK-10490) | Consolidate the Cholesky solvers in WeightedLeastSquares and ALS |  Major | MLlib | Xiangrui Meng | Yanbo Liang |
| [SPARK-10481](https://issues.apache.org/jira/browse/SPARK-10481) | SPARK\_PREPEND\_CLASSES make spark-yarn related jar could not be found |  Minor | YARN | Jeff Zhang | Jeff Zhang |
| [SPARK-10475](https://issues.apache.org/jira/browse/SPARK-10475) | improve column prunning for Project on Sort |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10468](https://issues.apache.org/jira/browse/SPARK-10468) | Verify schema before Dataframe select API call |  Minor | MLlib | Vinod KC | Vinod KC |
| [SPARK-10464](https://issues.apache.org/jira/browse/SPARK-10464) | Add WeibullGenerator for RandomDataGenerator |  Major | MLlib | Yanbo Liang | Yanbo Liang |
| [SPARK-10463](https://issues.apache.org/jira/browse/SPARK-10463) | remove PromotePrecision during optimization |  Trivial | SQL | Adrian Wang | Adrian Wang |
| [SPARK-10461](https://issues.apache.org/jira/browse/SPARK-10461) | make sure `input.primitive` is always variable name not code at GenerateUnsafeProjection |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10459](https://issues.apache.org/jira/browse/SPARK-10459) | PythonUDF could process UnsafeRow |  Major | SQL | Davies Liu | Liang-Chi Hsieh |
| [SPARK-10458](https://issues.apache.org/jira/browse/SPARK-10458) | Would like to know if a given Spark Context is stopped or currently stopping |  Minor | Spark Core | Matt Cheah | Madhusudanan Kandasamy |
| [SPARK-10451](https://issues.apache.org/jira/browse/SPARK-10451) | Prevent unnecessary serializations in InMemoryColumnarTableScan |  Minor | SQL | Yash Datta | Yash Datta |
| [SPARK-10450](https://issues.apache.org/jira/browse/SPARK-10450) | Minor SQL style, format, typo, readability fixes |  Minor | SQL | Andrew Or | Andrew Or |
| [SPARK-10447](https://issues.apache.org/jira/browse/SPARK-10447) | Upgrade pyspark to use py4j 0.9 |  Major | PySpark | Justin Uang | holdenk |
| [SPARK-10446](https://issues.apache.org/jira/browse/SPARK-10446) | Support to specify join type when calling join with usingColumns |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-10443](https://issues.apache.org/jira/browse/SPARK-10443) | Refactor SortMergeOuterJoin to reduce duplication |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-10419](https://issues.apache.org/jira/browse/SPARK-10419) | Add JDBC dialect for Microsoft SQL Server |  Minor | SQL | Ewan Leith | Ewan Leith |
| [SPARK-10415](https://issues.apache.org/jira/browse/SPARK-10415) | Enhance Navigation Sidebar in PySpark API |  Minor | Documentation, PySpark | Noel Smith | Noel Smith |
| [SPARK-10411](https://issues.apache.org/jira/browse/SPARK-10411) | In SQL tab move visualization above explain output |  Minor | SQL, Web UI | Andrew Or | Shixiong Zhu |
| [SPARK-10400](https://issues.apache.org/jira/browse/SPARK-10400) | Rename or deprecate SQL option "spark.sql.parquet.followParquetFormatSpec" |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-10395](https://issues.apache.org/jira/browse/SPARK-10395) | Simplify CatalystReadSupport |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-10394](https://issues.apache.org/jira/browse/SPARK-10394) | Make GBTParams use shared "stepSize" |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-10389](https://issues.apache.org/jira/browse/SPARK-10389) | support order by non-attribute grouping expression on Aggregate |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10378](https://issues.apache.org/jira/browse/SPARK-10378) | Remove HashJoinCompatibilitySuite |  Major | SQL, Tests | Reynold Xin | Reynold Xin |
| [SPARK-10373](https://issues.apache.org/jira/browse/SPARK-10373) | Move @since annotator to pyspark to be shared by all components |  Major | PySpark, SQL | Xiangrui Meng | Davies Liu |
| [SPARK-10355](https://issues.apache.org/jira/browse/SPARK-10355) | Add Python API for SQLTransformer |  Minor | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-10349](https://issues.apache.org/jira/browse/SPARK-10349) | OneVsRest use "when ... otherwise" not UDF to generate new label at binary reduction |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-10257](https://issues.apache.org/jira/browse/SPARK-10257) | Remove Guava dependencies in spark.mllib JavaTests |  Minor | MLlib | Feynman Liang | Feynman Liang |
| [SPARK-10256](https://issues.apache.org/jira/browse/SPARK-10256) | Remove Guava dependencies in spark.ml.classificaiton |  Minor | ML | Feynman Liang | Feynman Liang |
| [SPARK-10255](https://issues.apache.org/jira/browse/SPARK-10255) | Remove Guava dependencies in spark.ml.param |  Minor | ML | Feynman Liang | Feynman Liang |
| [SPARK-10254](https://issues.apache.org/jira/browse/SPARK-10254) | Remove Guava dependencies in spark.ml.feature |  Minor | ML | Feynman Liang | Feynman Liang |
| [SPARK-10253](https://issues.apache.org/jira/browse/SPARK-10253) | Remove Guava dependencies in MLlib java tests |  Minor | ML, MLlib | Feynman Liang | Feynman Liang |
| [SPARK-10249](https://issues.apache.org/jira/browse/SPARK-10249) | Add Python Code Example to StopWordsRemover User Guide |  Minor | ML, PySpark | Feynman Liang | yuhao yang |
| [SPARK-10184](https://issues.apache.org/jira/browse/SPARK-10184) | Optimization for bounds determination in RangePartitioner |  Minor | Spark Core | Jigao Fu | Jigao Fu |
| [SPARK-10104](https://issues.apache.org/jira/browse/SPARK-10104) | Consolidate different forms of table identifiers |  Major | SQL | Yin Huai | Wenchen Fan |
| [SPARK-10071](https://issues.apache.org/jira/browse/SPARK-10071) | QueueInputDStream Should Allow Checkpointing |  Major | Streaming | Asim Jalis | Shixiong Zhu |
| [SPARK-10065](https://issues.apache.org/jira/browse/SPARK-10065) | Avoid triple copy of var-length objects in Array in tungsten projection |  Major | SQL | Davies Liu | Wenchen Fan |
| [SPARK-10064](https://issues.apache.org/jira/browse/SPARK-10064) | Decision tree continuous feature binning is slow in large feature spaces |  Minor | MLlib | Nathan Howell | Nathan Howell |
| [SPARK-10056](https://issues.apache.org/jira/browse/SPARK-10056) | PySpark Row - Support for row["columnName"] syntax |  Minor | PySpark | Maciej Bryński | YBL |
| [SPARK-10040](https://issues.apache.org/jira/browse/SPARK-10040) | JDBC writer change to use batch insert for performance |  Major | SQL | Rama Mullapudi | Liang-Chi Hsieh |
| [SPARK-10035](https://issues.apache.org/jira/browse/SPARK-10035) | Parquet filters does not process EqualNullSafe filter. |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-10028](https://issues.apache.org/jira/browse/SPARK-10028) | Add Python API for PrefixSpan |  Major | MLlib, PySpark | Yanbo Liang | Yu Ishikawa |
| [SPARK-9963](https://issues.apache.org/jira/browse/SPARK-9963) | ML RandomForest cleanup: Move predictNodeIndex to LearningNode |  Trivial | ML | Joseph K. Bradley | Luvsandondov Lkhamsuren |
| [SPARK-9962](https://issues.apache.org/jira/browse/SPARK-9962) | Decision Tree training: prevNodeIdsForInstances.unpersist() at end of training |  Minor | ML | Joseph K. Bradley | holdenk |
| [SPARK-9935](https://issues.apache.org/jira/browse/SPARK-9935) | EqualNullSafe not processed in OrcRelation |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-9929](https://issues.apache.org/jira/browse/SPARK-9929) | support adding metadata in withColumn |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-9923](https://issues.apache.org/jira/browse/SPARK-9923) | ShuffleMapStage.numAvailableOutputs should be an Int instead of Long |  Trivial | Spark Core | Matei Zaharia | Neelesh Srinivas Salian |
| [SPARK-9867](https://issues.apache.org/jira/browse/SPARK-9867) | Move utilities for binary data into ByteArray |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-9841](https://issues.apache.org/jira/browse/SPARK-9841) | Params.clear needs to be public |  Major | ML | Joseph K. Bradley | holdenk |
| [SPARK-9833](https://issues.apache.org/jira/browse/SPARK-9833) | Add options to explicitly disable delegation token retrieval for non-HDFS |  Minor | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-9821](https://issues.apache.org/jira/browse/SPARK-9821) | pyspark reduceByKey should allow a custom partitioner |  Minor | PySpark | Diana Carroll | holdenk |
| [SPARK-9817](https://issues.apache.org/jira/browse/SPARK-9817) | Improve the container placement strategy by considering the localities of pending container requests |  Minor | YARN | Saisai Shao | Saisai Shao |
| [SPARK-9790](https://issues.apache.org/jira/browse/SPARK-9790) | [YARN] Expose in WebUI if NodeManager is the reason why executors were killed. |  Minor | YARN | Mark Grover | Mark Grover |
| [SPARK-9782](https://issues.apache.org/jira/browse/SPARK-9782) | Add support for YARN application tags running Spark on YARN |  Major | YARN | Dennis Huo | Dennis Huo |
| [SPARK-9773](https://issues.apache.org/jira/browse/SPARK-9773) | Add Python API for MultilayerPerceptronClassifier |  Major | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-9772](https://issues.apache.org/jira/browse/SPARK-9772) | Add Python API for ml.feature.VectorSlicer |  Minor | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-9737](https://issues.apache.org/jira/browse/SPARK-9737) | Add the suggested configuration when required executor memory is above the max threshold of this cluster on YARN mode |  Trivial | YARN | Yadong Qi | Yadong Qi |
| [SPARK-9723](https://issues.apache.org/jira/browse/SPARK-9723) | Params.getOrDefault should throw more meaningful exception |  Minor | ML | Joseph K. Bradley | holdenk |
| [SPARK-9722](https://issues.apache.org/jira/browse/SPARK-9722) | Pass random seed to spark.ml RandomForest findSplitsBins |  Trivial | ML | Joseph K. Bradley | Yu Ishikawa |
| [SPARK-9720](https://issues.apache.org/jira/browse/SPARK-9720) | spark.ml Identifiable types should have UID in toString methods |  Minor | ML | Joseph K. Bradley | Bertrand Dechoux |
| [SPARK-9718](https://issues.apache.org/jira/browse/SPARK-9718) | LinearRegressionTrainingSummary should hold all columns in transformed data |  Minor | ML | Joseph K. Bradley | holdenk |
| [SPARK-9715](https://issues.apache.org/jira/browse/SPARK-9715) | Store numFeatures in all ML PredictionModel types |  Minor | ML | Joseph K. Bradley | Seth Hendrickson |
| [SPARK-9702](https://issues.apache.org/jira/browse/SPARK-9702) | Repartition operator should use Exchange to perform its shuffle |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-9613](https://issues.apache.org/jira/browse/SPARK-9613) | Ban use of JavaConversions and migrate all existing uses to JavaConverters |  Major | Spark Core | Josh Rosen | Sean Owen |
| [SPARK-9570](https://issues.apache.org/jira/browse/SPARK-9570) | Consistent recommendation for submitting spark apps to YARN, -master yarn --deploy-mode x vs -master yarn-x'. |  Minor | Documentation, Spark Submit, YARN | Neelesh Srinivas Salian | Sean Owen |
| [SPARK-9547](https://issues.apache.org/jira/browse/SPARK-9547) | Allow testing pull requests with different Hadoop versions |  Major | Build | Patrick Wendell | Patrick Wendell |
| [SPARK-9545](https://issues.apache.org/jira/browse/SPARK-9545) | Run Maven tests in pull request builder if title has "[test-maven]" in it |  Major | Build | Patrick Wendell | Patrick Wendell |
| [SPARK-9522](https://issues.apache.org/jira/browse/SPARK-9522) | SparkSubmit process can not exit if kill application when HiveThriftServer was starting |  Minor | SQL | Weizhong | Weizhong |
| [SPARK-9410](https://issues.apache.org/jira/browse/SPARK-9410) | Better Multi-User Session Semantics for SQL Context |  Critical | SQL | Michael Armbrust | Davies Liu |
| [SPARK-9043](https://issues.apache.org/jira/browse/SPARK-9043) | Serialize key, value and combiner classes in ShuffleDependency |  Major | Shuffle | Matt Massie | Matt Massie |
| [SPARK-8764](https://issues.apache.org/jira/browse/SPARK-8764) | StringIndexer should take option to handle unseen values |  Minor | ML | Joseph K. Bradley | holdenk |
| [SPARK-8530](https://issues.apache.org/jira/browse/SPARK-8530) | Add Python API for MinMaxScaler |  Minor | ML, PySpark | yuhao yang | yuhao yang |
| [SPARK-7770](https://issues.apache.org/jira/browse/SPARK-7770) | Change GBT validationTol to be relative tolerance |  Minor | ML, MLlib | Joseph K. Bradley | Yanbo Liang |
| [SPARK-7275](https://issues.apache.org/jira/browse/SPARK-7275) | Make LogicalRelation public |  Minor | SQL | Santiago M. Mola | Glenn Weidner |
| [SPARK-7142](https://issues.apache.org/jira/browse/SPARK-7142) | Minor enhancement to BooleanSimplification Optimizer rule |  Minor | SQL | Yash Datta | Yash Datta |
| [SPARK-7021](https://issues.apache.org/jira/browse/SPARK-7021) | JUnit output for Python tests |  Minor | Build, Project Infra | Brennon York | Gabor Liptak |
| [SPARK-6981](https://issues.apache.org/jira/browse/SPARK-6981) | [SQL] SparkPlanner and QueryExecution should be factored out from SQLContext |  Minor | SQL | Edoardo Vacchi | Edoardo Vacchi |
| [SPARK-6350](https://issues.apache.org/jira/browse/SPARK-6350) | Make mesosExecutorCores configurable in mesos "fine-grained" mode |  Minor | Mesos | Jongyoul Lee | Jongyoul Lee |
| [SPARK-5354](https://issues.apache.org/jira/browse/SPARK-5354) | Set InMemoryColumnarTableScan's outputPartitioning and outputOrdering |  Major | SQL | Yin Huai | Nong Li |
| [SPARK-4849](https://issues.apache.org/jira/browse/SPARK-4849) | Pass partitioning information (distribute by) to In-memory caching |  Critical | SQL | Nitin Goyal | Nong Li |
| [SPARK-4223](https://issues.apache.org/jira/browse/SPARK-4223) | Support \* (meaning all users) as part of the acls |  Major | Spark Core | Thomas Graves | Zhuo Liu |
| [SPARK-3842](https://issues.apache.org/jira/browse/SPARK-3842) | Remove the hacks for Python callback server in py4j |  Minor | PySpark, Streaming | Davies Liu | holdenk |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-11561](https://issues.apache.org/jira/browse/SPARK-11561) | Rename text data source's column name to value |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11555](https://issues.apache.org/jira/browse/SPARK-11555) | spark on yarn spark-class --num-workers doesn't work |  Critical | YARN | Thomas Graves | Thomas Graves |
| [SPARK-11542](https://issues.apache.org/jira/browse/SPARK-11542) | glm does not work with long formula |  Major | SparkR | Davies Liu | Davies Liu |
| [SPARK-11538](https://issues.apache.org/jira/browse/SPARK-11538) | sbt build is using guava 16 instead of guava 14 |  Major | Build | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11537](https://issues.apache.org/jira/browse/SPARK-11537) | hour/minute/second returns negative value |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-11511](https://issues.apache.org/jira/browse/SPARK-11511) | Creating an InputDStream but not using it throws NPE |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11501](https://issues.apache.org/jira/browse/SPARK-11501) | spark.rpc config not propagated to executors |  Major | Spark Core, YARN | Nishkam Ravi | Nishkam Ravi |
| [SPARK-11486](https://issues.apache.org/jira/browse/SPARK-11486) | TungstenAggregate may fail when switching to sort-based aggregation when there are string in grouping columns and no aggregation buffer columns |  Blocker | SQL | Josh Rosen | Davies Liu |
| [SPARK-11484](https://issues.apache.org/jira/browse/SPARK-11484) | Giving precedence to proxyBase set by spark instead of env |  Minor | Web UI | Srinivasa Reddy Vundela | Srinivasa Reddy Vundela |
| [SPARK-11474](https://issues.apache.org/jira/browse/SPARK-11474) | Options to jdbc load are lower cased |  Minor | Input/Output | Stephen Samuel | Huaxin Gao |
| [SPARK-11466](https://issues.apache.org/jira/browse/SPARK-11466) | FsHistoryProviderSuite breaks hadoop1 test |  Major | Tests | Yin Huai | Marcelo Vanzin |
| [SPARK-11457](https://issues.apache.org/jira/browse/SPARK-11457) | Yarn AM proxy filter configuration should be reloaded when recovered from checkpoint |  Major | Streaming, YARN | Saisai Shao | Saisai Shao |
| [SPARK-11455](https://issues.apache.org/jira/browse/SPARK-11455) | case sensitivity of partition by is broken |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11436](https://issues.apache.org/jira/browse/SPARK-11436) | we should rebind right encoder when join 2 datasets |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11434](https://issues.apache.org/jira/browse/SPARK-11434) | flaky test ParquetFilterSuite.SPARK-11103: Filter applied on merged Parquet schema with new column fails |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-11432](https://issues.apache.org/jira/browse/SPARK-11432) | Personalized PageRank shouldn't use uniform initialization |  Minor | GraphX | Yves Raimond | Yves Raimond |
| [SPARK-11424](https://issues.apache.org/jira/browse/SPARK-11424) | Guard against MAPREDUCE-5918 by ensuring RecordReader is only closed once in \*HadoopRDD |  Critical | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-11417](https://issues.apache.org/jira/browse/SPARK-11417) | @Override is not supported by older version of Janino |  Major | . | Davies Liu | Davies Liu |
| [SPARK-11414](https://issues.apache.org/jira/browse/SPARK-11414) | Forgot to update usage of "spark.sparkr.r.command" in RRDD in the PR for SPARK-10971 |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-11409](https://issues.apache.org/jira/browse/SPARK-11409) | Enable url link in R doc for Persist |  Minor | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-11407](https://issues.apache.org/jira/browse/SPARK-11407) | Add documentation on using SparkR from RStudio |  Minor | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-11398](https://issues.apache.org/jira/browse/SPARK-11398) | unnecessary def dialectClassName in HiveContext, and misleading dialect conf at the start of spark-sql |  Minor | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-11393](https://issues.apache.org/jira/browse/SPARK-11393) | CoGroupedIterator should respect the fact that GroupedIterator.hasNext is not idempotent |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11388](https://issues.apache.org/jira/browse/SPARK-11388) | Build breaks due to the use of \<p/\> tags in javadoc. |  Minor | Build | Herman van Hovell | Herman van Hovell |
| [SPARK-11379](https://issues.apache.org/jira/browse/SPARK-11379) | ExpressionEncoder can't handle top level primitive type correctly |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11378](https://issues.apache.org/jira/browse/SPARK-11378) | StreamingContext.awaitTerminationOrTimeout does not return |  Minor | PySpark, Streaming | Nick Evans | Nick Evans |
| [SPARK-11377](https://issues.apache.org/jira/browse/SPARK-11377) | withNewChildren should not convert StructType to Seq |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-11376](https://issues.apache.org/jira/browse/SPARK-11376) | Invalid generated Java code in GenerateColumnAccessor |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-11370](https://issues.apache.org/jira/browse/SPARK-11370) | fix a bug in GroupedIterator and create unit test for it |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11363](https://issues.apache.org/jira/browse/SPARK-11363) | LeftSemiJoin should be LeftSemi in SparkStrategies |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-11345](https://issues.apache.org/jira/browse/SPARK-11345) | Make HadoopFsRelation always outputs UnsafeRow |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-11343](https://issues.apache.org/jira/browse/SPARK-11343) | Regression Imposes doubles on prediction/label columns |  Major | ML | Dominik Dahlem | Dominik Dahlem |
| [SPARK-11340](https://issues.apache.org/jira/browse/SPARK-11340) | Support setting driver properties when starting Spark from R programmatically or from RStudio |  Minor | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-11338](https://issues.apache.org/jira/browse/SPARK-11338) | HistoryPage not multi-tenancy enabled (app links not prefixed with APPLICATION\_WEB\_PROXY\_BASE) |  Major | Web UI | Christian Kadner | Christian Kadner |
| [SPARK-11322](https://issues.apache.org/jira/browse/SPARK-11322) | Keep full stack track in captured exception in PySpark |  Major | PySpark, SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-11311](https://issues.apache.org/jira/browse/SPARK-11311) | spark cannot describe temporary functions |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-11307](https://issues.apache.org/jira/browse/SPARK-11307) | Reduce memory consumption of OutputCommitCoordinator bookkeeping structures |  Major | Scheduler | Josh Rosen | Josh Rosen |
| [SPARK-11306](https://issues.apache.org/jira/browse/SPARK-11306) | Executor JVM loss can lead to a hang in Standalone mode |  Major | Scheduler | Kay Ousterhout | Kay Ousterhout |
| [SPARK-11303](https://issues.apache.org/jira/browse/SPARK-11303) | sample (without replacement) + filter returns wrong results in DataFrame |  Major | SQL | Yuval Tanny | Yanbo Liang |
| [SPARK-11302](https://issues.apache.org/jira/browse/SPARK-11302) |  Multivariate Gaussian Model with Covariance  matrix returns incorrect answer in some cases |  Critical | MLlib | eyal sharon | Sean Owen |
| [SPARK-11301](https://issues.apache.org/jira/browse/SPARK-11301) | filter on partitioned column is case sensitive even the context is case insensitive |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11294](https://issues.apache.org/jira/browse/SPARK-11294) | Improve R doc for read.df, write.df, saveAsTable |  Minor | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-11287](https://issues.apache.org/jira/browse/SPARK-11287) | Executing deploy.client TestClient fails with bad class name |  Trivial | Spark Core | Bryan Cutler | Bryan Cutler |
| [SPARK-11277](https://issues.apache.org/jira/browse/SPARK-11277) | sort\_array throws exception scala.MatchError |  Major | SQL | Jia Li | Jia Li |
| [SPARK-11276](https://issues.apache.org/jira/browse/SPARK-11276) | SizeEstimator prevents class unloading |  Major | Block Manager, Spark Core | Sem Mulder | Sem Mulder |
| [SPARK-11274](https://issues.apache.org/jira/browse/SPARK-11274) | Text data source support for Spark SQL |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11273](https://issues.apache.org/jira/browse/SPARK-11273) | ArrayData and MapData shouldn't be public in types package |  Major | . | Reynold Xin | Reynold Xin |
| [SPARK-11265](https://issues.apache.org/jira/browse/SPARK-11265) | YarnClient can't get tokens to talk to Hive 1.2.1 in a secure cluster |  Major | YARN | Steve Loughran | Steve Loughran |
| [SPARK-11264](https://issues.apache.org/jira/browse/SPARK-11264) | ./bin/spark-class can't find assembly jars with certain GREP\_OPTIONS set |  Minor | Spark Shell | Jeffrey Naisbitt | Jeffrey Naisbitt |
| [SPARK-11253](https://issues.apache.org/jira/browse/SPARK-11253) | reset all accumulators in physical operators before execute an action |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11251](https://issues.apache.org/jira/browse/SPARK-11251) | Page size calculation is wrong in local mode |  Blocker | Shuffle | Andrew Or | Andrew Or |
| [SPARK-11246](https://issues.apache.org/jira/browse/SPARK-11246) | [1.5] Table cache for Parquet broken in 1.5 |  Major | SQL | David Ross | Xin Wu |
| [SPARK-11244](https://issues.apache.org/jira/browse/SPARK-11244) | sparkR.stop doesn't clean up .sparkRSQLsc in environment |  Major | SparkR | Sen Fang | Sen Fang |
| [SPARK-11242](https://issues.apache.org/jira/browse/SPARK-11242) | In conf/spark-env.sh.template SPARK\_DRIVER\_MEMORY is documented incorrectly |  Trivial | Documentation | Xiu Guo | Xiu Guo |
| [SPARK-11233](https://issues.apache.org/jira/browse/SPARK-11233) | cosh is not registered in function registry |  Major | SQL | Reynold Xin | Shagun Sodhani |
| [SPARK-11221](https://issues.apache.org/jira/browse/SPARK-11221) | Fix R doc for DataFrame function `lit` |  Minor | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-11210](https://issues.apache.org/jira/browse/SPARK-11210) | Add window functions into SparkR [step 2] |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-11209](https://issues.apache.org/jira/browse/SPARK-11209) | Add window functions into SparkR [step 1] |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-11208](https://issues.apache.org/jira/browse/SPARK-11208) | Filter out 'hive.metastore.rawstore.impl' from executionHive temporary config |  Major | SQL | Artem Aliev | Artem Aliev |
| [SPARK-11174](https://issues.apache.org/jira/browse/SPARK-11174) | Typo in the GraphX programming guide |  Trivial | Documentation, GraphX | Łukasz Piepiora | Łukasz Piepiora |
| [SPARK-11165](https://issues.apache.org/jira/browse/SPARK-11165) | Logging trait should be private - not DeveloperApi |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-11153](https://issues.apache.org/jira/browse/SPARK-11153) | Turns off Parquet filter push-down for string and binary columns |  Blocker | SQL | Cheng Lian | Cheng Lian |
| [SPARK-11135](https://issues.apache.org/jira/browse/SPARK-11135) | Exchange sort-planning logic incorrectly avoid sorts when existing ordering is non-empty subset of required ordering |  Blocker | SQL | Josh Rosen | Josh Rosen |
| [SPARK-11134](https://issues.apache.org/jira/browse/SPARK-11134) | Flaky test: o.a.s.launcher.LauncherBackendSuite |  Critical | Tests | Andrew Or | Marcelo Vanzin |
| [SPARK-11131](https://issues.apache.org/jira/browse/SPARK-11131) | Worker registration protocol is racy |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11126](https://issues.apache.org/jira/browse/SPARK-11126) | A memory leak in SQLListener.\_stageIdToStageMetrics |  Blocker | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11124](https://issues.apache.org/jira/browse/SPARK-11124) | JsonParser/Generator should be closed for resource recycle |  Trivial | Spark Core | Navis | Navis |
| [SPARK-11121](https://issues.apache.org/jira/browse/SPARK-11121) | Incorrect TaskLocation type |  Minor | Spark Core | zhichao-li | zhichao-li |
| [SPARK-11120](https://issues.apache.org/jira/browse/SPARK-11120) | maxNumExecutorFailures defaults to 3 under dynamic allocation |  Minor | Spark Core | Ryan Williams | Ryan Williams |
| [SPARK-11110](https://issues.apache.org/jira/browse/SPARK-11110) | Scala 2.11 build fails due to compiler errors |  Critical | Build | Patrick Wendell | Jakob Odersky |
| [SPARK-11105](https://issues.apache.org/jira/browse/SPARK-11105) | Disitribute the log4j.properties files from the client to the executors |  Minor | YARN | Srinivasa Reddy Vundela | Srinivasa Reddy Vundela |
| [SPARK-11104](https://issues.apache.org/jira/browse/SPARK-11104) | A potential deadlock in StreamingContext.stop and stopOnShutdown |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11103](https://issues.apache.org/jira/browse/SPARK-11103) | Parquet filters push-down may cause exception when schema merging is turned on |  Blocker | SQL | Dominic Ricard | Hyukjin Kwon |
| [SPARK-11099](https://issues.apache.org/jira/browse/SPARK-11099) | Default conf property file is not loaded |  Critical | Spark Shell, Spark Submit | Jeff Zhang | Jeff Zhang |
| [SPARK-11094](https://issues.apache.org/jira/browse/SPARK-11094) | Test runner script fails to parse Java version. |  Minor | Tests | Jakob Odersky | Jakob Odersky |
| [SPARK-11093](https://issues.apache.org/jira/browse/SPARK-11093) | ChildFirstURLClassLoader#getResources should return all found resources, not just those in the child classloader |  Major | Spark Core | Adam Lewandowski | Adam Lewandowski |
| [SPARK-11091](https://issues.apache.org/jira/browse/SPARK-11091) | Change the flag of spark.sql.canonicalizeView to spark.sql.nativeView |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-11088](https://issues.apache.org/jira/browse/SPARK-11088) | Optimize DataSourceStrategy.mergeWithPartitionValues |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-11083](https://issues.apache.org/jira/browse/SPARK-11083) | insert overwrite table failed when beeline reconnect |  Major | SQL | Weizhong | Davies Liu |
| [SPARK-11080](https://issues.apache.org/jira/browse/SPARK-11080) | Incorporate per-JVM id into ExprId to prevent unsafe cross-JVM comparisions |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-11071](https://issues.apache.org/jira/browse/SPARK-11071) | Flaky test: o.a.s.launcher.LauncherServerSuite |  Major | Tests | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11066](https://issues.apache.org/jira/browse/SPARK-11066) | Flaky test o.a.scheduler.DAGSchedulerSuite.misbehavedResultHandler occasionally fails due to j.l.UnsupportedOperationException concerning a finished JobWaiter |  Minor | Scheduler, Spark Core, Tests | Dr Stephen A Hellberg | Dr Stephen A Hellberg |
| [SPARK-11063](https://issues.apache.org/jira/browse/SPARK-11063) | Spark TaskSetManager doesn't use Receiver's scheduling executors |  Critical | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11060](https://issues.apache.org/jira/browse/SPARK-11060) | Fix some potential NPEs in DStream transformation |  Minor | Streaming | Saisai Shao | Saisai Shao |
| [SPARK-11059](https://issues.apache.org/jira/browse/SPARK-11059) | ML: change range of quantile probabilities in AFTSurvivalRegression |  Minor | ML | Kai Jiang | Kai Jiang |
| [SPARK-11052](https://issues.apache.org/jira/browse/SPARK-11052) | Spaces in the build dir causes failures in the build/mvn script |  Minor | Build | Trystan Leftwich | Trystan Leftwich |
| [SPARK-11051](https://issues.apache.org/jira/browse/SPARK-11051) | NullPointerException when action called on localCheckpointed RDD (that was checkpointed before) |  Critical | Spark Core | Jacek Laskowski | Liang-Chi Hsieh |
| [SPARK-11047](https://issues.apache.org/jira/browse/SPARK-11047) | Internal accumulators miss the internal flag when replaying events in the history server |  Critical | Spark Core | Carson Wang | Carson Wang |
| [SPARK-11040](https://issues.apache.org/jira/browse/SPARK-11040) | SaslRpcHandler does not delegate all methods to underlying handler |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11032](https://issues.apache.org/jira/browse/SPARK-11032) | Failure to resolve having correctly |  Blocker | SQL | Michael Armbrust | Wenchen Fan |
| [SPARK-11026](https://issues.apache.org/jira/browse/SPARK-11026) | spark.yarn.user.classpath.first does work for 'spark-submit --jars hdfs://user/foo.jar' |  Major | YARN | Lianhui Wang | Lianhui Wang |
| [SPARK-11024](https://issues.apache.org/jira/browse/SPARK-11024) | Optimize NULL in \<inlist-expressions\> by folding it to Literal(null) |  Minor | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-11020](https://issues.apache.org/jira/browse/SPARK-11020) | HistoryServer fails to come up if HDFS takes too long to come out of safe mode |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11019](https://issues.apache.org/jira/browse/SPARK-11019) | [streaming] [flume] Gracefully shutdown Flume receiver threads |  Major | Streaming | Hari Shreedharan | Hari Shreedharan |
| [SPARK-11018](https://issues.apache.org/jira/browse/SPARK-11018) | Support UDT in codegen and unsafe projection |  Blocker | SQL | Davies Liu | Davies Liu |
| [SPARK-11016](https://issues.apache.org/jira/browse/SPARK-11016) | Spark fails when running with a task that requires a more recent version of RoaringBitmaps |  Major | Spark Core | Charles Allen | Liang-Chi Hsieh |
| [SPARK-11009](https://issues.apache.org/jira/browse/SPARK-11009) | RowNumber in HiveContext returns negative values in cluster mode |  Blocker | Spark Core | Saif Addin Ellafi | Davies Liu |
| [SPARK-11007](https://issues.apache.org/jira/browse/SPARK-11007) | Add dictionary support for CatalystDecimalConverter |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-11000](https://issues.apache.org/jira/browse/SPARK-11000) | Derby have booted the database twice in yarn security mode. |  Major | Spark Shell, SQL, YARN | SaintBacchus | SaintBacchus |
| [SPARK-10999](https://issues.apache.org/jira/browse/SPARK-10999) | Physical plan node Coalesce should be able to handle UnsafeRow |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-10998](https://issues.apache.org/jira/browse/SPARK-10998) | Show non-children in default Expression.toString |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-10987](https://issues.apache.org/jira/browse/SPARK-10987) | yarn-client mode misbehaving with netty-based RPC backend |  Blocker | Spark Core, YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-10986](https://issues.apache.org/jira/browse/SPARK-10986) | ClassNotFoundException when running on Client mode, with a Mesos master. |  Blocker | Mesos | Joseph Wu | Iulian Dragos |
| [SPARK-10981](https://issues.apache.org/jira/browse/SPARK-10981) | R semijoin leads to Java errors, R leftsemi leads to Spark errors |  Minor | R | Monica Liu | Monica Liu |
| [SPARK-10980](https://issues.apache.org/jira/browse/SPARK-10980) | Create wrong decimal if unscaled \> 1e18 and scale \> 0 |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-10973](https://issues.apache.org/jira/browse/SPARK-10973) | \_\_gettitem\_\_ method throws IndexError exception when we try to access index after the last non-zero entry. |  Major | MLlib, PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-10971](https://issues.apache.org/jira/browse/SPARK-10971) | sparkR: RRunner should allow setting path to Rscript |  Major | SparkR | Thomas Graves | Sun Rui |
| [SPARK-10966](https://issues.apache.org/jira/browse/SPARK-10966) | Code-generation framework cleanup |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-10960](https://issues.apache.org/jira/browse/SPARK-10960) | SQL with windowing function cannot reference column in inner select block |  Major | SQL | David Wong | Liang-Chi Hsieh |
| [SPARK-10959](https://issues.apache.org/jira/browse/SPARK-10959) | PySpark StreamingLogisticRegressionWithSGD does not train with given regParam and convergenceTol parameters |  Critical | PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-10957](https://issues.apache.org/jira/browse/SPARK-10957) | setParams changes quantileProbabilities unexpectly in PySpark's AFTSurvivalRegression |  Major | ML, PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-10955](https://issues.apache.org/jira/browse/SPARK-10955) | Warn if dynamic allocation is enabled for Streaming jobs |  Major | Streaming | Hari Shreedharan | Hari Shreedharan |
| [SPARK-10952](https://issues.apache.org/jira/browse/SPARK-10952) | Don't explode the environment when HIVE\_HOME isn't set. |  Minor | Build | Kevin Cox | Kevin Cox |
| [SPARK-10934](https://issues.apache.org/jira/browse/SPARK-10934) | hashCode of unsafe array may crash |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10929](https://issues.apache.org/jira/browse/SPARK-10929) | Tungsten fails to acquire memory writing to HDFS |  Blocker | SQL | Naden Franciscus | Davies Liu |
| [SPARK-10916](https://issues.apache.org/jira/browse/SPARK-10916) | YARN executors are launched with the default perm gen size |  Major | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-10914](https://issues.apache.org/jira/browse/SPARK-10914) | UnsafeRow serialization breaks when two machines have different Oops size |  Major | SQL | Ben Moran | Reynold Xin |
| [SPARK-10904](https://issues.apache.org/jira/browse/SPARK-10904) |   select(df, c("col1", "col2")) fails |  Major | SparkR | Weiqiang Zhuang | Felix Cheung |
| [SPARK-10902](https://issues.apache.org/jira/browse/SPARK-10902) | Hive UDF current\_database() does not work |  Critical | SQL | Davies Liu | Davies Liu |
| [SPARK-10901](https://issues.apache.org/jira/browse/SPARK-10901) | spark.yarn.user.classpath.first doesn't work |  Critical | YARN | Thomas Graves | Thomas Graves |
| [SPARK-10900](https://issues.apache.org/jira/browse/SPARK-10900) | Add output operation events to StreamingListener |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-10885](https://issues.apache.org/jira/browse/SPARK-10885) | Display the failed output op in Streaming UI |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-10875](https://issues.apache.org/jira/browse/SPARK-10875) | RowMatrix.computeCovariance() result is not exactly symmetric |  Minor | MLlib | Nick Pritchard | Nick Pritchard |
| [SPARK-10866](https://issues.apache.org/jira/browse/SPARK-10866) | [Spark SQL] [UDF] the floor function got wrong return value type |  Major | SQL | Yi Zhou | Cheng Hao |
| [SPARK-10865](https://issues.apache.org/jira/browse/SPARK-10865) | [Spark SQL] [UDF] the ceil/ceiling function got wrong return value type |  Major | SQL | Yi Zhou | Cheng Hao |
| [SPARK-10859](https://issues.apache.org/jira/browse/SPARK-10859) | Predicates pushed to InmemoryColumnarTableScan are not evaluated correctly |  Blocker | SQL | Davies Liu | Davies Liu |
| [SPARK-10858](https://issues.apache.org/jira/browse/SPARK-10858) | YARN: archives/jar/files rename with # doesn't work unless scheme given |  Minor | YARN | Thomas Graves | Thomas Graves |
| [SPARK-10851](https://issues.apache.org/jira/browse/SPARK-10851) | Exception not failing R applications (in yarn cluster mode) |  Major | SparkR, YARN | Zsolt Tóth | Sun Rui |
| [SPARK-10845](https://issues.apache.org/jira/browse/SPARK-10845) | SQL option "spark.sql.hive.version" doesn't show up in the result of "SET -v" |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-10829](https://issues.apache.org/jira/browse/SPARK-10829) | Scan DataSource with predicate expression combine partition key and attributes doesn't work |  Critical | SQL | Cheng Hao | Cheng Hao |
| [SPARK-10825](https://issues.apache.org/jira/browse/SPARK-10825) | Flaky test: StandaloneDynamicAllocationSuite |  Critical | Spark Core, Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-10812](https://issues.apache.org/jira/browse/SPARK-10812) | Spark Hadoop Util does not support stopping a non-yarn Spark Context & starting a Yarn spark context. |  Minor | YARN | holdenk | Holden Karau |
| [SPARK-10790](https://issues.apache.org/jira/browse/SPARK-10790) | Dynamic Allocation does not request any executors if first stage needs less than or equal to spark.dynamicAllocation.initialExecutors |  Major | Scheduler | Jonathan Kelly | Saisai Shao |
| [SPARK-10786](https://issues.apache.org/jira/browse/SPARK-10786) | SparkSQLCLIDriver should take the whole statement to generate the CommandProcessor |  Minor | SQL | SaintBacchus | SaintBacchus |
| [SPARK-10772](https://issues.apache.org/jira/browse/SPARK-10772) | NullPointerException when transform function in DStream returns NULL |  Minor | Streaming | Jack Hu | Jack Hu |
| [SPARK-10769](https://issues.apache.org/jira/browse/SPARK-10769) | Fix o.a.s.streaming.CheckpointSuite.maintains rate controller |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-10750](https://issues.apache.org/jira/browse/SPARK-10750) | ML Param validate should print better error information |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-10741](https://issues.apache.org/jira/browse/SPARK-10741) | Hive Query Having/OrderBy against Parquet table is not working |  Major | SQL | Ian | Wenchen Fan |
| [SPARK-10740](https://issues.apache.org/jira/browse/SPARK-10740) | handle nondeterministic expressions correctly for set operations |  Blocker | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10737](https://issues.apache.org/jira/browse/SPARK-10737) | When using UnsafeRows, SortMergeJoin may return wrong results |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-10731](https://issues.apache.org/jira/browse/SPARK-10731) | The head() implementation of dataframe is very slow |  Major | PySpark | Jerry Lam | Reynold Xin |
| [SPARK-10718](https://issues.apache.org/jira/browse/SPARK-10718) | Update License on conf files and corresponding excludes file |  Minor | Build | Rekha Joshi | Rekha Joshi |
| [SPARK-10711](https://issues.apache.org/jira/browse/SPARK-10711) | Do not assume spark.submit.deployMode is always set |  Critical | R | Hossein Falaki | Hossein Falaki |
| [SPARK-10705](https://issues.apache.org/jira/browse/SPARK-10705) | Stop converting internal rows to external rows in DataFrame.toJSON |  Major | SQL | Cheng Lian | Liang-Chi Hsieh |
| [SPARK-10695](https://issues.apache.org/jira/browse/SPARK-10695) | spark.mesos.constraints documentation uses "=" to separate value instead ":" as parser and mesos expects. |  Critical | Documentation, Mesos | Akash Mishra | Akash Mishra |
| [SPARK-10692](https://issues.apache.org/jira/browse/SPARK-10692) | Failed batches are never reported through the StreamingListener interface |  Critical | Streaming | Tathagata Das | Shixiong Zhu |
| [SPARK-10685](https://issues.apache.org/jira/browse/SPARK-10685) | Misaligned data with RDD.zip and DataFrame.withColumn after repartition |  Blocker | PySpark, SQL | Dan Brown | Reynold Xin |
| [SPARK-10679](https://issues.apache.org/jira/browse/SPARK-10679) | javax.jdo.JDOFatalUserException in executor |  Minor | Spark Core | Navis | Reynold Xin |
| [SPARK-10672](https://issues.apache.org/jira/browse/SPARK-10672) | We should not fail to create a table If we cannot persist metadata of a data source table to metastore in a Hive compatible way |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-10671](https://issues.apache.org/jira/browse/SPARK-10671) | Calling a UDF with insufficient number of input arguments should throw an analysis error |  Major | SQL | Yin Huai | Wenchen Fan |
| [SPARK-10662](https://issues.apache.org/jira/browse/SPARK-10662) | Code snippets are not properly formatted in tables |  Trivial | Documentation | Jacek Laskowski | Jacek Laskowski |
| [SPARK-10656](https://issues.apache.org/jira/browse/SPARK-10656) | select(df(\*)) fails when a column has special characters |  Major | SQL | Nick Pritchard | Wenchen Fan |
| [SPARK-10650](https://issues.apache.org/jira/browse/SPARK-10650) | Spark docs include test and other extra classes |  Critical | Documentation | Patrick Wendell | Michael Armbrust |
| [SPARK-10649](https://issues.apache.org/jira/browse/SPARK-10649) | Streaming jobs unexpectedly inherits job group, job descriptions from context starting thread |  Major | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-10648](https://issues.apache.org/jira/browse/SPARK-10648) | Spark-SQL JDBC fails to set a default precision and scale when they are not defined in an oracle schema. |  Major | SQL | Travis Hegner | Travis Hegner |
| [SPARK-10642](https://issues.apache.org/jira/browse/SPARK-10642) | Crash in rdd.lookup() with "java.lang.Long cannot be cast to java.lang.Integer" |  Major | PySpark | Thouis Jones | Liang-Chi Hsieh |
| [SPARK-10640](https://issues.apache.org/jira/browse/SPARK-10640) | Spark history server fails to parse taskEndReasonFromJson TaskCommitDenied |  Blocker | Spark Core | Thomas Graves | Andrew Or |
| [SPARK-10639](https://issues.apache.org/jira/browse/SPARK-10639) | Need to convert UDAF's result from scala to sql type |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-10624](https://issues.apache.org/jira/browse/SPARK-10624) | TakeOrderedAndProjectNode output is not ordered |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-10623](https://issues.apache.org/jira/browse/SPARK-10623) | NoSuchElementException thrown when ORC predicate push-down is turned on |  Blocker | SQL | Ram Sriharsha | Zhan Zhang |
| [SPARK-10622](https://issues.apache.org/jira/browse/SPARK-10622) | Race condition between scheduler and YARN executor status update |  Critical | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-10619](https://issues.apache.org/jira/browse/SPARK-10619) | Can't sort columns on Executor Page |  Major | Web UI | Thomas Graves | Thomas Graves |
| [SPARK-10613](https://issues.apache.org/jira/browse/SPARK-10613) | Reduce LocalNode tests dependency on SQLContext |  Major | SQL, Tests | Andrew Or | Andrew Or |
| [SPARK-10611](https://issues.apache.org/jira/browse/SPARK-10611) | Configuration object thread safety issue in NewHadoopRDD |  Critical | Spark Core | Mingyu Kim | Mingyu Kim |
| [SPARK-10598](https://issues.apache.org/jira/browse/SPARK-10598) | RoutingTablePartition toMessage method refers to bytes instead of bits |  Trivial | Documentation | Robin East | Robin East |
| [SPARK-10594](https://issues.apache.org/jira/browse/SPARK-10594) | ApplicationMaster "--help" references the removed "--num-executors" option |  Trivial | YARN | Erick Tryzelaar | Erick Tryzelaar |
| [SPARK-10593](https://issues.apache.org/jira/browse/SPARK-10593) | sql lateral view same name gives wrong value |  Blocker | SQL | Davies Liu | Davies Liu |
| [SPARK-10589](https://issues.apache.org/jira/browse/SPARK-10589) | Add defense against external site framing |  Minor | Web UI | Sean Owen | Sean Owen |
| [SPARK-10584](https://issues.apache.org/jira/browse/SPARK-10584) | Documentation about the compatible Hive version is wrong. |  Minor | Documentation, SQL | Kousuke Saruta | Kousuke Saruta |
| [SPARK-10581](https://issues.apache.org/jira/browse/SPARK-10581) | Groups are not resolved in scaladoc for org.apache.spark.sql.Column |  Minor | Documentation | Jacek Laskowski | Pravin Gadakh |
| [SPARK-10573](https://issues.apache.org/jira/browse/SPARK-10573) | IndexToString transformSchema adds output field as DoubleType |  Major | ML | Nick Pritchard | Nick Pritchard |
| [SPARK-10566](https://issues.apache.org/jira/browse/SPARK-10566) | SnappyCompressionCodec init exception handling masks important error information |  Minor | Input/Output | Daniel Imfeld | Daniel Imfeld |
| [SPARK-10564](https://issues.apache.org/jira/browse/SPARK-10564) | ThreadingSuite: assertions in threads don't fail the test |  Critical | Tests | Andrew Or | Andrew Or |
| [SPARK-10563](https://issues.apache.org/jira/browse/SPARK-10563) | SparkContext's local properties should be cloned when inherited |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-10562](https://issues.apache.org/jira/browse/SPARK-10562) | .partitionBy() creates the metastore partition columns in all lowercase, but persists the data path as MixedCase resulting in an error when the data is later attempted to query. |  Major | SQL | Jason Pohl | Wenchen Fan |
| [SPARK-10556](https://issues.apache.org/jira/browse/SPARK-10556) | SBT build explicitly sets Scala version, which can conflict with SBT's own scala version |  Minor | Build | Ahir Reddy | Ahir Reddy |
| [SPARK-10554](https://issues.apache.org/jira/browse/SPARK-10554) | Potential NPE with ShutdownHook |  Minor | Block Manager | Nithin Asokan | Nithin Asokan |
| [SPARK-10549](https://issues.apache.org/jira/browse/SPARK-10549) | scala 2.11 spark on yarn with security - Repl doesn't work |  Major | Spark Shell | Thomas Graves | Thomas Graves |
| [SPARK-10548](https://issues.apache.org/jira/browse/SPARK-10548) | Concurrent execution in SQL does not work |  Blocker | SQL | Andrew Or | Andrew Or |
| [SPARK-10543](https://issues.apache.org/jira/browse/SPARK-10543) | Peak Execution Memory Quantile should be Per-task Basis |  Minor | Spark Core | Sen Fang | Sen Fang |
| [SPARK-10542](https://issues.apache.org/jira/browse/SPARK-10542) | The  PySpark 1.5 closure serializer can't serialize a namedtuple instance. |  Critical | PySpark | Davies Liu | Davies Liu |
| [SPARK-10540](https://issues.apache.org/jira/browse/SPARK-10540) | HadoopFsRelationTest's "test all data types" is flaky |  Major | SQL | Yin Huai | Cheng Lian |
| [SPARK-10539](https://issues.apache.org/jira/browse/SPARK-10539) | Intersection Optimization is Wrong |  Blocker | SQL | Michael Armbrust | Yijie Shen |
| [SPARK-10534](https://issues.apache.org/jira/browse/SPARK-10534) | ORDER BY clause allows only columns that are present in SELECT statement |  Major | SQL | Michal Cwienczek | Dilip Biswal |
| [SPARK-10533](https://issues.apache.org/jira/browse/SPARK-10533) | DataFrame filter is not handling float/double with Scientific Notation 'e' / 'E' |  Minor | SQL | Rishabh Bhardwaj | Adrian Wang |
| [SPARK-10522](https://issues.apache.org/jira/browse/SPARK-10522) | Nanoseconds part of Timestamp should be positive in parquet |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-10515](https://issues.apache.org/jira/browse/SPARK-10515) | When killing executor, the pending replacement executors will be lost |  Major | Spark Core | KaiXinXIaoLei | KaiXinXIaoLei |
| [SPARK-10514](https://issues.apache.org/jira/browse/SPARK-10514) | Minimum ratio of registered resources [ spark.scheduler.minRegisteredResourcesRatio] is not enabled for Mesos Coarse Grained mode |  Major | Mesos | Akash Mishra | Akash Mishra |
| [SPARK-10511](https://issues.apache.org/jira/browse/SPARK-10511) | Source releases should not include maven jars |  Blocker | Build | Patrick Wendell | Luciano Resende |
| [SPARK-10497](https://issues.apache.org/jira/browse/SPARK-10497) | Release utils does not work with new version of jira-python library |  Minor | Build | holdenk | holdenk |
| [SPARK-10495](https://issues.apache.org/jira/browse/SPARK-10495) | For json data source, date values are saved as int strings |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-10494](https://issues.apache.org/jira/browse/SPARK-10494) | Multiple Python UDFs together with aggregation or sort merge join may cause OOM (failed to acquire memory) |  Critical | PySpark, SQL | Davies Liu | Reynold Xin |
| [SPARK-10484](https://issues.apache.org/jira/browse/SPARK-10484) | [Spark SQL]  Come across lost task(timeout) or GC OOM error when two tables do cross join |  Critical | SQL | Yi Zhou | Cheng Hao |
| [SPARK-10480](https://issues.apache.org/jira/browse/SPARK-10480) | ML.LinearRegressionModel.copy() can not use argument "extra" |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-10479](https://issues.apache.org/jira/browse/SPARK-10479) | LogisticRegression copy should copy model summary if available |  Minor | ML | Feynman Liang | Yanbo Liang |
| [SPARK-10474](https://issues.apache.org/jira/browse/SPARK-10474) | TungstenAggregation cannot acquire memory for pointer array after switching to sort-based |  Blocker | SQL | Yi Zhou | Andrew Or |
| [SPARK-10472](https://issues.apache.org/jira/browse/SPARK-10472) | UserDefinedType.typeName gives wrong result |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-10470](https://issues.apache.org/jira/browse/SPARK-10470) | ml.IsotonicRegressionModel.copy did not set parent |  Major | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-10466](https://issues.apache.org/jira/browse/SPARK-10466) | UnsafeRow exception in Sort-Based Shuffle with data spill |  Blocker | SQL | Cheng Hao | Cheng Hao |
| [SPARK-10454](https://issues.apache.org/jira/browse/SPARK-10454) | Flaky test: o.a.s.scheduler.DAGSchedulerSuite.late fetch failures don't cause multiple concurrent attempts for the same map stage |  Critical | Scheduler, Spark Core | Pete Robbins | Pete Robbins |
| [SPARK-10449](https://issues.apache.org/jira/browse/SPARK-10449) | StructType.merge shouldn't merge DecimalTypes with different precisions and/or scales |  Major | SQL | Cheng Lian | holdenk |
| [SPARK-10442](https://issues.apache.org/jira/browse/SPARK-10442) | select cast('false' as boolean) returns true |  Critical | SQL | Yin Huai | Wenchen Fan |
| [SPARK-10441](https://issues.apache.org/jira/browse/SPARK-10441) | Cannot write timestamp to JSON |  Critical | SQL | Yin Huai | Yin Huai |
| [SPARK-10437](https://issues.apache.org/jira/browse/SPARK-10437) | Support aggregation expressions in Order By |  Major | SQL | Harish Butani | Liang-Chi Hsieh |
| [SPARK-10435](https://issues.apache.org/jira/browse/SPARK-10435) | SparkSubmit should fail fast for Mesos cluster mode with R |  Major | Spark Submit | Andrew Or | Andrew Or |
| [SPARK-10434](https://issues.apache.org/jira/browse/SPARK-10434) | Parquet compatibility with 1.4 is broken when writing arrays that may contain nulls |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-10432](https://issues.apache.org/jira/browse/SPARK-10432) | spark.port.maxRetries documentation is unclear |  Minor | Documentation | Thomas Graves | Thomas Graves |
| [SPARK-10431](https://issues.apache.org/jira/browse/SPARK-10431) | Flaky test: o.a.s.metrics.InputOutputMetricsSuite - input metrics with cache and coalesce |  Critical | Tests | Pete Robbins | Pete Robbins |
| [SPARK-10430](https://issues.apache.org/jira/browse/SPARK-10430) | AccumulableInfo and RDDOperationScope violates hashCode + equals contract |  Minor | Spark Core | Vinod KC | Vinod KC |
| [SPARK-10421](https://issues.apache.org/jira/browse/SPARK-10421) | tachyon dependency can leak different curator artifact versions |  Minor | Build | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-10417](https://issues.apache.org/jira/browse/SPARK-10417) | Iterating through Column results in infinite loop |  Minor | PySpark | Zoltan Toth | Alexey Grishchenko |
| [SPARK-10412](https://issues.apache.org/jira/browse/SPARK-10412) | In SQL tab, show execution memory per physical operator |  Major | SQL, Web UI | Andrew Or | Wenchen Fan |
| [SPARK-10403](https://issues.apache.org/jira/browse/SPARK-10403) | UnsafeRowSerializer can't work with UnsafeShuffleManager (tungsten-sort) |  Major | SQL | Davies Liu | Josh Rosen |
| [SPARK-10392](https://issues.apache.org/jira/browse/SPARK-10392) | Pyspark - Wrong DateType support on JDBC connection |  Major | PySpark, SQL | Maciej Bryński | Alexey Grishchenko |
| [SPARK-10381](https://issues.apache.org/jira/browse/SPARK-10381) | Infinite loop when OutputCommitCoordination is enabled and OutputCommitter.commitTask throws exception |  Critical | Scheduler | Josh Rosen | Josh Rosen |
| [SPARK-10379](https://issues.apache.org/jira/browse/SPARK-10379) | UnsafeShuffleExternalSorter should preserve first page |  Critical | SQL | Davies Liu | Davies Liu |
| [SPARK-10351](https://issues.apache.org/jira/browse/SPARK-10351) | UnsafeRow.getUTF8String should handle off-heap backed UnsafeRow |  Critical | SQL | Feynman Liang | Feynman Liang |
| [SPARK-10337](https://issues.apache.org/jira/browse/SPARK-10337) | Views are broken |  Critical | SQL | Michael Armbrust | Wenchen Fan |
| [SPARK-10332](https://issues.apache.org/jira/browse/SPARK-10332) | spark-submit to yarn doesn't fail if executors is 0 |  Minor | Spark Submit, YARN | Thomas Graves | holdenk |
| [SPARK-10330](https://issues.apache.org/jira/browse/SPARK-10330) | Use SparkHadoopUtil TaskAttemptContext reflection methods in more places |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-10327](https://issues.apache.org/jira/browse/SPARK-10327) | Cache Table is not working while subquery has alias in its project list |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-10317](https://issues.apache.org/jira/browse/SPARK-10317) | start-history-server.sh CLI parsing incompatible with HistoryServer's arg parsing |  Trivial | Spark Core | Steve Loughran | Rekha Joshi |
| [SPARK-10316](https://issues.apache.org/jira/browse/SPARK-10316) | respect non-deterministic expressions in PhysicalOperation |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10311](https://issues.apache.org/jira/browse/SPARK-10311) | In cluster mode, AppId and AttemptId should be update when ApplicationMaster is new |  Major | Streaming | meiyoula | meiyoula |
| [SPARK-10310](https://issues.apache.org/jira/browse/SPARK-10310) | [Spark SQL] All result records will be popluated into ONE line during the script transform due to missing the correct line/filed delimiter |  Critical | SQL | Yi Zhou | zhichao-li |
| [SPARK-10304](https://issues.apache.org/jira/browse/SPARK-10304) | Partition discovery does not throw an exception if the dir structure is invalid |  Major | SQL | Yin Huai | Liang-Chi Hsieh |
| [SPARK-10301](https://issues.apache.org/jira/browse/SPARK-10301) | For struct type, if parquet's global schema has less fields than a file's schema, data reading will fail |  Critical | SQL | Yin Huai | Cheng Lian |
| [SPARK-10251](https://issues.apache.org/jira/browse/SPARK-10251) | Some internal spark classes are not registered with kryo |  Major | Spark Core | Soren Macbeth | Ram Sriharsha |
| [SPARK-10227](https://issues.apache.org/jira/browse/SPARK-10227) | sbt build on Scala 2.11 fails |  Major | Spark Core | Luc Bourlier | Luc Bourlier |
| [SPARK-10224](https://issues.apache.org/jira/browse/SPARK-10224) | BlockGenerator may lost data in the last block |  Critical | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-10185](https://issues.apache.org/jira/browse/SPARK-10185) | Spark SQL does not handle comma separates paths on Hadoop FileSystem |  Major | SQL | koert kuipers | Koert Kuipers |
| [SPARK-10182](https://issues.apache.org/jira/browse/SPARK-10182) | GeneralizedLinearModel doesn't unpersist cached data |  Minor | MLlib | Vyacheslav Baranov | Vyacheslav Baranov |
| [SPARK-10176](https://issues.apache.org/jira/browse/SPARK-10176) | Show partially analyzed plan when checkAnswer df fails to resolve |  Major | SQL, Tests | Michael Armbrust | Michael Armbrust |
| [SPARK-10172](https://issues.apache.org/jira/browse/SPARK-10172) | History Server web UI gets messed up when sorting on any column |  Minor | Web UI | Min Shen | Josiah Samuel Sathiadass |
| [SPARK-10170](https://issues.apache.org/jira/browse/SPARK-10170) | Add DB2 JDBC dialect support |  Major | SQL | Suresh Thalamati | Suresh Thalamati |
| [SPARK-10162](https://issues.apache.org/jira/browse/SPARK-10162) | PySpark filters with datetimes mess up when datetimes have timezones. |  Major | PySpark | Kevin Cox | Alexey Grishchenko |
| [SPARK-10155](https://issues.apache.org/jira/browse/SPARK-10155) | Memory leak in SQL parsers |  Critical | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-10116](https://issues.apache.org/jira/browse/SPARK-10116) | XORShiftRandom should generate uniform seeds |  Minor | Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-10082](https://issues.apache.org/jira/browse/SPARK-10082) | Validate i, j in apply (Dense and Sparse Matrices) |  Minor | MLlib | Manoj Kumar | Manoj Kumar |
| [SPARK-10058](https://issues.apache.org/jira/browse/SPARK-10058) | Flaky test: HeartbeatReceiverSuite: normal heartbeat |  Critical | Spark Core, Tests | Davies Liu | Shixiong Zhu |
| [SPARK-10046](https://issues.apache.org/jira/browse/SPARK-10046) | Hive warehouse dir not set in current directory when not providing hive-site.xml |  Major | Spark Core, SQL | Antonio Murgia | Xin Wu |
| [SPARK-10034](https://issues.apache.org/jira/browse/SPARK-10034) | add regression test for Sort on Aggregate |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10004](https://issues.apache.org/jira/browse/SPARK-10004) | Shuffle service should make sure applications are allowed to read shuffle data |  Critical | Shuffle | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-10003](https://issues.apache.org/jira/browse/SPARK-10003) | Improve readability of DAGScheduler |  Major | Scheduler | Andrew Or | Andrew Or |
| [SPARK-9969](https://issues.apache.org/jira/browse/SPARK-9969) | Remove old Yarn MR classpath api support for Spark Yarn client |  Minor | YARN | Saisai Shao | Saisai Shao |
| [SPARK-9924](https://issues.apache.org/jira/browse/SPARK-9924) | checkForLogs and cleanLogs are scheduled at fixed rate and can get piled up |  Major | Web UI | Rohit Agarwal | Rohit Agarwal |
| [SPARK-9869](https://issues.apache.org/jira/browse/SPARK-9869) | Flaky test: o.a.s.streaming.InputStreamSuite - socket input stream |  Critical | Streaming | Josh Rosen | Pete Robbins |
| [SPARK-9794](https://issues.apache.org/jira/browse/SPARK-9794) | ISO DateTime parser is too strict |  Major | SQL | Alex Angelini | Kevin Cox |
| [SPARK-9793](https://issues.apache.org/jira/browse/SPARK-9793) | PySpark DenseVector, SparseVector should override \_\_eq\_\_ and \_\_hash\_\_ |  Critical | ML, PySpark | Joseph K. Bradley | Yanbo Liang |
| [SPARK-9735](https://issues.apache.org/jira/browse/SPARK-9735) | Auto infer partition schema of HadoopFsRelation should should respected the user specified one |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-9724](https://issues.apache.org/jira/browse/SPARK-9724) | Avoid unnecessary redirects in the Spark Web UI |  Minor | Web UI | Rohit Agarwal | Rohit Agarwal |
| [SPARK-9708](https://issues.apache.org/jira/browse/SPARK-9708) | Spark should create local temporary directories in Mesos sandbox when launched with Mesos |  Major | Mesos | Timothy Chen | Chris Bannister |
| [SPARK-9672](https://issues.apache.org/jira/browse/SPARK-9672) | Drivers run in cluster mode on mesos may not have spark-env variables available |  Minor | Mesos, Spark Submit | Patrick Shields | Patrick Shields |
| [SPARK-9643](https://issues.apache.org/jira/browse/SPARK-9643) | Error serializing datetimes with timezones using Dataframes and Parquet |  Major | PySpark | Alex Angelini | Alex Angelini |
| [SPARK-9596](https://issues.apache.org/jira/browse/SPARK-9596) | Avoid reloading Hadoop classes like UserGroupInformation |  Major | SQL | Tao Wang | Tao Wang |
| [SPARK-9591](https://issues.apache.org/jira/browse/SPARK-9591) | Job failed for exception during getting Broadcast variable |  Major | Spark Core | jeanlyn | jeanlyn |
| [SPARK-9585](https://issues.apache.org/jira/browse/SPARK-9585) | HiveHBaseTableInputFormat can'be cached |  Major | Spark Core | meiyoula | meiyoula |
| [SPARK-9439](https://issues.apache.org/jira/browse/SPARK-9439) | ExternalShuffleService should be robust to NodeManager restarts in yarn |  Critical | Shuffle | Imran Rashid | Imran Rashid |
| [SPARK-9210](https://issues.apache.org/jira/browse/SPARK-9210) | checkValidAggregateExpression() throws exceptions with bad error messages |  Trivial | SQL | Simeon Simeonov | Yin Huai |
| [SPARK-9170](https://issues.apache.org/jira/browse/SPARK-9170) | ORC data source creates a schema with lowercase table names |  Major | SQL | Peter Rudenko | Liang-Chi Hsieh |
| [SPARK-9078](https://issues.apache.org/jira/browse/SPARK-9078) | Use of non-standard LIMIT keyword in JDBC tableExists code |  Minor | SQL | Robert Beauchemin | Suresh Thalamati |
| [SPARK-9034](https://issues.apache.org/jira/browse/SPARK-9034) | Reflect field names defined in GenericUDTF |  Major | SQL | Takeshi Yamamuro | Navis |
| [SPARK-8951](https://issues.apache.org/jira/browse/SPARK-8951) | support CJK characters in collect() |  Minor | SparkR | Jaehong Choi | Jaehong Choi |
| [SPARK-8889](https://issues.apache.org/jira/browse/SPARK-8889) | showDagViz will cause java.lang.OutOfMemoryError: Java heap space |  Minor | Web UI | cen yuhai | Rekha Joshi |
| [SPARK-8730](https://issues.apache.org/jira/browse/SPARK-8730) | Deser primitive class with Java serialization |  Critical | Spark Core | Eugen Cepoi | Eugen Cepoi |
| [SPARK-8707](https://issues.apache.org/jira/browse/SPARK-8707) | RDD#toDebugString fails if any cached RDD has invalid partitions |  Major | Spark Core | Aaron Davidson | Navis |
| [SPARK-8654](https://issues.apache.org/jira/browse/SPARK-8654) | Analysis exception when using "NULL IN (...)": invalid cast |  Minor | SQL | Santiago M. Mola | Dilip Biswal |
| [SPARK-8632](https://issues.apache.org/jira/browse/SPARK-8632) | Poor Python UDF performance because of RDD caching |  Blocker | PySpark, SQL | Justin Uang | Davies Liu |
| [SPARK-8567](https://issues.apache.org/jira/browse/SPARK-8567) | Flaky test: o.a.s.sql.hive.HiveSparkSubmitSuite --jars |  Blocker | SQL, Tests | Yin Huai | Yin Huai |
| [SPARK-8386](https://issues.apache.org/jira/browse/SPARK-8386) | DataFrame and JDBC regression |  Critical | SQL | Peter Haumer | Huaxin Gao |
| [SPARK-8167](https://issues.apache.org/jira/browse/SPARK-8167) | Tasks that fail due to YARN preemption can cause job failure |  Blocker | Scheduler, YARN | Patrick Woody | Matt Cheah |
| [SPARK-7989](https://issues.apache.org/jira/browse/SPARK-7989) | Fix flaky tests in ExternalShuffleServiceSuite and SparkListenerWithClusterSuite |  Critical | Spark Core, Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7869](https://issues.apache.org/jira/browse/SPARK-7869) | Spark Data Frame Fails to Load Postgres Tables with JSONB DataType Columns |  Minor | PySpark, SQL | Brad Willard | Alexey Grishchenko |
| [SPARK-7736](https://issues.apache.org/jira/browse/SPARK-7736) | Exception not failing Python applications (in yarn cluster mode) |  Major | YARN | Shay Rojansky | Marcelo Vanzin |
| [SPARK-7336](https://issues.apache.org/jira/browse/SPARK-7336) | Sometimes the status of finished job show on JobHistory UI will be active, and never update. |  Minor | Web UI | ShaoChuan | ShaoChuan |
| [SPARK-7214](https://issues.apache.org/jira/browse/SPARK-7214) | Unrolling never evicts blocks when MemoryStore is nearly full |  Minor | Block Manager | Charles Reiss | Andrew Or |
| [SPARK-6740](https://issues.apache.org/jira/browse/SPARK-6740) | SQL operator and condition precedence is not honoured |  Major | SQL | Santiago M. Mola | Santiago M. Mola |
| [SPARK-5966](https://issues.apache.org/jira/browse/SPARK-5966) | Spark-submit deploy-mode incorrectly affecting submission when master = local[4] |  Critical | Spark Submit | Tathagata Das | kevin yu |
| [SPARK-5945](https://issues.apache.org/jira/browse/SPARK-5945) | Spark should not retry a stage infinitely on a FetchFailedException |  Critical | Spark Core | Imran Rashid | Ilya Ganelin |
| [SPARK-5754](https://issues.apache.org/jira/browse/SPARK-5754) | Spark AM not launching on Windows |  Major | Windows, YARN | Inigo | Carsten Blank |
| [SPARK-5391](https://issues.apache.org/jira/browse/SPARK-5391) | SparkSQL fails to create tables with custom JSON SerDe |  Major | SQL | David Ross | Davies Liu |
| [SPARK-5259](https://issues.apache.org/jira/browse/SPARK-5259) | Do not submit stage until its dependencies map outputs are registered |  Critical | Spark Core | SuYan | SuYan |
| [SPARK-2960](https://issues.apache.org/jira/browse/SPARK-2960) | Spark executables fail to start via symlinks |  Minor | Deploy | Shay Rojansky | Saisai Shao |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-11442](https://issues.apache.org/jira/browse/SPARK-11442) | Reduce numSlices for local metrics test of SparkListenerSuite |  Minor | Tests | Ted Yu | Ted Yu |
| [SPARK-10763](https://issues.apache.org/jira/browse/SPARK-10763) | Update Java MLLIB/ML tests to use simplified dataframe construction |  Minor | ML, MLlib | holdenk | holdenk |
| [SPARK-10247](https://issues.apache.org/jira/browse/SPARK-10247) | Cleanup DAGSchedulerSuite "ignore late map task completion" |  Trivial | Scheduler, Tests | Imran Rashid | Imran Rashid |
| [SPARK-10013](https://issues.apache.org/jira/browse/SPARK-10013) | Remove Java assert from Java unit tests |  Major | ML, MLlib | Joseph K. Bradley | holdenk |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-11541](https://issues.apache.org/jira/browse/SPARK-11541) | Break JdbcDialects.scala into multiple files and mark various dialects as private |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11540](https://issues.apache.org/jira/browse/SPARK-11540) | QueryExecutionListener |  Blocker | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11528](https://issues.apache.org/jira/browse/SPARK-11528) | Typed-safe aggregations |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-11510](https://issues.apache.org/jira/browse/SPARK-11510) | Remove some SQL aggregation tests |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11505](https://issues.apache.org/jira/browse/SPARK-11505) | Break aggregate functions into multiple files |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11504](https://issues.apache.org/jira/browse/SPARK-11504) | API audit for distributeBy and localSort |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11490](https://issues.apache.org/jira/browse/SPARK-11490) | variance should alias var\_samp instead of var\_pop |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11473](https://issues.apache.org/jira/browse/SPARK-11473) | R-like summary statistics with intercept for OLS via normal equation solver |  Major | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-11451](https://issues.apache.org/jira/browse/SPARK-11451) | Support single distinct count on multiple columns |  Minor | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-11443](https://issues.apache.org/jira/browse/SPARK-11443) | Blank lines should be reserved in include\_example |  Major | Documentation | Xusen Yin | Xusen Yin |
| [SPARK-11404](https://issues.apache.org/jira/browse/SPARK-11404) | groupBy on column expressions |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-11383](https://issues.apache.org/jira/browse/SPARK-11383) | Replace example code in mllib-naive-bayes.md/mllib-isotonic-regression.md using include\_example |  Major | Documentation | Xusen Yin | Rishabh Bhardwaj |
| [SPARK-11380](https://issues.apache.org/jira/browse/SPARK-11380) | Replace example code in mllib-frequent-pattern-mining.md using include\_example |  Major | Documentation, MLlib | Xiangrui Meng | Pravin Gadakh |
| [SPARK-11349](https://issues.apache.org/jira/browse/SPARK-11349) | Support transform string label for RFormula |  Major | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-11347](https://issues.apache.org/jira/browse/SPARK-11347) | Support for joining two datasets, returning a tuple of objects |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-11313](https://issues.apache.org/jira/browse/SPARK-11313) | Implement cogroup |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11289](https://issues.apache.org/jira/browse/SPARK-11289) | Substitute code examples of tf-idf and word2vec with include\_example |  Minor | Documentation, ML, MLlib | Xusen Yin | Xusen Yin |
| [SPARK-11260](https://issues.apache.org/jira/browse/SPARK-11260) | Add 'with' API |  Minor | SparkR | Weiqiang Zhuang | Weiqiang Zhuang |
| [SPARK-11217](https://issues.apache.org/jira/browse/SPARK-11217) | Model import/export for non-meta estimators and transformers |  Major | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-11216](https://issues.apache.org/jira/browse/SPARK-11216) | add encoder/decoder for external row |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11116](https://issues.apache.org/jira/browse/SPARK-11116) | Initial API Draft |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-11112](https://issues.apache.org/jira/browse/SPARK-11112) | DAG visualization: display RDD callsite |  Critical | Web UI | Andrew Or | Andrew Or |
| [SPARK-11098](https://issues.apache.org/jira/browse/SPARK-11098) | RPC message ordering is not guaranteed |  Major | Spark Core | Reynold Xin | Shixiong Zhu |
| [SPARK-11096](https://issues.apache.org/jira/browse/SPARK-11096) | Post-hoc review Netty based RPC implementation - round 2 |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-11090](https://issues.apache.org/jira/browse/SPARK-11090) | Initial code generated construction of Product classes from InternalRow |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-11079](https://issues.apache.org/jira/browse/SPARK-11079) | Post-hoc review Netty based RPC implementation - round 1 |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-11078](https://issues.apache.org/jira/browse/SPARK-11078) | Ensure spilling tests are actually spilling |  Major | Spark Core, Tests | Andrew Or | Andrew Or |
| [SPARK-11073](https://issues.apache.org/jira/browse/SPARK-11073) | Remove akka dependency from SecurityManager |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11053](https://issues.apache.org/jira/browse/SPARK-11053) | Remove use of KVIterator in SortBasedAggregationIterator |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-11017](https://issues.apache.org/jira/browse/SPARK-11017) | Support ImperativeAggregates in TungstenAggregate |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-10993](https://issues.apache.org/jira/browse/SPARK-10993) | Inital code generated encoder for product types |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-10988](https://issues.apache.org/jira/browse/SPARK-10988) | Reduce duplication in Aggregate2's expression rewriting logic |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-10984](https://issues.apache.org/jira/browse/SPARK-10984) | Simplify \*MemoryManager class structure |  Major | Spark Core | Andrew Or | Josh Rosen |
| [SPARK-10983](https://issues.apache.org/jira/browse/SPARK-10983) | Implement unified memory manager |  Critical | Spark Core | Andrew Or | Andrew Or |
| [SPARK-10979](https://issues.apache.org/jira/browse/SPARK-10979) | SparkR: Add merge to DataFrame |  Major | SparkR | Narine Kokhlikyan | Narine Kokhlikyan |
| [SPARK-10956](https://issues.apache.org/jira/browse/SPARK-10956) | Introduce common memory management interface for execution and storage |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-10941](https://issues.apache.org/jira/browse/SPARK-10941) | .Refactor AggregateFunction2 and AlgebraicAggregate interfaces to improve code clarity |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-10913](https://issues.apache.org/jira/browse/SPARK-10913) | Add attach() function for DataFrame |  Minor | SparkR | Weiqiang Zhuang | Weiqiang Zhuang |
| [SPARK-10905](https://issues.apache.org/jira/browse/SPARK-10905) | Export freqItems() for DataFrameStatFunctions in SparkR |  Minor | SparkR | rerngvit yanggratoke | rerngvit yanggratoke |
| [SPARK-10888](https://issues.apache.org/jira/browse/SPARK-10888) | Add as.DataFrame as a synonym for createDataFrame |  Minor | SparkR | Narine Kokhlikyan | Narine Kokhlikyan |
| [SPARK-10887](https://issues.apache.org/jira/browse/SPARK-10887) | Build HashedRelation outside of HashJoinNode |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-10836](https://issues.apache.org/jira/browse/SPARK-10836) | SparkR: Add sort function to dataframe |  Minor | SparkR | Narine Kokhlikyan | Narine Kokhlikyan |
| [SPARK-10765](https://issues.apache.org/jira/browse/SPARK-10765) | use new aggregate interface for hive UDAF |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10761](https://issues.apache.org/jira/browse/SPARK-10761) | Refactor DiskBlockObjectWriter to not require BlockId |  Minor | Block Manager | Josh Rosen | Josh Rosen |
| [SPARK-10752](https://issues.apache.org/jira/browse/SPARK-10752) | Implement corr() and cov in DataFrameStatFunctions |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-10710](https://issues.apache.org/jira/browse/SPARK-10710) | Remove ability to set spark.shuffle.spill=false and spark.sql.planner.externalSort=false |  Major | Shuffle | Josh Rosen | Josh Rosen |
| [SPARK-10708](https://issues.apache.org/jira/browse/SPARK-10708) | Consolidate SortShuffleManager and UnsafeShuffleManager |  Major | Shuffle | Josh Rosen | Josh Rosen |
| [SPARK-10704](https://issues.apache.org/jira/browse/SPARK-10704) | Rename HashShufflereader to BlockStoreShuffleReader |  Major | Shuffle | Josh Rosen | Josh Rosen |
| [SPARK-10641](https://issues.apache.org/jira/browse/SPARK-10641) | skewness and kurtosis support |  Major | ML, SQL | Jihong MA | Seth Hendrickson |
| [SPARK-10612](https://issues.apache.org/jira/browse/SPARK-10612) | Add prepare to LocalNode |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-10429](https://issues.apache.org/jira/browse/SPARK-10429) | MutableProjection should evaluate all expressions first and then update the mutable row |  Blocker | SQL | Yin Huai | Davies Liu |
| [SPARK-10382](https://issues.apache.org/jira/browse/SPARK-10382) | Implement a Jekyll tag to include example code in user guide |  Critical | Documentation, ML, MLlib | Xiangrui Meng | Xusen Yin |
| [SPARK-10289](https://issues.apache.org/jira/browse/SPARK-10289) | A direct write API for testing Parquet compatibility |  Major | SQL, Tests | Cheng Lian | Cheng Lian |
| [SPARK-10286](https://issues.apache.org/jira/browse/SPARK-10286) | Add @since annotation to pyspark.ml.param and pyspark.ml.\* |  Minor | Documentation, ML, PySpark | Xiangrui Meng | lidinghao |
| [SPARK-10284](https://issues.apache.org/jira/browse/SPARK-10284) | Add @since annotation to pyspark.ml.tuning |  Minor | Documentation, ML, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10283](https://issues.apache.org/jira/browse/SPARK-10283) | Add @since annotation to pyspark.ml.regression |  Minor | Documentation, ML, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10282](https://issues.apache.org/jira/browse/SPARK-10282) | Add @since annotation to pyspark.ml.recommendation |  Minor | Documentation, ML, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10281](https://issues.apache.org/jira/browse/SPARK-10281) | Add @since annotation to pyspark.ml.clustering |  Minor | Documentation, ML, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10279](https://issues.apache.org/jira/browse/SPARK-10279) | Add @since annotation to pyspark.mllib.util |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10278](https://issues.apache.org/jira/browse/SPARK-10278) | Add @since annotation to pyspark.mllib.tree |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10277](https://issues.apache.org/jira/browse/SPARK-10277) | Add @since annotation to pyspark.mllib.regression |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10276](https://issues.apache.org/jira/browse/SPARK-10276) | Add @since annotation to pyspark.mllib.recommendation |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10275](https://issues.apache.org/jira/browse/SPARK-10275) | Add @since annotation to pyspark.mllib.random |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10274](https://issues.apache.org/jira/browse/SPARK-10274) | Add @since annotation to pyspark.mllib.fpm |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10273](https://issues.apache.org/jira/browse/SPARK-10273) | Add @since annotation to pyspark.mllib.feature |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Noel Smith |
| [SPARK-10272](https://issues.apache.org/jira/browse/SPARK-10272) | Add @since annotation to pyspark.mllib.evaluation |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Noel Smith |
| [SPARK-10271](https://issues.apache.org/jira/browse/SPARK-10271) | Add @since annotation to pyspark.mllib.clustering |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Noel Smith |
| [SPARK-10269](https://issues.apache.org/jira/browse/SPARK-10269) | Add @since annotation to pyspark.mllib.classification |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Noel Smith |
| [SPARK-10265](https://issues.apache.org/jira/browse/SPARK-10265) | Add @Since annotation to ml.regression |  Minor | Documentation, ML | Xiangrui Meng | Ehsan Mohyedin Kermani |
| [SPARK-10261](https://issues.apache.org/jira/browse/SPARK-10261) | Add @Since annotation to ml.evaluation |  Minor | Documentation, ML | Xiangrui Meng | Tijo Thomas |
| [SPARK-10260](https://issues.apache.org/jira/browse/SPARK-10260) | Add @Since annotation to ml.clustering |  Minor | Documentation, ML | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10167](https://issues.apache.org/jira/browse/SPARK-10167) | We need to explicitly use transformDown when rewrite aggregation results |  Minor | SQL | Yin Huai | Josh Rosen |
| [SPARK-10079](https://issues.apache.org/jira/browse/SPARK-10079) | Make `column` and `col` functions be S4 functions |  Major | SparkR | Yu Ishikawa | Sun Rui |
| [SPARK-10051](https://issues.apache.org/jira/browse/SPARK-10051) | Support collecting data of StructType in DataFrame |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-10050](https://issues.apache.org/jira/browse/SPARK-10050) | Support collecting data of MapType in DataFrame |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-10049](https://issues.apache.org/jira/browse/SPARK-10049) | Support collecting data of ArraryType in DataFrame |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-10048](https://issues.apache.org/jira/browse/SPARK-10048) | Support arbitrary nested Java array in serde |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-10027](https://issues.apache.org/jira/browse/SPARK-10027) | Add Python API missing methods for ml.feature |  Major | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-10026](https://issues.apache.org/jira/browse/SPARK-10026) | Implement some common Params for regression in PySpark |  Major | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-10024](https://issues.apache.org/jira/browse/SPARK-10024) | Python API RF and GBT related params clear up |  Major | ML, MLlib, PySpark | Yanbo Liang | Kai Jiang |
| [SPARK-10023](https://issues.apache.org/jira/browse/SPARK-10023) | Unified DecisionTreeParams "checkpointInterval" between Scala and Python API. |  Major | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-9998](https://issues.apache.org/jira/browse/SPARK-9998) | Create local intersect operator |  Major | SQL | Reynold Xin | Shixiong Zhu |
| [SPARK-9997](https://issues.apache.org/jira/browse/SPARK-9997) | Create local Expand operator |  Major | SQL | Reynold Xin | Shixiong Zhu |
| [SPARK-9996](https://issues.apache.org/jira/browse/SPARK-9996) | Create local nested loop join operator |  Major | SQL | Reynold Xin | Shixiong Zhu |
| [SPARK-9994](https://issues.apache.org/jira/browse/SPARK-9994) | Create local TopK operator |  Major | SQL | Reynold Xin | Shixiong Zhu |
| [SPARK-9993](https://issues.apache.org/jira/browse/SPARK-9993) | Create local union operator |  Major | SQL | Reynold Xin | Shixiong Zhu |
| [SPARK-9992](https://issues.apache.org/jira/browse/SPARK-9992) | Create local sample operator |  Major | SQL | Reynold Xin | Shixiong Zhu |
| [SPARK-9991](https://issues.apache.org/jira/browse/SPARK-9991) | Create local limit operator |  Major | SQL | Reynold Xin | Shixiong Zhu |
| [SPARK-9990](https://issues.apache.org/jira/browse/SPARK-9990) | Create local hash join operator |  Major | SQL | Reynold Xin | Shixiong Zhu |
| [SPARK-9986](https://issues.apache.org/jira/browse/SPARK-9986) | Create a simple test framework for local operators |  Major | SQL | Reynold Xin | Shixiong Zhu |
| [SPARK-9984](https://issues.apache.org/jira/browse/SPARK-9984) | Create local physical operator interface |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-9954](https://issues.apache.org/jira/browse/SPARK-9954) | Vector.hashCode should use nonzeros |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-9925](https://issues.apache.org/jira/browse/SPARK-9925) | Set SQLConf.SHUFFLE\_PARTITIONS.key correctly for tests |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-9861](https://issues.apache.org/jira/browse/SPARK-9861) | Join: Determine the number of reducers used by a shuffle join operator at runtime |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-9859](https://issues.apache.org/jira/browse/SPARK-9859) | Aggregation: Determine the number of reducers at runtime |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-9858](https://issues.apache.org/jira/browse/SPARK-9858) | Introduce an ExchangeCoordinator to estimate the number of post-shuffle partitions. |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-9852](https://issues.apache.org/jira/browse/SPARK-9852) | Let reduce tasks fetch multiple map output partitions |  Major | Spark Core, SQL | Matei Zaharia | Matei Zaharia |
| [SPARK-9851](https://issues.apache.org/jira/browse/SPARK-9851) | Support submitting map stages individually in DAGScheduler |  Major | Spark Core, SQL | Matei Zaharia | Matei Zaharia |
| [SPARK-9836](https://issues.apache.org/jira/browse/SPARK-9836) | Provide R-like summary statistics for ordinary least squares via normal equation solver |  Critical | ML | Xiangrui Meng | Yanbo Liang |
| [SPARK-9808](https://issues.apache.org/jira/browse/SPARK-9808) | Remove hash shuffle file consolidation |  Major | Shuffle, Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-9741](https://issues.apache.org/jira/browse/SPARK-9741) | approx count distinct function |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-9740](https://issues.apache.org/jira/browse/SPARK-9740) | first/last aggregate NULL behavior |  Major | SQL | Herman van Hovell | Yin Huai |
| [SPARK-9681](https://issues.apache.org/jira/browse/SPARK-9681) | Support R feature interactions in RFormula |  Major | ML, SparkR | Eric Liang | Eric Liang |
| [SPARK-9617](https://issues.apache.org/jira/browse/SPARK-9617) | Implement json\_tuple |  Minor | SQL | Nathan Howell | Nathan Howell |
| [SPARK-9492](https://issues.apache.org/jira/browse/SPARK-9492) | LogisticRegression in R should provide model statistics |  Major | ML, R | Eric Liang | Yanbo Liang |
| [SPARK-9401](https://issues.apache.org/jira/browse/SPARK-9401) | Fully implement code generation for ConcatWs |  Major | SQL | Reynold Xin | Yijie Shen |
| [SPARK-9400](https://issues.apache.org/jira/browse/SPARK-9400) | Implement code generation for StringLocate |  Major | SQL | Reynold Xin | Davies Liu |
| [SPARK-9392](https://issues.apache.org/jira/browse/SPARK-9392) | Dataframe drop should work on unresolved columns |  Critical | SQL | Michael Armbrust | Yanbo Liang |
| [SPARK-9298](https://issues.apache.org/jira/browse/SPARK-9298) | corr aggregate functions |  Major | SQL | Yin Huai | Liang-Chi Hsieh |
| [SPARK-9296](https://issues.apache.org/jira/browse/SPARK-9296) | variance, var\_pop, and var\_samp aggregate functions |  Major | SQL | Yin Huai | Seth Hendrickson |
| [SPARK-9280](https://issues.apache.org/jira/browse/SPARK-9280) | New HiveContext object unexpectedly loads configuration settings from history |  Major | SQL | Tien-Dung LE | Davies Liu |
| [SPARK-9241](https://issues.apache.org/jira/browse/SPARK-9241) | Supporting multiple DISTINCT columns |  Critical | SQL | Yin Huai | Herman van Hovell |
| [SPARK-9162](https://issues.apache.org/jira/browse/SPARK-9162) | Implement code generation for ScalaUDF |  Major | SQL | Reynold Xin | Liang-Chi Hsieh |
| [SPARK-8887](https://issues.apache.org/jira/browse/SPARK-8887) | Explicitly define which data types can be used as dynamic partition columns |  Major | SQL | Cheng Lian | Yijie Shen |
| [SPARK-8848](https://issues.apache.org/jira/browse/SPARK-8848) | Write Parquet LISTs and MAPs conforming to Parquet format spec |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-8673](https://issues.apache.org/jira/browse/SPARK-8673) | Launcher: add support for monitoring launched applications |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-8552](https://issues.apache.org/jira/browse/SPARK-8552) | Using incorrect database in multiple sessions |  Critical | SQL | Yi Tian | Davies Liu |
| [SPARK-8505](https://issues.apache.org/jira/browse/SPARK-8505) | Add settings to kick `lint-r` from `./dev/run-test.py` |  Major | SparkR | Yu Ishikawa | Yu Ishikawa |
| [SPARK-8345](https://issues.apache.org/jira/browse/SPARK-8345) | Add an SQL node as a feature transformer |  Major | ML | Xiangrui Meng | Yanbo Liang |
| [SPARK-8170](https://issues.apache.org/jira/browse/SPARK-8170) | Ctrl-C in pyspark shell doesn't kill running job |  Major | PySpark | Ashwin Shankar | Ashwin Shankar |
| [SPARK-7796](https://issues.apache.org/jira/browse/SPARK-7796) | Use the new RPC implementation by default |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7544](https://issues.apache.org/jira/browse/SPARK-7544) | pyspark.sql.types.Row should implement \_\_getitem\_\_ |  Minor | PySpark, SQL | Nicholas Chammas | Yanbo Liang |
| [SPARK-7402](https://issues.apache.org/jira/browse/SPARK-7402) | JSON serialization of standard params |  Critical | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7160](https://issues.apache.org/jira/browse/SPARK-7160) | Support converting DataFrames to typed RDDs. |  Critical | SQL | Ray Ortigas | Ray Ortigas |
| [SPARK-7018](https://issues.apache.org/jira/browse/SPARK-7018) | Refactor dev/run-tests-jenkins into Python |  Major | Build, Project Infra | Brennon York | Brennon York |
| [SPARK-6723](https://issues.apache.org/jira/browse/SPARK-6723) | Model import/export for ChiSqSelector |  Minor | MLlib | Joseph K. Bradley | Jayant Shekhar |
| [SPARK-6548](https://issues.apache.org/jira/browse/SPARK-6548) | stddev\_pop and stddev\_samp aggregate functions |  Major | SQL | Reynold Xin | Jihong MA |
| [SPARK-6530](https://issues.apache.org/jira/browse/SPARK-6530) | ChiSqSelector transformer |  Major | ML | Xusen Yin | Xusen Yin |
| [SPARK-6488](https://issues.apache.org/jira/browse/SPARK-6488) | Support addition/multiplication in PySpark's BlockMatrix |  Major | MLlib, PySpark | Xiangrui Meng | Mike Dusenberry |
| [SPARK-6028](https://issues.apache.org/jira/browse/SPARK-6028) | Provide an alternative RPC implementation based on the network transport module |  Critical | Spark Core | Reynold Xin | Shixiong Zhu |
| [SPARK-5890](https://issues.apache.org/jira/browse/SPARK-5890) | Add QuantileDiscretizer |  Major | ML | Xiangrui Meng | Xusen Yin |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-11476](https://issues.apache.org/jira/browse/SPARK-11476) | Incorrect function referred to in MLib Random data generation documentation |  Minor | Documentation | Jason Blochowiak | Sean Owen |
| [SPARK-11092](https://issues.apache.org/jira/browse/SPARK-11092) | Add source URLs to API documentation. |  Trivial | Build, Documentation | Jakob Odersky | Jakob Odersky |
| [SPARK-11039](https://issues.apache.org/jira/browse/SPARK-11039) | Document all UI "retained\*" configurations |  Trivial | Documentation, Web UI | Nick Pritchard | Nick Pritchard |
| [SPARK-10782](https://issues.apache.org/jira/browse/SPARK-10782) | Duplicate examples for drop\_duplicates and DropDuplicates |  Trivial | Documentation | Asoka Diggs | Asoka Diggs |
| [SPARK-10760](https://issues.apache.org/jira/browse/SPARK-10760) | SparkR glm: the documentation in examples - family argument is missing |  Minor | SparkR | Narine Kokhlikyan | Narine Kokhlikyan |
| [SPARK-10670](https://issues.apache.org/jira/browse/SPARK-10670) | Link to each language's API in codetabs in ML docs: spark.ml |  Major | Documentation, MLlib | Joseph K. Bradley | yuhao yang |
| [SPARK-10669](https://issues.apache.org/jira/browse/SPARK-10669) | Link to each language's API in codetabs in ML docs: spark.mllib |  Major | Documentation, MLlib | Joseph K. Bradley | Xin Ren |
| [SPARK-10663](https://issues.apache.org/jira/browse/SPARK-10663) | Change test.toDF to test in Spark ML Programming Guide |  Trivial | Documentation | Matt Hagen | Matt Hagen |
| [SPARK-10660](https://issues.apache.org/jira/browse/SPARK-10660) | Doc describe error in the "Running Spark on YARN" page |  Trivial | Documentation | yangping wu | yangping wu |
| [SPARK-10631](https://issues.apache.org/jira/browse/SPARK-10631) | Add missing API doc in pyspark.mllib.linalg.Vector |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Vinod KC |
| [SPARK-10595](https://issues.apache.org/jira/browse/SPARK-10595) | Various ML programming guide cleanups post 1.5 |  Minor | Documentation, ML, MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-10469](https://issues.apache.org/jira/browse/SPARK-10469) | Document tungsten-sort |  Minor | Documentation | holdenk | holdenk |
| [SPARK-10402](https://issues.apache.org/jira/browse/SPARK-10402) | Add scaladoc for default values of params in ML |  Minor | Documentation, ML | holdenk | holdenk |
| [SPARK-10094](https://issues.apache.org/jira/browse/SPARK-10094) | Mark ML PySpark feature transformers as Experimental to match Scala |  Major | Documentation, ML, PySpark | Joseph K. Bradley | Noel Smith |
| [SPARK-10077](https://issues.apache.org/jira/browse/SPARK-10077) | Java package doc for spark.ml.feature |  Minor | Documentation, ML | Xiangrui Meng | holdenk |
| [SPARK-9798](https://issues.apache.org/jira/browse/SPARK-9798) | CrossValidatorModel Documentation Improvements |  Minor | ML | Feynman Liang | rerngvit yanggratoke |
| [SPARK-9014](https://issues.apache.org/jira/browse/SPARK-9014) | Allow Python spark API to use built-in exponential operator |  Minor | PySpark | Jon Speiser | Alexey Grishchenko |
| [SPARK-8829](https://issues.apache.org/jira/browse/SPARK-8829) | Improve expression performance |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5905](https://issues.apache.org/jira/browse/SPARK-5905) | Note requirements for certain RowMatrix methods in docs |  Trivial | Documentation, MLlib | Xiangrui Meng | Sean Owen |
| [SPARK-11493](https://issues.apache.org/jira/browse/SPARK-11493) | Remove Bitset in BytesToBytesMap |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-11172](https://issues.apache.org/jira/browse/SPARK-11172) | Close JsonParser/Generator in test |  Trivial | . | Ted Yu | Ted Yu |
| [SPARK-11037](https://issues.apache.org/jira/browse/SPARK-11037) | Cleanup Option usage in JdbcUtils |  Trivial | SQL | Rick Hillegas | Pravin Gadakh |
| [SPARK-11006](https://issues.apache.org/jira/browse/SPARK-11006) | Rename NullColumnAccess as NullColumnAccessor |  Trivial | SQL | Ted Yu | Ted Yu |
| [SPARK-10938](https://issues.apache.org/jira/browse/SPARK-10938) | Remove typeId in columnar cache |  Major | . | Davies Liu | Davies Liu |
| [SPARK-10398](https://issues.apache.org/jira/browse/SPARK-10398) | Migrate Spark download page to use new lua mirroring scripts |  Minor | Project Infra | Luciano Resende | Luciano Resende |
| [SPARK-10222](https://issues.apache.org/jira/browse/SPARK-10222) | More thoroughly deprecate Bagel in favor of GraphX |  Trivial | GraphX | Sean Owen | Sean Owen |
| [SPARK-9810](https://issues.apache.org/jira/browse/SPARK-9810) | Remove individual commit messages from the squash commit message |  Major | Build | Reynold Xin | Reynold Xin |
| [SPARK-9767](https://issues.apache.org/jira/browse/SPARK-9767) | Remove ConnectionManager |  Major | Shuffle, Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-9748](https://issues.apache.org/jira/browse/SPARK-9748) | Centriod typo in KMeansModel |  Trivial | MLlib | Bertrand Dechoux | Bertrand Dechoux |


