
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

## Release 1.6.0 - 2016-01-04



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10716](https://issues.apache.org/jira/browse/SPARK-10716) | spark-1.5.0-bin-hadoop2.6.tgz file doesn\'t uncompress on OS X due to hidden file |  Minor | Build, Deploy | Jack Jack | Sean Owen |
| [SPARK-10856](https://issues.apache.org/jira/browse/SPARK-10856) | SQL Server dialect needs to map java.sql.Timestamp to DATETIME instead of TIMESTAMP |  Major | SQL | Henrik Behrens | Liang-Chi Hsieh |
| [SPARK-11023](https://issues.apache.org/jira/browse/SPARK-11023) | Error initializing SparkContext. java.net.URISyntaxException |  Major | PySpark | Jose Antonio | Marcelo Vanzin |
| [SPARK-11481](https://issues.apache.org/jira/browse/SPARK-11481) | orderBy with multiple columns in WindowSpec does not work properly |  Major | PySpark, SQL | Jose Antonio | Davies Liu |
| [SPARK-11700](https://issues.apache.org/jira/browse/SPARK-11700) | Memory leak at SparkContext jobProgressListener stageIdToData map |  Critical | Spark Core, SQL | Kostas papageorgopoulos | Davies Liu |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-9964](https://issues.apache.org/jira/browse/SPARK-9964) | PySpark DataFrameReader accept RDD of String for JSON |  Minor | PySpark, SQL | Joseph K. Bradley | YBL |
| [SPARK-8472](https://issues.apache.org/jira/browse/SPARK-8472) | Python API for DCT |  Minor | ML | Feynman Liang | Yanbo Liang |
| [SPARK-9679](https://issues.apache.org/jira/browse/SPARK-9679) | Add python interface for ml.feature.StopWordsRemover |  Minor | ML | yuhao yang | holdenk |
| [SPARK-9669](https://issues.apache.org/jira/browse/SPARK-9669) | Support PySpark with Mesos Cluster mode |  Major | Mesos, PySpark | Timothy Chen | Timothy Chen |
| [SPARK-9834](https://issues.apache.org/jira/browse/SPARK-9834) | Normal equation solver for ordinary least squares |  Major | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-9654](https://issues.apache.org/jira/browse/SPARK-9654) | Add IndexToString in Pyspark |  Minor | ML, PySpark | holdenk | holdenk |
| [SPARK-10117](https://issues.apache.org/jira/browse/SPARK-10117) | Implement SQL data source API for reading LIBSVM data |  Major | ML | Xiangrui Meng | Kai Sasaki |
| [SPARK-9730](https://issues.apache.org/jira/browse/SPARK-9730) | Sort Merge Join for Full Outer Join |  Major | SQL | Josh Rosen | Davies Liu |
| [SPARK-10194](https://issues.apache.org/jira/browse/SPARK-10194) | SGD algorithms need convergenceTol parameter in Python |  Major | MLlib, PySpark | Joseph K. Bradley | Yanbo Liang |
| [SPARK-7685](https://issues.apache.org/jira/browse/SPARK-7685) | Handle high imbalanced data and apply weights to different samples in Logistic Regression |  Critical | ML | DB Tsai | DB Tsai |
| [SPARK-10516](https://issues.apache.org/jira/browse/SPARK-10516) | Add values as a property to DenseVector in PySpark |  Trivial | MLlib, PySpark | Xiangrui Meng | Vinod KC |
| [SPARK-9698](https://issues.apache.org/jira/browse/SPARK-9698) | Add feature interaction as a transformer |  Major | ML | Xiangrui Meng | Eric Liang |
| [SPARK-10674](https://issues.apache.org/jira/browse/SPARK-10674) | Flaky test: network.sasl.SaslIntegrationSuite.testNoSaslClient |  Critical | Spark Core | Xiangrui Meng | Marcelo Vanzin |
| [SPARK-8518](https://issues.apache.org/jira/browse/SPARK-8518) | Log-linear models for survival analysis |  Critical | ML | Xiangrui Meng | Yanbo Liang |
| [SPARK-9642](https://issues.apache.org/jira/browse/SPARK-9642) | LinearRegression should supported weighted data |  Major | ML | Meihua Wu | Meihua Wu |
| [SPARK-9769](https://issues.apache.org/jira/browse/SPARK-9769) | Add Python API for ml.feature.CountVectorizer |  Major | ML, PySpark | Yanbo Liang | holdenk |
| [SPARK-3147](https://issues.apache.org/jira/browse/SPARK-3147) | Implement streaming testing |  Major | DStreams, MLlib | Xiangrui Meng | Feynman Liang |
| [SPARK-10630](https://issues.apache.org/jira/browse/SPARK-10630) | createDataFrame from a Java List\<Row\> |  Minor | SQL | Xiangrui Meng | holdenk |
| [SPARK-10686](https://issues.apache.org/jira/browse/SPARK-10686) | Add quantileCol to AFTSurvivalRegression |  Major | ML | Xiangrui Meng | Yanbo Liang |
| [SPARK-10778](https://issues.apache.org/jira/browse/SPARK-10778) | Implement toString for AssociationRules.Rule |  Trivial | MLlib | Xiangrui Meng | shimizu yoshihiro |
| [SPARK-6919](https://issues.apache.org/jira/browse/SPARK-6919) | Add .asDict method to StatCounter |  Minor | PySpark | Erik Shilts | Erik Shilts |
| [SPARK-10807](https://issues.apache.org/jira/browse/SPARK-10807) | Add as.data.frame() as a synonym for collect() |  Minor | SparkR | Oscar D. Lara Yejas | Oscar D. Lara Yejas |
| [SPARK-10688](https://issues.apache.org/jira/browse/SPARK-10688) | Python API for AFTSurvivalRegression |  Major | ML, PySpark | Xiangrui Meng | Kai Jiang |
| [SPARK-10779](https://issues.apache.org/jira/browse/SPARK-10779) | Set initialModel for KMeans model in PySpark (spark.mllib) |  Major | MLlib, PySpark | Joseph K. Bradley | Evan Chen |
| [SPARK-9774](https://issues.apache.org/jira/browse/SPARK-9774) | Add Python API for ml.regression.IsotonicRegression |  Major | ML, PySpark | Yanbo Liang | holdenk |
| [SPARK-10535](https://issues.apache.org/jira/browse/SPARK-10535) | Support for recommendUsersForProducts and recommendProductsForUsers  in matrix factorization model for PySpark |  Major | MLlib, PySpark | Vladimir Vladimirov | Vladimir Vladimirov |
| [SPARK-11042](https://issues.apache.org/jira/browse/SPARK-11042) | Introduce a mechanism to ban creating new root SQLContexts in a JVM |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-11068](https://issues.apache.org/jira/browse/SPARK-11068) | Add callback to query execution |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10996](https://issues.apache.org/jira/browse/SPARK-10996) | Implement sampleBy() in DataFrameStatFunctions |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-11029](https://issues.apache.org/jira/browse/SPARK-11029) | Add computeCost to KMeansModel in spark.ml |  Major | ML | Joseph K. Bradley | yuhao yang |
| [SPARK-11129](https://issues.apache.org/jira/browse/SPARK-11129) | Link Spark WebUI in Mesos WebUI |  Major | Mesos, Web UI | Philipp Hoffmann | Philipp Hoffmann |
| [SPARK-10668](https://issues.apache.org/jira/browse/SPARK-10668) | Use WeightedLeastSquares in LinearRegression with L2 regularization if the number of features is small |  Critical | ML | Xiangrui Meng | Kai Sasaki |
| [SPARK-11197](https://issues.apache.org/jira/browse/SPARK-11197) | Run SQL query on files directly without create a table |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-10151](https://issues.apache.org/jira/browse/SPARK-10151) | Support invocation of hive macro |  Minor | SQL | Navis | Navis |
| [SPARK-11292](https://issues.apache.org/jira/browse/SPARK-11292) | Python API for text data source |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-10532](https://issues.apache.org/jira/browse/SPARK-10532) | Added new option to specify "user profile" of AWS credentials in spark/spark-ec2.py |  Major | EC2 | teramonagi | teramonagi |
| [SPARK-6819](https://issues.apache.org/jira/browse/SPARK-6819) | Support nested types in SparkR DataFrame |  Major | SparkR, SQL | Shivaram Venkataraman | Sun Rui |
| [SPARK-10978](https://issues.apache.org/jira/browse/SPARK-10978) | Allow PrunedFilterScan to eliminate predicates from further evaluation |  Critical | SQL | Russell Spitzer | Cheng Lian |
| [SPARK-11467](https://issues.apache.org/jira/browse/SPARK-11467) | Add Python API stddev/variance |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-11235](https://issues.apache.org/jira/browse/SPARK-11235) | Support streaming data using network library |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11514](https://issues.apache.org/jira/browse/SPARK-11514) | Pass random seed to spark.ml DecisionTree\* |  Major | ML | Joseph K. Bradley | Yu Ishikawa |
| [SPARK-7542](https://issues.apache.org/jira/browse/SPARK-7542) | Support off-heap sort buffer in UnsafeExternalSorter |  Major | Spark Core | Josh Rosen | Davies Liu |
| [SPARK-11389](https://issues.apache.org/jira/browse/SPARK-11389) | Add support for off-heap memory to MemoryManager |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-8467](https://issues.apache.org/jira/browse/SPARK-8467) | Add LDAModel.describeTopics() in Python |  Major | MLlib, PySpark | Yu Ishikawa | Yu Ishikawa |
| [SPARK-6517](https://issues.apache.org/jira/browse/SPARK-6517) | Bisecting k-means clustering |  Major | MLlib | Yu Ishikawa | Yu Ishikawa |
| [SPARK-11069](https://issues.apache.org/jira/browse/SPARK-11069) | Add RegexTokenizer option to convert to lowercase |  Minor | ML | Joseph K. Bradley | yuhao yang |
| [SPARK-11198](https://issues.apache.org/jira/browse/SPARK-11198) | Support record de-aggregation in KinesisReceiver |  Major | DStreams | Xiangrui Meng | Burak Yavuz |
| [SPARK-10371](https://issues.apache.org/jira/browse/SPARK-10371) | Optimize sequential projections |  Critical | ML, SQL | Xiangrui Meng | Nong Li |
| [SPARK-5565](https://issues.apache.org/jira/browse/SPARK-5565) | LDA wrapper for spark.ml package |  Major | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-11468](https://issues.apache.org/jira/browse/SPARK-11468) | Add R API for stddev/variance |  Major | SparkR | Davies Liu | Felix Cheung |
| [SPARK-11768](https://issues.apache.org/jira/browse/SPARK-11768) | Support now function in SQL (alias for current\_timestamp) |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11766](https://issues.apache.org/jira/browse/SPARK-11766) | JSON serialization of Vectors |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-11089](https://issues.apache.org/jira/browse/SPARK-11089) | Add a option for thrift-server to share a single session across all connections |  Major | SQL | Davies Liu | Cheng Lian |
| [SPARK-10186](https://issues.apache.org/jira/browse/SPARK-10186) | Add support for more postgres column types |  Major | SQL | Simeon Simeonov | Marius Van Niekerk |
| [SPARK-11773](https://issues.apache.org/jira/browse/SPARK-11773) | Implement collection functions in SparkR |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-11774](https://issues.apache.org/jira/browse/SPARK-11774) | Implement "struct", "encode","decode" in SparkR |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-12242](https://issues.apache.org/jira/browse/SPARK-12242) | DataFrame.transform function |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12144](https://issues.apache.org/jira/browse/SPARK-12144) | Support more external data source API in SparkR |  Major | SparkR | Sun Rui | Yanbo Liang |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-9737](https://issues.apache.org/jira/browse/SPARK-9737) | Add the suggested configuration when required executor memory is above the max threshold of this cluster on YARN mode |  Trivial | YARN | Yadong Qi | Yadong Qi |
| [SPARK-8764](https://issues.apache.org/jira/browse/SPARK-8764) | StringIndexer should take option to handle unseen values |  Minor | ML | Joseph K. Bradley | holdenk |
| [SPARK-9935](https://issues.apache.org/jira/browse/SPARK-9935) | EqualNullSafe not processed in OrcRelation |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-9929](https://issues.apache.org/jira/browse/SPARK-9929) | support adding metadata in withColumn |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-9923](https://issues.apache.org/jira/browse/SPARK-9923) | ShuffleMapStage.numAvailableOutputs should be an Int instead of Long |  Trivial | Spark Core | Matei Zaharia | Neelesh Srinivas Salian |
| [SPARK-9782](https://issues.apache.org/jira/browse/SPARK-9782) | Add support for YARN application tags running Spark on YARN |  Major | YARN | Dennis Huo | Dennis Huo |
| [SPARK-9833](https://issues.apache.org/jira/browse/SPARK-9833) | Add options to explicitly disable delegation token retrieval for non-HDFS |  Minor | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-10035](https://issues.apache.org/jira/browse/SPARK-10035) | Parquet filters does not process EqualNullSafe filter. |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-10040](https://issues.apache.org/jira/browse/SPARK-10040) | JDBC writer change to use batch insert for performance |  Major | SQL | Rama Mullapudi | Liang-Chi Hsieh |
| [SPARK-9613](https://issues.apache.org/jira/browse/SPARK-9613) | Ban use of JavaConversions and migrate all existing uses to JavaConverters |  Major | Spark Core | Josh Rosen | Sean Owen |
| [SPARK-10254](https://issues.apache.org/jira/browse/SPARK-10254) | Remove Guava dependencies in spark.ml.feature |  Minor | ML | Feynman Liang | Feynman Liang |
| [SPARK-10255](https://issues.apache.org/jira/browse/SPARK-10255) | Remove Guava dependencies in spark.ml.param |  Minor | ML | Feynman Liang | Feynman Liang |
| [SPARK-10256](https://issues.apache.org/jira/browse/SPARK-10256) | Remove Guava dependencies in spark.ml.classificaiton |  Minor | ML | Feynman Liang | Feynman Liang |
| [SPARK-10257](https://issues.apache.org/jira/browse/SPARK-10257) | Remove Guava dependencies in spark.mllib JavaTests |  Minor | MLlib | Feynman Liang | Feynman Liang |
| [SPARK-10253](https://issues.apache.org/jira/browse/SPARK-10253) | Remove Guava dependencies in MLlib java tests |  Minor | ML, MLlib | Feynman Liang | Feynman Liang |
| [SPARK-10184](https://issues.apache.org/jira/browse/SPARK-10184) | Optimization for bounds determination in RangePartitioner |  Minor | Spark Core | Jigao Fu | Jigao Fu |
| [SPARK-9547](https://issues.apache.org/jira/browse/SPARK-9547) | Allow testing pull requests with different Hadoop versions |  Major | Build | Patrick Wendell | Patrick Wendell |
| [SPARK-9545](https://issues.apache.org/jira/browse/SPARK-9545) | Run Maven tests in pull request builder if title has "[test-maven]" in it |  Major | Build | Patrick Wendell | Patrick Wendell |
| [SPARK-10349](https://issues.apache.org/jira/browse/SPARK-10349) | OneVsRest use "when ... otherwise" not UDF to generate new label at binary reduction |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-10355](https://issues.apache.org/jira/browse/SPARK-10355) | Add Python API for SQLTransformer |  Minor | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-10378](https://issues.apache.org/jira/browse/SPARK-10378) | Remove HashJoinCompatibilitySuite |  Major | SQL, Tests | Reynold Xin | Reynold Xin |
| [SPARK-4223](https://issues.apache.org/jira/browse/SPARK-4223) | Support \* (meaning all users) as part of the acls |  Major | Spark Core | Thomas Graves | Zhuo Liu |
| [SPARK-10389](https://issues.apache.org/jira/browse/SPARK-10389) | support order by non-attribute grouping expression on Aggregate |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-9723](https://issues.apache.org/jira/browse/SPARK-9723) | Params.getOrDefault should throw more meaningful exception |  Minor | ML | Joseph K. Bradley | holdenk |
| [SPARK-10411](https://issues.apache.org/jira/browse/SPARK-10411) | In SQL tab move visualization above explain output |  Minor | SQL, Web UI | Andrew Or | Shixiong Zhu |
| [SPARK-10450](https://issues.apache.org/jira/browse/SPARK-10450) | Minor SQL style, format, typo, readability fixes |  Minor | SQL | Andrew Or | Andrew Or |
| [SPARK-10468](https://issues.apache.org/jira/browse/SPARK-10468) | Verify schema before Dataframe select API call |  Minor | MLlib | Vinod KC | Vinod KC |
| [SPARK-10071](https://issues.apache.org/jira/browse/SPARK-10071) | QueueInputDStream Should Allow Checkpointing |  Major | DStreams | Asim Jalis | Shixiong Zhu |
| [SPARK-10464](https://issues.apache.org/jira/browse/SPARK-10464) | Add WeibullGenerator for RandomDataGenerator |  Major | MLlib | Yanbo Liang | Yanbo Liang |
| [SPARK-10373](https://issues.apache.org/jira/browse/SPARK-10373) | Move @since annotator to pyspark to be shared by all components |  Major | PySpark, SQL | Xiangrui Meng | Davies Liu |
| [SPARK-10249](https://issues.apache.org/jira/browse/SPARK-10249) | Add Python Code Example to StopWordsRemover User Guide |  Minor | ML, PySpark | Feynman Liang | yuhao yang |
| [SPARK-10481](https://issues.apache.org/jira/browse/SPARK-10481) | SPARK\_PREPEND\_CLASSES make spark-yarn related jar could not be found |  Minor | YARN | Jeff Zhang | Jeff Zhang |
| [SPARK-10461](https://issues.apache.org/jira/browse/SPARK-10461) | make sure \`input.primitive\` is always variable name not code at GenerateUnsafeProjection |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-9772](https://issues.apache.org/jira/browse/SPARK-9772) | Add Python API for ml.feature.VectorSlicer |  Minor | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-10065](https://issues.apache.org/jira/browse/SPARK-10065) | Avoid triple copy of var-length objects in Array in tungsten projection |  Major | SQL | Davies Liu | Wenchen Fan |
| [SPARK-7142](https://issues.apache.org/jira/browse/SPARK-7142) | Minor enhancement to BooleanSimplification Optimizer rule |  Minor | SQL | Yash Datta | Yash Datta |
| [SPARK-10443](https://issues.apache.org/jira/browse/SPARK-10443) | Refactor SortMergeOuterJoin to reduce duplication |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-10056](https://issues.apache.org/jira/browse/SPARK-10056) | PySpark Row - Support for row["columnName"] syntax |  Minor | PySpark | Maciej Bryński | YBL |
| [SPARK-9043](https://issues.apache.org/jira/browse/SPARK-9043) | Serialize key, value and combiner classes in ShuffleDependency |  Major | Shuffle | Matt Massie | Matt Massie |
| [SPARK-10518](https://issues.apache.org/jira/browse/SPARK-10518) | Update code examples in spark.ml user guide to use LIBSVM data source instead of MLUtils |  Minor | Documentation, MLlib | Xiangrui Meng | shimizu yoshihiro |
| [SPARK-9773](https://issues.apache.org/jira/browse/SPARK-9773) | Add Python API for MultilayerPerceptronClassifier |  Major | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-10537](https://issues.apache.org/jira/browse/SPARK-10537) | Document LIBSVM data source options in public doc and minor improvements |  Major | Documentation, ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-8530](https://issues.apache.org/jira/browse/SPARK-8530) | Add Python API for MinMaxScaler |  Minor | ML, PySpark | yuhao yang | yuhao yang |
| [SPARK-10546](https://issues.apache.org/jira/browse/SPARK-10546) | Check partitionId\'s range in ExternalSorter#spill() |  Trivial | Spark Core | Ted Yu | Ted Yu |
| [SPARK-10547](https://issues.apache.org/jira/browse/SPARK-10547) | Streamline / improve style of Java API tests |  Minor | Java API, Tests | Sean Owen | Sean Owen |
| [SPARK-6350](https://issues.apache.org/jira/browse/SPARK-6350) | Make mesosExecutorCores configurable in mesos "fine-grained" mode |  Minor | Mesos | Jongyoul Lee | Jongyoul Lee |
| [SPARK-9720](https://issues.apache.org/jira/browse/SPARK-9720) | spark.ml Identifiable types should have UID in toString methods |  Minor | ML | Joseph K. Bradley | Bertrand Dechoux |
| [SPARK-6981](https://issues.apache.org/jira/browse/SPARK-6981) | [SQL] SparkPlanner and QueryExecution should be factored out from SQLContext |  Minor | SQL | Edoardo Vacchi | Edoardo Vacchi |
| [SPARK-10576](https://issues.apache.org/jira/browse/SPARK-10576) | Move .java files out of src/main/scala |  Minor | Build | Sean Owen | Sean Owen |
| [SPARK-10491](https://issues.apache.org/jira/browse/SPARK-10491) | move RowMatrix.dspr to BLAS |  Major | MLlib | Xiangrui Meng | yuhao yang |
| [SPARK-10475](https://issues.apache.org/jira/browse/SPARK-10475) | improve column prunning for Project on Sort |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10575](https://issues.apache.org/jira/browse/SPARK-10575) | Wrap RDD.takeSample with scope |  Minor | Spark Core | Vinod KC | Vinod KC |
| [SPARK-10459](https://issues.apache.org/jira/browse/SPARK-10459) | PythonUDF could process UnsafeRow |  Major | SQL | Davies Liu | Liang-Chi Hsieh |
| [SPARK-10531](https://issues.apache.org/jira/browse/SPARK-10531) | AppId is set as AppName in status rest api |  Minor | Spark Core | Jeff Zhang | Jeff Zhang |
| [SPARK-10394](https://issues.apache.org/jira/browse/SPARK-10394) | Make GBTParams use shared "stepSize" |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-10657](https://issues.apache.org/jira/browse/SPARK-10657) | Remove legacy SCP-based Jenkins log archiving code |  Major | Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-9522](https://issues.apache.org/jira/browse/SPARK-9522) | SparkSubmit process can not exit if kill application when HiveThriftServer was starting |  Minor | SQL | Weizhong | Weizhong |
| [SPARK-10684](https://issues.apache.org/jira/browse/SPARK-10684) | StructType.interpretedOrdering need not to be serialized |  Minor | SQL | Navis | Navis |
| [SPARK-10451](https://issues.apache.org/jira/browse/SPARK-10451) | Prevent unnecessary serializations in InMemoryColumnarTableScan |  Minor | SQL | Yash Datta | Yash Datta |
| [SPARK-10615](https://issues.apache.org/jira/browse/SPARK-10615) |  changes assertEquals to assertEqual for existing unit tests |  Minor | PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-10715](https://issues.apache.org/jira/browse/SPARK-10715) | Duplicate initialzation flag in WeightedLeastSquare |  Trivial | ML | Kai Sasaki | Kai Sasaki |
| [SPARK-10626](https://issues.apache.org/jira/browse/SPARK-10626) | Create a Java friendly method for randomRDD & RandomDataGenerator on RandomRDDs. |  Minor | MLlib | holdenk | holdenk |
| [SPARK-10676](https://issues.apache.org/jira/browse/SPARK-10676) | Update documentation with instructions to enable block manager wire encryption |  Major | Documentation | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-9821](https://issues.apache.org/jira/browse/SPARK-9821) | pyspark reduceByKey should allow a custom partitioner |  Minor | PySpark | Diana Carroll | holdenk |
| [SPARK-10577](https://issues.apache.org/jira/browse/SPARK-10577) | [PySpark] DataFrame hint for broadcast join |  Major | PySpark, SQL | Maciej Bryński | Jian Feng Zhang |
| [SPARK-10419](https://issues.apache.org/jira/browse/SPARK-10419) | Add JDBC dialect for Microsoft SQL Server |  Minor | SQL | Ewan Leith | Ewan Leith |
| [SPARK-10446](https://issues.apache.org/jira/browse/SPARK-10446) | Support to specify join type when calling join with usingColumns |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-10458](https://issues.apache.org/jira/browse/SPARK-10458) | Would like to know if a given Spark Context is stopped or currently stopping |  Minor | Spark Core | Matt Cheah | Madhusudanan Kandasamy |
| [SPARK-10706](https://issues.apache.org/jira/browse/SPARK-10706) | Add java wrapper for random vector rdd |  Minor | Java API, MLlib | holdenk | Meihua Wu |
| [SPARK-9962](https://issues.apache.org/jira/browse/SPARK-9962) | Decision Tree training: prevNodeIdsForInstances.unpersist() at end of training |  Minor | ML | Joseph K. Bradley | holdenk |
| [SPARK-10714](https://issues.apache.org/jira/browse/SPARK-10714) | Refactor PythonRDD to decouple iterator computation from PythonRDD |  Major | PySpark, Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-10652](https://issues.apache.org/jira/browse/SPARK-10652) | Set meaningful job descriptions for streaming related jobs |  Major | DStreams | Tathagata Das | Tathagata Das |
| [SPARK-10742](https://issues.apache.org/jira/browse/SPARK-10742) | Add the ability to embed HTML relative links in job descriptions |  Minor | Web UI | Tathagata Das | Tathagata Das |
| [SPARK-10721](https://issues.apache.org/jira/browse/SPARK-10721) | Log warning when file deletion fails |  Minor | Spark Core | Ted Yu | Ted Yu |
| [SPARK-9715](https://issues.apache.org/jira/browse/SPARK-9715) | Store numFeatures in all ML PredictionModel types |  Minor | ML | Joseph K. Bradley | Seth Hendrickson |
| [SPARK-10699](https://issues.apache.org/jira/browse/SPARK-10699) | Support checkpointInterval can be disabled |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-10720](https://issues.apache.org/jira/browse/SPARK-10720) | Add a java wrapper to create dataframe from a local list of Java Beans. |  Minor | SQL | holdenk | holdenk |
| [SPARK-10395](https://issues.apache.org/jira/browse/SPARK-10395) | Simplify CatalystReadSupport |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-10833](https://issues.apache.org/jira/browse/SPARK-10833) | Inline, organize BSD/MIT licenses in LICENSE |  Major | Build | Sean Owen | Sean Owen |
| [SPARK-10871](https://issues.apache.org/jira/browse/SPARK-10871) | Specify number of failed executors in ApplicationMaster error message |  Minor | Spark Core | Ryan Williams | Ryan Williams |
| [SPARK-10415](https://issues.apache.org/jira/browse/SPARK-10415) | Enhance Navigation Sidebar in PySpark API |  Minor | Documentation, PySpark | Noel Smith | Noel Smith |
| [SPARK-10811](https://issues.apache.org/jira/browse/SPARK-10811) | Minimize array copying cost in Parquet converters |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-10736](https://issues.apache.org/jira/browse/SPARK-10736) | Use 1 for all ratings if $(ratingCol) = "" |  Minor | ML | Xiangrui Meng | Yanbo Liang |
| [SPARK-10770](https://issues.apache.org/jira/browse/SPARK-10770) | SparkPlan.executeCollect/executeTake should return InternalRow rather than external Row |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-10400](https://issues.apache.org/jira/browse/SPARK-10400) | Rename or deprecate SQL option "spark.sql.parquet.followParquetFormatSpec" |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-9867](https://issues.apache.org/jira/browse/SPARK-9867) | Move utilities for binary data into ByteArray |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-7275](https://issues.apache.org/jira/browse/SPARK-7275) | Make LogicalRelation public |  Minor | SQL | Santiago M. Mola | Glenn Weidner |
| [SPARK-9570](https://issues.apache.org/jira/browse/SPARK-9570) | Consistent recommendation for submitting spark apps to YARN, -master yarn --deploy-mode x vs -master yarn-x\'. |  Minor | Documentation, Spark Submit, YARN | Neelesh Srinivas Salian | Sean Owen |
| [SPARK-10889](https://issues.apache.org/jira/browse/SPARK-10889) | Upgrade Kinesis Client Library |  Minor | DStreams | Avrohom Katz | Avrohom Katz |
| [SPARK-10585](https://issues.apache.org/jira/browse/SPARK-10585) | only copy data once when generate unsafe projection |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-9841](https://issues.apache.org/jira/browse/SPARK-9841) | Params.clear needs to be public |  Major | ML | Joseph K. Bradley | holdenk |
| [SPARK-10982](https://issues.apache.org/jira/browse/SPARK-10982) | Rename ExpressionAggregate -\> DeclarativeAggregate |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-10490](https://issues.apache.org/jira/browse/SPARK-10490) | Consolidate the Cholesky solvers in WeightedLeastSquares and ALS |  Major | MLlib | Xiangrui Meng | Yanbo Liang |
| [SPARK-9702](https://issues.apache.org/jira/browse/SPARK-9702) | Repartition operator should use Exchange to perform its shuffle |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-10738](https://issues.apache.org/jira/browse/SPARK-10738) | Refactoring \`Instance\` out from LOR and LIR, and also cleaning up some code |  Major | ML | DB Tsai | DB Tsai |
| [SPARK-10917](https://issues.apache.org/jira/browse/SPARK-10917) | Improve performance of complex types in columnar cache |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-10064](https://issues.apache.org/jira/browse/SPARK-10064) | Decision tree continuous feature binning is slow in large feature spaces |  Minor | MLlib | Nathan Howell | Nathan Howell |
| [SPARK-10883](https://issues.apache.org/jira/browse/SPARK-10883) | Document building each module individually |  Trivial | Documentation | Jean-Baptiste Onofré | Jean-Baptiste Onofré |
| [SPARK-9718](https://issues.apache.org/jira/browse/SPARK-9718) | LinearRegressionTrainingSummary should hold all columns in transformed data |  Minor | ML | Joseph K. Bradley | holdenk |
| [SPARK-7770](https://issues.apache.org/jira/browse/SPARK-7770) | Change GBT validationTol to be relative tolerance |  Minor | ML, MLlib | Joseph K. Bradley | Yanbo Liang |
| [SPARK-10810](https://issues.apache.org/jira/browse/SPARK-10810) | Improve session management for SQL |  Blocker | SQL | Davies Liu | Davies Liu |
| [SPARK-10855](https://issues.apache.org/jira/browse/SPARK-10855) | Add a JDBC dialect for Apache  Derby |  Minor | SQL | Rick Hillegas | Rick Hillegas |
| [SPARK-11056](https://issues.apache.org/jira/browse/SPARK-11056) | Improve documentation on how to build Spark efficiently |  Minor | Documentation | Kay Ousterhout | Kay Ousterhout |
| [SPARK-10739](https://issues.apache.org/jira/browse/SPARK-10739) | Add attempt window for long running Spark application on Yarn |  Minor | YARN | Saisai Shao | Saisai Shao |
| [SPARK-10990](https://issues.apache.org/jira/browse/SPARK-10990) | Avoid the serialization multiple times during unrolling of complex types |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-11030](https://issues.apache.org/jira/browse/SPARK-11030) | SQLTab should be shared by across sessions |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-10932](https://issues.apache.org/jira/browse/SPARK-10932) | Port two minor changes to release packaging scripts back into Spark repo |  Major | Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-10104](https://issues.apache.org/jira/browse/SPARK-10104) | Consolidate different forms of table identifiers |  Major | SQL | Yin Huai | Wenchen Fan |
| [SPARK-11113](https://issues.apache.org/jira/browse/SPARK-11113) | Remove DeveloperApi annotation from private classes |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11076](https://issues.apache.org/jira/browse/SPARK-11076) | Decimal Support for Ceil/Floor |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-11122](https://issues.apache.org/jira/browse/SPARK-11122) | Fatal warnings in sbt are not displayed as such |  Minor | Build | Jakob Odersky | Jakob Odersky |
| [SPARK-10974](https://issues.apache.org/jira/browse/SPARK-10974) | Add progress bar for output operation column and use red dots for failed batches |  Major | DStreams | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11109](https://issues.apache.org/jira/browse/SPARK-11109) | move FsHistoryProvider off import org.apache.hadoop.fs.permission.AccessControlException |  Minor | Spark Core | Steve Loughran | Glenn Weidner |
| [SPARK-11050](https://issues.apache.org/jira/browse/SPARK-11050) | PySpark SparseVector can return wrong index in error message |  Trivial | MLlib, PySpark | Joseph K. Bradley | Bhargav Mangipudi |
| [SPARK-10599](https://issues.apache.org/jira/browse/SPARK-10599) | Decrease communication in BlockMatrix multiply and increase performance |  Major | MLlib | Burak Yavuz | Burak Yavuz |
| [SPARK-11084](https://issues.apache.org/jira/browse/SPARK-11084) | SparseVector.\_\_getitem\_\_ should check if value can be non-zero before executing searchsorted |  Minor | MLlib, PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-9963](https://issues.apache.org/jira/browse/SPARK-9963) | ML RandomForest cleanup: Move predictNodeIndex to LearningNode |  Trivial | ML | Joseph K. Bradley | Luvsandondov Lkhamsuren |
| [SPARK-11169](https://issues.apache.org/jira/browse/SPARK-11169) | Remove the extra spaces in merge script |  Trivial | Build | Reynold Xin | Reynold Xin |
| [SPARK-11158](https://issues.apache.org/jira/browse/SPARK-11158) | Add more information in Error statment for sql/types \_verify\_type() |  Minor | SQL | Mahmoud Lababidi | Mahmoud Lababidi |
| [SPARK-10921](https://issues.apache.org/jira/browse/SPARK-10921) | Completely remove the use of SparkContext.preferredNodeLocationData |  Minor | Spark Core, YARN | Jacek Laskowski | Jacek Laskowski |
| [SPARK-11119](https://issues.apache.org/jira/browse/SPARK-11119) | cleanup unsafe array and map |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11180](https://issues.apache.org/jira/browse/SPARK-11180) | Support BooleanType in DataFrame.na.fill |  Minor | SQL | Satya Narayan | Rishabh Bhardwaj |
| [SPARK-11114](https://issues.apache.org/jira/browse/SPARK-11114) | Add getOrCreate for SparkContext/SQLContext for Python |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-10876](https://issues.apache.org/jira/browse/SPARK-10876) | display total application time in spark history UI |  Minor | Web UI | Thomas Graves | Jean-Baptiste Onofré |
| [SPARK-10463](https://issues.apache.org/jira/browse/SPARK-10463) | remove PromotePrecision during optimization |  Trivial | SQL | Adrian Wang | Adrian Wang |
| [SPARK-10447](https://issues.apache.org/jira/browse/SPARK-10447) | Upgrade pyspark to use py4j 0.9 |  Major | PySpark | Justin Uang | holdenk |
| [SPARK-3842](https://issues.apache.org/jira/browse/SPARK-3842) | Remove the hacks for Python callback server in py4j |  Minor | DStreams, PySpark | Davies Liu | holdenk |
| [SPARK-11111](https://issues.apache.org/jira/browse/SPARK-11111) | Fast null-safe join |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-11149](https://issues.apache.org/jira/browse/SPARK-11149) | Improve performance of primitive types in columnar cache |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-10767](https://issues.apache.org/jira/browse/SPARK-10767) | Make pyspark shared params codegen more consistent |  Minor | ML, PySpark | holdenk | holdenk |
| [SPARK-11205](https://issues.apache.org/jira/browse/SPARK-11205) | Match the output of DataFrame#explain() in both scala api and python |  Minor | PySpark | Jeff Zhang | Jeff Zhang |
| [SPARK-11179](https://issues.apache.org/jira/browse/SPARK-11179) | Push filters through aggregate if filters are subset of \'group by\' expressions |  Minor | SQL | Nitin Goyal | Nitin Goyal |
| [SPARK-10743](https://issues.apache.org/jira/browse/SPARK-10743) | keep the name of expression if possible when do cast |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11243](https://issues.apache.org/jira/browse/SPARK-11243) | Output UnsafeRow in InMemoryTableScan |  Major | . | Davies Liu | Davies Liu |
| [SPARK-11163](https://issues.apache.org/jira/browse/SPARK-11163) | Remove unnecessary addPendingTask calls in TaskSetManager.executorLost |  Minor | Scheduler | Kay Ousterhout | Kay Ousterhout |
| [SPARK-7021](https://issues.apache.org/jira/browse/SPARK-7021) | JUnit output for Python tests |  Minor | Build, Project Infra | Brennon York | Gabor Liptak |
| [SPARK-11194](https://issues.apache.org/jira/browse/SPARK-11194) | Use a single URLClassLoader for jars added through SQL\'s "ADD JAR" command |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-11125](https://issues.apache.org/jira/browse/SPARK-11125) | Unreadable exception when running spark-sql without building with -Phive-thriftserver and SPARK\_PREPEND\_CLASSES is set |  Minor | SQL | Jeff Zhang | Jeff Zhang |
| [SPARK-11245](https://issues.apache.org/jira/browse/SPARK-11245) | Upgrade twitter4j to version 4.x |  Trivial | DStreams | Luciano Resende | Luciano Resende |
| [SPARK-10891](https://issues.apache.org/jira/browse/SPARK-10891) | Add MessageHandler to KinesisUtils.createStream similar to Direct Kafka |  Major | DStreams | Burak Yavuz | Burak Yavuz |
| [SPARK-11127](https://issues.apache.org/jira/browse/SPARK-11127) | Upgrade Kinesis Client Library to the latest stable version |  Major | DStreams | Xiangrui Meng | Xiangrui Meng |
| [SPARK-11258](https://issues.apache.org/jira/browse/SPARK-11258) | Converting a Spark DataFrame into an R data.frame is slow / requires a lot of memory |  Major | SparkR | Frank Rosner | Frank Rosner |
| [SPARK-11325](https://issues.apache.org/jira/browse/SPARK-11325) | Alias alias in Scala\'s DataFrame to as to match python |  Major | SQL | Yin Huai | Nong Li |
| [SPARK-10947](https://issues.apache.org/jira/browse/SPARK-10947) | With schema inference from JSON into a Dataframe, add option to infer all primitive object types as strings |  Minor | SQL | Ewan Leith | Stephen De Gennaro |
| [SPARK-11184](https://issues.apache.org/jira/browse/SPARK-11184) | Declare most of .mllib code not-Experimental |  Minor | MLlib | Sean Owen | Sean Owen |
| [SPARK-10654](https://issues.apache.org/jira/browse/SPARK-10654) | Add columnSimilarities to IndexedRowMatrix |  Major | MLlib | Reza Zadeh | Reza Zadeh |
| [SPARK-11297](https://issues.apache.org/jira/browse/SPARK-11297) | code example generated by include\_example is not exactly the same with {% highlight %} |  Major | Documentation, ML, MLlib | Xusen Yin | Xusen Yin |
| [SPARK-11270](https://issues.apache.org/jira/browse/SPARK-11270) | Add improved equality testing for TopicAndPartition from the Kafka Streaming API |  Minor | DStreams, PySpark | Nick Evans | Nick Evans |
| [SPARK-11324](https://issues.apache.org/jira/browse/SPARK-11324) | Flag to close Write Ahead Log after writing |  Major | DStreams | Burak Yavuz | Burak Yavuz |
| [SPARK-11212](https://issues.apache.org/jira/browse/SPARK-11212) | Make RDD\'s preferred locations support the executor location and fix ReceiverTracker for multiple executors in a host |  Major | DStreams, Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11178](https://issues.apache.org/jira/browse/SPARK-11178) | Improve naming around task failures in scheduler code |  Trivial | Scheduler | Kay Ousterhout | Kay Ousterhout |
| [SPARK-11332](https://issues.apache.org/jira/browse/SPARK-11332) | WeightedLeastSquares should use ml features generic Instance class instead of private |  Minor | ML | holdenk | Nakul Jindal |
| [SPARK-11369](https://issues.apache.org/jira/browse/SPARK-11369) | SparkR glm should support setting standardize |  Minor | ML, SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-11367](https://issues.apache.org/jira/browse/SPARK-11367) | Python LinearRegression should support setting solver |  Minor | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-11351](https://issues.apache.org/jira/browse/SPARK-11351) | support hive interval literal in sql parser |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11318](https://issues.apache.org/jira/browse/SPARK-11318) | Include hive profile in make-distribution.sh command |  Trivial | Documentation | Ted Yu | Ted Yu |
| [SPARK-11207](https://issues.apache.org/jira/browse/SPARK-11207) | Add test cases for solver selection of LinearRegression as followup. |  Major | ML | Kai Sasaki | Kai Sasaki |
| [SPARK-11342](https://issues.apache.org/jira/browse/SPARK-11342) | Allow to set hadoop profile when running dev/run\_tests |  Minor | Tests | Jeff Zhang | Jeff Zhang |
| [SPARK-11423](https://issues.apache.org/jira/browse/SPARK-11423) | Remove PrepareRDD |  Major | Spark Core | Davies Liu | Davies Liu |
| [SPARK-11385](https://issues.apache.org/jira/browse/SPARK-11385) | Make foreachActive public in MLLib\'s vector API |  Minor | MLlib | holdenk | Nakul Jindal |
| [SPARK-11226](https://issues.apache.org/jira/browse/SPARK-11226) | Empty line in json file should be skipped |  Minor | SQL | Jeff Zhang | Jeff Zhang |
| [SPARK-11117](https://issues.apache.org/jira/browse/SPARK-11117) | PhysicalRDD.outputsUnsafeRows should return true when the underlying data source produces UnsafeRows |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-11305](https://issues.apache.org/jira/browse/SPARK-11305) | Remove Third-Party Hadoop Distributions Doc Page |  Critical | Documentation | Patrick Wendell | Sean Owen |
| [SPARK-11410](https://issues.apache.org/jira/browse/SPARK-11410) | Add a DataFrame API that provides functionality similar to HiveQL\'s DISTRIBUTE BY |  Major | SQL | Nong Li | Nong Li |
| [SPARK-9722](https://issues.apache.org/jira/browse/SPARK-9722) | Pass random seed to spark.ml RandomForest findSplitsBins |  Trivial | ML | Joseph K. Bradley | Yu Ishikawa |
| [SPARK-11413](https://issues.apache.org/jira/browse/SPARK-11413) | Java 8 build has problem with joda-time and s3 request, should bump joda-time version |  Minor | Build | Yongjia Wang | Yongjia Wang |
| [SPARK-9817](https://issues.apache.org/jira/browse/SPARK-9817) | Improve the container placement strategy by considering the localities of pending container requests |  Minor | YARN | Saisai Shao | Saisai Shao |
| [SPARK-10997](https://issues.apache.org/jira/browse/SPARK-10997) | Netty-based RPC env should support a "client-only" mode. |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11437](https://issues.apache.org/jira/browse/SPARK-11437) | createDataFrame shouldn\'t .take() when provided schema |  Major | PySpark | Jason White | Jason White |
| [SPARK-11456](https://issues.apache.org/jira/browse/SPARK-11456) | Remove deprecatd junit.framework in Java tests |  Trivial | Tests | Sean Owen | Sean Owen |
| [SPARK-11358](https://issues.apache.org/jira/browse/SPARK-11358) | Deprecate \`runs\` in k-means |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-11371](https://issues.apache.org/jira/browse/SPARK-11371) | Make "mean" an alias for "avg" operator |  Minor | SQL | Ted Yu | Ted Yu |
| [SPARK-10592](https://issues.apache.org/jira/browse/SPARK-10592) | deprecate weights and use coefficients instead in ML models |  Critical | ML, PySpark | Xiangrui Meng | Kai Jiang |
| [SPARK-11236](https://issues.apache.org/jira/browse/SPARK-11236) | Upgrade Tachyon dependency to 0.8.0 |  Major | Spark Core | Calvin Jia | Calvin Jia |
| [SPARK-5354](https://issues.apache.org/jira/browse/SPARK-5354) | Set InMemoryColumnarTableScan\'s outputPartitioning and outputOrdering |  Major | SQL | Yin Huai | Nong Li |
| [SPARK-11329](https://issues.apache.org/jira/browse/SPARK-11329) | Expand Star when creating a struct |  Major | SQL | Yin Huai | Nong Li |
| [SPARK-9410](https://issues.apache.org/jira/browse/SPARK-9410) | Better Multi-User Session Semantics for SQL Context |  Critical | SQL | Michael Armbrust | Davies Liu |
| [SPARK-11344](https://issues.apache.org/jira/browse/SPARK-11344) | ApplicationDescription should be immutable case class |  Minor | Deploy, Spark Core | Jacek Lewandowski | Jacek Lewandowski |
| [SPARK-11256](https://issues.apache.org/jira/browse/SPARK-11256) | Mark all Stage/ResultStage/ShuffleMapStage internal state as private. |  Major | Scheduler, Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-9790](https://issues.apache.org/jira/browse/SPARK-9790) | [YARN] Expose in WebUI if NodeManager is the reason why executors were killed. |  Minor | YARN | Mark Grover | Mark Grover |
| [SPARK-11279](https://issues.apache.org/jira/browse/SPARK-11279) | Add DataFrame#toDF in PySpark |  Minor | PySpark | Jeff Zhang | Jeff Zhang |
| [SPARK-11477](https://issues.apache.org/jira/browse/SPARK-11477) | support create Dataset from RDD |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11489](https://issues.apache.org/jira/browse/SPARK-11489) | Only include common first order statistics in GroupedData |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11485](https://issues.apache.org/jira/browse/SPARK-11485) | Make DataFrameHolder and DatasetHolder public |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-4849](https://issues.apache.org/jira/browse/SPARK-4849) | Pass partitioning information (distribute by) to In-memory caching |  Critical | SQL | Nitin Goyal | Nong Li |
| [SPARK-10949](https://issues.apache.org/jira/browse/SPARK-10949) | Upgrade Snappy Java to 1.1.2 |  Minor | Spark Core | Adam Roberts | Josh Rosen |
| [SPARK-10028](https://issues.apache.org/jira/browse/SPARK-10028) | Add Python API for PrefixSpan |  Major | MLlib, PySpark | Yanbo Liang | Yu Ishikawa |
| [SPARK-11491](https://issues.apache.org/jira/browse/SPARK-11491) | Use Scala 2.10.5 |  Minor | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-11425](https://issues.apache.org/jira/browse/SPARK-11425) | Improve hybrid aggregation (sort-based after hash-based) |  Major | Spark Core | Davies Liu | Davies Liu |
| [SPARK-11440](https://issues.apache.org/jira/browse/SPARK-11440) | Declare rest of @Experimental items non-experimental if they\'ve existed since 1.2.0 |  Minor | Build, DStreams, Spark Core | Sean Owen | Sean Owen |
| [SPARK-11449](https://issues.apache.org/jira/browse/SPARK-11449) | PortableDataStream should be a factory |  Minor | Spark Core | Herman van Hovell | Herman van Hovell |
| [SPARK-11506](https://issues.apache.org/jira/browse/SPARK-11506) | Code Optimization to remove a redundant operation |  Trivial | MLlib | Alok | Alok |
| [SPARK-11527](https://issues.apache.org/jira/browse/SPARK-11527) | PySpark AFTSurvivalRegressionModel should expose coefficients/intercept/scale |  Minor | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-11513](https://issues.apache.org/jira/browse/SPARK-11513) | Remove the internal implicit conversion from LogicalPlan to DataFrame |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11532](https://issues.apache.org/jira/browse/SPARK-11532) | Remove implicit conversion from Expression to Column |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11536](https://issues.apache.org/jira/browse/SPARK-11536) | Remove the internal implicit conversion from Expression to Column in functions.scala |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11450](https://issues.apache.org/jira/browse/SPARK-11450) | Add support for UnsafeRow to Expand |  Minor | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-11546](https://issues.apache.org/jira/browse/SPARK-11546) | Thrift server makes too many logs about result schema |  Trivial | SQL | Navis | Navis |
| [SPARK-11362](https://issues.apache.org/jira/browse/SPARK-11362) | Use Spark BitSet in BroadcastNestedLoopJoin |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-10682](https://issues.apache.org/jira/browse/SPARK-10682) | Remove Bagel test suites |  Major | GraphX | Reynold Xin | Reynold Xin |
| [SPARK-10565](https://issues.apache.org/jira/browse/SPARK-10565) | New /api/v1/[path] APIs don\'t contain as much information as original /json API |  Major | Input/Output, Java API | Kevin Chen | Charles Yeh |
| [SPARK-10471](https://issues.apache.org/jira/browse/SPARK-10471) | Mesos Scheduler should reject offers not matching constraints for longer period of time |  Major | Mesos, Scheduler | Felix Bechstein | Felix Bechstein |
| [SPARK-11141](https://issues.apache.org/jira/browse/SPARK-11141) | Batching of ReceivedBlockTrackerLogEvents for efficient WAL writes |  Major | DStreams | Burak Yavuz | Burak Yavuz |
| [SPARK-11462](https://issues.apache.org/jira/browse/SPARK-11462) | Add JavaStreamingListener |  Major | DStreams | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11333](https://issues.apache.org/jira/browse/SPARK-11333) | Add the receiver\'s executor information to UI |  Major | DStreams | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11590](https://issues.apache.org/jira/browse/SPARK-11590) | use native json\_tuple in lateral view |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-7316](https://issues.apache.org/jira/browse/SPARK-7316) | Add step capability to RDD sliding window |  Major | MLlib | Alexander Ulanov | Alexander Ulanov |
| [SPARK-9818](https://issues.apache.org/jira/browse/SPARK-9818) | Revert 6136, use docker to test JDBC datasources |  Major | SQL | Yijie Shen | Josh Rosen |
| [SPARK-11566](https://issues.apache.org/jira/browse/SPARK-11566) | Refactoring GaussianMixtureModel.gaussians in Python |  Trivial | MLlib, PySpark | Yu Ishikawa | Yu Ishikawa |
| [SPARK-11361](https://issues.apache.org/jira/browse/SPARK-11361) | Show scopes of RDD operations inside DStream.foreachRDD and DStream.transform in DAG viz |  Minor | DStreams | Tathagata Das | Tathagata Das |
| [SPARK-11290](https://issues.apache.org/jira/browse/SPARK-11290) | Implement trackStateByKey for improved state management |  Major | DStreams | Tathagata Das | Tathagata Das |
| [SPARK-11646](https://issues.apache.org/jira/browse/SPARK-11646) | WholeTextFileRDD should return Text rather than String |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11644](https://issues.apache.org/jira/browse/SPARK-11644) | Remove the option to turn off unsafe and codegen |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11645](https://issues.apache.org/jira/browse/SPARK-11645) | Remove OpenHashSet for the old aggregate. |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8992](https://issues.apache.org/jira/browse/SPARK-8992) | Add Pivot functionality to Spark SQL |  Major | SQL | Richard Williamson | Andrew Ray |
| [SPARK-10113](https://issues.apache.org/jira/browse/SPARK-10113) | Support for unsigned Parquet logical types |  Major | SQL | Jordan Thomas | Hyukjin Kwon |
| [SPARK-11658](https://issues.apache.org/jira/browse/SPARK-11658) | simplify documentation for PySpark combineByKey |  Minor | Documentation, PySpark | chris snow | chris snow |
| [SPARK-2533](https://issues.apache.org/jira/browse/SPARK-2533) | Show summary of locality level of completed tasks in the each stage page of web UI |  Minor | Web UI | Masayoshi TSUZUKI | Jean-Baptiste Onofré |
| [SPARK-11709](https://issues.apache.org/jira/browse/SPARK-11709) | Include call site info in SparkContext.assertNotStopped |  Major | Spark Core | Xiangrui Meng | Xiangrui Meng |
| [SPARK-11663](https://issues.apache.org/jira/browse/SPARK-11663) | Add Java API for trackStateByKey |  Major | DStreams | Tathagata Das | Shixiong Zhu |
| [SPARK-11419](https://issues.apache.org/jira/browse/SPARK-11419) | WriteAheadLog recovery improvements for when closeFileAfterWrite is enabled |  Major | DStreams | Burak Yavuz | Burak Yavuz |
| [SPARK-11629](https://issues.apache.org/jira/browse/SPARK-11629) | Python example code for Multilayer Perceptron Classification |  Minor | Documentation, ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-11723](https://issues.apache.org/jira/browse/SPARK-11723) | Use LibSVM data source rather than MLUtils.loadLibSVMFile to load DataFrame |  Minor | Documentation, Examples, ML | Yanbo Liang | Yanbo Liang |
| [SPARK-11690](https://issues.apache.org/jira/browse/SPARK-11690) | Add pivot to python api |  Minor | PySpark | Andrew Ray | Andrew Ray |
| [SPARK-7970](https://issues.apache.org/jira/browse/SPARK-7970) | Optimize code for SQL queries fired on Union of RDDs (closure cleaner) |  Major | Spark Core, SQL | Nitin Goyal | Nitin Goyal |
| [SPARK-11573](https://issues.apache.org/jira/browse/SPARK-11573) | correct \'reflective access of structural type member method should be enabled\' Scala warnings |  Trivial | Build | Gabor Liptak | Gabor Liptak |
| [SPARK-11736](https://issues.apache.org/jira/browse/SPARK-11736) | Add MonotonicallyIncreasingID to function registry |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-11738](https://issues.apache.org/jira/browse/SPARK-11738) | Make ArrayType orderable |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-11086](https://issues.apache.org/jira/browse/SPARK-11086) | createDataFrame should dropFactor column-wise not cell-wise |  Major | SparkR | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-9928](https://issues.apache.org/jira/browse/SPARK-9928) | LogicalLocalTable in ExistingRDD.scala is not referenced by any code else |  Trivial | SQL | Gen TANG | Xiao Li |
| [SPARK-11745](https://issues.apache.org/jira/browse/SPARK-11745) | Enable more JSON parsing options for parsing non-standard JSON files |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11044](https://issues.apache.org/jira/browse/SPARK-11044) | Parquet writer version fixed as version1 |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-11743](https://issues.apache.org/jira/browse/SPARK-11743) | Add UserDefinedType support to RowEncoder |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-11731](https://issues.apache.org/jira/browse/SPARK-11731) | Enable batching on Driver WriteAheadLog by default |  Major | DStreams | Burak Yavuz | Burak Yavuz |
| [SPARK-6328](https://issues.apache.org/jira/browse/SPARK-6328) | Python API for StreamingListener |  Major | PySpark | Yifan Wang | Yifan Wang |
| [SPARK-11754](https://issues.apache.org/jira/browse/SPARK-11754) | consolidate \`ExpressionEncoder.tuple\` and \`Encoders.tuple\` |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11742](https://issues.apache.org/jira/browse/SPARK-11742) | Show batch failures in the Streaming UI landing page |  Major | DStreams | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11695](https://issues.apache.org/jira/browse/SPARK-11695) | Set s3a credentials by default similarly to s3 and s3n |  Trivial | Spark Core | Chris Bannister | Chris Bannister |
| [SPARK-11767](https://issues.apache.org/jira/browse/SPARK-11767) | Easy to OOM when cache large column |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-11786](https://issues.apache.org/jira/browse/SPARK-11786) | Tone down error messages from AkkaRpcEnv |  Trivial | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11771](https://issues.apache.org/jira/browse/SPARK-11771) | Maximum memory is determined by two params but error message only lists one. |  Trivial | YARN | holdenk | holdenk |
| [SPARK-11583](https://issues.apache.org/jira/browse/SPARK-11583) | Make MapStatus use less memory uage |  Major | Scheduler, Spark Core | Kent Yao | Davies Liu |
| [SPARK-4557](https://issues.apache.org/jira/browse/SPARK-4557) | Spark Streaming\' foreachRDD method should accept a VoidFunction\<...\>, not a Function\<..., Void\> |  Minor | DStreams | Alexis Seigneurin | Bryan Cutler |
| [SPARK-11809](https://issues.apache.org/jira/browse/SPARK-11809) | Switch the default Mesos mode to coarse-grained mode |  Major | Mesos | Reynold Xin | Reynold Xin |
| [SPARK-10745](https://issues.apache.org/jira/browse/SPARK-10745) | Separate configs between shuffle and RPC |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11813](https://issues.apache.org/jira/browse/SPARK-11813) | Avoid serialization of vocab in Word2Vec |  Minor | MLlib | yuhao yang | yuhao yang |
| [SPARK-11488](https://issues.apache.org/jira/browse/SPARK-11488) | GroupedData should only keep common first order statistics |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-10930](https://issues.apache.org/jira/browse/SPARK-10930) | History "Stages" page "duration" can be confusing |  Major | Web UI | Thomas Graves | Derek Dagit |
| [SPARK-11495](https://issues.apache.org/jira/browse/SPARK-11495) | Fix potential socket / file handle leaks identified via static analysis |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-11814](https://issues.apache.org/jira/browse/SPARK-11814) | Set better default DStream checkpoint interval |  Major | DStreams | Tathagata Das | Tathagata Das |
| [SPARK-11816](https://issues.apache.org/jira/browse/SPARK-11816) | fix some style issue in ML/MLlib examples |  Trivial | Documentation, ML | yuhao yang | yuhao yang |
| [SPARK-11848](https://issues.apache.org/jira/browse/SPARK-11848) | [SQL] Support EXPLAIN in DataSet APIs |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-11750](https://issues.apache.org/jira/browse/SPARK-11750) | revert SPARK-11727 and code clean up |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11799](https://issues.apache.org/jira/browse/SPARK-11799) | Make it explicit in executor logs that uncaught exceptions are thrown during executor shutdown |  Minor | Spark Core | Srinivasa Reddy Vundela | Srinivasa Reddy Vundela |
| [SPARK-11746](https://issues.apache.org/jira/browse/SPARK-11746) | Use checkpoint-aware method \'dependencies\'  to instead of \'getDependencies\' |  Minor | Spark Core | SuYan | SuYan |
| [SPARK-11864](https://issues.apache.org/jira/browse/SPARK-11864) | Improve performance of max/min |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-11852](https://issues.apache.org/jira/browse/SPARK-11852) | StandardScaler minor refactor |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-11876](https://issues.apache.org/jira/browse/SPARK-11876) | [SQL] Support PrintSchema in DataSet APIs |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-11908](https://issues.apache.org/jira/browse/SPARK-11908) | Add NullType support to RowEncoder |  Minor | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-11895](https://issues.apache.org/jira/browse/SPARK-11895) | Rename and possibly update DatasetExample in mllib/examples |  Minor | Documentation, ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-11835](https://issues.apache.org/jira/browse/SPARK-11835) | Add a menu to the documentation of MLlib |  Major | Documentation, MLlib | Tim Hunter | Tim Hunter |
| [SPARK-11912](https://issues.apache.org/jira/browse/SPARK-11912) | ml.feature.PCA minor refactor |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-11902](https://issues.apache.org/jira/browse/SPARK-11902) | Unhandled case in VectorAssembler#transform |  Trivial | ML | Benjamin Fradet | Benjamin Fradet |
| [SPARK-11628](https://issues.apache.org/jira/browse/SPARK-11628) | spark-sql do not support for column datatype of CHAR |  Major | SQL | zhangshunyu | Xiu (Joe) Guo |
| [SPARK-7173](https://issues.apache.org/jira/browse/SPARK-7173) | Support YARN node label expressions for the application master |  Major | YARN | Sandy Ryza | Saisai Shao |
| [SPARK-11920](https://issues.apache.org/jira/browse/SPARK-11920) | ML LinearRegression should use correct dataset in examples and user guide doc |  Minor | Documentation, ML | Yanbo Liang | Yanbo Liang |
| [SPARK-4424](https://issues.apache.org/jira/browse/SPARK-4424) | Clean up all SparkContexts in unit tests so that spark.driver.allowMultipleContexts can be false |  Minor | Tests | Josh Rosen | Josh Rosen |
| [SPARK-11897](https://issues.apache.org/jira/browse/SPARK-11897) | Add @scala.annotations.varargs to sql functions that don\'t have it |  Minor | SQL | Henri DF | Xiu (Joe) Guo |
| [SPARK-10022](https://issues.apache.org/jira/browse/SPARK-10022) | Scala-Python method/parameter inconsistency check for ML during 1.5 QA |  Major | ML, MLlib, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-11926](https://issues.apache.org/jira/browse/SPARK-11926) | unify GetStructField and GetInternalRowField |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11914](https://issues.apache.org/jira/browse/SPARK-11914) | [SQL] Support coalesce and repartition in Dataset APIs |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-11686](https://issues.apache.org/jira/browse/SPARK-11686) | Issue WARN when dynamic allocation is disabled due to spark.dynamicAllocation.enabled and spark.executor.instances both set |  Trivial | Spark Core | Jacek Laskowski | Ashwin Swaroop |
| [SPARK-10864](https://issues.apache.org/jira/browse/SPARK-10864) | SparkUI: app name is hidden if window is resized |  Minor | Web UI | Andrew Or | Alex Bozarth |
| [SPARK-12011](https://issues.apache.org/jira/browse/SPARK-12011) | Stddev/Variance etc should support columnName as arguments |  Major | SQL | Yanbo Liang | Yanbo Liang |
| [SPARK-11881](https://issues.apache.org/jira/browse/SPARK-11881) | [SQL] JDBC Postgres fetchsize parameter ignored |  Major | SQL | Marius Van Niekerk | Marius Van Niekerk |
| [SPARK-11917](https://issues.apache.org/jira/browse/SPARK-11917) | Add SQLContext#dropTempTable to PySpark |  Minor | PySpark | Jeff Zhang | Jeff Zhang |
| [SPARK-12025](https://issues.apache.org/jira/browse/SPARK-12025) | Rename some window rank function names for SparkR |  Major | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-12035](https://issues.apache.org/jira/browse/SPARK-12035) | Add more debug information in include\_example tag of Jekyll |  Minor | Build, Documentation | Xusen Yin | Xusen Yin |
| [SPARK-12007](https://issues.apache.org/jira/browse/SPARK-12007) | Network library\'s RPC layer requires a lot of copying |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-12018](https://issues.apache.org/jira/browse/SPARK-12018) | Refactor common subexpression elimination code |  Minor | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-12065](https://issues.apache.org/jira/browse/SPARK-12065) | Upgrade Tachyon dependency to 0.8.2 |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-11328](https://issues.apache.org/jira/browse/SPARK-11328) | Provide more informative error message when direct parquet output committer is used and there is a file already exists error. |  Critical | SQL | Yin Huai | Nong Li |
| [SPARK-11503](https://issues.apache.org/jira/browse/SPARK-11503) | SQL API audit for Spark 1.6 |  Blocker | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12077](https://issues.apache.org/jira/browse/SPARK-12077) | Use more robust plan for single distinct aggregation |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-3580](https://issues.apache.org/jira/browse/SPARK-3580) | Add Consistent Method To Get Number of RDD Partitions Across Different Languages |  Major | PySpark, Spark Core | Pat McDonough | Jeroen Schot |
| [SPARK-12094](https://issues.apache.org/jira/browse/SPARK-12094) | Better format for query plan tree string |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-12115](https://issues.apache.org/jira/browse/SPARK-12115) | Change numPartitions() in RDD to be "getNumPartitions" to be consistent with pyspark/scala |  Major | SparkR | Sun Rui | Yanbo Liang |
| [SPARK-12044](https://issues.apache.org/jira/browse/SPARK-12044) | Fix usage of isnan, isNaN |  Major | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-12034](https://issues.apache.org/jira/browse/SPARK-12034) | Eliminate warnings in SparkR test cases |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-12103](https://issues.apache.org/jira/browse/SPARK-12103) | Clarify documentation of KafkaUtils createStream with multiple topics |  Minor | Documentation, DStreams | Dan Dutrow | Cody Koeninger |
| [SPARK-12166](https://issues.apache.org/jira/browse/SPARK-12166) | Unset hadoop related environment in testing |  Minor | Tests | Jeff Zhang | Jeff Zhang |
| [SPARK-12195](https://issues.apache.org/jira/browse/SPARK-12195) | Adding BigDecimal, Date and Timestamp into Encoder |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-12188](https://issues.apache.org/jira/browse/SPARK-12188) | [SQL] Code refactoring and comment correction in Dataset APIs |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-10393](https://issues.apache.org/jira/browse/SPARK-10393) | use ML pipeline in LDA example |  Minor | Examples, MLlib | yuhao yang | yuhao yang |
| [SPARK-10299](https://issues.apache.org/jira/browse/SPARK-10299) | word2vec should allow users to specify the window size |  Minor | MLlib | holdenk | holdenk |
| [SPARK-11824](https://issues.apache.org/jira/browse/SPARK-11824) | WebUI throws console error for descriptions with \'bad\' HTML |  Minor | SQL, Web UI | Andy Robb | Sean Owen |
| [SPARK-12251](https://issues.apache.org/jira/browse/SPARK-12251) | Document Spark 1.6\'s off-heap memory configurations and add config validation |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-11685](https://issues.apache.org/jira/browse/SPARK-11685) | Find duplicate content under examples/ |  Major | Documentation, ML, MLlib | Xiangrui Meng | Yanbo Liang |
| [SPARK-10477](https://issues.apache.org/jira/browse/SPARK-10477) | using DSL in ColumnPruningSuite to improve readablity |  Trivial | SQL, Tests | Wenchen Fan | Wenchen Fan |
| [SPARK-12364](https://issues.apache.org/jira/browse/SPARK-12364) | Add ML example for SparkR |  Major | ML, SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-6006](https://issues.apache.org/jira/browse/SPARK-6006) | Optimize count distinct in case of high cardinality columns |  Minor | SQL | Yash Datta | Davies Liu |
| [SPARK-12057](https://issues.apache.org/jira/browse/SPARK-12057) | Prevent failure on corrupt JSON records |  Minor | SQL | Ian Macalinao | Yin Huai |
| [SPARK-12397](https://issues.apache.org/jira/browse/SPARK-12397) | Improve error messages for data sources when they are not found |  Major | SQL | Reynold Xin | Reynold Xin |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-9924](https://issues.apache.org/jira/browse/SPARK-9924) | checkForLogs and cleanLogs are scheduled at fixed rate and can get piled up |  Major | Web UI | Rohit Agarwal | Rohit Agarwal |
| [SPARK-9969](https://issues.apache.org/jira/browse/SPARK-9969) | Remove old Yarn MR classpath api support for Spark Yarn client |  Minor | YARN | Saisai Shao | Saisai Shao |
| [SPARK-5754](https://issues.apache.org/jira/browse/SPARK-5754) | Spark AM not launching on Windows |  Major | Windows, YARN | Inigo | Carsten Blank |
| [SPARK-8889](https://issues.apache.org/jira/browse/SPARK-8889) | showDagViz will cause java.lang.OutOfMemoryError: Java heap space |  Minor | Web UI | cen yuhai | Rekha Joshi |
| [SPARK-9439](https://issues.apache.org/jira/browse/SPARK-9439) | ExternalShuffleService should be robust to NodeManager restarts in yarn |  Critical | Shuffle | Imran Rashid | Imran Rashid |
| [SPARK-10251](https://issues.apache.org/jira/browse/SPARK-10251) | Some internal spark classes are not registered with kryo |  Major | Spark Core | Soren Macbeth | Ram Sriharsha |
| [SPARK-10182](https://issues.apache.org/jira/browse/SPARK-10182) | GeneralizedLinearModel doesn\'t unpersist cached data |  Minor | MLlib | Vyacheslav Baranov | Vyacheslav Baranov |
| [SPARK-10351](https://issues.apache.org/jira/browse/SPARK-10351) | UnsafeRow.getUTF8String should handle off-heap backed UnsafeRow |  Critical | SQL | Feynman Liang | Feynman Liang |
| [SPARK-8730](https://issues.apache.org/jira/browse/SPARK-8730) | Deser primitive class with Java serialization |  Critical | Spark Core | Eugen Cepoi | Eugen Cepoi |
| [SPARK-10170](https://issues.apache.org/jira/browse/SPARK-10170) | Add DB2 JDBC dialect support |  Major | SQL | Suresh Thalamati | Suresh Thalamati |
| [SPARK-10301](https://issues.apache.org/jira/browse/SPARK-10301) | For struct type, if parquet\'s global schema has less fields than a file\'s schema, data reading will fail |  Critical | SQL | Yin Huai | Cheng Lian |
| [SPARK-10162](https://issues.apache.org/jira/browse/SPARK-10162) | PySpark filters with datetimes mess up when datetimes have timezones. |  Major | PySpark | Kevin Cox | Alexey Grishchenko |
| [SPARK-10392](https://issues.apache.org/jira/browse/SPARK-10392) | Pyspark - Wrong DateType support on JDBC connection |  Major | PySpark, SQL | Maciej Bryński | Alexey Grishchenko |
| [SPARK-7336](https://issues.apache.org/jira/browse/SPARK-7336) | Sometimes the status of finished job show on JobHistory UI will be active, and never update. |  Minor | Web UI | ShaoChuan | ShaoChuan |
| [SPARK-10034](https://issues.apache.org/jira/browse/SPARK-10034) | add regression test for Sort on Aggregate |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10004](https://issues.apache.org/jira/browse/SPARK-10004) | Shuffle service should make sure applications are allowed to read shuffle data |  Critical | Shuffle | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-10417](https://issues.apache.org/jira/browse/SPARK-10417) | Iterating through Column results in infinite loop |  Minor | PySpark | Zoltan Toth | Alexey Grishchenko |
| [SPARK-5945](https://issues.apache.org/jira/browse/SPARK-5945) | Spark should not retry a stage infinitely on a FetchFailedException |  Critical | Spark Core | Imran Rashid | Ilya Ganelin |
| [SPARK-8707](https://issues.apache.org/jira/browse/SPARK-8707) | RDD#toDebugString fails if any cached RDD has invalid partitions |  Major | Spark Core | Aaron Davidson | Navis |
| [SPARK-10379](https://issues.apache.org/jira/browse/SPARK-10379) | UnsafeShuffleExternalSorter should preserve first page |  Critical | SQL | Davies Liu | Davies Liu |
| [SPARK-10332](https://issues.apache.org/jira/browse/SPARK-10332) | spark-submit to yarn doesn\'t fail if executors is 0 |  Minor | Spark Submit, YARN | Thomas Graves | holdenk |
| [SPARK-9596](https://issues.apache.org/jira/browse/SPARK-9596) | Avoid reloading Hadoop classes like UserGroupInformation |  Major | SQL | Tao Wang | Tao Wang |
| [SPARK-8951](https://issues.apache.org/jira/browse/SPARK-8951) | support CJK characters in collect() |  Minor | SparkR | Jaehong Choi | Jaehong Choi |
| [SPARK-10432](https://issues.apache.org/jira/browse/SPARK-10432) | spark.port.maxRetries documentation is unclear |  Minor | Documentation | Thomas Graves | Thomas Graves |
| [SPARK-9869](https://issues.apache.org/jira/browse/SPARK-9869) | Flaky test: o.a.s.streaming.InputStreamSuite - socket input stream |  Critical | DStreams | Josh Rosen | Pete Robbins |
| [SPARK-10431](https://issues.apache.org/jira/browse/SPARK-10431) | Flaky test: o.a.s.metrics.InputOutputMetricsSuite - input metrics with cache and coalesce |  Critical | Tests | Pete Robbins | Pete Robbins |
| [SPARK-9672](https://issues.apache.org/jira/browse/SPARK-9672) | Drivers run in cluster mode on mesos may not have spark-env variables available |  Minor | Mesos, Spark Submit | Patrick Shields | Patrick Shields |
| [SPARK-10430](https://issues.apache.org/jira/browse/SPARK-10430) | AccumulableInfo and RDDOperationScope violates hashCode + equals contract |  Minor | Spark Core | Vinod KC | Vinod KC |
| [SPARK-9591](https://issues.apache.org/jira/browse/SPARK-9591) | Job failed for exception during getting Broadcast variable |  Major | Spark Core | jeanlyn | jeanlyn |
| [SPARK-10435](https://issues.apache.org/jira/browse/SPARK-10435) | SparkSubmit should fail fast for Mesos cluster mode with R |  Major | Spark Submit | Andrew Or | Andrew Or |
| [SPARK-10421](https://issues.apache.org/jira/browse/SPARK-10421) | tachyon dependency can leak different curator artifact versions |  Minor | Build | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-10003](https://issues.apache.org/jira/browse/SPARK-10003) | Improve readability of DAGScheduler |  Major | Scheduler | Andrew Or | Andrew Or |
| [SPARK-10176](https://issues.apache.org/jira/browse/SPARK-10176) | Show partially analyzed plan when checkAnswer df fails to resolve |  Major | SQL, Tests | Michael Armbrust | Michael Armbrust |
| [SPARK-10454](https://issues.apache.org/jira/browse/SPARK-10454) | Flaky test: o.a.s.scheduler.DAGSchedulerSuite.late fetch failures don\'t cause multiple concurrent attempts for the same map stage |  Critical | Scheduler, Spark Core | Pete Robbins | Pete Robbins |
| [SPARK-10311](https://issues.apache.org/jira/browse/SPARK-10311) | In cluster mode, AppId and AttemptId should be update when ApplicationMaster is new |  Major | DStreams | meiyoula | meiyoula |
| [SPARK-10434](https://issues.apache.org/jira/browse/SPARK-10434) | Parquet compatibility with 1.4 is broken when writing arrays that may contain nulls |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-9170](https://issues.apache.org/jira/browse/SPARK-9170) | ORC data source creates a schema with lowercase table names |  Major | SQL | Peter Rudenko | Liang-Chi Hsieh |
| [SPARK-10480](https://issues.apache.org/jira/browse/SPARK-10480) | ML.LinearRegressionModel.copy() can not use argument "extra" |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-10479](https://issues.apache.org/jira/browse/SPARK-10479) | LogisticRegression copy should copy model summary if available |  Minor | ML | Feynman Liang | Yanbo Liang |
| [SPARK-10316](https://issues.apache.org/jira/browse/SPARK-10316) | respect non-deterministic expressions in PhysicalOperation |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10470](https://issues.apache.org/jira/browse/SPARK-10470) | ml.IsotonicRegressionModel.copy did not set parent |  Major | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-10441](https://issues.apache.org/jira/browse/SPARK-10441) | Cannot write timestamp to JSON |  Critical | SQL | Yin Huai | Yin Huai |
| [SPARK-10327](https://issues.apache.org/jira/browse/SPARK-10327) | Cache Table is not working while subquery has alias in its project list |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-10227](https://issues.apache.org/jira/browse/SPARK-10227) | sbt build on Scala 2.11 fails |  Major | Spark Core | Luc Bourlier | Luc Bourlier |
| [SPARK-7736](https://issues.apache.org/jira/browse/SPARK-7736) | Exception not failing Python applications (in yarn cluster mode) |  Major | YARN | Shay Rojansky | Marcelo Vanzin |
| [SPARK-10497](https://issues.apache.org/jira/browse/SPARK-10497) | Release utils does not work with new version of jira-python library |  Minor | Build | holdenk | holdenk |
| [SPARK-10466](https://issues.apache.org/jira/browse/SPARK-10466) | UnsafeRow exception in Sort-Based Shuffle with data spill |  Blocker | SQL | Cheng Hao | Cheng Hao |
| [SPARK-8167](https://issues.apache.org/jira/browse/SPARK-8167) | Tasks that fail due to YARN preemption can cause job failure |  Blocker | Scheduler, YARN | Patrick Woody | Matt Cheah |
| [SPARK-10514](https://issues.apache.org/jira/browse/SPARK-10514) | Minimum ratio of registered resources [ spark.scheduler.minRegisteredResourcesRatio] is not enabled for Mesos Coarse Grained mode |  Major | Mesos | Akash Mishra | Akash Mishra |
| [SPARK-10556](https://issues.apache.org/jira/browse/SPARK-10556) | SBT build explicitly sets Scala version, which can conflict with SBT\'s own scala version |  Minor | Build | Ahir Reddy | Ahir Reddy |
| [SPARK-10472](https://issues.apache.org/jira/browse/SPARK-10472) | UserDefinedType.typeName gives wrong result |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-10442](https://issues.apache.org/jira/browse/SPARK-10442) | select cast(\'false\' as boolean) returns true |  Critical | SQL | Yin Huai | Wenchen Fan |
| [SPARK-10564](https://issues.apache.org/jira/browse/SPARK-10564) | ThreadingSuite: assertions in threads don\'t fail the test |  Critical | Tests | Andrew Or | Andrew Or |
| [SPARK-10566](https://issues.apache.org/jira/browse/SPARK-10566) | SnappyCompressionCodec init exception handling masks important error information |  Minor | Input/Output | Daniel Imfeld | Daniel Imfeld |
| [SPARK-10554](https://issues.apache.org/jira/browse/SPARK-10554) | Potential NPE with ShutdownHook |  Minor | Block Manager | Nithin Asokan | Nithin Asokan |
| [SPARK-10330](https://issues.apache.org/jira/browse/SPARK-10330) | Use SparkHadoopUtil TaskAttemptContext reflection methods in more places |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-10584](https://issues.apache.org/jira/browse/SPARK-10584) | Documentation about the compatible Hive version is wrong. |  Minor | Documentation, SQL | Kousuke Saruta | Kousuke Saruta |
| [SPARK-10573](https://issues.apache.org/jira/browse/SPARK-10573) | IndexToString transformSchema adds output field as DoubleType |  Major | ML | Nick Pritchard | Nick Pritchard |
| [SPARK-10522](https://issues.apache.org/jira/browse/SPARK-10522) | Nanoseconds part of Timestamp should be positive in parquet |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-10594](https://issues.apache.org/jira/browse/SPARK-10594) | ApplicationMaster "--help" references the removed "--num-executors" option |  Trivial | YARN | Erick Tryzelaar | Erick Tryzelaar |
| [SPARK-10549](https://issues.apache.org/jira/browse/SPARK-10549) | scala 2.11 spark on yarn with security - Repl doesn\'t work |  Major | Spark Shell | Thomas Graves | Thomas Graves |
| [SPARK-10543](https://issues.apache.org/jira/browse/SPARK-10543) | Peak Execution Memory Quantile should be Per-task Basis |  Minor | Spark Core | Sen Fang | Sen Fang |
| [SPARK-10542](https://issues.apache.org/jira/browse/SPARK-10542) | The  PySpark 1.5 closure serializer can\'t serialize a namedtuple instance. |  Critical | PySpark | Davies Liu | Davies Liu |
| [SPARK-9793](https://issues.apache.org/jira/browse/SPARK-9793) | PySpark DenseVector, SparseVector should override \_\_eq\_\_ and \_\_hash\_\_ |  Critical | ML, PySpark | Joseph K. Bradley | Yanbo Liang |
| [SPARK-10598](https://issues.apache.org/jira/browse/SPARK-10598) | RoutingTablePartition toMessage method refers to bytes instead of bits |  Trivial | Documentation | Robin East | Robin East |
| [SPARK-10437](https://issues.apache.org/jira/browse/SPARK-10437) | Support aggregation expressions in Order By |  Major | SQL | Harish Butani | Liang-Chi Hsieh |
| [SPARK-10563](https://issues.apache.org/jira/browse/SPARK-10563) | SparkContext\'s local properties should be cloned when inherited |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-10613](https://issues.apache.org/jira/browse/SPARK-10613) | Reduce LocalNode tests dependency on SQLContext |  Major | SQL, Tests | Andrew Or | Andrew Or |
| [SPARK-10624](https://issues.apache.org/jira/browse/SPARK-10624) | TakeOrderedAndProjectNode output is not ordered |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-10381](https://issues.apache.org/jira/browse/SPARK-10381) | Infinite loop when OutputCommitCoordination is enabled and OutputCommitter.commitTask throws exception |  Critical | Scheduler | Josh Rosen | Josh Rosen |
| [SPARK-9078](https://issues.apache.org/jira/browse/SPARK-9078) | Use of non-standard LIMIT keyword in JDBC tableExists code |  Minor | SQL | Robert Beauchemin | Suresh Thalamati |
| [SPARK-10511](https://issues.apache.org/jira/browse/SPARK-10511) | Source releases should not include maven jars |  Blocker | Build | Patrick Wendell | Luciano Resende |
| [SPARK-10589](https://issues.apache.org/jira/browse/SPARK-10589) | Add defense against external site framing |  Minor | Web UI | Sean Owen | Sean Owen |
| [SPARK-9794](https://issues.apache.org/jira/browse/SPARK-9794) | ISO DateTime parser is too strict |  Major | SQL | Alex Angelini | Kevin Cox |
| [SPARK-10642](https://issues.apache.org/jira/browse/SPARK-10642) | Crash in rdd.lookup() with "java.lang.Long cannot be cast to java.lang.Integer" |  Major | PySpark | Thouis Jones | Liang-Chi Hsieh |
| [SPARK-10650](https://issues.apache.org/jira/browse/SPARK-10650) | Spark docs include test and other extra classes |  Critical | Documentation | Patrick Wendell | Michael Armbrust |
| [SPARK-10639](https://issues.apache.org/jira/browse/SPARK-10639) | Need to convert UDAF\'s result from scala to sql type |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-10172](https://issues.apache.org/jira/browse/SPARK-10172) | History Server web UI gets messed up when sorting on any column |  Minor | Web UI | Min Shen | Josiah Samuel Sathiadass |
| [SPARK-10540](https://issues.apache.org/jira/browse/SPARK-10540) | HadoopFsRelationTest\'s "test all data types" is flaky |  Major | SQL | Yin Huai | Cheng Lian |
| [SPARK-10539](https://issues.apache.org/jira/browse/SPARK-10539) | Intersection Optimization is Wrong |  Blocker | SQL | Michael Armbrust | Yijie Shen |
| [SPARK-10449](https://issues.apache.org/jira/browse/SPARK-10449) | StructType.merge shouldn\'t merge DecimalTypes with different precisions and/or scales |  Major | SQL | Cheng Lian | holdenk |
| [SPARK-10611](https://issues.apache.org/jira/browse/SPARK-10611) | Configuration object thread safety issue in NewHadoopRDD |  Critical | Spark Core | Mingyu Kim | Mingyu Kim |
| [SPARK-10623](https://issues.apache.org/jira/browse/SPARK-10623) | NoSuchElementException thrown when ORC predicate push-down is turned on |  Blocker | SQL | Ram Sriharsha | Zhan Zhang |
| [SPARK-10155](https://issues.apache.org/jira/browse/SPARK-10155) | Memory leak in SQL parsers |  Critical | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7989](https://issues.apache.org/jira/browse/SPARK-7989) | Fix flaky tests in ExternalShuffleServiceSuite and SparkListenerWithClusterSuite |  Critical | Spark Core, Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-10662](https://issues.apache.org/jira/browse/SPARK-10662) | Code snippets are not properly formatted in tables |  Trivial | Documentation | Jacek Laskowski | Jacek Laskowski |
| [SPARK-5259](https://issues.apache.org/jira/browse/SPARK-5259) | Do not submit stage until its dependencies map outputs are registered |  Critical | Spark Core | SuYan | SuYan |
| [SPARK-10649](https://issues.apache.org/jira/browse/SPARK-10649) | Streaming jobs unexpectedly inherits job group, job descriptions from context starting thread |  Major | DStreams | Tathagata Das | Tathagata Das |
| [SPARK-10495](https://issues.apache.org/jira/browse/SPARK-10495) | For json data source, date values are saved as int strings |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-10711](https://issues.apache.org/jira/browse/SPARK-10711) | Do not assume spark.submit.deployMode is always set |  Critical | SparkR | Hossein Falaki | Hossein Falaki |
| [SPARK-8567](https://issues.apache.org/jira/browse/SPARK-8567) | Flaky test: o.a.s.sql.hive.HiveSparkSubmitSuite --jars |  Blocker | SQL, Tests | Yin Huai | Yin Huai |
| [SPARK-10695](https://issues.apache.org/jira/browse/SPARK-10695) | spark.mesos.constraints documentation uses "=" to separate value instead ":" as parser and mesos expects. |  Critical | Documentation, Mesos | Akash Mishra | Akash Mishra |
| [SPARK-10718](https://issues.apache.org/jira/browse/SPARK-10718) | Update License on conf files and corresponding excludes file |  Minor | Build | Rekha Joshi | Rekha Joshi |
| [SPARK-10750](https://issues.apache.org/jira/browse/SPARK-10750) | ML Param validate should print better error information |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-9585](https://issues.apache.org/jira/browse/SPARK-9585) | HiveHBaseTableInputFormat can\'be cached |  Major | Spark Core | meiyoula | meiyoula |
| [SPARK-10593](https://issues.apache.org/jira/browse/SPARK-10593) | sql lateral view same name gives wrong value |  Blocker | SQL | Davies Liu | Davies Liu |
| [SPARK-10740](https://issues.apache.org/jira/browse/SPARK-10740) | handle nondeterministic expressions correctly for set operations |  Blocker | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10672](https://issues.apache.org/jira/browse/SPARK-10672) | We should not fail to create a table If we cannot persist metadata of a data source table to metastore in a Hive compatible way |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-10737](https://issues.apache.org/jira/browse/SPARK-10737) | When using UnsafeRows, SortMergeJoin may return wrong results |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-8632](https://issues.apache.org/jira/browse/SPARK-8632) | Poor Python UDF performance because of RDD caching |  Blocker | PySpark, SQL | Justin Uang | Davies Liu |
| [SPARK-10685](https://issues.apache.org/jira/browse/SPARK-10685) | Misaligned data with RDD.zip and DataFrame.withColumn after repartition |  Blocker | PySpark, SQL | Dan Brown | Reynold Xin |
| [SPARK-10640](https://issues.apache.org/jira/browse/SPARK-10640) | Spark history server fails to parse taskEndReasonFromJson TaskCommitDenied |  Blocker | Spark Core | Thomas Graves | Andrew Or |
| [SPARK-10310](https://issues.apache.org/jira/browse/SPARK-10310) | [Spark SQL] All result records will be popluated into ONE line during the script transform due to missing the correct line/filed delimiter |  Critical | SQL | Yi Zhou | zhichao-li |
| [SPARK-10224](https://issues.apache.org/jira/browse/SPARK-10224) | BlockGenerator may lost data in the last block |  Critical | DStreams | Shixiong Zhu | Shixiong Zhu |
| [SPARK-10769](https://issues.apache.org/jira/browse/SPARK-10769) | Fix o.a.s.streaming.CheckpointSuite.maintains rate controller |  Major | DStreams | Shixiong Zhu | Shixiong Zhu |
| [SPARK-10494](https://issues.apache.org/jira/browse/SPARK-10494) | Multiple Python UDFs together with aggregation or sort merge join may cause OOM (failed to acquire memory) |  Critical | PySpark, SQL | Davies Liu | Reynold Xin |
| [SPARK-10403](https://issues.apache.org/jira/browse/SPARK-10403) | UnsafeRowSerializer can\'t work with UnsafeShuffleManager (tungsten-sort) |  Major | SQL | Davies Liu | Josh Rosen |
| [SPARK-10731](https://issues.apache.org/jira/browse/SPARK-10731) | The head() implementation of dataframe is very slow |  Major | PySpark | Jerry Lam | Reynold Xin |
| [SPARK-10474](https://issues.apache.org/jira/browse/SPARK-10474) | TungstenAggregation cannot acquire memory for pointer array after switching to sort-based |  Blocker | SQL | Yi Zhou | Andrew Or |
| [SPARK-10692](https://issues.apache.org/jira/browse/SPARK-10692) | Failed batches are never reported through the StreamingListener interface |  Critical | DStreams | Tathagata Das | Shixiong Zhu |
| [SPARK-10705](https://issues.apache.org/jira/browse/SPARK-10705) | Stop converting internal rows to external rows in DataFrame.toJSON |  Major | SQL | Cheng Lian | Liang-Chi Hsieh |
| [SPARK-10741](https://issues.apache.org/jira/browse/SPARK-10741) | Hive Query Having/OrderBy against Parquet table is not working |  Major | SQL | Ian | Wenchen Fan |
| [SPARK-9724](https://issues.apache.org/jira/browse/SPARK-9724) | Avoid unnecessary redirects in the Spark Web UI |  Minor | Web UI | Rohit Agarwal | Rohit Agarwal |
| [SPARK-10812](https://issues.apache.org/jira/browse/SPARK-10812) | Spark Hadoop Util does not support stopping a non-yarn Spark Context & starting a Yarn spark context. |  Minor | YARN | holdenk | Holden Karau |
| [SPARK-10790](https://issues.apache.org/jira/browse/SPARK-10790) | Dynamic Allocation does not request any executors if first stage needs less than or equal to spark.dynamicAllocation.initialExecutors |  Major | Scheduler | Jonathan Kelly | Saisai Shao |
| [SPARK-10859](https://issues.apache.org/jira/browse/SPARK-10859) | Predicates pushed to InmemoryColumnarTableScan are not evaluated correctly |  Blocker | SQL | Davies Liu | Davies Liu |
| [SPARK-10825](https://issues.apache.org/jira/browse/SPARK-10825) | Flaky test: StandaloneDynamicAllocationSuite |  Critical | Spark Core, Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-10851](https://issues.apache.org/jira/browse/SPARK-10851) | Exception not failing R applications (in yarn cluster mode) |  Major | SparkR, YARN | Zsolt Tóth | Sun Rui |
| [SPARK-10058](https://issues.apache.org/jira/browse/SPARK-10058) | Flaky test: HeartbeatReceiverSuite: normal heartbeat |  Critical | Spark Core, Tests | Davies Liu | Shixiong Zhu |
| [SPARK-10865](https://issues.apache.org/jira/browse/SPARK-10865) | [Spark SQL] [UDF] the ceil/ceiling function got wrong return value type |  Major | SQL | Yi Zhou | Cheng Hao |
| [SPARK-10866](https://issues.apache.org/jira/browse/SPARK-10866) | [Spark SQL] [UDF] the floor function got wrong return value type |  Major | SQL | Yi Zhou | Cheng Hao |
| [SPARK-10671](https://issues.apache.org/jira/browse/SPARK-10671) | Calling a UDF with insufficient number of input arguments should throw an analysis error |  Major | SQL | Yin Huai | Wenchen Fan |
| [SPARK-10317](https://issues.apache.org/jira/browse/SPARK-10317) | start-history-server.sh CLI parsing incompatible with HistoryServer\'s arg parsing |  Trivial | Spark Core | Steve Loughran | Rekha Joshi |
| [SPARK-10904](https://issues.apache.org/jira/browse/SPARK-10904) |   select(df, c("col1", "col2")) fails |  Major | SparkR | Weiqiang Zhuang | Felix Cheung |
| [SPARK-10934](https://issues.apache.org/jira/browse/SPARK-10934) | hashCode of unsafe array may crash |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10900](https://issues.apache.org/jira/browse/SPARK-10900) | Add output operation events to StreamingListener |  Major | DStreams | Shixiong Zhu | Shixiong Zhu |
| [SPARK-10916](https://issues.apache.org/jira/browse/SPARK-10916) | YARN executors are launched with the default perm gen size |  Major | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-10901](https://issues.apache.org/jira/browse/SPARK-10901) | spark.yarn.user.classpath.first doesn\'t work |  Critical | YARN | Thomas Graves | Thomas Graves |
| [SPARK-10957](https://issues.apache.org/jira/browse/SPARK-10957) | setParams changes quantileProbabilities unexpectly in PySpark\'s AFTSurvivalRegression |  Major | ML, PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-10885](https://issues.apache.org/jira/browse/SPARK-10885) | Display the failed output op in Streaming UI |  Major | DStreams | Shixiong Zhu | Shixiong Zhu |
| [SPARK-10952](https://issues.apache.org/jira/browse/SPARK-10952) | Don\'t explode the environment when HIVE\_HOME isn\'t set. |  Minor | Build | Kevin Cox | Kevin Cox |
| [SPARK-10966](https://issues.apache.org/jira/browse/SPARK-10966) | Code-generation framework cleanup |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-10679](https://issues.apache.org/jira/browse/SPARK-10679) | javax.jdo.JDOFatalUserException in executor |  Minor | Spark Core | Navis | Reynold Xin |
| [SPARK-10980](https://issues.apache.org/jira/browse/SPARK-10980) | Create wrong decimal if unscaled \> 1e18 and scale \> 0 |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-7869](https://issues.apache.org/jira/browse/SPARK-7869) | Spark Data Frame Fails to Load Postgres Tables with JSONB DataType Columns |  Minor | PySpark, SQL | Brad Willard | Alexey Grishchenko |
| [SPARK-10999](https://issues.apache.org/jira/browse/SPARK-10999) | Physical plan node Coalesce should be able to handle UnsafeRow |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-10987](https://issues.apache.org/jira/browse/SPARK-10987) | yarn-client mode misbehaving with netty-based RPC backend |  Blocker | Spark Core, YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-10998](https://issues.apache.org/jira/browse/SPARK-10998) | Show non-children in default Expression.toString |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-10337](https://issues.apache.org/jira/browse/SPARK-10337) | Views are broken |  Critical | SQL | Michael Armbrust | Wenchen Fan |
| [SPARK-10914](https://issues.apache.org/jira/browse/SPARK-10914) | UnsafeRow serialization breaks when two machines have different Oops size |  Major | SQL | Ben Moran | Reynold Xin |
| [SPARK-10902](https://issues.apache.org/jira/browse/SPARK-10902) | Hive UDF current\_database() does not work |  Critical | SQL | Davies Liu | Davies Liu |
| [SPARK-11019](https://issues.apache.org/jira/browse/SPARK-11019) | [streaming] [flume] Gracefully shutdown Flume receiver threads |  Major | DStreams | Hari Shreedharan | Hari Shreedharan |
| [SPARK-10955](https://issues.apache.org/jira/browse/SPARK-10955) | Warn if dynamic allocation is enabled for Streaming jobs |  Major | DStreams | Hari Shreedharan | Hari Shreedharan |
| [SPARK-10875](https://issues.apache.org/jira/browse/SPARK-10875) | RowMatrix.computeCovariance() result is not exactly symmetric |  Minor | MLlib | Nick Pritchard | Nick Pritchard |
| [SPARK-10858](https://issues.apache.org/jira/browse/SPARK-10858) | YARN: archives/jar/files rename with # doesn\'t work unless scheme given |  Minor | YARN | Thomas Graves | Thomas Graves |
| [SPARK-10772](https://issues.apache.org/jira/browse/SPARK-10772) | NullPointerException when transform function in DStream returns NULL |  Minor | DStreams | Jack Hu | Jack Hu |
| [SPARK-10960](https://issues.apache.org/jira/browse/SPARK-10960) | SQL with windowing function cannot reference column in inner select block |  Major | SQL | David Wong | Liang-Chi Hsieh |
| [SPARK-11007](https://issues.apache.org/jira/browse/SPARK-11007) | Add dictionary support for CatalystDecimalConverter |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-11018](https://issues.apache.org/jira/browse/SPARK-11018) | Support UDT in codegen and unsafe projection |  Blocker | SQL | Davies Liu | Davies Liu |
| [SPARK-11026](https://issues.apache.org/jira/browse/SPARK-11026) | spark.yarn.user.classpath.first does work for \'spark-submit --jars hdfs://user/foo.jar\' |  Major | YARN | Lianhui Wang | Lianhui Wang |
| [SPARK-11009](https://issues.apache.org/jira/browse/SPARK-11009) | RowNumber in HiveContext returns negative values in cluster mode |  Blocker | Spark Core | Saif Addin Ellafi | Davies Liu |
| [SPARK-5391](https://issues.apache.org/jira/browse/SPARK-5391) | SparkSQL fails to create tables with custom JSON SerDe |  Major | SQL | David Ross | Davies Liu |
| [SPARK-11052](https://issues.apache.org/jira/browse/SPARK-11052) | Spaces in the build dir causes failures in the build/mvn script |  Minor | Build | Trystan Leftwich | Trystan Leftwich |
| [SPARK-11080](https://issues.apache.org/jira/browse/SPARK-11080) | Incorporate per-JVM id into ExprId to prevent unsafe cross-JVM comparisions |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-11059](https://issues.apache.org/jira/browse/SPARK-11059) | ML: change range of quantile probabilities in AFTSurvivalRegression |  Minor | ML | Kai Jiang | Kai Jiang |
| [SPARK-10959](https://issues.apache.org/jira/browse/SPARK-10959) | PySpark StreamingLogisticRegressionWithSGD does not train with given regParam and convergenceTol parameters |  Critical | PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-11032](https://issues.apache.org/jira/browse/SPARK-11032) | Failure to resolve having correctly |  Blocker | SQL | Michael Armbrust | Wenchen Fan |
| [SPARK-11091](https://issues.apache.org/jira/browse/SPARK-11091) | Change the flag of spark.sql.canonicalizeView to spark.sql.nativeView |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-10981](https://issues.apache.org/jira/browse/SPARK-10981) | R semijoin leads to Java errors, R leftsemi leads to Spark errors |  Minor | SparkR | Monica Liu | Monica Liu |
| [SPARK-11083](https://issues.apache.org/jira/browse/SPARK-11083) | insert overwrite table failed when beeline reconnect |  Major | SQL | Weizhong | Davies Liu |
| [SPARK-10619](https://issues.apache.org/jira/browse/SPARK-10619) | Can\'t sort columns on Executor Page |  Major | Web UI | Thomas Graves | Thomas Graves |
| [SPARK-11040](https://issues.apache.org/jira/browse/SPARK-11040) | SaslRpcHandler does not delegate all methods to underlying handler |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-10845](https://issues.apache.org/jira/browse/SPARK-10845) | SQL option "spark.sql.hive.version" doesn\'t show up in the result of "SET -v" |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-8386](https://issues.apache.org/jira/browse/SPARK-8386) | DataFrame and JDBC regression |  Critical | SQL | Peter Haumer | Huaxin Gao |
| [SPARK-10973](https://issues.apache.org/jira/browse/SPARK-10973) | \_\_gettitem\_\_ method throws IndexError exception when we try to access index after the last non-zero entry. |  Major | MLlib, PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-10829](https://issues.apache.org/jira/browse/SPARK-10829) | Scan DataSource with predicate expression combine partition key and attributes doesn\'t work |  Critical | SQL | Cheng Hao | Cheng Hao |
| [SPARK-11093](https://issues.apache.org/jira/browse/SPARK-11093) | ChildFirstURLClassLoader#getResources should return all found resources, not just those in the child classloader |  Major | Spark Core | Adam Lewandowski | Adam Lewandowski |
| [SPARK-11099](https://issues.apache.org/jira/browse/SPARK-11099) | Default conf property file is not loaded |  Critical | Spark Shell, Spark Submit | Jeff Zhang | Jeff Zhang |
| [SPARK-11066](https://issues.apache.org/jira/browse/SPARK-11066) | Flaky test o.a.scheduler.DAGSchedulerSuite.misbehavedResultHandler occasionally fails due to j.l.UnsupportedOperationException concerning a finished JobWaiter |  Minor | Scheduler, Spark Core, Tests | Dr Stephen A Hellberg | Dr Stephen A Hellberg |
| [SPARK-11047](https://issues.apache.org/jira/browse/SPARK-11047) | Internal accumulators miss the internal flag when replaying events in the history server |  Critical | Spark Core | Carson Wang | Carson Wang |
| [SPARK-11071](https://issues.apache.org/jira/browse/SPARK-11071) | Flaky test: o.a.s.launcher.LauncherServerSuite |  Major | Tests | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-10515](https://issues.apache.org/jira/browse/SPARK-10515) | When killing executor, the pending replacement executors will be lost |  Major | Spark Core | KaiXinXIaoLei | KaiXinXIaoLei |
| [SPARK-10412](https://issues.apache.org/jira/browse/SPARK-10412) | In SQL tab, show execution memory per physical operator |  Major | SQL, Web UI | Andrew Or | Wenchen Fan |
| [SPARK-11135](https://issues.apache.org/jira/browse/SPARK-11135) | Exchange sort-planning logic incorrectly avoid sorts when existing ordering is non-empty subset of required ordering |  Blocker | SQL | Josh Rosen | Josh Rosen |
| [SPARK-11060](https://issues.apache.org/jira/browse/SPARK-11060) | Fix some potential NPEs in DStream transformation |  Minor | DStreams | Saisai Shao | Saisai Shao |
| [SPARK-11094](https://issues.apache.org/jira/browse/SPARK-11094) | Test runner script fails to parse Java version. |  Minor | Tests | Jakob Odersky | Jakob Odersky |
| [SPARK-11124](https://issues.apache.org/jira/browse/SPARK-11124) | JsonParser/Generator should be closed for resource recycle |  Trivial | Spark Core | Navis | Navis |
| [SPARK-10581](https://issues.apache.org/jira/browse/SPARK-10581) | Groups are not resolved in scaladoc for org.apache.spark.sql.Column |  Minor | Documentation | Jacek Laskowski | Pravin Gadakh |
| [SPARK-11104](https://issues.apache.org/jira/browse/SPARK-11104) | A potential deadlock in StreamingContext.stop and stopOnShutdown |  Major | DStreams | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7214](https://issues.apache.org/jira/browse/SPARK-7214) | Unrolling never evicts blocks when MemoryStore is nearly full |  Minor | Block Manager | Charles Reiss | Andrew Or |
| [SPARK-11165](https://issues.apache.org/jira/browse/SPARK-11165) | Logging trait should be private - not DeveloperApi |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-10185](https://issues.apache.org/jira/browse/SPARK-10185) | Spark SQL does not handle comma separates paths on Hadoop FileSystem |  Major | SQL | koert kuipers | Koert Kuipers |
| [SPARK-11000](https://issues.apache.org/jira/browse/SPARK-11000) | Derby have booted the database twice in yarn security mode. |  Major | Spark Shell, SQL, YARN | carlmartin | carlmartin |
| [SPARK-11174](https://issues.apache.org/jira/browse/SPARK-11174) | Typo in the GraphX programming guide |  Trivial | Documentation, GraphX | Łukasz Piepiora | Łukasz Piepiora |
| [SPARK-11126](https://issues.apache.org/jira/browse/SPARK-11126) | A memory leak in SQLListener.\_stageIdToStageMetrics |  Blocker | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-9643](https://issues.apache.org/jira/browse/SPARK-9643) | Error serializing datetimes with timezones using Dataframes and Parquet |  Major | PySpark | Alex Angelini | Alex Angelini |
| [SPARK-11063](https://issues.apache.org/jira/browse/SPARK-11063) | Spark TaskSetManager doesn\'t use Receiver\'s scheduling executors |  Critical | DStreams | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11051](https://issues.apache.org/jira/browse/SPARK-11051) | NullPointerException when action called on localCheckpointed RDD (that was checkpointed before) |  Critical | Spark Core | Jacek Laskowski | Liang-Chi Hsieh |
| [SPARK-9708](https://issues.apache.org/jira/browse/SPARK-9708) | Spark should create local temporary directories in Mesos sandbox when launched with Mesos |  Major | Mesos | Timothy Chen | Chris Bannister |
| [SPARK-11120](https://issues.apache.org/jira/browse/SPARK-11120) | maxNumExecutorFailures defaults to 3 under dynamic allocation |  Minor | Spark Core | Ryan Williams | Ryan Williams |
| [SPARK-11088](https://issues.apache.org/jira/browse/SPARK-11088) | Optimize DataSourceStrategy.mergeWithPartitionValues |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-11110](https://issues.apache.org/jira/browse/SPARK-11110) | Scala 2.11 build fails due to compiler errors |  Critical | Build | Patrick Wendell | Jakob Odersky |
| [SPARK-11105](https://issues.apache.org/jira/browse/SPARK-11105) | Disitribute the log4j.properties files from the client to the executors |  Minor | YARN | Srinivasa Reddy Vundela | Srinivasa Reddy Vundela |
| [SPARK-6740](https://issues.apache.org/jira/browse/SPARK-6740) | SQL operator and condition precedence is not honoured |  Major | SQL | Santiago M. Mola | Santiago M. Mola |
| [SPARK-10082](https://issues.apache.org/jira/browse/SPARK-10082) | Validate i, j in apply (Dense and Sparse Matrices) |  Minor | MLlib | Manoj Kumar | Manoj Kumar |
| [SPARK-11153](https://issues.apache.org/jira/browse/SPARK-11153) | Turns off Parquet filter push-down for string and binary columns |  Blocker | SQL | Cheng Lian | Cheng Lian |
| [SPARK-11221](https://issues.apache.org/jira/browse/SPARK-11221) | Fix R doc for DataFrame function \`lit\` |  Minor | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-10534](https://issues.apache.org/jira/browse/SPARK-10534) | ORDER BY clause allows only columns that are present in SELECT statement |  Major | SQL | Michal Cwienczek | Dilip Biswal |
| [SPARK-9210](https://issues.apache.org/jira/browse/SPARK-9210) | checkValidAggregateExpression() throws exceptions with bad error messages |  Trivial | SQL | Simeon Simeonov | Yin Huai |
| [SPARK-11208](https://issues.apache.org/jira/browse/SPARK-11208) | Filter out \'hive.metastore.rawstore.impl\' from executionHive temporary config |  Major | SQL | Artem Aliev | Artem Aliev |
| [SPARK-11233](https://issues.apache.org/jira/browse/SPARK-11233) | cosh is not registered in function registry |  Major | SQL | Reynold Xin | Shagun Sodhani |
| [SPARK-8654](https://issues.apache.org/jira/browse/SPARK-8654) | Analysis exception when using "NULL IN (...)": invalid cast |  Minor | SQL | Santiago M. Mola | Dilip Biswal |
| [SPARK-11121](https://issues.apache.org/jira/browse/SPARK-11121) | Incorrect TaskLocation type |  Minor | Spark Core | zhichao-li | zhichao-li |
| [SPARK-11244](https://issues.apache.org/jira/browse/SPARK-11244) | sparkR.stop doesn\'t clean up .sparkRSQLsc in environment |  Major | SparkR | Sen Fang | Sen Fang |
| [SPARK-9735](https://issues.apache.org/jira/browse/SPARK-9735) | Auto infer partition schema of HadoopFsRelation should should respected the user specified one |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-11242](https://issues.apache.org/jira/browse/SPARK-11242) | In conf/spark-env.sh.template SPARK\_DRIVER\_MEMORY is documented incorrectly |  Trivial | Documentation | Xiu (Joe) Guo | Xiu (Joe) Guo |
| [SPARK-11251](https://issues.apache.org/jira/browse/SPARK-11251) | Page size calculation is wrong in local mode |  Blocker | Shuffle | Andrew Or | Andrew Or |
| [SPARK-11134](https://issues.apache.org/jira/browse/SPARK-11134) | Flaky test: o.a.s.launcher.LauncherBackendSuite |  Critical | Tests | Andrew Or | Marcelo Vanzin |
| [SPARK-11273](https://issues.apache.org/jira/browse/SPARK-11273) | ArrayData and MapData shouldn\'t be public in types package |  Major | . | Reynold Xin | Reynold Xin |
| [SPARK-11274](https://issues.apache.org/jira/browse/SPARK-11274) | Text data source support for Spark SQL |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-10971](https://issues.apache.org/jira/browse/SPARK-10971) | sparkR: RRunner should allow setting path to Rscript |  Major | SparkR | Thomas Graves | Sun Rui |
| [SPARK-11294](https://issues.apache.org/jira/browse/SPARK-11294) | Improve R doc for read.df, write.df, saveAsTable |  Minor | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-11264](https://issues.apache.org/jira/browse/SPARK-11264) | ./bin/spark-class can\'t find assembly jars with certain GREP\_OPTIONS set |  Minor | Spark Shell | Jeffrey Naisbitt | Jeffrey Naisbitt |
| [SPARK-11287](https://issues.apache.org/jira/browse/SPARK-11287) | Executing deploy.client TestClient fails with bad class name |  Trivial | Spark Core | Bryan Cutler | Bryan Cutler |
| [SPARK-11253](https://issues.apache.org/jira/browse/SPARK-11253) | reset all accumulators in physical operators before execute an action |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-5966](https://issues.apache.org/jira/browse/SPARK-5966) | Spark-submit deploy-mode incorrectly affecting submission when master = local[4] |  Critical | Spark Submit | Tathagata Das | kevin yu |
| [SPARK-11209](https://issues.apache.org/jira/browse/SPARK-11209) | Add window functions into SparkR [step 1] |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-10562](https://issues.apache.org/jira/browse/SPARK-10562) | .partitionBy() creates the metastore partition columns in all lowercase, but persists the data path as MixedCase resulting in an error when the data is later attempted to query. |  Major | SQL | Jason Pohl | Wenchen Fan |
| [SPARK-11276](https://issues.apache.org/jira/browse/SPARK-11276) | SizeEstimator prevents class unloading |  Major | Block Manager, Spark Core | Sem Mulder | Sem Mulder |
| [SPARK-11277](https://issues.apache.org/jira/browse/SPARK-11277) | sort\_array throws exception scala.MatchError |  Major | SQL | Jia Li | Jia Li |
| [SPARK-11303](https://issues.apache.org/jira/browse/SPARK-11303) | sample (without replacement) + filter returns wrong results in DataFrame |  Major | SQL | Yuval Tanny | Yanbo Liang |
| [SPARK-11306](https://issues.apache.org/jira/browse/SPARK-11306) | Executor JVM loss can lead to a hang in Standalone mode |  Major | Scheduler | Kay Ousterhout | Kay Ousterhout |
| [SPARK-10484](https://issues.apache.org/jira/browse/SPARK-10484) | [Spark SQL]  Come across lost task(timeout) or GC OOM error when two tables do cross join |  Critical | SQL | Yi Zhou | Cheng Hao |
| [SPARK-11302](https://issues.apache.org/jira/browse/SPARK-11302) |  Multivariate Gaussian Model with Covariance  matrix returns incorrect answer in some cases |  Critical | MLlib | eyal sharon | Sean Owen |
| [SPARK-11377](https://issues.apache.org/jira/browse/SPARK-11377) | withNewChildren should not convert StructType to Seq |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-11363](https://issues.apache.org/jira/browse/SPARK-11363) | LeftSemiJoin should be LeftSemi in SparkStrategies |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-11376](https://issues.apache.org/jira/browse/SPARK-11376) | Invalid generated Java code in GenerateColumnAccessor |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-11322](https://issues.apache.org/jira/browse/SPARK-11322) | Keep full stack track in captured exception in PySpark |  Major | PySpark, SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-11379](https://issues.apache.org/jira/browse/SPARK-11379) | ExpressionEncoder can\'t handle top level primitive type correctly |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11370](https://issues.apache.org/jira/browse/SPARK-11370) | fix a bug in GroupedIterator and create unit test for it |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11388](https://issues.apache.org/jira/browse/SPARK-11388) | Build breaks due to the use of \<p/\> tags in javadoc. |  Minor | Build | Herman van Hovell | Herman van Hovell |
| [SPARK-11246](https://issues.apache.org/jira/browse/SPARK-11246) | [1.5] Table cache for Parquet broken in 1.5 |  Major | SQL | David Ross | Xin Wu |
| [SPARK-11409](https://issues.apache.org/jira/browse/SPARK-11409) | Enable url link in R doc for Persist |  Minor | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-10929](https://issues.apache.org/jira/browse/SPARK-10929) | Tungsten fails to acquire memory writing to HDFS |  Blocker | SQL | Franco | Davies Liu |
| [SPARK-11417](https://issues.apache.org/jira/browse/SPARK-11417) | @Override is not supported by older version of Janino |  Major | . | Davies Liu | Davies Liu |
| [SPARK-11103](https://issues.apache.org/jira/browse/SPARK-11103) | Parquet filters push-down may cause exception when schema merging is turned on |  Blocker | SQL | Dominic Ricard | Hyukjin Kwon |
| [SPARK-10986](https://issues.apache.org/jira/browse/SPARK-10986) | ClassNotFoundException when running on Client mode, with a Mesos master. |  Blocker | Mesos | Joseph Wu | Iulian Dragos |
| [SPARK-11414](https://issues.apache.org/jira/browse/SPARK-11414) | Forgot to update usage of "spark.sparkr.r.command" in RRDD in the PR for SPARK-10971 |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-11210](https://issues.apache.org/jira/browse/SPARK-11210) | Add window functions into SparkR [step 2] |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-11340](https://issues.apache.org/jira/browse/SPARK-11340) | Support setting driver properties when starting Spark from R programmatically or from RStudio |  Minor | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-11434](https://issues.apache.org/jira/browse/SPARK-11434) | flaky test ParquetFilterSuite.SPARK-11103: Filter applied on merged Parquet schema with new column fails |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-11024](https://issues.apache.org/jira/browse/SPARK-11024) | Optimize NULL in \<inlist-expressions\> by folding it to Literal(null) |  Minor | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-11345](https://issues.apache.org/jira/browse/SPARK-11345) | Make HadoopFsRelation always outputs UnsafeRow |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-11338](https://issues.apache.org/jira/browse/SPARK-11338) | HistoryPage not multi-tenancy enabled (app links not prefixed with APPLICATION\_WEB\_PROXY\_BASE) |  Major | Web UI | Christian Kadner | Christian Kadner |
| [SPARK-11020](https://issues.apache.org/jira/browse/SPARK-11020) | HistoryServer fails to come up if HDFS takes too long to come out of safe mode |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11131](https://issues.apache.org/jira/browse/SPARK-11131) | Worker registration protocol is racy |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-10786](https://issues.apache.org/jira/browse/SPARK-10786) | SparkSQLCLIDriver should take the whole statement to generate the CommandProcessor |  Minor | SQL | carlmartin | carlmartin |
| [SPARK-11311](https://issues.apache.org/jira/browse/SPARK-11311) | spark cannot describe temporary functions |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-11343](https://issues.apache.org/jira/browse/SPARK-11343) | Regression Imposes doubles on prediction/label columns |  Major | ML | Dominik Dahlem | Dominik Dahlem |
| [SPARK-11432](https://issues.apache.org/jira/browse/SPARK-11432) | Personalized PageRank shouldn\'t use uniform initialization |  Minor | GraphX | Yves Raimond | Yves Raimond |
| [SPARK-9034](https://issues.apache.org/jira/browse/SPARK-9034) | Reflect field names defined in GenericUDTF |  Major | SQL | Takeshi Yamamuro | Navis |
| [SPARK-11436](https://issues.apache.org/jira/browse/SPARK-11436) | we should rebind right encoder when join 2 datasets |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11393](https://issues.apache.org/jira/browse/SPARK-11393) | CoGroupedIterator should respect the fact that GroupedIterator.hasNext is not idempotent |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10533](https://issues.apache.org/jira/browse/SPARK-10533) | DataFrame filter is not handling float/double with Scientific Notation \'e\' / \'E\' |  Minor | SQL | Rishabh Bhardwaj | Adrian Wang |
| [SPARK-10304](https://issues.apache.org/jira/browse/SPARK-10304) | Partition discovery does not throw an exception if the dir structure is invalid |  Major | SQL | Yin Huai | Liang-Chi Hsieh |
| [SPARK-11407](https://issues.apache.org/jira/browse/SPARK-11407) | Add documentation on using SparkR from RStudio |  Minor | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-11424](https://issues.apache.org/jira/browse/SPARK-11424) | Guard against MAPREDUCE-5918 by ensuring RecordReader is only closed once in \*HadoopRDD |  Critical | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-11466](https://issues.apache.org/jira/browse/SPARK-11466) | FsHistoryProviderSuite breaks hadoop1 test |  Major | Tests | Yin Huai | Marcelo Vanzin |
| [SPARK-11455](https://issues.apache.org/jira/browse/SPARK-11455) | case sensitivity of partition by is broken |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-2960](https://issues.apache.org/jira/browse/SPARK-2960) | Spark executables fail to start via symlinks |  Minor | Deploy | Shay Rojansky | Saisai Shao |
| [SPARK-10622](https://issues.apache.org/jira/browse/SPARK-10622) | Race condition between scheduler and YARN executor status update |  Critical | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11265](https://issues.apache.org/jira/browse/SPARK-11265) | YarnClient can\'t get tokens to talk to Hive 1.2.1 in a secure cluster |  Major | YARN | Steve Loughran | Steve Loughran |
| [SPARK-11398](https://issues.apache.org/jira/browse/SPARK-11398) | unnecessary def dialectClassName in HiveContext, and misleading dialect conf at the start of spark-sql |  Minor | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-11307](https://issues.apache.org/jira/browse/SPARK-11307) | Reduce memory consumption of OutputCommitCoordinator bookkeeping structures |  Major | Scheduler | Josh Rosen | Josh Rosen |
| [SPARK-11486](https://issues.apache.org/jira/browse/SPARK-11486) | TungstenAggregate may fail when switching to sort-based aggregation when there are string in grouping columns and no aggregation buffer columns |  Blocker | SQL | Josh Rosen | Davies Liu |
| [SPARK-11378](https://issues.apache.org/jira/browse/SPARK-11378) | StreamingContext.awaitTerminationOrTimeout does not return |  Minor | DStreams, PySpark | Nick Evans | Nick Evans |
| [SPARK-11501](https://issues.apache.org/jira/browse/SPARK-11501) | spark.rpc config not propagated to executors |  Major | Spark Core, YARN | Nishkam Ravi | Nishkam Ravi |
| [SPARK-11474](https://issues.apache.org/jira/browse/SPARK-11474) | Options to jdbc load are lower cased |  Minor | SQL | Stephen Samuel | Huaxin Gao |
| [SPARK-11484](https://issues.apache.org/jira/browse/SPARK-11484) | Giving precedence to proxyBase set by spark instead of env |  Minor | Web UI | Srinivasa Reddy Vundela | Srinivasa Reddy Vundela |
| [SPARK-10648](https://issues.apache.org/jira/browse/SPARK-10648) | Spark-SQL JDBC fails to set a default precision and scale when they are not defined in an oracle schema. |  Major | SQL | Travis Hegner | Travis Hegner |
| [SPARK-10656](https://issues.apache.org/jira/browse/SPARK-10656) | select(df(\*)) fails when a column has special characters |  Major | SQL | Nick Pritchard | Wenchen Fan |
| [SPARK-11542](https://issues.apache.org/jira/browse/SPARK-11542) | glm does not work with long formula |  Major | SparkR | Davies Liu | Davies Liu |
| [SPARK-11537](https://issues.apache.org/jira/browse/SPARK-11537) | hour/minute/second returns negative value |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-11457](https://issues.apache.org/jira/browse/SPARK-11457) | Yarn AM proxy filter configuration should be reloaded when recovered from checkpoint |  Major | DStreams, YARN | Saisai Shao | Saisai Shao |
| [SPARK-11538](https://issues.apache.org/jira/browse/SPARK-11538) | sbt build is using guava 16 instead of guava 14 |  Major | Build | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11511](https://issues.apache.org/jira/browse/SPARK-11511) | Creating an InputDStream but not using it throws NPE |  Major | DStreams | Shixiong Zhu | Shixiong Zhu |
| [SPARK-10116](https://issues.apache.org/jira/browse/SPARK-10116) | XORShiftRandom should generate uniform seeds |  Minor | Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-11561](https://issues.apache.org/jira/browse/SPARK-11561) | Rename text data source\'s column name to value |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11555](https://issues.apache.org/jira/browse/SPARK-11555) | spark on yarn spark-class --num-workers doesn\'t work |  Critical | YARN | Thomas Graves | Thomas Graves |
| [SPARK-10046](https://issues.apache.org/jira/browse/SPARK-10046) | Hive warehouse dir not set in current directory when not providing hive-site.xml |  Major | Spark Core, SQL | Antonio Murgia | Xin Wu |
| [SPARK-11453](https://issues.apache.org/jira/browse/SPARK-11453) | append data to partitioned table will messes up the result |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11218](https://issues.apache.org/jira/browse/SPARK-11218) | \`./sbin/start-slave.sh --help\` should print out the help message |  Minor | Deploy | Jacek Laskowski | Charles Yeh |
| [SPARK-11582](https://issues.apache.org/jira/browse/SPARK-11582) | pmml version attribute missing in the root node |  Major | MLlib | Fazlan Nazeem | Fazlan Nazeem |
| [SPARK-10783](https://issues.apache.org/jira/browse/SPARK-10783) | Do track the pointer array in UnsafeInMemorySorter |  Blocker | SQL | Andrew Or | Davies Liu |
| [SPARK-9865](https://issues.apache.org/jira/browse/SPARK-9865) | Flaky SparkR test: test\_sparkSQL.R: sample on a DataFrame |  Major | SparkR | Davies Liu | Felix Cheung |
| [SPARK-11581](https://issues.apache.org/jira/browse/SPARK-11581) | Example mllib code in documentation incorrectly computes MSE |  Trivial | Documentation | Brian Webb | M Bharat lal |
| [SPARK-11595](https://issues.apache.org/jira/browse/SPARK-11595) | "ADD JAR" doesn\'t work if the given path contains URL scheme like "file:/" and "hdfs:/" |  Blocker | SQL | Cheng Lian | Cheng Lian |
| [SPARK-11359](https://issues.apache.org/jira/browse/SPARK-11359) | Kinesis receiver does not checkpoint to DynamoDB if there is no new data. |  Major | DStreams | Tathagata Das | Burak Yavuz |
| [SPARK-11587](https://issues.apache.org/jira/browse/SPARK-11587) | SparkR can not use summary.glm from base R |  Critical | ML, SparkR | Yanbo Liang | Shivaram Venkataraman |
| [SPARK-11599](https://issues.apache.org/jira/browse/SPARK-11599) | NPE when resolve a non-existent function |  Major | . | Davies Liu | Davies Liu |
| [SPARK-7841](https://issues.apache.org/jira/browse/SPARK-7841) | Spark build should not use lib\_managed for dependencies |  Major | Build | Iulian Dragos | Josh Rosen |
| [SPARK-11252](https://issues.apache.org/jira/browse/SPARK-11252) | ShuffleClient should release connection after fetching blocks had been completed in yarn\'s external shuffle |  Major | Shuffle, YARN | Lianhui Wang | Lianhui Wang |
| [SPARK-10827](https://issues.apache.org/jira/browse/SPARK-10827) | AppClient should not use \`askWithReply\` in \`receiveAndReply\` directly |  Major | Spark Core | Shixiong Zhu | Bryan Cutler |
| [SPARK-11615](https://issues.apache.org/jira/browse/SPARK-11615) | Drop @VisibleForTesting annotation |  Major | Spark Core | Ted Yu | Ted Yu |
| [SPARK-11463](https://issues.apache.org/jira/browse/SPARK-11463) | SparkContext fail to create in non-main thread in Python |  Blocker | PySpark | Davies Liu | Davies Liu |
| [SPARK-11500](https://issues.apache.org/jira/browse/SPARK-11500) | Not deterministic order of columns when using merging schemas. |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-11626](https://issues.apache.org/jira/browse/SPARK-11626) | ml.feature.Word2Vec.transform() should not recompute word-vector map each time |  Major | ML | Yuming Wang | Yuming Wang |
| [SPARK-6152](https://issues.apache.org/jira/browse/SPARK-6152) | Spark does not support Java 8 compiled Scala classes |  Critical | Spark Core | Ronald Chen | Josh Rosen |
| [SPARK-11675](https://issues.apache.org/jira/browse/SPARK-11675) | Remove shuffle hash joins |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11674](https://issues.apache.org/jira/browse/SPARK-11674) | Word2Vec code failed compile in Scala 2.11 |  Critical | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-11661](https://issues.apache.org/jira/browse/SPARK-11661) | We should still pushdown filters returned by a data source\'s unhandledFilters |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-11673](https://issues.apache.org/jira/browse/SPARK-11673) | Remove the normal Project physical operator (and keep TungstenProject) |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11191](https://issues.apache.org/jira/browse/SPARK-11191) | [1.5] Can\'t create UDF\'s using hive thrift service |  Blocker | SQL | David Ross | Cheng Lian |
| [SPARK-11671](https://issues.apache.org/jira/browse/SPARK-11671) | Example for sqlContext.createDataDrame from pandas.DataFrame has a typo |  Minor | Documentation, PySpark | chris snow | chris snow |
| [SPARK-11670](https://issues.apache.org/jira/browse/SPARK-11670) | Fix incorrect kryo buffer default value in docs |  Minor | Documentation | Andrew Or | Andrew Or |
| [SPARK-11667](https://issues.apache.org/jira/browse/SPARK-11667) | Update dynamic allocation docs to reflect supported cluster managers |  Major | Documentation | Andrew Or | Andrew Or |
| [SPARK-11681](https://issues.apache.org/jira/browse/SPARK-11681) | Fix state timestamp update logic in TrackStateRDD |  Major | DStreams | Tathagata Das | Tathagata Das |
| [SPARK-8029](https://issues.apache.org/jira/browse/SPARK-8029) | ShuffleMapTasks must be robust to concurrent attempts on the same executor |  Critical | Spark Core | Imran Rashid | Davies Liu |
| [SPARK-11706](https://issues.apache.org/jira/browse/SPARK-11706) | Streaming Python tests cannot report failures |  Major | DStreams, Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11678](https://issues.apache.org/jira/browse/SPARK-11678) | Partition discovery fail if there is a \_SUCCESS file in the table\'s root dir |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-11672](https://issues.apache.org/jira/browse/SPARK-11672) | Flaky test: ml.JavaDefaultReadWriteSuite |  Critical | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7829](https://issues.apache.org/jira/browse/SPARK-7829) | SortShuffleWriter writes inconsistent data & index files on stage retry |  Major | Shuffle, Spark Core | Imran Rashid | Davies Liu |
| [SPARK-7308](https://issues.apache.org/jira/browse/SPARK-7308) | Should there be multiple concurrent attempts for one stage? |  Major | Spark Core | Imran Rashid | Davies Liu |
| [SPARK-11734](https://issues.apache.org/jira/browse/SPARK-11734) | Move reference sort into test and standardize on TungstenSort |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-10181](https://issues.apache.org/jira/browse/SPARK-10181) | HiveContext is not used with keytab principal but with user principal/unix username |  Major | SQL | Bolke de Bruin | Yu Gao |
| [SPARK-10500](https://issues.apache.org/jira/browse/SPARK-10500) | sparkr.zip cannot be created if $SPARK\_HOME/R/lib is unwritable |  Major | SparkR | Jonathan Kelly | Sun Rui |
| [SPARK-11283](https://issues.apache.org/jira/browse/SPARK-11283) | List column gets additional level of nesting when converted to Spark DataFrame |  Major | SparkR | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-8277](https://issues.apache.org/jira/browse/SPARK-8277) | SparkR createDataFrame is slow |  Major | SparkR | Shivaram Venkataraman | Maciej Szymkiewicz |
| [SPARK-11522](https://issues.apache.org/jira/browse/SPARK-11522) | input\_file\_name() returns "" for external tables |  Major | SQL | Simeon Simeonov | Xin Wu |
| [SPARK-11752](https://issues.apache.org/jira/browse/SPARK-11752) | fix timezone problem for DateTimeUtils.getSeconds |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11718](https://issues.apache.org/jira/browse/SPARK-11718) | Explicit killing executor dies silent without get response information |  Major | Scheduler, YARN | Saisai Shao | Saisai Shao |
| [SPARK-11390](https://issues.apache.org/jira/browse/SPARK-11390) | Query plan with/without filterPushdown indistinguishable |  Minor | SQL | Vishesh Garg | Zee Chen |
| [SPARK-11553](https://issues.apache.org/jira/browse/SPARK-11553) | row.getInt(i) if row[i]=null returns 0 |  Blocker | SQL | Tofigh | Bartlomiej Alberski |
| [SPARK-8658](https://issues.apache.org/jira/browse/SPARK-8658) | AttributeReference equals method only compare name, exprId and dataType |  Major | SQL | Antonio Jesus Navarro | Xiao Li |
| [SPARK-11480](https://issues.apache.org/jira/browse/SPARK-11480) | Wrong callsite is displayed when using AsyncRDDActions#takeAsync |  Minor | Spark Core, Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-11617](https://issues.apache.org/jira/browse/SPARK-11617) | MEMORY LEAK: ByteBuf.release() was not called before it\'s garbage-collected |  Major | Spark Core, YARN | Ling Zhou | Marcelo Vanzin |
| [SPARK-9196](https://issues.apache.org/jira/browse/SPARK-9196) | DatetimeExpressionsSuite: function current\_timestamp is flaky |  Critical | SQL, Tests | Davies Liu | Reynold Xin |
| [SPARK-11447](https://issues.apache.org/jira/browse/SPARK-11447) | Null comparison requires type information but type extraction fails for complex types |  Major | SQL | Kapil Singh | kevin yu |
| [SPARK-11744](https://issues.apache.org/jira/browse/SPARK-11744) | bin/pyspark --version doesn\'t return version and exit |  Minor | PySpark | Nicholas Chammas | Saisai Shao |
| [SPARK-11679](https://issues.apache.org/jira/browse/SPARK-11679) | When invoking method " apply(fields: java.util.List[StructField])" in "StructType", get exception "java.lang.ClassCastException: |  Major | SQL | mayuanwen | Michael Armbrust |
| [SPARK-11732](https://issues.apache.org/jira/browse/SPARK-11732) | MiMa excludes miss private classes |  Major | Build | Tim Hunter | Tim Hunter |
| [SPARK-11740](https://issues.apache.org/jira/browse/SPARK-11740) | Fix DStream checkpointing logic to prevent failures during checkpoint recovery |  Major | DStreams | Shixiong Zhu | Shixiong Zhu |
| [SPARK-9552](https://issues.apache.org/jira/browse/SPARK-9552) | Dynamic allocation kills busy executors on race condition |  Major | Scheduler | Jie Huang | Jie Huang |
| [SPARK-11790](https://issues.apache.org/jira/browse/SPARK-11790) | Flaky test:  KafkaStreamTests.test\_kafka\_direct\_stream\_foreach\_get\_offsetRanges |  Major | DStreams, PySpark, Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11726](https://issues.apache.org/jira/browse/SPARK-11726) | Legacy Netty-RPC based submission in standalone mode does not work |  Major | Deploy, Spark Submit | Jacek Lewandowski | Jacek Lewandowski |
| [SPARK-11016](https://issues.apache.org/jira/browse/SPARK-11016) | Spark fails when running with a task that requires a more recent version of RoaringBitmaps |  Major | Spark Core | Charles Allen | Charles Allen |
| [SPARK-11737](https://issues.apache.org/jira/browse/SPARK-11737) | String may not be serialized correctly with Kyro |  Critical | SQL | Davies Liu | Davies Liu |
| [SPARK-11755](https://issues.apache.org/jira/browse/SPARK-11755) | SparkR can not output help information for SparkR:::predict |  Major | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-11761](https://issues.apache.org/jira/browse/SPARK-11761) | Prevent the call to StreamingContext#stop() in the listener bus\'s thread |  Major | DStreams | Ted Yu | Ted Yu |
| [SPARK-11643](https://issues.apache.org/jira/browse/SPARK-11643) | inserting date with leading zero inserts null example \'0001-12-10\' |  Major | SQL | Chip Sands | Davies Liu |
| [SPARK-11792](https://issues.apache.org/jira/browse/SPARK-11792) | SizeEstimator cannot provide a good size estimation of UnsafeHashedRelations |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-10946](https://issues.apache.org/jira/browse/SPARK-10946) | JDBC - Use Statement.executeUpdate instead of PreparedStatement.executeUpdate for DDLs |  Minor | SQL | Pallavi Priyadarshini | somil deshmukh |
| [SPARK-6541](https://issues.apache.org/jira/browse/SPARK-6541) | Executor table on Stage page should sort by Executor ID numerically, not lexically |  Minor | Web UI | Ryan Williams | Jean-Baptiste Onofré |
| [SPARK-11652](https://issues.apache.org/jira/browse/SPARK-11652) | Remote code execution with InvokerTransformer |  Minor | Spark Core | Daniel Darabos | Sean Owen |
| [SPARK-11804](https://issues.apache.org/jira/browse/SPARK-11804) | Exception raise when using Jdbc predicates option in PySpark |  Major | PySpark | Jeff Zhang | Jeff Zhang |
| [SPARK-11281](https://issues.apache.org/jira/browse/SPARK-11281) | Issue with creating and collecting DataFrame using environments |  Major | SparkR | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-11195](https://issues.apache.org/jira/browse/SPARK-11195) | Exception thrown on executor throws ClassNotFoundException on driver |  Major | Spark Core | Hurshal Patel | Hurshal Patel |
| [SPARK-11725](https://issues.apache.org/jira/browse/SPARK-11725) | Let UDF to handle null value |  Blocker | SQL | Jeff Zhang | Wenchen Fan |
| [SPARK-11655](https://issues.apache.org/jira/browse/SPARK-11655) | SparkLauncherBackendSuite leaks child processes |  Blocker | Tests | Josh Rosen | Marcelo Vanzin |
| [SPARK-11739](https://issues.apache.org/jira/browse/SPARK-11739) | Dead SQLContext may not be cleared |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-10799](https://issues.apache.org/jira/browse/SPARK-10799) | Flaky test: org.apache.spark.rpc.netty.InboxSuite.post: multiple threads |  Major | Spark Core, Tests | Xiangrui Meng | Shixiong Zhu |
| [SPARK-11544](https://issues.apache.org/jira/browse/SPARK-11544) | sqlContext doesn\'t use PathFilter |  Major | SQL | Frank Dai | Dilip Biswal |
| [SPARK-11657](https://issues.apache.org/jira/browse/SPARK-11657) | Bad Dataframe data read from parquet |  Critical | Spark Core, SQL | Virgil Palanciuc | Davies Liu |
| [SPARK-11791](https://issues.apache.org/jira/browse/SPARK-11791) | Flaky test: org.apache.spark.streaming.util.BatchedWriteAheadLogSuite.BatchedWriteAheadLog |  Major | DStreams, Tests | Shixiong Zhu | Burak Yavuz |
| [SPARK-11614](https://issues.apache.org/jira/browse/SPARK-11614) | serde parameters should be set only when all params are ready |  Minor | SQL | Navis | Navis |
| [SPARK-11849](https://issues.apache.org/jira/browse/SPARK-11849) | Analyzer should replace current\_date and current\_timestamp with literals |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11830](https://issues.apache.org/jira/browse/SPARK-11830) | Make NettyRpcEnv bind to the specified host |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11633](https://issues.apache.org/jira/browse/SPARK-11633) | HiveContext throws TreeNode Exception : Failed to Copy Node |  Critical | SQL | Saurabh Santhosh | Xiao Li |
| [SPARK-11778](https://issues.apache.org/jira/browse/SPARK-11778) | HiveContext.read.table does not support user-specified database names |  Critical | SQL | Stanislav Hadjiiski | Huaxin Gao |
| [SPARK-11812](https://issues.apache.org/jira/browse/SPARK-11812) | pyspark reduceByKeyAndWindow does not handle unspecified invFunc (invFunc=None) |  Major | PySpark | David Tolpin | David Tolpin |
| [SPARK-11831](https://issues.apache.org/jira/browse/SPARK-11831) | AkkaRpcEnvSuite is prone to port-contention-related flakiness |  Major | Tests | Josh Rosen | Shixiong Zhu |
| [SPARK-11828](https://issues.apache.org/jira/browse/SPARK-11828) | DAGScheduler source registered too early with MetricsSystem |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11275](https://issues.apache.org/jira/browse/SPARK-11275) | [SQL] Incorrect results when using rollup/cube |  Critical | SQL | Xiao Li | Andrew Ray |
| [SPARK-11869](https://issues.apache.org/jira/browse/SPARK-11869) | ML test TempDirectory trait does not clean up properly |  Major | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-11877](https://issues.apache.org/jira/browse/SPARK-11877) | Clear spark.sql.TungstenAggregate.testFallbackStartsAt conf at end of TungstenAggregationQueryWithControlledFallbackSuite |  Major | . | Josh Rosen | Josh Rosen |
| [SPARK-10567](https://issues.apache.org/jira/browse/SPARK-10567) | Reducer locality follow-up for Spark 1.6 |  Blocker | Scheduler | Yin Huai | Matei Zaharia |
| [SPARK-11817](https://issues.apache.org/jira/browse/SPARK-11817) | insert of timestamp with factional seconds inserts a NULL |  Major | SQL | Chip Sands | Liang-Chi Hsieh |
| [SPARK-11724](https://issues.apache.org/jira/browse/SPARK-11724) | Casting integer types to timestamp has unexpected semantics |  Minor | SQL | Nong Li | Nong Li |
| [SPARK-11887](https://issues.apache.org/jira/browse/SPARK-11887) | Close PersistenceEngine at end of tests |  Major | Tests | Josh Rosen | Josh Rosen |
| [SPARK-11756](https://issues.apache.org/jira/browse/SPARK-11756) | SparkR can not output help information for SparkR:::summary correctly |  Major | SparkR | Yanbo Liang | Felix Cheung |
| [SPARK-11716](https://issues.apache.org/jira/browse/SPARK-11716) | UDFRegistration Drops Input Type Information |  Major | SQL | Artjom Metro | Jean-Baptiste Onofré |
| [SPARK-11883](https://issues.apache.org/jira/browse/SPARK-11883) | New Parquet reader generate wrong result |  Blocker | SQL | Davies Liu | Nong Li |
| [SPARK-11889](https://issues.apache.org/jira/browse/SPARK-11889) | Type inference in REPL broken for GroupedDataset.agg |  Critical | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-11890](https://issues.apache.org/jira/browse/SPARK-11890) | Encoder errors logic breaks on Scala 2.11 |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-4134](https://issues.apache.org/jira/browse/SPARK-4134) | Dynamic allocation: tone down scary executor lost messages when killing on purpose |  Major | Spark Core | Andrew Or | Marcelo Vanzin |
| [SPARK-11762](https://issues.apache.org/jira/browse/SPARK-11762) | TransportResponseHandler should consider open streams when counting outstanding requests |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11837](https://issues.apache.org/jira/browse/SPARK-11837) | spark\_ec2.py breaks with python3 and m3 instances |  Minor | EC2 | Mortada Mehyar | Mortada Mehyar |
| [SPARK-11836](https://issues.apache.org/jira/browse/SPARK-11836) | Register a Python function creates a new SQLContext |  Critical | SQL | Yin Huai | Davies Liu |
| [SPARK-11910](https://issues.apache.org/jira/browse/SPARK-11910) | Streaming programming guide references wrong dependency version |  Minor | Documentation, DStreams | Luciano Resende | Luciano Resende |
| [SPARK-11865](https://issues.apache.org/jira/browse/SPARK-11865) | Auto-connection close on idle channel can race with TransportClientFactory.createClient() |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-10707](https://issues.apache.org/jira/browse/SPARK-10707) | Set operation output columns may have incorrect nullability |  Major | SQL | Mikhail Bautin | Mikhail Bautin |
| [SPARK-11906](https://issues.apache.org/jira/browse/SPARK-11906) | Speculation Tasks Cause ProgressBar UI Overflow |  Trivial | Web UI | Sen Fang | Sen Fang |
| [SPARK-11043](https://issues.apache.org/jira/browse/SPARK-11043) | Hive Thrift Server will log warn "Couldn\'t find log associated with operation handle" |  Major | SQL | carlmartin | carlmartin |
| [SPARK-11818](https://issues.apache.org/jira/browse/SPARK-11818) | ExecutorClassLoader cannot see any resources from parent class loader |  Major | Spark Shell | Jungtaek Lim | Jungtaek Lim |
| [SPARK-11872](https://issues.apache.org/jira/browse/SPARK-11872) | Prevent the call to SparkContext#stop() in the listener bus\'s thread |  Major | Spark Core | Ted Yu | Ted Yu |
| [SPARK-11805](https://issues.apache.org/jira/browse/SPARK-11805) | SpillableIterator should free the in-memory sorter while spilling |  Major | Spark Core | Davies Liu | Davies Liu |
| [SPARK-11783](https://issues.apache.org/jira/browse/SPARK-11783) | When deployed against remote Hive metastore, HiveContext.executionHive points to wrong metastore |  Critical | SQL | Cheng Lian | Cheng Lian |
| [SPARK-11979](https://issues.apache.org/jira/browse/SPARK-11979) | Empty TrackStateRDD cannot be checkpointed and recovered from checkpoint file |  Critical | DStreams | Tathagata Das | Tathagata Das |
| [SPARK-10666](https://issues.apache.org/jira/browse/SPARK-10666) | Use properties from ActiveJob associated with a Stage |  Major | Scheduler, Spark Core | Mark Hamstra | Mark Hamstra |
| [SPARK-11956](https://issues.apache.org/jira/browse/SPARK-11956) | Test failures potentially related to SPARK-11140 |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11984](https://issues.apache.org/jira/browse/SPARK-11984) | Typos in GroupedData Pivot doc in Scala and Python |  Minor | PySpark, SQL | Felix Cheung | Felix Cheung |
| [SPARK-11974](https://issues.apache.org/jira/browse/SPARK-11974) | Not all the  temp dirs had been deleted when the JVM exits |  Major | Spark Core | Zhongshuai Pei | Zhongshuai Pei |
| [SPARK-11969](https://issues.apache.org/jira/browse/SPARK-11969) | SQL UI does not work with PySpark |  Critical | SQL | Davies Liu | Davies Liu |
| [SPARK-11880](https://issues.apache.org/jira/browse/SPARK-11880) | On Windows spark-env.cmd is not loaded. |  Trivial | Windows | Gaurav Sehgal | tawan |
| [SPARK-10558](https://issues.apache.org/jira/browse/SPARK-10558) | Wrong executor state in standalone master because of wrong state transition |  Major | Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-11935](https://issues.apache.org/jira/browse/SPARK-11935) | Send the Python exceptions in TransformFunction and TransformFunctionSerializer to Java |  Major | PySpark | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11866](https://issues.apache.org/jira/browse/SPARK-11866) | RpcEnv RPC timeouts can lead to errors, leak in transport library. |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-12003](https://issues.apache.org/jira/browse/SPARK-12003) | Expanded star  should use field name as column name |  Major | . | Davies Liu | Davies Liu |
| [SPARK-11999](https://issues.apache.org/jira/browse/SPARK-11999) | ThreadUtils.newDaemonCachedThreadPool(prefix, maxThreadNumber)  has unexpected behavior |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11973](https://issues.apache.org/jira/browse/SPARK-11973) | Filter pushdown does not work with aggregation with alias |  Critical | SQL | Davies Liu | Davies Liu |
| [SPARK-12005](https://issues.apache.org/jira/browse/SPARK-12005) | VerifyError in HyperLogLogPlusPlus with newer JDKs |  Critical | SQL | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11863](https://issues.apache.org/jira/browse/SPARK-11863) | Unable to resolve order by if it contains mixture of aliases and real columns. |  Major | SQL | Dilip Biswal | Wenchen Fan |
| [SPARK-11998](https://issues.apache.org/jira/browse/SPARK-11998) | Branch 1.6\'s hadoop 2.2 tests always fail the entire VersionsSuite |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-11996](https://issues.apache.org/jira/browse/SPARK-11996) | Executor thread dump is broken |  Critical | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11997](https://issues.apache.org/jira/browse/SPARK-11997) | NPE when save a DataFrame as parquet and partitioned by long column |  Blocker | SQL | Davies Liu | Dilip Biswal |
| [SPARK-12021](https://issues.apache.org/jira/browse/SPARK-12021) | Fishy test of  "don\'t call ssc.stop in listener" |  Major | DStreams, Tests | Nan Zhu | Shixiong Zhu |
| [SPARK-12020](https://issues.apache.org/jira/browse/SPARK-12020) | PR builder cannot trigger hadoop 2.0 test |  Major | Tests | Yin Huai | Yin Huai |
| [SPARK-12028](https://issues.apache.org/jira/browse/SPARK-12028) | [SQL] get\_json\_object is unable to return a correct result for null literals |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-12029](https://issues.apache.org/jira/browse/SPARK-12029) | Improve column functions signature, param check, tests, fix doc and add examples |  Minor | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-11781](https://issues.apache.org/jira/browse/SPARK-11781) | SparkR has problem in inferring type of raw type |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-11859](https://issues.apache.org/jira/browse/SPARK-11859) | Regex for master URL for Mesos accepts incorrect zk:// prefix |  Minor | Mesos | Jacek Laskowski | tawan |
| [SPARK-12023](https://issues.apache.org/jira/browse/SPARK-12023) | Warnings while packaging spark with maven. |  Trivial | . | Prashant Sharma | Prashant Sharma |
| [SPARK-11989](https://issues.apache.org/jira/browse/SPARK-11989) | Spark JDBC write only works on techologies with transaction support |  Major | SQL | Christian Kurz | Christian Kurz |
| [SPARK-12053](https://issues.apache.org/jira/browse/SPARK-12053) | EventLog for completed applications always not found if spark.eventLog.compress is true |  Major | Spark Core, Web UI | Teng Qiu | Teng Qiu |
| [SPARK-12037](https://issues.apache.org/jira/browse/SPARK-12037) | Executors use heartbeatReceiverRef to report heartbeats and task metrics that might not be initialized and leads to NullPointerException |  Major | Spark Core | Jacek Laskowski | Nan Zhu |
| [SPARK-12049](https://issues.apache.org/jira/browse/SPARK-12049) | User JVM shutdown hook can cause deadlock at shutdown |  Major | Spark Core | Sean Owen | Sean Owen |
| [SPARK-12017](https://issues.apache.org/jira/browse/SPARK-12017) | Java Doc Publishing Broken |  Blocker | Build | Michael Armbrust | Josh Rosen |
| [SPARK-11949](https://issues.apache.org/jira/browse/SPARK-11949) | Query on DataFrame from cube gives wrong results |  Major | SQL | Veli Kerim Celik | Liang-Chi Hsieh |
| [SPARK-12068](https://issues.apache.org/jira/browse/SPARK-12068) | use a single column in Dataset.groupBy and count will fail |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11821](https://issues.apache.org/jira/browse/SPARK-11821) | Spark-Hive doesn\'t work with Kerberos in local mode |  Major | Spark Core | Wojciech Indyk | Wojciech Indyk |
| [SPARK-12030](https://issues.apache.org/jira/browse/SPARK-12030) | Incorrect results when aggregate joined data |  Blocker | SQL | Maciej Bryński | Nong Li |
| [SPARK-11788](https://issues.apache.org/jira/browse/SPARK-11788) | Using java.sql.Timestamp and java.sql.Date in where clauses on JDBC dataframes causes SQLServerException |  Major | SQL | Martin Tapp | Huaxin Gao |
| [SPARK-11352](https://issues.apache.org/jira/browse/SPARK-11352) | codegen.GeneratePredicate fails due to unquoted comment |  Major | SQL | Rares Mirica | Yin Huai |
| [SPARK-11596](https://issues.apache.org/jira/browse/SPARK-11596) | SQL execution very slow for nested query plans because of DataFrame.withNewExecutionId |  Major | SQL | Cristian Opris | Yin Huai |
| [SPARK-8414](https://issues.apache.org/jira/browse/SPARK-8414) | Ensure ContextCleaner actually triggers clean ups |  Critical | Spark Core | Andrew Or | Andrew Or |
| [SPARK-12081](https://issues.apache.org/jira/browse/SPARK-12081) | Make unified memory management work with small heaps |  Critical | Spark Core | Andrew Or | Andrew Or |
| [SPARK-12087](https://issues.apache.org/jira/browse/SPARK-12087) | DStream.saveAsHadoopFiles can throw ConcurrentModificationException |  Major | DStreams | Tathagata Das | Tathagata Das |
| [SPARK-12090](https://issues.apache.org/jira/browse/SPARK-12090) | Coalesce does not consider shuffle in PySpark |  Major | . | Davies Liu | Davies Liu |
| [SPARK-12000](https://issues.apache.org/jira/browse/SPARK-12000) | \`sbt publishLocal\` hits a Scala compiler bug caused by \`Since\` annotation |  Blocker | Build, Documentation, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-12082](https://issues.apache.org/jira/browse/SPARK-12082) | NettyBlockTransferSecuritySuite "security mismatch auth off on client" test is flaky |  Major | Tests | Josh Rosen | Josh Rosen |
| [SPARK-12109](https://issues.apache.org/jira/browse/SPARK-12109) | Expressions\'s simpleString should delegate to its toString |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-12088](https://issues.apache.org/jira/browse/SPARK-12088) | check connection.isClose before connection.getAutoCommit in JDBCRDD.close |  Minor | SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-12116](https://issues.apache.org/jira/browse/SPARK-12116) | Document workaround when method conflicts with another R package, like dplyr |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-12059](https://issues.apache.org/jira/browse/SPARK-12059) | Standalone Master assertion error |  Critical | Deploy | Andrew Or | Saisai Shao |
| [SPARK-12107](https://issues.apache.org/jira/browse/SPARK-12107) | Update spark-ec2 versions |  Minor | EC2 | Nicholas Chammas | Nicholas Chammas |
| [SPARK-12019](https://issues.apache.org/jira/browse/SPARK-12019) | SparkR.init does not support character vector for sparkJars and sparkPackages |  Minor | SparkR | liushiqi9 | Felix Cheung |
| [SPARK-12056](https://issues.apache.org/jira/browse/SPARK-12056) | NewHadoopRDD: TaskAttemptContext should be created only after calling setConf. |  Minor | Spark Core | Anderson de Andrade | Anderson de Andrade |
| [SPARK-12104](https://issues.apache.org/jira/browse/SPARK-12104) | collect() does not handle multiple columns with same name |  Critical | SparkR | Hossein Falaki | Sun Rui |
| [SPARK-12122](https://issues.apache.org/jira/browse/SPARK-12122) | Recovered streaming context can sometimes run a batch twice |  Blocker | DStreams | Tathagata Das | Tathagata Das |
| [SPARK-12089](https://issues.apache.org/jira/browse/SPARK-12089) | java.lang.NegativeArraySizeException when growing BufferHolder |  Blocker | SQL | Erik Selin | Nong Li |
| [SPARK-11715](https://issues.apache.org/jira/browse/SPARK-11715) | R support corr for Column Aggregration |  Minor | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-12048](https://issues.apache.org/jira/browse/SPARK-12048) | JDBCRDD calls close() twice - SQLite then throws an exception |  Minor | SQL | R. H. | R. H. |
| [SPARK-12138](https://issues.apache.org/jira/browse/SPARK-12138) | Escape \\u in the generated comments. |  Major | SQL | Yin Huai | Xiao Li |
| [SPARK-12132](https://issues.apache.org/jira/browse/SPARK-12132) | Cltr-C should clear current line in pyspark shell |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-11932](https://issues.apache.org/jira/browse/SPARK-11932) | trackStateByKey throws java.lang.IllegalArgumentException: requirement failed on restarting from checkpoint |  Critical | DStreams | Tathagata Das | Tathagata Das |
| [SPARK-12101](https://issues.apache.org/jira/browse/SPARK-12101) | Fix thread pools that cannot cache tasks in Worker and AppClient |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12160](https://issues.apache.org/jira/browse/SPARK-12160) | spark.mllib should use SQLContext.getOrCreate |  Major | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-12201](https://issues.apache.org/jira/browse/SPARK-12201) | add type coercion rule for greatest/least |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-12205](https://issues.apache.org/jira/browse/SPARK-12205) | Pivot fails Analysis when aggregate is UnresolvedFunction |  Major | SQL | Andrew Ray | Andrew Ray |
| [SPARK-12187](https://issues.apache.org/jira/browse/SPARK-12187) | \*MemoryPool classes should not be public |  Critical | Spark Core | Andrew Or | Andrew Or |
| [SPARK-12069](https://issues.apache.org/jira/browse/SPARK-12069) | Documentation update for Datasets |  Major | Documentation, SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-12222](https://issues.apache.org/jira/browse/SPARK-12222) | deserialize RoaringBitmap using Kryo serializer throw Buffer underflow exception |  Major | Spark Core | Fei Wang | Fei Wang |
| [SPARK-12031](https://issues.apache.org/jira/browse/SPARK-12031) | Integer overflow when do sampling. |  Major | Spark Core | Genmao Yu | Genmao Yu |
| [SPARK-12165](https://issues.apache.org/jira/browse/SPARK-12165) | Execution memory requests may fail to evict storage blocks if storage memory usage is below max memory |  Blocker | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-12189](https://issues.apache.org/jira/browse/SPARK-12189) | UnifiedMemoryManager double counts storage memory freed |  Blocker | Spark Core | Andrew Or | Josh Rosen |
| [SPARK-11796](https://issues.apache.org/jira/browse/SPARK-11796) | Docker JDBC integration tests fail in Maven build due to dependency issue |  Major | SQL, Tests | Josh Rosen | Mark Grover |
| [SPARK-12244](https://issues.apache.org/jira/browse/SPARK-12244) | Rename trackStateByKey to mapWithState |  Blocker | DStreams | Tathagata Das | Tathagata Das |
| [SPARK-12245](https://issues.apache.org/jira/browse/SPARK-12245) | Change the simple tracking function signature to include key in the params |  Blocker | . | Tathagata Das | Tathagata Das |
| [SPARK-12136](https://issues.apache.org/jira/browse/SPARK-12136) | rddToFileName does not properly handle prefix and suffix parameters |  Minor | DStreams | Brian Webb | Bo Meng |
| [SPARK-12234](https://issues.apache.org/jira/browse/SPARK-12234) | SparkR subset throw error when only set "select" argument |  Major | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-12012](https://issues.apache.org/jira/browse/SPARK-12012) | Show more comprehensive PhysicalRDD metadata when visualizing SQL query plan |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-12250](https://issues.apache.org/jira/browse/SPARK-12250) | Allow users to define a UDAF without providing details of its inputSchema |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-12155](https://issues.apache.org/jira/browse/SPARK-12155) | Execution OOM after a relative large dataset cached in the cluster. |  Blocker | Spark Core, SQL | Yin Huai | Andrew Or |
| [SPARK-12253](https://issues.apache.org/jira/browse/SPARK-12253) | UnifiedMemoryManager race condition: storage can starve new tasks |  Blocker | Spark Core | Andrew Or | Andrew Or |
| [SPARK-12258](https://issues.apache.org/jira/browse/SPARK-12258) | Hive Timestamp UDF is binded with \'1969-12-31 15:59:59.999999\' for null value |  Major | SQL | Ian | Davies Liu |
| [SPARK-12108](https://issues.apache.org/jira/browse/SPARK-12108) | Event logs are much bigger in 1.6 than in 1.5 |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-11497](https://issues.apache.org/jira/browse/SPARK-11497) | PySpark RowMatrix Constructor Has Type Erasure Issue |  Minor | MLlib, PySpark | Mike Dusenberry | Mike Dusenberry |
| [SPARK-12298](https://issues.apache.org/jira/browse/SPARK-12298) | Infinite loop in DataFrame.sortWithinPartitions(String, String\*) |  Major | SQL | Ankur Dave | Ankur Dave |
| [SPARK-12158](https://issues.apache.org/jira/browse/SPARK-12158) | [R] [SQL] Fix \'sample\' functions that break R unit test cases |  Critical | SparkR, SQL | Xiao Li | Xiao Li |
| [SPARK-11193](https://issues.apache.org/jira/browse/SPARK-11193) | Spark 1.5+ Kinesis Streaming - ClassCastException when starting KinesisReceiver |  Major | DStreams | Phil Kallos | Jean-Baptiste Onofré |
| [SPARK-12267](https://issues.apache.org/jira/browse/SPARK-12267) | Standalone master keeps references to disassociated workers until they sent no heartbeats |  Major | Spark Core | Jacek Laskowski | Shixiong Zhu |
| [SPARK-12281](https://issues.apache.org/jira/browse/SPARK-12281) | Fixed potential exceptions when exiting a local cluster. |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12275](https://issues.apache.org/jira/browse/SPARK-12275) | No plan for BroadcastHint in some condition |  Major | SQL | yucai | yucai |
| [SPARK-9886](https://issues.apache.org/jira/browse/SPARK-9886) | Validate usages of Runtime.getRuntime.addShutdownHook |  Minor | Spark Core | Michel Lemay | Naveen Kumar Minchu |
| [SPARK-12062](https://issues.apache.org/jira/browse/SPARK-12062) | Master rebuilding historical SparkUI should be asynchronous |  Major | Deploy | Andrew Or | Bryan Cutler |
| [SPARK-12324](https://issues.apache.org/jira/browse/SPARK-12324) | The documentation sidebar does not collapse properly |  Minor | Documentation | Timothy Hunter | Timothy Hunter |
| [SPARK-12345](https://issues.apache.org/jira/browse/SPARK-12345) | Mesos cluster mode is broken |  Critical | Mesos | Andrew Or | Timothy Chen |
| [SPARK-12380](https://issues.apache.org/jira/browse/SPARK-12380) | MLLib should use existing SQLContext instead create new one |  Major | MLlib, PySpark | Davies Liu | Davies Liu |
| [SPARK-12186](https://issues.apache.org/jira/browse/SPARK-12186) | stage web URI will redirect to the wrong location if it is the first URI from the application to be requested from the history server |  Minor | Web UI | Rohit Agarwal | Rohit Agarwal |
| [SPARK-12386](https://issues.apache.org/jira/browse/SPARK-12386) | Setting "spark.executor.port" leads to NPE in SparkEnv |  Critical | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-12395](https://issues.apache.org/jira/browse/SPARK-12395) | Result of DataFrame.join(usingColumns) could be wrong for outer join |  Blocker | SQL | Davies Liu | Davies Liu |
| [SPARK-12220](https://issues.apache.org/jira/browse/SPARK-12220) | Make Utils.fetchFile support files that contain special characters |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12390](https://issues.apache.org/jira/browse/SPARK-12390) | Clean up unused serializer parameter in BlockManager |  Major | Block Manager, Spark Core | Andrew Or | Andrew Or |
| [SPARK-12410](https://issues.apache.org/jira/browse/SPARK-12410) | "." and "\|" used for String.split directly |  Minor | DStreams | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12376](https://issues.apache.org/jira/browse/SPARK-12376) | Spark Streaming Java8APISuite fails in assertOrderInvariantEquals method |  Minor | Tests | Evan Chen | Evan Chen |
| [SPARK-11749](https://issues.apache.org/jira/browse/SPARK-11749) | Duplicate creating the RDD in file stream when recovering from checkpoint data |  Major | DStreams | Jack Hu | Jack Hu |
| [SPARK-12413](https://issues.apache.org/jira/browse/SPARK-12413) | Mesos ZK persistence throws a NotSerializableException |  Major | Mesos | Michael Gummelt | Michael Gummelt |
| [SPARK-12218](https://issues.apache.org/jira/browse/SPARK-12218) | Invalid splitting of nested AND expressions in Data Source filter API |  Blocker | SQL | Irakli Machabeli | Yin Huai |
| [SPARK-12404](https://issues.apache.org/jira/browse/SPARK-12404) | Ensure objects passed to StaticInvoke is Serializable |  Critical | SQL | Kousuke Saruta | Kousuke Saruta |
| [SPARK-12466](https://issues.apache.org/jira/browse/SPARK-12466) | Harmless Master NPE in tests |  Major | Deploy, Tests | Andrew Or | Andrew Or |
| [SPARK-12520](https://issues.apache.org/jira/browse/SPARK-12520) | Python API dataframe join returns wrong results on outer join |  Major | PySpark, SQL | Aravind  B | Xiao Li |
| [SPARK-12004](https://issues.apache.org/jira/browse/SPARK-12004) | RDD checkpointing does not preserve partitioner |  Major | DStreams, Spark Core | Tathagata Das | Tathagata Das |
| [SPARK-12002](https://issues.apache.org/jira/browse/SPARK-12002) | offsetRanges attribute missing in Kafka RDD when resuming from checkpoint |  Major | DStreams, PySpark | Amit Ramesh | Saisai Shao |
| [SPARK-11870](https://issues.apache.org/jira/browse/SPARK-11870) | Pyspark Streaming will swallow exceptions in TransformFunction and TransformFunctionSerializer |  Major | PySpark | Shixiong Zhu | Shixiong Zhu |
| [SPARK-10548](https://issues.apache.org/jira/browse/SPARK-10548) | Concurrent execution in SQL does not work |  Blocker | SQL | Andrew Or | Andrew Or |
| [SPARK-11293](https://issues.apache.org/jira/browse/SPARK-11293) | ExternalSorter and ExternalAppendOnlyMap should free shuffle memory in their stop() methods |  Critical | Spark Core | Josh Rosen | Josh Rosen |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10247](https://issues.apache.org/jira/browse/SPARK-10247) | Cleanup DAGSchedulerSuite "ignore late map task completion" |  Trivial | Scheduler, Tests | Imran Rashid | Imran Rashid |
| [SPARK-10013](https://issues.apache.org/jira/browse/SPARK-10013) | Remove Java assert from Java unit tests |  Major | ML, MLlib | Joseph K. Bradley | holdenk |
| [SPARK-10763](https://issues.apache.org/jira/browse/SPARK-10763) | Update Java MLLIB/ML tests to use simplified dataframe construction |  Minor | ML, MLlib | holdenk | holdenk |
| [SPARK-11442](https://issues.apache.org/jira/browse/SPARK-11442) | Reduce numSlices for local metrics test of SparkListenerSuite |  Minor | Tests | Ted Yu | Ted Yu |
| [SPARK-9557](https://issues.apache.org/jira/browse/SPARK-9557) | Refactor ParquetFilterSuite and remove old ParquetFilters code |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-11598](https://issues.apache.org/jira/browse/SPARK-11598) | Add tests for ShuffledHashOuterJoin |  Major | . | Davies Liu | Davies Liu |
| [SPARK-11639](https://issues.apache.org/jira/browse/SPARK-11639) | Flaky test: BatchedWriteAheadLog - name log with aggregated entries with the timestamp of last entry |  Major | DStreams | Burak Yavuz | Burak Yavuz |
| [SPARK-11694](https://issues.apache.org/jira/browse/SPARK-11694) | Parquet logical types are not being tested properly |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-7013](https://issues.apache.org/jira/browse/SPARK-7013) | Add unit test for spark.ml StandardScaler |  Minor | ML | Joseph K. Bradley | RoyGao |
| [SPARK-11845](https://issues.apache.org/jira/browse/SPARK-11845) | Add unit tests to verify correct checkpointing of TrackStateRDD |  Major | DStreams | Tathagata Das | Tathagata Das |
| [SPARK-7539](https://issues.apache.org/jira/browse/SPARK-7539) | Perf tests for Python MLlib |  Major | MLlib, PySpark, Tests | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-12058](https://issues.apache.org/jira/browse/SPARK-12058) | Fix KinesisStreamTests in python/pyspark/streaming/tests.py and enable it |  Major | Tests | Shixiong Zhu | Burak Yavuz |
| [SPARK-12106](https://issues.apache.org/jira/browse/SPARK-12106) | Flaky Test: BatchedWriteAheadLog - name log with aggregated entries with the timestamp of last entry |  Major | DStreams | Burak Yavuz | Burak Yavuz |
| [SPARK-10248](https://issues.apache.org/jira/browse/SPARK-10248) | DAGSchedulerSuite should check there were no errors in EventProcessLoop |  Major | Spark Core | Imran Rashid | Imran Rashid |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-8345](https://issues.apache.org/jira/browse/SPARK-8345) | Add an SQL node as a feature transformer |  Major | ML | Xiangrui Meng | Yanbo Liang |
| [SPARK-8887](https://issues.apache.org/jira/browse/SPARK-8887) | Explicitly define which data types can be used as dynamic partition columns |  Major | SQL | Cheng Lian | Yijie Shen |
| [SPARK-9984](https://issues.apache.org/jira/browse/SPARK-9984) | Create local physical operator interface |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-9400](https://issues.apache.org/jira/browse/SPARK-9400) | Implement code generation for StringLocate |  Major | SQL | Reynold Xin | Davies Liu |
| [SPARK-9401](https://issues.apache.org/jira/browse/SPARK-9401) | Fully implement code generation for ConcatWs |  Major | SQL | Reynold Xin | Yijie Shen |
| [SPARK-10048](https://issues.apache.org/jira/browse/SPARK-10048) | Support arbitrary nested Java array in serde |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-8505](https://issues.apache.org/jira/browse/SPARK-8505) | Add settings to kick \`lint-r\` from \`./dev/run-test.py\` |  Major | SparkR | Yu Ishikawa | Yu Ishikawa |
| [SPARK-10260](https://issues.apache.org/jira/browse/SPARK-10260) | Add @Since annotation to ml.clustering |  Minor | Documentation, ML | Xiangrui Meng | Yu Ishikawa |
| [SPARK-9986](https://issues.apache.org/jira/browse/SPARK-9986) | Create a simple test framework for local operators |  Major | SQL | Reynold Xin | Shixiong Zhu |
| [SPARK-9991](https://issues.apache.org/jira/browse/SPARK-9991) | Create local limit operator |  Major | SQL | Reynold Xin | Shixiong Zhu |
| [SPARK-9993](https://issues.apache.org/jira/browse/SPARK-9993) | Create local union operator |  Major | SQL | Reynold Xin | Shixiong Zhu |
| [SPARK-10289](https://issues.apache.org/jira/browse/SPARK-10289) | A direct write API for testing Parquet compatibility |  Major | SQL, Tests | Cheng Lian | Cheng Lian |
| [SPARK-9954](https://issues.apache.org/jira/browse/SPARK-9954) | Vector.hashCode should use nonzeros |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-9925](https://issues.apache.org/jira/browse/SPARK-9925) | Set SQLConf.SHUFFLE\_PARTITIONS.key correctly for tests |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-9990](https://issues.apache.org/jira/browse/SPARK-9990) | Create local hash join operator |  Major | SQL | Reynold Xin | Shixiong Zhu |
| [SPARK-10049](https://issues.apache.org/jira/browse/SPARK-10049) | Support collecting data of ArraryType in DataFrame |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-7544](https://issues.apache.org/jira/browse/SPARK-7544) | pyspark.sql.types.Row should implement \_\_getitem\_\_ |  Minor | PySpark, SQL | Nicholas Chammas | Yanbo Liang |
| [SPARK-10023](https://issues.apache.org/jira/browse/SPARK-10023) | Unified DecisionTreeParams "checkpointInterval" between Scala and Python API. |  Major | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-10027](https://issues.apache.org/jira/browse/SPARK-10027) | Add Python API missing methods for ml.feature |  Major | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-10026](https://issues.apache.org/jira/browse/SPARK-10026) | Implement some common Params for regression in PySpark |  Major | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-9992](https://issues.apache.org/jira/browse/SPARK-9992) | Create local sample operator |  Major | SQL | Reynold Xin | Shixiong Zhu |
| [SPARK-9994](https://issues.apache.org/jira/browse/SPARK-9994) | Create local TopK operator |  Major | SQL | Reynold Xin | Shixiong Zhu |
| [SPARK-9998](https://issues.apache.org/jira/browse/SPARK-9998) | Create local intersect operator |  Major | SQL | Reynold Xin | Shixiong Zhu |
| [SPARK-6548](https://issues.apache.org/jira/browse/SPARK-6548) | stddev\_pop and stddev\_samp aggregate functions |  Major | SQL | Reynold Xin | Jihong MA |
| [SPARK-9996](https://issues.apache.org/jira/browse/SPARK-9996) | Create local nested loop join operator |  Major | SQL | Reynold Xin | Shixiong Zhu |
| [SPARK-9997](https://issues.apache.org/jira/browse/SPARK-9997) | Create local Expand operator |  Major | SQL | Reynold Xin | Shixiong Zhu |
| [SPARK-9851](https://issues.apache.org/jira/browse/SPARK-9851) | Support submitting map stages individually in DAGScheduler |  Major | Spark Core, SQL | Matei Zaharia | Matei Zaharia |
| [SPARK-10273](https://issues.apache.org/jira/browse/SPARK-10273) | Add @since annotation to pyspark.mllib.feature |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Noel Smith |
| [SPARK-10275](https://issues.apache.org/jira/browse/SPARK-10275) | Add @since annotation to pyspark.mllib.random |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10612](https://issues.apache.org/jira/browse/SPARK-10612) | Add prepare to LocalNode |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-10276](https://issues.apache.org/jira/browse/SPARK-10276) | Add @since annotation to pyspark.mllib.recommendation |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10050](https://issues.apache.org/jira/browse/SPARK-10050) | Support collecting data of MapType in DataFrame |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-10284](https://issues.apache.org/jira/browse/SPARK-10284) | Add @since annotation to pyspark.ml.tuning |  Minor | Documentation, ML, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10283](https://issues.apache.org/jira/browse/SPARK-10283) | Add @since annotation to pyspark.ml.regression |  Minor | Documentation, ML, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10281](https://issues.apache.org/jira/browse/SPARK-10281) | Add @since annotation to pyspark.ml.clustering |  Minor | Documentation, ML, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10278](https://issues.apache.org/jira/browse/SPARK-10278) | Add @since annotation to pyspark.mllib.tree |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10279](https://issues.apache.org/jira/browse/SPARK-10279) | Add @since annotation to pyspark.mllib.util |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10274](https://issues.apache.org/jira/browse/SPARK-10274) | Add @since annotation to pyspark.mllib.fpm |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10282](https://issues.apache.org/jira/browse/SPARK-10282) | Add @since annotation to pyspark.ml.recommendation |  Minor | Documentation, ML, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-9808](https://issues.apache.org/jira/browse/SPARK-9808) | Remove hash shuffle file consolidation |  Major | Shuffle, Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-10710](https://issues.apache.org/jira/browse/SPARK-10710) | Remove ability to set spark.shuffle.spill=false and spark.sql.planner.externalSort=false |  Major | Shuffle | Josh Rosen | Josh Rosen |
| [SPARK-10704](https://issues.apache.org/jira/browse/SPARK-10704) | Rename HashShufflereader to BlockStoreShuffleReader |  Major | Shuffle | Josh Rosen | Josh Rosen |
| [SPARK-6028](https://issues.apache.org/jira/browse/SPARK-6028) | Provide an alternative RPC implementation based on the network transport module |  Critical | Spark Core | Reynold Xin | Shixiong Zhu |
| [SPARK-10765](https://issues.apache.org/jira/browse/SPARK-10765) | use new aggregate interface for hive UDAF |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10761](https://issues.apache.org/jira/browse/SPARK-10761) | Refactor DiskBlockObjectWriter to not require BlockId |  Minor | Block Manager | Josh Rosen | Josh Rosen |
| [SPARK-9852](https://issues.apache.org/jira/browse/SPARK-9852) | Let reduce tasks fetch multiple map output partitions |  Major | Spark Core, SQL | Matei Zaharia | Matei Zaharia |
| [SPARK-9681](https://issues.apache.org/jira/browse/SPARK-9681) | Support R feature interactions in RFormula |  Major | ML, SparkR | Eric Liang | Eric Liang |
| [SPARK-9741](https://issues.apache.org/jira/browse/SPARK-9741) | approx count distinct function |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-9617](https://issues.apache.org/jira/browse/SPARK-9617) | Implement json\_tuple |  Minor | SQL | Nathan Howell | Nathan Howell |
| [SPARK-5890](https://issues.apache.org/jira/browse/SPARK-5890) | Add QuantileDiscretizer |  Major | ML | Xiangrui Meng | Xusen Yin |
| [SPARK-6530](https://issues.apache.org/jira/browse/SPARK-6530) | ChiSqSelector transformer |  Major | ML | Xusen Yin | Xusen Yin |
| [SPARK-10752](https://issues.apache.org/jira/browse/SPARK-10752) | Implement corr() and cov in DataFrameStatFunctions |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-10941](https://issues.apache.org/jira/browse/SPARK-10941) | .Refactor AggregateFunction2 and AlgebraicAggregate interfaces to improve code clarity |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-10836](https://issues.apache.org/jira/browse/SPARK-10836) | SparkR: Add sort function to dataframe |  Minor | SparkR | Narine Kokhlikyan | Narine Kokhlikyan |
| [SPARK-10887](https://issues.apache.org/jira/browse/SPARK-10887) | Build HashedRelation outside of HashJoinNode |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-10993](https://issues.apache.org/jira/browse/SPARK-10993) | Inital code generated encoder for product types |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-10988](https://issues.apache.org/jira/browse/SPARK-10988) | Reduce duplication in Aggregate2\'s expression rewriting logic |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-8848](https://issues.apache.org/jira/browse/SPARK-8848) | Write Parquet LISTs and MAPs conforming to Parquet format spec |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-8552](https://issues.apache.org/jira/browse/SPARK-8552) | Using incorrect database in multiple sessions |  Critical | SQL | Yi Tian | Davies Liu |
| [SPARK-10956](https://issues.apache.org/jira/browse/SPARK-10956) | Introduce common memory management interface for execution and storage |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-10905](https://issues.apache.org/jira/browse/SPARK-10905) | Export freqItems() for DataFrameStatFunctions in SparkR |  Minor | SparkR | rerngvit yanggratoke | rerngvit yanggratoke |
| [SPARK-8673](https://issues.apache.org/jira/browse/SPARK-8673) | Launcher: add support for monitoring launched applications |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-10167](https://issues.apache.org/jira/browse/SPARK-10167) | We need to explicitly use transformDown when rewrite aggregation results |  Minor | SQL | Yin Huai | Josh Rosen |
| [SPARK-10079](https://issues.apache.org/jira/browse/SPARK-10079) | Make \`column\` and \`col\` functions be S4 functions |  Major | SparkR | Yu Ishikawa | Sun Rui |
| [SPARK-11053](https://issues.apache.org/jira/browse/SPARK-11053) | Remove use of KVIterator in SortBasedAggregationIterator |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-9280](https://issues.apache.org/jira/browse/SPARK-9280) | New HiveContext object unexpectedly loads configuration settings from history |  Major | SQL | Tien-Dung LE | Davies Liu |
| [SPARK-8170](https://issues.apache.org/jira/browse/SPARK-8170) | Ctrl-C in pyspark shell doesn\'t kill running job |  Major | PySpark | Ashwin Shankar | Ashwin Shankar |
| [SPARK-7796](https://issues.apache.org/jira/browse/SPARK-7796) | Use the new RPC implementation by default |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11079](https://issues.apache.org/jira/browse/SPARK-11079) | Post-hoc review Netty based RPC implementation - round 1 |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-10051](https://issues.apache.org/jira/browse/SPARK-10051) | Support collecting data of StructType in DataFrame |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-10888](https://issues.apache.org/jira/browse/SPARK-10888) | Add as.DataFrame as a synonym for createDataFrame |  Minor | SparkR | Narine Kokhlikyan | Narine Kokhlikyan |
| [SPARK-10913](https://issues.apache.org/jira/browse/SPARK-10913) | Add attach() function for DataFrame |  Minor | SparkR | Weiqiang Zhuang | Weiqiang Zhuang |
| [SPARK-7402](https://issues.apache.org/jira/browse/SPARK-7402) | JSON serialization of standard params |  Critical | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-10983](https://issues.apache.org/jira/browse/SPARK-10983) | Implement unified memory manager |  Critical | Spark Core | Andrew Or | Andrew Or |
| [SPARK-11090](https://issues.apache.org/jira/browse/SPARK-11090) | Initial code generated construction of Product classes from InternalRow |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-11096](https://issues.apache.org/jira/browse/SPARK-11096) | Post-hoc review Netty based RPC implementation - round 2 |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-11017](https://issues.apache.org/jira/browse/SPARK-11017) | Support ImperativeAggregates in TungstenAggregate |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-7018](https://issues.apache.org/jira/browse/SPARK-7018) | Refactor dev/run-tests-jenkins into Python |  Major | Build, Project Infra | Brennon York | Brennon York |
| [SPARK-10272](https://issues.apache.org/jira/browse/SPARK-10272) | Add @since annotation to pyspark.mllib.evaluation |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Noel Smith |
| [SPARK-10261](https://issues.apache.org/jira/browse/SPARK-10261) | Add @Since annotation to ml.evaluation |  Minor | Documentation, ML | Xiangrui Meng | Tijo Thomas |
| [SPARK-10269](https://issues.apache.org/jira/browse/SPARK-10269) | Add @since annotation to pyspark.mllib.classification |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Noel Smith |
| [SPARK-11216](https://issues.apache.org/jira/browse/SPARK-11216) | add encoder/decoder for external row |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-9740](https://issues.apache.org/jira/browse/SPARK-9740) | first/last aggregate NULL behavior |  Major | SQL | Herman van Hovell | Yin Huai |
| [SPARK-9392](https://issues.apache.org/jira/browse/SPARK-9392) | Dataframe drop should work on unresolved columns |  Critical | SQL | Michael Armbrust | Yanbo Liang |
| [SPARK-10708](https://issues.apache.org/jira/browse/SPARK-10708) | Consolidate SortShuffleManager and UnsafeShuffleManager |  Major | Shuffle | Josh Rosen | Josh Rosen |
| [SPARK-11078](https://issues.apache.org/jira/browse/SPARK-11078) | Ensure spilling tests are actually spilling |  Major | Spark Core, Tests | Andrew Or | Andrew Or |
| [SPARK-11116](https://issues.apache.org/jira/browse/SPARK-11116) | Initial API Draft |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-11098](https://issues.apache.org/jira/browse/SPARK-11098) | RPC message ordering is not guaranteed |  Major | Spark Core | Reynold Xin | Shixiong Zhu |
| [SPARK-10382](https://issues.apache.org/jira/browse/SPARK-10382) | Implement a Jekyll tag to include example code in user guide |  Critical | Documentation, ML, MLlib | Xiangrui Meng | Xusen Yin |
| [SPARK-10277](https://issues.apache.org/jira/browse/SPARK-10277) | Add @since annotation to pyspark.mllib.regression |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-6723](https://issues.apache.org/jira/browse/SPARK-6723) | Model import/export for ChiSqSelector |  Minor | MLlib | Joseph K. Bradley | Jayant Shekhar |
| [SPARK-10984](https://issues.apache.org/jira/browse/SPARK-10984) | Simplify \*MemoryManager class structure |  Major | Spark Core | Andrew Or | Josh Rosen |
| [SPARK-10979](https://issues.apache.org/jira/browse/SPARK-10979) | SparkR: Add merge to DataFrame |  Major | SparkR | Narine Kokhlikyan | Narine Kokhlikyan |
| [SPARK-11289](https://issues.apache.org/jira/browse/SPARK-11289) | Substitute code examples of tf-idf and word2vec with include\_example |  Minor | Documentation, ML, MLlib | Xusen Yin | Xusen Yin |
| [SPARK-10271](https://issues.apache.org/jira/browse/SPARK-10271) | Add @since annotation to pyspark.mllib.clustering |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Noel Smith |
| [SPARK-6488](https://issues.apache.org/jira/browse/SPARK-6488) | Support addition/multiplication in PySpark\'s BlockMatrix |  Major | MLlib, PySpark | Xiangrui Meng | Mike Dusenberry |
| [SPARK-11347](https://issues.apache.org/jira/browse/SPARK-11347) | Support for joining two datasets, returning a tuple of objects |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-10024](https://issues.apache.org/jira/browse/SPARK-10024) | Python API RF and GBT related params clear up |  Major | ML, MLlib, PySpark | Yanbo Liang | Kai Jiang |
| [SPARK-11313](https://issues.apache.org/jira/browse/SPARK-11313) | Implement cogroup |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10641](https://issues.apache.org/jira/browse/SPARK-10641) | skewness and kurtosis support |  Major | ML, SQL | Jihong MA | Seth Hendrickson |
| [SPARK-11073](https://issues.apache.org/jira/browse/SPARK-11073) | Remove akka dependency from SecurityManager |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-9298](https://issues.apache.org/jira/browse/SPARK-9298) | corr aggregate functions |  Major | SQL | Yin Huai | Liang-Chi Hsieh |
| [SPARK-11383](https://issues.apache.org/jira/browse/SPARK-11383) | Replace example code in mllib-naive-bayes.md/mllib-isotonic-regression.md using include\_example |  Major | Documentation | Xusen Yin | Rishabh Bhardwaj |
| [SPARK-10286](https://issues.apache.org/jira/browse/SPARK-10286) | Add @since annotation to pyspark.ml.param and pyspark.ml.\* |  Minor | Documentation, ML, PySpark | Xiangrui Meng | Greg Lee |
| [SPARK-9858](https://issues.apache.org/jira/browse/SPARK-9858) | Introduce an ExchangeCoordinator to estimate the number of post-shuffle partitions. |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-9859](https://issues.apache.org/jira/browse/SPARK-9859) | Aggregation: Determine the number of reducers at runtime |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-9861](https://issues.apache.org/jira/browse/SPARK-9861) | Join: Determine the number of reducers used by a shuffle join operator at runtime |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-7160](https://issues.apache.org/jira/browse/SPARK-7160) | Support converting DataFrames to typed RDDs. |  Critical | SQL | Ray Ortigas | Ray Ortigas |
| [SPARK-10429](https://issues.apache.org/jira/browse/SPARK-10429) | MutableProjection should evaluate all expressions first and then update the mutable row |  Blocker | SQL | Yin Huai | Davies Liu |
| [SPARK-11404](https://issues.apache.org/jira/browse/SPARK-11404) | groupBy on column expressions |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-9836](https://issues.apache.org/jira/browse/SPARK-9836) | Provide R-like summary statistics for ordinary least squares via normal equation solver |  Critical | ML | Xiangrui Meng | Yanbo Liang |
| [SPARK-11349](https://issues.apache.org/jira/browse/SPARK-11349) | Support transform string label for RFormula |  Major | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-9296](https://issues.apache.org/jira/browse/SPARK-9296) | variance, var\_pop, and var\_samp aggregate functions |  Major | SQL | Yin Huai | Seth Hendrickson |
| [SPARK-9492](https://issues.apache.org/jira/browse/SPARK-9492) | LogisticRegression in R should provide model statistics |  Major | ML, SparkR | Eric Liang | Yanbo Liang |
| [SPARK-11380](https://issues.apache.org/jira/browse/SPARK-11380) | Replace example code in mllib-frequent-pattern-mining.md using include\_example |  Major | Documentation, MLlib | Xiangrui Meng | Pravin Gadakh |
| [SPARK-11443](https://issues.apache.org/jira/browse/SPARK-11443) | Blank lines should be reserved in include\_example |  Major | Documentation | Xusen Yin | Xusen Yin |
| [SPARK-11490](https://issues.apache.org/jira/browse/SPARK-11490) | variance should alias var\_samp instead of var\_pop |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11504](https://issues.apache.org/jira/browse/SPARK-11504) | API audit for distributeBy and localSort |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11505](https://issues.apache.org/jira/browse/SPARK-11505) | Break aggregate functions into multiple files |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11510](https://issues.apache.org/jira/browse/SPARK-11510) | Remove some SQL aggregation tests |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11473](https://issues.apache.org/jira/browse/SPARK-11473) | R-like summary statistics with intercept for OLS via normal equation solver |  Major | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-10265](https://issues.apache.org/jira/browse/SPARK-10265) | Add @Since annotation to ml.regression |  Minor | Documentation, ML | Xiangrui Meng | Ehsan Mohyedin Kermani |
| [SPARK-11260](https://issues.apache.org/jira/browse/SPARK-11260) | Add \'with\' API |  Minor | SparkR | Weiqiang Zhuang | Weiqiang Zhuang |
| [SPARK-11540](https://issues.apache.org/jira/browse/SPARK-11540) | QueryExecutionListener |  Blocker | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11528](https://issues.apache.org/jira/browse/SPARK-11528) | Typed-safe aggregations |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-11541](https://issues.apache.org/jira/browse/SPARK-11541) | Break JdbcDialects.scala into multiple files and mark various dialects as private |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-9162](https://issues.apache.org/jira/browse/SPARK-9162) | Implement code generation for ScalaUDF |  Major | SQL | Reynold Xin | Liang-Chi Hsieh |
| [SPARK-11217](https://issues.apache.org/jira/browse/SPARK-11217) | Model import/export for non-meta estimators and transformers |  Major | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-9241](https://issues.apache.org/jira/browse/SPARK-9241) | Supporting multiple DISTINCT columns |  Critical | SQL | Yin Huai | Herman van Hovell |
| [SPARK-11112](https://issues.apache.org/jira/browse/SPARK-11112) | DAG visualization: display RDD callsite |  Critical | Web UI | Andrew Or | Andrew Or |
| [SPARK-11451](https://issues.apache.org/jira/browse/SPARK-11451) | Support single distinct count on multiple columns |  Minor | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-11554](https://issues.apache.org/jira/browse/SPARK-11554) | add map/flatMap to GroupedDataset |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11564](https://issues.apache.org/jira/browse/SPARK-11564) | Dataset Java API |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-10513](https://issues.apache.org/jira/browse/SPARK-10513) | Springleaf Marketing Response |  Major | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-11494](https://issues.apache.org/jira/browse/SPARK-11494) | Expose R-like summary statistics in SparkR::glm for linear regression |  Major | ML, SparkR | Xiangrui Meng | Yanbo Liang |
| [SPARK-10280](https://issues.apache.org/jira/browse/SPARK-10280) | Add @since annotation to pyspark.ml.classification |  Minor | Documentation, ML, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-11508](https://issues.apache.org/jira/browse/SPARK-11508) | Add Python API for repartition and sortWithinPartitions |  Major | SQL | Reynold Xin | Nong Li |
| [SPARK-11552](https://issues.apache.org/jira/browse/SPARK-11552) | Replace example code in ml-decision-tree.md using include\_example |  Minor | Documentation, ML | Xusen Yin | Sachin Aggarwal |
| [SPARK-11548](https://issues.apache.org/jira/browse/SPARK-11548) | Replace example code in mllib-collaborative-filtering.md using include\_example |  Major | Documentation | Xusen Yin | Rishabh Bhardwaj |
| [SPARK-9301](https://issues.apache.org/jira/browse/SPARK-9301) | collect\_set and collect\_list aggregate functions |  Critical | SQL | Yin Huai | Nick Buroojy |
| [SPARK-11578](https://issues.apache.org/jira/browse/SPARK-11578) | User facing api for typed aggregation |  Critical | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-11610](https://issues.apache.org/jira/browse/SPARK-11610) | Make the docs of LDAModel.describeTopics in Python more specific |  Trivial | MLlib, PySpark | Yu Ishikawa | Yu Ishikawa |
| [SPARK-11382](https://issues.apache.org/jira/browse/SPARK-11382) | Replace example code in mllib-decision-tree.md using include\_example |  Major | Documentation | Xusen Yin | Xusen Yin |
| [SPARK-9830](https://issues.apache.org/jira/browse/SPARK-9830) | Remove AggregateExpression1 and Aggregate Operator used to evaluate AggregateExpression1s |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-10863](https://issues.apache.org/jira/browse/SPARK-10863) | Method coltypes() to return the R column types of a DataFrame |  Major | SparkR | Oscar D. Lara Yejas | Oscar D. Lara Yejas |
| [SPARK-4243](https://issues.apache.org/jira/browse/SPARK-4243) | Spark SQL SELECT COUNT DISTINCT optimization |  Major | SQL | Bojan Kostić | Yin Huai |
| [SPARK-11618](https://issues.apache.org/jira/browse/SPARK-11618) | Refactoring of basic ML import/export |  Major | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-11616](https://issues.apache.org/jira/browse/SPARK-11616) | Improve toString Function |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-11550](https://issues.apache.org/jira/browse/SPARK-11550) | Replace example code in mllib-optimization.md using include\_example |  Major | Documentation | Xusen Yin | Pravin Gadakh |
| [SPARK-11641](https://issues.apache.org/jira/browse/SPARK-11641) | Exchange plan string is too verbose |  Major | SQL | Reynold Xin | Yin Huai |
| [SPARK-10192](https://issues.apache.org/jira/browse/SPARK-10192) | Test for fetch failure in a shared dependency for "skipped" stages |  Major | Scheduler, Tests | Imran Rashid | Imran Rashid |
| [SPARK-6726](https://issues.apache.org/jira/browse/SPARK-6726) | Model export/import for spark.ml: LogisticRegression |  Major | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-11656](https://issues.apache.org/jira/browse/SPARK-11656) | support typed aggregate in project list |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11647](https://issues.apache.org/jira/browse/SPARK-11647) | Attempt to reduce flakiness of Hive Cli / SparkSubmit tests via conf. changes |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-11396](https://issues.apache.org/jira/browse/SPARK-11396) | datetime function: to\_unix\_timestamp |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-11420](https://issues.apache.org/jira/browse/SPARK-11420) | Updating Stddev support with Imperative Aggregate |  Major | ML, SQL | Jihong MA | Jihong MA |
| [SPARK-11712](https://issues.apache.org/jira/browse/SPARK-11712) | Refactor spark.ml LDAModel to be abstract |  Minor | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-11654](https://issues.apache.org/jira/browse/SPARK-11654) | add reduce to GroupedDataset |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11445](https://issues.apache.org/jira/browse/SPARK-11445) | Replace example code in mllib-ensembles.md using include\_example |  Major | Documentation, MLlib | Gabor Liptak | Rishabh Bhardwaj |
| [SPARK-11727](https://issues.apache.org/jira/browse/SPARK-11727) | split ExpressionEncoder into FlatEncoder and ProductEncoder |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11336](https://issues.apache.org/jira/browse/SPARK-11336) | Include path to the source file in generated example code |  Major | Documentation, ML, MLlib | Xiangrui Meng | Xusen Yin |
| [SPARK-11710](https://issues.apache.org/jira/browse/SPARK-11710) | Document new memory management model |  Major | Documentation, Spark Core | Andrew Or | Andrew Or |
| [SPARK-11612](https://issues.apache.org/jira/browse/SPARK-11612) | Model export/import for spark.ml: Pipeline and PipelineModel |  Critical | ML | Xiangrui Meng | Joseph K. Bradley |
| [SPARK-11769](https://issues.apache.org/jira/browse/SPARK-11769) | Model export/import for spark.ml: all basic Transformers |  Major | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-11729](https://issues.apache.org/jira/browse/SPARK-11729) | Replace example code in ml-linear-methods.md using include\_example |  Major | Documentation | Xusen Yin | Xusen Yin |
| [SPARK-11763](https://issues.apache.org/jira/browse/SPARK-11763) | Refactoring to create template for Estimator, Model pairs |  Major | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-11764](https://issues.apache.org/jira/browse/SPARK-11764) | JSON serialization of Param[Vector] |  Major | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-9065](https://issues.apache.org/jira/browse/SPARK-9065) | Add the ability to specify message handler function in python similar to Scala/Java |  Major | DStreams, PySpark | Tathagata Das | Saisai Shao |
| [SPARK-11793](https://issues.apache.org/jira/browse/SPARK-11793) | Dataset should set the resolved encoders internally for maps |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11797](https://issues.apache.org/jira/browse/SPARK-11797) | collect, first, and take should use encoders for serialization |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11728](https://issues.apache.org/jira/browse/SPARK-11728) | Replace example code in ml-ensembles.md using include\_example |  Major | Documentation | Xusen Yin | Xusen Yin |
| [SPARK-11802](https://issues.apache.org/jira/browse/SPARK-11802) | Kryo-based encoder for opaque types |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11625](https://issues.apache.org/jira/browse/SPARK-11625) | add java test for typed aggregate |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11269](https://issues.apache.org/jira/browse/SPARK-11269) | Java API support & test cases |  Major | SQL | Reynold Xin | Wenchen Fan |
| [SPARK-11803](https://issues.apache.org/jira/browse/SPARK-11803) | Dataset self join returns incorrect result |  Major | SQL | Reynold Xin | Wenchen Fan |
| [SPARK-11795](https://issues.apache.org/jira/browse/SPARK-11795) | org.apache.spark.sql.AnalysisException: Can\'t extract value from a#12 |  Critical | SQL | Reynold Xin | Wenchen Fan |
| [SPARK-11720](https://issues.apache.org/jira/browse/SPARK-11720) | Handle edge cases when count = 0 or 1 for Stats function |  Minor | ML, SQL | Jihong MA | Jihong MA |
| [SPARK-6790](https://issues.apache.org/jira/browse/SPARK-6790) | Model export/import for spark.ml: LinearRegression |  Major | ML | Joseph K. Bradley | Wenjian Huang |
| [SPARK-6789](https://issues.apache.org/jira/browse/SPARK-6789) | Model export/import for spark.ml: ALS |  Major | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-11820](https://issues.apache.org/jira/browse/SPARK-11820) | PySpark LiR & LoR should support weightCol |  Major | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-11810](https://issues.apache.org/jira/browse/SPARK-11810) | Java-based encoder for opaque types |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-6787](https://issues.apache.org/jira/browse/SPARK-6787) | Model export/import for spark.ml: estimators under ml.feature (I) |  Major | ML | Joseph K. Bradley | Xiangrui Meng |
| [SPARK-11649](https://issues.apache.org/jira/browse/SPARK-11649) | "SparkListenerSuite.onTaskGettingResult() called when result fetched remotely" test is very slow |  Major | Tests | Josh Rosen | Josh Rosen |
| [SPARK-11839](https://issues.apache.org/jira/browse/SPARK-11839) | Renames traits to avoid collision with java.util.\* and add use default traits to simplify the impl |  Major | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-11833](https://issues.apache.org/jira/browse/SPARK-11833) | Add Java tests for Kryo/Java encoders |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11842](https://issues.apache.org/jira/browse/SPARK-11842) | Cleanups to existing Readers and Writers |  Minor | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-11840](https://issues.apache.org/jira/browse/SPARK-11840) | Restore the 1.5\'s behavior of planning a single distinct aggregation. |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-11858](https://issues.apache.org/jira/browse/SPARK-11858) | Move sql.columnar into sql.execution |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11846](https://issues.apache.org/jira/browse/SPARK-11846) | Model export/import for spark.ml: AFTSurvivalRegression and IsotonicRegression |  Major | ML | Joseph K. Bradley | Xusen Yin |
| [SPARK-11829](https://issues.apache.org/jira/browse/SPARK-11829) | Model export/import for spark.ml: estimators under ml.feature (II) |  Major | ML | Joseph K. Bradley | Yanbo Liang |
| [SPARK-11875](https://issues.apache.org/jira/browse/SPARK-11875) | Update doc for PySpark HasCheckpointInterval |  Minor | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-11867](https://issues.apache.org/jira/browse/SPARK-11867) | Model export/import for spark.ml: k-means & naive Bayes |  Major | ML | Xiangrui Meng | Xusen Yin |
| [SPARK-11819](https://issues.apache.org/jira/browse/SPARK-11819) | nice error message for missing encoder |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11650](https://issues.apache.org/jira/browse/SPARK-11650) | "AkkaUtilsSuite.remote fetch ssl on - untrusted server" test is very slow |  Major | Tests | Josh Rosen | Josh Rosen |
| [SPARK-11636](https://issues.apache.org/jira/browse/SPARK-11636) | Support as on Classes defined in the REPL |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-11549](https://issues.apache.org/jira/browse/SPARK-11549) | Replace example code in mllib-evaluation-metrics.md using include\_example |  Major | Documentation | Xusen Yin | Vikas Nelamangala |
| [SPARK-11900](https://issues.apache.org/jira/browse/SPARK-11900) | Add since version for all encoders |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11901](https://issues.apache.org/jira/browse/SPARK-11901) | API audit for Aggregator |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11899](https://issues.apache.org/jira/browse/SPARK-11899) | API audit for GroupedDataset |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-6791](https://issues.apache.org/jira/browse/SPARK-6791) | Model export/import for spark.ml: CrossValidator |  Major | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-11894](https://issues.apache.org/jira/browse/SPARK-11894) | Incorrect results are returned when using null |  Major | SQL | Xiao Li | Wenchen Fan |
| [SPARK-11921](https://issues.apache.org/jira/browse/SPARK-11921) | fix \`nullable\` of encoder schema |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11913](https://issues.apache.org/jira/browse/SPARK-11913) | support typed aggregate for complex buffer schema |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11140](https://issues.apache.org/jira/browse/SPARK-11140) | Replace file server in driver with RPC-based alternative |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-7457](https://issues.apache.org/jira/browse/SPARK-7457) | Perf test for ALS.recommendProductsForUsers, recommendUsersForProducts |  Major | MLlib, Tests | Xiangrui Meng | Joseph K. Bradley |
| [SPARK-9866](https://issues.apache.org/jira/browse/SPARK-9866) | VersionsSuite is unnecessarily slow in Jenkins |  Major | SQL, Tests | Josh Rosen | Josh Rosen |
| [SPARK-10560](https://issues.apache.org/jira/browse/SPARK-10560) | Make StreamingLogisticRegressionWithSGD Python API equals with Scala one |  Minor | MLlib, PySpark | Yanbo Liang | Bryan Cutler |
| [SPARK-11933](https://issues.apache.org/jira/browse/SPARK-11933) | Rename mapGroup -\> mapGroups and flatMapGroup -\> flatMapGroups |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11942](https://issues.apache.org/jira/browse/SPARK-11942) | fix encoder life cycle for CoGroup |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11952](https://issues.apache.org/jira/browse/SPARK-11952) | Remove duplicate ml examples (GBT/RF/logistic regression in Python) |  Minor | Examples, ML | Yanbo Liang | Yanbo Liang |
| [SPARK-11847](https://issues.apache.org/jira/browse/SPARK-11847) | Model export/import for spark.ml: LDA |  Major | ML | Xiangrui Meng | yuhao yang |
| [SPARK-11946](https://issues.apache.org/jira/browse/SPARK-11946) | Audit pivot API for 1.6 |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11967](https://issues.apache.org/jira/browse/SPARK-11967) | Use varargs for multiple paths in DataFrameReader |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11947](https://issues.apache.org/jira/browse/SPARK-11947) | Mark deprecated methods in SQL with "This will be removed in Spark 2.0." |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-10621](https://issues.apache.org/jira/browse/SPARK-10621) | Audit function names in FunctionRegistry and corresponding method names shown in functions.scala and functions.py |  Critical | SQL | Yin Huai | Reynold Xin |
| [SPARK-11970](https://issues.apache.org/jira/browse/SPARK-11970) | Add missing APIs in Dataset |  Major | SQL | Reynold Xin | Xiao Li |
| [SPARK-11981](https://issues.apache.org/jira/browse/SPARK-11981) | Move implementations of methods back to DataFrame from Queryable |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11980](https://issues.apache.org/jira/browse/SPARK-11980) | Fix json\_tuple and add unit tests for the Python functions added in SPARK-10621 |  Major | SQL | Reynold Xin | Xiao Li |
| [SPARK-9319](https://issues.apache.org/jira/browse/SPARK-9319) | Add support for setting column names, types |  Major | SparkR | Shivaram Venkataraman | Felix Cheung |
| [SPARK-12024](https://issues.apache.org/jira/browse/SPARK-12024) | Improved multi-column counting |  Minor | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-11975](https://issues.apache.org/jira/browse/SPARK-11975) | Remove duplicate mllib example (DT/RF/GBT in Java/Python) |  Minor | Examples, MLlib | Yanbo Liang | Yanbo Liang |
| [SPARK-11856](https://issues.apache.org/jira/browse/SPARK-11856) | add type cast if the real type is different but compatible with encoder schema |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11954](https://issues.apache.org/jira/browse/SPARK-11954) | Encoder for JavaBeans / POJOs |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11905](https://issues.apache.org/jira/browse/SPARK-11905) | [SQL] Support Persist/Cache and Unpersist in Dataset APIs |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-11604](https://issues.apache.org/jira/browse/SPARK-11604) | ML 1.6 QA: API: Python API coverage |  Major | Documentation, ML, MLlib, PySpark | Joseph K. Bradley | Yanbo Liang |
| [SPARK-12075](https://issues.apache.org/jira/browse/SPARK-12075) | Speed up HiveComparisionTest suites by speeding up / avoiding reset() |  Major | SQL, Tests | Josh Rosen | Josh Rosen |
| [SPARK-10266](https://issues.apache.org/jira/browse/SPARK-10266) | Add @Since annotation to ml.tuning |  Minor | Documentation, ML | Xiangrui Meng | Yu Ishikawa |
| [SPARK-9972](https://issues.apache.org/jira/browse/SPARK-9972) | Add \`struct\`, \`encode\` and \`decode\` function in SparkR |  Major | SparkR | Yu Ishikawa | Sun Rui |
| [SPARK-11551](https://issues.apache.org/jira/browse/SPARK-11551) | Replace example code in ml-features.md using include\_example |  Major | Documentation | Xusen Yin | somil deshmukh |
| [SPARK-10259](https://issues.apache.org/jira/browse/SPARK-10259) | Add @Since annotation to ml.classification |  Minor | Documentation, ML | Xiangrui Meng | Hiroshi Takahashi |
| [SPARK-11605](https://issues.apache.org/jira/browse/SPARK-11605) | ML 1.6 QA: API: Java compatibility, docs |  Major | Documentation, Java API, ML, MLlib | Joseph K. Bradley | yuhao yang |
| [SPARK-9670](https://issues.apache.org/jira/browse/SPARK-9670) | Examples: Check for new APIs requiring example code |  Minor | ML, MLlib | Joseph K. Bradley | Timothy Hunter |
| [SPARK-12198](https://issues.apache.org/jira/browse/SPARK-12198) | SparkR support read.parquet and deprecate parquetFile |  Major | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-11602](https://issues.apache.org/jira/browse/SPARK-11602) | ML 1.6 QA: API: New Scala APIs, docs |  Major | Documentation, ML, MLlib | Joseph K. Bradley | yuhao yang |
| [SPARK-12212](https://issues.apache.org/jira/browse/SPARK-12212) | Clarify the distinction between spark.mllib and spark.ml |  Major | Documentation | Timothy Hunter | Timothy Hunter |
| [SPARK-12146](https://issues.apache.org/jira/browse/SPARK-12146) | SparkR jsonFile should support multiple input files |  Major | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-11964](https://issues.apache.org/jira/browse/SPARK-11964) | Create user guide section explaining export/import |  Major | Documentation, ML | Joseph K. Bradley | Bill Chambers |
| [SPARK-11606](https://issues.apache.org/jira/browse/SPARK-11606) | ML 1.6 QA: Update user guide for new APIs |  Major | Documentation, ML, MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-11978](https://issues.apache.org/jira/browse/SPARK-11978) | Move dataset\_example.py to examples/ml and rename to dataframe\_example.py |  Minor | ML, MLlib, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-12199](https://issues.apache.org/jira/browse/SPARK-12199) | Follow-up: Refine example code in ml-features.md |  Major | Documentation | Xusen Yin | Xusen Yin |
| [SPARK-12310](https://issues.apache.org/jira/browse/SPARK-12310) | Add write.json and write.parquet for SparkR |  Major | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-12215](https://issues.apache.org/jira/browse/SPARK-12215) | User guide section for KMeans in spark.ml |  Major | Documentation, ML | Joseph K. Bradley | Yu Ishikawa |
| [SPARK-6518](https://issues.apache.org/jira/browse/SPARK-6518) | Add example code and user guide for bisecting k-means |  Major | Documentation, MLlib | Yu Ishikawa | Yu Ishikawa |
| [SPARK-11608](https://issues.apache.org/jira/browse/SPARK-11608) | ML 1.6 QA: Programming guide update and migration guide |  Major | Documentation, ML, MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-10043](https://issues.apache.org/jira/browse/SPARK-10043) | Add window functions into SparkR |  Major | SparkR | Yu Ishikawa | Sun Rui |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10402](https://issues.apache.org/jira/browse/SPARK-10402) | Add scaladoc for default values of params in ML |  Minor | Documentation, ML | holdenk | holdenk |
| [SPARK-10094](https://issues.apache.org/jira/browse/SPARK-10094) | Mark ML PySpark feature transformers as Experimental to match Scala |  Major | Documentation, ML, PySpark | Joseph K. Bradley | Noel Smith |
| [SPARK-10469](https://issues.apache.org/jira/browse/SPARK-10469) | Document tungsten-sort |  Minor | Documentation | holdenk | holdenk |
| [SPARK-9014](https://issues.apache.org/jira/browse/SPARK-9014) | Allow Python spark API to use built-in exponential operator |  Minor | PySpark | Jon Speiser | Alexey Grishchenko |
| [SPARK-10595](https://issues.apache.org/jira/browse/SPARK-10595) | Various ML programming guide cleanups post 1.5 |  Minor | Documentation, ML, MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-10077](https://issues.apache.org/jira/browse/SPARK-10077) | Java package doc for spark.ml.feature |  Minor | Documentation, ML | Xiangrui Meng | holdenk |
| [SPARK-10660](https://issues.apache.org/jira/browse/SPARK-10660) | Doc describe error in the "Running Spark on YARN" page |  Trivial | Documentation | wyp | wyp |
| [SPARK-5905](https://issues.apache.org/jira/browse/SPARK-5905) | Note requirements for certain RowMatrix methods in docs |  Trivial | Documentation, MLlib | Xiangrui Meng | Sean Owen |
| [SPARK-10631](https://issues.apache.org/jira/browse/SPARK-10631) | Add missing API doc in pyspark.mllib.linalg.Vector |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Vinod KC |
| [SPARK-10663](https://issues.apache.org/jira/browse/SPARK-10663) | Change test.toDF to test in Spark ML Programming Guide |  Trivial | Documentation | Matt Hagen | Matt Hagen |
| [SPARK-10760](https://issues.apache.org/jira/browse/SPARK-10760) | SparkR glm: the documentation in examples - family argument is missing |  Minor | SparkR | Narine Kokhlikyan | Narine Kokhlikyan |
| [SPARK-10670](https://issues.apache.org/jira/browse/SPARK-10670) | Link to each language\'s API in codetabs in ML docs: spark.ml |  Major | Documentation, MLlib | Joseph K. Bradley | yuhao yang |
| [SPARK-10782](https://issues.apache.org/jira/browse/SPARK-10782) | Duplicate examples for drop\_duplicates and DropDuplicates |  Trivial | Documentation | Asoka Diggs | Asoka Diggs |
| [SPARK-9798](https://issues.apache.org/jira/browse/SPARK-9798) | CrossValidatorModel Documentation Improvements |  Minor | ML | Feynman Liang | rerngvit yanggratoke |
| [SPARK-10669](https://issues.apache.org/jira/browse/SPARK-10669) | Link to each language\'s API in codetabs in ML docs: spark.mllib |  Major | Documentation, MLlib | Joseph K. Bradley | Xin Ren |
| [SPARK-11039](https://issues.apache.org/jira/browse/SPARK-11039) | Document all UI "retained\*" configurations |  Trivial | Documentation, Web UI | Nick Pritchard | Nick Pritchard |
| [SPARK-11092](https://issues.apache.org/jira/browse/SPARK-11092) | Add source URLs to API documentation. |  Trivial | Build, Documentation | Jakob Odersky | Jakob Odersky |
| [SPARK-8829](https://issues.apache.org/jira/browse/SPARK-8829) | Improve expression performance |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-11476](https://issues.apache.org/jira/browse/SPARK-11476) | Incorrect function referred to in MLib Random data generation documentation |  Minor | Documentation | Jason Blochowiak | Sean Owen |
| [SPARK-10689](https://issues.apache.org/jira/browse/SPARK-10689) | User guide and example code for AFTSurvivalRegression |  Major | Documentation | Xiangrui Meng | Yanbo Liang |
| [SPARK-11360](https://issues.apache.org/jira/browse/SPARK-11360) | Loss of nullability when writing parquet files |  Minor | Documentation | Xiao Li | Xiao Li |
| [SPARK-11335](https://issues.apache.org/jira/browse/SPARK-11335) | Update documentation on accessing Kafka offsets from Python |  Minor | DStreams | Nick Evans | Nick Evans |
| [SPARK-10384](https://issues.apache.org/jira/browse/SPARK-10384) | Univariate statistics as UDAFs |  Major | ML, SQL | Xiangrui Meng | Xiangrui Meng |
| [SPARK-9647](https://issues.apache.org/jira/browse/SPARK-9647) | MLlib + SparkR integration for 1.6 |  Critical | ML, SparkR | Xiangrui Meng | Xiangrui Meng |
| [SPARK-11751](https://issues.apache.org/jira/browse/SPARK-11751) | Doc describe error in the "Spark Streaming Programming Guide" page |  Trivial | Documentation | wyp | wyp |
| [SPARK-11779](https://issues.apache.org/jira/browse/SPARK-11779) | Fix reference of deprecated MESOS\_NATIVE\_LIBRARY environment variable |  Trivial | Documentation | Philipp Hoffmann | Philipp Hoffmann |
| [SPARK-11684](https://issues.apache.org/jira/browse/SPARK-11684) | Update user guide to show new features in SparkR:::glm and SparkR:::summary |  Major | ML, SparkR | Xiangrui Meng | Yanbo Liang |
| [SPARK-10000](https://issues.apache.org/jira/browse/SPARK-10000) | Consolidate storage and execution memory management |  Major | Block Manager, Spark Core | Reynold Xin | Andrew Or |
| [SPARK-7463](https://issues.apache.org/jira/browse/SPARK-7463) | DAG visualization improvements |  Major | Web UI | Andrew Or | Andrew Or |
| [SPARK-11339](https://issues.apache.org/jira/browse/SPARK-11339) | Fix and document the list of functions in R base package that are masked by functions with same name in SparkR |  Major | SparkR | Sun Rui | Felix Cheung |
| [SPARK-11689](https://issues.apache.org/jira/browse/SPARK-11689) | Add user guide and example code for LDA under spark.ml |  Major | Documentation, ML | Xiangrui Meng | yuhao yang |
| [SPARK-11521](https://issues.apache.org/jira/browse/SPARK-11521) | LinearRegressionSummary needs to clarify which metrics are weighted in the documentation |  Critical | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-11860](https://issues.apache.org/jira/browse/SPARK-11860) | Invalid argument specification for registerFunction [Python] |  Trivial | Documentation, PySpark | Tristan | Jeff Zhang |
| [SPARK-11960](https://issues.apache.org/jira/browse/SPARK-11960) | User guide section for streaming a/b testing |  Major | Documentation, MLlib | Joseph K. Bradley | Feynman Liang |
| [SPARK-12046](https://issues.apache.org/jira/browse/SPARK-12046) | Visibility and format issues in ScalaDoc/JavaDoc for branch-1.6 |  Major | Documentation | Cheng Lian | Cheng Lian |
| [SPARK-11961](https://issues.apache.org/jira/browse/SPARK-11961) | User guide section for ChiSqSelector transformer |  Major | Documentation, ML | Joseph K. Bradley | Xusen Yin |
| [SPARK-12093](https://issues.apache.org/jira/browse/SPARK-12093) | Fix the error of comment in DDLParser |  Trivial | Documentation | Yadong Qi | Yadong Qi |
| [SPARK-11963](https://issues.apache.org/jira/browse/SPARK-11963) | User guide section for QuantileDiscretizer transformer |  Major | Documentation, ML | Joseph K. Bradley | Xusen Yin |
| [SPARK-12184](https://issues.apache.org/jira/browse/SPARK-12184) | Make python api doc for pivot consistant with scala doc |  Trivial | PySpark | Andrew Ray | Andrew Ray |
| [SPARK-11958](https://issues.apache.org/jira/browse/SPARK-11958) | Create user guide section for SQLTransformer |  Major | Documentation, ML | Joseph K. Bradley | Yanbo Liang |
| [SPARK-11957](https://issues.apache.org/jira/browse/SPARK-11957) | SQLTransformer docs are unclear about generality of SQL statements |  Minor | Documentation, ML | Joseph K. Bradley | Yanbo Liang |
| [SPARK-12159](https://issues.apache.org/jira/browse/SPARK-12159) | Add user guide section for IndexToString transformer |  Minor | ML | Joseph K. Bradley | Benjamin Fradet |
| [SPARK-12211](https://issues.apache.org/jira/browse/SPARK-12211) | Incorrect version number in graphx doc for migration from 1.1 |  Minor | Documentation, GraphX | Andrew Ray | Andrew Ray |
| [SPARK-12217](https://issues.apache.org/jira/browse/SPARK-12217) | Document invalid handling for StringIndexer |  Minor | ML | Benjamin Fradet | Benjamin Fradet |
| [SPARK-11985](https://issues.apache.org/jira/browse/SPARK-11985) | Update Spark Streaming - Kinesis Library Documentation regarding data de-aggregation and message handler |  Major | Documentation, DStreams | Burak Yavuz | Burak Yavuz |
| [SPARK-12487](https://issues.apache.org/jira/browse/SPARK-12487) | Add docs for Kafka message handler |  Major | Documentation | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12429](https://issues.apache.org/jira/browse/SPARK-12429) | Update documentation to show how to use accumulators and broadcasts with Spark Streaming |  Major | Documentation, DStreams | Shixiong Zhu | Shixiong Zhu |
| [SPARK-2629](https://issues.apache.org/jira/browse/SPARK-2629) | Improved state management for Spark Streaming (mapWithState) |  Major | DStreams | Tathagata Das | Tathagata Das |
| [SPARK-9748](https://issues.apache.org/jira/browse/SPARK-9748) | Centriod typo in KMeansModel |  Trivial | MLlib | Bertrand Dechoux | Bertrand Dechoux |
| [SPARK-9810](https://issues.apache.org/jira/browse/SPARK-9810) | Remove individual commit messages from the squash commit message |  Major | Build | Reynold Xin | Reynold Xin |
| [SPARK-10398](https://issues.apache.org/jira/browse/SPARK-10398) | Migrate Spark download page to use new lua mirroring scripts |  Minor | Project Infra | Luciano Resende | Luciano Resende |
| [SPARK-9767](https://issues.apache.org/jira/browse/SPARK-9767) | Remove ConnectionManager |  Major | Shuffle, Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-10222](https://issues.apache.org/jira/browse/SPARK-10222) | More thoroughly deprecate Bagel in favor of GraphX |  Trivial | GraphX | Sean Owen | Sean Owen |
| [SPARK-10938](https://issues.apache.org/jira/browse/SPARK-10938) | Remove typeId in columnar cache |  Major | . | Davies Liu | Davies Liu |
| [SPARK-11006](https://issues.apache.org/jira/browse/SPARK-11006) | Rename NullColumnAccess as NullColumnAccessor |  Trivial | SQL | Ted Yu | Ted Yu |
| [SPARK-11172](https://issues.apache.org/jira/browse/SPARK-11172) | Close JsonParser/Generator in test |  Trivial | . | Ted Yu | Ted Yu |
| [SPARK-11037](https://issues.apache.org/jira/browse/SPARK-11037) | Cleanup Option usage in JdbcUtils |  Trivial | SQL | Rick Hillegas | Pravin Gadakh |
| [SPARK-11493](https://issues.apache.org/jira/browse/SPARK-11493) | Remove Bitset in BytesToBytesMap |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-11567](https://issues.apache.org/jira/browse/SPARK-11567) | Add Python API for corr aggregate function |  Minor | PySpark | Felix Cheung | Felix Cheung |
| [SPARK-11263](https://issues.apache.org/jira/browse/SPARK-11263) | lintr Throws Warnings on Commented Code in Documentation |  Minor | SparkR | Sen Fang | Felix Cheung |
| [SPARK-11787](https://issues.apache.org/jira/browse/SPARK-11787) | Speed up parquet reader for flat schemas |  Major | SQL | Nong Li | Nong Li |
| [SPARK-10232](https://issues.apache.org/jira/browse/SPARK-10232) | Decide whether spark.ml Decision Tree and Random Forest can replace spark.mllib implementation |  Major | ML, MLlib | Joseph K. Bradley | Joseph K. Bradley |


