
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

## Release 2.3.0 - Unreleased (as of 2017-08-28)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-20945](https://issues.apache.org/jira/browse/SPARK-20945) | NoSuchElementException key not found in TaskSchedulerImpl |  Minor | Scheduler | liupengcheng | liupengcheng |
| [SPARK-21339](https://issues.apache.org/jira/browse/SPARK-21339) | spark-shell --packages option does not add jars to classpath on windows |  Major | Spark Shell, Windows | Goran Blankendal | Devaraj K |


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
| [SPARK-20495](https://issues.apache.org/jira/browse/SPARK-20495) | Add StorageLevel to cacheTable API |  Major | SQL | Xiao Li |  |
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
| [SPARK-19236](https://issues.apache.org/jira/browse/SPARK-19236) | Add createOrReplaceGlobalTempView |  Minor | Spark Core | Arman Yazdani | Arman Yazdani |
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
| [SPARK-21007](https://issues.apache.org/jira/browse/SPARK-21007) | Add  SQL function - RIGHT && LEFT |  Major | SQL | liuxian | liuxian |
| [SPARK-18619](https://issues.apache.org/jira/browse/SPARK-18619) | Make QuantileDiscretizer/Bucketizer/StringIndexer inherit from HasHandleInvalid |  Minor | ML | Yanbo Liang | zhengruifeng |
| [SPARK-21373](https://issues.apache.org/jira/browse/SPARK-21373) | Update Jetty to 9.3.20.v20170531 |  Minor | Spark Core | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-20376](https://issues.apache.org/jira/browse/SPARK-20376) | Make StateStoreProvider plugable |  Major | Structured Streaming | Yogesh Mahajan | Tathagata Das |
| [SPARK-21321](https://issues.apache.org/jira/browse/SPARK-21321) | Spark very verbose on shutdown confusing users |  Minor | Spark Core | Jong Yoon Lee | Jong Yoon Lee |
| [SPARK-21410](https://issues.apache.org/jira/browse/SPARK-21410) | In RangePartitioner(partitions: Int, rdd: RDD[]), RangePartitioner.numPartitions is wrong if the number of elements in RDD (rdd.count()) is less than number of partitions (partitions in constructor). |  Minor | Spark Core | APeng Zhang | APeng Zhang |
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
| [SPARK-21475](https://issues.apache.org/jira/browse/SPARK-21475) | Change the usage of FileInputStream/OutputStream to Files.newInput/OutputStream in the critical path |  Minor | Shuffle, Spark Core | Saisai Shao | Saisai Shao |
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


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-20254](https://issues.apache.org/jira/browse/SPARK-20254) | SPARK-19716 generates unnecessary data conversion for Dataset with primitive array |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
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
| [SPARK-18016](https://issues.apache.org/jira/browse/SPARK-18016) | Code Generation: Constant Pool Past Limit for Wide/Nested Dataset |  Major | SQL | Aleksander Eskilson | Aleksander Eskilson |
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
| [SPARK-21580](https://issues.apache.org/jira/browse/SPARK-21580) | There's a bug with  \`Group by ordinal\` |  Major | SQL | liuxian | liuxian |
| [SPARK-21503](https://issues.apache.org/jira/browse/SPARK-21503) | Spark UI shows incorrect task status for a killed Executor Process |  Minor | Spark Core | Parth Gandhi | Parth Gandhi |
| [SPARK-21523](https://issues.apache.org/jira/browse/SPARK-21523) | Fix bug of strong wolfe linesearch \`init\` parameter lose effectiveness |  Critical | MLlib | Weichen Xu | Weichen Xu |
| [SPARK-21596](https://issues.apache.org/jira/browse/SPARK-21596) | Audit the places calling HDFSMetadataLog.get |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-21551](https://issues.apache.org/jira/browse/SPARK-21551) | pyspark's collect fails when getaddrinfo is too slow |  Critical | PySpark | peay | peay |
| [SPARK-21638](https://issues.apache.org/jira/browse/SPARK-21638) | Warning message of RF is not accurate |  Minor | ML | Peng Meng | Peng Meng |
| [SPARK-21595](https://issues.apache.org/jira/browse/SPARK-21595) | introduction of spark.sql.windowExec.buffer.spill.threshold in spark 2.2 breaks existing workflow |  Minor | Documentation, PySpark | Stephan Reiling | Tejas Patil |
| [SPARK-19122](https://issues.apache.org/jira/browse/SPARK-19122) | Unnecessary shuffle+sort added if join predicates ordering differ from bucketing and sorting order |  Major | SQL | Tejas Patil | Tejas Patil |
| [SPARK-12559](https://issues.apache.org/jira/browse/SPARK-12559) | Cluster mode doesn't work with --packages |  Major | Spark Submit | Andrew Or | Stavros Kontopoulos |
| [SPARK-21563](https://issues.apache.org/jira/browse/SPARK-21563) | Race condition when serializing TaskDescriptions and adding jars |  Major | Scheduler, Spark Core | Andrew Ash | Andrew Ash |
| [SPARK-21658](https://issues.apache.org/jira/browse/SPARK-21658) | Adds the default None for value in na.replace in PySpark to match |  Minor | PySpark | Hyukjin Kwon |  |
| [SPARK-19471](https://issues.apache.org/jira/browse/SPARK-19471) | [SQL]A confusing NullPointerException when creating table |  Critical | SQL | StanZhai | Feng Zhu |
| [SPARK-21721](https://issues.apache.org/jira/browse/SPARK-21721) | Memory leak in org.apache.spark.sql.hive.execution.InsertIntoHiveTable |  Critical | SQL | yzheng616 | Liang-Chi Hsieh |
| [SPARK-21422](https://issues.apache.org/jira/browse/SPARK-21422) | Depend on Apache ORC 1.4.0 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-21723](https://issues.apache.org/jira/browse/SPARK-21723) | Can't write LibSVM - key not found: numFeatures |  Major | Input/Output, ML | Jan Vršovský | Jan Vršovský |
| [SPARK-21656](https://issues.apache.org/jira/browse/SPARK-21656) | spark dynamic allocation should not idle timeout executors when there are enough tasks to run on them |  Major | Spark Core | Jong Yoon Lee | Jong Yoon Lee |
| [SPARK-21738](https://issues.apache.org/jira/browse/SPARK-21738) | Thriftserver doesn't cancel jobs when session is closed |  Major | SQL | Marco Gaido | Marco Gaido |
| [SPARK-3151](https://issues.apache.org/jira/browse/SPARK-3151) | DiskStore attempts to map any size BlockId without checking MappedByteBuffer limit |  Minor | Block Manager, Spark Core | Damon Brown | Eyal Farago |
| [SPARK-21743](https://issues.apache.org/jira/browse/SPARK-21743) | top-most limit should not cause memory leak |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-21642](https://issues.apache.org/jira/browse/SPARK-21642) | Use FQDN for DRIVER\_HOST\_ADDRESS instead of ip address |  Major | Spark Core | Aki Tanaka | Aki Tanaka |
| [SPARK-21428](https://issues.apache.org/jira/browse/SPARK-21428) | CliSessionState never be recognized because of IsolatedClientLoader |  Minor | SQL | Kent Yao | Kent Yao |
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


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-19791](https://issues.apache.org/jira/browse/SPARK-19791) | Add doc and example for fpgrowth |  Major | ML | yuhao yang | yuhao yang |
| [SPARK-20585](https://issues.apache.org/jira/browse/SPARK-20585) | R generic hint support |  Major | SQL | Reynold Xin | Maciej Szymkiewicz |
| [SPARK-17729](https://issues.apache.org/jira/browse/SPARK-17729) | Enable creating hive bucketed tables |  Trivial | SQL | Tejas Patil | Tejas Patil |
| [SPARK-20751](https://issues.apache.org/jira/browse/SPARK-20751) | Built-in SQL Function Support - COT |  Major | SQL | Xiao Li | Yuming Wang |
| [SPARK-20770](https://issues.apache.org/jira/browse/SPARK-20770) | Improve ColumnStats |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-20727](https://issues.apache.org/jira/browse/SPARK-20727) | Skip SparkR tests when missing Hadoop winutils on CRAN windows machines |  Major | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-20748](https://issues.apache.org/jira/browse/SPARK-20748) | Built-in SQL Function Support - CH[A]R |  Major | SQL | Xiao Li | Yuming Wang |
| [SPARK-20881](https://issues.apache.org/jira/browse/SPARK-20881) | Clearly document the mechanism to choose between two sources of statistics |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-20909](https://issues.apache.org/jira/browse/SPARK-20909) | Build-in SQL Function Support - DAYOFWEEK |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-20910](https://issues.apache.org/jira/browse/SPARK-20910) | Build-in SQL Function Support - UUID |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-20961](https://issues.apache.org/jira/browse/SPARK-20961) | generalize the dictionary in ColumnVector |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-19762](https://issues.apache.org/jira/browse/SPARK-19762) | Implement aggregator/loss function hierarchy and apply to linear regression |  Minor | ML | Seth Hendrickson | Seth Hendrickson |
| [SPARK-20641](https://issues.apache.org/jira/browse/SPARK-20641) | Key-value store abstraction and implementation for storing application data |  Major | Spark Core | Marcelo Vanzin |  |
| [SPARK-21031](https://issues.apache.org/jira/browse/SPARK-21031) | Add \`alterTableStats\` to store spark's stats and let \`alterTable\` keep existing stats |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-21046](https://issues.apache.org/jira/browse/SPARK-21046) | simplify the array offset and length in ColumnVector |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-21051](https://issues.apache.org/jira/browse/SPARK-21051) | Add hash map metrics to aggregate |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-20749](https://issues.apache.org/jira/browse/SPARK-20749) | Built-in SQL Function Support - all variants of LEN[GTH] |  Major | SQL | Xiao Li | Kazuaki Ishizaki |
| [SPARK-20750](https://issues.apache.org/jira/browse/SPARK-20750) | Built-in SQL Function Support - REPLACE |  Major | SQL | Xiao Li | Kazuaki Ishizaki |
| [SPARK-20948](https://issues.apache.org/jira/browse/SPARK-20948) | Built-in SQL Function UnaryMinus/UnaryPositive support string type |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-20931](https://issues.apache.org/jira/browse/SPARK-20931) | Built-in SQL Function ABS support string type |  Major | SQL | Yuming Wang |  |
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
| [SPARK-21456](https://issues.apache.org/jira/browse/SPARK-21456) | Make the driver failover\_timeout configurable (Mesos cluster mode) |  Major | Mesos | Susan X. Huynh | Susan X. Huynh |
| [SPARK-20754](https://issues.apache.org/jira/browse/SPARK-20754) | Add Function Alias For MOD/TRUNCT/POSITION |  Major | SQL | Xiao Li |  |
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
| [SPARK-20434](https://issues.apache.org/jira/browse/SPARK-20434) | Move Hadoop delegation token code from yarn to core |  Major | Mesos, Spark Core, YARN | Michael Gummelt | Michael Gummelt |
| [SPARK-21366](https://issues.apache.org/jira/browse/SPARK-21366) | Add sql test for window functions |  Minor | SQL | Jiang Xingbo | Jiang Xingbo |
| [SPARK-19810](https://issues.apache.org/jira/browse/SPARK-19810) | Remove support for Scala 2.10 |  Critical | ML, Spark Core, SQL | Sean Owen | Sean Owen |
| [SPARK-21699](https://issues.apache.org/jira/browse/SPARK-21699) | Remove unused getTableOption in ExternalCatalog |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-21731](https://issues.apache.org/jira/browse/SPARK-21731) | Upgrade scalastyle to 0.9 |  Trivial | Build | Marcelo Vanzin | Marcelo Vanzin |


