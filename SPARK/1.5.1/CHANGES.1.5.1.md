
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

## Release 1.5.1 - 2015-10-01



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10716](https://issues.apache.org/jira/browse/SPARK-10716) | spark-1.5.0-bin-hadoop2.6.tgz file doesn't uncompress on OS X due to hidden file |  Minor | Build, Deploy | Jack Jack | Sean Owen |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-9935](https://issues.apache.org/jira/browse/SPARK-9935) | EqualNullSafe not processed in OrcRelation |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-10411](https://issues.apache.org/jira/browse/SPARK-10411) | In SQL tab move visualization above explain output |  Minor | SQL, Web UI | Andrew Or | Shixiong Zhu |
| [SPARK-10071](https://issues.apache.org/jira/browse/SPARK-10071) | QueueInputDStream Should Allow Checkpointing |  Major | Streaming | Asim Jalis | Shixiong Zhu |
| [SPARK-6350](https://issues.apache.org/jira/browse/SPARK-6350) | Make mesosExecutorCores configurable in mesos "fine-grained" mode |  Minor | Mesos | Jongyoul Lee | Jongyoul Lee |
| [SPARK-10657](https://issues.apache.org/jira/browse/SPARK-10657) | Remove legacy SCP-based Jenkins log archiving code |  Major | Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-9522](https://issues.apache.org/jira/browse/SPARK-9522) | SparkSubmit process can not exit if kill application when HiveThriftServer was starting |  Minor | SQL | Weizhong | Weizhong |
| [SPARK-10684](https://issues.apache.org/jira/browse/SPARK-10684) | StructType.interpretedOrdering need not to be serialized |  Minor | SQL | Navis | Navis |
| [SPARK-10676](https://issues.apache.org/jira/browse/SPARK-10676) | Update documentation with instructions to enable block manager wire encryption |  Major | Documentation | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-10714](https://issues.apache.org/jira/browse/SPARK-10714) | Refactor PythonRDD to decouple iterator computation from PythonRDD |  Major | PySpark, Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-10652](https://issues.apache.org/jira/browse/SPARK-10652) | Set meaningful job descriptions for streaming related jobs |  Major | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-10742](https://issues.apache.org/jira/browse/SPARK-10742) | Add the ability to embed HTML relative links in job descriptions |  Minor | Web UI | Tathagata Das | Tathagata Das |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-9710](https://issues.apache.org/jira/browse/SPARK-9710) | RPackageUtilsSuite fails if R is not installed |  Major | Tests | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-9924](https://issues.apache.org/jira/browse/SPARK-9924) | checkForLogs and cleanLogs are scheduled at fixed rate and can get piled up |  Major | Web UI | Rohit Agarwal | Rohit Agarwal |
| [SPARK-10301](https://issues.apache.org/jira/browse/SPARK-10301) | For struct type, if parquet's global schema has less fields than a file's schema, data reading will fail |  Critical | SQL | Yin Huai | Cheng Lian |
| [SPARK-10392](https://issues.apache.org/jira/browse/SPARK-10392) | Pyspark - Wrong DateType support on JDBC connection |  Major | PySpark, SQL | Maciej Bryński | Alexey Grishchenko |
| [SPARK-10422](https://issues.apache.org/jira/browse/SPARK-10422) | String column in InMemoryColumnarCache needs to override clone method |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-10379](https://issues.apache.org/jira/browse/SPARK-10379) | UnsafeShuffleExternalSorter should preserve first page |  Critical | SQL | Davies Liu | Davies Liu |
| [SPARK-10332](https://issues.apache.org/jira/browse/SPARK-10332) | spark-submit to yarn doesn't fail if executors is 0 |  Minor | Spark Submit, YARN | Thomas Graves | holdenk |
| [SPARK-9869](https://issues.apache.org/jira/browse/SPARK-9869) | Flaky test: o.a.s.streaming.InputStreamSuite - socket input stream |  Critical | Streaming | Josh Rosen | Pete Robbins |
| [SPARK-10431](https://issues.apache.org/jira/browse/SPARK-10431) | Flaky test: o.a.s.metrics.InputOutputMetricsSuite - input metrics with cache and coalesce |  Critical | Tests | Pete Robbins | Pete Robbins |
| [SPARK-10454](https://issues.apache.org/jira/browse/SPARK-10454) | Flaky test: o.a.s.scheduler.DAGSchedulerSuite.late fetch failures don't cause multiple concurrent attempts for the same map stage |  Critical | Scheduler, Spark Core | Pete Robbins | Pete Robbins |
| [SPARK-10311](https://issues.apache.org/jira/browse/SPARK-10311) | In cluster mode, AppId and AttemptId should be update when ApplicationMaster is new |  Major | Streaming | meiyoula | meiyoula |
| [SPARK-10434](https://issues.apache.org/jira/browse/SPARK-10434) | Parquet compatibility with 1.4 is broken when writing arrays that may contain nulls |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-10480](https://issues.apache.org/jira/browse/SPARK-10480) | ML.LinearRegressionModel.copy() can not use argument "extra" |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-10479](https://issues.apache.org/jira/browse/SPARK-10479) | LogisticRegression copy should copy model summary if available |  Minor | ML | Feynman Liang | Yanbo Liang |
| [SPARK-10470](https://issues.apache.org/jira/browse/SPARK-10470) | ml.IsotonicRegressionModel.copy did not set parent |  Major | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-10441](https://issues.apache.org/jira/browse/SPARK-10441) | Cannot write timestamp to JSON |  Critical | SQL | Yin Huai | Yin Huai |
| [SPARK-7736](https://issues.apache.org/jira/browse/SPARK-7736) | Exception not failing Python applications (in yarn cluster mode) |  Major | YARN | Shay Rojansky | Marcelo Vanzin |
| [SPARK-10466](https://issues.apache.org/jira/browse/SPARK-10466) | UnsafeRow exception in Sort-Based Shuffle with data spill |  Blocker | SQL | Cheng Hao | Cheng Hao |
| [SPARK-10556](https://issues.apache.org/jira/browse/SPARK-10556) | SBT build explicitly sets Scala version, which can conflict with SBT's own scala version |  Minor | Build | Ahir Reddy | Ahir Reddy |
| [SPARK-10564](https://issues.apache.org/jira/browse/SPARK-10564) | ThreadingSuite: assertions in threads don't fail the test |  Critical | Tests | Andrew Or | Andrew Or |
| [SPARK-10566](https://issues.apache.org/jira/browse/SPARK-10566) | SnappyCompressionCodec init exception handling masks important error information |  Minor | Input/Output | Daniel Imfeld | Daniel Imfeld |
| [SPARK-10554](https://issues.apache.org/jira/browse/SPARK-10554) | Potential NPE with ShutdownHook |  Minor | Block Manager | Nithin Asokan | Nithin Asokan |
| [SPARK-10584](https://issues.apache.org/jira/browse/SPARK-10584) | Documentation about the compatible Hive version is wrong. |  Minor | Documentation, SQL | Kousuke Saruta | Kousuke Saruta |
| [SPARK-10573](https://issues.apache.org/jira/browse/SPARK-10573) | IndexToString transformSchema adds output field as DoubleType |  Major | ML | Nick Pritchard | Nick Pritchard |
| [SPARK-10522](https://issues.apache.org/jira/browse/SPARK-10522) | Nanoseconds part of Timestamp should be positive in parquet |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-10549](https://issues.apache.org/jira/browse/SPARK-10549) | scala 2.11 spark on yarn with security - Repl doesn't work |  Major | Spark Shell | Thomas Graves | Thomas Graves |
| [SPARK-10543](https://issues.apache.org/jira/browse/SPARK-10543) | Peak Execution Memory Quantile should be Per-task Basis |  Minor | Spark Core | Sen Fang | Sen Fang |
| [SPARK-10542](https://issues.apache.org/jira/browse/SPARK-10542) | The  PySpark 1.5 closure serializer can't serialize a namedtuple instance. |  Critical | PySpark | Davies Liu | Davies Liu |
| [SPARK-10563](https://issues.apache.org/jira/browse/SPARK-10563) | SparkContext's local properties should be cloned when inherited |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-10381](https://issues.apache.org/jira/browse/SPARK-10381) | Infinite loop when OutputCommitCoordination is enabled and OutputCommitter.commitTask throws exception |  Critical | Scheduler | Josh Rosen | Josh Rosen |
| [SPARK-10511](https://issues.apache.org/jira/browse/SPARK-10511) | Source releases should not include maven jars |  Blocker | Build | Patrick Wendell | Luciano Resende |
| [SPARK-10642](https://issues.apache.org/jira/browse/SPARK-10642) | Crash in rdd.lookup() with "java.lang.Long cannot be cast to java.lang.Integer" |  Major | PySpark | Thouis Jones | Liang-Chi Hsieh |
| [SPARK-10650](https://issues.apache.org/jira/browse/SPARK-10650) | Spark docs include test and other extra classes |  Critical | Documentation | Patrick Wendell | Michael Armbrust |
| [SPARK-10639](https://issues.apache.org/jira/browse/SPARK-10639) | Need to convert UDAF's result from scala to sql type |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-10632](https://issues.apache.org/jira/browse/SPARK-10632) | Cannot save DataFrame with User Defined Types |  Major | SQL | Joao | Yin Huai |
| [SPARK-10172](https://issues.apache.org/jira/browse/SPARK-10172) | History Server web UI gets messed up when sorting on any column |  Minor | Web UI | Min Shen | Josiah Samuel Sathiadass |
| [SPARK-10540](https://issues.apache.org/jira/browse/SPARK-10540) | HadoopFsRelationTest's "test all data types" is flaky |  Major | SQL | Yin Huai | Cheng Lian |
| [SPARK-10539](https://issues.apache.org/jira/browse/SPARK-10539) | Intersection Optimization is Wrong |  Blocker | SQL | Michael Armbrust | Yijie Shen |
| [SPARK-10449](https://issues.apache.org/jira/browse/SPARK-10449) | StructType.merge shouldn't merge DecimalTypes with different precisions and/or scales |  Major | SQL | Cheng Lian | holdenk |
| [SPARK-10611](https://issues.apache.org/jira/browse/SPARK-10611) | Configuration object thread safety issue in NewHadoopRDD |  Critical | Spark Core | Mingyu Kim | Mingyu Kim |
| [SPARK-10623](https://issues.apache.org/jira/browse/SPARK-10623) | NoSuchElementException thrown when ORC predicate push-down is turned on |  Blocker | SQL | Ram Sriharsha | Zhan Zhang |
| [SPARK-10155](https://issues.apache.org/jira/browse/SPARK-10155) | Memory leak in SQL parsers |  Critical | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-10649](https://issues.apache.org/jira/browse/SPARK-10649) | Streaming jobs unexpectedly inherits job group, job descriptions from context starting thread |  Major | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-10495](https://issues.apache.org/jira/browse/SPARK-10495) | For json data source, date values are saved as int strings |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-10711](https://issues.apache.org/jira/browse/SPARK-10711) | Do not assume spark.submit.deployMode is always set |  Critical | SparkR | Hossein Falaki | Hossein Falaki |
| [SPARK-8567](https://issues.apache.org/jira/browse/SPARK-8567) | Flaky test: o.a.s.sql.hive.HiveSparkSubmitSuite --jars |  Blocker | SQL, Tests | Yin Huai | Yin Huai |
| [SPARK-10695](https://issues.apache.org/jira/browse/SPARK-10695) | spark.mesos.constraints documentation uses "=" to separate value instead ":" as parser and mesos expects. |  Critical | Documentation, Mesos | Akash Mishra | Akash Mishra |
| [SPARK-10593](https://issues.apache.org/jira/browse/SPARK-10593) | sql lateral view same name gives wrong value |  Blocker | SQL | Davies Liu | Davies Liu |
| [SPARK-10740](https://issues.apache.org/jira/browse/SPARK-10740) | handle nondeterministic expressions correctly for set operations |  Blocker | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10672](https://issues.apache.org/jira/browse/SPARK-10672) | We should not fail to create a table If we cannot persist metadata of a data source table to metastore in a Hive compatible way |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-10737](https://issues.apache.org/jira/browse/SPARK-10737) | When using UnsafeRows, SortMergeJoin may return wrong results |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-8632](https://issues.apache.org/jira/browse/SPARK-8632) | Poor Python UDF performance because of RDD caching |  Blocker | PySpark, SQL | Justin Uang | Davies Liu |
| [SPARK-10685](https://issues.apache.org/jira/browse/SPARK-10685) | Misaligned data with RDD.zip and DataFrame.withColumn after repartition |  Blocker | PySpark, SQL | Dan Brown | Reynold Xin |
| [SPARK-10640](https://issues.apache.org/jira/browse/SPARK-10640) | Spark history server fails to parse taskEndReasonFromJson TaskCommitDenied |  Blocker | Spark Core | Thomas Graves | Andrew Or |
| [SPARK-10310](https://issues.apache.org/jira/browse/SPARK-10310) | [Spark SQL] All result records will be popluated into ONE line during the script transform due to missing the correct line/filed delimiter |  Critical | SQL | Yi Zhou | zhichao-li |
| [SPARK-10224](https://issues.apache.org/jira/browse/SPARK-10224) | BlockGenerator may lost data in the last block |  Critical | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-10769](https://issues.apache.org/jira/browse/SPARK-10769) | Fix o.a.s.streaming.CheckpointSuite.maintains rate controller |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-10494](https://issues.apache.org/jira/browse/SPARK-10494) | Multiple Python UDFs together with aggregation or sort merge join may cause OOM (failed to acquire memory) |  Critical | PySpark, SQL | Davies Liu | Reynold Xin |
| [SPARK-10403](https://issues.apache.org/jira/browse/SPARK-10403) | UnsafeRowSerializer can't work with UnsafeShuffleManager (tungsten-sort) |  Major | SQL | Davies Liu | Josh Rosen |
| [SPARK-10731](https://issues.apache.org/jira/browse/SPARK-10731) | The head() implementation of dataframe is very slow |  Major | PySpark | Jerry Lam | Reynold Xin |
| [SPARK-10474](https://issues.apache.org/jira/browse/SPARK-10474) | TungstenAggregation cannot acquire memory for pointer array after switching to sort-based |  Blocker | SQL | Yi Zhou | Andrew Or |
| [SPARK-10692](https://issues.apache.org/jira/browse/SPARK-10692) | Failed batches are never reported through the StreamingListener interface |  Critical | Streaming | Tathagata Das | Shixiong Zhu |
| [SPARK-6882](https://issues.apache.org/jira/browse/SPARK-6882) | Spark ThriftServer2 Kerberos failed encountering java.lang.IllegalArgumentException: Unknown auth type: null Allowed values are: [auth-int, auth-conf, auth] |  Major | SQL | Andrew Lee | Steve Loughran |
| [SPARK-11214](https://issues.apache.org/jira/browse/SPARK-11214) | Join with Unicode-String results wrong empty |  Critical | PySpark, SQL | Hans Fischer | Josh Rosen |
| [SPARK-10548](https://issues.apache.org/jira/browse/SPARK-10548) | Concurrent execution in SQL does not work |  Blocker | SQL | Andrew Or | Andrew Or |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-9803](https://issues.apache.org/jira/browse/SPARK-9803) | Add transform and subset  to DataFrame |  Major | SparkR | Hossein Falaki | Felix Cheung |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10402](https://issues.apache.org/jira/browse/SPARK-10402) | Add scaladoc for default values of params in ML |  Minor | Documentation, ML | holdenk | holdenk |
| [SPARK-10469](https://issues.apache.org/jira/browse/SPARK-10469) | Document tungsten-sort |  Minor | Documentation | holdenk | holdenk |
| [SPARK-10660](https://issues.apache.org/jira/browse/SPARK-10660) | Doc describe error in the "Running Spark on YARN" page |  Trivial | Documentation | yangping wu | yangping wu |
| [SPARK-10663](https://issues.apache.org/jira/browse/SPARK-10663) | Change test.toDF to test in Spark ML Programming Guide |  Trivial | Documentation | Matt Hagen | Matt Hagen |
| [SPARK-10398](https://issues.apache.org/jira/browse/SPARK-10398) | Migrate Spark download page to use new lua mirroring scripts |  Minor | Project Infra | Luciano Resende | Luciano Resende |


