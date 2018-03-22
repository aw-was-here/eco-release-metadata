
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

## Release 2.3.0 - 2018-02-28



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-20945](https://issues.apache.org/jira/browse/SPARK-20945) | NoSuchElementException key not found in TaskSchedulerImpl |  Minor | Scheduler | liupengcheng | liupengcheng |
| [SPARK-21339](https://issues.apache.org/jira/browse/SPARK-21339) | spark-shell --packages option does not add jars to classpath on windows |  Major | Spark Shell, Windows | Goran Blankendal | Devaraj K |
| [SPARK-17047](https://issues.apache.org/jira/browse/SPARK-17047) | Spark 2 cannot create table when CLUSTERED. |  Major | SQL | Dr Mich Talebzadeh |  |
| [SPARK-19552](https://issues.apache.org/jira/browse/SPARK-19552) | Upgrade Netty version to 4.1.x final |  Major | Build | Adam Roberts | Bryan Cutler |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-15767](https://issues.apache.org/jira/browse/SPARK-15767) | Decision Tree Regression wrapper in SparkR |  Major | ML, SparkR | Kai Jiang | zhengruifeng |
| [SPARK-20899](https://issues.apache.org/jira/browse/SPARK-20899) | PySpark supports stringIndexerOrderType in RFormula |  Major | ML, PySpark | Wayne Zhang | Wayne Zhang |
| [SPARK-20863](https://issues.apache.org/jira/browse/SPARK-20863) | Add metrics/instrumentation to LiveListenerBus |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-21000](https://issues.apache.org/jira/browse/SPARK-21000) | Add Mesos labels support to the Spark Dispatcher |  Major | Mesos | Michael Gummelt | Michael Gummelt |
| [SPARK-20979](https://issues.apache.org/jira/browse/SPARK-20979) | Add a rate source to generate values for tests and benchmark |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-21092](https://issues.apache.org/jira/browse/SPARK-21092) | Wire SQLConf in logical plan and expressions |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-20892](https://issues.apache.org/jira/browse/SPARK-20892) | Add SQL trunc function to SparkR |  Major | SparkR | Wayne Zhang | Wayne Zhang |
| [SPARK-20917](https://issues.apache.org/jira/browse/SPARK-20917) | SparkR supports string encoding consistent with R |  Major | SparkR | Wayne Zhang | Wayne Zhang |
| [SPARK-18710](https://issues.apache.org/jira/browse/SPARK-18710) | Add offset to GeneralizedLinearRegression models |  Major | ML | Wayne Zhang | Wayne Zhang |
| [SPARK-20953](https://issues.apache.org/jira/browse/SPARK-20953) | Add hash map metrics to aggregate and join |  Major | SQL | Reynold Xin |  |
| [SPARK-19507](https://issues.apache.org/jira/browse/SPARK-19507) | pyspark.sql.types.\_verify\_type() exceptions too broad to debug collections or nested data |  Trivial | PySpark | David Gingrich | Hyukjin Kwon |
| [SPARK-21310](https://issues.apache.org/jira/browse/SPARK-21310) | Add offset to PySpark GLM |  Major | PySpark | Wayne Zhang | Wayne Zhang |
| [SPARK-20703](https://issues.apache.org/jira/browse/SPARK-20703) | Add an operator for writing data out |  Major | SQL | Reynold Xin | Liang-Chi Hsieh |
| [SPARK-21043](https://issues.apache.org/jira/browse/SPARK-21043) | Add unionByName API to Dataset |  Major | SQL | Reynold Xin | Takeshi Yamamuro |
| [SPARK-21421](https://issues.apache.org/jira/browse/SPARK-21421) | Add the query id as a local property to allow source and sink using it |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-21221](https://issues.apache.org/jira/browse/SPARK-21221) | CrossValidator and TrainValidationSplit Persist Nested Estimators such as OneVsRest |  Major | ML | Ajay Saini | Ajay Saini |
| [SPARK-20090](https://issues.apache.org/jira/browse/SPARK-20090) | Add StructType.fieldNames to Python API |  Trivial | PySpark, SQL | Joseph K. Bradley | Hyukjin Kwon |
| [SPARK-20601](https://issues.apache.org/jira/browse/SPARK-20601) | Python API Changes for Constrained Logistic Regression Params |  Major | ML, PySpark | Bryan Cutler | Maciej Szymkiewicz |
| [SPARK-21633](https://issues.apache.org/jira/browse/SPARK-21633) | Unary Transformer in Python |  Major | ML | Ajay Saini | Ajay Saini |
| [SPARK-21542](https://issues.apache.org/jira/browse/SPARK-21542) | Helper functions for custom Python Persistence |  Major | ML, PySpark | Ajay Saini | Ajay Saini |
| [SPARK-21519](https://issues.apache.org/jira/browse/SPARK-21519) | Add an option to the JDBC data source to initialize the environment of the remote database session |  Minor | SQL | Luca Canali | Luca Canali |
| [SPARK-16742](https://issues.apache.org/jira/browse/SPARK-16742) | Kerberos support for Spark on Mesos |  Major | Mesos | Michael Gummelt | Arthur Rand |
| [SPARK-21468](https://issues.apache.org/jira/browse/SPARK-21468) | FeatureHasher Python API |  Major | ML, PySpark | Nick Pentreath | Nick Pentreath |
| [SPARK-21499](https://issues.apache.org/jira/browse/SPARK-21499) | Support creating persistent function for Spark UDAF(UserDefinedAggregateFunction) |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-20812](https://issues.apache.org/jira/browse/SPARK-20812) | Add Mesos Secrets support to the spark dispatcher |  Major | Mesos | Michael Gummelt | Arthur Rand |
| [SPARK-21726](https://issues.apache.org/jira/browse/SPARK-21726) | Check for structural integrity of the plan in QO in test mode |  Major | SQL | Reynold Xin | Liang-Chi Hsieh |
| [SPARK-4131](https://issues.apache.org/jira/browse/SPARK-4131) | Support "Writing data into the filesystem from queries" |  Critical | SQL | XiaoJing wang | jane |
| [SPARK-14516](https://issues.apache.org/jira/browse/SPARK-14516) | Clustering evaluator |  Major | ML | zhengruifeng | Marco Gaido |
| [SPARK-21027](https://issues.apache.org/jira/browse/SPARK-21027) | Parallel One vs. Rest Classifier |  Major | PySpark | Ajay Saini | Ajay Saini |
| [SPARK-21854](https://issues.apache.org/jira/browse/SPARK-21854) | Python interface for MLOR summary |  Major | ML, PySpark | Weichen Xu | Ming Jiang |
| [SPARK-22160](https://issues.apache.org/jira/browse/SPARK-22160) | Allow changing sample points per partition in range shuffle exchange |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-21840](https://issues.apache.org/jira/browse/SPARK-21840) | Allow multiple SparkSubmit invocations in same JVM without polluting system properties |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-22131](https://issues.apache.org/jira/browse/SPARK-22131) | Add Mesos Secrets Support to the Mesos Driver |  Major | Mesos | Arthur Rand | Susan X. Huynh |
| [SPARK-21911](https://issues.apache.org/jira/browse/SPARK-21911) | Parallel Model Evaluation for ML Tuning: PySpark |  Major | ML, PySpark | Weichen Xu | Weichen Xu |
| [SPARK-22181](https://issues.apache.org/jira/browse/SPARK-22181) | ReplaceExceptWithFilter if one or both of the datasets are fully derived out of Filters from a same parent |  Minor | Optimizer, SQL | Sathiya Kumar | Sathiya Kumar |
| [SPARK-22456](https://issues.apache.org/jira/browse/SPARK-22456) | Add new function dayofweek |  Major | PySpark, SQL | Michael Styles | Michael Styles |
| [SPARK-20542](https://issues.apache.org/jira/browse/SPARK-20542) | Add an API into Bucketizer that can bin a lot of columns all at once |  Major | ML | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-19606](https://issues.apache.org/jira/browse/SPARK-19606) | Support constraints in spark-dispatcher |  Major | Mesos | Philipp Hoffmann | paul mackles |
| [SPARK-21842](https://issues.apache.org/jira/browse/SPARK-21842) | Support Kerberos ticket renewal and creation in Mesos |  Major | Mesos | Arthur Rand | Arthur Rand |
| [SPARK-22521](https://issues.apache.org/jira/browse/SPARK-22521) | VectorIndexerModel support handle unseen categories via handleInvalid: Python API |  Major | ML | Weichen Xu | Weichen Xu |
| [SPARK-3181](https://issues.apache.org/jira/browse/SPARK-3181) | Add Robust Regression Algorithm with Huber Estimator |  Major | ML | Fan Jiang | Yanbo Liang |
| [SPARK-22781](https://issues.apache.org/jira/browse/SPARK-22781) | Support creating streaming dataset with ORC files |  Major | Structured Streaming | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-21208](https://issues.apache.org/jira/browse/SPARK-21208) | Ability to "setLocalProperty" from sc, in sparkR |  Major | SparkR | Karuppayya | Hyukjin Kwon |
| [SPARK-22734](https://issues.apache.org/jira/browse/SPARK-22734) | VectorSizeHint Python API |  Major | ML, PySpark | Bago Amirbekian | Bago Amirbekian |
| [SPARK-20960](https://issues.apache.org/jira/browse/SPARK-20960) | make ColumnVector public |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-16060](https://issues.apache.org/jira/browse/SPARK-16060) | Vectorized ORC reader |  Major | SQL | Liang-Chi Hsieh | Dongjoon Hyun |
| [SPARK-23008](https://issues.apache.org/jira/browse/SPARK-23008) | OnehotEncoderEstimator python API |  Major | ML | Weichen Xu | Weichen Xu |
| [SPARK-12139](https://issues.apache.org/jira/browse/SPARK-12139) | REGEX Column Specification for Hive Queries |  Minor | SQL | Derek Sabry | jane |
| [SPARK-15689](https://issues.apache.org/jira/browse/SPARK-15689) | Data source API v2 |  Major | SQL | Reynold Xin | Wenchen Fan |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-20350](https://issues.apache.org/jira/browse/SPARK-20350) | Apply Complementation Laws during boolean expression simplification |  Major | Optimizer | Michael Styles | Michael Styles |
| [SPARK-20375](https://issues.apache.org/jira/browse/SPARK-20375) | R wrappers for array and map |  Minor | SparkR | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-20371](https://issues.apache.org/jira/browse/SPARK-20371) | R wrappers for collect\_list and collect\_set |  Minor | SparkR | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-20438](https://issues.apache.org/jira/browse/SPARK-20438) | R wrappers for split and repeat |  Major | SparkR | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-20437](https://issues.apache.org/jira/browse/SPARK-20437) | R wrappers for rollup and cube |  Minor | SparkR | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-20425](https://issues.apache.org/jira/browse/SPARK-20425) | Support an extended display mode to print a column data per line |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-20533](https://issues.apache.org/jira/browse/SPARK-20533) | SparkR Wrappers Model should be private and value should be lazy |  Minor | SparkR | Miao Wang | Miao Wang |
| [SPARK-20493](https://issues.apache.org/jira/browse/SPARK-20493) | De-deuplicate parse logics for DDL-like type string in R |  Major | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-20535](https://issues.apache.org/jira/browse/SPARK-20535) | R wrappers for explode\_outer and posexplode\_outer |  Minor | SparkR | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-20490](https://issues.apache.org/jira/browse/SPARK-20490) | Add eqNullSafe, not and ! to SparkR |  Major | SparkR | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-20290](https://issues.apache.org/jira/browse/SPARK-20290) | PySpark Column should provide eqNullSafe |  Minor | PySpark, SQL | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-20463](https://issues.apache.org/jira/browse/SPARK-20463) | Add support for IS [NOT] DISTINCT FROM to SPARK SQL |  Major | SQL | Michael Styles | Michael Styles |
| [SPARK-20532](https://issues.apache.org/jira/browse/SPARK-20532) | SparkR should provide grouping and grouping\_id |  Minor | SparkR | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-16957](https://issues.apache.org/jira/browse/SPARK-16957) | Use weighted midpoints for split values. |  Minor | MLlib | Vladimir Feinberg | Yan Facai (颜发才) |
| [SPARK-20544](https://issues.apache.org/jira/browse/SPARK-20544) | R wrapper for input\_file\_name |  Minor | SparkR | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-20566](https://issues.apache.org/jira/browse/SPARK-20566) | ColumnVector should support \`appendFloats\` for array |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-20495](https://issues.apache.org/jira/browse/SPARK-20495) | Add StorageLevel to cacheTable API |  Major | SQL | Xiao Li | madhukara phatak |
| [SPARK-20614](https://issues.apache.org/jira/browse/SPARK-20614) | Use the same log4j configuration with Jenkins in AppVeyor |  Major | Project Infra | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-20484](https://issues.apache.org/jira/browse/SPARK-20484) | Add documentation to ALS code |  Minor | ML, MLlib | Daniel Li | Daniel Li |
| [SPARK-7481](https://issues.apache.org/jira/browse/SPARK-7481) | Add spark-hadoop-cloud module to pull in object store support |  Major | Build | Steve Loughran | Steve Loughran |
| [SPARK-16931](https://issues.apache.org/jira/browse/SPARK-16931) | PySpark access to data-frame bucketing api |  Major | PySpark, SQL | Greg Bowyer | Maciej Szymkiewicz |
| [SPARK-20519](https://issues.apache.org/jira/browse/SPARK-20519) | When the input parameter is null,  may be a runtime exception occurs |  Trivial | Spark Core, SQL | liuxian | liuxian |
| [SPARK-20550](https://issues.apache.org/jira/browse/SPARK-20550) | R wrappers for Dataset.alias |  Minor | SparkR | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-20355](https://issues.apache.org/jira/browse/SPARK-20355) | Display Spark version on history page |  Minor | Spark Core, Web UI | Sanket Reddy | Sanket Reddy |
| [SPARK-20670](https://issues.apache.org/jira/browse/SPARK-20670) | Simplify FPGrowth transform |  Minor | ML | yuhao yang | yuhao yang |
| [SPARK-20668](https://issues.apache.org/jira/browse/SPARK-20668) | Modify ScalaUDF to handle nullability. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-20416](https://issues.apache.org/jira/browse/SPARK-20416) | Column names inconsistent for UDFs in SQL vs Dataset |  Minor | SQL | Jacek Laskowski | Takeshi Yamamuro |
| [SPARK-20431](https://issues.apache.org/jira/browse/SPARK-20431) | Support a DDL-formatted string in DataFrameReader.schema |  Minor | SQL, Structured Streaming | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-20619](https://issues.apache.org/jira/browse/SPARK-20619) | StringIndexer supports multiple ways of label ordering |  Major | ML | Wayne Zhang | Wayne Zhang |
| [SPARK-20639](https://issues.apache.org/jira/browse/SPARK-20639) | Add single argument support for to\_timestamp in SQL |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-19951](https://issues.apache.org/jira/browse/SPARK-19951) | Add string concatenate operator \|\| to Spark SQL |  Minor | SQL | Herman van Hovell | Takeshi Yamamuro |
| [SPARK-20726](https://issues.apache.org/jira/browse/SPARK-20726) | R wrapper for SQL broadcast |  Minor | SparkR | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-20720](https://issues.apache.org/jira/browse/SPARK-20720) | 'Executor Summary' should show the exact number, 'Removed Executors' should display the specific number, in the Application Page |  Trivial | Web UI | guoxiaolongzte | guoxiaolongzte |
| [SPARK-20730](https://issues.apache.org/jira/browse/SPARK-20730) | Add a new Optimizer rule to combine nested Concats |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-20779](https://issues.apache.org/jira/browse/SPARK-20779) | The ASF header placed in an incorrect location in some files |  Trivial | Examples | zuotingbing | zuotingbing |
| [SPARK-20806](https://issues.apache.org/jira/browse/SPARK-20806) | Launcher: redundant check for Spark lib dir |  Trivial | Deploy, Spark Submit | Phoenix\_Dad | Sean Owen |
| [SPARK-20736](https://issues.apache.org/jira/browse/SPARK-20736) | PySpark StringIndexer supports StringOrderType |  Major | PySpark | Wayne Zhang | Wayne Zhang |
| [SPARK-15648](https://issues.apache.org/jira/browse/SPARK-15648) | add TeradataDialect |  Minor | SQL | lihongli | Kirby Linvill |
| [SPARK-20861](https://issues.apache.org/jira/browse/SPARK-20861) | Pyspark CrossValidator & TrainValidationSplit should delegate parameter looping to estimators |  Minor | ML, PySpark | Bago Amirbekian | Bago Amirbekian |
| [SPARK-20775](https://issues.apache.org/jira/browse/SPARK-20775) | from\_json should also have an API where the schema is specified with a string |  Major | SQL | Burak Yavuz | Ruben Janssen |
| [SPARK-14659](https://issues.apache.org/jira/browse/SPARK-14659) | OneHotEncoder support drop first category alphabetically in the encoded vector |  Major | ML | Yanbo Liang | Wayne Zhang |
| [SPARK-20849](https://issues.apache.org/jira/browse/SPARK-20849) | Document R DecisionTree |  Minor | Documentation, SparkR | zhengruifeng | zhengruifeng |
| [SPARK-20887](https://issues.apache.org/jira/browse/SPARK-20887) | support alternative keys in ConfigBuilder |  Major | Spark Core | Wenchen Fan | Wenchen Fan |
| [SPARK-20835](https://issues.apache.org/jira/browse/SPARK-20835) | It should exit directly when the --total-executor-cores parameter is setted less than 0 when submit a application |  Minor | Spark Core | eaton | eaton |
| [SPARK-20014](https://issues.apache.org/jira/browse/SPARK-20014) | Optimize mergeSpillsWithFileStream method |  Major | Spark Core | Sital Kedia | Sital Kedia |
| [SPARK-20875](https://issues.apache.org/jira/browse/SPARK-20875) | Spark should print the log when the directory has been deleted |  Trivial | Spark Core | liuzhaokun | liuzhaokun |
| [SPARK-20758](https://issues.apache.org/jira/browse/SPARK-20758) | Add Constant propagation optimization |  Minor | SQL | Tejas Patil | Tejas Patil |
| [SPARK-20883](https://issues.apache.org/jira/browse/SPARK-20883) | Improve StateStore APIs for efficiency |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-20109](https://issues.apache.org/jira/browse/SPARK-20109) | Need a way to convert from IndexedRowMatrix to Dense Block Matrices |  Minor | MLlib | John Compitello | John Compitello |
| [SPARK-19236](https://issues.apache.org/jira/browse/SPARK-19236) | Add createOrReplaceGlobalTempView |  Minor | SQL | Arman Yazdani | Arman Yazdani |
| [SPARK-19732](https://issues.apache.org/jira/browse/SPARK-19732) | DataFrame.fillna() does not work for bools in PySpark |  Minor | PySpark | Len Frodgers | Ruben Berenguel |
| [SPARK-20936](https://issues.apache.org/jira/browse/SPARK-20936) | Lack of an important case about the test of resolveURI |  Trivial | Tests | zuotingbing | zuotingbing |
| [SPARK-20930](https://issues.apache.org/jira/browse/SPARK-20930) |  Destroy broadcasted centers after computing cost |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-20981](https://issues.apache.org/jira/browse/SPARK-20981) | Add --repositories equivalent configuration for Spark |  Minor | Spark Submit | Saisai Shao | Saisai Shao |
| [SPARK-20985](https://issues.apache.org/jira/browse/SPARK-20985) | Improve KryoSerializerResizableOutputSuite |  Trivial | Spark Core | jin xing | jin xing |
| [SPARK-20972](https://issues.apache.org/jira/browse/SPARK-20972) | rename HintInfo.isBroadcastable to broadcast |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-20966](https://issues.apache.org/jira/browse/SPARK-20966) | Table data is not sorted by startTime time desc, time is not formatted and redundant code in JDBC/ODBC Server page. |  Minor | Web UI | guoxiaolongzte | guoxiaolongzte |
| [SPARK-20995](https://issues.apache.org/jira/browse/SPARK-20995) | 'Spark-env.sh.template' should add 'YARN\_CONF\_DIR' configuration instructions. |  Trivial | Spark Core | guoxiaolongzte | guoxiaolongzte |
| [SPARK-20918](https://issues.apache.org/jira/browse/SPARK-20918) | Use FunctionIdentifier as function identifiers in FunctionRegistry |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-18891](https://issues.apache.org/jira/browse/SPARK-18891) | Support for specific collection types |  Critical | SQL | Michael Armbrust | Michal Šenkýř |
| [SPARK-20715](https://issues.apache.org/jira/browse/SPARK-20715) | MapStatuses shouldn't be redundantly stored in both ShuffleMapStage and MapOutputTracker |  Major | Scheduler, Shuffle | Josh Rosen | Josh Rosen |
| [SPARK-21039](https://issues.apache.org/jira/browse/SPARK-21039) | Use treeAggregate instead of aggregate in DataFrame.stat.bloomFilter |  Minor | Spark Core | Lovasoa | Lovasoa |
| [SPARK-21060](https://issues.apache.org/jira/browse/SPARK-21060) | Css style about paging function is error in the executor page. |  Minor | Web UI | guoxiaolongzte | guoxiaolongzte |
| [SPARK-21091](https://issues.apache.org/jira/browse/SPARK-21091) | Move constraint code into QueryPlanConstraints |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-20994](https://issues.apache.org/jira/browse/SPARK-20994) | Alleviate memory pressure in StreamManager |  Major | Spark Core | jin xing | jin xing |
| [SPARK-19975](https://issues.apache.org/jira/browse/SPARK-19975) | Add map\_keys and map\_values functions  to Python |  Major | PySpark, SQL | Maciej Bryński | Yong Tang |
| [SPARK-21103](https://issues.apache.org/jira/browse/SPARK-21103) | QueryPlanConstraints should be part of LogicalPlan |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-10655](https://issues.apache.org/jira/browse/SPARK-10655) | Enhance DB2 dialect to handle XML, and DECIMAL , and DECFLOAT |  Major | SQL | Suresh Thalamati | Suresh Thalamati |
| [SPARK-21125](https://issues.apache.org/jira/browse/SPARK-21125) | PySpark context missing function to set Job Description. |  Trivial | PySpark | Shane Jarvie | Shane Jarvie |
| [SPARK-20830](https://issues.apache.org/jira/browse/SPARK-20830) | PySpark wrappers for explode\_outer and posexplode\_outer |  Major | PySpark, SQL | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-20599](https://issues.apache.org/jira/browse/SPARK-20599) | ConsoleSink should work with write (batch) |  Minor | SQL, Structured Streaming | Jacek Laskowski | Lubo Zhang |
| [SPARK-19937](https://issues.apache.org/jira/browse/SPARK-19937) | Collect metrics of block sizes when shuffle. |  Major | Shuffle | jin xing | jin xing |
| [SPARK-21174](https://issues.apache.org/jira/browse/SPARK-21174) | Validate sampling fraction in logical operator level |  Minor | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-21115](https://issues.apache.org/jira/browse/SPARK-21115) | If the cores left is less than the coresPerExecutor,the cores left will not be allocated, so it should not to check in every schedule |  Minor | Spark Core | eaton | eaton |
| [SPARK-21193](https://issues.apache.org/jira/browse/SPARK-21193) | Specify Pandas version in setup.py |  Minor | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-21149](https://issues.apache.org/jira/browse/SPARK-21149) | Add job description API for R |  Minor | SparkR | Felix Cheung | Hyukjin Kwon |
| [SPARK-21192](https://issues.apache.org/jira/browse/SPARK-21192) | Preserve State Store provider class configuration across StreamingQuery restarts |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-21164](https://issues.apache.org/jira/browse/SPARK-21164) | Remove isTableSample from Sample and isGenerated from Alias and AttributeReference |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-21189](https://issues.apache.org/jira/browse/SPARK-21189) | Handle unknown error codes in Jenkins rather then leaving incomplete comment in PRs |  Trivial | Project Infra | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-21153](https://issues.apache.org/jira/browse/SPARK-21153) | Time windowing for tumbling windows can use a project instead of expand + filter |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-21196](https://issues.apache.org/jira/browse/SPARK-21196) | Split codegen info of query plan into sequence |  Minor | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-21155](https://issues.apache.org/jira/browse/SPARK-21155) | Add (? running tasks) into Spark UI progress |  Minor | Web UI | Eric Vandenberg | Eric Vandenberg |
| [SPARK-21222](https://issues.apache.org/jira/browse/SPARK-21222) | Move elimination of Distinct clause from analyzer to optimizer |  Minor | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-21229](https://issues.apache.org/jira/browse/SPARK-21229) | remove QueryPlan.preCanonicalized |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-21238](https://issues.apache.org/jira/browse/SPARK-21238) | allow nested SQL execution |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-21240](https://issues.apache.org/jira/browse/SPARK-21240) | Fix code style for constructing and stopping a SparkContext in UT |  Trivial | Spark Core | jin xing | jin xing |
| [SPARK-21135](https://issues.apache.org/jira/browse/SPARK-21135) | On history server page，duration of incompleted applications should be hidden instead of showing up as 0 |  Minor | Web UI | Jinhua Fu | Jinhua Fu |
| [SPARK-17924](https://issues.apache.org/jira/browse/SPARK-17924) | Consolidate streaming and batch write path |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-21273](https://issues.apache.org/jira/browse/SPARK-21273) | Decouple stats propagation from logical plan |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-21275](https://issues.apache.org/jira/browse/SPARK-21275) | Update GLM test to use supportedFamilyNames |  Minor | ML | Wayne Zhang | Wayne Zhang |
| [SPARK-21260](https://issues.apache.org/jira/browse/SPARK-21260) | Remove the unused OutputFakerExec |  Trivial | SQL | Jiang Xingbo | Jiang Xingbo |
| [SPARK-19852](https://issues.apache.org/jira/browse/SPARK-19852) | StringIndexer.setHandleInvalid should have another option 'new': Python API and docs |  Minor | ML, PySpark | Joseph K. Bradley | Vincent |
| [SPARK-21250](https://issues.apache.org/jira/browse/SPARK-21250) | Add a url in the table of 'Running Executors'  in worker page to visit job page |  Minor | Web UI | guoxiaolongzte | guoxiaolongzte |
| [SPARK-21137](https://issues.apache.org/jira/browse/SPARK-21137) | Spark reads many small files slowly off local filesystem |  Minor | Spark Core | sam | Sean Owen |
| [SPARK-20073](https://issues.apache.org/jira/browse/SPARK-20073) | Unexpected Cartesian product when using eqNullSafe in join with a derived table |  Major | SQL | Everett Anderson | Takeshi Yamamuro |
| [SPARK-21296](https://issues.apache.org/jira/browse/SPARK-21296) | Avoid per-record type dispatch in PySpark createDataFrame schema verification |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-21268](https://issues.apache.org/jira/browse/SPARK-21268) | Move center calculations to a distributed map in KMeans |  Trivial | MLlib | Guillaume Dardelet | Guillaume Dardelet |
| [SPARK-21295](https://issues.apache.org/jira/browse/SPARK-21295) | Confusing error message for missing references |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-21304](https://issues.apache.org/jira/browse/SPARK-21304) | remove unnecessary isNull variable for collection related encoder expressions |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-18623](https://issues.apache.org/jira/browse/SPARK-18623) | Add \`returnNullable\` to \`StaticInvoke\` and modify it to handle properly. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-20383](https://issues.apache.org/jira/browse/SPARK-20383) | SparkSQL unsupports to create function with the keyword 'OR REPLACE' and 'IF NOT EXISTS' |  Major | SQL | Xiaochen Ouyang | Xiaochen Ouyang |
| [SPARK-19439](https://issues.apache.org/jira/browse/SPARK-19439) | PySpark's registerJavaFunction Should Support UDAFs |  Major | PySpark | Keith Bourgoin | Jeff Zhang |
| [SPARK-21308](https://issues.apache.org/jira/browse/SPARK-21308) | Remove SQLConf parameters from the optimizer |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-21012](https://issues.apache.org/jira/browse/SPARK-21012) | Support glob path for resources adding to Spark |  Minor | Spark Submit | Saisai Shao | Saisai Shao |
| [SPARK-20950](https://issues.apache.org/jira/browse/SPARK-20950) | add a new config to diskWriteBufferSize which is hard coded before |  Trivial | Spark Core | caoxuewen | caoxuewen |
| [SPARK-21323](https://issues.apache.org/jira/browse/SPARK-21323) | Rename sql.catalyst.plans.logical.statsEstimation.Range to ValueInterval |  Trivial | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-21267](https://issues.apache.org/jira/browse/SPARK-21267) | Improvements to the Structured Streaming programming guide |  Major | Documentation, Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-20946](https://issues.apache.org/jira/browse/SPARK-20946) | Do not update conf for existing SparkContext in SparkSession.getOrCreate |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-21329](https://issues.apache.org/jira/browse/SPARK-21329) | Make EventTimeWatermarkExec explicitly UnaryExecNode |  Trivial | Structured Streaming | Jacek Laskowski | Jacek Laskowski |
| [SPARK-21326](https://issues.apache.org/jira/browse/SPARK-21326) | Use TextFileFormat in implementation of LibSVMFileFormat |  Major | ML, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-21217](https://issues.apache.org/jira/browse/SPARK-21217) | Support ColumnVector.Array.to\<type\>Array() |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-21313](https://issues.apache.org/jira/browse/SPARK-21313) | ConsoleSink's string representation |  Trivial | Structured Streaming | Jacek Laskowski | Jacek Laskowski |
| [SPARK-21285](https://issues.apache.org/jira/browse/SPARK-21285) | VectorAssembler should report the column name when data type used is not supported |  Minor | ML, MLlib | Jacek Laskowski | Yan Facai (颜发才) |
| [SPARK-19358](https://issues.apache.org/jira/browse/SPARK-19358) | LiveListenerBus shall log the event name when dropping them due to a fully filled queue |  Trivial | Spark Core | Nan Zhu | Nan Zhu |
| [SPARK-21100](https://issues.apache.org/jira/browse/SPARK-21100) | Add summary method as alternative to describe that gives quartiles similar to Pandas |  Minor | SQL | Andrew Ray | Andrew Ray |
| [SPARK-20379](https://issues.apache.org/jira/browse/SPARK-20379) | Allow setting SSL-related passwords through env variables |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-20307](https://issues.apache.org/jira/browse/SPARK-20307) | SparkR: pass on setHandleInvalid to spark.mllib functions that use StringIndexer |  Minor | SparkR | Anne Rutten | Miao Wang |
| [SPARK-20460](https://issues.apache.org/jira/browse/SPARK-20460) | Make it more consistent to handle column name duplication |  Trivial | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-21266](https://issues.apache.org/jira/browse/SPARK-21266) | Support schema a DDL-formatted string in dapply/gapply/from\_json |  Minor | PySpark, SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-21358](https://issues.apache.org/jira/browse/SPARK-21358) | Argument of repartitionandsortwithinpartitions at pyspark |  Minor | Documentation, Examples | chie hayashida | chie hayashida |
| [SPARK-21315](https://issues.apache.org/jira/browse/SPARK-21315) | Skip some spill files when generateIterator(startIndex) in ExternalAppendOnlyUnsafeRowArray. |  Major | SQL | jin xing | jin xing |
| [SPARK-20331](https://issues.apache.org/jira/browse/SPARK-20331) | Broaden support for Hive partition pruning predicate pushdown |  Major | SQL | Michael Allman | Michael Allman |
| [SPARK-21365](https://issues.apache.org/jira/browse/SPARK-21365) | Deduplicate logics parsing DDL-like type definition |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-16019](https://issues.apache.org/jira/browse/SPARK-16019) | Eliminate unexpected delay during spark on yarn job launch |  Minor | YARN | Olasoji | Marcelo Vanzin |
| [SPARK-19285](https://issues.apache.org/jira/browse/SPARK-19285) | Java - Provide user-defined function of 0 arguments (UDF0) |  Major | SQL | Amit Baghel | Xiao Li |
| [SPARK-21146](https://issues.apache.org/jira/browse/SPARK-21146) | Master/Worker should handle and shutdown when any thread gets UncaughtException |  Major | Spark Core | Devaraj K | Devaraj K |
| [SPARK-20842](https://issues.apache.org/jira/browse/SPARK-20842) | Upgrade to 1.2.2 for Hive Metastore Client 1.2 |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-21382](https://issues.apache.org/jira/browse/SPARK-21382) | The note about  Scala 2.10 in building-spark.md is wrong. |  Trivial | Build | liuzhaokun | liuzhaokun |
| [SPARK-21305](https://issues.apache.org/jira/browse/SPARK-21305) | The BKM (best known methods) of using native BLAS to improvement ML/MLLIB performance |  Minor | Documentation, ML | Peng Meng | Peng Meng |
| [SPARK-18619](https://issues.apache.org/jira/browse/SPARK-18619) | Make QuantileDiscretizer/Bucketizer/StringIndexer inherit from HasHandleInvalid |  Minor | ML | Yanbo Liang | zhengruifeng |
| [SPARK-21373](https://issues.apache.org/jira/browse/SPARK-21373) | Update Jetty to 9.3.20.v20170531 |  Minor | Spark Core | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-20376](https://issues.apache.org/jira/browse/SPARK-20376) | Make StateStoreProvider plugable |  Major | Structured Streaming | Yogesh Mahajan | Tathagata Das |
| [SPARK-21321](https://issues.apache.org/jira/browse/SPARK-21321) | Spark very verbose on shutdown confusing users |  Minor | Spark Core | Jong Yoon Lee | Jong Yoon Lee |
| [SPARK-21410](https://issues.apache.org/jira/browse/SPARK-21410) | In RangePartitioner(partitions: Int, rdd: RDD[]), RangePartitioner.numPartitions is wrong if the number of elements in RDD (rdd.count()) is less than number of partitions (partitions in constructor). |  Minor | Spark Core | APeng Zhang | APeng Zhang |
| [SPARK-21409](https://issues.apache.org/jira/browse/SPARK-21409) | Expose state store memory usage in SQL metrics and progress updates |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-21415](https://issues.apache.org/jira/browse/SPARK-21415) | Triage scapegoat warnings, part 1 |  Minor | GraphX, ML, Spark Core, SQL, Structured Streaming | Sean Owen | Sean Owen |
| [SPARK-21408](https://issues.apache.org/jira/browse/SPARK-21408) | Default RPC dispatcher thread pool size too large for small executors |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-21435](https://issues.apache.org/jira/browse/SPARK-21435) | Empty files should be skipped while write to file |  Minor | SQL | Li Yuanjian | Li Yuanjian |
| [SPARK-21401](https://issues.apache.org/jira/browse/SPARK-21401) | add poll function for BoundedPriorityQueue |  Minor | ML, MLlib | Peng Meng | Peng Meng |
| [SPARK-10216](https://issues.apache.org/jira/browse/SPARK-10216) | Avoid creating empty files during overwrite into Hive table with group by query |  Minor | SQL | Keuntae Park | Hyukjin Kwon |
| [SPARK-21243](https://issues.apache.org/jira/browse/SPARK-21243) | Limit the number of maps in a single shuffle fetch |  Minor | Spark Core | Dhruve Ashar | Dhruve Ashar |
| [SPARK-21477](https://issues.apache.org/jira/browse/SPARK-21477) | Mark LocalTableScanExec's input data transient |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-21472](https://issues.apache.org/jira/browse/SPARK-21472) | Introduce ArrowColumnVector as a reader for Arrow vectors. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-21142](https://issues.apache.org/jira/browse/SPARK-21142) | spark-streaming-kafka-0-10 has too fat dependency on kafka |  Minor | DStreams | Tim Van Wassenhove | Tim Van Wassenhove |
| [SPARK-21434](https://issues.apache.org/jira/browse/SPARK-21434) | Add PySpark pip documentation |  Minor | Documentation, PySpark | holdenk | holdenk |
| [SPARK-20871](https://issues.apache.org/jira/browse/SPARK-20871) | Only log Janino code in debug mode |  Trivial | SQL | Glen Takahashi | PJ Fanning |
| [SPARK-21175](https://issues.apache.org/jira/browse/SPARK-21175) | shuffle service should reject fetch requests if there are already many requests in progress |  Major | Shuffle | jin xing | jin xing |
| [SPARK-21491](https://issues.apache.org/jira/browse/SPARK-21491) | Performance enhancement: eliminate creation of intermediate collections |  Trivial | GraphX | Iurii Antykhovych | Iurii Antykhovych |
| [SPARK-21517](https://issues.apache.org/jira/browse/SPARK-21517) | Fetch local data via block manager cause oom |  Major | Block Manager, Spark Core | zhoukang | zhoukang |
| [SPARK-21524](https://issues.apache.org/jira/browse/SPARK-21524) | ValidatorParamsSuiteHelpers generates wrong temp files |  Minor | ML | yuhao yang | yuhao yang |
| [SPARK-21530](https://issues.apache.org/jira/browse/SPARK-21530) | Update description of spark.shuffle.maxChunksBeingTransferred |  Major | Shuffle | Thomas Graves | jin xing |
| [SPARK-19270](https://issues.apache.org/jira/browse/SPARK-19270) | Add summary table to GLM summary |  Minor | ML | Wayne Zhang | Wayne Zhang |
| [SPARK-21538](https://issues.apache.org/jira/browse/SPARK-21538) | Attribute resolution inconsistency in Dataset API |  Major | SQL | Adrian Ionescu | Anton Okolnychyi |
| [SPARK-21553](https://issues.apache.org/jira/browse/SPARK-21553) | Add the description of the default value of master parameter in the spark-shell |  Trivial | Spark Shell | Donghui Xu | Donghui Xu |
| [SPARK-21256](https://issues.apache.org/jira/browse/SPARK-21256) | Add WithSQLConf to Catalyst Test |  Major | Tests | Xiao Li | Xiao Li |
| [SPARK-21297](https://issues.apache.org/jira/browse/SPARK-21297) | Add count in 'JDBC/ODBC Server' page. |  Trivial | Web UI | guoxiaolongzte | guoxiaolongzte |
| [SPARK-21575](https://issues.apache.org/jira/browse/SPARK-21575) | Eliminate needless synchronization in java-R serialization |  Trivial | SparkR | Iurii Antykhovych | Iurii Antykhovych |
| [SPARK-21381](https://issues.apache.org/jira/browse/SPARK-21381) | SparkR: pass on setHandleInvalid for classification algorithms |  Major | SparkR | Miao Wang | Miao Wang |
| [SPARK-21589](https://issues.apache.org/jira/browse/SPARK-21589) | Add documents about unsupported functions in Hive UDF/UDTF/UDAF |  Minor | Documentation, SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-21388](https://issues.apache.org/jira/browse/SPARK-21388) | GBT inherit from HasStepSize & LInearSVC/Binarizer from HasThreshold |  Major | ML, PySpark | zhengruifeng | zhengruifeng |
| [SPARK-21592](https://issues.apache.org/jira/browse/SPARK-21592) | Skip maven-compiler-plugin main and test compilations in Maven build |  Minor | Build | Grzegorz Slowikowski | Grzegorz Slowikowski |
| [SPARK-21578](https://issues.apache.org/jira/browse/SPARK-21578) | Add JavaSparkContextSuite |  Minor | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-21604](https://issues.apache.org/jira/browse/SPARK-21604) | if the object extends Logging, i suggest to remove the var LOG which is useless. |  Trivial | SQL | zuotingbing | zuotingbing |
| [SPARK-21611](https://issues.apache.org/jira/browse/SPARK-21611) | Error class name for log in several classes. |  Trivial | SQL | zuotingbing | zuotingbing |
| [SPARK-21602](https://issues.apache.org/jira/browse/SPARK-21602) | Add map\_keys and map\_values functions to R |  Major | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-21634](https://issues.apache.org/jira/browse/SPARK-21634) | Change OneRowRelation from a case object to case class |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-21640](https://issues.apache.org/jira/browse/SPARK-21640) | Method mode with String parameters within DataFrameWriter is error prone |  Trivial | SQL | Alberto | Alberto |
| [SPARK-21622](https://issues.apache.org/jira/browse/SPARK-21622) | Support Offset in SparkR |  Major | SparkR | Wayne Zhang | Wayne Zhang |
| [SPARK-13041](https://issues.apache.org/jira/browse/SPARK-13041) | Add a driver history ui link and a mesos sandbox link on the dispatcher's ui page for each driver |  Minor | Mesos | Stavros Kontopoulos | Stavros Kontopoulos |
| [SPARK-21623](https://issues.apache.org/jira/browse/SPARK-21623) | Comments of parentStats on ml/tree/impl/DTStatsAggregator.scala is wrong |  Trivial | ML | Peng Meng | Peng Meng |
| [SPARK-21544](https://issues.apache.org/jira/browse/SPARK-21544) | Test jar of some module should not install or deploy twice |  Minor | Deploy | zhoukang | zhoukang |
| [SPARK-20894](https://issues.apache.org/jira/browse/SPARK-20894) | Error while checkpointing to HDFS |  Major | Structured Streaming | kant kodali | Shixiong Zhu |
| [SPARK-20433](https://issues.apache.org/jira/browse/SPARK-20433) | Update jackson-databind to 2.6.7.1 |  Minor | Spark Core | Andrew Ash | Sean Owen |
| [SPARK-21608](https://issues.apache.org/jira/browse/SPARK-21608) | Window rangeBetween() API should allow literal boundary |  Major | SQL | Jiang Xingbo | Jiang Xingbo |
| [SPARK-9221](https://issues.apache.org/jira/browse/SPARK-9221) | Support IntervalType in Range Frame |  Major | SQL | Herman van Hovell | Jiang Xingbo |
| [SPARK-21665](https://issues.apache.org/jira/browse/SPARK-21665) | Need to close resources  after use |  Trivial | Spark Core, YARN | Vinod KC | Vinod KC |
| [SPARK-21276](https://issues.apache.org/jira/browse/SPARK-21276) | Update  lz4-java to remove custom LZ4BlockInputStream |  Trivial | Spark Core | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-21504](https://issues.apache.org/jira/browse/SPARK-21504) | Add spark version info in table metadata |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-14932](https://issues.apache.org/jira/browse/SPARK-14932) | Allow DataFrame.replace() to replace values with None |  Minor | SQL | Nicholas Chammas | Bravo Zhang |
| [SPARK-21669](https://issues.apache.org/jira/browse/SPARK-21669) | Internal API for collecting metrics/stats during FileFormatWriter jobs |  Major | SQL | Adrian Ionescu | Adrian Ionescu |
| [SPARK-21675](https://issues.apache.org/jira/browse/SPARK-21675) | Add a navigation bar at the bottom of the Details for Stage Page |  Minor | Web UI | Kent Yao | Kent Yao |
| [SPARK-21709](https://issues.apache.org/jira/browse/SPARK-21709) | use sbt 0.13.16 and update sbt plugins |  Minor | Build | PJ Fanning | PJ Fanning |
| [SPARK-21732](https://issues.apache.org/jira/browse/SPARK-21732) | Lazily init hive metastore client |  Major | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-21603](https://issues.apache.org/jira/browse/SPARK-21603) | The wholestage codegen will be much slower then wholestage codegen is closed when the function is too long |  Major | SQL | eaton | eaton |
| [SPARK-21680](https://issues.apache.org/jira/browse/SPARK-21680) | ML/MLLIB Vector compressed optimization |  Minor | ML, MLlib | Peng Meng | Peng Meng |
| [SPARK-21566](https://issues.apache.org/jira/browse/SPARK-21566) | Python method for summary |  Major | PySpark, SQL | Andrew Ray | Andrew Ray |
| [SPARK-17414](https://issues.apache.org/jira/browse/SPARK-17414) | Set type is not supported for creating data frames |  Minor | SQL | Emre Colak |  |
| [SPARK-21773](https://issues.apache.org/jira/browse/SPARK-21773) | Should Install mkdocs if missing in the path in SQL documentation build |  Minor | Build, Documentation | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-21718](https://issues.apache.org/jira/browse/SPARK-21718) | Heavy log of type: "Skipping partition based on stats ..." |  Trivial | SQL | Gian Lorenzo Meocci | Sean Owen |
| [SPARK-21070](https://issues.apache.org/jira/browse/SPARK-21070) | Pick up cloudpickle upgrades from cloudpickle python module |  Minor | PySpark | Kyle Kelley | Kyle Kelley |
| [SPARK-21584](https://issues.apache.org/jira/browse/SPARK-21584) | Update R method for summary to call new implementation |  Major | SparkR, SQL | Andrew Ray | Andrew Ray |
| [SPARK-21803](https://issues.apache.org/jira/browse/SPARK-21803) | Remove the HiveDDLCommandSuite |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-21769](https://issues.apache.org/jira/browse/SPARK-21769) | Add a table option for Hive-serde tables to make Spark always respect schemas inferred by Spark SQL |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-10931](https://issues.apache.org/jira/browse/SPARK-10931) | PySpark ML Models should contain Param values |  Major | ML, PySpark | Joseph K. Bradley | Bryan Cutler |
| [SPARK-12664](https://issues.apache.org/jira/browse/SPARK-12664) | Expose probability, rawPrediction in MultilayerPerceptronClassificationModel |  Major | ML | Robert Dodier | Weichen Xu |
| [SPARK-21807](https://issues.apache.org/jira/browse/SPARK-21807) | The getAliasedConstraints function  in LogicalPlan will take a long time when number of expressions is greater than 100 |  Major | SQL | eaton | eaton |
| [SPARK-21694](https://issues.apache.org/jira/browse/SPARK-21694) | Support Mesos CNI network labels |  Minor | Mesos | Susan X. Huynh | Susan X. Huynh |
| [SPARK-21745](https://issues.apache.org/jira/browse/SPARK-21745) | Refactor ColumnVector hierarchy to make ColumnVector read-only and to introduce WritableColumnVector. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-21701](https://issues.apache.org/jira/browse/SPARK-21701) | Add TCP send/rcv buffer size support for RPC client |  Trivial | Spark Core | Xu Zhang | Xu Zhang |
| [SPARK-21527](https://issues.apache.org/jira/browse/SPARK-21527) | Use buffer limit in order to take advantage of  JAVA NIO Util's buffercache |  Major | Spark Core | zhoukang | zhoukang |
| [SPARK-21756](https://issues.apache.org/jira/browse/SPARK-21756) | Add JSON option to allow unquoted control characters |  Major | SQL | Bryan Chen | Vinod KC |
| [SPARK-21781](https://issues.apache.org/jira/browse/SPARK-21781) | Modify DataSourceScanExec to use concrete ColumnVector type. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-21813](https://issues.apache.org/jira/browse/SPARK-21813) | [core] Modify TaskMemoryManager.MAXIMUM\_PAGE\_SIZE\_BYTES comments |  Trivial | Spark Core | he.qiao | he.qiao |
| [SPARK-20886](https://issues.apache.org/jira/browse/SPARK-20886) | HadoopMapReduceCommitProtocol to fail with message if FileOutputCommitter.getWorkPath==null |  Trivial | Spark Core | Steve Loughran | Steve Loughran |
| [SPARK-21873](https://issues.apache.org/jira/browse/SPARK-21873) | CachedKafkaConsumer throws NonLocalReturnControl during fetching from Kafka |  Minor | Structured Streaming | Yuval Itzchakov | Yuval Itzchakov |
| [SPARK-21806](https://issues.apache.org/jira/browse/SPARK-21806) | BinaryClassificationMetrics pr(): first point (0.0, 1.0) is misleading |  Minor | MLlib | Marc Kaminski | Sean Owen |
| [SPARK-21839](https://issues.apache.org/jira/browse/SPARK-21839) | Support SQL config for ORC compression |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-21875](https://issues.apache.org/jira/browse/SPARK-21875) | Jenkins passes Java code that violates ./dev/lint-java |  Trivial | Build | Andrew Ash | Andrew Ash |
| [SPARK-11574](https://issues.apache.org/jira/browse/SPARK-11574) | Spark should support StatsD sink out of box |  Major | Spark Core | Xiaofeng Lin | Xiaofeng Lin |
| [SPARK-21583](https://issues.apache.org/jira/browse/SPARK-21583) | Create a ColumnarBatch with ArrowColumnVectors for row based iteration |  Major | SQL | Bryan Cutler | Bryan Cutler |
| [SPARK-21878](https://issues.apache.org/jira/browse/SPARK-21878) | Create SQLMetricsTestUtils |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-21886](https://issues.apache.org/jira/browse/SPARK-21886) | Use SparkSession.internalCreateDataFrame to create Dataset with LogicalRDD logical operator |  Minor | SQL | Jacek Laskowski | Jacek Laskowski |
| [SPARK-21110](https://issues.apache.org/jira/browse/SPARK-21110) | Structs should be usable in inequality filters |  Minor | SQL | Nicholas Chammas | Andrew Ray |
| [SPARK-21862](https://issues.apache.org/jira/browse/SPARK-21862) | Add overflow check in PCA |  Minor | ML | Weichen Xu | Weichen Xu |
| [SPARK-21789](https://issues.apache.org/jira/browse/SPARK-21789) | Remove obsolete codes for parsing abstract schema strings |  Minor | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-21728](https://issues.apache.org/jira/browse/SPARK-21728) | Allow SparkSubmit to use logging |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-21891](https://issues.apache.org/jira/browse/SPARK-21891) | Add TBLPROPERTIES to DDL statement: CREATE TABLE USING |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-21897](https://issues.apache.org/jira/browse/SPARK-21897) | Add unionByName API to DataFrame in Python and R |  Major | PySpark, SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-21903](https://issues.apache.org/jira/browse/SPARK-21903) | Upgrade scalastyle to 1.0.0 |  Trivial | Build | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-21901](https://issues.apache.org/jira/browse/SPARK-21901) | Define toString for StateOperatorProgress |  Trivial | Structured Streaming | Jacek Laskowski | Jacek Laskowski |
| [SPARK-13656](https://issues.apache.org/jira/browse/SPARK-13656) | Delete spark.sql.parquet.cacheMetadata |  Major | SQL | Yin Huai | Dongjoon Hyun |
| [SPARK-19866](https://issues.apache.org/jira/browse/SPARK-19866) | Add local version of Word2Vec findSynonyms for spark.ml: Python API |  Minor | ML, PySpark | Joseph K. Bradley | Xin Ren |
| [SPARK-17701](https://issues.apache.org/jira/browse/SPARK-17701) | Refactor DataSourceScanExec so its sameResult call does not compare strings |  Major | SQL | Eric Liang | Wenchen Fan |
| [SPARK-21513](https://issues.apache.org/jira/browse/SPARK-21513) | SQL to\_json should support all column types |  Major | SQL | Aaron Davidson | Jia-Xuan Liu |
| [SPARK-21963](https://issues.apache.org/jira/browse/SPARK-21963) | create temp file should be delete after use |  Trivial | Spark Core, Tests | caoxuewen | caoxuewen |
| [SPARK-21970](https://issues.apache.org/jira/browse/SPARK-21970) | Do a Project Wide Sweep for Redundant Throws Declarations |  Trivial | Examples, Spark Core, SQL | Armin Braun | Armin Braun |
| [SPARK-21973](https://issues.apache.org/jira/browse/SPARK-21973) | Add a new option to filter queries to run in TPCDSQueryBenchmark |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-21902](https://issues.apache.org/jira/browse/SPARK-21902) | BlockManager.doPut will hide actually exception when exception thrown in finally block |  Trivial | Block Manager | zhoukang | zhoukang |
| [SPARK-22002](https://issues.apache.org/jira/browse/SPARK-22002) | Read JDBC table use custom schema support specify partial fields |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-21967](https://issues.apache.org/jira/browse/SPARK-21967) | org.apache.spark.unsafe.types.UTF8String#compareTo Should Compare 8 Bytes at a Time for Better Performance |  Minor | Spark Core | Armin Braun | Armin Braun |
| [SPARK-22043](https://issues.apache.org/jira/browse/SPARK-22043) | Python profile, show\_profiles() and dump\_profiles(), should throw an error with a better message |  Trivial | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-21113](https://issues.apache.org/jira/browse/SPARK-21113) | Support for read ahead input stream to amortize disk IO cost in the Spill reader |  Minor | Spark Core | Sital Kedia | Sital Kedia |
| [SPARK-22003](https://issues.apache.org/jira/browse/SPARK-22003) | vectorized reader does not work with UDF when the column is array |  Major | SQL | Feng Liu | Feng Liu |
| [SPARK-21923](https://issues.apache.org/jira/browse/SPARK-21923) | Avoid calling reserveUnrollMemoryForThisTask for every record |  Major | Spark Core | Xianyang Liu | Xianyang Liu |
| [SPARK-18838](https://issues.apache.org/jira/browse/SPARK-18838) | High latency of event processing for large jobs |  Major | . | Sital Kedia | Marcelo Vanzin |
| [SPARK-22066](https://issues.apache.org/jira/browse/SPARK-22066) | Update checkstyle to 8.2, enable it, fix violations |  Minor | Build | Sean Owen | Sean Owen |
| [SPARK-22049](https://issues.apache.org/jira/browse/SPARK-22049) | Confusing behavior of from\_utc\_timestamp and to\_utc\_timestamp |  Minor | Documentation, SQL | Felipe Olmos | Sean Owen |
| [SPARK-22075](https://issues.apache.org/jira/browse/SPARK-22075) | GBTs forgot to unpersist datasets cached by Checkpointer |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-22009](https://issues.apache.org/jira/browse/SPARK-22009) | Using treeAggregate improve some algs |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-21981](https://issues.apache.org/jira/browse/SPARK-21981) | Python API for ClusteringEvaluator |  Major | ML, PySpark | Yanbo Liang | Marco Gaido |
| [SPARK-22072](https://issues.apache.org/jira/browse/SPARK-22072) | Allow the same shell params to be used for all of the different steps in release-build |  Major | Build | holdenk | holdenk |
| [SPARK-22099](https://issues.apache.org/jira/browse/SPARK-22099) | The 'job ids' list style needs to be changed in the SQL page. |  Trivial | SQL, Web UI | guoxiaolongzte | guoxiaolongzte |
| [SPARK-22058](https://issues.apache.org/jira/browse/SPARK-22058) | the BufferedInputStream will not be closed if an exception occurs |  Trivial | Spark Core | zuotingbing | zuotingbing |
| [SPARK-22103](https://issues.apache.org/jira/browse/SPARK-22103) | Move HashAggregateExec parent consume to a separate function in codegen |  Major | SQL | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-22120](https://issues.apache.org/jira/browse/SPARK-22120) | TestHiveSparkSession.reset() should clean out Hive warehouse directory |  Minor | Tests | Gregory Owen | Gregory Owen |
| [SPARK-22106](https://issues.apache.org/jira/browse/SPARK-22106) | Remove support for 0-parameter pandas\_udfs |  Major | PySpark, SQL | Bryan Cutler | Bryan Cutler |
| [SPARK-22124](https://issues.apache.org/jira/browse/SPARK-22124) | Sample and Limit should also defer input evaluation under codegen |  Minor | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-22112](https://issues.apache.org/jira/browse/SPARK-22112) | Add missing method to pyspark api: spark.read.csv(Dataset\<String\>) |  Major | PySpark | Andrew Ash | Jia-Xuan Liu |
| [SPARK-20785](https://issues.apache.org/jira/browse/SPARK-20785) | Spark should  provide jump links and add (count) in the SQL web ui. |  Minor | SQL, Web UI | guoxiaolongzte | guoxiaolongzte |
| [SPARK-22130](https://issues.apache.org/jira/browse/SPARK-22130) | UTF8String.trim() inefficiently scans all white-space string twice. |  Minor | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22125](https://issues.apache.org/jira/browse/SPARK-22125) | Enable Arrow Stream format for vectorized UDF. |  Major | PySpark, SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-22123](https://issues.apache.org/jira/browse/SPARK-22123) | Add latest failure reason for task set blacklist |  Minor | Scheduler, Spark Core | zhoukang | zhoukang |
| [SPARK-22138](https://issues.apache.org/jira/browse/SPARK-22138) | Allow retry during release-build |  Minor | Build | holdenk | holdenk |
| [SPARK-22122](https://issues.apache.org/jira/browse/SPARK-22122) | Respect WITH clauses to count input rows in TPCDSQueryBenchmark |  Trivial | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-22001](https://issues.apache.org/jira/browse/SPARK-22001) | ImputerModel can do withColumn for all input columns at one pass |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-22173](https://issues.apache.org/jira/browse/SPARK-22173) | Table CSS style needs to be adjusted in History Page and in Executors Page. |  Trivial | Web UI | guoxiaolongzte | guoxiaolongzte |
| [SPARK-22193](https://issues.apache.org/jira/browse/SPARK-22193) | SortMergeJoinExec: typo correction |  Trivial | SQL | Rekha Joshi | Rekha Joshi |
| [SPARK-21871](https://issues.apache.org/jira/browse/SPARK-21871) | Check actual bytecode size when compiling generated code |  Critical | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-22203](https://issues.apache.org/jira/browse/SPARK-22203) | Add job description for file listing Spark jobs |  Major | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-22142](https://issues.apache.org/jira/browse/SPARK-22142) | Move Flume support behind a profile |  Minor | Build | Sean Owen | Sean Owen |
| [SPARK-22214](https://issues.apache.org/jira/browse/SPARK-22214) | Refactor the list hive partitions code |  Major | SQL | Jiang Xingbo | Jiang Xingbo |
| [SPARK-22156](https://issues.apache.org/jira/browse/SPARK-22156) | Word2Vec: incorrect learning rate update equation when numIterations \> 1 |  Minor | MLlib | kento nozawa | kento nozawa |
| [SPARK-22147](https://issues.apache.org/jira/browse/SPARK-22147) | BlockId.hashCode allocates a StringBuilder/String on each call |  Minor | Block Manager | Sergei Lebedev | Sergei Lebedev |
| [SPARK-20679](https://issues.apache.org/jira/browse/SPARK-20679) | Let ML ALS recommend for a subset of users/items |  Major | ML | Nick Pentreath | Nick Pentreath |
| [SPARK-22170](https://issues.apache.org/jira/browse/SPARK-22170) | Broadcast join holds an extra copy of rows in driver memory |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-21770](https://issues.apache.org/jira/browse/SPARK-21770) | ProbabilisticClassificationModel: Improve normalization of all-zero raw predictions |  Minor | ML | Siddharth Murching | Weichen Xu |
| [SPARK-21506](https://issues.apache.org/jira/browse/SPARK-21506) | The description of "spark.executor.cores" may be not  correct |  Trivial | Documentation | liuxian | liuxian |
| [SPARK-19558](https://issues.apache.org/jira/browse/SPARK-19558) | Provide a config option to attach QueryExecutionListener to SparkSession |  Major | SQL | Salil Surendran | Marcelo Vanzin |
| [SPARK-21751](https://issues.apache.org/jira/browse/SPARK-21751) | CodeGeneraor.splitExpressions counts code size more precisely |  Minor | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22208](https://issues.apache.org/jira/browse/SPARK-22208) | Improve percentile\_approx by not rounding up targetError and starting from index 0 |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-21988](https://issues.apache.org/jira/browse/SPARK-21988) | Add default stats to StreamingRelation and StreamingExecutionRelation |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-22217](https://issues.apache.org/jira/browse/SPARK-22217) | ParquetFileFormat to support arbitrary OutputCommitters |  Minor | SQL | Steve Loughran | Steve Loughran |
| [SPARK-22263](https://issues.apache.org/jira/browse/SPARK-22263) | Refactor deterministic as lazy value |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-21247](https://issues.apache.org/jira/browse/SPARK-21247) | Type comparision should respect case-sensitive SQL conf |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-22233](https://issues.apache.org/jira/browse/SPARK-22233) | filter out empty InputSplit in HadoopRDD |  Major | Spark Core | Lijia Liu | Lijia Liu |
| [SPARK-22282](https://issues.apache.org/jira/browse/SPARK-22282) | Rename OrcRelation to OrcFileFormat and remove ORC\_COMPRESSION |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-22050](https://issues.apache.org/jira/browse/SPARK-22050) | Allow BlockUpdated events to be optionally logged to the event log |  Minor | Spark Core | Michael Mior | Michael Mior |
| [SPARK-22266](https://issues.apache.org/jira/browse/SPARK-22266) | The same aggregate function was evaluated multiple times |  Minor | SQL | Maryann Xue | Maryann Xue |
| [SPARK-22188](https://issues.apache.org/jira/browse/SPARK-22188) | Add defense against Cross-Site Scripting, MIME-sniffing and MitM attack |  Minor | Spark Core | Krishna Pandey | Krishna Pandey |
| [SPARK-14371](https://issues.apache.org/jira/browse/SPARK-14371) | OnlineLDAOptimizer should not collect stats for each doc in mini-batch to driver |  Major | MLlib | Joseph K. Bradley | Valeriy Avanesov |
| [SPARK-22268](https://issues.apache.org/jira/browse/SPARK-22268) | Fix java style errors |  Trivial | Spark Core | Andrew Ash | Andrew Ash |
| [SPARK-22302](https://issues.apache.org/jira/browse/SPARK-22302) | Remove manual backports for subprocess.check\_output and check\_call |  Trivial | Project Infra | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-22313](https://issues.apache.org/jira/browse/SPARK-22313) | Mark/print deprecation warnings as DeprecationWarning for deprecated APIs |  Minor | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-22301](https://issues.apache.org/jira/browse/SPARK-22301) | Add rule to Optimizer for In with empty list of values |  Major | SQL | Marco Gaido | Marco Gaido |
| [SPARK-22348](https://issues.apache.org/jira/browse/SPARK-22348) | The table cache providing ColumnarBatch should also do partition batch pruning |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-13947](https://issues.apache.org/jira/browse/SPARK-13947) | The error message from using an invalid table reference is not clear |  Minor | SQL | Wes McKinney | Ruben Berenguel |
| [SPARK-22366](https://issues.apache.org/jira/browse/SPARK-22366) | Support ignoreMissingFiles flag parallel to ignoreCorruptFiles |  Minor | SQL | Jose Torres | Jose Torres |
| [SPARK-21619](https://issues.apache.org/jira/browse/SPARK-21619) | Fail the execution of canonicalized plans explicitly |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-21983](https://issues.apache.org/jira/browse/SPARK-21983) | Fix ANTLR 4.7 deprecations |  Minor | SQL | Herman van Hovell | Henry Robinson |
| [SPARK-22385](https://issues.apache.org/jira/browse/SPARK-22385) | MapObjects should not access list element by index |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-19112](https://issues.apache.org/jira/browse/SPARK-19112) | add codec for ZStandard |  Minor | Spark Core | Thomas Graves | Sital Kedia |
| [SPARK-22190](https://issues.apache.org/jira/browse/SPARK-22190) | Add Spark executor task metrics to Dropwizard metrics |  Minor | Spark Core | Luca Canali | Luca Canali |
| [SPARK-22408](https://issues.apache.org/jira/browse/SPARK-22408) | RelationalGroupedDataset's distinct pivot value calculation launches unnecessary stages |  Trivial | SQL | Patrick Woody | Patrick Woody |
| [SPARK-22407](https://issues.apache.org/jira/browse/SPARK-22407) | Add rdd id column on storage page to speed up navigating |  Trivial | Web UI | zhoukang | zhoukang |
| [SPARK-22378](https://issues.apache.org/jira/browse/SPARK-22378) | Redundant nullcheck is generated for extracting value in complex types |  Minor | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22445](https://issues.apache.org/jira/browse/SPARK-22445) | move CodegenContext.copyResult to CodegenSupport |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22315](https://issues.apache.org/jira/browse/SPARK-22315) | Check for version match between R package and JVM |  Major | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-22133](https://issues.apache.org/jira/browse/SPARK-22133) | Document Mesos reject offer duration configutations |  Minor | Mesos | Arthur Rand | windkithk |
| [SPARK-22405](https://issues.apache.org/jira/browse/SPARK-22405) | Enrich the event information and add new event of ExternalCatalogEvent |  Minor | SQL | Saisai Shao | Saisai Shao |
| [SPARK-22308](https://issues.apache.org/jira/browse/SPARK-22308) | Support unit tests of spark code using ScalaTest using suites other than FunSuite |  Minor | Documentation, Spark Core, SQL, Tests | Nathan Kronenfeld | Nathan Kronenfeld |
| [SPARK-20199](https://issues.apache.org/jira/browse/SPARK-20199) | GradientBoostedTreesModel doesn't have  featureSubsetStrategy parameter |  Major | ML, MLlib | pralabhkumar | pralabhkumar |
| [SPARK-22450](https://issues.apache.org/jira/browse/SPARK-22450) | Safely register class for mllib |  Major | Spark Core | Xianyang Liu | Xianyang Liu |
| [SPARK-22294](https://issues.apache.org/jira/browse/SPARK-22294) | Reset spark.driver.bindAddress when starting a Checkpoint |  Major | Deploy, Spark Core | Santiago Saavedra | Santiago Saavedra |
| [SPARK-21667](https://issues.apache.org/jira/browse/SPARK-21667) | ConsoleSink should not fail streaming query with checkpointLocation option |  Minor | Structured Streaming | Jacek Laskowski | Rekha Joshi |
| [SPARK-18136](https://issues.apache.org/jira/browse/SPARK-18136) | Make PySpark pip install works on windows |  Major | PySpark | holdenk | Jakub Nowacki |
| [SPARK-19759](https://issues.apache.org/jira/browse/SPARK-19759) | ALSModel.predict on Dataframes : potential optimization by not using blas |  Minor | ML | Sue Ann Hong | Marco Gaido |
| [SPARK-22476](https://issues.apache.org/jira/browse/SPARK-22476) | Add new function dayofweek in R |  Minor | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-17310](https://issues.apache.org/jira/browse/SPARK-17310) | Disable Parquet's record-by-record filter in normal parquet reader and do it in Spark-side |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-22519](https://issues.apache.org/jira/browse/SPARK-22519) | Remove unnecessary stagingDirPath null check in ApplicationMaster.cleanupStagingDir() |  Trivial | YARN | Devaraj K | Devaraj K |
| [SPARK-13846](https://issues.apache.org/jira/browse/SPARK-13846) | VectorIndexer output on unknown feature should be more descriptive |  Minor | ML | Dmitry Spikhalskiy | Weichen Xu |
| [SPARK-22422](https://issues.apache.org/jira/browse/SPARK-22422) | Add Adjusted R2 to RegressionMetrics |  Minor | ML | Teng Peng | Teng Peng |
| [SPARK-22554](https://issues.apache.org/jira/browse/SPARK-22554) | Add a config to control if PySpark should use daemon or not |  Trivial | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-20101](https://issues.apache.org/jira/browse/SPARK-20101) | Use OffHeapColumnVector when "spark.sql.columnVector.offheap.enable" is set to "true" |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22569](https://issues.apache.org/jira/browse/SPARK-22569) | Clean up caller of splitExpressions and addMutableState |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-19878](https://issues.apache.org/jira/browse/SPARK-19878) | Add hive configuration when initialize hive serde in InsertIntoHiveTable.scala |  Major | SQL | jianjin qin | Vinod KC |
| [SPARK-21866](https://issues.apache.org/jira/browse/SPARK-21866) | SPIP: Image support in Spark |  Major | ML | Timothy Hunter | Ilya Matiach |
| [SPARK-22592](https://issues.apache.org/jira/browse/SPARK-22592) | cleanup filter converting for hive |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22537](https://issues.apache.org/jira/browse/SPARK-22537) | Aggregation of map output statistics on driver faces single point bottleneck |  Major | Spark Core | Chenzhao Guo | Chenzhao Guo |
| [SPARK-22597](https://issues.apache.org/jira/browse/SPARK-22597) | Add spark-sql script for Windows users |  Major | SQL, Windows | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-22596](https://issues.apache.org/jira/browse/SPARK-22596) | set ctx.currentVars in CodegenSupport.consume |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22520](https://issues.apache.org/jira/browse/SPARK-22520) | Support code generation also for complex CASE WHEN |  Minor | SQL | Marco Gaido | Marco Gaido |
| [SPARK-22617](https://issues.apache.org/jira/browse/SPARK-22617) | make splitExpressions extract current input of the context |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22608](https://issues.apache.org/jira/browse/SPARK-22608) | Avoid code duplication regarding CodeGeneration.splitExpressions() |  Minor | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22614](https://issues.apache.org/jira/browse/SPARK-22614) | Expose range partitioning shuffle |  Major | Shuffle, SQL | Adrian Ionescu | Adrian Ionescu |
| [SPARK-22638](https://issues.apache.org/jira/browse/SPARK-22638) | Use a separate query for StreamingQueryListenerBus |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-20682](https://issues.apache.org/jira/browse/SPARK-20682) | Add new ORCFileFormat based on Apache ORC |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-22372](https://issues.apache.org/jira/browse/SPARK-22372) | Make YARN client extend SparkApplication |  Major | YARN | Marcelo Vanzin |  |
| [SPARK-22665](https://issues.apache.org/jira/browse/SPARK-22665) | Dataset API: .repartition() inconsistency / issue |  Major | SQL | Adrian Ionescu | Marco Gaido |
| [SPARK-22677](https://issues.apache.org/jira/browse/SPARK-22677) | cleanup whole stage codegen for hash aggregate |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22682](https://issues.apache.org/jira/browse/SPARK-22682) | HashExpression does not need to create global variables |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22675](https://issues.apache.org/jira/browse/SPARK-22675) | Refactoring PropagateTypes in TypeCoercion |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-20728](https://issues.apache.org/jira/browse/SPARK-20728) | Make ORCFileFormat configurable between sql/hive and sql/core |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-22701](https://issues.apache.org/jira/browse/SPARK-22701) | add ctx.splitExpressionsWithCurrentInputs |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-20392](https://issues.apache.org/jira/browse/SPARK-20392) | Slow performance when calling fit on ML pipeline for dataset with many columns but few rows |  Major | ML, SQL | Barry Becker | Liang-Chi Hsieh |
| [SPARK-22704](https://issues.apache.org/jira/browse/SPARK-22704) | Reduce # of mutable variables in Least and greatest |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22705](https://issues.apache.org/jira/browse/SPARK-22705) | Reduce # of mutable variables in Case, Coalesce, and In |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22690](https://issues.apache.org/jira/browse/SPARK-22690) | Imputer inherit HasOutputCols |  Trivial | ML | zhengruifeng | zhengruifeng |
| [SPARK-22660](https://issues.apache.org/jira/browse/SPARK-22660) | Use position() and limit() to fix ambiguity issue in scala-2.12 |  Minor | Build | liyunzhang | liyunzhang |
| [SPARK-22719](https://issues.apache.org/jira/browse/SPARK-22719) | refactor ConstantPropagation |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-22688](https://issues.apache.org/jira/browse/SPARK-22688) | Upgrade Janino version to 3.0.8 |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-21787](https://issues.apache.org/jira/browse/SPARK-21787) | Support for pushing down filters for DateType in native OrcFileFormat |  Major | SQL | Stefan de Koning | Dongjoon Hyun |
| [SPARK-21672](https://issues.apache.org/jira/browse/SPARK-21672) | Remove SHS-specific application / attempt data structures |  Minor | Spark Core | Marcelo Vanzin | Sandor Murakozi |
| [SPARK-20557](https://issues.apache.org/jira/browse/SPARK-20557) | JdbcUtils doesn't support java.sql.Types.TIMESTAMP\_WITH\_TIMEZONE |  Major | SQL | Jannik Arndt | Xiao Li |
| [SPARK-22729](https://issues.apache.org/jira/browse/SPARK-22729) | Add getTruncateQuery to JdbcDialect |  Major | SQL | Daniel van der Ende | Daniel van der Ende |
| [SPARK-22767](https://issues.apache.org/jira/browse/SPARK-22767) | use ctx.addReferenceObj in InSet and ScalaUDF |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22754](https://issues.apache.org/jira/browse/SPARK-22754) | Check spark.executor.heartbeatInterval setting in case of ExecutorLost |  Minor | Deploy | zhoukang | zhoukang |
| [SPARK-22774](https://issues.apache.org/jira/browse/SPARK-22774) | Add compilation check for generated code in TPCDSQuerySuite |  Major | SQL, Tests | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-16496](https://issues.apache.org/jira/browse/SPARK-16496) | Add wholetext as option for reading text in SQL. |  Major | SQL | Prashant Sharma | Prashant Sharma |
| [SPARK-22753](https://issues.apache.org/jira/browse/SPARK-22753) | Get rid of dataSource.writeAndRead |  Minor | SQL | Li Yuanjian | Li Yuanjian |
| [SPARK-22496](https://issues.apache.org/jira/browse/SPARK-22496) | beeline display operation log |  Minor | SQL | StephenZou | StephenZou |
| [SPARK-22673](https://issues.apache.org/jira/browse/SPARK-22673) | InMemoryRelation should utilize on-disk table stats whenever possible |  Major | SQL | Nan Zhu | Nan Zhu |
| [SPARK-22649](https://issues.apache.org/jira/browse/SPARK-22649) | localCheckpoint support in Dataset API |  Minor | PySpark, SQL | Fernando Pereira | Fernando Pereira |
| [SPARK-22832](https://issues.apache.org/jira/browse/SPARK-22832) | BisectingKMeans unpersist unused datasets |  Trivial | ML | zhengruifeng | zhengruifeng |
| [SPARK-22830](https://issues.apache.org/jira/browse/SPARK-22830) | Scala Coding style has been improved in Spark Examples |  Trivial | Examples | Chetan Khatri | Chetan Khatri |
| [SPARK-22847](https://issues.apache.org/jira/browse/SPARK-22847) | Remove the duplicate code in AppStatusListener while assigning schedulingPool  for stage |  Trivial | Spark Core | wuyi | wuyi |
| [SPARK-22810](https://issues.apache.org/jira/browse/SPARK-22810) | PySpark supports LinearRegression with huber loss |  Major | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-21975](https://issues.apache.org/jira/browse/SPARK-21975) | Histogram support in cost-based optimizer |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-22786](https://issues.apache.org/jira/browse/SPARK-22786) | only use AppStatusPlugin in history server |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22874](https://issues.apache.org/jira/browse/SPARK-22874) | Modify checking pandas version to use LooseVersion. |  Major | PySpark, SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-22346](https://issues.apache.org/jira/browse/SPARK-22346) | Update VectorAssembler to work with Structured Streaming |  Critical | ML, Structured Streaming | Bago Amirbekian | Bago Amirbekian |
| [SPARK-22833](https://issues.apache.org/jira/browse/SPARK-22833) | [Examples] Improvements made at SparkHive Example with Scala |  Minor | Examples | Chetan Khatri | Chetan Khatri |
| [SPARK-22844](https://issues.apache.org/jira/browse/SPARK-22844) | R date\_trunc API |  Major | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-22707](https://issues.apache.org/jira/browse/SPARK-22707) | Optimize CrossValidator memory occupation by models in fitting |  Major | ML | Weichen Xu | Weichen Xu |
| [SPARK-22893](https://issues.apache.org/jira/browse/SPARK-22893) | Unified the data type mismatch message |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-22894](https://issues.apache.org/jira/browse/SPARK-22894) | DateTimeOperations should accept SQL like string type |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-22921](https://issues.apache.org/jira/browse/SPARK-22921) | Merge script should prompt for assigning jiras |  Trivial | Project Infra | Imran Rashid | Imran Rashid |
| [SPARK-22922](https://issues.apache.org/jira/browse/SPARK-22922) | Python API for fitMultiple |  Major | ML, PySpark | Bago Amirbekian | Bago Amirbekian |
| [SPARK-22771](https://issues.apache.org/jira/browse/SPARK-22771) | SQL concat for binary |  Minor | SQL | Fernando Pereira | Takeshi Yamamuro |
| [SPARK-22919](https://issues.apache.org/jira/browse/SPARK-22919) | Bump Apache httpclient versions |  Minor | Spark Core | Fokko Driesprong | Fokko Driesprong |
| [SPARK-22895](https://issues.apache.org/jira/browse/SPARK-22895) | Push down the deterministic predicates that are after the first non-deterministic |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-22397](https://issues.apache.org/jira/browse/SPARK-22397) | Add multiple column support to QuantileDiscretizer |  Major | ML | Nick Pentreath | Huaxin Gao |
| [SPARK-22801](https://issues.apache.org/jira/browse/SPARK-22801) | Allow FeatureHasher to specify numeric columns to treat as categorical |  Major | ML | Nick Pentreath | Nick Pentreath |
| [SPARK-13030](https://issues.apache.org/jira/browse/SPARK-13030) | Change OneHotEncoder to Estimator |  Major | ML | Wojciech Jurczyk | Liang-Chi Hsieh |
| [SPARK-22897](https://issues.apache.org/jira/browse/SPARK-22897) | Expose  stageAttemptId in TaskContext |  Minor | Spark Core | Xianjin YE | Xianjin YE |
| [SPARK-20236](https://issues.apache.org/jira/browse/SPARK-20236) | Overwrite a partitioned data source table should only overwrite related partitions |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22896](https://issues.apache.org/jira/browse/SPARK-22896) | Improvement in String interpolation |  Trivial | Examples | Chetan Khatri | Chetan Khatri |
| [SPARK-22944](https://issues.apache.org/jira/browse/SPARK-22944) | improve FoldablePropagation |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22945](https://issues.apache.org/jira/browse/SPARK-22945) | add java UDF APIs in the functions object |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22939](https://issues.apache.org/jira/browse/SPARK-22939) | Support Spark UDF in registerFunction |  Major | PySpark, SQL | Xiao Li | Xiao Li |
| [SPARK-21475](https://issues.apache.org/jira/browse/SPARK-21475) | Change to use NIO's Files API for external shuffle service |  Minor | Shuffle, Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-22960](https://issues.apache.org/jira/browse/SPARK-22960) | Make build-push-docker-images.sh more dev-friendly |  Minor | Kubernetes | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-22914](https://issues.apache.org/jira/browse/SPARK-22914) | Subbing for spark.history.ui.port does not resolve by default |  Minor | Deploy | Gera Shegalov | Gera Shegalov |
| [SPARK-22937](https://issues.apache.org/jira/browse/SPARK-22937) | SQL elt for binary inputs |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-22566](https://issues.apache.org/jira/browse/SPARK-22566) | Better error message for \`\_merge\_type\` in Pandas to Spark DF conversion |  Minor | PySpark | Guilherme Berger | Guilherme Berger |
| [SPARK-22979](https://issues.apache.org/jira/browse/SPARK-22979) | Avoid per-record type dispatch in Python data conversion (EvaluatePython.fromJava) |  Major | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-21865](https://issues.apache.org/jira/browse/SPARK-21865) | simplify the distribution semantic of Spark SQL |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22952](https://issues.apache.org/jira/browse/SPARK-22952) | Deprecate stageAttemptId in favour of stageAttemptNumber |  Minor | Spark Core | Xianjin YE | Xianjin YE |
| [SPARK-23005](https://issues.apache.org/jira/browse/SPARK-23005) | Improve RDD.take on small number of partitions |  Major | Spark Core | Gengliang Wang | Gengliang Wang |
| [SPARK-22997](https://issues.apache.org/jira/browse/SPARK-22997) | Add additional defenses against use of freed MemoryBlocks |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-22994](https://issues.apache.org/jira/browse/SPARK-22994) | Require a single container image for Spark-on-K8S |  Major | Kubernetes | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-22870](https://issues.apache.org/jira/browse/SPARK-22870) | Dynamic allocation should allow 0 idle time |  Minor | Scheduler | Xuefu Zhang | Yuming Wang |
| [SPARK-23036](https://issues.apache.org/jira/browse/SPARK-23036) | Add withGlobalTempView for testing |  Minor | SQL | xubo245 | xubo245 |
| [SPARK-22790](https://issues.apache.org/jira/browse/SPARK-22790) | add a configurable factor to describe HadoopFsRelation's size |  Major | SQL | Nan Zhu | Nan Zhu |
| [SPARK-22999](https://issues.apache.org/jira/browse/SPARK-22999) | 'show databases like command' can remove the like keyword |  Trivial | SQL | guoxiaolongzte | guoxiaolongzte |
| [SPARK-23062](https://issues.apache.org/jira/browse/SPARK-23062) | EXCEPT documentation should make it clear that it's EXCEPT DISTINCT |  Trivial | Documentation, SQL | Henry Robinson | Henry Robinson |
| [SPARK-23122](https://issues.apache.org/jira/browse/SPARK-23122) | Deprecate register\* for UDFs in SQLContext and Catalog in PySpark |  Major | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23141](https://issues.apache.org/jira/browse/SPARK-23141) | Support data type string as a returnType for registerJavaFunction. |  Major | PySpark, SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-23029](https://issues.apache.org/jira/browse/SPARK-23029) | Doc spark.shuffle.file.buffer units are kb when no units specified |  Minor | Spark Core | Fernando Pereira | Fernando Pereira |
| [SPARK-23143](https://issues.apache.org/jira/browse/SPARK-23143) | Add Python support for continuous trigger |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-23144](https://issues.apache.org/jira/browse/SPARK-23144) | Add console sink for continuous queries |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-23142](https://issues.apache.org/jira/browse/SPARK-23142) | Add documentation for Continuous Processing |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-23149](https://issues.apache.org/jira/browse/SPARK-23149) | polish ColumnarBatch |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-21771](https://issues.apache.org/jira/browse/SPARK-21771) | SparkSQLEnv creates a useless meta hive client |  Minor | SQL | Kent Yao | Kent Yao |
| [SPARK-23091](https://issues.apache.org/jira/browse/SPARK-23091) | Incorrect unit test for approxQuantile |  Minor | ML, SQL, Tests | Kuang Chen | Sean Owen |
| [SPARK-22763](https://issues.apache.org/jira/browse/SPARK-22763) | SHS: Ignore unknown events and parse through the file |  Major | Spark Core | Gengliang Wang | Gengliang Wang |
| [SPARK-23170](https://issues.apache.org/jira/browse/SPARK-23170) | Dump the statistics of effective runs of analyzer and optimizer rules |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-23090](https://issues.apache.org/jira/browse/SPARK-23090) | polish ColumnVector |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-20841](https://issues.apache.org/jira/browse/SPARK-20841) | Support table column aliases in FROM clause |  Minor | SQL | Josh Rosen | Takeshi Yamamuro |
| [SPARK-23129](https://issues.apache.org/jira/browse/SPARK-23129) | Lazy init DiskMapIterator#deserializeStream to reduce memory usage when ExternalAppendOnlyMap spill  too many times |  Major | Spark Core | zhoukang | zhoukang |
| [SPARK-21717](https://issues.apache.org/jira/browse/SPARK-21717) | Decouple the generated codes of consuming rows in operators under whole-stage codegen |  Critical | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-23081](https://issues.apache.org/jira/browse/SPARK-23081) | Add colRegex API to PySpark |  Major | PySpark | Xiao Li | Huaxin Gao |
| [SPARK-23032](https://issues.apache.org/jira/browse/SPARK-23032) | Add a per-query codegenStageId to WholeStageCodegenExec |  Major | SQL | Kris Mok | Kris Mok |
| [SPARK-22799](https://issues.apache.org/jira/browse/SPARK-22799) | Bucketizer should throw exception if single- and multi-column params are both set |  Blocker | ML | Nick Pentreath | Marco Gaido |
| [SPARK-23248](https://issues.apache.org/jira/browse/SPARK-23248) | Relocate module docstrings to the top in PySpark examples |  Minor | Examples, PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23238](https://issues.apache.org/jira/browse/SPARK-23238) | Externalize SQLConf spark.sql.execution.arrow.enabled |  Major | SQL | Xiao Li | Hyukjin Kwon |
| [SPARK-23199](https://issues.apache.org/jira/browse/SPARK-23199) | improved Removes repetition from group expressions in Aggregate |  Major | SQL | caoxuewen | caoxuewen |
| [SPARK-17006](https://issues.apache.org/jira/browse/SPARK-17006) | WithColumn Performance Degrades with Number of Invocations |  Major | SQL | Hamel Ajay Kothari | Herman van Hovell |
| [SPARK-22692](https://issues.apache.org/jira/browse/SPARK-22692) | Reduce the number of generated mutable states |  Major | SQL | Marco Gaido | Marco Gaido |
| [SPARK-23276](https://issues.apache.org/jira/browse/SPARK-23276) | Enable UDT tests in (Hive)OrcHadoopFsRelationSuite |  Minor | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23279](https://issues.apache.org/jira/browse/SPARK-23279) | Avoid triggering distributed job for Console sink |  Minor | Structured Streaming | Saisai Shao | Saisai Shao |
| [SPARK-23249](https://issues.apache.org/jira/browse/SPARK-23249) | Improve partition bin-filling algorithm to have less skew and fewer partitions |  Major | SQL | Glen Takahashi | Glen Takahashi |
| [SPARK-21396](https://issues.apache.org/jira/browse/SPARK-21396) | Spark Hive Thriftserver doesn't return UDT field |  Major | SQL | Haopu Wang | Ken Tore Tallakstad |
| [SPARK-23296](https://issues.apache.org/jira/browse/SPARK-23296) | Diagnostics message for user code exceptions should include the stacktrace |  Trivial | YARN | Gera Shegalov | Gera Shegalov |
| [SPARK-23284](https://issues.apache.org/jira/browse/SPARK-23284) | Document several get API of ColumnVector's behavior when accessing null slot |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-23312](https://issues.apache.org/jira/browse/SPARK-23312) | add a config to turn off vectorized cache reader |  Blocker | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-23317](https://issues.apache.org/jira/browse/SPARK-23317) | rename ContinuousReader.setOffset to setStartOffset |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-23305](https://issues.apache.org/jira/browse/SPARK-23305) | Test \`spark.sql.files.ignoreMissingFiles\` for all file-based data sources |  Minor | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23454](https://issues.apache.org/jira/browse/SPARK-23454) | Add Trigger information to the Structured Streaming programming guide |  Minor | Documentation, Structured Streaming | Tathagata Das | Tathagata Das |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-16605](https://issues.apache.org/jira/browse/SPARK-16605) | Spark2.0 cannot "select" data from a table stored as an orc file which has been created by hive while hive or spark1.6 supports |  Major | SQL | marymwu |  |
| [SPARK-20359](https://issues.apache.org/jira/browse/SPARK-20359) | Catalyst EliminateOuterJoin optimization can cause NPE |  Major | SQL | koert kuipers | Koert Kuipers |
| [SPARK-20356](https://issues.apache.org/jira/browse/SPARK-20356) | Spark sql group by returns incorrect results after join + distinct transformations |  Major | SQL | Chris Kipers | Liang-Chi Hsieh |
| [SPARK-20367](https://issues.apache.org/jira/browse/SPARK-20367) | Spark silently escapes partition column names |  Minor | SQL | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-20329](https://issues.apache.org/jira/browse/SPARK-20329) | Resolution error when HAVING clause uses GROUP BY expression that involves implicit type coercion |  Blocker | SQL | Josh Rosen | Herman van Hovell |
| [SPARK-20412](https://issues.apache.org/jira/browse/SPARK-20412) | NullPointerException in places expecting non-optional partitionSpec. |  Major | SQL | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-20341](https://issues.apache.org/jira/browse/SPARK-20341) | Support BigIngeger values \> 19 precision |  Major | SQL | Paul Zaczkieiwcz | Kazuaki Ishizaki |
| [SPARK-20439](https://issues.apache.org/jira/browse/SPARK-20439) | Catalog.listTables() depends on all libraries used to create tables |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-20453](https://issues.apache.org/jira/browse/SPARK-20453) | Bump master branch version to 2.3.0-SNAPSHOT |  Major | Build | Josh Rosen | Josh Rosen |
| [SPARK-20451](https://issues.apache.org/jira/browse/SPARK-20451) | Filter out nested mapType datatypes from sort order in randomSplit |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-5484](https://issues.apache.org/jira/browse/SPARK-5484) | Pregel should checkpoint periodically to avoid StackOverflowError |  Major | GraphX | Ankur Dave | dingding |
| [SPARK-16548](https://issues.apache.org/jira/browse/SPARK-16548) | java.io.CharConversionException: Invalid UTF-32 character  prevents me from querying my data |  Minor | SQL | Egor Pahomov |  |
| [SPARK-19812](https://issues.apache.org/jira/browse/SPARK-19812) | YARN shuffle service fails to relocate recovery DB across NFS directories |  Major | YARN | Thomas Graves | Thomas Graves |
| [SPARK-20312](https://issues.apache.org/jira/browse/SPARK-20312) | query optimizer calls udf with null values when it doesn't expect them |  Major | SQL | Albert Meltzer |  |
| [SPARK-20541](https://issues.apache.org/jira/browse/SPARK-20541) | SparkR SS should support awaitTermination without timeout |  Major | SparkR, Structured Streaming | Felix Cheung | Felix Cheung |
| [SPARK-20543](https://issues.apache.org/jira/browse/SPARK-20543) | R should skip long running or non-essential tests when running on CRAN |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-20613](https://issues.apache.org/jira/browse/SPARK-20613) | Double quotes in Windows batch script |  Major | Windows | Jarrett Meyer | Jarrett Meyer |
| [SPARK-20626](https://issues.apache.org/jira/browse/SPARK-20626) | Fix SparkR test warning on Windows with timestamp time zone |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-20380](https://issues.apache.org/jira/browse/SPARK-20380) | describe table not showing updated table comment after alter operation |  Major | SQL | Sujith | Sujith |
| [SPARK-20605](https://issues.apache.org/jira/browse/SPARK-20605) | Deprecate not used AM and executor port configuration |  Minor | Mesos, Spark Core, YARN | Saisai Shao | Saisai Shao |
| [SPARK-20689](https://issues.apache.org/jira/browse/SPARK-20689) | python doctest leaking bucketed table |  Major | PySpark, SQL | Felix Cheung | Felix Cheung |
| [SPARK-17029](https://issues.apache.org/jira/browse/SPARK-17029) | Dataset toJSON goes through RDD form instead of transforming dataset itself |  Major | . | Robert Kruszewski | Robert Kruszewski |
| [SPARK-20569](https://issues.apache.org/jira/browse/SPARK-20569) | RuntimeReplaceable functions accept invalid third parameter |  Trivial | SQL | liuxian | Wenchen Fan |
| [SPARK-20311](https://issues.apache.org/jira/browse/SPARK-20311) | SQL "range(N) as alias" or "range(N) alias" doesn't work |  Minor | SQL | Juliusz Sompolski | Takeshi Yamamuro |
| [SPARK-20704](https://issues.apache.org/jira/browse/SPARK-20704) | CRAN test should run single threaded |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-20719](https://issues.apache.org/jira/browse/SPARK-20719) | Support LIMIT ALL |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-19372](https://issues.apache.org/jira/browse/SPARK-19372) | Code generation for Filter predicate including many OR conditions exceeds JVM method size limit |  Major | . | Jay Pranavamurthi | Kazuaki Ishizaki |
| [SPARK-20140](https://issues.apache.org/jira/browse/SPARK-20140) | Remove hardcoded kinesis retry wait and max retries |  Major | DStreams | Yash Sharma | Yash Sharma |
| [SPARK-20690](https://issues.apache.org/jira/browse/SPARK-20690) | Subqueries in FROM should have alias names |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-20786](https://issues.apache.org/jira/browse/SPARK-20786) | Improve ceil and floor handle the value which is not expected |  Major | SQL | caoxuewen | caoxuewen |
| [SPARK-20591](https://issues.apache.org/jira/browse/SPARK-20591) | Succeeded tasks num not equal in job page and job detail page on spark web ui when speculative task(s) exist |  Minor | Web UI | Jinhua Fu | Jinhua Fu |
| [SPARK-20609](https://issues.apache.org/jira/browse/SPARK-20609) | Run the SortShuffleSuite unit tests have residual spark\_\* system directory |  Minor | Shuffle, Tests | caoxuewen | caoxuewen |
| [SPARK-20756](https://issues.apache.org/jira/browse/SPARK-20756) | yarn-shuffle jar has references to unshaded guava and contains scala classes |  Major | YARN | Mark Grover | Mark Grover |
| [SPARK-17410](https://issues.apache.org/jira/browse/SPARK-17410) | Move Hive-generated Stats Info to HiveClientImpl |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-17284](https://issues.apache.org/jira/browse/SPARK-17284) | Remove statistics-related table properties from SHOW CREATE TABLE |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-20815](https://issues.apache.org/jira/browse/SPARK-20815) | NullPointerException in RPackageUtils#checkManifestForR |  Major | SparkR | Andrew Ash | James Shuster |
| [SPARK-20205](https://issues.apache.org/jira/browse/SPARK-20205) | DAGScheduler posts SparkListenerStageSubmitted before updating stage |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-20565](https://issues.apache.org/jira/browse/SPARK-20565) | Improve the error message for unsupported JDBC types |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-20873](https://issues.apache.org/jira/browse/SPARK-20873) | Improve the error message for unsupported Column Type |  Major | SQL | Ruben Janssen | Ruben Janssen |
| [SPARK-20876](https://issues.apache.org/jira/browse/SPARK-20876) | If the input parameter is float type for  ceil or floor ,the result is not we expected |  Major | SQL | liuxian | liuxian |
| [SPARK-20916](https://issues.apache.org/jira/browse/SPARK-20916) | Improve error message for unaliased subqueries in FROM clause |  Major | SQL | Josh Rosen | Liang-Chi Hsieh |
| [SPARK-20333](https://issues.apache.org/jira/browse/SPARK-20333) | Fix HashPartitioner in DAGSchedulerSuite |  Minor | Spark Core | jin xing | jin xing |
| [SPARK-20213](https://issues.apache.org/jira/browse/SPARK-20213) | DataFrameWriter operations do not show up in SQL tab |  Major | SQL, Web UI | Ryan Blue | Wenchen Fan |
| [SPARK-20288](https://issues.apache.org/jira/browse/SPARK-20288) | Improve BasicSchedulerIntegrationSuite "multi-stage job" |  Minor | Spark Core | jin xing | jin xing |
| [SPARK-20633](https://issues.apache.org/jira/browse/SPARK-20633) | FileFormatWriter wrap the FetchFailedException which breaks job's failover |  Major | SQL | Liu Shaohui | Liu Shaohui |
| [SPARK-20708](https://issues.apache.org/jira/browse/SPARK-20708) | Make \`addExclusionRules\` up-to-date |  Major | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-20365](https://issues.apache.org/jira/browse/SPARK-20365) | Not so accurate classpath format for AM and Containers |  Minor | YARN | Saisai Shao |  |
| [SPARK-20922](https://issues.apache.org/jira/browse/SPARK-20922) | Unsafe deserialization in Spark LauncherConnection |  Major | Spark Submit | Aditya Sharad | Marcelo Vanzin |
| [SPARK-20926](https://issues.apache.org/jira/browse/SPARK-20926) | Exposure to Guava libraries by directly accessing tableRelationCache in SessionCatalog caused failures |  Major | Spark Core | Reza Safi | Reza Safi |
| [SPARK-20991](https://issues.apache.org/jira/browse/SPARK-20991) | BROADCAST\_TIMEOUT conf should be a timeoutConf |  Major | SQL | Coyote Hills | Coyote Hills |
| [SPARK-20914](https://issues.apache.org/jira/browse/SPARK-20914) | Javadoc contains code that is invalid |  Trivial | Documentation | Cristian Teodor | Sean Owen |
| [SPARK-20976](https://issues.apache.org/jira/browse/SPARK-20976) | Unify Error Messages for FAILFAST mode. |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-14408](https://issues.apache.org/jira/browse/SPARK-14408) | Update RDD.treeAggregate not to use reduce |  Minor | ML, MLlib, Spark Core | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-20997](https://issues.apache.org/jira/browse/SPARK-20997) | spark-submit's --driver-cores marked as "YARN-only" but listed under "Spark standalone with cluster deploy mode only" |  Trivial | Documentation, Spark Submit | Jacek Laskowski | guoxiaolongzte |
| [SPARK-20935](https://issues.apache.org/jira/browse/SPARK-20935) | A daemon thread, "BatchedWriteAheadLog Writer", left behind after terminating StreamingContext. |  Major | DStreams | Terence Yim | Hyukjin Kwon |
| [SPARK-13933](https://issues.apache.org/jira/browse/SPARK-13933) | hadoop-2.7 profile's curator version should be 2.7.1 |  Minor | Build | Steve Loughran | Yuming Wang |
| [SPARK-21041](https://issues.apache.org/jira/browse/SPARK-21041) | With whole-stage codegen, SparkSession.range()'s behavior is inconsistent with SparkContext.range() |  Major | SQL | Kris Mok | Dongjoon Hyun |
| [SPARK-17914](https://issues.apache.org/jira/browse/SPARK-17914) | Spark SQL casting to TimestampType with nanosecond results in incorrect timestamp |  Major | SQL | Oksana Romankova | Anton Okolnychyi |
| [SPARK-20345](https://issues.apache.org/jira/browse/SPARK-20345) | Fix STS error handling logic on HiveSQLException |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-21050](https://issues.apache.org/jira/browse/SPARK-21050) | ml word2vec write has overflow issue in calculating numPartitions |  Major | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-19910](https://issues.apache.org/jira/browse/SPARK-19910) | \`stack\` should not reject NULL values due to type mismatch |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-21064](https://issues.apache.org/jira/browse/SPARK-21064) | Fix the default value bug in NettyBlockTransferServiceSuite |  Trivial | Tests | DjvuLee | DjvuLee |
| [SPARK-12552](https://issues.apache.org/jira/browse/SPARK-12552) | Recovered driver's resource is not counted in the Master |  Major | Deploy, Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-19753](https://issues.apache.org/jira/browse/SPARK-19753) | Remove all shuffle files on a host in case of slave lost of fetch failure |  Major | Scheduler | Sital Kedia | Sital Kedia |
| [SPARK-21057](https://issues.apache.org/jira/browse/SPARK-21057) | Do not use a PascalDistribution in countApprox |  Major | Spark Core | Lovasoa | Sean Owen |
| [SPARK-19900](https://issues.apache.org/jira/browse/SPARK-19900) | [Standalone] Master registers application again when driver relaunched |  Critical | Deploy, Spark Core | Sergey | Li Yichao |
| [SPARK-21112](https://issues.apache.org/jira/browse/SPARK-21112) | ALTER TABLE SET TBLPROPERTIES should not overwrite COMMENT |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-21119](https://issues.apache.org/jira/browse/SPARK-21119) | unset table properties should keep the table comment |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-20338](https://issues.apache.org/jira/browse/SPARK-20338) | Spaces in spark.eventLog.dir are not correctly handled |  Major | Spark Core | zuotingbing | zuotingbing |
| [SPARK-19824](https://issues.apache.org/jira/browse/SPARK-19824) | Standalone master JSON not showing cores for running applications |  Minor | Deploy | Dan | Jiang Xingbo |
| [SPARK-19688](https://issues.apache.org/jira/browse/SPARK-19688) | Spark on Yarn Credentials File set to different application directory |  Minor | DStreams, YARN | Devaraj Jonnadula | Xing Shi |
| [SPARK-21124](https://issues.apache.org/jira/browse/SPARK-21124) | Wrong user shown in UI when using kerberos |  Minor | Web UI | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-21138](https://issues.apache.org/jira/browse/SPARK-21138) | Cannot delete staging dir when the clusters of "spark.yarn.stagingDir" and "spark.hadoop.fs.defaultFS" are different |  Major | YARN | sharkd tu | sharkd tu |
| [SPARK-20989](https://issues.apache.org/jira/browse/SPARK-20989) | Fail to start multiple workers on one host if external shuffle service is enabled in standalone mode |  Minor | Deploy, Spark Core | Jiang Xingbo | Jiang Xingbo |
| [SPARK-20640](https://issues.apache.org/jira/browse/SPARK-20640) | Make rpc timeout and retry for shuffle registration configurable |  Major | Shuffle | Sital Kedia | Li Yichao |
| [SPARK-17851](https://issues.apache.org/jira/browse/SPARK-17851) | Make sure all test sqls in catalyst pass checkAnalysis |  Minor | SQL | Jiang Xingbo | Jiang Xingbo |
| [SPARK-21147](https://issues.apache.org/jira/browse/SPARK-21147) | the schema of socket/rate source can not be set. |  Major | Structured Streaming | Fei Shao | Hyukjin Kwon |
| [SPARK-20906](https://issues.apache.org/jira/browse/SPARK-20906) | Constrained Logistic Regression for SparkR |  Major | SparkR | Miao Wang | Miao Wang |
| [SPARK-21167](https://issues.apache.org/jira/browse/SPARK-21167) | Path is not decoded correctly when reading output of FileSink |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-21163](https://issues.apache.org/jira/browse/SPARK-21163) | DataFrame.toPandas should respect the data type |  Major | PySpark, SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-20832](https://issues.apache.org/jira/browse/SPARK-20832) | Standalone master should explicitly inform drivers of worker deaths and invalidate external shuffle service outputs |  Major | Deploy, Scheduler | Josh Rosen | Jiang Xingbo |
| [SPARK-20923](https://issues.apache.org/jira/browse/SPARK-20923) | TaskMetrics.\_updatedBlockStatuses uses a lot of memory |  Major | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-21145](https://issues.apache.org/jira/browse/SPARK-21145) | Restarted queries reuse same StateStoreProvider, causing multiple concurrent tasks to update same StateStore |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-21165](https://issues.apache.org/jira/browse/SPARK-21165) | Fail to write into partitioned hive table due to attribute reference not working with cast on partition column |  Blocker | SQL | Imran Rashid | Xiao Li |
| [SPARK-21181](https://issues.apache.org/jira/browse/SPARK-21181) | Suppress memory leak errors reported by netty |  Minor | Input/Output | Dhruve Ashar | Dhruve Ashar |
| [SPARK-13669](https://issues.apache.org/jira/browse/SPARK-13669) | Job will always fail in the external shuffle service unavailable situation |  Major | Scheduler, Spark Core, YARN | Saisai Shao | Saisai Shao |
| [SPARK-20898](https://issues.apache.org/jira/browse/SPARK-20898) | spark.blacklist.killBlacklistedExecutors doesn't work in YARN |  Major | Spark Core | Thomas Graves | Saisai Shao |
| [SPARK-21216](https://issues.apache.org/jira/browse/SPARK-21216) | Streaming DataFrames fail to join with Hive tables |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-14657](https://issues.apache.org/jira/browse/SPARK-14657) | RFormula output wrong features when formula w/o intercept |  Major | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-3577](https://issues.apache.org/jira/browse/SPARK-3577) | Add task metric to report spill time |  Minor | Shuffle, Spark Core | Kay Ousterhout | Sital Kedia |
| [SPARK-21225](https://issues.apache.org/jira/browse/SPARK-21225) | decrease the Mem using for variable 'tasks' in function resourceOffers |  Minor | Spark Core | yangZhiguo | yangZhiguo |
| [SPARK-21188](https://issues.apache.org/jira/browse/SPARK-21188) | releaseAllLocksForTask should synchronize the whole method |  Major | Block Manager, Spark Core | Feng Liu | Coyote Hills |
| [SPARK-21223](https://issues.apache.org/jira/browse/SPARK-21223) | Thread-safety issue in FsHistoryProvider |  Minor | Spark Core | zenglinxi | zenglinxi |
| [SPARK-17528](https://issues.apache.org/jira/browse/SPARK-17528) | data should be copied properly before saving into InternalRow |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-21170](https://issues.apache.org/jira/browse/SPARK-21170) | Utils.tryWithSafeFinallyAndFailureCallbacks throws IllegalArgumentException: Self-suppression not permitted |  Minor | Spark Core | Devaraj K | Devaraj K |
| [SPARK-18004](https://issues.apache.org/jira/browse/SPARK-18004) | DataFrame filter Predicate push-down fails for Oracle Timestamp type columns |  Critical | SQL | Suhas Nalapure | Rui Zha |
| [SPARK-21284](https://issues.apache.org/jira/browse/SPARK-21284) | rename SessionCatalog.registerFunction parameter name |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-21283](https://issues.apache.org/jira/browse/SPARK-21283) | FileOutputStream should be created as append mode |  Minor | Spark Core | liuxian | liuxian |
| [SPARK-21264](https://issues.apache.org/jira/browse/SPARK-21264) | Omitting columns with 'how' specified in join in PySpark throws NPE |  Minor | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-19726](https://issues.apache.org/jira/browse/SPARK-19726) | Faild to insert null timestamp value to mysql using spark jdbc |  Major | SQL | AnfengYuan | wangshuangshuang |
| [SPARK-20256](https://issues.apache.org/jira/browse/SPARK-20256) | Fail to start SparkContext/SparkSession with Hive support enabled when user does not have read/write privilege to Hive metastore warehouse dir |  Critical | SQL | Xin Wu | Dongjoon Hyun |
| [SPARK-21300](https://issues.apache.org/jira/browse/SPARK-21300) | ExternalMapToCatalyst should null-check map key prior to converting to internal value. |  Minor | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-16167](https://issues.apache.org/jira/browse/SPARK-16167) | RowEncoder should preserve array/map type nullability. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-21278](https://issues.apache.org/jira/browse/SPARK-21278) | Upgrade to Py4J 0.10.6 |  Major | PySpark | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-21248](https://issues.apache.org/jira/browse/SPARK-21248) | Flaky test: o.a.s.sql.kafka010.KafkaSourceSuite.assign from specific offsets (failOnDataLoss: true) |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-21312](https://issues.apache.org/jira/browse/SPARK-21312) | UnsafeRow writeToStream has incorrect offsetInByteArray calculation for non-zero offset |  Major | SQL | Sumedh Wale | Sumedh Wale |
| [SPARK-21228](https://issues.apache.org/jira/browse/SPARK-21228) | InSet incorrect handling of structs |  Major | SQL | Bogdan Raducanu | Bogdan Raducanu |
| [SPARK-21204](https://issues.apache.org/jira/browse/SPARK-21204) | RuntimeException with Set and Case Class in Spark 2.1.1 |  Major | Optimizer, SQL | Leo Romanovsky | Liang-Chi Hsieh |
| [SPARK-21066](https://issues.apache.org/jira/browse/SPARK-21066) | LibSVM load just one input file |  Trivial | ML | darion yaphet | Hyukjin Kwon |
| [SPARK-21327](https://issues.apache.org/jira/browse/SPARK-21327) | ArrayConstructor should handle an array of typecode 'l' as long rather than int in Python 2. |  Major | PySpark, SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-21335](https://issues.apache.org/jira/browse/SPARK-21335) | support un-aliased subquery |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-21281](https://issues.apache.org/jira/browse/SPARK-21281) | cannot create empty typed array column |  Minor | SQL | Saif Addin | Takeshi Yamamuro |
| [SPARK-21345](https://issues.apache.org/jira/browse/SPARK-21345) | SparkSessionBuilderSuite should clean up stopped sessions |  Major | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-20342](https://issues.apache.org/jira/browse/SPARK-20342) | DAGScheduler sends SparkListenerTaskEnd before updating task's accumulators |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-21343](https://issues.apache.org/jira/browse/SPARK-21343) | Refine the document for spark.reducer.maxReqSizeShuffleToMem |  Major | Spark Core | jin xing | jin xing |
| [SPARK-21093](https://issues.apache.org/jira/browse/SPARK-21093) | Multiple gapply execution occasionally failed in SparkR |  Critical | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-21219](https://issues.apache.org/jira/browse/SPARK-21219) | Task retry occurs on same executor due to race condition with blacklisting |  Minor | Scheduler | Eric Vandenberg | Eric Vandenberg |
| [SPARK-21342](https://issues.apache.org/jira/browse/SPARK-21342) | Fix DownloadCallback to work well with RetryingBlockFetcher |  Major | Spark Core | jin xing | jin xing |
| [SPARK-21272](https://issues.apache.org/jira/browse/SPARK-21272) | SortMergeJoin LeftAnti does not update numOutputRows |  Trivial | SQL | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-21350](https://issues.apache.org/jira/browse/SPARK-21350) | Fix the error message when the number of arguments is wrong when invoking a UDF |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-21369](https://issues.apache.org/jira/browse/SPARK-21369) | Don't use Scala classes in external shuffle service |  Major | Shuffle, YARN | Shixiong Zhu | Shixiong Zhu |
| [SPARK-21263](https://issues.apache.org/jira/browse/SPARK-21263) | NumberFormatException is not thrown while converting an invalid string to float/double |  Major | Java API | Navya Krishnappa | Hyukjin Kwon |
| [SPARK-18646](https://issues.apache.org/jira/browse/SPARK-18646) | ExecutorClassLoader for spark-shell does not honor spark.executor.userClassPathFirst |  Major | Spark Shell | Min Shen | Min Shen |
| [SPARK-21403](https://issues.apache.org/jira/browse/SPARK-21403) | Cluster mode doesn't work with --packages [Mesos] |  Major | Mesos | Stavros Kontopoulos | Stavros Kontopoulos |
| [SPARK-21376](https://issues.apache.org/jira/browse/SPARK-21376) | Token is not renewed in yarn client process in cluster mode |  Minor | YARN | Yesha Vora | Saisai Shao |
| [SPARK-9825](https://issues.apache.org/jira/browse/SPARK-9825) | Spark overwrites remote cluster "final" properties with local config |  Major | YARN | Rok Roskar | Marcelo Vanzin |
| [SPARK-21354](https://issues.apache.org/jira/browse/SPARK-21354) | INPUT FILE related functions do not support more than one sources |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-21377](https://issues.apache.org/jira/browse/SPARK-21377) | Jars specified with --jars or --packages are not added into AM's system classpath |  Minor | YARN | Yesha Vora | Saisai Shao |
| [SPARK-21394](https://issues.apache.org/jira/browse/SPARK-21394) | Reviving broken callable objects in UDF in PySpark |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-21432](https://issues.apache.org/jira/browse/SPARK-21432) | Reviving broken partial functions in UDF in PySpark |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-21444](https://issues.apache.org/jira/browse/SPARK-21444) | Fetch failure due to node reboot causes job failure |  Major | Scheduler | Sital Kedia | Josh Rosen |
| [SPARK-21445](https://issues.apache.org/jira/browse/SPARK-21445) | NotSerializableException thrown by UTF8String.IntWrapper |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-21332](https://issues.apache.org/jira/browse/SPARK-21332) | Incorrect result type inferred for some decimal expressions |  Major | SQL | Alexander Shkapsky | Anton Okolnychyi |
| [SPARK-21411](https://issues.apache.org/jira/browse/SPARK-21411) | Failed to get new HDFS delegation tokens in AMCredentialRenewer |  Major | YARN | Saisai Shao | Saisai Shao |
| [SPARK-21462](https://issues.apache.org/jira/browse/SPARK-21462) | Add batchId to the json of StreamingQueryProgress |  Minor | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-21457](https://issues.apache.org/jira/browse/SPARK-21457) | ExternalCatalog.listPartitions should correctly handle partition values with dot |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-20065](https://issues.apache.org/jira/browse/SPARK-20065) | Empty output files created for aggregation query in append mode |  Major | Structured Streaming | Silvio Fiorito | Li Yuanjian |
| [SPARK-21414](https://issues.apache.org/jira/browse/SPARK-21414) | Buffer in SlidingWindowFunctionFrame could be big though window is small |  Major | SQL | jin xing | jin xing |
| [SPARK-21441](https://issues.apache.org/jira/browse/SPARK-21441) | Incorrect Codegen in SortMergeJoinExec results failures in some cases |  Major | SQL | Feng Zhu | Feng Zhu |
| [SPARK-21446](https://issues.apache.org/jira/browse/SPARK-21446) | [SQL] JDBC Postgres fetchsize parameter ignored again |  Major | SQL | Albert Jang | Albert Jang |
| [SPARK-21333](https://issues.apache.org/jira/browse/SPARK-21333) | joinWith documents and analysis allow invalid join types |  Minor | Documentation | Corey Woodfield | Corey Woodfield |
| [SPARK-16542](https://issues.apache.org/jira/browse/SPARK-16542) | bugs about types that result an array of null when creating dataframe using python |  Major | PySpark, SQL | Xiang Gao | Xiang Gao |
| [SPARK-19531](https://issues.apache.org/jira/browse/SPARK-19531) | History server doesn't refresh jobs for long-life apps like thriftserver |  Major | Spark Core | Oleg Danilov | Oleg Danilov |
| [SPARK-21463](https://issues.apache.org/jira/browse/SPARK-21463) | Output of StructuredStreaming tables don't respect user specified schema when reading back the table |  Major | SQL, Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-20904](https://issues.apache.org/jira/browse/SPARK-20904) | Task failures during shutdown cause problems with preempted executors |  Major | Spark Core, YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-21512](https://issues.apache.org/jira/browse/SPARK-21512) | DatasetCacheSuite needs to execute unpersistent after executing peristent |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-21102](https://issues.apache.org/jira/browse/SPARK-21102) | Refresh command is too aggressive in parsing |  Major | SQL | Reynold Xin | Anton Okolnychyi |
| [SPARK-21502](https://issues.apache.org/jira/browse/SPARK-21502) | --supervise causing frameworkId conflicts in mesos cluster mode |  Major | Mesos | Stavros Kontopoulos | Stavros Kontopoulos |
| [SPARK-21516](https://issues.apache.org/jira/browse/SPARK-21516) | overriding afterEach() in DatasetCacheSuite must call super.afterEach() |  Minor | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-21498](https://issues.apache.org/jira/browse/SPARK-21498) | quick start  -\> one  py demo have some bug in code |  Trivial | Examples | LiZhaochuan | LiZhaochuan |
| [SPARK-21383](https://issues.apache.org/jira/browse/SPARK-21383) | YARN can allocate too many executors |  Major | YARN | Thomas Graves | DjvuLee |
| [SPARK-21447](https://issues.apache.org/jira/browse/SPARK-21447) | Spark history server fails to render compressed inprogress history file in some cases. |  Minor | Web UI | Eric Vandenberg | Eric Vandenberg |
| [SPARK-20586](https://issues.apache.org/jira/browse/SPARK-20586) | Add deterministic to ScalaUDF |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-21494](https://issues.apache.org/jira/browse/SPARK-21494) | Spark 2.2.0 AES encryption not working with External shuffle |  Major | Block Manager, Shuffle | Udit Mehrotra | Marcelo Vanzin |
| [SPARK-21400](https://issues.apache.org/jira/browse/SPARK-21400) | Spark shouldn't ignore user defined output committer in append mode |  Major | SQL | Robert Kruszewski |  |
| [SPARK-21271](https://issues.apache.org/jira/browse/SPARK-21271) | UnsafeRow.hashCode assertion when sizeInBytes not multiple of 8 |  Major | SQL | Bogdan Raducanu | Kazuaki Ishizaki |
| [SPARK-21319](https://issues.apache.org/jira/browse/SPARK-21319) | UnsafeExternalRowSorter.RowComparator memory leak |  Major | SQL | James Baker | Wenchen Fan |
| [SPARK-21306](https://issues.apache.org/jira/browse/SPARK-21306) | OneVsRest Conceals Columns That May Be Relevant To Underlying Classifier |  Critical | ML | Cathal Garvey | Yan Facai (颜发才) |
| [SPARK-21541](https://issues.apache.org/jira/browse/SPARK-21541) | Spark Logs show incorrect job status for a job that does not create SparkContext |  Minor | YARN | Parth Gandhi | Parth Gandhi |
| [SPARK-21508](https://issues.apache.org/jira/browse/SPARK-21508) | Documentation on 'Spark Streaming Custom Receivers' has error in example code |  Minor | Documentation | Remis Haroon | Remis Haroon |
| [SPARK-21357](https://issues.apache.org/jira/browse/SPARK-21357) | FileInputDStream not remove out of date RDD |  Major | DStreams | dadazheng | dadazheng |
| [SPARK-21555](https://issues.apache.org/jira/browse/SPARK-21555) | GROUP BY don't work with expressions with NVL and nested objects |  Major | SQL | Vitaly Gerasimov | Liang-Chi Hsieh |
| [SPARK-19451](https://issues.apache.org/jira/browse/SPARK-19451) | rangeBetween method should accept Long value as boundary |  Major | SQL | Julien Champ | Jiang Xingbo |
| [SPARK-18950](https://issues.apache.org/jira/browse/SPARK-18950) | Report conflicting fields when merging two StructTypes. |  Minor | SQL | Cheng Lian | Bravo Zhang |
| [SPARK-21585](https://issues.apache.org/jira/browse/SPARK-21585) | Application Master marking application status as Failed for Client Mode |  Minor | YARN | Parth Gandhi | Parth Gandhi |
| [SPARK-21522](https://issues.apache.org/jira/browse/SPARK-21522) | Flaky test: LauncherServerSuite.testStreamFiltering |  Minor | Tests | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-20079](https://issues.apache.org/jira/browse/SPARK-20079) | Re registration of AM hangs spark cluster in yarn-client mode |  Major | YARN | Guoqiang Li | Marcelo Vanzin |
| [SPARK-21593](https://issues.apache.org/jira/browse/SPARK-21593) | Fix broken configuration page |  Minor | Documentation | Artur Sukhenko | Sean Owen |
| [SPARK-12717](https://issues.apache.org/jira/browse/SPARK-12717) | pyspark broadcast fails when using multiple threads |  Critical | PySpark | Edward Walker | Bryan Cutler |
| [SPARK-21597](https://issues.apache.org/jira/browse/SPARK-21597) | Avg event time calculated in progress may be wrong |  Minor | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-21490](https://issues.apache.org/jira/browse/SPARK-21490) | SparkLauncher may fail to redirect streams |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-21546](https://issues.apache.org/jira/browse/SPARK-21546) | dropDuplicates with watermark yields RuntimeException due to binding failure |  Major | Structured Streaming | Jacek Laskowski | Shixiong Zhu |
| [SPARK-21615](https://issues.apache.org/jira/browse/SPARK-21615) | Fix broken redirect in collaborative filtering docs to databricks training repo |  Trivial | Documentation, MLlib | Ayush Singh | Ayush Singh |
| [SPARK-21605](https://issues.apache.org/jira/browse/SPARK-21605) | Let IntelliJ IDEA correctly detect Language level and Target byte code version |  Minor | Build | Chang chen | Chang chen |
| [SPARK-21599](https://issues.apache.org/jira/browse/SPARK-21599) | Collecting column statistics for datasource tables may fail with java.util.NoSuchElementException |  Major | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-20713](https://issues.apache.org/jira/browse/SPARK-20713) | Speculative task that got CommitDenied exception shows up as failed |  Major | Spark Core | Thomas Graves | Nuochen Lyu |
| [SPARK-21254](https://issues.apache.org/jira/browse/SPARK-21254) | History UI: Taking over 1 minute for initial page display |  Minor | Web UI | Dmitry Parfenchik | Dmitry Parfenchik |
| [SPARK-21330](https://issues.apache.org/jira/browse/SPARK-21330) | Bad partitioning does not allow to read a JDBC table with extreme values on the partition column |  Major | SQL | Stefano Parmesan | Andrew Ray |
| [SPARK-21374](https://issues.apache.org/jira/browse/SPARK-21374) | Reading globbed paths from S3 into DF doesn't work if filesystem caching is disabled |  Major | Spark Core | Andrey Taptunov | Andrey Taptunov |
| [SPARK-21451](https://issues.apache.org/jira/browse/SPARK-21451) | HiveConf in SparkSQLCLIDriver doesn't respect spark.hadoop.some.hive.variables |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-21637](https://issues.apache.org/jira/browse/SPARK-21637) | \`hive.metastore.warehouse\` in --hiveconf is not respected |  Minor | SQL | Kent Yao | Kent Yao |
| [SPARK-21588](https://issues.apache.org/jira/browse/SPARK-21588) | SQLContext.getConf(key, null) should return null, but it throws NPE |  Minor | SQL | Burak Yavuz | Vinod KC |
| [SPARK-21621](https://issues.apache.org/jira/browse/SPARK-21621) | Reset numRecordsWritten after DiskBlockObjectWriter.commitAndGet called |  Major | Spark Core | Xianyang Liu | Xianyang Liu |
| [SPARK-21647](https://issues.apache.org/jira/browse/SPARK-21647) | SortMergeJoin failed when using CROSS |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-21565](https://issues.apache.org/jira/browse/SPARK-21565) | aggregate query fails with watermark on eventTime but works with watermark on timestamp column generated by current\_timestamp |  Major | Structured Streaming | Amit Assudani | Jose Torres |
| [SPARK-21648](https://issues.apache.org/jira/browse/SPARK-21648) | Confusing assert failure in JDBC source when users misspell the option \`partitionColumn\` |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-21567](https://issues.apache.org/jira/browse/SPARK-21567) | Dataset with Tuple of type alias throws error |  Major | SQL | Tomasz Bartczak | Liang-Chi Hsieh |
| [SPARK-21580](https://issues.apache.org/jira/browse/SPARK-21580) | A bug with  \`Group by ordinal\` |  Major | SQL | liuxian | liuxian |
| [SPARK-21503](https://issues.apache.org/jira/browse/SPARK-21503) | Spark UI shows incorrect task status for a killed Executor Process |  Minor | Spark Core | Parth Gandhi | Parth Gandhi |
| [SPARK-21523](https://issues.apache.org/jira/browse/SPARK-21523) | Fix bug of strong wolfe linesearch \`init\` parameter lose effectiveness |  Critical | MLlib | Weichen Xu | Weichen Xu |
| [SPARK-21596](https://issues.apache.org/jira/browse/SPARK-21596) | Audit the places calling HDFSMetadataLog.get |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-21551](https://issues.apache.org/jira/browse/SPARK-21551) | pyspark's collect fails when getaddrinfo is too slow |  Critical | PySpark | peay | peay |
| [SPARK-21638](https://issues.apache.org/jira/browse/SPARK-21638) | Warning message of RF is not accurate |  Minor | ML | Peng Meng | Peng Meng |
| [SPARK-21595](https://issues.apache.org/jira/browse/SPARK-21595) | introduction of spark.sql.windowExec.buffer.spill.threshold in spark 2.2 breaks existing workflow |  Minor | Documentation, PySpark | Stephan Reiling | Tejas Patil |
| [SPARK-19122](https://issues.apache.org/jira/browse/SPARK-19122) | Unnecessary shuffle+sort added if join predicates ordering differ from bucketing and sorting order |  Major | SQL | Tejas Patil | Tejas Patil |
| [SPARK-12559](https://issues.apache.org/jira/browse/SPARK-12559) | Cluster mode doesn't work with --packages |  Major | Spark Submit | Andrew Or | Stavros Kontopoulos |
| [SPARK-21563](https://issues.apache.org/jira/browse/SPARK-21563) | Race condition when serializing TaskDescriptions and adding jars |  Major | Scheduler, Spark Core | Andrew Ash | Andrew Ash |
| [SPARK-19471](https://issues.apache.org/jira/browse/SPARK-19471) | A confusing NullPointerException when creating table |  Critical | SQL | StanZhai | Feng Zhu |
| [SPARK-21721](https://issues.apache.org/jira/browse/SPARK-21721) | Memory leak in org.apache.spark.sql.hive.execution.InsertIntoHiveTable |  Critical | SQL | yzheng616 | Liang-Chi Hsieh |
| [SPARK-21422](https://issues.apache.org/jira/browse/SPARK-21422) | Depend on Apache ORC 1.4.0 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-21723](https://issues.apache.org/jira/browse/SPARK-21723) | Can't write LibSVM - key not found: numFeatures |  Major | Input/Output, ML | Jan Vršovský | Jan Vršovský |
| [SPARK-21656](https://issues.apache.org/jira/browse/SPARK-21656) | spark dynamic allocation should not idle timeout executors when there are enough tasks to run on them |  Major | Spark Core | Jong Yoon Lee | Jong Yoon Lee |
| [SPARK-21738](https://issues.apache.org/jira/browse/SPARK-21738) | Thriftserver doesn't cancel jobs when session is closed |  Major | SQL | Marco Gaido | Marco Gaido |
| [SPARK-3151](https://issues.apache.org/jira/browse/SPARK-3151) | DiskStore attempts to map any size BlockId without checking MappedByteBuffer limit |  Minor | Block Manager, Spark Core | Damon Brown | Eyal Farago |
| [SPARK-21743](https://issues.apache.org/jira/browse/SPARK-21743) | top-most limit should not cause memory leak |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-21642](https://issues.apache.org/jira/browse/SPARK-21642) | Use FQDN for DRIVER\_HOST\_ADDRESS instead of ip address |  Major | Spark Core | Aki Tanaka | Aki Tanaka |
| [SPARK-18394](https://issues.apache.org/jira/browse/SPARK-18394) | Executing the same query twice in a row results in CodeGenerator cache misses |  Major | SQL | Jonny Serencsa | Takeshi Yamamuro |
| [SPARK-21767](https://issues.apache.org/jira/browse/SPARK-21767) | Add Decimal Test For Avro in VersionSuite |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-21677](https://issues.apache.org/jira/browse/SPARK-21677) | json\_tuple throws NullPointException when column is null as string type. |  Minor | SQL | Hyukjin Kwon | Jen-Ming Chung |
| [SPARK-21739](https://issues.apache.org/jira/browse/SPARK-21739) | timestamp partition would fail in v2.2.0 |  Critical | SQL | wangzhihao | Feng Zhu |
| [SPARK-21793](https://issues.apache.org/jira/browse/SPARK-21793) | Correct validateAndTransformSchema in GaussianMixture and AFTSurvivalRegression |  Minor | MLlib | Cedric Pelvet | Cedric Pelvet |
| [SPARK-21782](https://issues.apache.org/jira/browse/SPARK-21782) | Repartition creates skews when numPartitions is a power of 2 |  Major | Spark Core | Sergey Serebryakov | Sergey Serebryakov |
| [SPARK-21617](https://issues.apache.org/jira/browse/SPARK-21617) | ALTER TABLE...ADD COLUMNS broken in Hive 2.1 for DS tables |  Major | SQL | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-21753](https://issues.apache.org/jira/browse/SPARK-21753) | running pi example with pypy on spark fails to serialize |  Major | PySpark | Thomas Graves | Kyle Kelley |
| [SPARK-19326](https://issues.apache.org/jira/browse/SPARK-19326) | Speculated task attempts do not get launched in few scenarios |  Major | Scheduler | Tejas Patil |  |
| [SPARK-21501](https://issues.apache.org/jira/browse/SPARK-21501) | Spark shuffle index cache size should be memory based |  Major | Shuffle | Thomas Graves | Sanket Reddy |
| [SPARK-21805](https://issues.apache.org/jira/browse/SPARK-21805) | disable R vignettes code on Windows |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-21804](https://issues.apache.org/jira/browse/SPARK-21804) | json\_tuple returns null values within repeated columns except the first one |  Minor | SQL | Jen-Ming Chung | Jen-Ming Chung |
| [SPARK-21759](https://issues.apache.org/jira/browse/SPARK-21759) | In.checkInputDataTypes should not wrongly report unresolved plans for IN correlated subquery |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-21826](https://issues.apache.org/jira/browse/SPARK-21826) | outer broadcast hash join should not throw NPE |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-21681](https://issues.apache.org/jira/browse/SPARK-21681) | MLOR do not work correctly when featureStd contains zero |  Major | ML | Weichen Xu | Weichen Xu |
| [SPARK-21788](https://issues.apache.org/jira/browse/SPARK-21788) | Handle more exceptions when stopping a streaming query |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-21830](https://issues.apache.org/jira/browse/SPARK-21830) | Bump the dependency of ANTLR to version 4.7 |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-21255](https://issues.apache.org/jira/browse/SPARK-21255) | NPE when creating encoder for enum |  Major | Java API | Mike | Mike |
| [SPARK-21832](https://issues.apache.org/jira/browse/SPARK-21832) | Merge SQLBuilderTest into ExpressionSQLBuilderSuite |  Minor | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-21714](https://issues.apache.org/jira/browse/SPARK-21714) | SparkSubmit in Yarn Client mode downloads remote files and then reuploads them again |  Critical | Spark Submit | Thomas Graves | Saisai Shao |
| [SPARK-17742](https://issues.apache.org/jira/browse/SPARK-17742) | Spark Launcher does not get failed state in Listener |  Major | Spark Submit | Aseem Bansal | Marcelo Vanzin |
| [SPARK-21837](https://issues.apache.org/jira/browse/SPARK-21837) | UserDefinedTypeSuite local UDFs not actually testing what it intends |  Minor | SQL, Tests | Sean Owen | Sean Owen |
| [SPARK-21831](https://issues.apache.org/jira/browse/SPARK-21831) | Remove \`spark.sql.hive.convertMetastoreOrc\` config in HiveCompatibilitySuite |  Minor | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-21818](https://issues.apache.org/jira/browse/SPARK-21818) | MultivariateOnlineSummarizer.variance generate negative result |  Major | ML, MLlib | Weichen Xu | Weichen Xu |
| [SPARK-21798](https://issues.apache.org/jira/browse/SPARK-21798) | No config to replace deprecated SPARK\_CLASSPATH config for launching daemons like History Server |  Minor | Spark Core | Sanket Reddy | Parth Gandhi |
| [SPARK-21801](https://issues.apache.org/jira/browse/SPARK-21801) | SparkR unit test randomly fail on trees |  Critical | SparkR, Tests | Weichen Xu | Felix Cheung |
| [SPARK-21845](https://issues.apache.org/jira/browse/SPARK-21845) | Make codegen fallback of expressions configurable |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-21834](https://issues.apache.org/jira/browse/SPARK-21834) | Incorrect executor request in case of dynamic allocation |  Major | Scheduler | Sital Kedia | Sital Kedia |
| [SPARK-17321](https://issues.apache.org/jira/browse/SPARK-17321) | YARN shuffle service should use good disk from yarn.nodemanager.local-dirs |  Major | YARN | yunjiong zhao | Saisai Shao |
| [SPARK-21534](https://issues.apache.org/jira/browse/SPARK-21534) | PickleException when creating dataframe from python row with empty bytearray |  Major | PySpark, SQL | Maciej Bryński | Liang-Chi Hsieh |
| [SPARK-21880](https://issues.apache.org/jira/browse/SPARK-21880) | [spark UI]In the SQL table page, modify jobs trace information |  Minor | Web UI | he.qiao | he.qiao |
| [SPARK-21418](https://issues.apache.org/jira/browse/SPARK-21418) | NoSuchElementException: None.get in DataSourceScanExec with sun.io.serialization.extendedDebugInfo=true |  Minor | SQL | Daniel Darabos | Sean Owen |
| [SPARK-21913](https://issues.apache.org/jira/browse/SPARK-21913) | \`withDatabase\` should drop database with CASCADE |  Minor | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-20978](https://issues.apache.org/jira/browse/SPARK-20978) | CSV emits NPE when the number of tokens is less than given schema and corrupt column is given |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-18061](https://issues.apache.org/jira/browse/SPARK-18061) | Spark Thriftserver needs to create SPNego principal |  Major | SQL | Chandana Mirashi | Saisai Shao |
| [SPARK-21924](https://issues.apache.org/jira/browse/SPARK-21924) | Bug in Structured Streaming Documentation |  Trivial | Documentation | Riccardo Corbella | Riccardo Corbella |
| [SPARK-21912](https://issues.apache.org/jira/browse/SPARK-21912) | ORC/Parquet table should not create invalid column names |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-21890](https://issues.apache.org/jira/browse/SPARK-21890) | ObtainCredentials does not pass creds to addDelegationTokens |  Major | Spark Core | Sanket Reddy | Sanket Reddy |
| [SPARK-21950](https://issues.apache.org/jira/browse/SPARK-21950) | pyspark.sql.tests.SQLTests2 should stop SparkContext. |  Major | PySpark, SQL, Tests | Takuya Ueshin | Takuya Ueshin |
| [SPARK-21946](https://issues.apache.org/jira/browse/SPARK-21946) | Flaky test: InMemoryCatalogedDDLSuite.\`alter table: rename cached table\` |  Minor | Tests | Dongjoon Hyun | Kazuaki Ishizaki |
| [SPARK-15243](https://issues.apache.org/jira/browse/SPARK-15243) | Binarizer.explainParam(u"...") raises ValueError |  Minor | PySpark | Kazuki Yokoishi | Hyukjin Kwon |
| [SPARK-21941](https://issues.apache.org/jira/browse/SPARK-21941) | Stop storing unused attemptId in SQLTaskMetrics |  Major | Web UI | Andrew Ash | Andrew Ash |
| [SPARK-21954](https://issues.apache.org/jira/browse/SPARK-21954) | JacksonUtils should verify MapType's value type instead of key type |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-20098](https://issues.apache.org/jira/browse/SPARK-20098) | DataType's typeName method returns with 'StructF' in case of StructField |  Major | PySpark | Peter Szalai | Peter Szalai |
| [SPARK-21610](https://issues.apache.org/jira/browse/SPARK-21610) | Corrupt records are not handled properly when creating a dataframe from a file |  Major | SQL | dmtran | Jen-Ming Chung |
| [SPARK-18608](https://issues.apache.org/jira/browse/SPARK-18608) | Spark ML algorithms that check RDD cache level for internal caching double-cache data |  Major | ML | Nick Pentreath | zhengruifeng |
| [SPARK-21979](https://issues.apache.org/jira/browse/SPARK-21979) | Improve QueryPlanConstraints framework |  Critical | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-21980](https://issues.apache.org/jira/browse/SPARK-21980) | References in grouping functions should be indexed with resolver |  Major | SQL | Feng Zhu | Feng Zhu |
| [SPARK-20427](https://issues.apache.org/jira/browse/SPARK-20427) | Issue with Spark interpreting Oracle datatype NUMBER |  Major | SQL | Alexander Andrushenko | Yuming Wang |
| [SPARK-21922](https://issues.apache.org/jira/browse/SPARK-21922) | When executor failed and task metrics have not send to driver,the status will always be 'RUNNING' and the duration will be 'CurrentTime - launchTime' |  Major | Web UI | zhoukang | zhoukang |
| [SPARK-21987](https://issues.apache.org/jira/browse/SPARK-21987) | Spark 2.3 cannot read 2.2 event logs |  Blocker | SQL | Marcelo Vanzin | Wenchen Fan |
| [SPARK-21958](https://issues.apache.org/jira/browse/SPARK-21958) | Attempting to save large Word2Vec model hangs driver in constant GC. |  Major | ML | Travis Hegner | Travis Hegner |
| [SPARK-21985](https://issues.apache.org/jira/browse/SPARK-21985) | PySpark PairDeserializer is broken for double-zipped RDDs |  Major | PySpark | Stuart Berg | Andrew Ray |
| [SPARK-21953](https://issues.apache.org/jira/browse/SPARK-21953) | Show both memory and disk bytes spilled if either is present |  Minor | Web UI | Andrew Ash | Andrew Ash |
| [SPARK-22030](https://issues.apache.org/jira/browse/SPARK-22030) | GraphiteSink fails to re-connect to Graphite instances behind an ELB or any other auto-scaled LB |  Minor | Spark Core | Alex Mikhailau | Alex Mikhailau |
| [SPARK-22052](https://issues.apache.org/jira/browse/SPARK-22052) | Incorrect Metric assigned in MetricsReporter.scala |  Minor | Input/Output, Structured Streaming | Jason Taaffe | Jason Taaffe |
| [SPARK-21428](https://issues.apache.org/jira/browse/SPARK-21428) | CliSessionState never be recognized because of IsolatedClientLoader |  Minor | SQL | Kent Yao | Kent Yao |
| [SPARK-21917](https://issues.apache.org/jira/browse/SPARK-21917) | Remote http(s) resources is not supported in YARN mode |  Minor | Spark Submit, YARN | Saisai Shao | Saisai Shao |
| [SPARK-21338](https://issues.apache.org/jira/browse/SPARK-21338) | AggregatedDialect doesn't override isCascadingTruncateTable() method |  Major | SQL | Ostap Gonchar | Huaxin Gao |
| [SPARK-21969](https://issues.apache.org/jira/browse/SPARK-21969) | CommandUtils.updateTableStats should call refreshTable |  Major | SQL | Bogdan Raducanu | Anton Okolnychyi |
| [SPARK-22067](https://issues.apache.org/jira/browse/SPARK-22067) | ArrowWriter StringWriter not using position of ByteBuffer holding data |  Major | SQL | Bryan Cutler | Bryan Cutler |
| [SPARK-21977](https://issues.apache.org/jira/browse/SPARK-21977) | SinglePartition optimizations break certain Streaming Stateful Aggregation requirements |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-22076](https://issues.apache.org/jira/browse/SPARK-22076) | Expand.projections should not be a Stream |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-21384](https://issues.apache.org/jira/browse/SPARK-21384) | Spark 2.2 + YARN without spark.yarn.jars / spark.yarn.archive fails |  Major | YARN | holdenk | Devaraj K |
| [SPARK-21928](https://issues.apache.org/jira/browse/SPARK-21928) | ClassNotFoundException for custom Kryo registrator class during serde in netty threads |  Major | Spark Core | John Brock | Imran Rashid |
| [SPARK-22088](https://issues.apache.org/jira/browse/SPARK-22088) | Incorrect scalastyle comment causes wrong styles in stringExpressions |  Minor | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-22094](https://issues.apache.org/jira/browse/SPARK-22094) | processAllAvailable should not block forever when a query is stopped |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-21998](https://issues.apache.org/jira/browse/SPARK-21998) | SortMergeJoinExec did not calculate its outputOrdering correctly during physical planning |  Minor | SQL | Maryann Xue | Maryann Xue |
| [SPARK-22071](https://issues.apache.org/jira/browse/SPARK-22071) | Improve release build scripts to check correct JAVA version is being used for build |  Major | Build | holdenk | holdenk |
| [SPARK-22092](https://issues.apache.org/jira/browse/SPARK-22092) | Reallocation in OffHeapColumnVector.reserveInternal corrupts array data |  Major | SQL | Ala Luszczak | Ala Luszczak |
| [SPARK-21766](https://issues.apache.org/jira/browse/SPARK-21766) | DataFrame toPandas() raises ValueError with nullable int columns |  Major | PySpark | Bryan Cutler | Liang-Chi Hsieh |
| [SPARK-22060](https://issues.apache.org/jira/browse/SPARK-22060) | CrossValidator/TrainValidationSplit parallelism param persist/load bug |  Major | ML | Weichen Xu | Weichen Xu |
| [SPARK-22033](https://issues.apache.org/jira/browse/SPARK-22033) | BufferHolder, other size checks should account for the specific VM array size limitations |  Minor | SQL | Vadim Semenov | Sean Owen |
| [SPARK-22109](https://issues.apache.org/jira/browse/SPARK-22109) | Reading tables partitioned by columns that look like timestamps has inconsistent schema inference |  Minor | SQL | Imran Rashid | Hyukjin Kwon |
| [SPARK-22093](https://issues.apache.org/jira/browse/SPARK-22093) | UtilsSuite "resolveURIs with multiple paths" test always cancelled |  Trivial | Tests | Marcelo Vanzin | Hyukjin Kwon |
| [SPARK-22107](https://issues.apache.org/jira/browse/SPARK-22107) | "as" should be "alias" in python quick start documentation |  Trivial | Documentation | John O'Leary | John O'Leary |
| [SPARK-22083](https://issues.apache.org/jira/browse/SPARK-22083) | When dropping multiple blocks to disk, Spark should release all locks on a failure |  Major | Block Manager, Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-22141](https://issues.apache.org/jira/browse/SPARK-22141) | Propagate empty relation before checking Cartesian products |  Critical | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-22143](https://issues.apache.org/jira/browse/SPARK-22143) | OffHeapColumnVector may leak memory |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-22135](https://issues.apache.org/jira/browse/SPARK-22135) | metrics in spark-dispatcher not being registered properly |  Minor | Deploy, Mesos | paul mackles | paul mackles |
| [SPARK-22146](https://issues.apache.org/jira/browse/SPARK-22146) | FileNotFoundException while reading ORC files containing '%' |  Major | SQL | Marco Gaido | Marco Gaido |
| [SPARK-22129](https://issues.apache.org/jira/browse/SPARK-22129) | Spark release scripts ignore the GPG\_KEY and always sign with your default key |  Blocker | Build | holdenk | holdenk |
| [SPARK-21904](https://issues.apache.org/jira/browse/SPARK-21904) | Rename tempTables to tempViews in SessionCatalog |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-22167](https://issues.apache.org/jira/browse/SPARK-22167) | Spark Packaging w/R distro issues |  Blocker | Build, SparkR | holdenk | holdenk |
| [SPARK-22176](https://issues.apache.org/jira/browse/SPARK-22176) | Dataset.show(Int.MaxValue) hits integer overflows |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-22158](https://issues.apache.org/jira/browse/SPARK-22158) | convertMetastore should not ignore storage properties |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-21644](https://issues.apache.org/jira/browse/SPARK-21644) | LocalLimit.maxRows is defined incorrectly |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-20466](https://issues.apache.org/jira/browse/SPARK-20466) | HadoopRDD#addLocalConfiguration throws NPE |  Minor | YARN | liyunzhang | Sahil Takiar |
| [SPARK-22171](https://issues.apache.org/jira/browse/SPARK-22171) | Describe Table Extended Failed when Table Owner is Empty |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-22206](https://issues.apache.org/jira/browse/SPARK-22206) | gapply in R can't work on empty grouping columns |  Major | SparkR, SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-22159](https://issues.apache.org/jira/browse/SPARK-22159) | spark.sql.execution.arrow.enable and spark.sql.codegen.aggregate.map.twolevel.enable -\> enabled |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-21877](https://issues.apache.org/jira/browse/SPARK-21877) | Windows command script can not handle quotes in parameter |  Minor | Deploy, Windows | Xiaokai Zhao | Xiaokai Zhao |
| [SPARK-21947](https://issues.apache.org/jira/browse/SPARK-21947) | monotonically\_increasing\_id doesn't work in Structured Streaming |  Major | Structured Streaming | Shixiong Zhu | Liang-Chi Hsieh |
| [SPARK-21549](https://issues.apache.org/jira/browse/SPARK-21549) | Spark fails to complete job correctly in case of OutputFormat which do not write into hdfs |  Major | Spark Core | Sergey Zhemzhitsky | Sergey Zhemzhitsky |
| [SPARK-22178](https://issues.apache.org/jira/browse/SPARK-22178) | Refresh Table does not refresh the underlying tables of the persistent view |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-22169](https://issues.apache.org/jira/browse/SPARK-22169) | support byte length literal as identifier |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22074](https://issues.apache.org/jira/browse/SPARK-22074) | Task killed by other attempt task should not be resubmitted |  Major | Scheduler, Spark Core | Li Yuanjian | Li Yuanjian |
| [SPARK-21568](https://issues.apache.org/jira/browse/SPARK-21568) | ConsoleProgressBar should only be enabled in shells |  Minor | Spark Core | Marcelo Vanzin | Dongjoon Hyun |
| [SPARK-22218](https://issues.apache.org/jira/browse/SPARK-22218) | spark shuffle services fails to update secret on application re-attempts |  Blocker | Shuffle, YARN | Thomas Graves | Thomas Graves |
| [SPARK-22230](https://issues.apache.org/jira/browse/SPARK-22230) | agg(last('attr)) gives weird results for streaming |  Minor | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-22222](https://issues.apache.org/jira/browse/SPARK-22222) | Fix the ARRAY\_MAX in BufferHolder and add a test |  Major | Spark Core | Feng Liu | Feng Liu |
| [SPARK-20025](https://issues.apache.org/jira/browse/SPARK-20025) | Driver fail over will not work, if SPARK\_LOCAL\* env is set. |  Major | Spark Core | Prashant Sharma | Prashant Sharma |
| [SPARK-21907](https://issues.apache.org/jira/browse/SPARK-21907) | NullPointerException in UnsafeExternalSorter.spill() |  Major | Spark Core | Juliusz Sompolski | Eyal Farago |
| [SPARK-22252](https://issues.apache.org/jira/browse/SPARK-22252) | FileFormatWriter should respect the input query schema |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22097](https://issues.apache.org/jira/browse/SPARK-22097) | Request an accurate memory after we unrolled the block |  Major | Spark Core | Xianyang Liu |  |
| [SPARK-22251](https://issues.apache.org/jira/browse/SPARK-22251) | Metric "aggregate time" is incorrect when codegen is off |  Minor | SQL | Ala Luszczak | Ala Luszczak |
| [SPARK-22257](https://issues.apache.org/jira/browse/SPARK-22257) | Reserve all non-deterministic expressions in ExpressionSet. |  Critical | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-14387](https://issues.apache.org/jira/browse/SPARK-14387) | Enable Hive-1.x ORC compatibility with spark.sql.hive.convertMetastoreOrc |  Major | SQL | Rajesh Balamohan | Dongjoon Hyun |
| [SPARK-16628](https://issues.apache.org/jira/browse/SPARK-16628) | OrcConversions should not convert an ORC table represented by MetastoreRelation to HadoopFsRelation if metastore schema does not match schema stored in ORC files |  Major | SQL | Yin Huai | Dongjoon Hyun |
| [SPARK-18355](https://issues.apache.org/jira/browse/SPARK-18355) | Spark SQL fails to read data from a ORC hive table that has a new column added to it |  Major | SQL | Sandeep Nemuri | Dongjoon Hyun |
| [SPARK-21762](https://issues.apache.org/jira/browse/SPARK-21762) | FileFormatWriter/BasicWriteTaskStatsTracker metrics collection fails if a new file isn't yet visible |  Major | SQL | Steve Loughran | Steve Loughran |
| [SPARK-22273](https://issues.apache.org/jira/browse/SPARK-22273) | Fix key/value schema field names in HashMapGenerators. |  Minor | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-22223](https://issues.apache.org/jira/browse/SPARK-22223) | ObjectHashAggregate introduces unnecessary shuffle |  Major | Optimizer | Michele Costantino Soccio | Liang-Chi Hsieh |
| [SPARK-22280](https://issues.apache.org/jira/browse/SPARK-22280) | Improve StatisticsSuite to test \`convertMetastore\` properly |  Minor | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-22249](https://issues.apache.org/jira/browse/SPARK-22249) | UnsupportedOperationException: empty.reduceLeft when caching a dataframe |  Major | SQL | Andreas Maier | Marco Gaido |
| [SPARK-22224](https://issues.apache.org/jira/browse/SPARK-22224) | Override toString of KeyValueGroupedDataset & RelationalGroupedDataset |  Minor | SQL | Kent Yao | Kent Yao |
| [SPARK-22062](https://issues.apache.org/jira/browse/SPARK-22062) | BlockManager does not account for memory consumed by remote fetches |  Minor | Block Manager | Sergei Lebedev | Saisai Shao |
| [SPARK-22271](https://issues.apache.org/jira/browse/SPARK-22271) | Describe results in "null" for the value of "mean" of a numeric variable |  Minor | SQL | Shafique Jamal | Huaxin Gao |
| [SPARK-22300](https://issues.apache.org/jira/browse/SPARK-22300) | Update ORC to 1.4.1 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-22290](https://issues.apache.org/jira/browse/SPARK-22290) | Starting second context in same JVM fails to get new Hive delegation token |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-21055](https://issues.apache.org/jira/browse/SPARK-21055) | Support grouping\_\_id |  Major | SQL | cen yuhai | cen yuhai |
| [SPARK-22326](https://issues.apache.org/jira/browse/SPARK-22326) | Remove unnecessary hashCode and equals methods |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-22319](https://issues.apache.org/jira/browse/SPARK-22319) | SparkSubmit calls getFileStatus before calling loginUserFromKeytab |  Major | Deploy, Spark Core | Steven Rand | Steven Rand |
| [SPARK-22303](https://issues.apache.org/jira/browse/SPARK-22303) | Getting java.sql.SQLException: Unsupported type 101 for BINARY\_DOUBLE |  Minor | SQL | Kohki Nishio | Kohki Nishio |
| [SPARK-21929](https://issues.apache.org/jira/browse/SPARK-21929) | Support \`ALTER TABLE table\_name ADD COLUMNS(..)\` for ORC data source |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-21101](https://issues.apache.org/jira/browse/SPARK-21101) | Error running Hive temporary UDTF on latest Spark 2.2 |  Major | SQL | Dayou Zhou | Yuming Wang |
| [SPARK-22349](https://issues.apache.org/jira/browse/SPARK-22349) | In on-heap mode, when allocating memory from pool,we should fill memory  with \`MEMORY\_DEBUG\_FILL\_CLEAN\_VALUE\` |  Minor | Spark Core | liuxian | liuxian |
| [SPARK-21991](https://issues.apache.org/jira/browse/SPARK-21991) | [LAUNCHER] LauncherServer acceptConnections thread sometime dies if machine has very high load |  Minor | Spark Submit | Andrea Zito | Andrea Zito |
| [SPARK-22227](https://issues.apache.org/jira/browse/SPARK-22227) | DiskBlockManager.getAllBlocks could fail if called during shuffle |  Minor | Block Manager | Sergei Lebedev | Sergei Lebedev |
| [SPARK-22332](https://issues.apache.org/jira/browse/SPARK-22332) | NaiveBayes unit test occasionly fail |  Minor | ML | Weichen Xu | Weichen Xu |
| [SPARK-17902](https://issues.apache.org/jira/browse/SPARK-17902) | collect() ignores stringsAsFactors |  Major | SparkR | Hossein Falaki | Hyukjin Kwon |
| [SPARK-22328](https://issues.apache.org/jira/browse/SPARK-22328) | ClosureCleaner misses referenced superclass fields, gives them null values |  Major | Spark Core | Ryan Williams | Liang-Chi Hsieh |
| [SPARK-22356](https://issues.apache.org/jira/browse/SPARK-22356) | data source table should support overlapped columns between data and partition schema |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22355](https://issues.apache.org/jira/browse/SPARK-22355) | Dataset.collect is not threadsafe |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22333](https://issues.apache.org/jira/browse/SPARK-22333) | ColumnReference should get higher priority than timeFunctionCall(CURRENT\_DATE, CURRENT\_TIMESTAMP) |  Major | SQL | Feng Zhu | Feng Zhu |
| [SPARK-22370](https://issues.apache.org/jira/browse/SPARK-22370) | Config values should be captured in Driver. |  Major | PySpark, SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-22375](https://issues.apache.org/jira/browse/SPARK-22375) | Test script can fail if eggs are installed by setup.py during test process |  Trivial | Tests | Joel Croteau |  |
| [SPARK-22291](https://issues.apache.org/jira/browse/SPARK-22291) | Postgresql UUID[] to Cassandra: Conversion Error |  Major | SQL | Fabio J. Walter | Jen-Ming Chung |
| [SPARK-17788](https://issues.apache.org/jira/browse/SPARK-17788) | RangePartitioner results in few very large tasks and many small to empty tasks |  Major | Spark Core, SQL | Babak Alipour | Wenchen Fan |
| [SPARK-21033](https://issues.apache.org/jira/browse/SPARK-21033) | fix the potential OOM in UnsafeExternalSorter |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22396](https://issues.apache.org/jira/browse/SPARK-22396) | Unresolved operator InsertIntoDir for Hive format when Hive Support is not enabled |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-11334](https://issues.apache.org/jira/browse/SPARK-11334) | numRunningTasks can't be less than 0, or it will affect executor allocation |  Major | Spark Core | meiyoula | Sital Kedia |
| [SPARK-22305](https://issues.apache.org/jira/browse/SPARK-22305) | HDFSBackedStateStoreProvider fails with StackOverflowException when attempting to recover state |  Major | Structured Streaming | Yuval Itzchakov | Jose Torres |
| [SPARK-22172](https://issues.apache.org/jira/browse/SPARK-22172) | Worker hangs when the external shuffle service port is already in use |  Major | Spark Core | Devaraj K | Devaraj K |
| [SPARK-22306](https://issues.apache.org/jira/browse/SPARK-22306) | INFER\_AND\_SAVE overwrites important metadata in Parquet Metastore table |  Critical | SQL | David Malinge | Wenchen Fan |
| [SPARK-22145](https://issues.apache.org/jira/browse/SPARK-22145) | Issues with driver re-starting on mesos (supervise) |  Major | Mesos | Stavros Kontopoulos | Stavros Kontopoulos |
| [SPARK-22243](https://issues.apache.org/jira/browse/SPARK-22243) | streaming job failed to restart from checkpoint |  Major | DStreams | StephenZou | StephenZou |
| [SPARK-22254](https://issues.apache.org/jira/browse/SPARK-22254) | clean up the implementation of \`growToSize\` in CompactBuffer |  Major | Spark Core | Feng Liu | Kazuaki Ishizaki |
| [SPARK-22437](https://issues.apache.org/jira/browse/SPARK-22437) | jdbc write fails to set default mode |  Trivial | Java API | Adrian Bridgett | Marco Gaido |
| [SPARK-22410](https://issues.apache.org/jira/browse/SPARK-22410) | Excessive spill for Pyspark UDF when a row has shrunk |  Minor | PySpark | Clément Stenac | Liang-Chi Hsieh |
| [SPARK-22211](https://issues.apache.org/jira/browse/SPARK-22211) | LimitPushDown optimization for FullOuterJoin generates wrong results |  Major | SQL | Benyi Wang | Henry Robinson |
| [SPARK-22443](https://issues.apache.org/jira/browse/SPARK-22443) | AggregatedDialect doesn't override quoteIdentifier and other methods in JdbcDialects |  Major | SQL | Hongbo | Huaxin Gao |
| [SPARK-22429](https://issues.apache.org/jira/browse/SPARK-22429) | Streaming checkpointing code does not retry after failure due to NullPointerException |  Minor | DStreams | Tristan Stevens | Tristan Stevens |
| [SPARK-22330](https://issues.apache.org/jira/browse/SPARK-22330) | Linear containsKey operation for serialized maps. |  Major | Spark Core | Alexander | Alexander |
| [SPARK-22454](https://issues.apache.org/jira/browse/SPARK-22454) | ExternalShuffleClient.close() should check null |  Minor | Shuffle | Yuming Wang | Yuming Wang |
| [SPARK-22376](https://issues.apache.org/jira/browse/SPARK-22376) | run-tests.py fails at exec-sbt if run with Python 3 |  Minor | Tests | Joel Croteau | Hyukjin Kwon |
| [SPARK-22417](https://issues.apache.org/jira/browse/SPARK-22417) | createDataFrame from a pandas.DataFrame reads datetime64 values as longs |  Major | PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-22464](https://issues.apache.org/jira/browse/SPARK-22464) | \<=\> is not supported by Hive metastore partition predicate pushdown |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-22209](https://issues.apache.org/jira/browse/SPARK-22209) | PySpark does not recognize imports from submodules |  Minor | PySpark | Joel Croteau |  |
| [SPARK-22327](https://issues.apache.org/jira/browse/SPARK-22327) | R CRAN check fails on non-latest branches |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-22281](https://issues.apache.org/jira/browse/SPARK-22281) | Handle R method breaking signature changes |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-22446](https://issues.apache.org/jira/browse/SPARK-22446) | Optimizer causing StringIndexerModel's indexer UDF to throw "Unseen label" exception incorrectly for filtered data. |  Major | ML, Optimizer | Greg Bellchambers | Liang-Chi Hsieh |
| [SPARK-22466](https://issues.apache.org/jira/browse/SPARK-22466) | SPARK\_CONF\_DIR is not is set by Spark's launch scripts with default value |  Major | Spark Submit | Kent Yao | Kent Yao |
| [SPARK-22463](https://issues.apache.org/jira/browse/SPARK-22463) | Missing hadoop/hive/hbase/etc configuration files in SPARK\_CONF\_DIR to distributed archive |  Major | YARN | Kent Yao | Kent Yao |
| [SPARK-22442](https://issues.apache.org/jira/browse/SPARK-22442) | Schema generated by Product Encoder doesn't match case class field name when using non-standard characters |  Major | SQL | Mikel San Vicente | Liang-Chi Hsieh |
| [SPARK-22403](https://issues.apache.org/jira/browse/SPARK-22403) | StructuredKafkaWordCount example fails in YARN cluster mode |  Major | Structured Streaming | Wing Yew Poon | Wing Yew Poon |
| [SPARK-22287](https://issues.apache.org/jira/browse/SPARK-22287) | SPARK\_DAEMON\_MEMORY not honored by MesosClusterDispatcher |  Minor | Mesos | paul mackles | paul mackles |
| [SPARK-22472](https://issues.apache.org/jira/browse/SPARK-22472) | Datasets generate random values for null primitive types |  Major | SQL | Vladislav Kuzemchik | Wenchen Fan |
| [SPARK-22487](https://issues.apache.org/jira/browse/SPARK-22487) | No usages of HIVE\_EXECUTION\_VERSION found in whole spark project |  Minor | SQL | Kent Yao | Kent Yao |
| [SPARK-22344](https://issues.apache.org/jira/browse/SPARK-22344) | Prevent R CMD check from using /tmp |  Major | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-22284](https://issues.apache.org/jira/browse/SPARK-22284) | Code of class \\"org.apache.spark.sql.catalyst.expressions.GeneratedClass$SpecificUnsafeProjection\\" grows beyond 64 KB |  Major | Optimizer, PySpark, SQL | Ben | Kazuaki Ishizaki |
| [SPARK-19644](https://issues.apache.org/jira/browse/SPARK-19644) | Memory leak in Spark Streaming (Encoder/Scala Reflection) |  Major | DStreams, SQL, Structured Streaming | Deenbandhu Agarwal | Shixiong Zhu |
| [SPARK-22462](https://issues.apache.org/jira/browse/SPARK-22462) | SQL metrics missing after foreach operation on dataframe |  Major | SQL | Juliusz Sompolski | Liang-Chi Hsieh |
| [SPARK-22488](https://issues.apache.org/jira/browse/SPARK-22488) | The view resolution in the SparkSession internal table() API |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-22377](https://issues.apache.org/jira/browse/SPARK-22377) | Maven nightly snapshot jenkins jobs are broken on multiple workers due to lsof |  Major | Build | Xin Lu | Hyukjin Kwon |
| [SPARK-22511](https://issues.apache.org/jira/browse/SPARK-22511) | Update maven central repo address |  Major | Build | Felix Cheung | Sean Owen |
| [SPARK-22525](https://issues.apache.org/jira/browse/SPARK-22525) | Spark download page doesn't update package name based package type |  Major | Documentation | holdenk | holdenk |
| [SPARK-22469](https://issues.apache.org/jira/browse/SPARK-22469) | Accuracy problem in comparison with string and numeric |  Major | SQL | Lijia Liu | Lijia Liu |
| [SPARK-22535](https://issues.apache.org/jira/browse/SPARK-22535) | PythonRunner.MonitorThread should give the task a little time to finish before killing the python worker |  Major | PySpark | Shixiong Zhu | Shixiong Zhu |
| [SPARK-22479](https://issues.apache.org/jira/browse/SPARK-22479) | SaveIntoDataSourceCommand logs jdbc credentials |  Major | SQL | Onur Satici | Onur Satici |
| [SPARK-22540](https://issues.apache.org/jira/browse/SPARK-22540) | HighlyCompressedMapStatus's avgSize is incorrect |  Major | Spark Core | yucai | yucai |
| [SPARK-22538](https://issues.apache.org/jira/browse/SPARK-22538) | SQLTransformer.transform(inputDataFrame) uncaches inputDataFrame |  Major | ML, PySpark, SQL, Web UI | V Luong | Liang-Chi Hsieh |
| [SPARK-22544](https://issues.apache.org/jira/browse/SPARK-22544) | FileStreamSource should use its own hadoop conf to call globPathIfNecessary |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-22557](https://issues.apache.org/jira/browse/SPARK-22557) | Use ThreadSignaler explicitly |  Minor | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-22533](https://issues.apache.org/jira/browse/SPARK-22533) | SparkConfigProvider does not handle deprecated config keys |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-22165](https://issues.apache.org/jira/browse/SPARK-22165) | Type conflicts between dates, timestamps and date in partition column |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-22548](https://issues.apache.org/jira/browse/SPARK-22548) | Incorrect nested AND expression pushed down to JDBC data source |  Major | SQL | Jia Li | Jia Li |
| [SPARK-22572](https://issues.apache.org/jira/browse/SPARK-22572) | spark-shell does not re-initialize on :replay |  Minor | Spark Shell | Mark Petruska | Mark Petruska |
| [SPARK-17920](https://issues.apache.org/jira/browse/SPARK-17920) | HiveWriterContainer passes null configuration to serde.initialize, causing NullPointerException in AvroSerde when using avro.schema.url |  Minor | SQL | James Norvell | Vinod KC |
| [SPARK-19580](https://issues.apache.org/jira/browse/SPARK-19580) | Support for avro.schema.url while writing to hive table |  Critical | SQL | Mateusz Boryn | Vinod KC |
| [SPARK-22495](https://issues.apache.org/jira/browse/SPARK-22495) | Fix setup of SPARK\_HOME variable on Windows |  Minor | PySpark, Windows | Hyukjin Kwon | Jakub Nowacki |
| [SPARK-22591](https://issues.apache.org/jira/browse/SPARK-22591) | GenerateOrdering shouldn't change ctx.INPUT\_ROW |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-22559](https://issues.apache.org/jira/browse/SPARK-22559) | history server: handle exception on opening corrupted listing.ldb |  Major | Spark Core | Gengliang Wang | Gengliang Wang |
| [SPARK-22583](https://issues.apache.org/jira/browse/SPARK-22583) | First delegation token renewal time is not 75% of renewal time in Mesos |  Major | Mesos | Kalvin Chau | Kalvin Chau |
| [SPARK-22607](https://issues.apache.org/jira/browse/SPARK-22607) | Set large stack size consistently for tests to avoid StackOverflowError |  Minor | Build, Tests | Sean Owen | Sean Owen |
| [SPARK-22484](https://issues.apache.org/jira/browse/SPARK-22484) | PySpark DataFrame.write.csv(quote="") uses nullchar as quote |  Minor | Input/Output, PySpark | John Bollenbacher | John Bollenbacher |
| [SPARK-22395](https://issues.apache.org/jira/browse/SPARK-22395) | Fix the behavior of timestamp values for Pandas to respect session timezone |  Major | PySpark, SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-22431](https://issues.apache.org/jira/browse/SPARK-22431) | Creating Permanent view with illegal type |  Major | SQL | Herman van Hovell | Sunitha Kambhampati |
| [SPARK-22637](https://issues.apache.org/jira/browse/SPARK-22637) | CatalogImpl.refresh() has quadratic complexity for a view |  Minor | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-22605](https://issues.apache.org/jira/browse/SPARK-22605) | OutputMetrics empty for DataFrame writes |  Minor | SQL | Jason White | Wenchen Fan |
| [SPARK-22615](https://issues.apache.org/jira/browse/SPARK-22615) | Handle more cases in PropagateEmptyRelation |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-18935](https://issues.apache.org/jira/browse/SPARK-18935) | Use Mesos "Dynamic Reservation" resource for Spark |  Major | Mesos | jackyoh | Stavros Kontopoulos |
| [SPARK-22585](https://issues.apache.org/jira/browse/SPARK-22585) | Url encoding of jar path expected? |  Major | Spark Core | Jakub Dubovsky | Jakub Dubovsky |
| [SPARK-22654](https://issues.apache.org/jira/browse/SPARK-22654) | Retry download of Spark from ASF mirror in HiveExternalCatalogVersionsSuite |  Minor | SQL, Tests | Sean Owen | Sean Owen |
| [SPARK-22635](https://issues.apache.org/jira/browse/SPARK-22635) | FileNotFoundException again while reading ORC files containing special characters |  Major | SQL | Marco Gaido | Marco Gaido |
| [SPARK-22489](https://issues.apache.org/jira/browse/SPARK-22489) | Shouldn't change broadcast join buildSide if user clearly specified |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-22373](https://issues.apache.org/jira/browse/SPARK-22373) | Intermittent NullPointerException in org.codehaus.janino.IClass.isAssignableFrom |  Minor | Spark Core | Dan Meany |  |
| [SPARK-22653](https://issues.apache.org/jira/browse/SPARK-22653) | executorAddress registered in CoarseGrainedSchedulerBackend.executorDataMap is null |  Major | Scheduler | Thomas Graves | Thomas Graves |
| [SPARK-22393](https://issues.apache.org/jira/browse/SPARK-22393) | spark-shell can't find imported types in class constructors, extends clause |  Minor | Spark Shell | Ryan Williams | Mark Petruska |
| [SPARK-22651](https://issues.apache.org/jira/browse/SPARK-22651) | Calling ImageSchema.readImages initiate multiple Hive clients |  Major | ML, PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-15474](https://issues.apache.org/jira/browse/SPARK-15474) |  ORC data source fails to write and read back empty dataframe |  Major | SQL | Hyukjin Kwon | Dongjoon Hyun |
| [SPARK-22162](https://issues.apache.org/jira/browse/SPARK-22162) | Executors and the driver use inconsistent Job IDs during the new RDD commit protocol |  Major | Spark Core | Reza Safi | Reza Safi |
| [SPARK-22681](https://issues.apache.org/jira/browse/SPARK-22681) | Accumulator should only be updated once for each task in result stage |  Major | Spark Core | Carson Wang | Carson Wang |
| [SPARK-22662](https://issues.apache.org/jira/browse/SPARK-22662) | Failed to prune columns after rewriting predicate subquery |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-20706](https://issues.apache.org/jira/browse/SPARK-20706) | Spark-shell not overriding method/variable definition |  Major | Spark Shell | Raphael Roth | Mark Petruska |
| [SPARK-22686](https://issues.apache.org/jira/browse/SPARK-22686) | DROP TABLE IF EXISTS should not show AnalysisException |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-22710](https://issues.apache.org/jira/browse/SPARK-22710) | ConfigBuilder.fallbackConf doesn't trigger onCreate function |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-14228](https://issues.apache.org/jira/browse/SPARK-14228) | Lost executor of RPC disassociated, and occurs exception: Could not find CoarseGrainedScheduler or it has been stopped |  Major | . | meiyoula |  |
| [SPARK-22516](https://issues.apache.org/jira/browse/SPARK-22516) | CSV Read breaks: When "multiLine" = "true", if "comment" option is set as last line's first character |  Minor | Spark Core | Kumaresh C R | Sandor Murakozi |
| [SPARK-22721](https://issues.apache.org/jira/browse/SPARK-22721) | BytesToBytesMap peak memory usage not accurate after reset() |  Major | Spark Core | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-22618](https://issues.apache.org/jira/browse/SPARK-22618) | RDD.unpersist can cause fatal exception when used with dynamic allocation |  Minor | Spark Core | Brad | Brad |
| [SPARK-22712](https://issues.apache.org/jira/browse/SPARK-22712) | Use \`buildReaderWithPartitionValues\` in native OrcFileFormat |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-22655](https://issues.apache.org/jira/browse/SPARK-22655) | Fail task instead of complete task silently in PythonRunner during shutdown |  Major | PySpark | Li Jin | Li Jin |
| [SPARK-22267](https://issues.apache.org/jira/browse/SPARK-22267) | Spark SQL incorrectly reads ORC file when column order is different |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-22642](https://issues.apache.org/jira/browse/SPARK-22642) | the createdTempDir will not be deleted if an exception occurs |  Minor | SQL | zuotingbing | zuotingbing |
| [SPARK-3685](https://issues.apache.org/jira/browse/SPARK-3685) | Spark's local dir should accept only local paths |  Major | Spark Core, YARN | Andrew Or | Hyukjin Kwon |
| [SPARK-16986](https://issues.apache.org/jira/browse/SPARK-16986) | "Started" time, "Completed" time and "Last Updated" time in history server UI are not user local time |  Minor | Web UI | Weiqing Yang | Yuming Wang |
| [SPARK-22289](https://issues.apache.org/jira/browse/SPARK-22289) | Cannot save LogisticRegressionModel with bounds on coefficients |  Major | ML | Nic Eggert | yuhao yang |
| [SPARK-19809](https://issues.apache.org/jira/browse/SPARK-19809) | NullPointerException on zero-size ORC file |  Major | SQL | Michał Dawid | Dongjoon Hyun |
| [SPARK-22700](https://issues.apache.org/jira/browse/SPARK-22700) | Bucketizer.transform incorrectly drops row containing NaN |  Major | ML | zhengruifeng | zhengruifeng |
| [SPARK-22042](https://issues.apache.org/jira/browse/SPARK-22042) | ReorderJoinPredicates can break when child's partitioning is not decided |  Major | SQL | Tejas Patil | Tejas Patil |
| [SPARK-22574](https://issues.apache.org/jira/browse/SPARK-22574) | Wrong request causing Spark Dispatcher going inactive |  Minor | Mesos, Spark Submit | German Schiavon Matteo | German Schiavon Matteo |
| [SPARK-22764](https://issues.apache.org/jira/browse/SPARK-22764) | Flaky test: SparkContextSuite "Cancelling stages/jobs with custom reasons" |  Minor | Tests | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-22779](https://issues.apache.org/jira/browse/SPARK-22779) | ConfigEntry's default value should actually be a value |  Major | SQL | Reynold Xin | Marcelo Vanzin |
| [SPARK-22778](https://issues.apache.org/jira/browse/SPARK-22778) | Kubernetes scheduler at master failing to run applications successfully |  Critical | Kubernetes | Anirudh Ramanathan | Yinan Li |
| [SPARK-22047](https://issues.apache.org/jira/browse/SPARK-22047) | HiveExternalCatalogVersionsSuite is Flaky on Jenkins |  Major | SQL | Armin Braun | Wenchen Fan |
| [SPARK-22811](https://issues.apache.org/jira/browse/SPARK-22811) | pyspark.ml.tests is missing a py4j import. |  Minor | ML, PySpark | Bago Amirbekian | Bago Amirbekian |
| [SPARK-22817](https://issues.apache.org/jira/browse/SPARK-22817) | Use fixed testthat version for SparkR tests in AppVeyor |  Major | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-22819](https://issues.apache.org/jira/browse/SPARK-22819) | Download page - updating package type does nothing |  Major | Documentation | Yohann Jardin | holdenk |
| [SPARK-22813](https://issues.apache.org/jira/browse/SPARK-22813) | run-tests.py fails when /usr/sbin/lsof does not exist |  Minor | Tests | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22777](https://issues.apache.org/jira/browse/SPARK-22777) | Docker container built for Kubernetes doesn't allow running entrypoint.sh |  Minor | Kubernetes | Anirudh Ramanathan | Anirudh Ramanathan |
| [SPARK-22791](https://issues.apache.org/jira/browse/SPARK-22791) | Redact Output of Explain |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-22815](https://issues.apache.org/jira/browse/SPARK-22815) | Keep PromotePrecision in Optimized Plans |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-21652](https://issues.apache.org/jira/browse/SPARK-21652) | Optimizer cannot reach a fixed point on certain queries |  Major | Optimizer, SQL | Anton Okolnychyi | Xiao Li |
| [SPARK-22827](https://issues.apache.org/jira/browse/SPARK-22827) | Avoid throwing OutOfMemoryError in case of exception in spill |  Major | Spark Core | Sital Kedia | Sital Kedia |
| [SPARK-22788](https://issues.apache.org/jira/browse/SPARK-22788) | HdfsUtils.getOutputStream uses non-existent Hadoop conf "hdfs.append.support" |  Trivial | DStreams | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-22824](https://issues.apache.org/jira/browse/SPARK-22824) | Spark Structured Streaming Source trait breaking change |  Major | Structured Streaming | Matthieu Maitre | Jose Torres |
| [SPARK-22849](https://issues.apache.org/jira/browse/SPARK-22849) | ivy.retrieve pattern should also consider \`classifier\` |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-22852](https://issues.apache.org/jira/browse/SPARK-22852) | sbt publishLocal fails due to -Xlint:unchecked flag passed to javadoc |  Minor | Build | Erik LaBianca | Erik LaBianca |
| [SPARK-22855](https://issues.apache.org/jira/browse/SPARK-22855) | Sbt publishLocal under scala 2.12 fails due to invalid javadoc comments in tags package |  Minor | Build | Erik LaBianca | Erik LaBianca |
| [SPARK-22668](https://issues.apache.org/jira/browse/SPARK-22668) | CodegenContext.splitExpressions() creates incorrect results with global variable arguments |  Major | SQL | Kazuaki Ishizaki | Wenchen Fan |
| [SPARK-22861](https://issues.apache.org/jira/browse/SPARK-22861) | SQLAppStatusListener should track all stages in multi-job executions |  Major | SQL, Web UI | Imran Rashid | Imran Rashid |
| [SPARK-22854](https://issues.apache.org/jira/browse/SPARK-22854) | AppStatusListener should get Spark version by SparkListenerLogStart |  Major | Spark Core | Wenchen Fan | Marcelo Vanzin |
| [SPARK-22866](https://issues.apache.org/jira/browse/SPARK-22866) | Kubernetes dockerfile path needs update |  Major | Kubernetes | Anirudh Ramanathan |  |
| [SPARK-22862](https://issues.apache.org/jira/browse/SPARK-22862) | Docs on lazy elimination of columns missing from an encoder. |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-22889](https://issues.apache.org/jira/browse/SPARK-22889) | CRAN checks can fail if older Spark install exists |  Major | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-22465](https://issues.apache.org/jira/browse/SPARK-22465) | Cogroup of two disproportionate RDDs could lead into 2G limit BUG |  Critical | Spark Core | Amit Kumar |  |
| [SPARK-22901](https://issues.apache.org/jira/browse/SPARK-22901) | Add non-deterministic to Python UDF |  Major | PySpark | Xiao Li | Marco Gaido |
| [SPARK-22846](https://issues.apache.org/jira/browse/SPARK-22846) | table's owner property in hive metastore is null |  Critical | SQL | bruce xu | bruce xu |
| [SPARK-22899](https://issues.apache.org/jira/browse/SPARK-22899) | OneVsRestModel transform on streaming data failed. |  Major | ML, Structured Streaming | Weichen Xu | Weichen Xu |
| [SPARK-22843](https://issues.apache.org/jira/browse/SPARK-22843) | R localCheckpoint API |  Major | SparkR | Felix Cheung | Hyukjin Kwon |
| [SPARK-22875](https://issues.apache.org/jira/browse/SPARK-22875) | Assembly build fails for a high user id |  Minor | Build | Gera Shegalov | Gera Shegalov |
| [SPARK-22836](https://issues.apache.org/jira/browse/SPARK-22836) | Executors page is not showing driver logs links |  Major | Web UI | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-22818](https://issues.apache.org/jira/browse/SPARK-22818) | csv escape of quote escape |  Minor | SQL | Soonmok Kwon | Soonmok Kwon |
| [SPARK-22905](https://issues.apache.org/jira/browse/SPARK-22905) | Fix ChiSqSelectorModel, GaussianMixtureModel save implementation for Row order issues |  Major | MLlib | Weichen Xu | Weichen Xu |
| [SPARK-22891](https://issues.apache.org/jira/browse/SPARK-22891) | NullPointerException when use udf |  Minor | SQL | gaoyang | Feng Liu |
| [SPARK-22834](https://issues.apache.org/jira/browse/SPARK-22834) | Make insert commands have real children to fix UI issues |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-22916](https://issues.apache.org/jira/browse/SPARK-22916) | shouldn't bias towards build right if user does not specify |  Major | SQL | Feng Liu | Feng Liu |
| [SPARK-21657](https://issues.apache.org/jira/browse/SPARK-21657) | Spark has exponential time complexity to explode(array of structs) |  Major | SQL | Ruslan Dautkhanov | Ohad Raviv |
| [SPARK-22864](https://issues.apache.org/jira/browse/SPARK-22864) | Flaky test: ExecutorAllocationManagerSuite "cancel pending executors when no longer needed" |  Major | Tests | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-22920](https://issues.apache.org/jira/browse/SPARK-22920) | R sql functions for current\_date, current\_timestamp, rtrim/ltrim/trim with trimString |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-22924](https://issues.apache.org/jira/browse/SPARK-22924) | R DataFrame API for sortWithinPartitions |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-22932](https://issues.apache.org/jira/browse/SPARK-22932) | Refactor AnalysisContext |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-22934](https://issues.apache.org/jira/browse/SPARK-22934) | Make optional clauses order insensitive for CREATE TABLE SQL statement |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-22933](https://issues.apache.org/jira/browse/SPARK-22933) | R Structured Streaming API for withWatermark, trigger, partitionBy |  Major | SparkR, Structured Streaming | Felix Cheung | Felix Cheung |
| [SPARK-22950](https://issues.apache.org/jira/browse/SPARK-22950) | user classpath first cause no class found exception |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-22850](https://issues.apache.org/jira/browse/SPARK-22850) | Executor page in SHS does not show driver |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-22948](https://issues.apache.org/jira/browse/SPARK-22948) | "SparkPodInitContainer" shouldn't be in "rest" package |  Trivial | Kubernetes | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-22953](https://issues.apache.org/jira/browse/SPARK-22953) | Duplicated secret volumes in Spark pods when init-containers are used |  Major | Kubernetes | Yinan Li | Yinan Li |
| [SPARK-22957](https://issues.apache.org/jira/browse/SPARK-22957) | ApproxQuantile breaks if the number of rows exceeds MaxInt |  Major | SQL | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-22825](https://issues.apache.org/jira/browse/SPARK-22825) | Incorrect results of Casting Array to String |  Major | SQL | Xiao Li | Takeshi Yamamuro |
| [SPARK-22949](https://issues.apache.org/jira/browse/SPARK-22949) | Reduce memory requirement for TrainValidationSplit |  Critical | ML | Bago Amirbekian | Bago Amirbekian |
| [SPARK-22961](https://issues.apache.org/jira/browse/SPARK-22961) | Constant columns no longer picked as constraints in 2.3 |  Major | SQL | Adrian Ionescu | Adrian Ionescu |
| [SPARK-22940](https://issues.apache.org/jira/browse/SPARK-22940) | Test suite HiveExternalCatalogVersionsSuite fails on platforms that don't have wget installed |  Minor | Tests | Bruce Robbins | Bruce Robbins |
| [SPARK-22793](https://issues.apache.org/jira/browse/SPARK-22793) | Memory leak in Spark Thrift Server |  Critical | SQL | zuotingbing | zuotingbing |
| [SPARK-21786](https://issues.apache.org/jira/browse/SPARK-21786) | The 'spark.sql.parquet.compression.codec' configuration doesn't take effect on tables with partition field(s) |  Major | SQL | Jinhua Fu | Jinhua Fu |
| [SPARK-22973](https://issues.apache.org/jira/browse/SPARK-22973) | Incorrect results of casting Map to String |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-22985](https://issues.apache.org/jira/browse/SPARK-22985) | Fix argument escaping bug in from\_utc\_timestamp / to\_utc\_timestamp codegen |  Blocker | SQL | Josh Rosen | Josh Rosen |
| [SPARK-22983](https://issues.apache.org/jira/browse/SPARK-22983) | Don't push filters beneath aggregates with empty grouping expressions |  Critical | SQL | Josh Rosen | Josh Rosen |
| [SPARK-22992](https://issues.apache.org/jira/browse/SPARK-22992) | Remove assumption of cluster domain in Kubernetes mode |  Major | Kubernetes | Anirudh Ramanathan | Anirudh Ramanathan |
| [SPARK-22972](https://issues.apache.org/jira/browse/SPARK-22972) | Couldn't find corresponding Hive SerDe for data source provider org.apache.spark.sql.hive.orc. |  Major | SQL | xubo245 | xubo245 |
| [SPARK-22990](https://issues.apache.org/jira/browse/SPARK-22990) | Fix method isFairScheduler in JobsTab and StagesTab |  Blocker | Spark Core | Gengliang Wang | Gengliang Wang |
| [SPARK-22984](https://issues.apache.org/jira/browse/SPARK-22984) | Fix incorrect bitmap copying and offset shifting in GenerateUnsafeRowJoiner |  Blocker | SQL | Josh Rosen | Josh Rosen |
| [SPARK-22998](https://issues.apache.org/jira/browse/SPARK-22998) | Value for SPARK\_MOUNTED\_CLASSPATH in executor pods is not set |  Major | Kubernetes | Yinan Li | Yinan Li |
| [SPARK-22981](https://issues.apache.org/jira/browse/SPARK-22981) | Incorrect results of casting Struct to String |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-23018](https://issues.apache.org/jira/browse/SPARK-23018) | PySpark creatDataFrame causes Pandas warning of assignment to a copy of a reference |  Major | PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-23009](https://issues.apache.org/jira/browse/SPARK-23009) | PySpark should not assume Pandas cols are a basestring type |  Major | PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-22982](https://issues.apache.org/jira/browse/SPARK-22982) | Remove unsafe asynchronous close() call from FileDownloadChannel |  Blocker | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-23019](https://issues.apache.org/jira/browse/SPARK-23019) | Flaky Test: org.apache.spark.JavaJdbcRDDSuite.testJavaJdbcRDD |  Blocker | Java API, Tests | Sameer Agarwal | Gengliang Wang |
| [SPARK-22951](https://issues.apache.org/jira/browse/SPARK-22951) | count() after dropDuplicates() on emptyDataFrame returns incorrect value |  Major | SQL | Michael Dreibelbis | Feng Liu |
| [SPARK-22587](https://issues.apache.org/jira/browse/SPARK-22587) | Spark job fails if fs.defaultFS and application jar are different url |  Major | Spark Submit | Prabhu Joseph | Mingjie Tang |
| [SPARK-22946](https://issues.apache.org/jira/browse/SPARK-22946) | Recursive withColumn calls cause org.apache.spark.sql.catalyst.expressions.GeneratedClass$SpecificUnsafeProjection" grows beyond 64 KB |  Major | SQL | Harpreet Chopra |  |
| [SPARK-23001](https://issues.apache.org/jira/browse/SPARK-23001) | NullPointerException when running desc database |  Major | SQL | ANDY GUAN | Xiao Li |
| [SPARK-22967](https://issues.apache.org/jira/browse/SPARK-22967) | VersionSuite failed on Windows caused by Windows format path |  Minor | SQL | wuyi | wuyi |
| [SPARK-22986](https://issues.apache.org/jira/browse/SPARK-22986) | Avoid instantiating multiple instances of broadcast variables |  Major | Spark Core | ho3rexqj | ho3rexqj |
| [SPARK-23025](https://issues.apache.org/jira/browse/SPARK-23025) | DataSet with scala.Null causes Exception |  Major | SQL | Daniel Davis | Marco Gaido |
| [SPARK-22975](https://issues.apache.org/jira/browse/SPARK-22975) | MetricsReporter producing NullPointerException when there was no progress reported |  Major | Structured Streaming | Yuriy Bondaruk | Marco Gaido |
| [SPARK-23055](https://issues.apache.org/jira/browse/SPARK-23055) | KafkaContinuousSourceSuite Kafka column types test failing |  Critical | Structured Streaming | Marco Gaido | Sameer Agarwal |
| [SPARK-23065](https://issues.apache.org/jira/browse/SPARK-23065) | R API doc empty in Spark 2.3.0 RC1 |  Blocker | SparkR | Felix Cheung | Sameer Agarwal |
| [SPARK-23038](https://issues.apache.org/jira/browse/SPARK-23038) | Update docker/spark-test (JDK/OS) |  Minor | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23051](https://issues.apache.org/jira/browse/SPARK-23051) | job description in Spark UI is broken |  Blocker | Web UI | Shixiong Zhu | Sandor Murakozi |
| [SPARK-23021](https://issues.apache.org/jira/browse/SPARK-23021) | AnalysisBarrier should not cut off the explain output for Parsed Logical Plan |  Major | SQL | Kris Mok | Takeshi Yamamuro |
| [SPARK-23049](https://issues.apache.org/jira/browse/SPARK-23049) | \`spark.sql.files.ignoreCorruptFiles\` should work for ORC files |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23023](https://issues.apache.org/jira/browse/SPARK-23023) | Incorrect results of printing Array/Map/Struct in showString |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-23035](https://issues.apache.org/jira/browse/SPARK-23035) | Fix improper information of TempTableAlreadyExistsException |  Major | SQL | xubo245 | xubo245 |
| [SPARK-23080](https://issues.apache.org/jira/browse/SPARK-23080) | Improve error message for built-in functions |  Trivial | SQL | Marco Gaido | Marco Gaido |
| [SPARK-22956](https://issues.apache.org/jira/browse/SPARK-22956) | Union Stream Failover Cause \`IllegalStateException\` |  Major | Structured Streaming | Li Yuanjian | Li Yuanjian |
| [SPARK-23037](https://issues.apache.org/jira/browse/SPARK-23037) | RFormula should not use deprecated OneHotEncoder and should include VectorSizeHint in pipeline |  Major | ML | Bago Amirbekian | Bago Amirbekian |
| [SPARK-23095](https://issues.apache.org/jira/browse/SPARK-23095) | Decorrelation of scalar subquery fails with java.util.NoSuchElementException. |  Major | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-19109](https://issues.apache.org/jira/browse/SPARK-19109) | ORC metadata section can sometimes exceed protobuf message size limit |  Major | SQL | Nic Eggert |  |
| [SPARK-23119](https://issues.apache.org/jira/browse/SPARK-23119) | Fix API annotation in DataSource V2 for streaming |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-21996](https://issues.apache.org/jira/browse/SPARK-21996) | Streaming ignores files with spaces in the file names |  Major | Structured Streaming | Ivan Sharamet | Xiayun Sun |
| [SPARK-23079](https://issues.apache.org/jira/browse/SPARK-23079) | Fix query constraints propagation with aliases |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-23140](https://issues.apache.org/jira/browse/SPARK-23140) | DataSourceV2Strategy is missing in HiveSessionStateBuilder |  Major | SQL, Structured Streaming | Saisai Shao | Saisai Shao |
| [SPARK-22036](https://issues.apache.org/jira/browse/SPARK-22036) | BigDecimal multiplication sometimes returns null |  Major | SQL | Olivier Blanvillain | Marco Gaido |
| [SPARK-23147](https://issues.apache.org/jira/browse/SPARK-23147) | Stage page will throw exception when there's no complete tasks |  Major | Web UI | Saisai Shao | Saisai Shao |
| [SPARK-23133](https://issues.apache.org/jira/browse/SPARK-23133) | Spark options are not passed to the Executor in Docker context |  Minor | Kubernetes | Andrew Korzhuev | Andrew Korzhuev |
| [SPARK-22962](https://issues.apache.org/jira/browse/SPARK-22962) | Kubernetes app fails if local files are used |  Major | Kubernetes | Marcelo Vanzin | Yinan Li |
| [SPARK-23054](https://issues.apache.org/jira/browse/SPARK-23054) | Incorrect results of casting UserDefinedType to String |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-23089](https://issues.apache.org/jira/browse/SPARK-23089) | "Unable to create operation log session directory" when parent directory not present |  Minor | SQL | Sean Roberts | Marco Gaido |
| [SPARK-23103](https://issues.apache.org/jira/browse/SPARK-23103) | LevelDB store not iterating correctly when indexed value has negative value |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-23135](https://issues.apache.org/jira/browse/SPARK-23135) | Accumulators don't show up properly in the Stages page anymore |  Blocker | Web UI | Burak Yavuz | Marcelo Vanzin |
| [SPARK-23087](https://issues.apache.org/jira/browse/SPARK-23087) | CheckCartesianProduct too restrictive when condition is constant folded to false/null |  Minor | SQL | Juliusz Sompolski | Marco Gaido |
| [SPARK-22976](https://issues.apache.org/jira/browse/SPARK-22976) | Worker cleanup can remove running driver directories |  Major | Deploy, Spark Core | Russell Spitzer | Russell Spitzer |
| [SPARK-23000](https://issues.apache.org/jira/browse/SPARK-23000) | Flaky test suite DataSourceWithHiveMetastoreCatalogSuite in Spark 2.3 |  Blocker | SQL | Xiao Li | Xiao Li |
| [SPARK-23121](https://issues.apache.org/jira/browse/SPARK-23121) | When the Spark Streaming app is running for a period of time, the page is incorrectly reported when accessing '/ jobs /' or '/ jobs / job /? Id = 13' and ui can not be accessed. |  Major | Web UI | guoxiaolongzte | Sandor Murakozi |
| [SPARK-21571](https://issues.apache.org/jira/browse/SPARK-21571) | Spark history server leaves incomplete or unreadable history files around forever. |  Minor | Scheduler | Eric Vandenberg | Eric Vandenberg |
| [SPARK-23192](https://issues.apache.org/jira/browse/SPARK-23192) | Hint is lost after using cached data |  Critical | SQL | Xiao Li | Xiao Li |
| [SPARK-23177](https://issues.apache.org/jira/browse/SPARK-23177) | PySpark parameter-less UDFs raise exception if applied after distinct |  Major | PySpark | Jakub Wasikowski | Liang-Chi Hsieh |
| [SPARK-21727](https://issues.apache.org/jira/browse/SPARK-21727) | Operating on an ArrayType in a SparkR DataFrame throws error |  Major | SparkR | Neil Alexander McQuarrie | Neil Alexander McQuarrie |
| [SPARK-23148](https://issues.apache.org/jira/browse/SPARK-23148) | spark.read.csv with multiline=true gives FileNotFoundException if path contains spaces |  Major | SQL | Bogdan Raducanu | Henry Robinson |
| [SPARK-22837](https://issues.apache.org/jira/browse/SPARK-22837) | Session timeout checker does not work in SessionManager |  Major | SQL | zuotingbing | zuotingbing |
| [SPARK-23198](https://issues.apache.org/jira/browse/SPARK-23198) | Fix KafkaContinuousSourceStressForDontFailOnDataLossSuite to test ContinuousExecution |  Minor | Structured Streaming | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23208](https://issues.apache.org/jira/browse/SPARK-23208) | GenArrayData produces illegal code |  Blocker | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-23205](https://issues.apache.org/jira/browse/SPARK-23205) | ImageSchema.readImages incorrectly sets alpha channel to 255 for four-channel images |  Critical | ML, MLlib | Siddharth Murching | Siddharth Murching |
| [SPARK-23207](https://issues.apache.org/jira/browse/SPARK-23207) | Shuffle+Repartition on an DataFrame could lead to incorrect answers |  Blocker | SQL | Jiang Xingbo | Jiang Xingbo |
| [SPARK-23242](https://issues.apache.org/jira/browse/SPARK-23242) | Don't run tests in KafkaSourceSuiteBase twice |  Major | Structured Streaming, Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-23214](https://issues.apache.org/jira/browse/SPARK-23214) | cached data should not carry extra hint info |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-23245](https://issues.apache.org/jira/browse/SPARK-23245) | KafkaContinuousSourceSuite may hang forever |  Major | Structured Streaming, Tests | Shixiong Zhu | Jose Torres |
| [SPARK-23233](https://issues.apache.org/jira/browse/SPARK-23233) | asNondeterministic in Python UDF not being set when the UDF is called at least once |  Major | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23250](https://issues.apache.org/jira/browse/SPARK-23250) | Typo in JavaDoc/ScalaDoc for DataFrameWriter |  Trivial | Documentation | Charles Chen | Charles Chen |
| [SPARK-23223](https://issues.apache.org/jira/browse/SPARK-23223) | Stacking dataset transforms performs poorly |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-23209](https://issues.apache.org/jira/browse/SPARK-23209) | HiveDelegationTokenProvider throws an exception if Hive jars are not the classpath |  Blocker | Spark Core | Sahil Takiar | Marcelo Vanzin |
| [SPARK-23222](https://issues.apache.org/jira/browse/SPARK-23222) | Flaky test: DataFrameRangeSuite |  Major | SQL, Tests | Marcelo Vanzin | Liang-Chi Hsieh |
| [SPARK-23267](https://issues.apache.org/jira/browse/SPARK-23267) | Increase spark.sql.codegen.hugeMethodLimit to 65535 |  Blocker | SQL | Xiao Li | Xiao Li |
| [SPARK-23275](https://issues.apache.org/jira/browse/SPARK-23275) | hive/tests have been failing when run locally on the laptop (Mac) with OOM |  Major | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-23274](https://issues.apache.org/jira/browse/SPARK-23274) | ReplaceExceptWithFilter fails on dataframes filtered on same column |  Blocker | SQL | Onur Satici | Xiao Li |
| [SPARK-23157](https://issues.apache.org/jira/browse/SPARK-23157) | withColumn fails for a column that is a result of mapped DataSet |  Minor | SQL | Tomasz Bartczak | Henry Robinson |
| [SPARK-23281](https://issues.apache.org/jira/browse/SPARK-23281) | Query produces results in incorrect order when a composite order by clause refers to both original columns and aliases |  Major | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-23289](https://issues.apache.org/jira/browse/SPARK-23289) | OneForOneBlockFetcher.DownloadCallback.onData may write just a part of data |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-13983](https://issues.apache.org/jira/browse/SPARK-13983) | HiveThriftServer2 can not get "--hiveconf" or ''--hivevar" variables since 1.6 version (both multi-session and single session) |  Major | SQL | Teng Qiu | Yuming Wang |
| [SPARK-23301](https://issues.apache.org/jira/browse/SPARK-23301) | data source v2 column pruning with arbitrary expressions is broken |  Critical | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-23293](https://issues.apache.org/jira/browse/SPARK-23293) | data source v2 self join fails |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-23307](https://issues.apache.org/jira/browse/SPARK-23307) | Spark UI should sort jobs/stages with the completed timestamp before cleaning up them |  Blocker | Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-23330](https://issues.apache.org/jira/browse/SPARK-23330) | Spark UI SQL executions page throws NPE |  Blocker | Web UI | Jiang Xingbo | Jiang Xingbo |
| [SPARK-23326](https://issues.apache.org/jira/browse/SPARK-23326) | "Scheduler Delay" of a task is confusing |  Major | Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-23290](https://issues.apache.org/jira/browse/SPARK-23290) | inadvertent change in handling of DateType when converting to pandas dataframe |  Blocker | PySpark | Andre Menck | Takuya Ueshin |
| [SPARK-23334](https://issues.apache.org/jira/browse/SPARK-23334) | Fix pandas\_udf with return type StringType() to handle str type properly in Python 2. |  Blocker | PySpark, SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-23315](https://issues.apache.org/jira/browse/SPARK-23315) | failed to get output from canonicalized data source v2 related plans |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-23345](https://issues.apache.org/jira/browse/SPARK-23345) | Flaky test: FileBasedDataSourceSuite |  Major | SQL, Tests | Marcelo Vanzin | Liang-Chi Hsieh |
| [SPARK-23348](https://issues.apache.org/jira/browse/SPARK-23348) | append data using saveAsTable should adjust the data types |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-23186](https://issues.apache.org/jira/browse/SPARK-23186) | Initialize DriverManager first before loading Drivers |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23358](https://issues.apache.org/jira/browse/SPARK-23358) | When the number of partitions is greater than 2^28, it will result in an error result |  Minor | Spark Core | liuxian | liuxian |
| [SPARK-23360](https://issues.apache.org/jira/browse/SPARK-23360) | SparkSession.createDataFrame timestamps can be incorrect with non-Arrow codepath |  Major | PySpark | Li Jin | Takuya Ueshin |
| [SPARK-23387](https://issues.apache.org/jira/browse/SPARK-23387) | Backport assertPandasEqual to branch-2.3. |  Major | PySpark, SQL, Tests | Takuya Ueshin | Takuya Ueshin |
| [SPARK-23376](https://issues.apache.org/jira/browse/SPARK-23376) | creating UnsafeKVExternalSorter with BytesToBytesMap may fail |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22977](https://issues.apache.org/jira/browse/SPARK-22977) | DataFrameWriter operations do not show details in SQL tab |  Blocker | SQL, Web UI | Yuming Wang | Wenchen Fan |
| [SPARK-23391](https://issues.apache.org/jira/browse/SPARK-23391) | It may lead to overflow for some integer multiplication |  Minor | Spark Core | liuxian | liuxian |
| [SPARK-23388](https://issues.apache.org/jira/browse/SPARK-23388) | Support for Parquet Binary DecimalType in VectorizedColumnReader |  Blocker | SQL | James Thompson | James Thompson |
| [SPARK-23230](https://issues.apache.org/jira/browse/SPARK-23230) | When hive.default.fileformat is other kinds of file types, create textfile table cause a serde error |  Minor | SQL | dzcxzl | dzcxzl |
| [SPARK-23384](https://issues.apache.org/jira/browse/SPARK-23384) | When it has no incomplete(completed) applications found, the last updated time is not formatted and client local time zone is not show in history server web ui. |  Minor | Web UI | guoxiaolongzte | guoxiaolongzte |
| [SPARK-23053](https://issues.apache.org/jira/browse/SPARK-23053) | taskBinarySerialization and task partitions calculate in DagScheduler.submitMissingTasks should keep the same RDD checkpoint status |  Major | Scheduler, Spark Core | huangtengfei | huangtengfei |
| [SPARK-23400](https://issues.apache.org/jira/browse/SPARK-23400) | Add the extra constructors for ScalaUDF |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-23399](https://issues.apache.org/jira/browse/SPARK-23399) | Register a task completion listener first for OrcColumnarBatchReader |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23394](https://issues.apache.org/jira/browse/SPARK-23394) | Storage info's Cached Partitions doesn't consider the replications (but sc.getRDDStorageInfo does) |  Major | Spark Core | Attila Zsolt Piros | Attila Zsolt Piros |
| [SPARK-23421](https://issues.apache.org/jira/browse/SPARK-23421) | Document the behavior change in SPARK-22356 |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-23419](https://issues.apache.org/jira/browse/SPARK-23419) | data source v2 write path should re-throw interruption exceptions directly |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-23416](https://issues.apache.org/jira/browse/SPARK-23416) | flaky test: org.apache.spark.sql.kafka010.KafkaSourceStressForDontFailOnDataLossSuite.stress test for failOnDataLoss=false |  Minor | Structured Streaming | Jose Torres |  |
| [SPARK-23422](https://issues.apache.org/jira/browse/SPARK-23422) | YarnShuffleIntegrationSuite failure when SPARK\_PREPEND\_CLASSES set to 1 |  Minor | Spark Core | Gabor Somogyi | Gabor Somogyi |
| [SPARK-23377](https://issues.apache.org/jira/browse/SPARK-23377) | Bucketizer with multiple columns persistence bug |  Blocker | ML | Bago Amirbekian | Liang-Chi Hsieh |
| [SPARK-23413](https://issues.apache.org/jira/browse/SPARK-23413) | Sorting tasks by Host / Executor ID on the Stage page does not work |  Blocker | Web UI | Attila Zsolt Piros | Attila Zsolt Piros |
| [SPARK-23316](https://issues.apache.org/jira/browse/SPARK-23316) | AnalysisException after max iteration reached for IN query |  Major | SQL | Bogdan Raducanu | Bogdan Raducanu |
| [SPARK-23470](https://issues.apache.org/jira/browse/SPARK-23470) | org.apache.spark.ui.jobs.ApiHelper.lastStageNameAndDescription is too slow |  Blocker | Web UI | Shixiong Zhu | Marcelo Vanzin |
| [SPARK-23468](https://issues.apache.org/jira/browse/SPARK-23468) | Failure to authenticate with old shuffle service |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-23484](https://issues.apache.org/jira/browse/SPARK-23484) | Fix possible race condition in KafkaContinuousReader |  Minor | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-23481](https://issues.apache.org/jira/browse/SPARK-23481) | The job page shows wrong stages when some of stages are evicted |  Blocker | Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-23475](https://issues.apache.org/jira/browse/SPARK-23475) | The "stages" page doesn't show any completed stages |  Blocker | Web UI | Shixiong Zhu | Shixiong Zhu |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-20571](https://issues.apache.org/jira/browse/SPARK-20571) | Flaky SparkR StructuredStreaming tests |  Major | SparkR, Structured Streaming | Burak Yavuz | Felix Cheung |
| [SPARK-20518](https://issues.apache.org/jira/browse/SPARK-20518) | Supplement the new blockidsuite unit tests |  Minor | Tests | caoxuewen | caoxuewen |
| [SPARK-20607](https://issues.apache.org/jira/browse/SPARK-20607) | Add new unit tests to ShuffleSuite |  Trivial | Shuffle, Tests | caoxuewen | caoxuewen |
| [SPARK-20957](https://issues.apache.org/jira/browse/SPARK-20957) | Flaky Test: o.a.s.sql.streaming.StreamingQueryManagerSuite listing |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-21006](https://issues.apache.org/jira/browse/SPARK-21006) | Create rpcEnv and run later needs shutdown and awaitTermination |  Minor | Tests | wangjiaochun | wangjiaochun |
| [SPARK-21128](https://issues.apache.org/jira/browse/SPARK-21128) | Running R tests multiple times failed due to pre-exiting "spark-warehouse" / "metastore\_db" |  Minor | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-21286](https://issues.apache.org/jira/browse/SPARK-21286) | [spark core UT]Modify a error for unit test |  Minor | Spark Core | he.qiao | he.qiao |
| [SPARK-21370](https://issues.apache.org/jira/browse/SPARK-21370) | Avoid doing anything on HDFSBackedStateStore.abort() when there are no updates to commit |  Minor | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-21573](https://issues.apache.org/jira/browse/SPARK-21573) | Tests failing with run-tests.py SyntaxError occasionally in Jenkins |  Minor | Tests | Hyukjin Kwon | shane knapp |
| [SPARK-21663](https://issues.apache.org/jira/browse/SPARK-21663) | MapOutputTrackerSuite case test("remote fetch below max RPC message size") should call stop |  Minor | Tests | wangjiaochun | wangjiaochun |
| [SPARK-21843](https://issues.apache.org/jira/browse/SPARK-21843) | testNameNote should be "(minNumPostShufflePartitions: " + numPartitions + ")" in ExchangeCoordinatorSuite |  Trivial | Tests | iamhumanbeing | iamhumanbeing |
| [SPARK-19662](https://issues.apache.org/jira/browse/SPARK-19662) | Add Fair Scheduler Unit Test coverage for different build cases |  Minor | Scheduler | Eren Avsarogullari | Eren Avsarogullari |
| [SPARK-21764](https://issues.apache.org/jira/browse/SPARK-21764) | Tests failures on Windows: resources not being closed and incorrect paths |  Minor | Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-21729](https://issues.apache.org/jira/browse/SPARK-21729) | Generic test for ProbabilisticClassifier to ensure consistent output columns |  Major | ML | Joseph K. Bradley | Weichen Xu |
| [SPARK-21949](https://issues.apache.org/jira/browse/SPARK-21949) | Tables created in unit tests should be dropped after use |  Trivial | Tests | liuxian | liuxian |
| [SPARK-21936](https://issues.apache.org/jira/browse/SPARK-21936) | backward compatibility test framework for HiveExternalCatalog |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-21982](https://issues.apache.org/jira/browse/SPARK-21982) | Set Locale to US in order to pass UtilsSuite when your jvm Locale is not US |  Minor | Tests | German Schiavon Matteo | German Schiavon Matteo |
| [SPARK-22140](https://issues.apache.org/jira/browse/SPARK-22140) | Add a test suite for TPCDS queries |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-22161](https://issues.apache.org/jira/browse/SPARK-22161) | Add Impala-modified TPC-DS queries |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-22418](https://issues.apache.org/jira/browse/SPARK-22418) | Add test cases for NULL Handling |  Major | SQL | Xiao Li | Marco Gaido |
| [SPARK-22423](https://issues.apache.org/jira/browse/SPARK-22423) | Scala test source files like TestHiveSingleton.scala should be in scala source root |  Minor | Tests | xubo245 | xubo245 |
| [SPARK-21693](https://issues.apache.org/jira/browse/SPARK-21693) | AppVeyor tests reach the time limit, 1.5 hours, sometimes in SparkR tests |  Major | Build, SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-22595](https://issues.apache.org/jira/browse/SPARK-22595) | flaky test: CastSuite.SPARK-22500: cast for struct should not generate codes beyond 64KB |  Major | SQL | Wenchen Fan | Kazuaki Ishizaki |
| [SPARK-22644](https://issues.apache.org/jira/browse/SPARK-22644) | Make ML testsuite support StructuredStreaming test |  Minor | ML | Weichen Xu | Weichen Xu |
| [SPARK-22787](https://issues.apache.org/jira/browse/SPARK-22787) | Add a TPCH query suite |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-22800](https://issues.apache.org/jira/browse/SPARK-22800) | Add a SSB query suite |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-22881](https://issues.apache.org/jira/browse/SPARK-22881) | ML test for StructuredStreaming: spark.ml.regression |  Major | ML, Tests | Joseph K. Bradley | Weichen Xu |
| [SPARK-22938](https://issues.apache.org/jira/browse/SPARK-22938) | Assert that SQLConf.get is accessed only on the driver. |  Major | SQL | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-23072](https://issues.apache.org/jira/browse/SPARK-23072) | Add a Unicode schema test for file-based data sources |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23132](https://issues.apache.org/jira/browse/SPARK-23132) | Run ml.image doctests in tests |  Minor | ML, PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23197](https://issues.apache.org/jira/browse/SPARK-23197) | Flaky test: spark.streaming.ReceiverSuite."receiver\_life\_cycle" |  Major | DStreams | Tathagata Das | Tathagata Das |
| [SPARK-23311](https://issues.apache.org/jira/browse/SPARK-23311) | add FilterFunction test case for test CombineTypedFilters |  Minor | SQL | caoxuewen | caoxuewen |
| [SPARK-23300](https://issues.apache.org/jira/browse/SPARK-23300) | Print out if Pandas and PyArrow are installed or not in tests |  Major | PySpark, Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23319](https://issues.apache.org/jira/browse/SPARK-23319) | Skip PySpark tests for old Pandas and old PyArrow |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-19791](https://issues.apache.org/jira/browse/SPARK-19791) | Add doc and example for fpgrowth |  Major | ML | yuhao yang | yuhao yang |
| [SPARK-20585](https://issues.apache.org/jira/browse/SPARK-20585) | R generic hint support |  Major | SQL | Reynold Xin | Maciej Szymkiewicz |
| [SPARK-17729](https://issues.apache.org/jira/browse/SPARK-17729) | Enable creating hive bucketed tables |  Major | SQL | Tejas Patil | Tejas Patil |
| [SPARK-20751](https://issues.apache.org/jira/browse/SPARK-20751) | Built-in SQL Function Support - COT |  Major | SQL | Xiao Li | Yuming Wang |
| [SPARK-20770](https://issues.apache.org/jira/browse/SPARK-20770) | Improve ColumnStats |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-20727](https://issues.apache.org/jira/browse/SPARK-20727) | Skip SparkR tests when missing Hadoop winutils on CRAN windows machines |  Major | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-20748](https://issues.apache.org/jira/browse/SPARK-20748) | Built-in SQL Function Support - CH[A]R |  Major | SQL | Xiao Li | Yuming Wang |
| [SPARK-20881](https://issues.apache.org/jira/browse/SPARK-20881) | Clearly document the mechanism to choose between two sources of statistics |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-20909](https://issues.apache.org/jira/browse/SPARK-20909) | Build-in SQL Function Support - DAYOFWEEK |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-20910](https://issues.apache.org/jira/browse/SPARK-20910) | Build-in SQL Function Support - UUID |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-20961](https://issues.apache.org/jira/browse/SPARK-20961) | generalize the dictionary in ColumnVector |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-19762](https://issues.apache.org/jira/browse/SPARK-19762) | Implement aggregator/loss function hierarchy and apply to linear regression |  Minor | ML | Seth Hendrickson | Seth Hendrickson |
| [SPARK-20641](https://issues.apache.org/jira/browse/SPARK-20641) | Key-value store abstraction and implementation for storing application data |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-21031](https://issues.apache.org/jira/browse/SPARK-21031) | Add \`alterTableStats\` to store spark's stats and let \`alterTable\` keep existing stats |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-21051](https://issues.apache.org/jira/browse/SPARK-21051) | Add hash map metrics to aggregate |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-20749](https://issues.apache.org/jira/browse/SPARK-20749) | Built-in SQL Function Support - all variants of LEN[GTH] |  Major | SQL | Xiao Li | Kazuaki Ishizaki |
| [SPARK-20750](https://issues.apache.org/jira/browse/SPARK-20750) | Built-in SQL Function Support - REPLACE |  Major | SQL | Xiao Li | Kazuaki Ishizaki |
| [SPARK-20948](https://issues.apache.org/jira/browse/SPARK-20948) | Built-in SQL Function UnaryMinus/UnaryPositive support string type |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-20931](https://issues.apache.org/jira/browse/SPARK-20931) | Built-in SQL Function ABS support string type |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-13534](https://issues.apache.org/jira/browse/SPARK-13534) | Implement Apache Arrow serializer for Spark DataFrame for use in DataFrame.toPandas |  Major | PySpark | Wes McKinney | Bryan Cutler |
| [SPARK-21047](https://issues.apache.org/jira/browse/SPARK-21047) | Add test suites for complicated cases in ColumnarBatchSuite |  Major | SQL | Kazuaki Ishizaki | jin xing |
| [SPARK-21180](https://issues.apache.org/jira/browse/SPARK-21180) | Remove conf from stats functions since now we have conf in LogicalPlan |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-20417](https://issues.apache.org/jira/browse/SPARK-20417) | Move error reporting for subquery from Analyzer to CheckAnalysis |  Major | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-21237](https://issues.apache.org/jira/browse/SPARK-21237) | Invalidate stats once table data is changed |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-21052](https://issues.apache.org/jira/browse/SPARK-21052) | Add hash map metrics to join |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-18294](https://issues.apache.org/jira/browse/SPARK-18294) | Implement commit protocol to support \`mapred\` package's committer |  Major | Spark Core | Jiang Xingbo | Jiang Xingbo |
| [SPARK-21127](https://issues.apache.org/jira/browse/SPARK-21127) | Update statistics after data changing commands |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-21324](https://issues.apache.org/jira/browse/SPARK-21324) | Improve statistics test suites |  Major | SQL, Tests | Zhenhua Wang | Zhenhua Wang |
| [SPARK-21083](https://issues.apache.org/jira/browse/SPARK-21083) | Store zero size and row count after analyzing empty table |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-21007](https://issues.apache.org/jira/browse/SPARK-21007) | Add  SQL function - RIGHT && LEFT |  Major | SQL | liuxian | liuxian |
| [SPARK-21456](https://issues.apache.org/jira/browse/SPARK-21456) | Make the driver failover\_timeout configurable (Mesos cluster mode) |  Major | Mesos | Susan X. Huynh | Susan X. Huynh |
| [SPARK-20754](https://issues.apache.org/jira/browse/SPARK-20754) | Add Function Alias For MOD/TRUNCT/POSITION |  Major | SQL | Xiao Li | Yuming Wang |
| [SPARK-20988](https://issues.apache.org/jira/browse/SPARK-20988) | Convert logistic regression to new aggregator framework |  Minor | ML | Seth Hendrickson | Seth Hendrickson |
| [SPARK-21440](https://issues.apache.org/jira/browse/SPARK-21440) | Refactor ArrowConverters and add ArrayType and StructType support. |  Major | PySpark, SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-20962](https://issues.apache.org/jira/browse/SPARK-20962) | Support subquery column aliases in FROM clause |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-21205](https://issues.apache.org/jira/browse/SPARK-21205) | pmod(number, 0) should  be null |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-20963](https://issues.apache.org/jira/browse/SPARK-20963) | Support column aliases for aliased relation in FROM clause |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-20655](https://issues.apache.org/jira/browse/SPARK-20655) | In-memory key-value store implementation |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-21671](https://issues.apache.org/jira/browse/SPARK-21671) | Move kvstore package to util.kvstore, add annotations |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-19634](https://issues.apache.org/jira/browse/SPARK-19634) | Feature parity for descriptive statistics in MLlib |  Major | ML | Timothy Hunter | Timothy Hunter |
| [SPARK-13969](https://issues.apache.org/jira/browse/SPARK-13969) | Extend input format that feature hashing can handle |  Minor | ML, MLlib | Nick Pentreath | Nick Pentreath |
| [SPARK-21213](https://issues.apache.org/jira/browse/SPARK-21213) | Support collecting partition-level statistics: rowCount and sizeInBytes |  Major | SQL | Maria | Maria |
| [SPARK-19165](https://issues.apache.org/jira/browse/SPARK-19165) | UserDefinedFunction should verify call arguments and provide readable exception in case of mismatch |  Minor | PySpark, SQL | Maciej Szymkiewicz | Hyukjin Kwon |
| [SPARK-17139](https://issues.apache.org/jira/browse/SPARK-17139) | Add model summary for MultinomialLogisticRegression |  Major | ML | Seth Hendrickson | Weichen Xu |
| [SPARK-21779](https://issues.apache.org/jira/browse/SPARK-21779) | Simpler Dataset.sample API in Python |  Major | SQL | Reynold Xin | Hyukjin Kwon |
| [SPARK-14280](https://issues.apache.org/jira/browse/SPARK-14280) | Update change-version.sh and pom.xml to add Scala 2.12 profiles |  Major | Build, Project Infra | Josh Rosen | Sean Owen |
| [SPARK-21895](https://issues.apache.org/jira/browse/SPARK-21895) | Support changing database in HiveClient |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-21654](https://issues.apache.org/jira/browse/SPARK-21654) | Complement predicates expression description |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-9104](https://issues.apache.org/jira/browse/SPARK-9104) | expose network layer memory usage |  Major | Spark Core | Zhang, Liye | Saisai Shao |
| [SPARK-19357](https://issues.apache.org/jira/browse/SPARK-19357) | Parallel Model Evaluation for ML Tuning: Scala |  Major | ML | Bryan Cutler | Bryan Cutler |
| [SPARK-17642](https://issues.apache.org/jira/browse/SPARK-17642) | Support DESC FORMATTED TABLE COLUMN command to show column-level statistics |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-21893](https://issues.apache.org/jira/browse/SPARK-21893) | Put Kafka 0.8 behind a profile |  Minor | DStreams | Sean Owen | Sean Owen |
| [SPARK-22032](https://issues.apache.org/jira/browse/SPARK-22032) | Speed up StructType.fromInternal |  Major | PySpark | Maciej Bryński | Maciej Bryński |
| [SPARK-14878](https://issues.apache.org/jira/browse/SPARK-14878) | Support Trim characters in the string trim function |  Major | SQL | kevin yu | kevin yu |
| [SPARK-21934](https://issues.apache.org/jira/browse/SPARK-21934) | Expose Netty memory usage via Metrics System |  Major | Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-21780](https://issues.apache.org/jira/browse/SPARK-21780) | Simpler Dataset.sample API in R |  Major | SQL | Reynold Xin | Hyukjin Kwon |
| [SPARK-22086](https://issues.apache.org/jira/browse/SPARK-22086) | Add expression description for CASE WHEN |  Trivial | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-22053](https://issues.apache.org/jira/browse/SPARK-22053) | Implement stream-stream inner join in Append mode |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-21190](https://issues.apache.org/jira/browse/SPARK-21190) | SPIP: Vectorized UDFs in Python |  Major | PySpark, SQL | Reynold Xin | Bryan Cutler |
| [SPARK-22087](https://issues.apache.org/jira/browse/SPARK-22087) | Clear remaining compile errors for 2.12; resolve most warnings |  Minor | Build, Spark Core | Sean Owen | Sean Owen |
| [SPARK-14650](https://issues.apache.org/jira/browse/SPARK-14650) | Compile Spark REPL for Scala 2.12 |  Minor | Build, Project Infra | Josh Rosen | Sean Owen |
| [SPARK-22100](https://issues.apache.org/jira/browse/SPARK-22100) | Make percentile\_approx support date/timestamp type and change the output type to be the same as input type |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-20642](https://issues.apache.org/jira/browse/SPARK-20642) | Use key-value store to keep History Server application listing |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-22128](https://issues.apache.org/jira/browse/SPARK-22128) | Update paranamer to 2.8 to avoid BytecodeReadingParanamer ArrayIndexOutOfBoundsException with Scala 2.12 + Java 8 lambda |  Minor | Spark Core | Sean Owen | Sean Owen |
| [SPARK-22136](https://issues.apache.org/jira/browse/SPARK-22136) | Implement stream-stream outer joins in append mode |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-20783](https://issues.apache.org/jira/browse/SPARK-20783) | Enhance ColumnVector to support compressed representation |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-20396](https://issues.apache.org/jira/browse/SPARK-20396) | groupBy().apply() with pandas udf in pyspark |  Major | PySpark, SQL | Li Jin | Li Jin |
| [SPARK-22197](https://issues.apache.org/jira/browse/SPARK-22197) | push down operators to data source before planning |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11034](https://issues.apache.org/jira/browse/SPARK-11034) | Launcher: add support for monitoring Mesos apps |  Major | Spark Core | Marcelo Vanzin | Devaraj K |
| [SPARK-22278](https://issues.apache.org/jira/browse/SPARK-22278) | Expose current event time watermark and current processing time in GroupState |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-22026](https://issues.apache.org/jira/browse/SPARK-22026) | data source v2 write path |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22285](https://issues.apache.org/jira/browse/SPARK-22285) | Change implementation of ApproxCountDistinctForIntervals to TypedImperativeAggregate |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-20822](https://issues.apache.org/jira/browse/SPARK-20822) | Generate code to get value from CachedBatchColumnVector in ColumnarBatch |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22322](https://issues.apache.org/jira/browse/SPARK-22322) | Update FutureAction for compatibility with Scala 2.12 future |  Minor | Spark Core | Sean Owen | Sean Owen |
| [SPARK-20643](https://issues.apache.org/jira/browse/SPARK-20643) | Implement listener for saving application status data in key-value store |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-21375](https://issues.apache.org/jira/browse/SPARK-21375) | Add date and timestamp support to ArrowConverters for toPandas() collection |  Major | PySpark, SQL | Bryan Cutler | Bryan Cutler |
| [SPARK-22226](https://issues.apache.org/jira/browse/SPARK-22226) | splitExpression can create too many method calls (generating a Constant Pool limit error) |  Major | SQL | Marco Gaido | Marco Gaido |
| [SPARK-22400](https://issues.apache.org/jira/browse/SPARK-22400) | rename some APIs and classes to make their meaning clearer |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-22310](https://issues.apache.org/jira/browse/SPARK-22310) | Refactor join estimation to incorporate estimation logic for different kinds of statistics |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-21625](https://issues.apache.org/jira/browse/SPARK-21625) | Add incompatible Hive UDF describe to DOC |  Major | Documentation | Yuming Wang | Yuming Wang |
| [SPARK-20644](https://issues.apache.org/jira/browse/SPARK-20644) | Hook up Spark UI to the new key-value store backend |  Major | Web UI | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-22078](https://issues.apache.org/jira/browse/SPARK-22078) | clarify exception behaviors for all data source v2 interfaces |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-20645](https://issues.apache.org/jira/browse/SPARK-20645) | Make Environment page use new app state store |  Major | Web UI | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-20646](https://issues.apache.org/jira/browse/SPARK-20646) | Make Executors page use new app state store |  Major | Web UI | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-20647](https://issues.apache.org/jira/browse/SPARK-20647) | Make the Storage page use new app state store |  Major | Web UI | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-22483](https://issues.apache.org/jira/browse/SPARK-22483) | Exposing java.nio bufferedPool memory metrics to metrics system |  Major | Spark Core | Srinivasa Reddy Vundela | Srinivasa Reddy Vundela |
| [SPARK-10365](https://issues.apache.org/jira/browse/SPARK-10365) | Support Parquet logical type TIMESTAMP\_MICROS |  Major | SQL | Cheng Lian | Wenchen Fan |
| [SPARK-21720](https://issues.apache.org/jira/browse/SPARK-21720) | Filter predicate with many conditions throw stackoverflow error |  Major | SQL | srinivasan | Kazuaki Ishizaki |
| [SPARK-20791](https://issues.apache.org/jira/browse/SPARK-20791) | Use Apache Arrow to Improve Spark createDataFrame from Pandas.DataFrame |  Major | PySpark, SQL | Bryan Cutler | Bryan Cutler |
| [SPARK-17074](https://issues.apache.org/jira/browse/SPARK-17074) | generate equi-height histogram for column |  Major | Optimizer | Ron Hu | Zhenhua Wang |
| [SPARK-20648](https://issues.apache.org/jira/browse/SPARK-20648) | Make Jobs and Stages pages use the new app state store |  Major | Web UI | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-20652](https://issues.apache.org/jira/browse/SPARK-20652) | Make SQL UI use new app state store |  Major | SQL | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-21087](https://issues.apache.org/jira/browse/SPARK-21087) | CrossValidator, TrainValidationSplit should collect all models when fitting: Scala API |  Major | ML | Joseph K. Bradley | Weichen Xu |
| [SPARK-12375](https://issues.apache.org/jira/browse/SPARK-12375) | VectorIndexer: allow unknown categories |  Major | ML | Joseph K. Bradley | Weichen Xu |
| [SPARK-22514](https://issues.apache.org/jira/browse/SPARK-22514) | move ColumnVector.Array and ColumnarBatch.Row to individual files |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-20649](https://issues.apache.org/jira/browse/SPARK-20649) | Simplify REST API class hierarchy |  Major | Web UI | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-22499](https://issues.apache.org/jira/browse/SPARK-22499) | 64KB JVM bytecode limit problem with least and greatest |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22494](https://issues.apache.org/jira/browse/SPARK-22494) | Coalesce and AtLeastNNonNulls can cause 64KB JVM bytecode limit exception |  Major | SQL | Marco Gaido | Marco Gaido |
| [SPARK-22501](https://issues.apache.org/jira/browse/SPARK-22501) | 64KB JVM bytecode limit problem with in |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22542](https://issues.apache.org/jira/browse/SPARK-22542) | remove unused features in ColumnarBatch |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22409](https://issues.apache.org/jira/browse/SPARK-22409) | Add function type argument to pandas\_udf |  Major | PySpark | Li Jin | Li Jin |
| [SPARK-22498](https://issues.apache.org/jira/browse/SPARK-22498) | 64KB JVM bytecode limit problem with concat |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22549](https://issues.apache.org/jira/browse/SPARK-22549) | 64KB JVM bytecode limit problem with concat\_ws |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22508](https://issues.apache.org/jira/browse/SPARK-22508) | 64KB JVM bytecode limit problem with GenerateUnsafeRowJoiner.create() |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22550](https://issues.apache.org/jira/browse/SPARK-22550) | 64KB JVM bytecode limit problem with elt |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22475](https://issues.apache.org/jira/browse/SPARK-22475) | show histogram in DESC COLUMN command |  Major | SQL | Zhenhua Wang | Marco Gaido |
| [SPARK-22500](https://issues.apache.org/jira/browse/SPARK-22500) | 64KB JVM bytecode limit problem with cast |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22543](https://issues.apache.org/jira/browse/SPARK-22543) | fix java 64kb compile error for deeply nested expressions |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22604](https://issues.apache.org/jira/browse/SPARK-22604) | remove the get address methods from ColumnVector |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22602](https://issues.apache.org/jira/browse/SPARK-22602) | remove ColumnVector#loadBytes |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22603](https://issues.apache.org/jira/browse/SPARK-22603) | 64KB JVM bytecode limit problem with FormatString |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22529](https://issues.apache.org/jira/browse/SPARK-22529) | Relation stats should be consistent with other plans based on cbo config |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-22515](https://issues.apache.org/jira/browse/SPARK-22515) | Estimation relation size based on numRows \* rowSize |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-20650](https://issues.apache.org/jira/browse/SPARK-20650) | Remove JobProgressListener (and other unneeded classes) |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-22652](https://issues.apache.org/jira/browse/SPARK-22652) | remove set methods in ColumnarRow |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22643](https://issues.apache.org/jira/browse/SPARK-22643) | ColumnarArray should be an immutable view |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22570](https://issues.apache.org/jira/browse/SPARK-22570) | Create a lot of global variables to reuse an object in generated code |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22669](https://issues.apache.org/jira/browse/SPARK-22669) | Avoid unnecessary function calls in code generation |  Major | SQL | Marco Gaido | Marco Gaido |
| [SPARK-22626](https://issues.apache.org/jira/browse/SPARK-22626) | Wrong Hive table statistics may trigger OOM if enables CBO |  Minor | SQL | Yuming Wang | Yuming Wang |
| [SPARK-22695](https://issues.apache.org/jira/browse/SPARK-22695) | Avoid the generation of useless mutable states by scalaUDF |  Major | SQL | Marco Gaido | Marco Gaido |
| [SPARK-22693](https://issues.apache.org/jira/browse/SPARK-22693) | Avoid the generation of useless mutable states in complexTypeCreator and predicates |  Major | SQL | Marco Gaido | Marco Gaido |
| [SPARK-22703](https://issues.apache.org/jira/browse/SPARK-22703) | ColumnarRow should be an immutable view |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22699](https://issues.apache.org/jira/browse/SPARK-22699) | Avoid the generation of useless mutable states by GenerateSafeProjection |  Major | SQL | Marco Gaido | Marco Gaido |
| [SPARK-22696](https://issues.apache.org/jira/browse/SPARK-22696) | Avoid the generation of useless mutable states by objects functions |  Major | SQL | Marco Gaido | Marco Gaido |
| [SPARK-22452](https://issues.apache.org/jira/browse/SPARK-22452) | DataSourceV2Options should have getInt, getBoolean, etc. |  Major | SQL | Wenchen Fan | Sunitha Kambhampati |
| [SPARK-22746](https://issues.apache.org/jira/browse/SPARK-22746) | Avoid the generation of useless mutable states by SortMergeJoin |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22646](https://issues.apache.org/jira/browse/SPARK-22646) | Spark on Kubernetes - basic submission client |  Major | Kubernetes | Anirudh Ramanathan | Yinan Li |
| [SPARK-21322](https://issues.apache.org/jira/browse/SPARK-21322) | support histogram in filter cardinality estimation |  Major | SQL | Ron Hu | Ron Hu |
| [SPARK-22716](https://issues.apache.org/jira/browse/SPARK-22716) | Avoid the creation of mutable states in addReferenceObj |  Major | SQL | Wenchen Fan | Marco Gaido |
| [SPARK-22745](https://issues.apache.org/jira/browse/SPARK-22745) | read partition stats from Hive |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-22772](https://issues.apache.org/jira/browse/SPARK-22772) | elt should use splitExpressionsWithCurrentInputs to split expression codes |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-22732](https://issues.apache.org/jira/browse/SPARK-22732) | Add DataSourceV2 streaming APIs |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-22775](https://issues.apache.org/jira/browse/SPARK-22775) | move dictionary related APIs from ColumnVector to WritableColumnVector |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22733](https://issues.apache.org/jira/browse/SPARK-22733) | refactor StreamExecution for extensibility |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-22762](https://issues.apache.org/jira/browse/SPARK-22762) | Basic tests for IfCoercion and CaseWhenCoercion |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-22816](https://issues.apache.org/jira/browse/SPARK-22816) | Basic tests for PromoteStrings and InConversion |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-22807](https://issues.apache.org/jira/browse/SPARK-22807) | Change configuration options to use "container" instead of "docker" |  Major | Kubernetes | Anirudh Ramanathan | Anirudh Ramanathan |
| [SPARK-20653](https://issues.apache.org/jira/browse/SPARK-20653) | Add auto-cleanup of old elements to the new app state store |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-21984](https://issues.apache.org/jira/browse/SPARK-21984) | Use histogram stats in join estimation |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-18016](https://issues.apache.org/jira/browse/SPARK-18016) | Code Generation: Constant Pool Past Limit for Wide/Nested Dataset |  Major | SQL | Aleksander Eskilson | Kazuaki Ishizaki |
| [SPARK-22821](https://issues.apache.org/jira/browse/SPARK-22821) | Basic tests for WidenSetOperationTypes, BooleanEquality, StackCoercion and Division |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-22829](https://issues.apache.org/jira/browse/SPARK-22829) | Add new built-in function date\_trunc() |  Major | SQL | Youngbin Kim | Youngbin Kim |
| [SPARK-22845](https://issues.apache.org/jira/browse/SPARK-22845) | Modify spark.kubernetes.allocation.batch.delay to take time instead of int |  Minor | Kubernetes | Anirudh Ramanathan | Anirudh Ramanathan |
| [SPARK-22387](https://issues.apache.org/jira/browse/SPARK-22387) | propagate session configs to data source read/write options |  Major | SQL | Wenchen Fan | Jiang Xingbo |
| [SPARK-22848](https://issues.apache.org/jira/browse/SPARK-22848) | Avoid the generation of useless mutable states by Stack function |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22324](https://issues.apache.org/jira/browse/SPARK-22324) | Upgrade Arrow to version 0.8.0 and upgrade Netty to 4.1.17 |  Major | PySpark, SQL | Bryan Cutler | Bryan Cutler |
| [SPARK-22822](https://issues.apache.org/jira/browse/SPARK-22822) | Basic tests for WindowFrameCoercion and DecimalPrecision |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-22648](https://issues.apache.org/jira/browse/SPARK-22648) | Documentation for Kubernetes Scheduler Backend |  Major | Documentation, Kubernetes | Anirudh Ramanathan | Anirudh Ramanathan |
| [SPARK-22750](https://issues.apache.org/jira/browse/SPARK-22750) | Introduce reusable mutable states |  Major | SQL | Marco Gaido | Marco Gaido |
| [SPARK-22789](https://issues.apache.org/jira/browse/SPARK-22789) | Add ContinuousExecution for continuous processing queries |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-21552](https://issues.apache.org/jira/browse/SPARK-21552) | Add decimal type support to ArrowWriter. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-22909](https://issues.apache.org/jira/browse/SPARK-22909) | Move Structured Streaming v2 APIs to streaming package |  Blocker | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-22757](https://issues.apache.org/jira/browse/SPARK-22757) | Init-container in the driver/executor pods for downloading remote dependencies |  Major | Kubernetes | Yinan Li | Yinan Li |
| [SPARK-22917](https://issues.apache.org/jira/browse/SPARK-22917) | Should not try to generate histogram for empty/null columns |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-22890](https://issues.apache.org/jira/browse/SPARK-22890) | Basic tests for DateTimeOperations |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-22904](https://issues.apache.org/jira/browse/SPARK-22904) | Basic tests for decimal operations and string cast |  Major | SQL | Marco Gaido | Marco Gaido |
| [SPARK-11035](https://issues.apache.org/jira/browse/SPARK-11035) | Launcher: allow apps to be launched in-process |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-22892](https://issues.apache.org/jira/browse/SPARK-22892) | Simplify some estimation logic by using double instead of decimal |  Minor | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-20654](https://issues.apache.org/jira/browse/SPARK-20654) | Add controls for how much disk the SHS can use |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-22363](https://issues.apache.org/jira/browse/SPARK-22363) | Add unit test for Window spilling |  Major | SQL | Jiang Xingbo | Gabor Somogyi |
| [SPARK-22530](https://issues.apache.org/jira/browse/SPARK-22530) | Add ArrayType Support for working with Pandas and Arrow |  Major | PySpark, SQL | Bryan Cutler | Bryan Cutler |
| [SPARK-22930](https://issues.apache.org/jira/browse/SPARK-22930) | Improve the description of Vectorized UDFs for non-deterministic cases |  Major | PySpark, SQL | Xiao Li | Li Jin |
| [SPARK-22912](https://issues.apache.org/jira/browse/SPARK-22912) | Support v2 streaming sources and sinks in MicroBatchExecution |  Major | Structured Streaming | Jose Torres |  |
| [SPARK-20657](https://issues.apache.org/jira/browse/SPARK-20657) | Speed up Stage page |  Major | Web UI | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-23046](https://issues.apache.org/jira/browse/SPARK-23046) | Have RFormula include VectorSizeHint in pipeline |  Major | ML | Bago Amirbekian | Bago Amirbekian |
| [SPARK-23063](https://issues.apache.org/jira/browse/SPARK-23063) | Changes to publish the spark-kubernetes package |  Blocker | Kubernetes | Anirudh Ramanathan | Anirudh Ramanathan |
| [SPARK-22978](https://issues.apache.org/jira/browse/SPARK-22978) | Register Vectorized UDFs for SQL Statement |  Major | PySpark | Xiao Li | Xiao Li |
| [SPARK-22392](https://issues.apache.org/jira/browse/SPARK-22392) | columnar reader interface |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-23045](https://issues.apache.org/jira/browse/SPARK-23045) | Have RFormula use OneHotEncoderEstimator |  Major | ML | Bago Amirbekian | Bago Amirbekian |
| [SPARK-22361](https://issues.apache.org/jira/browse/SPARK-22361) | Add unit test for Window Frames |  Major | SQL | Jiang Xingbo | Gabor Somogyi |
| [SPARK-22908](https://issues.apache.org/jira/browse/SPARK-22908) | add basic continuous kafka source |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-23033](https://issues.apache.org/jira/browse/SPARK-23033) | disable task-level retry for continuous execution |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-23093](https://issues.apache.org/jira/browse/SPARK-23093) | don't modify run id |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-23047](https://issues.apache.org/jira/browse/SPARK-23047) | Change MapVector to NullableMapVector in ArrowColumnVector |  Major | PySpark | Li Jin | Li Jin |
| [SPARK-23064](https://issues.apache.org/jira/browse/SPARK-23064) | Add documentation for stream-stream joins |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-22980](https://issues.apache.org/jira/browse/SPARK-22980) | Using pandas\_udf when inputs are not Pandas's Series or DataFrame |  Major | PySpark | Xiao Li | Hyukjin Kwon |
| [SPARK-23052](https://issues.apache.org/jira/browse/SPARK-23052) | Migrate Microbatch ConsoleSink to v2 |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-23137](https://issues.apache.org/jira/browse/SPARK-23137) | spark.kubernetes.executor.podNamePrefix is ignored |  Major | Kubernetes | Anirudh Ramanathan | Anirudh Ramanathan |
| [SPARK-20664](https://issues.apache.org/jira/browse/SPARK-20664) | Remove stale applications from SHS listing |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-23118](https://issues.apache.org/jira/browse/SPARK-23118) | SparkR 2.3 QA: Programming guide, migration guide, vignettes updates |  Critical | Documentation, SparkR | Joseph K. Bradley | Felix Cheung |
| [SPARK-23116](https://issues.apache.org/jira/browse/SPARK-23116) | SparkR 2.3 QA: Update user guide for new features & APIs |  Critical | Documentation, SparkR | Joseph K. Bradley | Felix Cheung |
| [SPARK-22389](https://issues.apache.org/jira/browse/SPARK-22389) | partitioning reporting |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-23218](https://issues.apache.org/jira/browse/SPARK-23218) | simplify ColumnVector.getArray |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-23196](https://issues.apache.org/jira/browse/SPARK-23196) | Unify continuous and microbatch V2 sinks |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-23219](https://issues.apache.org/jira/browse/SPARK-23219) | Rename ReadTask to DataReaderFactory |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-22221](https://issues.apache.org/jira/browse/SPARK-22221) | Add User Documentation for Working with Arrow in Spark |  Major | PySpark, SQL | Bryan Cutler | Bryan Cutler |
| [SPARK-23260](https://issues.apache.org/jira/browse/SPARK-23260) | remove V2 from the class name of data source reader/writer |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-23262](https://issues.apache.org/jira/browse/SPARK-23262) | mix-in interface should extend the interface it aimed to mix in |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-23261](https://issues.apache.org/jira/browse/SPARK-23261) | Rename Pandas UDFs |  Major | PySpark | Xiao Li | Xiao Li |
| [SPARK-23272](https://issues.apache.org/jira/browse/SPARK-23272) | add calendar interval type support to ColumnVector |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-23112](https://issues.apache.org/jira/browse/SPARK-23112) | ML, Graph 2.3 QA: Programming guide update and migration guide |  Critical | Documentation, GraphX, ML, MLlib | Joseph K. Bradley | Nick Pentreath |
| [SPARK-22785](https://issues.apache.org/jira/browse/SPARK-22785) | rename ColumnVector.anyNullsSet to hasNull |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-23280](https://issues.apache.org/jira/browse/SPARK-23280) | add map type support to ColumnVector |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-23268](https://issues.apache.org/jira/browse/SPARK-23268) | Reorganize packages in data source V2 |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-23107](https://issues.apache.org/jira/browse/SPARK-23107) | ML, Graph 2.3 QA: API: New Scala APIs, docs |  Blocker | Documentation, GraphX, ML, MLlib | Joseph K. Bradley | Yanbo Liang |
| [SPARK-23314](https://issues.apache.org/jira/browse/SPARK-23314) | Pandas grouped udf on dataset with timestamp column error |  Major | PySpark | Felix Cheung | Li Jin |
| [SPARK-23352](https://issues.apache.org/jira/browse/SPARK-23352) | Explicitly specify supported types in Pandas UDFs |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23446](https://issues.apache.org/jira/browse/SPARK-23446) | Explicitly check supported types in toPandas |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-20132](https://issues.apache.org/jira/browse/SPARK-20132) | Add documentation for column string functions |  Minor | PySpark, SQL | Michael Patterson | Michael Patterson |
| [SPARK-20478](https://issues.apache.org/jira/browse/SPARK-20478) | Document LinearSVC in R programming guide |  Major | SparkR | Felix Cheung | Miao Wang |
| [SPARK-20477](https://issues.apache.org/jira/browse/SPARK-20477) | Document R bisecting k-means in R programming guide |  Major | SparkR | Felix Cheung | Miao Wang |
| [SPARK-20442](https://issues.apache.org/jira/browse/SPARK-20442) | Fill up documentations for functions in Column API in PySpark |  Minor | Documentation, PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-20192](https://issues.apache.org/jira/browse/SPARK-20192) | SparkR 2.2.0 migration guide, release note |  Major | Documentation, SparkR | Felix Cheung | Felix Cheung |
| [SPARK-20015](https://issues.apache.org/jira/browse/SPARK-20015) | Document R Structured Streaming (experimental) in R vignettes and R & SS programming guide, R example |  Major | Documentation, SparkR, Structured Streaming | Felix Cheung | Felix Cheung |
| [SPARK-21042](https://issues.apache.org/jira/browse/SPARK-21042) | Document Dataset.union is resolution by position, not name |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-21123](https://issues.apache.org/jira/browse/SPARK-21123) | Options for file stream source are in a wrong table |  Minor | Documentation, Structured Streaming | Shixiong Zhu | Assaf Mendelson |
| [SPARK-20889](https://issues.apache.org/jira/browse/SPARK-20889) | SparkR grouped documentation for Column methods |  Major | SparkR | Wayne Zhang | Wayne Zhang |
| [SPARK-20858](https://issues.apache.org/jira/browse/SPARK-20858) | Document ListenerBus event queue size property |  Minor | Documentation | Bjorn Jonsson |  |
| [SPARK-21069](https://issues.apache.org/jira/browse/SPARK-21069) | Add rate source to programming guide |  Major | Documentation, Structured Streaming | Shixiong Zhu | Prashant Sharma |
| [SPARK-20456](https://issues.apache.org/jira/browse/SPARK-20456) | Add examples for functions collection for pyspark |  Minor | Documentation, PySpark | Michael Patterson | Michael Patterson |
| [SPARK-15526](https://issues.apache.org/jira/browse/SPARK-15526) | Shade JPMML |  Minor | ML, MLlib | Villu Ruusmann | Sean Owen |
| [SPARK-20855](https://issues.apache.org/jira/browse/SPARK-20855) | Update the Spark kinesis docs to use the KinesisInputDStream builder instead of deprecated KinesisUtils |  Minor | DStreams | Yash Sharma | Yash Sharma |
| [SPARK-21485](https://issues.apache.org/jira/browse/SPARK-21485) | API Documentation for Spark SQL functions |  Major | Documentation, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-21724](https://issues.apache.org/jira/browse/SPARK-21724) | Missing since information in the documentation of date functions |  Minor | Documentation, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-21712](https://issues.apache.org/jira/browse/SPARK-21712) | Clarify PySpark Column.substr() type checking error message |  Trivial | PySpark, SQL | Nicholas Chammas | Nicholas Chammas |
| [SPARK-21469](https://issues.apache.org/jira/browse/SPARK-21469) | Add doc and example for FeatureHasher |  Major | Documentation, ML | Nick Pentreath | Bryan Cutler |
| [SPARK-21976](https://issues.apache.org/jira/browse/SPARK-21976) | Fix wrong doc about Mean Absolute Error |  Minor | Documentation, MLlib | Favio Vázquez | Favio Vázquez |
| [SPARK-20448](https://issues.apache.org/jira/browse/SPARK-20448) | Document how FileInputDStream works with object storage |  Minor | Documentation | Steve Loughran | Steve Loughran |
| [SPARK-22110](https://issues.apache.org/jira/browse/SPARK-22110) | Enhance function description trim string function |  Minor | Documentation, SQL | kevin yu | kevin yu |
| [SPARK-20992](https://issues.apache.org/jira/browse/SPARK-20992) | Link to Nomad scheduler backend in docs |  Trivial | Scheduler | Ben Barnard | Ben Barnard |
| [SPARK-22335](https://issues.apache.org/jira/browse/SPARK-22335) | Union for DataSet uses column order instead of types for union |  Major | SQL | Carlos Bribiescas | Liang-Chi Hsieh |
| [SPARK-22399](https://issues.apache.org/jira/browse/SPARK-22399) | reference in mllib-clustering.html is out of date |  Minor | MLlib | Nathan Kronenfeld | Bo Meng |
| [SPARK-22347](https://issues.apache.org/jira/browse/SPARK-22347) | UDF is evaluated when 'F.when' condition is false |  Minor | PySpark | Nicolas Porter | Liang-Chi Hsieh |
| [SPARK-22369](https://issues.apache.org/jira/browse/SPARK-22369) | PySpark: Document methods of spark.catalog interface |  Major | PySpark | Andreas Maier | Hyukjin Kwon |
| [SPARK-22412](https://issues.apache.org/jira/browse/SPARK-22412) | Fix incorrect comment in DataSourceScanExec |  Trivial | SQL | Vinitha Reddy Gankidi | Vinitha Reddy Gankidi |
| [SPARK-7146](https://issues.apache.org/jira/browse/SPARK-7146) | Should ML sharedParams be a public API? |  Major | ML | Joseph K. Bradley | holdenk |
| [SPARK-22490](https://issues.apache.org/jira/browse/SPARK-22490) | PySpark doc has misleading string for SparkSession.builder |  Minor | PySpark | Xiao Li | Dongjoon Hyun |
| [SPARK-22541](https://issues.apache.org/jira/browse/SPARK-22541) | Dataframes: applying multiple filters one after another using udfs and accumulators results in faulty accumulators |  Major | PySpark | Janne K. Olesen | Liang-Chi Hsieh |
| [SPARK-22428](https://issues.apache.org/jira/browse/SPARK-22428) | Document spark properties for configuring the ContextCleaner |  Minor | Documentation | Andreas Maier | Gabor Somogyi |
| [SPARK-21616](https://issues.apache.org/jira/browse/SPARK-21616) | SparkR 2.3.0 migration guide, release note |  Major | Documentation, SparkR | Felix Cheung | Felix Cheung |
| [SPARK-21292](https://issues.apache.org/jira/browse/SPARK-21292) | R document Catalog function metadata refresh |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-23069](https://issues.apache.org/jira/browse/SPARK-23069) | R doc for describe missing text |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-22993](https://issues.apache.org/jira/browse/SPARK-22993) | checkpointInterval param doc should be clearer |  Trivial | ML | Seth Hendrickson | Seth Hendrickson |
| [SPARK-23127](https://issues.apache.org/jira/browse/SPARK-23127) | Update FeatureHasher user guide for catCols parameter |  Minor | Documentation, ML | Nick Pentreath | Nick Pentreath |
| [SPARK-23048](https://issues.apache.org/jira/browse/SPARK-23048) | Update mllib docs to replace OneHotEncoder with OneHotEncoderEstimator |  Major | Documentation, ML | Bago Amirbekian | Liang-Chi Hsieh |
| [SPARK-18085](https://issues.apache.org/jira/browse/SPARK-18085) | SPIP: Better History Server scalability for many / large applications |  Major | Spark Core, Web UI | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-21293](https://issues.apache.org/jira/browse/SPARK-21293) | R document update structured streaming |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-22735](https://issues.apache.org/jira/browse/SPARK-22735) | Add VectorSizeHint to ML features documentation |  Major | Documentation, ML | Bago Amirbekian | Bago Amirbekian |
| [SPARK-23163](https://issues.apache.org/jira/browse/SPARK-23163) | Sync Python ML API docs with Scala |  Trivial | ML, PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-23138](https://issues.apache.org/jira/browse/SPARK-23138) | Add user guide example for multiclass logistic regression summary |  Minor | ML | Seth Hendrickson | Seth Hendrickson |
| [SPARK-20746](https://issues.apache.org/jira/browse/SPARK-20746) | Built-in SQL Function Improvement |  Major | SQL | Xiao Li |  |
| [SPARK-23327](https://issues.apache.org/jira/browse/SPARK-23327) | Update the description of three external API or functions |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-23313](https://issues.apache.org/jira/browse/SPARK-23313) | Add a migration guide for ORC |  Major | Documentation | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-22820](https://issues.apache.org/jira/browse/SPARK-22820) | Spark 2.3 SQL API audit |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-23154](https://issues.apache.org/jira/browse/SPARK-23154) | Document backwards compatibility guarantees for ML persistence |  Major | Documentation, ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-20434](https://issues.apache.org/jira/browse/SPARK-20434) | Move Hadoop delegation token code from yarn to core |  Major | Mesos, Spark Core, YARN | Michael Gummelt | Michael Gummelt |
| [SPARK-21366](https://issues.apache.org/jira/browse/SPARK-21366) | Add sql test for window functions |  Minor | SQL | Jiang Xingbo | Jiang Xingbo |
| [SPARK-19810](https://issues.apache.org/jira/browse/SPARK-19810) | Remove support for Scala 2.10 |  Critical | ML, Spark Core, SQL | Sean Owen | Sean Owen |
| [SPARK-21699](https://issues.apache.org/jira/browse/SPARK-21699) | Remove unused getTableOption in ExternalCatalog |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-21731](https://issues.apache.org/jira/browse/SPARK-21731) | Upgrade scalastyle to 0.9 |  Trivial | Build | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-21848](https://issues.apache.org/jira/browse/SPARK-21848) | Create trait to identify user-defined functions |  Minor | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-21939](https://issues.apache.org/jira/browse/SPARK-21939) | Use TimeLimits instead of Timeouts |  Trivial | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-22153](https://issues.apache.org/jira/browse/SPARK-22153) | Rename ShuffleExchange -\> ShuffleExchangeExec |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-22416](https://issues.apache.org/jira/browse/SPARK-22416) | Move OrcOptions from \`sql/hive\` to \`sql/core\` |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-22485](https://issues.apache.org/jira/browse/SPARK-22485) | Use \`exclude[Problem]\` instead \`excludePackage\` in MiMa |  Minor | Build | Dongjoon Hyun |  |
| [SPARK-22473](https://issues.apache.org/jira/browse/SPARK-22473) | Replace deprecated AsyncAssertions.Waiter and methods of java.sql.Date |  Trivial | Tests | Marco Gaido |  |
| [SPARK-22634](https://issues.apache.org/jira/browse/SPARK-22634) | Update Bouncy castle dependency |  Minor | Spark Core, SQL, Structured Streaming | Lior Regev | Sean Owen |
| [SPARK-22672](https://issues.apache.org/jira/browse/SPARK-22672) | Refactor ORC Tests |  Major | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-12297](https://issues.apache.org/jira/browse/SPARK-12297) | Add work-around for Parquet/Hive int96 timestamp bug. |  Major | Spark Core | Ryan Blue | Imran Rashid |
| [SPARK-23104](https://issues.apache.org/jira/browse/SPARK-23104) | Document that kubernetes is still "experimental" |  Critical | Documentation, Kubernetes | Marcelo Vanzin | Anirudh Ramanathan |
| [SPARK-23426](https://issues.apache.org/jira/browse/SPARK-23426) | Use \`hive\` ORC impl and disable PPD for Spark 2.3.0 |  Blocker | SQL | Dongjoon Hyun | Dongjoon Hyun |


