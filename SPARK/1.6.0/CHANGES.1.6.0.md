
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

## Release 1.6.0 - Unreleased (as of 2015-09-09)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10117](https://issues.apache.org/jira/browse/SPARK-10117) | Implement SQL data source API for reading LIBSVM data |  Major | ML | Xiangrui Meng | Kai Sasaki |
| [SPARK-9964](https://issues.apache.org/jira/browse/SPARK-9964) | PySpark DataFrameReader accept RDD of String for JSON |  Minor | PySpark, SQL | Joseph K. Bradley | Yanbo Liang |
| [SPARK-9834](https://issues.apache.org/jira/browse/SPARK-9834) | Normal equation solver for ordinary least squares |  Major | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-9679](https://issues.apache.org/jira/browse/SPARK-9679) | Add python interface for ml.feature.StopWordsRemover |  Minor | ML | yuhao yang | holdenk |
| [SPARK-9669](https://issues.apache.org/jira/browse/SPARK-9669) | Support PySpark with Mesos Cluster mode |  Major | Mesos, PySpark | Timothy Chen | Timothy Chen |
| [SPARK-9654](https://issues.apache.org/jira/browse/SPARK-9654) | Add IndexToString in Pyspark |  Minor | ML, PySpark | holdenk | holdenk |
| [SPARK-8472](https://issues.apache.org/jira/browse/SPARK-8472) | Python API for DCT |  Minor | ML | Feynman Liang | Yanbo Liang |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10481](https://issues.apache.org/jira/browse/SPARK-10481) | SPARK\_PREPEND\_CLASSES make spark-yarn related jar could not be found |  Minor | YARN | Jeff Zhang | Jeff Zhang |
| [SPARK-10468](https://issues.apache.org/jira/browse/SPARK-10468) | Verify schema before Dataframe select API call |  Minor | MLlib | Vinod KC | Vinod KC |
| [SPARK-10464](https://issues.apache.org/jira/browse/SPARK-10464) | Add WeibullGenerator for RandomDataGenerator |  Major | MLlib | Yanbo Liang | Yanbo Liang |
| [SPARK-10461](https://issues.apache.org/jira/browse/SPARK-10461) | make sure `input.primitive` is always variable name not code at GenerateUnsafeProjection |  Minor | SQL | Wenchen Fan |  |
| [SPARK-10450](https://issues.apache.org/jira/browse/SPARK-10450) | Minor SQL style, format, typo, readability fixes |  Minor | SQL | Andrew Or | Andrew Or |
| [SPARK-10411](https://issues.apache.org/jira/browse/SPARK-10411) | In SQL tab move visualization above explain output |  Minor | SQL, Web UI | Andrew Or | Shixiong Zhu |
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
| [SPARK-10040](https://issues.apache.org/jira/browse/SPARK-10040) | JDBC writer change to use batch insert for performance |  Major | SQL | Rama Mullapudi | Liang-Chi Hsieh |
| [SPARK-10035](https://issues.apache.org/jira/browse/SPARK-10035) | Parquet filters does not process EqualNullSafe filter. |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-9935](https://issues.apache.org/jira/browse/SPARK-9935) | EqualNullSafe not processed in OrcRelation |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-9929](https://issues.apache.org/jira/browse/SPARK-9929) | support adding metadata in withColumn |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-9923](https://issues.apache.org/jira/browse/SPARK-9923) | ShuffleMapStage.numAvailableOutputs should be an Int instead of Long |  Trivial | Spark Core | Matei Zaharia | Neelesh Srinivas Salian |
| [SPARK-9833](https://issues.apache.org/jira/browse/SPARK-9833) | Add options to explicitly disable delegation token retrieval for non-HDFS |  Minor | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-9782](https://issues.apache.org/jira/browse/SPARK-9782) | Add support for YARN application tags running Spark on YARN |  Major | YARN | Dennis Huo | Dennis Huo |
| [SPARK-9737](https://issues.apache.org/jira/browse/SPARK-9737) | Add the suggested configuration when required executor memory is above the max threshold of this cluster on YARN mode |  Trivial | YARN | Yadong Qi | Yadong Qi |
| [SPARK-9723](https://issues.apache.org/jira/browse/SPARK-9723) | Params.getOrDefault should throw more meaningful exception |  Minor | ML | Joseph K. Bradley | holdenk |
| [SPARK-9613](https://issues.apache.org/jira/browse/SPARK-9613) | Ban use of JavaConversions and migrate all existing uses to JavaConverters |  Major | Spark Core | Josh Rosen | Sean Owen |
| [SPARK-9547](https://issues.apache.org/jira/browse/SPARK-9547) | Allow testing pull requests with different Hadoop versions |  Major | Build | Patrick Wendell | Patrick Wendell |
| [SPARK-9545](https://issues.apache.org/jira/browse/SPARK-9545) | Run Maven tests in pull request builder if title has "[test-maven]" in it |  Major | Build | Patrick Wendell | Patrick Wendell |
| [SPARK-8764](https://issues.apache.org/jira/browse/SPARK-8764) | StringIndexer should take option to handle unseen values |  Minor | ML | Joseph K. Bradley | holdenk |
| [SPARK-4223](https://issues.apache.org/jira/browse/SPARK-4223) | Support \* (meaning all users) as part of the acls |  Major | Spark Core | Thomas Graves | Zhuo Liu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10480](https://issues.apache.org/jira/browse/SPARK-10480) | ML.LinearRegressionModel.copy() can not use argument "extra" |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-10479](https://issues.apache.org/jira/browse/SPARK-10479) | LogisticRegression copy should copy model summary if available |  Minor | ML | Feynman Liang | Yanbo Liang |
| [SPARK-10470](https://issues.apache.org/jira/browse/SPARK-10470) | ml.IsotonicRegressionModel.copy did not set parent |  Major | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-10454](https://issues.apache.org/jira/browse/SPARK-10454) | Flaky test: o.a.s.scheduler.DAGSchedulerSuite.late fetch failures don't cause multiple concurrent attempts for the same map stage |  Critical | Scheduler, Spark Core | Pete Robbins | Pete Robbins |
| [SPARK-10441](https://issues.apache.org/jira/browse/SPARK-10441) | Cannot write timestamp to JSON |  Critical | SQL | Yin Huai | Yin Huai |
| [SPARK-10435](https://issues.apache.org/jira/browse/SPARK-10435) | SparkSubmit should fail fast for Mesos cluster mode with R |  Major | Spark Submit | Andrew Or | Andrew Or |
| [SPARK-10434](https://issues.apache.org/jira/browse/SPARK-10434) | Parquet compatibility with 1.4 is broken when writing arrays that may contain nulls |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-10432](https://issues.apache.org/jira/browse/SPARK-10432) | spark.port.maxRetries documentation is unclear |  Minor | Documentation | Thomas Graves | Thomas Graves |
| [SPARK-10431](https://issues.apache.org/jira/browse/SPARK-10431) | Flaky test: o.a.s.metrics.InputOutputMetricsSuite - input metrics with cache and coalesce |  Critical | Tests | Pete Robbins | Pete Robbins |
| [SPARK-10430](https://issues.apache.org/jira/browse/SPARK-10430) | AccumulableInfo and RDDOperationScope violates hashCode + equals contract |  Minor | Spark Core | Vinod KC | Vinod KC |
| [SPARK-10421](https://issues.apache.org/jira/browse/SPARK-10421) | tachyon dependency can leak different curator artifact versions |  Minor | Build | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-10417](https://issues.apache.org/jira/browse/SPARK-10417) | Iterating through Column results in infinite loop |  Minor | PySpark | Zoltan Toth | Alexey Grishchenko |
| [SPARK-10392](https://issues.apache.org/jira/browse/SPARK-10392) | Pyspark - Wrong DateType support on JDBC connection |  Major | PySpark, SQL | Maciej Bryński | Alexey Grishchenko |
| [SPARK-10379](https://issues.apache.org/jira/browse/SPARK-10379) | UnsafeShuffleExternalSorter should preserve first page |  Critical | SQL | Davies Liu | Davies Liu |
| [SPARK-10351](https://issues.apache.org/jira/browse/SPARK-10351) | UnsafeRow.getUTF8String should handle off-heap backed UnsafeRow |  Critical | SQL | Feynman Liang | Feynman Liang |
| [SPARK-10332](https://issues.apache.org/jira/browse/SPARK-10332) | spark-submit to yarn doesn't fail if executors is 0 |  Minor | Spark Submit, YARN | Thomas Graves | holdenk |
| [SPARK-10327](https://issues.apache.org/jira/browse/SPARK-10327) | Cache Table is not working while subquery has alias in its project list |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-10316](https://issues.apache.org/jira/browse/SPARK-10316) | respect non-deterministic expressions in PhysicalOperation |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10311](https://issues.apache.org/jira/browse/SPARK-10311) | In cluster mode, AppId and AttemptId should be update when ApplicationMaster is new |  Major | Streaming | meiyoula | meiyoula |
| [SPARK-10301](https://issues.apache.org/jira/browse/SPARK-10301) | For struct type, if parquet's global schema has less fields than a file's schema, data reading will fail |  Critical | SQL | Yin Huai | Cheng Lian |
| [SPARK-10251](https://issues.apache.org/jira/browse/SPARK-10251) | Some internal spark classes are not registered with kryo |  Major | Spark Core | Soren Macbeth | Ram Sriharsha |
| [SPARK-10227](https://issues.apache.org/jira/browse/SPARK-10227) | sbt build on Scala 2.11 fails |  Major | Spark Core | Luc Bourlier | Luc Bourlier |
| [SPARK-10182](https://issues.apache.org/jira/browse/SPARK-10182) | GeneralizedLinearModel doesn't unpersist cached data |  Minor | MLlib | Vyacheslav Baranov | Vyacheslav Baranov |
| [SPARK-10176](https://issues.apache.org/jira/browse/SPARK-10176) | Show partially analyzed plan when checkAnswer df fails to resolve |  Major | SQL, Tests | Michael Armbrust | Michael Armbrust |
| [SPARK-10170](https://issues.apache.org/jira/browse/SPARK-10170) | Add DB2 JDBC dialect support |  Major | SQL | Suresh Thalamati | Suresh Thalamati |
| [SPARK-10162](https://issues.apache.org/jira/browse/SPARK-10162) | PySpark filters with datetimes mess up when datetimes have timezones. |  Major | PySpark | Kevin Cox | Alexey Grishchenko |
| [SPARK-10034](https://issues.apache.org/jira/browse/SPARK-10034) | add regression test for Sort on Aggregate |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10004](https://issues.apache.org/jira/browse/SPARK-10004) | Shuffle service should make sure applications are allowed to read shuffle data |  Critical | Shuffle | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-10003](https://issues.apache.org/jira/browse/SPARK-10003) | Improve readability of DAGScheduler |  Major | Scheduler | Andrew Or | Andrew Or |
| [SPARK-9969](https://issues.apache.org/jira/browse/SPARK-9969) | Remove old Yarn MR classpath api support for Spark Yarn client |  Minor | YARN | Saisai Shao | Saisai Shao |
| [SPARK-9924](https://issues.apache.org/jira/browse/SPARK-9924) | checkForLogs and cleanLogs are scheduled at fixed rate and can get piled up |  Major | Web UI | Rohit Agarwal | Rohit Agarwal |
| [SPARK-9869](https://issues.apache.org/jira/browse/SPARK-9869) | Flaky test: o.a.s.streaming.InputStreamSuite - socket input stream |  Critical | Streaming | Josh Rosen | Pete Robbins |
| [SPARK-9672](https://issues.apache.org/jira/browse/SPARK-9672) | Drivers run in cluster mode on mesos may not have spark-env variables available |  Minor | Mesos, Spark Submit | Patrick Shields | Patrick Shields |
| [SPARK-9596](https://issues.apache.org/jira/browse/SPARK-9596) | Avoid reloading Hadoop classes like UserGroupInformation |  Major | SQL | Tao Wang | Tao Wang |
| [SPARK-9591](https://issues.apache.org/jira/browse/SPARK-9591) | Job failed for exception during getting Broadcast variable |  Major | Spark Core | jeanlyn | jeanlyn |
| [SPARK-9439](https://issues.apache.org/jira/browse/SPARK-9439) | ExternalShuffleService should be robust to NodeManager restarts in yarn |  Critical | Shuffle | Imran Rashid | Imran Rashid |
| [SPARK-9170](https://issues.apache.org/jira/browse/SPARK-9170) | ORC data source creates a schema with lowercase table names |  Major | SQL | Peter Rudenko | Liang-Chi Hsieh |
| [SPARK-8951](https://issues.apache.org/jira/browse/SPARK-8951) | support CJK characters in collect() |  Minor | SparkR | Jaehong Choi | Jaehong Choi |
| [SPARK-8889](https://issues.apache.org/jira/browse/SPARK-8889) | showDagViz will cause java.lang.OutOfMemoryError: Java heap space |  Minor | Web UI | cen yuhai | Rekha Joshi |
| [SPARK-8730](https://issues.apache.org/jira/browse/SPARK-8730) | Deser primitive class with Java serialization |  Critical | Spark Core | Eugen Cepoi | Eugen Cepoi |
| [SPARK-8707](https://issues.apache.org/jira/browse/SPARK-8707) | RDD#toDebugString fails if any cached RDD has invalid partitions |  Major | Spark Core | Aaron Davidson | Navis |
| [SPARK-7336](https://issues.apache.org/jira/browse/SPARK-7336) | Sometimes the status of finished job show on JobHistory UI will be active, and never update. |  Minor | Web UI | ShaoChuan | ShaoChuan |
| [SPARK-5945](https://issues.apache.org/jira/browse/SPARK-5945) | Spark should not retry a stage infinitely on a FetchFailedException |  Critical | Spark Core | Imran Rashid | Ilya Ganelin |
| [SPARK-5754](https://issues.apache.org/jira/browse/SPARK-5754) | Spark AM not launching on Windows |  Major | Windows, YARN | Inigo | Carsten Blank |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10247](https://issues.apache.org/jira/browse/SPARK-10247) | Cleanup DAGSchedulerSuite "ignore late map task completion" |  Trivial | Scheduler, Tests | Imran Rashid | Imran Rashid |
| [SPARK-10013](https://issues.apache.org/jira/browse/SPARK-10013) | Remove Java assert from Java unit tests |  Major | ML, MLlib | Joseph K. Bradley | holdenk |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10289](https://issues.apache.org/jira/browse/SPARK-10289) | A direct write API for testing Parquet compatibility |  Major | SQL, Tests | Cheng Lian | Cheng Lian |
| [SPARK-10260](https://issues.apache.org/jira/browse/SPARK-10260) | Add @Since annotation to ml.clustering |  Minor | Documentation, ML | Xiangrui Meng | Yu Ishikawa |
| [SPARK-10048](https://issues.apache.org/jira/browse/SPARK-10048) | Support arbitrary nested Java array in serde |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-9993](https://issues.apache.org/jira/browse/SPARK-9993) | Create local union operator |  Major | SQL | Reynold Xin | Shixiong Zhu |
| [SPARK-9991](https://issues.apache.org/jira/browse/SPARK-9991) | Create local limit operator |  Major | SQL | Reynold Xin | Shixiong Zhu |
| [SPARK-9986](https://issues.apache.org/jira/browse/SPARK-9986) | Create a simple test framework for local operators |  Major | SQL | Reynold Xin | Shixiong Zhu |
| [SPARK-9984](https://issues.apache.org/jira/browse/SPARK-9984) | Create local physical operator interface |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-9954](https://issues.apache.org/jira/browse/SPARK-9954) | Vector.hashCode should use nonzeros |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-9925](https://issues.apache.org/jira/browse/SPARK-9925) | Set SQLConf.SHUFFLE\_PARTITIONS.key correctly for tests |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-9401](https://issues.apache.org/jira/browse/SPARK-9401) | Fully implement code generation for ConcatWs |  Major | SQL | Reynold Xin | Yijie Shen |
| [SPARK-9400](https://issues.apache.org/jira/browse/SPARK-9400) | Implement code generation for StringLocate |  Major | SQL | Reynold Xin | Davies Liu |
| [SPARK-8887](https://issues.apache.org/jira/browse/SPARK-8887) | Explicitly define which data types can be used as dynamic partition columns |  Major | SQL | Cheng Lian | Yijie Shen |
| [SPARK-8505](https://issues.apache.org/jira/browse/SPARK-8505) | Add settings to kick `lint-r` from `./dev/run-test.py` |  Major | SparkR | Yu Ishikawa | Yu Ishikawa |
| [SPARK-8345](https://issues.apache.org/jira/browse/SPARK-8345) | Add an SQL node as a feature transformer |  Major | ML | Xiangrui Meng | Yanbo Liang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10402](https://issues.apache.org/jira/browse/SPARK-10402) | Add scaladoc for default values of params in ML |  Minor | Documentation, ML | holdenk | holdenk |
| [SPARK-10094](https://issues.apache.org/jira/browse/SPARK-10094) | Mark ML PySpark feature transformers as Experimental to match Scala |  Major | Documentation, ML, PySpark | Joseph K. Bradley | Noel Smith |
| [SPARK-10398](https://issues.apache.org/jira/browse/SPARK-10398) | Migrate Spark download page to use new lua mirroring scripts |  Minor | Project Infra | Luciano Resende | Luciano Resende |
| [SPARK-9810](https://issues.apache.org/jira/browse/SPARK-9810) | Remove individual commit messages from the squash commit message |  Major | Build | Reynold Xin | Reynold Xin |
| [SPARK-9767](https://issues.apache.org/jira/browse/SPARK-9767) | Remove ConnectionManager |  Major | Shuffle, Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-9748](https://issues.apache.org/jira/browse/SPARK-9748) | Centriod typo in KMeansModel |  Trivial | MLlib | Bertrand Dechoux | Bertrand Dechoux |


