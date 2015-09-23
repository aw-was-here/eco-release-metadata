
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

## Release 1.6.0 - Unreleased (as of 2015-09-23)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10674](https://issues.apache.org/jira/browse/SPARK-10674) | Flaky test: network.sasl.SaslIntegrationSuite.testNoSaslClient |  Critical | Spark Core | Xiangrui Meng | Marcelo Vanzin |
| [SPARK-10630](https://issues.apache.org/jira/browse/SPARK-10630) | createDataFrame from a Java List\<Row\> |  Minor | SQL | Xiangrui Meng | holdenk |
| [SPARK-10516](https://issues.apache.org/jira/browse/SPARK-10516) | Add values as a property to DenseVector in PySpark |  Trivial | MLlib, PySpark | Xiangrui Meng | Vinod KC |
| [SPARK-10194](https://issues.apache.org/jira/browse/SPARK-10194) | SGD algorithms need convergenceTol parameter in Python |  Major | MLlib, PySpark | Joseph K. Bradley | Yanbo Liang |
| [SPARK-10117](https://issues.apache.org/jira/browse/SPARK-10117) | Implement SQL data source API for reading LIBSVM data |  Major | ML | Xiangrui Meng | Kai Sasaki |
| [SPARK-9964](https://issues.apache.org/jira/browse/SPARK-9964) | PySpark DataFrameReader accept RDD of String for JSON |  Minor | PySpark, SQL | Joseph K. Bradley | Yanbo Liang |
| [SPARK-9834](https://issues.apache.org/jira/browse/SPARK-9834) | Normal equation solver for ordinary least squares |  Major | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-9769](https://issues.apache.org/jira/browse/SPARK-9769) | Add Python API for ml.feature.CountVectorizer |  Major | ML, PySpark | Yanbo Liang | holdenk |
| [SPARK-9730](https://issues.apache.org/jira/browse/SPARK-9730) | Sort Merge Join for Full Outer Join |  Major | SQL | Josh Rosen | Davies Liu |
| [SPARK-9698](https://issues.apache.org/jira/browse/SPARK-9698) | Add feature interaction as a transformer |  Major | ML | Xiangrui Meng | Eric Liang |
| [SPARK-9679](https://issues.apache.org/jira/browse/SPARK-9679) | Add python interface for ml.feature.StopWordsRemover |  Minor | ML | yuhao yang | holdenk |
| [SPARK-9669](https://issues.apache.org/jira/browse/SPARK-9669) | Support PySpark with Mesos Cluster mode |  Major | Mesos, PySpark | Timothy Chen | Timothy Chen |
| [SPARK-9654](https://issues.apache.org/jira/browse/SPARK-9654) | Add IndexToString in Pyspark |  Minor | ML, PySpark | holdenk | holdenk |
| [SPARK-9642](https://issues.apache.org/jira/browse/SPARK-9642) | LinearRegression should supported weighted data |  Major | ML | Meihua Wu | Meihua Wu |
| [SPARK-8518](https://issues.apache.org/jira/browse/SPARK-8518) | Log-linear models for survival analysis |  Critical | ML | Xiangrui Meng | Yanbo Liang |
| [SPARK-8472](https://issues.apache.org/jira/browse/SPARK-8472) | Python API for DCT |  Minor | ML | Feynman Liang | Yanbo Liang |
| [SPARK-7685](https://issues.apache.org/jira/browse/SPARK-7685) | Handle high imbalanced data and apply weights to different samples in Logistic Regression |  Critical | ML | DB Tsai | DB Tsai |
| [SPARK-3147](https://issues.apache.org/jira/browse/SPARK-3147) | Implement streaming testing |  Major | MLlib, Streaming | Xiangrui Meng | Feynman Liang |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10715](https://issues.apache.org/jira/browse/SPARK-10715) | Duplicate initialzation flag in WeightedLeastSquare |  Trivial | ML | Kai Sasaki | Kai Sasaki |
| [SPARK-10714](https://issues.apache.org/jira/browse/SPARK-10714) | Refactor PythonRDD to decouple iterator computation from PythonRDD |  Major | PySpark, Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-10706](https://issues.apache.org/jira/browse/SPARK-10706) | Add java wrapper for random vector rdd |  Minor | Java API, MLlib | holdenk | Meihua Wu |
| [SPARK-10684](https://issues.apache.org/jira/browse/SPARK-10684) | StructType.interpretedOrdering need not to be serialized |  Minor | SQL | Navis | Navis |
| [SPARK-10676](https://issues.apache.org/jira/browse/SPARK-10676) | Update documentation with instructions to enable block manager wire encryption |  Major | Documentation | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-10657](https://issues.apache.org/jira/browse/SPARK-10657) | Remove legacy SCP-based Jenkins log archiving code |  Major | Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-10626](https://issues.apache.org/jira/browse/SPARK-10626) | Create a Java friendly method for randomRDD & RandomDataGenerator on RandomRDDs. |  Minor | MLlib | holdenk | holdenk |
| [SPARK-10615](https://issues.apache.org/jira/browse/SPARK-10615) |  changes assertEquals to assertEqual for existing unit tests |  Minor | PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-10577](https://issues.apache.org/jira/browse/SPARK-10577) | [PySpark] DataFrame hint for broadcast join |  Major | PySpark, SQL | Maciej Bryński | Jian Feng Zhang |
| [SPARK-10576](https://issues.apache.org/jira/browse/SPARK-10576) | Move .java files out of src/main/scala |  Minor | Build | Sean Owen | Sean Owen |
| [SPARK-10575](https://issues.apache.org/jira/browse/SPARK-10575) | Wrap RDD.takeSample with scope |  Minor | Spark Core | Vinod KC | Vinod KC |
| [SPARK-10547](https://issues.apache.org/jira/browse/SPARK-10547) | Streamline / improve style of Java API tests |  Minor | Java API, Tests | Sean Owen | Sean Owen |
| [SPARK-10546](https://issues.apache.org/jira/browse/SPARK-10546) | Check partitionId's range in ExternalSorter#spill() |  Trivial | Spark Core | Ted Yu | Ted Yu |
| [SPARK-10537](https://issues.apache.org/jira/browse/SPARK-10537) | Document LIBSVM data source options in public doc and minor improvements |  Major | Documentation, ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-10531](https://issues.apache.org/jira/browse/SPARK-10531) | AppId is set as AppName in status rest api |  Minor | Spark Core | Jeff Zhang | Jeff Zhang |
| [SPARK-10518](https://issues.apache.org/jira/browse/SPARK-10518) | Update code examples in spark.ml user guide to use LIBSVM data source instead of MLUtils |  Minor | Documentation, MLlib | Xiangrui Meng | shimizu yoshihiro |
| [SPARK-10491](https://issues.apache.org/jira/browse/SPARK-10491) | move RowMatrix.dspr to BLAS |  Major | MLlib | Xiangrui Meng | yuhao yang |
| [SPARK-10481](https://issues.apache.org/jira/browse/SPARK-10481) | SPARK\_PREPEND\_CLASSES make spark-yarn related jar could not be found |  Minor | YARN | Jeff Zhang | Jeff Zhang |
| [SPARK-10475](https://issues.apache.org/jira/browse/SPARK-10475) | improve column prunning for Project on Sort |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10468](https://issues.apache.org/jira/browse/SPARK-10468) | Verify schema before Dataframe select API call |  Minor | MLlib | Vinod KC | Vinod KC |
| [SPARK-10464](https://issues.apache.org/jira/browse/SPARK-10464) | Add WeibullGenerator for RandomDataGenerator |  Major | MLlib | Yanbo Liang | Yanbo Liang |
| [SPARK-10461](https://issues.apache.org/jira/browse/SPARK-10461) | make sure `input.primitive` is always variable name not code at GenerateUnsafeProjection |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10459](https://issues.apache.org/jira/browse/SPARK-10459) | PythonUDF could process UnsafeRow |  Major | SQL | Davies Liu | Liang-Chi Hsieh |
| [SPARK-10458](https://issues.apache.org/jira/browse/SPARK-10458) | Would like to know if a given Spark Context is stopped or currently stopping |  Minor | Spark Core | Matt Cheah | Madhusudanan Kandasamy |
| [SPARK-10451](https://issues.apache.org/jira/browse/SPARK-10451) | Prevent unnecessary serializations in InMemoryColumnarTableScan |  Minor | SQL | Yash Datta | Yash Datta |
| [SPARK-10450](https://issues.apache.org/jira/browse/SPARK-10450) | Minor SQL style, format, typo, readability fixes |  Minor | SQL | Andrew Or | Andrew Or |
| [SPARK-10446](https://issues.apache.org/jira/browse/SPARK-10446) | Support to specify join type when calling join with usingColumns |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-10443](https://issues.apache.org/jira/browse/SPARK-10443) | Refactor SortMergeOuterJoin to reduce duplication |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-10419](https://issues.apache.org/jira/browse/SPARK-10419) | Add JDBC dialect for Microsoft SQL Server |  Minor | SQL | Ewan Leith | Ewan Leith |
| [SPARK-10411](https://issues.apache.org/jira/browse/SPARK-10411) | In SQL tab move visualization above explain output |  Minor | SQL, Web UI | Andrew Or | Shixiong Zhu |
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
| [SPARK-10071](https://issues.apache.org/jira/browse/SPARK-10071) | QueueInputDStream Should Allow Checkpointing |  Major | Streaming | Asim Jalis | Shixiong Zhu |
| [SPARK-10065](https://issues.apache.org/jira/browse/SPARK-10065) | Avoid triple copy of var-length objects in Array in tungsten projection |  Major | SQL | Davies Liu | Wenchen Fan |
| [SPARK-10056](https://issues.apache.org/jira/browse/SPARK-10056) | PySpark Row - Support for row["columnName"] syntax |  Minor | PySpark | Maciej Bryński | Yanbo Liang |
| [SPARK-10040](https://issues.apache.org/jira/browse/SPARK-10040) | JDBC writer change to use batch insert for performance |  Major | SQL | Rama Mullapudi | Liang-Chi Hsieh |
| [SPARK-10035](https://issues.apache.org/jira/browse/SPARK-10035) | Parquet filters does not process EqualNullSafe filter. |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-9962](https://issues.apache.org/jira/browse/SPARK-9962) | Decision Tree training: prevNodeIdsForInstances.unpersist() at end of training |  Minor | ML | Joseph K. Bradley | holdenk |
| [SPARK-9935](https://issues.apache.org/jira/browse/SPARK-9935) | EqualNullSafe not processed in OrcRelation |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-9929](https://issues.apache.org/jira/browse/SPARK-9929) | support adding metadata in withColumn |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-9923](https://issues.apache.org/jira/browse/SPARK-9923) | ShuffleMapStage.numAvailableOutputs should be an Int instead of Long |  Trivial | Spark Core | Matei Zaharia | Neelesh Srinivas Salian |
| [SPARK-9833](https://issues.apache.org/jira/browse/SPARK-9833) | Add options to explicitly disable delegation token retrieval for non-HDFS |  Minor | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-9821](https://issues.apache.org/jira/browse/SPARK-9821) | pyspark reduceByKey should allow a custom partitioner |  Minor | PySpark | Diana Carroll | holdenk |
| [SPARK-9782](https://issues.apache.org/jira/browse/SPARK-9782) | Add support for YARN application tags running Spark on YARN |  Major | YARN | Dennis Huo | Dennis Huo |
| [SPARK-9773](https://issues.apache.org/jira/browse/SPARK-9773) | Add Python API for MultilayerPerceptronClassifier |  Major | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-9772](https://issues.apache.org/jira/browse/SPARK-9772) | Add Python API for ml.feature.VectorSlicer |  Minor | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-9737](https://issues.apache.org/jira/browse/SPARK-9737) | Add the suggested configuration when required executor memory is above the max threshold of this cluster on YARN mode |  Trivial | YARN | Yadong Qi | Yadong Qi |
| [SPARK-9723](https://issues.apache.org/jira/browse/SPARK-9723) | Params.getOrDefault should throw more meaningful exception |  Minor | ML | Joseph K. Bradley | holdenk |
| [SPARK-9720](https://issues.apache.org/jira/browse/SPARK-9720) | spark.ml Identifiable types should have UID in toString methods |  Minor | ML | Joseph K. Bradley | Bertrand Dechoux |
| [SPARK-9613](https://issues.apache.org/jira/browse/SPARK-9613) | Ban use of JavaConversions and migrate all existing uses to JavaConverters |  Major | Spark Core | Josh Rosen | Sean Owen |
| [SPARK-9547](https://issues.apache.org/jira/browse/SPARK-9547) | Allow testing pull requests with different Hadoop versions |  Major | Build | Patrick Wendell | Patrick Wendell |
| [SPARK-9545](https://issues.apache.org/jira/browse/SPARK-9545) | Run Maven tests in pull request builder if title has "[test-maven]" in it |  Major | Build | Patrick Wendell | Patrick Wendell |
| [SPARK-9522](https://issues.apache.org/jira/browse/SPARK-9522) | SparkSubmit process can not exit if kill application when HiveThriftServer was starting |  Minor | SQL | Weizhong | Weizhong |
| [SPARK-9043](https://issues.apache.org/jira/browse/SPARK-9043) | Serialize key, value and combiner classes in ShuffleDependency |  Major | Shuffle | Matt Massie | Matt Massie |
| [SPARK-8764](https://issues.apache.org/jira/browse/SPARK-8764) | StringIndexer should take option to handle unseen values |  Minor | ML | Joseph K. Bradley | holdenk |
| [SPARK-8530](https://issues.apache.org/jira/browse/SPARK-8530) | Add Python API for MinMaxScaler |  Minor | ML, PySpark | yuhao yang | yuhao yang |
| [SPARK-7142](https://issues.apache.org/jira/browse/SPARK-7142) | Minor enhancement to BooleanSimplification Optimizer rule |  Minor | SQL | Yash Datta | Yash Datta |
| [SPARK-6981](https://issues.apache.org/jira/browse/SPARK-6981) | [SQL] SparkPlanner and QueryExecution should be factored out from SQLContext |  Minor | SQL | Edoardo Vacchi | Edoardo Vacchi |
| [SPARK-6350](https://issues.apache.org/jira/browse/SPARK-6350) | Make mesosExecutorCores configurable in mesos "fine-grained" mode |  Minor | Mesos | Jongyoul Lee | Jongyoul Lee |
| [SPARK-4223](https://issues.apache.org/jira/browse/SPARK-4223) | Support \* (meaning all users) as part of the acls |  Major | Spark Core | Thomas Graves | Zhuo Liu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10750](https://issues.apache.org/jira/browse/SPARK-10750) | ML Param validate should print better error information |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-10740](https://issues.apache.org/jira/browse/SPARK-10740) | handle nondeterministic expressions correctly for set operations |  Blocker | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10737](https://issues.apache.org/jira/browse/SPARK-10737) | When using UnsafeRows, SortMergeJoin may return wrong results |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-10718](https://issues.apache.org/jira/browse/SPARK-10718) | Update License on conf files and corresponding excludes file |  Minor | Build | Rekha Joshi | Rekha Joshi |
| [SPARK-10716](https://issues.apache.org/jira/browse/SPARK-10716) | spark-1.5.0-bin-hadoop2.6.tgz file doesn't uncompress on OS X due to hidden file |  Minor | Build, Deploy | Jack Jack | Sean Owen |
| [SPARK-10711](https://issues.apache.org/jira/browse/SPARK-10711) | Do not assume spark.submit.deployMode is always set |  Critical | R | Hossein Falaki | Hossein Falaki |
| [SPARK-10695](https://issues.apache.org/jira/browse/SPARK-10695) | spark.mesos.constraints documentation uses "=" to separate value instead ":" as parser and mesos expects. |  Critical | Documentation, Mesos | Akash Mishra | Akash Mishra |
| [SPARK-10685](https://issues.apache.org/jira/browse/SPARK-10685) | Misaligned data with RDD.zip and DataFrame.withColumn after repartition |  Blocker | PySpark, SQL | Dan Brown | Reynold Xin |
| [SPARK-10672](https://issues.apache.org/jira/browse/SPARK-10672) | We should not fail to create a table If we cannot persist metadata of a data source table to metastore in a Hive compatible way |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-10662](https://issues.apache.org/jira/browse/SPARK-10662) | Code snippets are not properly formatted in tables |  Trivial | Documentation | Jacek Laskowski | Jacek Laskowski |
| [SPARK-10651](https://issues.apache.org/jira/browse/SPARK-10651) | Flaky test: BroadcastSuite |  Blocker | Spark Core, Tests | Xiangrui Meng | Shixiong Zhu |
| [SPARK-10650](https://issues.apache.org/jira/browse/SPARK-10650) | Spark docs include test and other extra classes |  Critical | Documentation | Patrick Wendell | Michael Armbrust |
| [SPARK-10649](https://issues.apache.org/jira/browse/SPARK-10649) | Streaming jobs unexpectedly inherits job group, job descriptions from context starting thread |  Major | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-10642](https://issues.apache.org/jira/browse/SPARK-10642) | Crash in rdd.lookup() with "java.lang.Long cannot be cast to java.lang.Integer" |  Major | PySpark | Thouis Jones | Liang-Chi Hsieh |
| [SPARK-10640](https://issues.apache.org/jira/browse/SPARK-10640) | Spark history server fails to parse taskEndReasonFromJson TaskCommitDenied |  Blocker | Spark Core | Thomas Graves | Andrew Or |
| [SPARK-10639](https://issues.apache.org/jira/browse/SPARK-10639) | Need to convert UDAF's result from scala to sql type |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-10624](https://issues.apache.org/jira/browse/SPARK-10624) | TakeOrderedAndProjectNode output is not ordered |  Major | SQL | Andrew Or | Andrew Or |
| [SPARK-10623](https://issues.apache.org/jira/browse/SPARK-10623) | NoSuchElementException thrown when ORC predicate push-down is turned on |  Blocker | SQL | Ram Sriharsha | Zhan Zhang |
| [SPARK-10613](https://issues.apache.org/jira/browse/SPARK-10613) | Reduce LocalNode tests dependency on SQLContext |  Major | SQL, Tests | Andrew Or | Andrew Or |
| [SPARK-10611](https://issues.apache.org/jira/browse/SPARK-10611) | Configuration object thread safety issue in NewHadoopRDD |  Critical | Spark Core | Mingyu Kim | Mingyu Kim |
| [SPARK-10598](https://issues.apache.org/jira/browse/SPARK-10598) | RoutingTablePartition toMessage method refers to bytes instead of bits |  Trivial | Documentation | Robin East | Robin East |
| [SPARK-10594](https://issues.apache.org/jira/browse/SPARK-10594) | ApplicationMaster "--help" references the removed "--num-executors" option |  Trivial | YARN | Erick Tryzelaar | Erick Tryzelaar |
| [SPARK-10593](https://issues.apache.org/jira/browse/SPARK-10593) | sql lateral view same name gives wrong value |  Blocker | SQL | Davies Liu | Davies Liu |
| [SPARK-10589](https://issues.apache.org/jira/browse/SPARK-10589) | Add defense against external site framing |  Minor | Web UI | Sean Owen | Sean Owen |
| [SPARK-10584](https://issues.apache.org/jira/browse/SPARK-10584) | Documentation about the compatible Hive version is wrong. |  Minor | Documentation, SQL | Kousuke Saruta | Kousuke Saruta |
| [SPARK-10573](https://issues.apache.org/jira/browse/SPARK-10573) | IndexToString transformSchema adds output field as DoubleType |  Major | ML | Nick Pritchard | Nick Pritchard |
| [SPARK-10566](https://issues.apache.org/jira/browse/SPARK-10566) | SnappyCompressionCodec init exception handling masks important error information |  Minor | Input/Output | Daniel Imfeld | Daniel Imfeld |
| [SPARK-10564](https://issues.apache.org/jira/browse/SPARK-10564) | ThreadingSuite: assertions in threads don't fail the test |  Critical | Tests | Andrew Or | Andrew Or |
| [SPARK-10563](https://issues.apache.org/jira/browse/SPARK-10563) | SparkContext's local properties should be cloned when inherited |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-10556](https://issues.apache.org/jira/browse/SPARK-10556) | SBT build explicitly sets Scala version, which can conflict with SBT's own scala version |  Minor | Build | Ahir Reddy | Ahir Reddy |
| [SPARK-10554](https://issues.apache.org/jira/browse/SPARK-10554) | Potential NPE with ShutdownHook |  Minor | Block Manager | Nithin Asokan | Nithin Asokan |
| [SPARK-10549](https://issues.apache.org/jira/browse/SPARK-10549) | scala 2.11 spark on yarn with security - Repl doesn't work |  Major | Spark Shell | Thomas Graves | Thomas Graves |
| [SPARK-10548](https://issues.apache.org/jira/browse/SPARK-10548) | Concurrent execution in SQL does not work |  Blocker | SQL | Andrew Or | Andrew Or |
| [SPARK-10543](https://issues.apache.org/jira/browse/SPARK-10543) | Peak Execution Memory Quantile should be Per-task Basis |  Minor | Spark Core | Sen Fang | Sen Fang |
| [SPARK-10542](https://issues.apache.org/jira/browse/SPARK-10542) | The  PySpark 1.5 closure serializer can't serialize a namedtuple instance. |  Critical | PySpark | Davies Liu | Davies Liu |
| [SPARK-10540](https://issues.apache.org/jira/browse/SPARK-10540) | HadoopFsRelationTest's "test all data types" is flaky |  Major | SQL | Yin Huai | Cheng Lian |
| [SPARK-10539](https://issues.apache.org/jira/browse/SPARK-10539) | Intersection Optimization is Wrong |  Blocker | SQL | Michael Armbrust | Yijie Shen |
| [SPARK-10522](https://issues.apache.org/jira/browse/SPARK-10522) | Nanoseconds part of Timestamp should be positive in parquet |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-10514](https://issues.apache.org/jira/browse/SPARK-10514) | Minimum ratio of registered resources [ spark.scheduler.minRegisteredResourcesRatio] is not enabled for Mesos Coarse Grained mode |  Major | Mesos | Akash Mishra | Akash Mishra |
| [SPARK-10511](https://issues.apache.org/jira/browse/SPARK-10511) | Source releases should not include maven jars |  Blocker | Build | Patrick Wendell | Luciano Resende |
| [SPARK-10497](https://issues.apache.org/jira/browse/SPARK-10497) | Release utils does not work with new version of jira-python library |  Minor | Build | holdenk | holdenk |
| [SPARK-10495](https://issues.apache.org/jira/browse/SPARK-10495) | For json data source, date values are saved as int strings |  Blocker | SQL | Yin Huai | Yin Huai |
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
| [SPARK-10392](https://issues.apache.org/jira/browse/SPARK-10392) | Pyspark - Wrong DateType support on JDBC connection |  Major | PySpark, SQL | Maciej Bryński | Alexey Grishchenko |
| [SPARK-10381](https://issues.apache.org/jira/browse/SPARK-10381) | Infinite loop when OutputCommitCoordination is enabled and OutputCommitter.commitTask throws exception |  Critical | Scheduler | Josh Rosen | Josh Rosen |
| [SPARK-10379](https://issues.apache.org/jira/browse/SPARK-10379) | UnsafeShuffleExternalSorter should preserve first page |  Critical | SQL | Davies Liu | Davies Liu |
| [SPARK-10351](https://issues.apache.org/jira/browse/SPARK-10351) | UnsafeRow.getUTF8String should handle off-heap backed UnsafeRow |  Critical | SQL | Feynman Liang | Feynman Liang |
| [SPARK-10332](https://issues.apache.org/jira/browse/SPARK-10332) | spark-submit to yarn doesn't fail if executors is 0 |  Minor | Spark Submit, YARN | Thomas Graves | holdenk |
| [SPARK-10330](https://issues.apache.org/jira/browse/SPARK-10330) | Use SparkHadoopUtil TaskAttemptContext reflection methods in more places |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-10327](https://issues.apache.org/jira/browse/SPARK-10327) | Cache Table is not working while subquery has alias in its project list |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-10316](https://issues.apache.org/jira/browse/SPARK-10316) | respect non-deterministic expressions in PhysicalOperation |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10311](https://issues.apache.org/jira/browse/SPARK-10311) | In cluster mode, AppId and AttemptId should be update when ApplicationMaster is new |  Major | Streaming | meiyoula | meiyoula |
| [SPARK-10301](https://issues.apache.org/jira/browse/SPARK-10301) | For struct type, if parquet's global schema has less fields than a file's schema, data reading will fail |  Critical | SQL | Yin Huai | Cheng Lian |
| [SPARK-10251](https://issues.apache.org/jira/browse/SPARK-10251) | Some internal spark classes are not registered with kryo |  Major | Spark Core | Soren Macbeth | Ram Sriharsha |
| [SPARK-10227](https://issues.apache.org/jira/browse/SPARK-10227) | sbt build on Scala 2.11 fails |  Major | Spark Core | Luc Bourlier | Luc Bourlier |
| [SPARK-10182](https://issues.apache.org/jira/browse/SPARK-10182) | GeneralizedLinearModel doesn't unpersist cached data |  Minor | MLlib | Vyacheslav Baranov | Vyacheslav Baranov |
| [SPARK-10176](https://issues.apache.org/jira/browse/SPARK-10176) | Show partially analyzed plan when checkAnswer df fails to resolve |  Major | SQL, Tests | Michael Armbrust | Michael Armbrust |
| [SPARK-10172](https://issues.apache.org/jira/browse/SPARK-10172) | History Server web UI gets messed up when sorting on any column |  Minor | Web UI | Min Shen | Josiah Samuel Sathiadass |
| [SPARK-10170](https://issues.apache.org/jira/browse/SPARK-10170) | Add DB2 JDBC dialect support |  Major | SQL | Suresh Thalamati | Suresh Thalamati |
| [SPARK-10162](https://issues.apache.org/jira/browse/SPARK-10162) | PySpark filters with datetimes mess up when datetimes have timezones. |  Major | PySpark | Kevin Cox | Alexey Grishchenko |
| [SPARK-10155](https://issues.apache.org/jira/browse/SPARK-10155) | Memory leak in SQL parsers |  Critical | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-10034](https://issues.apache.org/jira/browse/SPARK-10034) | add regression test for Sort on Aggregate |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10004](https://issues.apache.org/jira/browse/SPARK-10004) | Shuffle service should make sure applications are allowed to read shuffle data |  Critical | Shuffle | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-10003](https://issues.apache.org/jira/browse/SPARK-10003) | Improve readability of DAGScheduler |  Major | Scheduler | Andrew Or | Andrew Or |
| [SPARK-9969](https://issues.apache.org/jira/browse/SPARK-9969) | Remove old Yarn MR classpath api support for Spark Yarn client |  Minor | YARN | Saisai Shao | Saisai Shao |
| [SPARK-9924](https://issues.apache.org/jira/browse/SPARK-9924) | checkForLogs and cleanLogs are scheduled at fixed rate and can get piled up |  Major | Web UI | Rohit Agarwal | Rohit Agarwal |
| [SPARK-9869](https://issues.apache.org/jira/browse/SPARK-9869) | Flaky test: o.a.s.streaming.InputStreamSuite - socket input stream |  Critical | Streaming | Josh Rosen | Pete Robbins |
| [SPARK-9794](https://issues.apache.org/jira/browse/SPARK-9794) | ISO DateTime parser is too strict |  Major | SQL | Alex Angelini | Kevin Cox |
| [SPARK-9793](https://issues.apache.org/jira/browse/SPARK-9793) | PySpark DenseVector, SparseVector should override \_\_eq\_\_ and \_\_hash\_\_ |  Critical | ML, PySpark | Joseph K. Bradley | Yanbo Liang |
| [SPARK-9672](https://issues.apache.org/jira/browse/SPARK-9672) | Drivers run in cluster mode on mesos may not have spark-env variables available |  Minor | Mesos, Spark Submit | Patrick Shields | Patrick Shields |
| [SPARK-9596](https://issues.apache.org/jira/browse/SPARK-9596) | Avoid reloading Hadoop classes like UserGroupInformation |  Major | SQL | Tao Wang | Tao Wang |
| [SPARK-9591](https://issues.apache.org/jira/browse/SPARK-9591) | Job failed for exception during getting Broadcast variable |  Major | Spark Core | jeanlyn | jeanlyn |
| [SPARK-9585](https://issues.apache.org/jira/browse/SPARK-9585) | HiveHBaseTableInputFormat can'be cached |  Major | Spark Core | meiyoula | meiyoula |
| [SPARK-9439](https://issues.apache.org/jira/browse/SPARK-9439) | ExternalShuffleService should be robust to NodeManager restarts in yarn |  Critical | Shuffle | Imran Rashid | Imran Rashid |
| [SPARK-9170](https://issues.apache.org/jira/browse/SPARK-9170) | ORC data source creates a schema with lowercase table names |  Major | SQL | Peter Rudenko | Liang-Chi Hsieh |
| [SPARK-9078](https://issues.apache.org/jira/browse/SPARK-9078) | Use of non-standard LIMIT keyword in JDBC tableExists code |  Minor | SQL | Robert Beauchemin | Suresh Thalamati |
| [SPARK-8951](https://issues.apache.org/jira/browse/SPARK-8951) | support CJK characters in collect() |  Minor | SparkR | Jaehong Choi | Jaehong Choi |
| [SPARK-8889](https://issues.apache.org/jira/browse/SPARK-8889) | showDagViz will cause java.lang.OutOfMemoryError: Java heap space |  Minor | Web UI | cen yuhai | Rekha Joshi |
| [SPARK-8730](https://issues.apache.org/jira/browse/SPARK-8730) | Deser primitive class with Java serialization |  Critical | Spark Core | Eugen Cepoi | Eugen Cepoi |
| [SPARK-8707](https://issues.apache.org/jira/browse/SPARK-8707) | RDD#toDebugString fails if any cached RDD has invalid partitions |  Major | Spark Core | Aaron Davidson | Navis |
| [SPARK-8632](https://issues.apache.org/jira/browse/SPARK-8632) | Poor Python UDF performance because of RDD caching |  Blocker | PySpark, SQL | Justin Uang | Davies Liu |
| [SPARK-8567](https://issues.apache.org/jira/browse/SPARK-8567) | Flaky test: o.a.s.sql.hive.HiveSparkSubmitSuite --jars |  Blocker | SQL, Tests | Yin Huai | Yin Huai |
| [SPARK-8167](https://issues.apache.org/jira/browse/SPARK-8167) | Tasks that fail due to YARN preemption can cause job failure |  Blocker | Scheduler, YARN | Patrick Woody | Matt Cheah |
| [SPARK-7989](https://issues.apache.org/jira/browse/SPARK-7989) | Fix flaky tests in ExternalShuffleServiceSuite and SparkListenerWithClusterSuite |  Critical | Spark Core, Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7736](https://issues.apache.org/jira/browse/SPARK-7736) | Exception not failing Python applications (in yarn cluster mode) |  Major | YARN | Shay Rojansky | Marcelo Vanzin |
| [SPARK-7336](https://issues.apache.org/jira/browse/SPARK-7336) | Sometimes the status of finished job show on JobHistory UI will be active, and never update. |  Minor | Web UI | ShaoChuan | ShaoChuan |
| [SPARK-5945](https://issues.apache.org/jira/browse/SPARK-5945) | Spark should not retry a stage infinitely on a FetchFailedException |  Critical | Spark Core | Imran Rashid | Ilya Ganelin |
| [SPARK-5754](https://issues.apache.org/jira/browse/SPARK-5754) | Spark AM not launching on Windows |  Major | Windows, YARN | Inigo | Carsten Blank |
| [SPARK-5259](https://issues.apache.org/jira/browse/SPARK-5259) | Do not submit stage until its dependencies map outputs are registered |  Critical | Spark Core | SuYan | SuYan |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10247](https://issues.apache.org/jira/browse/SPARK-10247) | Cleanup DAGSchedulerSuite "ignore late map task completion" |  Trivial | Scheduler, Tests | Imran Rashid | Imran Rashid |
| [SPARK-10013](https://issues.apache.org/jira/browse/SPARK-10013) | Remove Java assert from Java unit tests |  Major | ML, MLlib | Joseph K. Bradley | holdenk |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10710](https://issues.apache.org/jira/browse/SPARK-10710) | Remove ability to set spark.shuffle.spill=false and spark.sql.planner.externalSort=false |  Major | Shuffle | Josh Rosen | Josh Rosen |
| [SPARK-10704](https://issues.apache.org/jira/browse/SPARK-10704) | Rename HashShufflereader to BlockStoreShuffleReader |  Major | Shuffle | Josh Rosen | Josh Rosen |
| [SPARK-10612](https://issues.apache.org/jira/browse/SPARK-10612) | Add prepare to LocalNode |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-10289](https://issues.apache.org/jira/browse/SPARK-10289) | A direct write API for testing Parquet compatibility |  Major | SQL, Tests | Cheng Lian | Cheng Lian |
| [SPARK-10284](https://issues.apache.org/jira/browse/SPARK-10284) | Add @since annotation to pyspark.ml.tuning |  Minor | Documentation, ML, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10283](https://issues.apache.org/jira/browse/SPARK-10283) | Add @since annotation to pyspark.ml.regression |  Minor | Documentation, ML, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10282](https://issues.apache.org/jira/browse/SPARK-10282) | Add @since annotation to pyspark.ml.recommendation |  Minor | Documentation, ML, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10281](https://issues.apache.org/jira/browse/SPARK-10281) | Add @since annotation to pyspark.ml.clustering |  Minor | Documentation, ML, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10279](https://issues.apache.org/jira/browse/SPARK-10279) | Add @since annotation to pyspark.mllib.util |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10278](https://issues.apache.org/jira/browse/SPARK-10278) | Add @since annotation to pyspark.mllib.tree |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10276](https://issues.apache.org/jira/browse/SPARK-10276) | Add @since annotation to pyspark.mllib.recommendation |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10275](https://issues.apache.org/jira/browse/SPARK-10275) | Add @since annotation to pyspark.mllib.random |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10274](https://issues.apache.org/jira/browse/SPARK-10274) | Add @since annotation to pyspark.mllib.fpm |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10273](https://issues.apache.org/jira/browse/SPARK-10273) | Add @since annotation to pyspark.mllib.feature |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Noel Smith |
| [SPARK-10260](https://issues.apache.org/jira/browse/SPARK-10260) | Add @Since annotation to ml.clustering |  Minor | Documentation, ML | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10050](https://issues.apache.org/jira/browse/SPARK-10050) | Support collecting data of MapType in DataFrame |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-10049](https://issues.apache.org/jira/browse/SPARK-10049) | Support collecting data of ArraryType in DataFrame |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-10048](https://issues.apache.org/jira/browse/SPARK-10048) | Support arbitrary nested Java array in serde |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-10027](https://issues.apache.org/jira/browse/SPARK-10027) | Add Python API missing methods for ml.feature |  Major | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-10026](https://issues.apache.org/jira/browse/SPARK-10026) | Implement some common Params for regression in PySpark |  Major | ML, PySpark | Yanbo Liang | Yanbo Liang |
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
| [SPARK-9851](https://issues.apache.org/jira/browse/SPARK-9851) | Support submitting map stages individually in DAGScheduler |  Major | Spark Core, SQL | Matei Zaharia | Matei Zaharia |
| [SPARK-9808](https://issues.apache.org/jira/browse/SPARK-9808) | Remove hash shuffle file consolidation |  Major | Shuffle, Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-9401](https://issues.apache.org/jira/browse/SPARK-9401) | Fully implement code generation for ConcatWs |  Major | SQL | Reynold Xin | Yijie Shen |
| [SPARK-9400](https://issues.apache.org/jira/browse/SPARK-9400) | Implement code generation for StringLocate |  Major | SQL | Reynold Xin | Davies Liu |
| [SPARK-8887](https://issues.apache.org/jira/browse/SPARK-8887) | Explicitly define which data types can be used as dynamic partition columns |  Major | SQL | Cheng Lian | Yijie Shen |
| [SPARK-8505](https://issues.apache.org/jira/browse/SPARK-8505) | Add settings to kick `lint-r` from `./dev/run-test.py` |  Major | SparkR | Yu Ishikawa | Yu Ishikawa |
| [SPARK-8345](https://issues.apache.org/jira/browse/SPARK-8345) | Add an SQL node as a feature transformer |  Major | ML | Xiangrui Meng | Yanbo Liang |
| [SPARK-7544](https://issues.apache.org/jira/browse/SPARK-7544) | pyspark.sql.types.Row should implement \_\_getitem\_\_ |  Minor | PySpark, SQL | Nicholas Chammas | Yanbo Liang |
| [SPARK-6548](https://issues.apache.org/jira/browse/SPARK-6548) | stddev\_pop and stddev\_samp aggregate functions |  Major | SQL | Reynold Xin | Jihong MA |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10660](https://issues.apache.org/jira/browse/SPARK-10660) | Doc describe error in the "Running Spark on YARN" page |  Trivial | Documentation | yangping wu | yangping wu |
| [SPARK-10631](https://issues.apache.org/jira/browse/SPARK-10631) | Add missing API doc in pyspark.mllib.linalg.Vector |  Minor | Documentation, MLlib, PySpark | Xiangrui Meng | Vinod KC |
| [SPARK-10595](https://issues.apache.org/jira/browse/SPARK-10595) | Various ML programming guide cleanups post 1.5 |  Minor | Documentation, ML, MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-10469](https://issues.apache.org/jira/browse/SPARK-10469) | Document tungsten-sort |  Minor | Documentation | holdenk | holdenk |
| [SPARK-10402](https://issues.apache.org/jira/browse/SPARK-10402) | Add scaladoc for default values of params in ML |  Minor | Documentation, ML | holdenk | holdenk |
| [SPARK-10094](https://issues.apache.org/jira/browse/SPARK-10094) | Mark ML PySpark feature transformers as Experimental to match Scala |  Major | Documentation, ML, PySpark | Joseph K. Bradley | Noel Smith |
| [SPARK-10077](https://issues.apache.org/jira/browse/SPARK-10077) | Java package doc for spark.ml.feature |  Minor | Documentation, ML | Xiangrui Meng | holdenk |
| [SPARK-9014](https://issues.apache.org/jira/browse/SPARK-9014) | Allow Python spark API to use built-in exponential operator |  Minor | PySpark | Jon Speiser | Alexey Grishchenko |
| [SPARK-5905](https://issues.apache.org/jira/browse/SPARK-5905) | Note requirements for certain RowMatrix methods in docs |  Trivial | Documentation, MLlib | Xiangrui Meng | Sean Owen |
| [SPARK-10398](https://issues.apache.org/jira/browse/SPARK-10398) | Migrate Spark download page to use new lua mirroring scripts |  Minor | Project Infra | Luciano Resende | Luciano Resende |
| [SPARK-10222](https://issues.apache.org/jira/browse/SPARK-10222) | More thoroughly deprecate Bagel in favor of GraphX |  Trivial | GraphX | Sean Owen | Sean Owen |
| [SPARK-9810](https://issues.apache.org/jira/browse/SPARK-9810) | Remove individual commit messages from the squash commit message |  Major | Build | Reynold Xin | Reynold Xin |
| [SPARK-9767](https://issues.apache.org/jira/browse/SPARK-9767) | Remove ConnectionManager |  Major | Shuffle, Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-9748](https://issues.apache.org/jira/browse/SPARK-9748) | Centriod typo in KMeansModel |  Trivial | MLlib | Bertrand Dechoux | Bertrand Dechoux |


